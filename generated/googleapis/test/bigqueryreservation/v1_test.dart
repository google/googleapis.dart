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

import 'package:googleapis/bigqueryreservation/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAssignment = 0;
api.Assignment buildAssignment() {
  final o = api.Assignment();
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    o.assignee = 'foo';
    o.jobType = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterAssignment--;
  return o;
}

void checkAssignment(api.Assignment o) {
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    unittest.expect(
      o.assignee!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterAssignment--;
}

core.int buildCounterBiReservation = 0;
api.BiReservation buildBiReservation() {
  final o = api.BiReservation();
  buildCounterBiReservation++;
  if (buildCounterBiReservation < 3) {
    o.name = 'foo';
    o.size = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterBiReservation--;
  return o;
}

void checkBiReservation(api.BiReservation o) {
  buildCounterBiReservation++;
  if (buildCounterBiReservation < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBiReservation--;
}

core.int buildCounterCapacityCommitment = 0;
api.CapacityCommitment buildCapacityCommitment() {
  final o = api.CapacityCommitment();
  buildCounterCapacityCommitment++;
  if (buildCounterCapacityCommitment < 3) {
    o.commitmentEndTime = 'foo';
    o.commitmentStartTime = 'foo';
    o.failureStatus = buildStatus();
    o.name = 'foo';
    o.plan = 'foo';
    o.renewalPlan = 'foo';
    o.slotCount = 'foo';
    o.state = 'foo';
  }
  buildCounterCapacityCommitment--;
  return o;
}

void checkCapacityCommitment(api.CapacityCommitment o) {
  buildCounterCapacityCommitment++;
  if (buildCounterCapacityCommitment < 3) {
    unittest.expect(
      o.commitmentEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commitmentStartTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.failureStatus!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.plan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renewalPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slotCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterCapacityCommitment--;
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

core.List<api.Assignment> buildUnnamed5277() => [
      buildAssignment(),
      buildAssignment(),
    ];

void checkUnnamed5277(core.List<api.Assignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignment(o[0]);
  checkAssignment(o[1]);
}

core.int buildCounterListAssignmentsResponse = 0;
api.ListAssignmentsResponse buildListAssignmentsResponse() {
  final o = api.ListAssignmentsResponse();
  buildCounterListAssignmentsResponse++;
  if (buildCounterListAssignmentsResponse < 3) {
    o.assignments = buildUnnamed5277();
    o.nextPageToken = 'foo';
  }
  buildCounterListAssignmentsResponse--;
  return o;
}

void checkListAssignmentsResponse(api.ListAssignmentsResponse o) {
  buildCounterListAssignmentsResponse++;
  if (buildCounterListAssignmentsResponse < 3) {
    checkUnnamed5277(o.assignments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAssignmentsResponse--;
}

core.List<api.CapacityCommitment> buildUnnamed5278() => [
      buildCapacityCommitment(),
      buildCapacityCommitment(),
    ];

void checkUnnamed5278(core.List<api.CapacityCommitment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCapacityCommitment(o[0]);
  checkCapacityCommitment(o[1]);
}

core.int buildCounterListCapacityCommitmentsResponse = 0;
api.ListCapacityCommitmentsResponse buildListCapacityCommitmentsResponse() {
  final o = api.ListCapacityCommitmentsResponse();
  buildCounterListCapacityCommitmentsResponse++;
  if (buildCounterListCapacityCommitmentsResponse < 3) {
    o.capacityCommitments = buildUnnamed5278();
    o.nextPageToken = 'foo';
  }
  buildCounterListCapacityCommitmentsResponse--;
  return o;
}

void checkListCapacityCommitmentsResponse(
    api.ListCapacityCommitmentsResponse o) {
  buildCounterListCapacityCommitmentsResponse++;
  if (buildCounterListCapacityCommitmentsResponse < 3) {
    checkUnnamed5278(o.capacityCommitments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCapacityCommitmentsResponse--;
}

core.List<api.Reservation> buildUnnamed5279() => [
      buildReservation(),
      buildReservation(),
    ];

void checkUnnamed5279(core.List<api.Reservation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReservation(o[0]);
  checkReservation(o[1]);
}

core.int buildCounterListReservationsResponse = 0;
api.ListReservationsResponse buildListReservationsResponse() {
  final o = api.ListReservationsResponse();
  buildCounterListReservationsResponse++;
  if (buildCounterListReservationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reservations = buildUnnamed5279();
  }
  buildCounterListReservationsResponse--;
  return o;
}

void checkListReservationsResponse(api.ListReservationsResponse o) {
  buildCounterListReservationsResponse++;
  if (buildCounterListReservationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5279(o.reservations!);
  }
  buildCounterListReservationsResponse--;
}

core.List<core.String> buildUnnamed5280() => [
      'foo',
      'foo',
    ];

void checkUnnamed5280(core.List<core.String> o) {
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

core.int buildCounterMergeCapacityCommitmentsRequest = 0;
api.MergeCapacityCommitmentsRequest buildMergeCapacityCommitmentsRequest() {
  final o = api.MergeCapacityCommitmentsRequest();
  buildCounterMergeCapacityCommitmentsRequest++;
  if (buildCounterMergeCapacityCommitmentsRequest < 3) {
    o.capacityCommitmentIds = buildUnnamed5280();
  }
  buildCounterMergeCapacityCommitmentsRequest--;
  return o;
}

void checkMergeCapacityCommitmentsRequest(
    api.MergeCapacityCommitmentsRequest o) {
  buildCounterMergeCapacityCommitmentsRequest++;
  if (buildCounterMergeCapacityCommitmentsRequest < 3) {
    checkUnnamed5280(o.capacityCommitmentIds!);
  }
  buildCounterMergeCapacityCommitmentsRequest--;
}

core.int buildCounterMoveAssignmentRequest = 0;
api.MoveAssignmentRequest buildMoveAssignmentRequest() {
  final o = api.MoveAssignmentRequest();
  buildCounterMoveAssignmentRequest++;
  if (buildCounterMoveAssignmentRequest < 3) {
    o.destinationId = 'foo';
  }
  buildCounterMoveAssignmentRequest--;
  return o;
}

void checkMoveAssignmentRequest(api.MoveAssignmentRequest o) {
  buildCounterMoveAssignmentRequest++;
  if (buildCounterMoveAssignmentRequest < 3) {
    unittest.expect(
      o.destinationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoveAssignmentRequest--;
}

core.int buildCounterReservation = 0;
api.Reservation buildReservation() {
  final o = api.Reservation();
  buildCounterReservation++;
  if (buildCounterReservation < 3) {
    o.creationTime = 'foo';
    o.ignoreIdleSlots = true;
    o.name = 'foo';
    o.slotCapacity = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterReservation--;
  return o;
}

void checkReservation(api.Reservation o) {
  buildCounterReservation++;
  if (buildCounterReservation < 3) {
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ignoreIdleSlots!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slotCapacity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterReservation--;
}

core.List<api.Assignment> buildUnnamed5281() => [
      buildAssignment(),
      buildAssignment(),
    ];

void checkUnnamed5281(core.List<api.Assignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignment(o[0]);
  checkAssignment(o[1]);
}

core.int buildCounterSearchAllAssignmentsResponse = 0;
api.SearchAllAssignmentsResponse buildSearchAllAssignmentsResponse() {
  final o = api.SearchAllAssignmentsResponse();
  buildCounterSearchAllAssignmentsResponse++;
  if (buildCounterSearchAllAssignmentsResponse < 3) {
    o.assignments = buildUnnamed5281();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchAllAssignmentsResponse--;
  return o;
}

void checkSearchAllAssignmentsResponse(api.SearchAllAssignmentsResponse o) {
  buildCounterSearchAllAssignmentsResponse++;
  if (buildCounterSearchAllAssignmentsResponse < 3) {
    checkUnnamed5281(o.assignments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchAllAssignmentsResponse--;
}

core.List<api.Assignment> buildUnnamed5282() => [
      buildAssignment(),
      buildAssignment(),
    ];

void checkUnnamed5282(core.List<api.Assignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignment(o[0]);
  checkAssignment(o[1]);
}

core.int buildCounterSearchAssignmentsResponse = 0;
api.SearchAssignmentsResponse buildSearchAssignmentsResponse() {
  final o = api.SearchAssignmentsResponse();
  buildCounterSearchAssignmentsResponse++;
  if (buildCounterSearchAssignmentsResponse < 3) {
    o.assignments = buildUnnamed5282();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchAssignmentsResponse--;
  return o;
}

void checkSearchAssignmentsResponse(api.SearchAssignmentsResponse o) {
  buildCounterSearchAssignmentsResponse++;
  if (buildCounterSearchAssignmentsResponse < 3) {
    checkUnnamed5282(o.assignments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchAssignmentsResponse--;
}

core.int buildCounterSplitCapacityCommitmentRequest = 0;
api.SplitCapacityCommitmentRequest buildSplitCapacityCommitmentRequest() {
  final o = api.SplitCapacityCommitmentRequest();
  buildCounterSplitCapacityCommitmentRequest++;
  if (buildCounterSplitCapacityCommitmentRequest < 3) {
    o.slotCount = 'foo';
  }
  buildCounterSplitCapacityCommitmentRequest--;
  return o;
}

void checkSplitCapacityCommitmentRequest(api.SplitCapacityCommitmentRequest o) {
  buildCounterSplitCapacityCommitmentRequest++;
  if (buildCounterSplitCapacityCommitmentRequest < 3) {
    unittest.expect(
      o.slotCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterSplitCapacityCommitmentRequest--;
}

core.int buildCounterSplitCapacityCommitmentResponse = 0;
api.SplitCapacityCommitmentResponse buildSplitCapacityCommitmentResponse() {
  final o = api.SplitCapacityCommitmentResponse();
  buildCounterSplitCapacityCommitmentResponse++;
  if (buildCounterSplitCapacityCommitmentResponse < 3) {
    o.first = buildCapacityCommitment();
    o.second = buildCapacityCommitment();
  }
  buildCounterSplitCapacityCommitmentResponse--;
  return o;
}

void checkSplitCapacityCommitmentResponse(
    api.SplitCapacityCommitmentResponse o) {
  buildCounterSplitCapacityCommitmentResponse++;
  if (buildCounterSplitCapacityCommitmentResponse < 3) {
    checkCapacityCommitment(o.first!);
    checkCapacityCommitment(o.second!);
  }
  buildCounterSplitCapacityCommitmentResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5283() => {
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

void checkUnnamed5283(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed5284() => [
      buildUnnamed5283(),
      buildUnnamed5283(),
    ];

void checkUnnamed5284(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5283(o[0]);
  checkUnnamed5283(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5284();
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
    checkUnnamed5284(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

void main() {
  unittest.group('obj-schema-Assignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Assignment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAssignment(od);
    });
  });

  unittest.group('obj-schema-BiReservation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBiReservation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BiReservation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBiReservation(od);
    });
  });

  unittest.group('obj-schema-CapacityCommitment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCapacityCommitment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CapacityCommitment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCapacityCommitment(od);
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

  unittest.group('obj-schema-ListAssignmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssignmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssignmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAssignmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCapacityCommitmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCapacityCommitmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCapacityCommitmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCapacityCommitmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReservationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReservationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReservationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReservationsResponse(od);
    });
  });

  unittest.group('obj-schema-MergeCapacityCommitmentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMergeCapacityCommitmentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MergeCapacityCommitmentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMergeCapacityCommitmentsRequest(od);
    });
  });

  unittest.group('obj-schema-MoveAssignmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveAssignmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveAssignmentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMoveAssignmentRequest(od);
    });
  });

  unittest.group('obj-schema-Reservation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReservation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Reservation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReservation(od);
    });
  });

  unittest.group('obj-schema-SearchAllAssignmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchAllAssignmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchAllAssignmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchAllAssignmentsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchAssignmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchAssignmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchAssignmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchAssignmentsResponse(od);
    });
  });

  unittest.group('obj-schema-SplitCapacityCommitmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSplitCapacityCommitmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SplitCapacityCommitmentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSplitCapacityCommitmentRequest(od);
    });
  });

  unittest.group('obj-schema-SplitCapacityCommitmentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSplitCapacityCommitmentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SplitCapacityCommitmentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSplitCapacityCommitmentResponse(od);
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--getBiReservation', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildBiReservation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getBiReservation(arg_name, $fields: arg_$fields);
      checkBiReservation(response as api.BiReservation);
    });

    unittest.test('method--searchAllAssignments', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildSearchAllAssignmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchAllAssignments(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkSearchAllAssignmentsResponse(
          response as api.SearchAllAssignmentsResponse);
    });

    unittest.test('method--searchAssignments', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildSearchAssignmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchAssignments(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkSearchAssignmentsResponse(response as api.SearchAssignmentsResponse);
    });

    unittest.test('method--updateBiReservation', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock).projects.locations;
      final arg_request = buildBiReservation();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BiReservation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBiReservation(obj);

        final path = (req.url).path;
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
        final resp = convert.json.encode(buildBiReservation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateBiReservation(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkBiReservation(response as api.BiReservation);
    });
  });

  unittest.group('resource-ProjectsLocationsCapacityCommitmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .capacityCommitments;
      final arg_request = buildCapacityCommitment();
      final arg_parent = 'foo';
      final arg_capacityCommitmentId = 'foo';
      final arg_enforceSingleAdminProjectPerOrg = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CapacityCommitment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCapacityCommitment(obj);

        final path = (req.url).path;
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
          queryMap['capacityCommitmentId']!.first,
          unittest.equals(arg_capacityCommitmentId),
        );
        unittest.expect(
          queryMap['enforceSingleAdminProjectPerOrg']!.first,
          unittest.equals('$arg_enforceSingleAdminProjectPerOrg'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCapacityCommitment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          capacityCommitmentId: arg_capacityCommitmentId,
          enforceSingleAdminProjectPerOrg: arg_enforceSingleAdminProjectPerOrg,
          $fields: arg_$fields);
      checkCapacityCommitment(response as api.CapacityCommitment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .capacityCommitments;
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
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .capacityCommitments;
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
        final resp = convert.json.encode(buildCapacityCommitment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCapacityCommitment(response as api.CapacityCommitment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .capacityCommitments;
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
            convert.json.encode(buildListCapacityCommitmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCapacityCommitmentsResponse(
          response as api.ListCapacityCommitmentsResponse);
    });

    unittest.test('method--merge', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .capacityCommitments;
      final arg_request = buildMergeCapacityCommitmentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MergeCapacityCommitmentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMergeCapacityCommitmentsRequest(obj);

        final path = (req.url).path;
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
        final resp = convert.json.encode(buildCapacityCommitment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.merge(arg_request, arg_parent, $fields: arg_$fields);
      checkCapacityCommitment(response as api.CapacityCommitment);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .capacityCommitments;
      final arg_request = buildCapacityCommitment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CapacityCommitment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCapacityCommitment(obj);

        final path = (req.url).path;
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
        final resp = convert.json.encode(buildCapacityCommitment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCapacityCommitment(response as api.CapacityCommitment);
    });

    unittest.test('method--split', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .capacityCommitments;
      final arg_request = buildSplitCapacityCommitmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SplitCapacityCommitmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSplitCapacityCommitmentRequest(obj);

        final path = (req.url).path;
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
        final resp =
            convert.json.encode(buildSplitCapacityCommitmentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.split(arg_request, arg_name, $fields: arg_$fields);
      checkSplitCapacityCommitmentResponse(
          response as api.SplitCapacityCommitmentResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsReservationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryReservationApi(mock).projects.locations.reservations;
      final arg_request = buildReservation();
      final arg_parent = 'foo';
      final arg_reservationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Reservation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReservation(obj);

        final path = (req.url).path;
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
          queryMap['reservationId']!.first,
          unittest.equals(arg_reservationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReservation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          reservationId: arg_reservationId, $fields: arg_$fields);
      checkReservation(response as api.Reservation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryReservationApi(mock).projects.locations.reservations;
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
      final res =
          api.BigQueryReservationApi(mock).projects.locations.reservations;
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
        final resp = convert.json.encode(buildReservation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReservation(response as api.Reservation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryReservationApi(mock).projects.locations.reservations;
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
        final resp = convert.json.encode(buildListReservationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReservationsResponse(response as api.ListReservationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryReservationApi(mock).projects.locations.reservations;
      final arg_request = buildReservation();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Reservation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReservation(obj);

        final path = (req.url).path;
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
        final resp = convert.json.encode(buildReservation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkReservation(response as api.Reservation);
    });
  });

  unittest.group('resource-ProjectsLocationsReservationsAssignmentsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .reservations
          .assignments;
      final arg_request = buildAssignment();
      final arg_parent = 'foo';
      final arg_assignmentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Assignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAssignment(obj);

        final path = (req.url).path;
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
          queryMap['assignmentId']!.first,
          unittest.equals(arg_assignmentId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          assignmentId: arg_assignmentId, $fields: arg_$fields);
      checkAssignment(response as api.Assignment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .reservations
          .assignments;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .reservations
          .assignments;
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
        final resp = convert.json.encode(buildListAssignmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAssignmentsResponse(response as api.ListAssignmentsResponse);
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryReservationApi(mock)
          .projects
          .locations
          .reservations
          .assignments;
      final arg_request = buildMoveAssignmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MoveAssignmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMoveAssignmentRequest(obj);

        final path = (req.url).path;
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
        final resp = convert.json.encode(buildAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.move(arg_request, arg_name, $fields: arg_$fields);
      checkAssignment(response as api.Assignment);
    });
  });
}
