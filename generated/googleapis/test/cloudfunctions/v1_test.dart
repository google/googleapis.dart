library googleapis.cloudfunctions.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudfunctions/v1.dart' as api;

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

core.int buildCounterCallFunctionRequest = 0;
buildCallFunctionRequest() {
  var o = new api.CallFunctionRequest();
  buildCounterCallFunctionRequest++;
  if (buildCounterCallFunctionRequest < 3) {
    o.data = "foo";
  }
  buildCounterCallFunctionRequest--;
  return o;
}

checkCallFunctionRequest(api.CallFunctionRequest o) {
  buildCounterCallFunctionRequest++;
  if (buildCounterCallFunctionRequest < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
  }
  buildCounterCallFunctionRequest--;
}

core.int buildCounterCallFunctionResponse = 0;
buildCallFunctionResponse() {
  var o = new api.CallFunctionResponse();
  buildCounterCallFunctionResponse++;
  if (buildCounterCallFunctionResponse < 3) {
    o.error = "foo";
    o.executionId = "foo";
    o.result = "foo";
  }
  buildCounterCallFunctionResponse--;
  return o;
}

checkCallFunctionResponse(api.CallFunctionResponse o) {
  buildCounterCallFunctionResponse++;
  if (buildCounterCallFunctionResponse < 3) {
    unittest.expect(o.error, unittest.equals('foo'));
    unittest.expect(o.executionId, unittest.equals('foo'));
    unittest.expect(o.result, unittest.equals('foo'));
  }
  buildCounterCallFunctionResponse--;
}

buildUnnamed120() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed120(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterCloudFunction = 0;
buildCloudFunction() {
  var o = new api.CloudFunction();
  buildCounterCloudFunction++;
  if (buildCounterCloudFunction < 3) {
    o.availableMemoryMb = 42;
    o.description = "foo";
    o.entryPoint = "foo";
    o.eventTrigger = buildEventTrigger();
    o.httpsTrigger = buildHttpsTrigger();
    o.labels = buildUnnamed120();
    o.name = "foo";
    o.serviceAccountEmail = "foo";
    o.sourceArchiveUrl = "foo";
    o.sourceRepository = buildSourceRepository();
    o.sourceUploadUrl = "foo";
    o.status = "foo";
    o.timeout = "foo";
    o.updateTime = "foo";
    o.versionId = "foo";
  }
  buildCounterCloudFunction--;
  return o;
}

checkCloudFunction(api.CloudFunction o) {
  buildCounterCloudFunction++;
  if (buildCounterCloudFunction < 3) {
    unittest.expect(o.availableMemoryMb, unittest.equals(42));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entryPoint, unittest.equals('foo'));
    checkEventTrigger(o.eventTrigger);
    checkHttpsTrigger(o.httpsTrigger);
    checkUnnamed120(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.serviceAccountEmail, unittest.equals('foo'));
    unittest.expect(o.sourceArchiveUrl, unittest.equals('foo'));
    checkSourceRepository(o.sourceRepository);
    unittest.expect(o.sourceUploadUrl, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.timeout, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.versionId, unittest.equals('foo'));
  }
  buildCounterCloudFunction--;
}

core.int buildCounterEventTrigger = 0;
buildEventTrigger() {
  var o = new api.EventTrigger();
  buildCounterEventTrigger++;
  if (buildCounterEventTrigger < 3) {
    o.eventType = "foo";
    o.failurePolicy = buildFailurePolicy();
    o.resource = "foo";
    o.service = "foo";
  }
  buildCounterEventTrigger--;
  return o;
}

