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

import 'package:googleapis/baremetalsolution/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.Map<core.String, core.String> buildUnnamed0() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed0(core.Map<core.String, core.String> o) {
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

core.List<api.Lun> buildUnnamed1() => [
      buildLun(),
      buildLun(),
    ];

void checkUnnamed1(core.List<api.Lun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLun(o[0]);
  checkLun(o[1]);
}

core.List<api.Network> buildUnnamed2() => [
      buildNetwork(),
      buildNetwork(),
    ];

void checkUnnamed2(core.List<api.Network> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetwork(o[0]);
  checkNetwork(o[1]);
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.createTime = 'foo';
    o.hyperthreadingEnabled = true;
    o.interactiveSerialConsoleEnabled = true;
    o.labels = buildUnnamed0();
    o.luns = buildUnnamed1();
    o.machineType = 'foo';
    o.name = 'foo';
    o.networks = buildUnnamed2();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hyperthreadingEnabled!, unittest.isTrue);
    unittest.expect(o.interactiveSerialConsoleEnabled!, unittest.isTrue);
    checkUnnamed0(o.labels!);
    checkUnnamed1(o.luns!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.networks!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstance--;
}

core.List<api.Instance> buildUnnamed3() => [
      buildInstance(),
      buildInstance(),
    ];

void checkUnnamed3(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
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

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  final o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed3();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed4();
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed3(o.instances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.unreachable!);
  }
  buildCounterListInstancesResponse--;
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

core.List<api.Lun> buildUnnamed6() => [
      buildLun(),
      buildLun(),
    ];

