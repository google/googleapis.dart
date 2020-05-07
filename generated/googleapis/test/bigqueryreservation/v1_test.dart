library googleapis.bigqueryreservation.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/bigqueryreservation/v1.dart' as api;

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

core.int buildCounterAssignment = 0;
buildAssignment() {
  var o = new api.Assignment();
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    o.assignee = "foo";
    o.jobType = "foo";
    o.name = "foo";
    o.state = "foo";
  }
  buildCounterAssignment--;
  return o;
}

checkAssignment(api.Assignment o) {
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    unittest.expect(o.assignee, unittest.equals('foo'));
    unittest.expect(o.jobType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterAssignment--;
}

core.int buildCounterBiReservation = 0;
buildBiReservation() {
  var o = new api.BiReservation();
  buildCounterBiReservation++;
  if (buildCounterBiReservation < 3) {
    o.name = "foo";
    o.size = "foo";
    o.updateTime = "foo";
  }
  buildCounterBiReservation--;
  return o;
}

checkBiReservation(api.BiReservation o) {
  buildCounterBiReservation++;
  if (buildCounterBiReservation < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterBiReservation--;
}

core.int buildCounterCapacityCommitment = 0;
buildCapacityCommitment() {
  var o = new api.CapacityCommitment();
  buildCounterCapacityCommitment++;
  if (buildCounterCapacityCommitment < 3) {
    o.commitmentEndTime = "foo";
    o.failureStatus = buildStatus();
    o.name = "foo";
    o.plan = "foo";
    o.renewalPlan = "foo";
    o.slotCount = "foo";
    o.state = "foo";
  }
  buildCounterCapacityCommitment--;
  return o;
}

checkCapacityCommitment(api.CapacityCommitment o) {
  buildCounterCapacityCommitment++;
  if (buildCounterCapacityCommitment < 3) {
    unittest.expect(o.commitmentEndTime, unittest.equals('foo'));
    checkStatus(o.failureStatus);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.plan, unittest.equals('foo'));
    unittest.expect(o.renewalPlan, unittest.equals('foo'));
    unittest.expect(o.slotCount, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterCapacityCommitment--;
}

core.int buildCounterCreateSlotPoolMetadata = 0;
buildCreateSlotPoolMetadata() {
  var o = new api.CreateSlotPoolMetadata();
  buildCounterCreateSlotPoolMetadata++;
  if (buildCounterCreateSlotPoolMetadata < 3) {
    o.slotPool = "foo";
  }
  buildCounterCreateSlotPoolMetadata--;
  return o;
}

checkCreateSlotPoolMetadata(api.CreateSlotPoolMetadata o) {
  buildCounterCreateSlotPoolMetadata++;
  if (buildCounterCreateSlotPoolMetadata < 3) {
    unittest.expect(o.slotPool, unittest.equals('foo'));
  }
  buildCounterCreateSlotPoolMetadata--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed5429() {
  var o = new core.List<api.Assignment>();
  o.add(buildAssignment());
  o.add(buildAssignment());
  return o;
}

checkUnnamed5429(core.List<api.Assignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignment(o[0]);
  checkAssignment(o[1]);
}

core.int buildCounterListAssignmentsResponse = 0;
buildListAssignmentsResponse() {
  var o = new api.ListAssignmentsResponse();
  buildCounterListAssignmentsResponse++;
  if (buildCounterListAssignmentsResponse < 3) {
    o.assignments = buildUnnamed5429();
    o.nextPageToken = "foo";
  }
  buildCounterListAssignmentsResponse--;
  return o;
}

checkListAssignmentsResponse(api.ListAssignmentsResponse o) {
  buildCounterListAssignmentsResponse++;
  if (buildCounterListAssignmentsResponse < 3) {
    checkUnnamed5429(o.assignments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAssignmentsResponse--;
}

buildUnnamed5430() {
  var o = new core.List<api.CapacityCommitment>();
  o.add(buildCapacityCommitment());
  o.add(buildCapacityCommitment());
  return o;
}

checkUnnamed5430(core.List<api.CapacityCommitment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCapacityCommitment(o[0]);
  checkCapacityCommitment(o[1]);
}

core.int buildCounterListCapacityCommitmentsResponse = 0;
buildListCapacityCommitmentsResponse() {
  var o = new api.ListCapacityCommitmentsResponse();
  buildCounterListCapacityCommitmentsResponse++;
  if (buildCounterListCapacityCommitmentsResponse < 3) {
    o.capacityCommitments = buildUnnamed5430();
    o.nextPageToken = "foo";
  }
  buildCounterListCapacityCommitmentsResponse--;
  return o;
}

checkListCapacityCommitmentsResponse(api.ListCapacityCommitmentsResponse o) {
  buildCounterListCapacityCommitmentsResponse++;
  if (buildCounterListCapacityCommitmentsResponse < 3) {
    checkUnnamed5430(o.capacityCommitments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCapacityCommitmentsResponse--;
}

buildUnnamed5431() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed5431(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed5431();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5431(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed5432() {
  var o = new core.List<api.Reservation>();
  o.add(buildReservation());
  o.add(buildReservation());
  return o;
}

checkUnnamed5432(core.List<api.Reservation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReservation(o[0]);
  checkReservation(o[1]);
}

core.int buildCounterListReservationsResponse = 0;
buildListReservationsResponse() {
  var o = new api.ListReservationsResponse();
  buildCounterListReservationsResponse++;
  if (buildCounterListReservationsResponse < 3) {
    o.nextPageToken = "foo";
    o.reservations = buildUnnamed5432();
  }
  buildCounterListReservationsResponse--;
  return o;
}

checkListReservationsResponse(api.ListReservationsResponse o) {
  buildCounterListReservationsResponse++;
  if (buildCounterListReservationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5432(o.reservations);
  }
  buildCounterListReservationsResponse--;
}

buildUnnamed5433() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5433(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMergeCapacityCommitmentsRequest = 0;
buildMergeCapacityCommitmentsRequest() {
  var o = new api.MergeCapacityCommitmentsRequest();
  buildCounterMergeCapacityCommitmentsRequest++;
  if (buildCounterMergeCapacityCommitmentsRequest < 3) {
    o.capacityCommitmentIds = buildUnnamed5433();
  }
  buildCounterMergeCapacityCommitmentsRequest--;
  return o;
}

checkMergeCapacityCommitmentsRequest(api.MergeCapacityCommitmentsRequest o) {
  buildCounterMergeCapacityCommitmentsRequest++;
  if (buildCounterMergeCapacityCommitmentsRequest < 3) {
    checkUnnamed5433(o.capacityCommitmentIds);
  }
  buildCounterMergeCapacityCommitmentsRequest--;
}

core.int buildCounterMoveAssignmentRequest = 0;
buildMoveAssignmentRequest() {
  var o = new api.MoveAssignmentRequest();
  buildCounterMoveAssignmentRequest++;
  if (buildCounterMoveAssignmentRequest < 3) {
    o.destinationId = "foo";
  }
  buildCounterMoveAssignmentRequest--;
  return o;
}

checkMoveAssignmentRequest(api.MoveAssignmentRequest o) {
  buildCounterMoveAssignmentRequest++;
  if (buildCounterMoveAssignmentRequest < 3) {
    unittest.expect(o.destinationId, unittest.equals('foo'));
  }
  buildCounterMoveAssignmentRequest--;
}

buildUnnamed5434() {
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

checkUnnamed5434(core.Map<core.String, core.Object> o) {
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

buildUnnamed5435() {
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

checkUnnamed5435(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed5434();
    o.name = "foo";
    o.response = buildUnnamed5435();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed5434(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5435(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterReservation = 0;
buildReservation() {
  var o = new api.Reservation();
  buildCounterReservation++;
  if (buildCounterReservation < 3) {
    o.ignoreIdleSlots = true;
    o.name = "foo";
    o.slotCapacity = "foo";
  }
  buildCounterReservation--;
  return o;
}

checkReservation(api.Reservation o) {
  buildCounterReservation++;
  if (buildCounterReservation < 3) {
    unittest.expect(o.ignoreIdleSlots, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.slotCapacity, unittest.equals('foo'));
  }
  buildCounterReservation--;
}

buildUnnamed5436() {
  var o = new core.List<api.Assignment>();
  o.add(buildAssignment());
  o.add(buildAssignment());
  return o;
}

checkUnnamed5436(core.List<api.Assignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignment(o[0]);
  checkAssignment(o[1]);
}

core.int buildCounterSearchAssignmentsResponse = 0;
buildSearchAssignmentsResponse() {
  var o = new api.SearchAssignmentsResponse();
  buildCounterSearchAssignmentsResponse++;
  if (buildCounterSearchAssignmentsResponse < 3) {
    o.assignments = buildUnnamed5436();
    o.nextPageToken = "foo";
  }
  buildCounterSearchAssignmentsResponse--;
  return o;
}

checkSearchAssignmentsResponse(api.SearchAssignmentsResponse o) {
  buildCounterSearchAssignmentsResponse++;
  if (buildCounterSearchAssignmentsResponse < 3) {
    checkUnnamed5436(o.assignments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchAssignmentsResponse--;
}

core.int buildCounterSplitCapacityCommitmentRequest = 0;
buildSplitCapacityCommitmentRequest() {
  var o = new api.SplitCapacityCommitmentRequest();
  buildCounterSplitCapacityCommitmentRequest++;
  if (buildCounterSplitCapacityCommitmentRequest < 3) {
    o.slotCount = "foo";
  }
  buildCounterSplitCapacityCommitmentRequest--;
  return o;
}

checkSplitCapacityCommitmentRequest(api.SplitCapacityCommitmentRequest o) {
  buildCounterSplitCapacityCommitmentRequest++;
  if (buildCounterSplitCapacityCommitmentRequest < 3) {
    unittest.expect(o.slotCount, unittest.equals('foo'));
  }
  buildCounterSplitCapacityCommitmentRequest--;
}

core.int buildCounterSplitCapacityCommitmentResponse = 0;
buildSplitCapacityCommitmentResponse() {
  var o = new api.SplitCapacityCommitmentResponse();
  buildCounterSplitCapacityCommitmentResponse++;
  if (buildCounterSplitCapacityCommitmentResponse < 3) {
    o.first = buildCapacityCommitment();
    o.second = buildCapacityCommitment();
  }
  buildCounterSplitCapacityCommitmentResponse--;
  return o;
}

checkSplitCapacityCommitmentResponse(api.SplitCapacityCommitmentResponse o) {
  buildCounterSplitCapacityCommitmentResponse++;
  if (buildCounterSplitCapacityCommitmentResponse < 3) {
    checkCapacityCommitment(o.first);
    checkCapacityCommitment(o.second);
  }
  buildCounterSplitCapacityCommitmentResponse--;
}

buildUnnamed5437() {
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

checkUnnamed5437(core.Map<core.String, core.Object> o) {
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

buildUnnamed5438() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed5437());
  o.add(buildUnnamed5437());
  return o;
}

checkUnnamed5438(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5437(o[0]);
  checkUnnamed5437(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5438();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5438(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

main() {
  unittest.group("obj-schema-Assignment", () {
    unittest.test("to-json--from-json", () {
      var o = buildAssignment();
      var od = new api.Assignment.fromJson(o.toJson());
      checkAssignment(od);
    });
  });

  unittest.group("obj-schema-BiReservation", () {
    unittest.test("to-json--from-json", () {
      var o = buildBiReservation();
      var od = new api.BiReservation.fromJson(o.toJson());
      checkBiReservation(od);
    });
  });

  unittest.group("obj-schema-CapacityCommitment", () {
    unittest.test("to-json--from-json", () {
      var o = buildCapacityCommitment();
      var od = new api.CapacityCommitment.fromJson(o.toJson());
      checkCapacityCommitment(od);
    });
  });

  unittest.group("obj-schema-CreateSlotPoolMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateSlotPoolMetadata();
      var od = new api.CreateSlotPoolMetadata.fromJson(o.toJson());
      checkCreateSlotPoolMetadata(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-ListAssignmentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAssignmentsResponse();
      var od = new api.ListAssignmentsResponse.fromJson(o.toJson());
      checkListAssignmentsResponse(od);
    });
  });

  unittest.group("obj-schema-ListCapacityCommitmentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCapacityCommitmentsResponse();
      var od = new api.ListCapacityCommitmentsResponse.fromJson(o.toJson());
      checkListCapacityCommitmentsResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListReservationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListReservationsResponse();
      var od = new api.ListReservationsResponse.fromJson(o.toJson());
      checkListReservationsResponse(od);
    });
  });

  unittest.group("obj-schema-MergeCapacityCommitmentsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildMergeCapacityCommitmentsRequest();
      var od = new api.MergeCapacityCommitmentsRequest.fromJson(o.toJson());
      checkMergeCapacityCommitmentsRequest(od);
    });
  });

  unittest.group("obj-schema-MoveAssignmentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoveAssignmentRequest();
      var od = new api.MoveAssignmentRequest.fromJson(o.toJson());
      checkMoveAssignmentRequest(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-Reservation", () {
    unittest.test("to-json--from-json", () {
      var o = buildReservation();
      var od = new api.Reservation.fromJson(o.toJson());
      checkReservation(od);
    });
  });

  unittest.group("obj-schema-SearchAssignmentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchAssignmentsResponse();
      var od = new api.SearchAssignmentsResponse.fromJson(o.toJson());
      checkSearchAssignmentsResponse(od);
    });
  });

  unittest.group("obj-schema-SplitCapacityCommitmentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSplitCapacityCommitmentRequest();
      var od = new api.SplitCapacityCommitmentRequest.fromJson(o.toJson());
      checkSplitCapacityCommitmentRequest(od);
    });
  });

  unittest.group("obj-schema-SplitCapacityCommitmentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSplitCapacityCommitmentResponse();
      var od = new api.SplitCapacityCommitmentResponse.fromJson(o.toJson());
      checkSplitCapacityCommitmentResponse(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.BigqueryreservationApi(mock).operations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.BigqueryreservationApi(mock).operations;
      var arg_name = "foo";
      var arg_filter = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--getBiReservation", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.BigqueryreservationApi(mock).projects.locations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildBiReservation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getBiReservation(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBiReservation(response);
      })));
    });

    unittest.test("method--searchAssignments", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.BigqueryreservationApi(mock).projects.locations;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSearchAssignmentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchAssignments(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchAssignmentsResponse(response);
      })));
    });

    unittest.test("method--updateBiReservation", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.BigqueryreservationApi(mock).projects.locations;
      var arg_request = buildBiReservation();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BiReservation.fromJson(json);
        checkBiReservation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildBiReservation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateBiReservation(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBiReservation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsCapacityCommitmentsResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsCapacityCommitmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .capacityCommitments;
      var arg_request = buildCapacityCommitment();
      var arg_parent = "foo";
      var arg_enforceSingleAdminProjectPerOrg = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CapacityCommitment.fromJson(json);
        checkCapacityCommitment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["enforceSingleAdminProjectPerOrg"].first,
            unittest.equals("$arg_enforceSingleAdminProjectPerOrg"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCapacityCommitment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              enforceSingleAdminProjectPerOrg:
                  arg_enforceSingleAdminProjectPerOrg,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCapacityCommitment(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsCapacityCommitmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .capacityCommitments;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsCapacityCommitmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .capacityCommitments;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildCapacityCommitment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCapacityCommitment(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsCapacityCommitmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .capacityCommitments;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildListCapacityCommitmentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCapacityCommitmentsResponse(response);
      })));
    });

    unittest.test("method--merge", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsCapacityCommitmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .capacityCommitments;
      var arg_request = buildMergeCapacityCommitmentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.MergeCapacityCommitmentsRequest.fromJson(json);
        checkMergeCapacityCommitmentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildCapacityCommitment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .merge(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCapacityCommitment(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsCapacityCommitmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .capacityCommitments;
      var arg_request = buildCapacityCommitment();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CapacityCommitment.fromJson(json);
        checkCapacityCommitment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildCapacityCommitment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCapacityCommitment(response);
      })));
    });

    unittest.test("method--split", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsCapacityCommitmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .capacityCommitments;
      var arg_request = buildSplitCapacityCommitmentRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SplitCapacityCommitmentRequest.fromJson(json);
        checkSplitCapacityCommitmentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildSplitCapacityCommitmentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .split(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSplitCapacityCommitmentResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsReservationsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsReservationsResourceApi res =
          new api.BigqueryreservationApi(mock).projects.locations.reservations;
      var arg_request = buildReservation();
      var arg_parent = "foo";
      var arg_reservationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Reservation.fromJson(json);
        checkReservation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["reservationId"].first,
            unittest.equals(arg_reservationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReservation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              reservationId: arg_reservationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReservation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsReservationsResourceApi res =
          new api.BigqueryreservationApi(mock).projects.locations.reservations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsReservationsResourceApi res =
          new api.BigqueryreservationApi(mock).projects.locations.reservations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildReservation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReservation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsReservationsResourceApi res =
          new api.BigqueryreservationApi(mock).projects.locations.reservations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildListReservationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListReservationsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsReservationsResourceApi res =
          new api.BigqueryreservationApi(mock).projects.locations.reservations;
      var arg_request = buildReservation();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Reservation.fromJson(json);
        checkReservation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildReservation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReservation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsReservationsAssignmentsResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsReservationsAssignmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .reservations
              .assignments;
      var arg_request = buildAssignment();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Assignment.fromJson(json);
        checkAssignment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildAssignment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssignment(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsReservationsAssignmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .reservations
              .assignments;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsReservationsAssignmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .reservations
              .assignments;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildListAssignmentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAssignmentsResponse(response);
      })));
    });

    unittest.test("method--move", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsReservationsAssignmentsResourceApi res =
          new api.BigqueryreservationApi(mock)
              .projects
              .locations
              .reservations
              .assignments;
      var arg_request = buildMoveAssignmentRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.MoveAssignmentRequest.fromJson(json);
        checkMoveAssignmentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildAssignment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssignment(response);
      })));
    });
  });
}