checkEventTrigger(api.EventTrigger o) {
  buildCounterEventTrigger++;
  if (buildCounterEventTrigger < 3) {
    unittest.expect(o.eventType, unittest.equals('foo'));
    checkFailurePolicy(o.failurePolicy);
    unittest.expect(o.resource, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterEventTrigger--;
}

core.int buildCounterFailurePolicy = 0;
buildFailurePolicy() {
  var o = new api.FailurePolicy();
  buildCounterFailurePolicy++;
  if (buildCounterFailurePolicy < 3) {
    o.retry = buildRetry();
  }
  buildCounterFailurePolicy--;
  return o;
}

checkFailurePolicy(api.FailurePolicy o) {
  buildCounterFailurePolicy++;
  if (buildCounterFailurePolicy < 3) {
    checkRetry(o.retry);
  }
  buildCounterFailurePolicy--;
}

core.int buildCounterGenerateDownloadUrlRequest = 0;
buildGenerateDownloadUrlRequest() {
  var o = new api.GenerateDownloadUrlRequest();
  buildCounterGenerateDownloadUrlRequest++;
  if (buildCounterGenerateDownloadUrlRequest < 3) {
    o.versionId = "foo";
  }
  buildCounterGenerateDownloadUrlRequest--;
  return o;
}

checkGenerateDownloadUrlRequest(api.GenerateDownloadUrlRequest o) {
  buildCounterGenerateDownloadUrlRequest++;
  if (buildCounterGenerateDownloadUrlRequest < 3) {
    unittest.expect(o.versionId, unittest.equals('foo'));
  }
  buildCounterGenerateDownloadUrlRequest--;
}

core.int buildCounterGenerateDownloadUrlResponse = 0;
buildGenerateDownloadUrlResponse() {
  var o = new api.GenerateDownloadUrlResponse();
  buildCounterGenerateDownloadUrlResponse++;
  if (buildCounterGenerateDownloadUrlResponse < 3) {
    o.downloadUrl = "foo";
  }
  buildCounterGenerateDownloadUrlResponse--;
  return o;
}

checkGenerateDownloadUrlResponse(api.GenerateDownloadUrlResponse o) {
  buildCounterGenerateDownloadUrlResponse++;
  if (buildCounterGenerateDownloadUrlResponse < 3) {
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
  }
  buildCounterGenerateDownloadUrlResponse--;
}

core.int buildCounterGenerateUploadUrlRequest = 0;
buildGenerateUploadUrlRequest() {
  var o = new api.GenerateUploadUrlRequest();
  buildCounterGenerateUploadUrlRequest++;
  if (buildCounterGenerateUploadUrlRequest < 3) {}
  buildCounterGenerateUploadUrlRequest--;
  return o;
}

checkGenerateUploadUrlRequest(api.GenerateUploadUrlRequest o) {
  buildCounterGenerateUploadUrlRequest++;
  if (buildCounterGenerateUploadUrlRequest < 3) {}
  buildCounterGenerateUploadUrlRequest--;
}

core.int buildCounterGenerateUploadUrlResponse = 0;
buildGenerateUploadUrlResponse() {
  var o = new api.GenerateUploadUrlResponse();
  buildCounterGenerateUploadUrlResponse++;
  if (buildCounterGenerateUploadUrlResponse < 3) {
    o.uploadUrl = "foo";
  }
  buildCounterGenerateUploadUrlResponse--;
  return o;
}

checkGenerateUploadUrlResponse(api.GenerateUploadUrlResponse o) {
  buildCounterGenerateUploadUrlResponse++;
  if (buildCounterGenerateUploadUrlResponse < 3) {
    unittest.expect(o.uploadUrl, unittest.equals('foo'));
  }
  buildCounterGenerateUploadUrlResponse--;
}

core.int buildCounterHttpsTrigger = 0;
buildHttpsTrigger() {
  var o = new api.HttpsTrigger();
  buildCounterHttpsTrigger++;
  if (buildCounterHttpsTrigger < 3) {
    o.url = "foo";
  }
  buildCounterHttpsTrigger--;
  return o;
}

checkHttpsTrigger(api.HttpsTrigger o) {
  buildCounterHttpsTrigger++;
  if (buildCounterHttpsTrigger < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterHttpsTrigger--;
}

buildUnnamed121() {
  var o = new core.List<api.CloudFunction>();
  o.add(buildCloudFunction());
  o.add(buildCloudFunction());
  return o;
}

checkUnnamed121(core.List<api.CloudFunction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudFunction(o[0]);
  checkCloudFunction(o[1]);
}

core.int buildCounterListFunctionsResponse = 0;
buildListFunctionsResponse() {
  var o = new api.ListFunctionsResponse();
  buildCounterListFunctionsResponse++;
  if (buildCounterListFunctionsResponse < 3) {
    o.functions = buildUnnamed121();
    o.nextPageToken = "foo";
  }
  buildCounterListFunctionsResponse--;
  return o;
}

checkListFunctionsResponse(api.ListFunctionsResponse o) {
  buildCounterListFunctionsResponse++;
  if (buildCounterListFunctionsResponse < 3) {
    checkUnnamed121(o.functions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListFunctionsResponse--;
}

buildUnnamed122() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed122(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed122();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed122(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed123() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed123(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed123();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed123(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed124() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed124(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed125() {
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

checkUnnamed125(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.labels = buildUnnamed124();
    o.locationId = "foo";
    o.metadata = buildUnnamed125();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkUnnamed124(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed125(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

buildUnnamed126() {
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

checkUnnamed126(core.Map<core.String, core.Object> o) {
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

buildUnnamed127() {
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

checkUnnamed127(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed126();
    o.name = "foo";
    o.response = buildUnnamed127();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed126(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed127(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed128() {
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

checkUnnamed128(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

core.int buildCounterOperationMetadataV1 = 0;
buildOperationMetadataV1() {
  var o = new api.OperationMetadataV1();
  buildCounterOperationMetadataV1++;
  if (buildCounterOperationMetadataV1 < 3) {
    o.request = buildUnnamed128();
    o.target = "foo";
    o.type = "foo";
    o.updateTime = "foo";
    o.versionId = "foo";
  }
  buildCounterOperationMetadataV1--;
  return o;
}

checkOperationMetadataV1(api.OperationMetadataV1 o) {
  buildCounterOperationMetadataV1++;
  if (buildCounterOperationMetadataV1 < 3) {
    checkUnnamed128(o.request);
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.versionId, unittest.equals('foo'));
  }
  buildCounterOperationMetadataV1--;
}

buildUnnamed129() {
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

checkUnnamed129(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o["y"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

core.int buildCounterOperationMetadataV1Beta2 = 0;
buildOperationMetadataV1Beta2() {
  var o = new api.OperationMetadataV1Beta2();
  buildCounterOperationMetadataV1Beta2++;
  if (buildCounterOperationMetadataV1Beta2 < 3) {
    o.request = buildUnnamed129();
    o.target = "foo";
    o.type = "foo";
    o.updateTime = "foo";
    o.versionId = "foo";
  }
  buildCounterOperationMetadataV1Beta2--;
  return o;
}

checkOperationMetadataV1Beta2(api.OperationMetadataV1Beta2 o) {
  buildCounterOperationMetadataV1Beta2++;
  if (buildCounterOperationMetadataV1Beta2 < 3) {
    checkUnnamed129(o.request);
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.versionId, unittest.equals('foo'));
  }
  buildCounterOperationMetadataV1Beta2--;
}

core.int buildCounterRetry = 0;
buildRetry() {
  var o = new api.Retry();
  buildCounterRetry++;
  if (buildCounterRetry < 3) {}
  buildCounterRetry--;
  return o;
}

checkRetry(api.Retry o) {
  buildCounterRetry++;
  if (buildCounterRetry < 3) {}
  buildCounterRetry--;
}

core.int buildCounterSourceRepository = 0;
buildSourceRepository() {
  var o = new api.SourceRepository();
  buildCounterSourceRepository++;
  if (buildCounterSourceRepository < 3) {
    o.deployedUrl = "foo";
    o.url = "foo";
  }
  buildCounterSourceRepository--;
  return o;
}

checkSourceRepository(api.SourceRepository o) {
  buildCounterSourceRepository++;
  if (buildCounterSourceRepository < 3) {
    unittest.expect(o.deployedUrl, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterSourceRepository--;
}

buildUnnamed130() {
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

checkUnnamed130(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o["x"]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
  var casted12 = (o["y"]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
}

buildUnnamed131() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed130());
  o.add(buildUnnamed130());
  return o;
}

checkUnnamed131(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed130(o[0]);
  checkUnnamed130(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed131();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed131(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

main() {
  unittest.group("obj-schema-CallFunctionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCallFunctionRequest();
      var od = new api.CallFunctionRequest.fromJson(o.toJson());
      checkCallFunctionRequest(od);
    });
  });

  unittest.group("obj-schema-CallFunctionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCallFunctionResponse();
      var od = new api.CallFunctionResponse.fromJson(o.toJson());
      checkCallFunctionResponse(od);
    });
  });

  unittest.group("obj-schema-CloudFunction", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudFunction();
      var od = new api.CloudFunction.fromJson(o.toJson());
      checkCloudFunction(od);
    });
  });

  unittest.group("obj-schema-EventTrigger", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventTrigger();
      var od = new api.EventTrigger.fromJson(o.toJson());
      checkEventTrigger(od);
    });
  });

  unittest.group("obj-schema-FailurePolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildFailurePolicy();
      var od = new api.FailurePolicy.fromJson(o.toJson());
      checkFailurePolicy(od);
    });
  });

  unittest.group("obj-schema-GenerateDownloadUrlRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateDownloadUrlRequest();
      var od = new api.GenerateDownloadUrlRequest.fromJson(o.toJson());
      checkGenerateDownloadUrlRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateDownloadUrlResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateDownloadUrlResponse();
      var od = new api.GenerateDownloadUrlResponse.fromJson(o.toJson());
      checkGenerateDownloadUrlResponse(od);
    });
  });

  unittest.group("obj-schema-GenerateUploadUrlRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateUploadUrlRequest();
      var od = new api.GenerateUploadUrlRequest.fromJson(o.toJson());
      checkGenerateUploadUrlRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateUploadUrlResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateUploadUrlResponse();
      var od = new api.GenerateUploadUrlResponse.fromJson(o.toJson());
      checkGenerateUploadUrlResponse(od);
    });
  });

  unittest.group("obj-schema-HttpsTrigger", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpsTrigger();
      var od = new api.HttpsTrigger.fromJson(o.toJson());
      checkHttpsTrigger(od);
    });
  });

  unittest.group("obj-schema-ListFunctionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFunctionsResponse();
      var od = new api.ListFunctionsResponse.fromJson(o.toJson());
      checkListFunctionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationMetadataV1", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1();
      var od = new api.OperationMetadataV1.fromJson(o.toJson());
      checkOperationMetadataV1(od);
    });
  });

  unittest.group("obj-schema-OperationMetadataV1Beta2", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1Beta2();
      var od = new api.OperationMetadataV1Beta2.fromJson(o.toJson());
      checkOperationMetadataV1Beta2(od);
    });
  });

  unittest.group("obj-schema-Retry", () {
    unittest.test("to-json--from-json", () {
      var o = buildRetry();
      var od = new api.Retry.fromJson(o.toJson());
      checkRetry(od);
    });
  });

  unittest.group("obj-schema-SourceRepository", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceRepository();
      var od = new api.SourceRepository.fromJson(o.toJson());
      checkSourceRepository(od);
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
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.CloudfunctionsApi(mock).operations;
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
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.CloudfunctionsApi(mock).operations;
      var arg_filter = "foo";
      var arg_name = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1/operations"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              name: arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListOperationsResponse response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.CloudfunctionsApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListLocationsResponse response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsFunctionsResourceApi", () {
    unittest.test("method--call", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFunctionsResourceApi res =
          new api.CloudfunctionsApi(mock).projects.locations.functions;
      var arg_request = buildCallFunctionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CallFunctionRequest.fromJson(json);
        checkCallFunctionRequest(obj);

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
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        var resp = convert.JSON.encode(buildCallFunctionResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .call(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CallFunctionResponse response) {
        checkCallFunctionResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFunctionsResourceApi res =
          new api.CloudfunctionsApi(mock).projects.locations.functions;
      var arg_request = buildCloudFunction();
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CloudFunction.fromJson(json);
        checkCloudFunction(obj);

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
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFunctionsResourceApi res =
          new api.CloudfunctionsApi(mock).projects.locations.functions;
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
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--generateDownloadUrl", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFunctionsResourceApi res =
          new api.CloudfunctionsApi(mock).projects.locations.functions;
      var arg_request = buildGenerateDownloadUrlRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GenerateDownloadUrlRequest.fromJson(json);
        checkGenerateDownloadUrlRequest(obj);

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
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        var resp = convert.JSON.encode(buildGenerateDownloadUrlResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.generateDownloadUrl(arg_request, arg_name, $fields: arg_$fields).then(
          unittest.expectAsync1(((api.GenerateDownloadUrlResponse response) {
        checkGenerateDownloadUrlResponse(response);
      })));
    });

    unittest.test("method--generateUploadUrl", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFunctionsResourceApi res =
          new api.CloudfunctionsApi(mock).projects.locations.functions;
      var arg_request = buildGenerateUploadUrlRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GenerateUploadUrlRequest.fromJson(json);
        checkGenerateUploadUrlRequest(obj);

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
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        var resp = convert.JSON.encode(buildGenerateUploadUrlResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.generateUploadUrl(arg_request, arg_parent, $fields: arg_$fields).then(
          unittest.expectAsync1(((api.GenerateUploadUrlResponse response) {
        checkGenerateUploadUrlResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFunctionsResourceApi res =
          new api.CloudfunctionsApi(mock).projects.locations.functions;
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
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        var resp = convert.JSON.encode(buildCloudFunction());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CloudFunction response) {
        checkCloudFunction(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFunctionsResourceApi res =
          new api.CloudfunctionsApi(mock).projects.locations.functions;
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
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        var resp = convert.JSON.encode(buildListFunctionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListFunctionsResponse response) {
        checkListFunctionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFunctionsResourceApi res =
          new api.CloudfunctionsApi(mock).projects.locations.functions;
      var arg_request = buildCloudFunction();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CloudFunction.fromJson(json);
        checkCloudFunction(obj);

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
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });
}