void checkUnnamed6(core.List<api.Lun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLun(o[0]);
  checkLun(o[1]);
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

core.int buildCounterListLunsResponse = 0;
api.ListLunsResponse buildListLunsResponse() {
  final o = api.ListLunsResponse();
  buildCounterListLunsResponse++;
  if (buildCounterListLunsResponse < 3) {
    o.luns = buildUnnamed6();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7();
  }
  buildCounterListLunsResponse--;
  return o;
}

void checkListLunsResponse(api.ListLunsResponse o) {
  buildCounterListLunsResponse++;
  if (buildCounterListLunsResponse < 3) {
    checkUnnamed6(o.luns!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.unreachable!);
  }
  buildCounterListLunsResponse--;
}

core.List<api.Network> buildUnnamed8() => [
      buildNetwork(),
      buildNetwork(),
    ];

void checkUnnamed8(core.List<api.Network> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetwork(o[0]);
  checkNetwork(o[1]);
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

core.int buildCounterListNetworksResponse = 0;
api.ListNetworksResponse buildListNetworksResponse() {
  final o = api.ListNetworksResponse();
  buildCounterListNetworksResponse++;
  if (buildCounterListNetworksResponse < 3) {
    o.networks = buildUnnamed8();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed9();
  }
  buildCounterListNetworksResponse--;
  return o;
}

void checkListNetworksResponse(api.ListNetworksResponse o) {
  buildCounterListNetworksResponse++;
  if (buildCounterListNetworksResponse < 3) {
    checkUnnamed8(o.networks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.unreachable!);
  }
  buildCounterListNetworksResponse--;
}

core.List<api.Operation> buildUnnamed10() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed10(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed10();
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
    checkUnnamed10(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.SnapshotSchedulePolicy> buildUnnamed11() => [
      buildSnapshotSchedulePolicy(),
      buildSnapshotSchedulePolicy(),
    ];

void checkUnnamed11(core.List<api.SnapshotSchedulePolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshotSchedulePolicy(o[0]);
  checkSnapshotSchedulePolicy(o[1]);
}

core.int buildCounterListSnapshotSchedulePoliciesResponse = 0;
api.ListSnapshotSchedulePoliciesResponse
    buildListSnapshotSchedulePoliciesResponse() {
  final o = api.ListSnapshotSchedulePoliciesResponse();
  buildCounterListSnapshotSchedulePoliciesResponse++;
  if (buildCounterListSnapshotSchedulePoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.snapshotSchedulePolicies = buildUnnamed11();
  }
  buildCounterListSnapshotSchedulePoliciesResponse--;
  return o;
}

void checkListSnapshotSchedulePoliciesResponse(
    api.ListSnapshotSchedulePoliciesResponse o) {
  buildCounterListSnapshotSchedulePoliciesResponse++;
  if (buildCounterListSnapshotSchedulePoliciesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.snapshotSchedulePolicies!);
  }
  buildCounterListSnapshotSchedulePoliciesResponse--;
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

core.List<api.VolumeSnapshot> buildUnnamed13() => [
      buildVolumeSnapshot(),
      buildVolumeSnapshot(),
    ];

void checkUnnamed13(core.List<api.VolumeSnapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeSnapshot(o[0]);
  checkVolumeSnapshot(o[1]);
}

core.int buildCounterListVolumeSnapshotsResponse = 0;
api.ListVolumeSnapshotsResponse buildListVolumeSnapshotsResponse() {
  final o = api.ListVolumeSnapshotsResponse();
  buildCounterListVolumeSnapshotsResponse++;
  if (buildCounterListVolumeSnapshotsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed12();
    o.volumeSnapshots = buildUnnamed13();
  }
  buildCounterListVolumeSnapshotsResponse--;
  return o;
}

void checkListVolumeSnapshotsResponse(api.ListVolumeSnapshotsResponse o) {
  buildCounterListVolumeSnapshotsResponse++;
  if (buildCounterListVolumeSnapshotsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.unreachable!);
    checkUnnamed13(o.volumeSnapshots!);
  }
  buildCounterListVolumeSnapshotsResponse--;
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

core.List<api.Volume> buildUnnamed15() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed15(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterListVolumesResponse = 0;
api.ListVolumesResponse buildListVolumesResponse() {
  final o = api.ListVolumesResponse();
  buildCounterListVolumesResponse++;
  if (buildCounterListVolumesResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed14();
    o.volumes = buildUnnamed15();
  }
  buildCounterListVolumesResponse--;
  return o;
}

void checkListVolumesResponse(api.ListVolumesResponse o) {
  buildCounterListVolumesResponse++;
  if (buildCounterListVolumesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.unreachable!);
    checkUnnamed15(o.volumes!);
  }
  buildCounterListVolumesResponse--;
}

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed16();
    o.locationId = 'foo';
    o.metadata = buildUnnamed17();
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
    checkUnnamed16(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterLun = 0;
api.Lun buildLun() {
  final o = api.Lun();
  buildCounterLun++;
  if (buildCounterLun < 3) {
    o.bootLun = true;
    o.multiprotocolType = 'foo';
    o.name = 'foo';
    o.shareable = true;
    o.sizeGb = 'foo';
    o.state = 'foo';
    o.storageType = 'foo';
    o.storageVolume = 'foo';
    o.wwid = 'foo';
  }
  buildCounterLun--;
  return o;
}

void checkLun(api.Lun o) {
  buildCounterLun++;
  if (buildCounterLun < 3) {
    unittest.expect(o.bootLun!, unittest.isTrue);
    unittest.expect(
      o.multiprotocolType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.shareable!, unittest.isTrue);
    unittest.expect(
      o.sizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageVolume!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.wwid!,
      unittest.equals('foo'),
    );
  }
  buildCounterLun--;
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

core.int buildCounterNetwork = 0;
api.Network buildNetwork() {
  final o = api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.cidr = 'foo';
    o.ipAddress = 'foo';
    o.macAddress = buildUnnamed18();
    o.name = 'foo';
    o.network = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.vlanId = 'foo';
    o.vrf = buildVRF();
  }
  buildCounterNetwork--;
  return o;
}

void checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    unittest.expect(
      o.cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.macAddress!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
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
    unittest.expect(
      o.vlanId!,
      unittest.equals('foo'),
    );
    checkVRF(o.vrf!);
  }
  buildCounterNetwork--;
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

core.int buildCounterResetInstanceRequest = 0;
api.ResetInstanceRequest buildResetInstanceRequest() {
  final o = api.ResetInstanceRequest();
  buildCounterResetInstanceRequest++;
  if (buildCounterResetInstanceRequest < 3) {}
  buildCounterResetInstanceRequest--;
  return o;
}

void checkResetInstanceRequest(api.ResetInstanceRequest o) {
  buildCounterResetInstanceRequest++;
  if (buildCounterResetInstanceRequest < 3) {}
  buildCounterResetInstanceRequest--;
}

core.int buildCounterRestoreVolumeSnapshotRequest = 0;
api.RestoreVolumeSnapshotRequest buildRestoreVolumeSnapshotRequest() {
  final o = api.RestoreVolumeSnapshotRequest();
  buildCounterRestoreVolumeSnapshotRequest++;
  if (buildCounterRestoreVolumeSnapshotRequest < 3) {}
  buildCounterRestoreVolumeSnapshotRequest--;
  return o;
}

void checkRestoreVolumeSnapshotRequest(api.RestoreVolumeSnapshotRequest o) {
  buildCounterRestoreVolumeSnapshotRequest++;
  if (buildCounterRestoreVolumeSnapshotRequest < 3) {}
  buildCounterRestoreVolumeSnapshotRequest--;
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  final o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.crontabSpec = 'foo';
    o.prefix = 'foo';
    o.retentionCount = 42;
  }
  buildCounterSchedule--;
  return o;
}

void checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    unittest.expect(
      o.crontabSpec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.prefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.retentionCount!,
      unittest.equals(42),
    );
  }
  buildCounterSchedule--;
}

core.int buildCounterSnapshotReservationDetail = 0;
api.SnapshotReservationDetail buildSnapshotReservationDetail() {
  final o = api.SnapshotReservationDetail();
  buildCounterSnapshotReservationDetail++;
  if (buildCounterSnapshotReservationDetail < 3) {
    o.reservedSpaceGib = 'foo';
    o.reservedSpaceRemainingGib = 'foo';
    o.reservedSpaceUsedPercent = 42;
  }
  buildCounterSnapshotReservationDetail--;
  return o;
}

void checkSnapshotReservationDetail(api.SnapshotReservationDetail o) {
  buildCounterSnapshotReservationDetail++;
  if (buildCounterSnapshotReservationDetail < 3) {
    unittest.expect(
      o.reservedSpaceGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedSpaceRemainingGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedSpaceUsedPercent!,
      unittest.equals(42),
    );
  }
  buildCounterSnapshotReservationDetail--;
}

core.List<api.Schedule> buildUnnamed21() => [
      buildSchedule(),
      buildSchedule(),
    ];

void checkUnnamed21(core.List<api.Schedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchedule(o[0]);
  checkSchedule(o[1]);
}

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
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

core.int buildCounterSnapshotSchedulePolicy = 0;
api.SnapshotSchedulePolicy buildSnapshotSchedulePolicy() {
  final o = api.SnapshotSchedulePolicy();
  buildCounterSnapshotSchedulePolicy++;
  if (buildCounterSnapshotSchedulePolicy < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.schedules = buildUnnamed21();
    o.volumes = buildUnnamed22();
  }
  buildCounterSnapshotSchedulePolicy--;
  return o;
}

void checkSnapshotSchedulePolicy(api.SnapshotSchedulePolicy o) {
  buildCounterSnapshotSchedulePolicy++;
  if (buildCounterSnapshotSchedulePolicy < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.schedules!);
    checkUnnamed22(o.volumes!);
  }
  buildCounterSnapshotSchedulePolicy--;
}

core.Map<core.String, core.Object?> buildUnnamed23() => {
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

void checkUnnamed23(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed24() => [
      buildUnnamed23(),
      buildUnnamed23(),
    ];

void checkUnnamed24(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed23(o[0]);
  checkUnnamed23(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed24();
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
    checkUnnamed24(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterVRF = 0;
api.VRF buildVRF() {
  final o = api.VRF();
  buildCounterVRF++;
  if (buildCounterVRF < 3) {
    o.autonomousSystemNumber = 'foo';
    o.juniperAlias = 'foo';
    o.name = 'foo';
    o.routeTarget = 'foo';
    o.state = 'foo';
  }
  buildCounterVRF--;
  return o;
}

void checkVRF(api.VRF o) {
  buildCounterVRF++;
  if (buildCounterVRF < 3) {
    unittest.expect(
      o.autonomousSystemNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.juniperAlias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.routeTarget!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterVRF--;
}

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  final o = api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.autoGrownSizeGib = 'foo';
    o.currentSizeGib = 'foo';
    o.name = 'foo';
    o.remainingSpaceGib = 'foo';
    o.requestedSizeGib = 'foo';
    o.snapshotAutoDeleteBehavior = 'foo';
    o.snapshotReservationDetail = buildSnapshotReservationDetail();
    o.snapshotSchedulePolicy = 'foo';
    o.state = 'foo';
    o.storageType = 'foo';
  }
  buildCounterVolume--;
  return o;
}

void checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    unittest.expect(
      o.autoGrownSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remainingSpaceGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshotAutoDeleteBehavior!,
      unittest.equals('foo'),
    );
    checkSnapshotReservationDetail(o.snapshotReservationDetail!);
    unittest.expect(
      o.snapshotSchedulePolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageType!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolume--;
}

core.int buildCounterVolumeSnapshot = 0;
api.VolumeSnapshot buildVolumeSnapshot() {
  final o = api.VolumeSnapshot();
  buildCounterVolumeSnapshot++;
  if (buildCounterVolumeSnapshot < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.sizeBytes = 'foo';
    o.storageVolume = 'foo';
  }
  buildCounterVolumeSnapshot--;
  return o;
}

void checkVolumeSnapshot(api.VolumeSnapshot o) {
  buildCounterVolumeSnapshot++;
  if (buildCounterVolumeSnapshot < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageVolume!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeSnapshot--;
}

void main() {
  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
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

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Instance.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInstance(od);
    });
  });

  unittest.group('obj-schema-ListInstancesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstancesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInstancesResponse(od);
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

  unittest.group('obj-schema-ListLunsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLunsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLunsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLunsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNetworksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNetworksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNetworksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNetworksResponse(od);
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

  unittest.group('obj-schema-ListSnapshotSchedulePoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSnapshotSchedulePoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSnapshotSchedulePoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSnapshotSchedulePoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListVolumeSnapshotsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVolumeSnapshotsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVolumeSnapshotsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVolumeSnapshotsResponse(od);
    });
  });

  unittest.group('obj-schema-ListVolumesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVolumesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVolumesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVolumesResponse(od);
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

  unittest.group('obj-schema-Lun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Lun.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLun(od);
    });
  });

  unittest.group('obj-schema-Network', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Network.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNetwork(od);
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

  unittest.group('obj-schema-ResetInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-RestoreVolumeSnapshotRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreVolumeSnapshotRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreVolumeSnapshotRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreVolumeSnapshotRequest(od);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Schedule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSchedule(od);
    });
  });

  unittest.group('obj-schema-SnapshotReservationDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshotReservationDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SnapshotReservationDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSnapshotReservationDetail(od);
    });
  });

  unittest.group('obj-schema-SnapshotSchedulePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshotSchedulePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SnapshotSchedulePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSnapshotSchedulePolicy(od);
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

  unittest.group('obj-schema-VRF', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVRF();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VRF.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVRF(od);
    });
  });

  unittest.group('obj-schema-Volume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Volume.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVolume(od);
    });
  });

  unittest.group('obj-schema-VolumeSnapshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeSnapshot.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeSnapshot(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsLocationsInstancesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildResetInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResetInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetInstanceRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.reset(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsNetworksResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildNetwork());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNetwork(response as api.Network);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListNetworksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNetworksResponse(response as api.ListNetworksResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
      final res = api.BaremetalsolutionApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
      final res = api.BaremetalsolutionApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
      final res = api.BaremetalsolutionApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsLocationsSnapshotSchedulePoliciesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock)
          .projects
          .locations
          .snapshotSchedulePolicies;
      final arg_request = buildSnapshotSchedulePolicy();
      final arg_parent = 'foo';
      final arg_snapshotSchedulePolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SnapshotSchedulePolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSnapshotSchedulePolicy(obj);

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
          unittest.equals('v2/'),
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
          queryMap['snapshotSchedulePolicyId']!.first,
          unittest.equals(arg_snapshotSchedulePolicyId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSnapshotSchedulePolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          snapshotSchedulePolicyId: arg_snapshotSchedulePolicyId,
          $fields: arg_$fields);
      checkSnapshotSchedulePolicy(response as api.SnapshotSchedulePolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock)
          .projects
          .locations
          .snapshotSchedulePolicies;
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
          unittest.equals('v2/'),
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
      final res = api.BaremetalsolutionApi(mock)
          .projects
          .locations
          .snapshotSchedulePolicies;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildSnapshotSchedulePolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSnapshotSchedulePolicy(response as api.SnapshotSchedulePolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock)
          .projects
          .locations
          .snapshotSchedulePolicies;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
            convert.json.encode(buildListSnapshotSchedulePoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSnapshotSchedulePoliciesResponse(
          response as api.ListSnapshotSchedulePoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock)
          .projects
          .locations
          .snapshotSchedulePolicies;
      final arg_request = buildSnapshotSchedulePolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SnapshotSchedulePolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSnapshotSchedulePolicy(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildSnapshotSchedulePolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSnapshotSchedulePolicy(response as api.SnapshotSchedulePolicy);
    });
  });

  unittest.group('resource-ProjectsLocationsVolumesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildVolume());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkVolume(response as api.Volume);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListVolumesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVolumesResponse(response as api.ListVolumesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
      final arg_request = buildVolume();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Volume.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVolume(obj);

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
          unittest.equals('v2/'),
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
  });

  unittest.group('resource-ProjectsLocationsVolumesLunsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.luns;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildLun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLun(response as api.Lun);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.luns;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListLunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLunsResponse(response as api.ListLunsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsVolumesSnapshotsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.snapshots;
      final arg_request = buildVolumeSnapshot();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VolumeSnapshot.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVolumeSnapshot(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildVolumeSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkVolumeSnapshot(response as api.VolumeSnapshot);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.snapshots;
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
          unittest.equals('v2/'),
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
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.snapshots;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildVolumeSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkVolumeSnapshot(response as api.VolumeSnapshot);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.snapshots;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListVolumeSnapshotsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVolumeSnapshotsResponse(
          response as api.ListVolumeSnapshotsResponse);
    });

    unittest.test('method--restoreVolumeSnapshot', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.snapshots;
      final arg_request = buildRestoreVolumeSnapshotRequest();
      final arg_volumeSnapshot = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RestoreVolumeSnapshotRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreVolumeSnapshotRequest(obj);

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
          unittest.equals('v2/'),
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
      final response = await res.restoreVolumeSnapshot(
          arg_request, arg_volumeSnapshot,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
