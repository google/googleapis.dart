library googleapis.datastore.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/datastore/v1.dart' as api;

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

buildUnnamed4348() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed4348(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterAllocateIdsRequest = 0;
buildAllocateIdsRequest() {
  var o = new api.AllocateIdsRequest();
  buildCounterAllocateIdsRequest++;
  if (buildCounterAllocateIdsRequest < 3) {
    o.keys = buildUnnamed4348();
  }
  buildCounterAllocateIdsRequest--;
  return o;
}

checkAllocateIdsRequest(api.AllocateIdsRequest o) {
  buildCounterAllocateIdsRequest++;
  if (buildCounterAllocateIdsRequest < 3) {
    checkUnnamed4348(o.keys);
  }
  buildCounterAllocateIdsRequest--;
}

buildUnnamed4349() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed4349(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterAllocateIdsResponse = 0;
buildAllocateIdsResponse() {
  var o = new api.AllocateIdsResponse();
  buildCounterAllocateIdsResponse++;
  if (buildCounterAllocateIdsResponse < 3) {
    o.keys = buildUnnamed4349();
  }
  buildCounterAllocateIdsResponse--;
  return o;
}

checkAllocateIdsResponse(api.AllocateIdsResponse o) {
  buildCounterAllocateIdsResponse++;
  if (buildCounterAllocateIdsResponse < 3) {
    checkUnnamed4349(o.keys);
  }
  buildCounterAllocateIdsResponse--;
}

buildUnnamed4350() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed4350(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterArrayValue = 0;
buildArrayValue() {
  var o = new api.ArrayValue();
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    o.values = buildUnnamed4350();
  }
  buildCounterArrayValue--;
  return o;
}

checkArrayValue(api.ArrayValue o) {
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    checkUnnamed4350(o.values);
  }
  buildCounterArrayValue--;
}

core.int buildCounterBeginTransactionRequest = 0;
buildBeginTransactionRequest() {
  var o = new api.BeginTransactionRequest();
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    o.transactionOptions = buildTransactionOptions();
  }
  buildCounterBeginTransactionRequest--;
  return o;
}

checkBeginTransactionRequest(api.BeginTransactionRequest o) {
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    checkTransactionOptions(o.transactionOptions);
  }
  buildCounterBeginTransactionRequest--;
}

core.int buildCounterBeginTransactionResponse = 0;
buildBeginTransactionResponse() {
  var o = new api.BeginTransactionResponse();
  buildCounterBeginTransactionResponse++;
  if (buildCounterBeginTransactionResponse < 3) {
    o.transaction = "foo";
  }
  buildCounterBeginTransactionResponse--;
  return o;
}

checkBeginTransactionResponse(api.BeginTransactionResponse o) {
  buildCounterBeginTransactionResponse++;
  if (buildCounterBeginTransactionResponse < 3) {
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterBeginTransactionResponse--;
}

buildUnnamed4351() {
  var o = new core.List<api.Mutation>();
  o.add(buildMutation());
  o.add(buildMutation());
  return o;
}

checkUnnamed4351(core.List<api.Mutation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutation(o[0]);
  checkMutation(o[1]);
}

core.int buildCounterCommitRequest = 0;
buildCommitRequest() {
  var o = new api.CommitRequest();
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    o.mode = "foo";
    o.mutations = buildUnnamed4351();
    o.transaction = "foo";
  }
  buildCounterCommitRequest--;
  return o;
}

checkCommitRequest(api.CommitRequest o) {
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    unittest.expect(o.mode, unittest.equals('foo'));
    checkUnnamed4351(o.mutations);
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterCommitRequest--;
}

buildUnnamed4352() {
  var o = new core.List<api.MutationResult>();
  o.add(buildMutationResult());
  o.add(buildMutationResult());
  return o;
}

checkUnnamed4352(core.List<api.MutationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutationResult(o[0]);
  checkMutationResult(o[1]);
}

core.int buildCounterCommitResponse = 0;
buildCommitResponse() {
  var o = new api.CommitResponse();
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    o.indexUpdates = 42;
    o.mutationResults = buildUnnamed4352();
  }
  buildCounterCommitResponse--;
  return o;
}

checkCommitResponse(api.CommitResponse o) {
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    unittest.expect(o.indexUpdates, unittest.equals(42));
    checkUnnamed4352(o.mutationResults);
  }
  buildCounterCommitResponse--;
}

buildUnnamed4353() {
  var o = new core.List<api.Filter>();
  o.add(buildFilter());
  o.add(buildFilter());
  return o;
}

checkUnnamed4353(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterCompositeFilter = 0;
buildCompositeFilter() {
  var o = new api.CompositeFilter();
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    o.filters = buildUnnamed4353();
    o.op = "foo";
  }
  buildCounterCompositeFilter--;
  return o;
}

checkCompositeFilter(api.CompositeFilter o) {
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    checkUnnamed4353(o.filters);
    unittest.expect(o.op, unittest.equals('foo'));
  }
  buildCounterCompositeFilter--;
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

buildUnnamed4354() {
  var o = new core.Map<core.String, api.Value>();
  o["x"] = buildValue();
  o["y"] = buildValue();
  return o;
}

checkUnnamed4354(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o["x"]);
  checkValue(o["y"]);
}

core.int buildCounterEntity = 0;
buildEntity() {
  var o = new api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.key = buildKey();
    o.properties = buildUnnamed4354();
  }
  buildCounterEntity--;
  return o;
}

checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    checkKey(o.key);
    checkUnnamed4354(o.properties);
  }
  buildCounterEntity--;
}

core.int buildCounterEntityResult = 0;
buildEntityResult() {
  var o = new api.EntityResult();
  buildCounterEntityResult++;
  if (buildCounterEntityResult < 3) {
    o.cursor = "foo";
    o.entity = buildEntity();
    o.version = "foo";
  }
  buildCounterEntityResult--;
  return o;
}

checkEntityResult(api.EntityResult o) {
  buildCounterEntityResult++;
  if (buildCounterEntityResult < 3) {
    unittest.expect(o.cursor, unittest.equals('foo'));
    checkEntity(o.entity);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterEntityResult--;
}

core.int buildCounterFilter = 0;
buildFilter() {
  var o = new api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.compositeFilter = buildCompositeFilter();
    o.propertyFilter = buildPropertyFilter();
  }
  buildCounterFilter--;
  return o;
}

checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkCompositeFilter(o.compositeFilter);
    checkPropertyFilter(o.propertyFilter);
  }
  buildCounterFilter--;
}

buildUnnamed4355() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4355(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1CommonMetadata = 0;
buildGoogleDatastoreAdminV1CommonMetadata() {
  var o = new api.GoogleDatastoreAdminV1CommonMetadata();
  buildCounterGoogleDatastoreAdminV1CommonMetadata++;
  if (buildCounterGoogleDatastoreAdminV1CommonMetadata < 3) {
    o.endTime = "foo";
    o.labels = buildUnnamed4355();
    o.operationType = "foo";
    o.startTime = "foo";
    o.state = "foo";
  }
  buildCounterGoogleDatastoreAdminV1CommonMetadata--;
  return o;
}

checkGoogleDatastoreAdminV1CommonMetadata(
    api.GoogleDatastoreAdminV1CommonMetadata o) {
  buildCounterGoogleDatastoreAdminV1CommonMetadata++;
  if (buildCounterGoogleDatastoreAdminV1CommonMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed4355(o.labels);
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1CommonMetadata--;
}

buildUnnamed4356() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4356(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4357() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4357(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1EntityFilter = 0;
buildGoogleDatastoreAdminV1EntityFilter() {
  var o = new api.GoogleDatastoreAdminV1EntityFilter();
  buildCounterGoogleDatastoreAdminV1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1EntityFilter < 3) {
    o.kinds = buildUnnamed4356();
    o.namespaceIds = buildUnnamed4357();
  }
  buildCounterGoogleDatastoreAdminV1EntityFilter--;
  return o;
}

checkGoogleDatastoreAdminV1EntityFilter(
    api.GoogleDatastoreAdminV1EntityFilter o) {
  buildCounterGoogleDatastoreAdminV1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1EntityFilter < 3) {
    checkUnnamed4356(o.kinds);
    checkUnnamed4357(o.namespaceIds);
  }
  buildCounterGoogleDatastoreAdminV1EntityFilter--;
}

core.int buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata = 0;
buildGoogleDatastoreAdminV1ExportEntitiesMetadata() {
  var o = new api.GoogleDatastoreAdminV1ExportEntitiesMetadata();
  buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata < 3) {
    o.common = buildGoogleDatastoreAdminV1CommonMetadata();
    o.entityFilter = buildGoogleDatastoreAdminV1EntityFilter();
    o.outputUrlPrefix = "foo";
    o.progressBytes = buildGoogleDatastoreAdminV1Progress();
    o.progressEntities = buildGoogleDatastoreAdminV1Progress();
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata--;
  return o;
}

checkGoogleDatastoreAdminV1ExportEntitiesMetadata(
    api.GoogleDatastoreAdminV1ExportEntitiesMetadata o) {
  buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata < 3) {
    checkGoogleDatastoreAdminV1CommonMetadata(o.common);
    checkGoogleDatastoreAdminV1EntityFilter(o.entityFilter);
    unittest.expect(o.outputUrlPrefix, unittest.equals('foo'));
    checkGoogleDatastoreAdminV1Progress(o.progressBytes);
    checkGoogleDatastoreAdminV1Progress(o.progressEntities);
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata--;
}

buildUnnamed4358() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4358(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest = 0;
buildGoogleDatastoreAdminV1ExportEntitiesRequest() {
  var o = new api.GoogleDatastoreAdminV1ExportEntitiesRequest();
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest < 3) {
    o.entityFilter = buildGoogleDatastoreAdminV1EntityFilter();
    o.labels = buildUnnamed4358();
    o.outputUrlPrefix = "foo";
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest--;
  return o;
}

checkGoogleDatastoreAdminV1ExportEntitiesRequest(
    api.GoogleDatastoreAdminV1ExportEntitiesRequest o) {
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest < 3) {
    checkGoogleDatastoreAdminV1EntityFilter(o.entityFilter);
    checkUnnamed4358(o.labels);
    unittest.expect(o.outputUrlPrefix, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest--;
}

core.int buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse = 0;
buildGoogleDatastoreAdminV1ExportEntitiesResponse() {
  var o = new api.GoogleDatastoreAdminV1ExportEntitiesResponse();
  buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse < 3) {
    o.outputUrl = "foo";
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse--;
  return o;
}

checkGoogleDatastoreAdminV1ExportEntitiesResponse(
    api.GoogleDatastoreAdminV1ExportEntitiesResponse o) {
  buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse < 3) {
    unittest.expect(o.outputUrl, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse--;
}

core.int buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata = 0;
buildGoogleDatastoreAdminV1ImportEntitiesMetadata() {
  var o = new api.GoogleDatastoreAdminV1ImportEntitiesMetadata();
  buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata < 3) {
    o.common = buildGoogleDatastoreAdminV1CommonMetadata();
    o.entityFilter = buildGoogleDatastoreAdminV1EntityFilter();
    o.inputUrl = "foo";
    o.progressBytes = buildGoogleDatastoreAdminV1Progress();
    o.progressEntities = buildGoogleDatastoreAdminV1Progress();
  }
  buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata--;
  return o;
}

checkGoogleDatastoreAdminV1ImportEntitiesMetadata(
    api.GoogleDatastoreAdminV1ImportEntitiesMetadata o) {
  buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata < 3) {
    checkGoogleDatastoreAdminV1CommonMetadata(o.common);
    checkGoogleDatastoreAdminV1EntityFilter(o.entityFilter);
    unittest.expect(o.inputUrl, unittest.equals('foo'));
    checkGoogleDatastoreAdminV1Progress(o.progressBytes);
    checkGoogleDatastoreAdminV1Progress(o.progressEntities);
  }
  buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata--;
}

buildUnnamed4359() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4359(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest = 0;
buildGoogleDatastoreAdminV1ImportEntitiesRequest() {
  var o = new api.GoogleDatastoreAdminV1ImportEntitiesRequest();
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest < 3) {
    o.entityFilter = buildGoogleDatastoreAdminV1EntityFilter();
    o.inputUrl = "foo";
    o.labels = buildUnnamed4359();
  }
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest--;
  return o;
}

checkGoogleDatastoreAdminV1ImportEntitiesRequest(
    api.GoogleDatastoreAdminV1ImportEntitiesRequest o) {
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest < 3) {
    checkGoogleDatastoreAdminV1EntityFilter(o.entityFilter);
    unittest.expect(o.inputUrl, unittest.equals('foo'));
    checkUnnamed4359(o.labels);
  }
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest--;
}

buildUnnamed4360() {
  var o = new core.List<api.GoogleDatastoreAdminV1IndexedProperty>();
  o.add(buildGoogleDatastoreAdminV1IndexedProperty());
  o.add(buildGoogleDatastoreAdminV1IndexedProperty());
  return o;
}

checkUnnamed4360(core.List<api.GoogleDatastoreAdminV1IndexedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDatastoreAdminV1IndexedProperty(o[0]);
  checkGoogleDatastoreAdminV1IndexedProperty(o[1]);
}

core.int buildCounterGoogleDatastoreAdminV1Index = 0;
buildGoogleDatastoreAdminV1Index() {
  var o = new api.GoogleDatastoreAdminV1Index();
  buildCounterGoogleDatastoreAdminV1Index++;
  if (buildCounterGoogleDatastoreAdminV1Index < 3) {
    o.ancestor = "foo";
    o.indexId = "foo";
    o.kind = "foo";
    o.projectId = "foo";
    o.properties = buildUnnamed4360();
    o.state = "foo";
  }
  buildCounterGoogleDatastoreAdminV1Index--;
  return o;
}

checkGoogleDatastoreAdminV1Index(api.GoogleDatastoreAdminV1Index o) {
  buildCounterGoogleDatastoreAdminV1Index++;
  if (buildCounterGoogleDatastoreAdminV1Index < 3) {
    unittest.expect(o.ancestor, unittest.equals('foo'));
    unittest.expect(o.indexId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed4360(o.properties);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1Index--;
}

core.int buildCounterGoogleDatastoreAdminV1IndexOperationMetadata = 0;
buildGoogleDatastoreAdminV1IndexOperationMetadata() {
  var o = new api.GoogleDatastoreAdminV1IndexOperationMetadata();
  buildCounterGoogleDatastoreAdminV1IndexOperationMetadata++;
  if (buildCounterGoogleDatastoreAdminV1IndexOperationMetadata < 3) {
    o.common = buildGoogleDatastoreAdminV1CommonMetadata();
    o.indexId = "foo";
    o.progressEntities = buildGoogleDatastoreAdminV1Progress();
  }
  buildCounterGoogleDatastoreAdminV1IndexOperationMetadata--;
  return o;
}

checkGoogleDatastoreAdminV1IndexOperationMetadata(
    api.GoogleDatastoreAdminV1IndexOperationMetadata o) {
  buildCounterGoogleDatastoreAdminV1IndexOperationMetadata++;
  if (buildCounterGoogleDatastoreAdminV1IndexOperationMetadata < 3) {
    checkGoogleDatastoreAdminV1CommonMetadata(o.common);
    unittest.expect(o.indexId, unittest.equals('foo'));
    checkGoogleDatastoreAdminV1Progress(o.progressEntities);
  }
  buildCounterGoogleDatastoreAdminV1IndexOperationMetadata--;
}

core.int buildCounterGoogleDatastoreAdminV1IndexedProperty = 0;
buildGoogleDatastoreAdminV1IndexedProperty() {
  var o = new api.GoogleDatastoreAdminV1IndexedProperty();
  buildCounterGoogleDatastoreAdminV1IndexedProperty++;
  if (buildCounterGoogleDatastoreAdminV1IndexedProperty < 3) {
    o.direction = "foo";
    o.name = "foo";
  }
  buildCounterGoogleDatastoreAdminV1IndexedProperty--;
  return o;
}

checkGoogleDatastoreAdminV1IndexedProperty(
    api.GoogleDatastoreAdminV1IndexedProperty o) {
  buildCounterGoogleDatastoreAdminV1IndexedProperty++;
  if (buildCounterGoogleDatastoreAdminV1IndexedProperty < 3) {
    unittest.expect(o.direction, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1IndexedProperty--;
}

buildUnnamed4361() {
  var o = new core.List<api.GoogleDatastoreAdminV1Index>();
  o.add(buildGoogleDatastoreAdminV1Index());
  o.add(buildGoogleDatastoreAdminV1Index());
  return o;
}

checkUnnamed4361(core.List<api.GoogleDatastoreAdminV1Index> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDatastoreAdminV1Index(o[0]);
  checkGoogleDatastoreAdminV1Index(o[1]);
}

core.int buildCounterGoogleDatastoreAdminV1ListIndexesResponse = 0;
buildGoogleDatastoreAdminV1ListIndexesResponse() {
  var o = new api.GoogleDatastoreAdminV1ListIndexesResponse();
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleDatastoreAdminV1ListIndexesResponse < 3) {
    o.indexes = buildUnnamed4361();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse--;
  return o;
}

checkGoogleDatastoreAdminV1ListIndexesResponse(
    api.GoogleDatastoreAdminV1ListIndexesResponse o) {
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleDatastoreAdminV1ListIndexesResponse < 3) {
    checkUnnamed4361(o.indexes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse--;
}

core.int buildCounterGoogleDatastoreAdminV1Progress = 0;
buildGoogleDatastoreAdminV1Progress() {
  var o = new api.GoogleDatastoreAdminV1Progress();
  buildCounterGoogleDatastoreAdminV1Progress++;
  if (buildCounterGoogleDatastoreAdminV1Progress < 3) {
    o.workCompleted = "foo";
    o.workEstimated = "foo";
  }
  buildCounterGoogleDatastoreAdminV1Progress--;
  return o;
}

checkGoogleDatastoreAdminV1Progress(api.GoogleDatastoreAdminV1Progress o) {
  buildCounterGoogleDatastoreAdminV1Progress++;
  if (buildCounterGoogleDatastoreAdminV1Progress < 3) {
    unittest.expect(o.workCompleted, unittest.equals('foo'));
    unittest.expect(o.workEstimated, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1Progress--;
}

buildUnnamed4362() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4362(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1beta1CommonMetadata = 0;
buildGoogleDatastoreAdminV1beta1CommonMetadata() {
  var o = new api.GoogleDatastoreAdminV1beta1CommonMetadata();
  buildCounterGoogleDatastoreAdminV1beta1CommonMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1CommonMetadata < 3) {
    o.endTime = "foo";
    o.labels = buildUnnamed4362();
    o.operationType = "foo";
    o.startTime = "foo";
    o.state = "foo";
  }
  buildCounterGoogleDatastoreAdminV1beta1CommonMetadata--;
  return o;
}

checkGoogleDatastoreAdminV1beta1CommonMetadata(
    api.GoogleDatastoreAdminV1beta1CommonMetadata o) {
  buildCounterGoogleDatastoreAdminV1beta1CommonMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1CommonMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed4362(o.labels);
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1beta1CommonMetadata--;
}

buildUnnamed4363() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4363(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4364() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4364(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1beta1EntityFilter = 0;
buildGoogleDatastoreAdminV1beta1EntityFilter() {
  var o = new api.GoogleDatastoreAdminV1beta1EntityFilter();
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1beta1EntityFilter < 3) {
    o.kinds = buildUnnamed4363();
    o.namespaceIds = buildUnnamed4364();
  }
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter--;
  return o;
}

checkGoogleDatastoreAdminV1beta1EntityFilter(
    api.GoogleDatastoreAdminV1beta1EntityFilter o) {
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1beta1EntityFilter < 3) {
    checkUnnamed4363(o.kinds);
    checkUnnamed4364(o.namespaceIds);
  }
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter--;
}

core.int buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata = 0;
buildGoogleDatastoreAdminV1beta1ExportEntitiesMetadata() {
  var o = new api.GoogleDatastoreAdminV1beta1ExportEntitiesMetadata();
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata < 3) {
    o.common = buildGoogleDatastoreAdminV1beta1CommonMetadata();
    o.entityFilter = buildGoogleDatastoreAdminV1beta1EntityFilter();
    o.outputUrlPrefix = "foo";
    o.progressBytes = buildGoogleDatastoreAdminV1beta1Progress();
    o.progressEntities = buildGoogleDatastoreAdminV1beta1Progress();
  }
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata--;
  return o;
}

checkGoogleDatastoreAdminV1beta1ExportEntitiesMetadata(
    api.GoogleDatastoreAdminV1beta1ExportEntitiesMetadata o) {
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata < 3) {
    checkGoogleDatastoreAdminV1beta1CommonMetadata(o.common);
    checkGoogleDatastoreAdminV1beta1EntityFilter(o.entityFilter);
    unittest.expect(o.outputUrlPrefix, unittest.equals('foo'));
    checkGoogleDatastoreAdminV1beta1Progress(o.progressBytes);
    checkGoogleDatastoreAdminV1beta1Progress(o.progressEntities);
  }
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata--;
}

core.int buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse = 0;
buildGoogleDatastoreAdminV1beta1ExportEntitiesResponse() {
  var o = new api.GoogleDatastoreAdminV1beta1ExportEntitiesResponse();
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse++;
  if (buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse < 3) {
    o.outputUrl = "foo";
  }
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse--;
  return o;
}

checkGoogleDatastoreAdminV1beta1ExportEntitiesResponse(
    api.GoogleDatastoreAdminV1beta1ExportEntitiesResponse o) {
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse++;
  if (buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse < 3) {
    unittest.expect(o.outputUrl, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse--;
}

core.int buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata = 0;
buildGoogleDatastoreAdminV1beta1ImportEntitiesMetadata() {
  var o = new api.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata();
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata < 3) {
    o.common = buildGoogleDatastoreAdminV1beta1CommonMetadata();
    o.entityFilter = buildGoogleDatastoreAdminV1beta1EntityFilter();
    o.inputUrl = "foo";
    o.progressBytes = buildGoogleDatastoreAdminV1beta1Progress();
    o.progressEntities = buildGoogleDatastoreAdminV1beta1Progress();
  }
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata--;
  return o;
}

checkGoogleDatastoreAdminV1beta1ImportEntitiesMetadata(
    api.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata o) {
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata < 3) {
    checkGoogleDatastoreAdminV1beta1CommonMetadata(o.common);
    checkGoogleDatastoreAdminV1beta1EntityFilter(o.entityFilter);
    unittest.expect(o.inputUrl, unittest.equals('foo'));
    checkGoogleDatastoreAdminV1beta1Progress(o.progressBytes);
    checkGoogleDatastoreAdminV1beta1Progress(o.progressEntities);
  }
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata--;
}

core.int buildCounterGoogleDatastoreAdminV1beta1Progress = 0;
buildGoogleDatastoreAdminV1beta1Progress() {
  var o = new api.GoogleDatastoreAdminV1beta1Progress();
  buildCounterGoogleDatastoreAdminV1beta1Progress++;
  if (buildCounterGoogleDatastoreAdminV1beta1Progress < 3) {
    o.workCompleted = "foo";
    o.workEstimated = "foo";
  }
  buildCounterGoogleDatastoreAdminV1beta1Progress--;
  return o;
}

checkGoogleDatastoreAdminV1beta1Progress(
    api.GoogleDatastoreAdminV1beta1Progress o) {
  buildCounterGoogleDatastoreAdminV1beta1Progress++;
  if (buildCounterGoogleDatastoreAdminV1beta1Progress < 3) {
    unittest.expect(o.workCompleted, unittest.equals('foo'));
    unittest.expect(o.workEstimated, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1beta1Progress--;
}

buildUnnamed4365() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed4365(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
buildGoogleLongrunningListOperationsResponse() {
  var o = new api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed4365();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4365(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed4366() {
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

checkUnnamed4366(core.Map<core.String, core.Object> o) {
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

buildUnnamed4367() {
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

checkUnnamed4367(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed4366();
    o.name = "foo";
    o.response = buildUnnamed4367();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed4366(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4367(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

buildUnnamed4368() {
  var o = new core.Map<core.String, api.GqlQueryParameter>();
  o["x"] = buildGqlQueryParameter();
  o["y"] = buildGqlQueryParameter();
  return o;
}

checkUnnamed4368(core.Map<core.String, api.GqlQueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGqlQueryParameter(o["x"]);
  checkGqlQueryParameter(o["y"]);
}

buildUnnamed4369() {
  var o = new core.List<api.GqlQueryParameter>();
  o.add(buildGqlQueryParameter());
  o.add(buildGqlQueryParameter());
  return o;
}

checkUnnamed4369(core.List<api.GqlQueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGqlQueryParameter(o[0]);
  checkGqlQueryParameter(o[1]);
}

core.int buildCounterGqlQuery = 0;
buildGqlQuery() {
  var o = new api.GqlQuery();
  buildCounterGqlQuery++;
  if (buildCounterGqlQuery < 3) {
    o.allowLiterals = true;
    o.namedBindings = buildUnnamed4368();
    o.positionalBindings = buildUnnamed4369();
    o.queryString = "foo";
  }
  buildCounterGqlQuery--;
  return o;
}

checkGqlQuery(api.GqlQuery o) {
  buildCounterGqlQuery++;
  if (buildCounterGqlQuery < 3) {
    unittest.expect(o.allowLiterals, unittest.isTrue);
    checkUnnamed4368(o.namedBindings);
    checkUnnamed4369(o.positionalBindings);
    unittest.expect(o.queryString, unittest.equals('foo'));
  }
  buildCounterGqlQuery--;
}

core.int buildCounterGqlQueryParameter = 0;
buildGqlQueryParameter() {
  var o = new api.GqlQueryParameter();
  buildCounterGqlQueryParameter++;
  if (buildCounterGqlQueryParameter < 3) {
    o.cursor = "foo";
    o.value = buildValue();
  }
  buildCounterGqlQueryParameter--;
  return o;
}

checkGqlQueryParameter(api.GqlQueryParameter o) {
  buildCounterGqlQueryParameter++;
  if (buildCounterGqlQueryParameter < 3) {
    unittest.expect(o.cursor, unittest.equals('foo'));
    checkValue(o.value);
  }
  buildCounterGqlQueryParameter--;
}

buildUnnamed4370() {
  var o = new core.List<api.PathElement>();
  o.add(buildPathElement());
  o.add(buildPathElement());
  return o;
}

checkUnnamed4370(core.List<api.PathElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathElement(o[0]);
  checkPathElement(o[1]);
}

core.int buildCounterKey = 0;
buildKey() {
  var o = new api.Key();
  buildCounterKey++;
  if (buildCounterKey < 3) {
    o.partitionId = buildPartitionId();
    o.path = buildUnnamed4370();
  }
  buildCounterKey--;
  return o;
}

checkKey(api.Key o) {
  buildCounterKey++;
  if (buildCounterKey < 3) {
    checkPartitionId(o.partitionId);
    checkUnnamed4370(o.path);
  }
  buildCounterKey--;
}

core.int buildCounterKindExpression = 0;
buildKindExpression() {
  var o = new api.KindExpression();
  buildCounterKindExpression++;
  if (buildCounterKindExpression < 3) {
    o.name = "foo";
  }
  buildCounterKindExpression--;
  return o;
}

checkKindExpression(api.KindExpression o) {
  buildCounterKindExpression++;
  if (buildCounterKindExpression < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterKindExpression--;
}

core.int buildCounterLatLng = 0;
buildLatLng() {
  var o = new api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

buildUnnamed4371() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed4371(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterLookupRequest = 0;
buildLookupRequest() {
  var o = new api.LookupRequest();
  buildCounterLookupRequest++;
  if (buildCounterLookupRequest < 3) {
    o.keys = buildUnnamed4371();
    o.readOptions = buildReadOptions();
  }
  buildCounterLookupRequest--;
  return o;
}

checkLookupRequest(api.LookupRequest o) {
  buildCounterLookupRequest++;
  if (buildCounterLookupRequest < 3) {
    checkUnnamed4371(o.keys);
    checkReadOptions(o.readOptions);
  }
  buildCounterLookupRequest--;
}

buildUnnamed4372() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed4372(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

buildUnnamed4373() {
  var o = new core.List<api.EntityResult>();
  o.add(buildEntityResult());
  o.add(buildEntityResult());
  return o;
}

checkUnnamed4373(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

buildUnnamed4374() {
  var o = new core.List<api.EntityResult>();
  o.add(buildEntityResult());
  o.add(buildEntityResult());
  return o;
}

checkUnnamed4374(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

core.int buildCounterLookupResponse = 0;
buildLookupResponse() {
  var o = new api.LookupResponse();
  buildCounterLookupResponse++;
  if (buildCounterLookupResponse < 3) {
    o.deferred = buildUnnamed4372();
    o.found = buildUnnamed4373();
    o.missing = buildUnnamed4374();
  }
  buildCounterLookupResponse--;
  return o;
}

checkLookupResponse(api.LookupResponse o) {
  buildCounterLookupResponse++;
  if (buildCounterLookupResponse < 3) {
    checkUnnamed4372(o.deferred);
    checkUnnamed4373(o.found);
    checkUnnamed4374(o.missing);
  }
  buildCounterLookupResponse--;
}

core.int buildCounterMutation = 0;
buildMutation() {
  var o = new api.Mutation();
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    o.baseVersion = "foo";
    o.delete = buildKey();
    o.insert = buildEntity();
    o.update = buildEntity();
    o.upsert = buildEntity();
  }
  buildCounterMutation--;
  return o;
}

checkMutation(api.Mutation o) {
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    unittest.expect(o.baseVersion, unittest.equals('foo'));
    checkKey(o.delete);
    checkEntity(o.insert);
    checkEntity(o.update);
    checkEntity(o.upsert);
  }
  buildCounterMutation--;
}

core.int buildCounterMutationResult = 0;
buildMutationResult() {
  var o = new api.MutationResult();
  buildCounterMutationResult++;
  if (buildCounterMutationResult < 3) {
    o.conflictDetected = true;
    o.key = buildKey();
    o.version = "foo";
  }
  buildCounterMutationResult--;
  return o;
}

checkMutationResult(api.MutationResult o) {
  buildCounterMutationResult++;
  if (buildCounterMutationResult < 3) {
    unittest.expect(o.conflictDetected, unittest.isTrue);
    checkKey(o.key);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterMutationResult--;
}

core.int buildCounterPartitionId = 0;
buildPartitionId() {
  var o = new api.PartitionId();
  buildCounterPartitionId++;
  if (buildCounterPartitionId < 3) {
    o.namespaceId = "foo";
    o.projectId = "foo";
  }
  buildCounterPartitionId--;
  return o;
}

checkPartitionId(api.PartitionId o) {
  buildCounterPartitionId++;
  if (buildCounterPartitionId < 3) {
    unittest.expect(o.namespaceId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterPartitionId--;
}

core.int buildCounterPathElement = 0;
buildPathElement() {
  var o = new api.PathElement();
  buildCounterPathElement++;
  if (buildCounterPathElement < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterPathElement--;
  return o;
}

checkPathElement(api.PathElement o) {
  buildCounterPathElement++;
  if (buildCounterPathElement < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPathElement--;
}

core.int buildCounterProjection = 0;
buildProjection() {
  var o = new api.Projection();
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    o.property = buildPropertyReference();
  }
  buildCounterProjection--;
  return o;
}

checkProjection(api.Projection o) {
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    checkPropertyReference(o.property);
  }
  buildCounterProjection--;
}

core.int buildCounterPropertyFilter = 0;
buildPropertyFilter() {
  var o = new api.PropertyFilter();
  buildCounterPropertyFilter++;
  if (buildCounterPropertyFilter < 3) {
    o.op = "foo";
    o.property = buildPropertyReference();
    o.value = buildValue();
  }
  buildCounterPropertyFilter--;
  return o;
}

checkPropertyFilter(api.PropertyFilter o) {
  buildCounterPropertyFilter++;
  if (buildCounterPropertyFilter < 3) {
    unittest.expect(o.op, unittest.equals('foo'));
    checkPropertyReference(o.property);
    checkValue(o.value);
  }
  buildCounterPropertyFilter--;
}

core.int buildCounterPropertyOrder = 0;
buildPropertyOrder() {
  var o = new api.PropertyOrder();
  buildCounterPropertyOrder++;
  if (buildCounterPropertyOrder < 3) {
    o.direction = "foo";
    o.property = buildPropertyReference();
  }
  buildCounterPropertyOrder--;
  return o;
}

checkPropertyOrder(api.PropertyOrder o) {
  buildCounterPropertyOrder++;
  if (buildCounterPropertyOrder < 3) {
    unittest.expect(o.direction, unittest.equals('foo'));
    checkPropertyReference(o.property);
  }
  buildCounterPropertyOrder--;
}

core.int buildCounterPropertyReference = 0;
buildPropertyReference() {
  var o = new api.PropertyReference();
  buildCounterPropertyReference++;
  if (buildCounterPropertyReference < 3) {
    o.name = "foo";
  }
  buildCounterPropertyReference--;
  return o;
}

checkPropertyReference(api.PropertyReference o) {
  buildCounterPropertyReference++;
  if (buildCounterPropertyReference < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPropertyReference--;
}

buildUnnamed4375() {
  var o = new core.List<api.PropertyReference>();
  o.add(buildPropertyReference());
  o.add(buildPropertyReference());
  return o;
}

checkUnnamed4375(core.List<api.PropertyReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyReference(o[0]);
  checkPropertyReference(o[1]);
}

buildUnnamed4376() {
  var o = new core.List<api.KindExpression>();
  o.add(buildKindExpression());
  o.add(buildKindExpression());
  return o;
}

checkUnnamed4376(core.List<api.KindExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKindExpression(o[0]);
  checkKindExpression(o[1]);
}

buildUnnamed4377() {
  var o = new core.List<api.PropertyOrder>();
  o.add(buildPropertyOrder());
  o.add(buildPropertyOrder());
  return o;
}

checkUnnamed4377(core.List<api.PropertyOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyOrder(o[0]);
  checkPropertyOrder(o[1]);
}

buildUnnamed4378() {
  var o = new core.List<api.Projection>();
  o.add(buildProjection());
  o.add(buildProjection());
  return o;
}

checkUnnamed4378(core.List<api.Projection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjection(o[0]);
  checkProjection(o[1]);
}

core.int buildCounterQuery = 0;
buildQuery() {
  var o = new api.Query();
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    o.distinctOn = buildUnnamed4375();
    o.endCursor = "foo";
    o.filter = buildFilter();
    o.kind = buildUnnamed4376();
    o.limit = 42;
    o.offset = 42;
    o.order = buildUnnamed4377();
    o.projection = buildUnnamed4378();
    o.startCursor = "foo";
  }
  buildCounterQuery--;
  return o;
}

checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    checkUnnamed4375(o.distinctOn);
    unittest.expect(o.endCursor, unittest.equals('foo'));
    checkFilter(o.filter);
    checkUnnamed4376(o.kind);
    unittest.expect(o.limit, unittest.equals(42));
    unittest.expect(o.offset, unittest.equals(42));
    checkUnnamed4377(o.order);
    checkUnnamed4378(o.projection);
    unittest.expect(o.startCursor, unittest.equals('foo'));
  }
  buildCounterQuery--;
}

buildUnnamed4379() {
  var o = new core.List<api.EntityResult>();
  o.add(buildEntityResult());
  o.add(buildEntityResult());
  return o;
}

checkUnnamed4379(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

core.int buildCounterQueryResultBatch = 0;
buildQueryResultBatch() {
  var o = new api.QueryResultBatch();
  buildCounterQueryResultBatch++;
  if (buildCounterQueryResultBatch < 3) {
    o.endCursor = "foo";
    o.entityResultType = "foo";
    o.entityResults = buildUnnamed4379();
    o.moreResults = "foo";
    o.skippedCursor = "foo";
    o.skippedResults = 42;
    o.snapshotVersion = "foo";
  }
  buildCounterQueryResultBatch--;
  return o;
}

checkQueryResultBatch(api.QueryResultBatch o) {
  buildCounterQueryResultBatch++;
  if (buildCounterQueryResultBatch < 3) {
    unittest.expect(o.endCursor, unittest.equals('foo'));
    unittest.expect(o.entityResultType, unittest.equals('foo'));
    checkUnnamed4379(o.entityResults);
    unittest.expect(o.moreResults, unittest.equals('foo'));
    unittest.expect(o.skippedCursor, unittest.equals('foo'));
    unittest.expect(o.skippedResults, unittest.equals(42));
    unittest.expect(o.snapshotVersion, unittest.equals('foo'));
  }
  buildCounterQueryResultBatch--;
}

core.int buildCounterReadOnly = 0;
buildReadOnly() {
  var o = new api.ReadOnly();
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {}
  buildCounterReadOnly--;
  return o;
}

checkReadOnly(api.ReadOnly o) {
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {}
  buildCounterReadOnly--;
}

core.int buildCounterReadOptions = 0;
buildReadOptions() {
  var o = new api.ReadOptions();
  buildCounterReadOptions++;
  if (buildCounterReadOptions < 3) {
    o.readConsistency = "foo";
    o.transaction = "foo";
  }
  buildCounterReadOptions--;
  return o;
}

checkReadOptions(api.ReadOptions o) {
  buildCounterReadOptions++;
  if (buildCounterReadOptions < 3) {
    unittest.expect(o.readConsistency, unittest.equals('foo'));
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterReadOptions--;
}

core.int buildCounterReadWrite = 0;
buildReadWrite() {
  var o = new api.ReadWrite();
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    o.previousTransaction = "foo";
  }
  buildCounterReadWrite--;
  return o;
}

checkReadWrite(api.ReadWrite o) {
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    unittest.expect(o.previousTransaction, unittest.equals('foo'));
  }
  buildCounterReadWrite--;
}

buildUnnamed4380() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed4380(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterReserveIdsRequest = 0;
buildReserveIdsRequest() {
  var o = new api.ReserveIdsRequest();
  buildCounterReserveIdsRequest++;
  if (buildCounterReserveIdsRequest < 3) {
    o.databaseId = "foo";
    o.keys = buildUnnamed4380();
  }
  buildCounterReserveIdsRequest--;
  return o;
}

checkReserveIdsRequest(api.ReserveIdsRequest o) {
  buildCounterReserveIdsRequest++;
  if (buildCounterReserveIdsRequest < 3) {
    unittest.expect(o.databaseId, unittest.equals('foo'));
    checkUnnamed4380(o.keys);
  }
  buildCounterReserveIdsRequest--;
}

core.int buildCounterReserveIdsResponse = 0;
buildReserveIdsResponse() {
  var o = new api.ReserveIdsResponse();
  buildCounterReserveIdsResponse++;
  if (buildCounterReserveIdsResponse < 3) {}
  buildCounterReserveIdsResponse--;
  return o;
}

checkReserveIdsResponse(api.ReserveIdsResponse o) {
  buildCounterReserveIdsResponse++;
  if (buildCounterReserveIdsResponse < 3) {}
  buildCounterReserveIdsResponse--;
}

core.int buildCounterRollbackRequest = 0;
buildRollbackRequest() {
  var o = new api.RollbackRequest();
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    o.transaction = "foo";
  }
  buildCounterRollbackRequest--;
  return o;
}

checkRollbackRequest(api.RollbackRequest o) {
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterRollbackRequest--;
}

core.int buildCounterRollbackResponse = 0;
buildRollbackResponse() {
  var o = new api.RollbackResponse();
  buildCounterRollbackResponse++;
  if (buildCounterRollbackResponse < 3) {}
  buildCounterRollbackResponse--;
  return o;
}

checkRollbackResponse(api.RollbackResponse o) {
  buildCounterRollbackResponse++;
  if (buildCounterRollbackResponse < 3) {}
  buildCounterRollbackResponse--;
}

core.int buildCounterRunQueryRequest = 0;
buildRunQueryRequest() {
  var o = new api.RunQueryRequest();
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    o.gqlQuery = buildGqlQuery();
    o.partitionId = buildPartitionId();
    o.query = buildQuery();
    o.readOptions = buildReadOptions();
  }
  buildCounterRunQueryRequest--;
  return o;
}

checkRunQueryRequest(api.RunQueryRequest o) {
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    checkGqlQuery(o.gqlQuery);
    checkPartitionId(o.partitionId);
    checkQuery(o.query);
    checkReadOptions(o.readOptions);
  }
  buildCounterRunQueryRequest--;
}

core.int buildCounterRunQueryResponse = 0;
buildRunQueryResponse() {
  var o = new api.RunQueryResponse();
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    o.batch = buildQueryResultBatch();
    o.query = buildQuery();
  }
  buildCounterRunQueryResponse--;
  return o;
}

checkRunQueryResponse(api.RunQueryResponse o) {
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    checkQueryResultBatch(o.batch);
    checkQuery(o.query);
  }
  buildCounterRunQueryResponse--;
}

buildUnnamed4381() {
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

checkUnnamed4381(core.Map<core.String, core.Object> o) {
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

buildUnnamed4382() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4381());
  o.add(buildUnnamed4381());
  return o;
}

checkUnnamed4382(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4381(o[0]);
  checkUnnamed4381(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4382();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4382(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTransactionOptions = 0;
buildTransactionOptions() {
  var o = new api.TransactionOptions();
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    o.readOnly = buildReadOnly();
    o.readWrite = buildReadWrite();
  }
  buildCounterTransactionOptions--;
  return o;
}

checkTransactionOptions(api.TransactionOptions o) {
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    checkReadOnly(o.readOnly);
    checkReadWrite(o.readWrite);
  }
  buildCounterTransactionOptions--;
}

core.int buildCounterValue = 0;
buildValue() {
  var o = new api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.arrayValue = buildArrayValue();
    o.blobValue = "foo";
    o.booleanValue = true;
    o.doubleValue = 42.0;
    o.entityValue = buildEntity();
    o.excludeFromIndexes = true;
    o.geoPointValue = buildLatLng();
    o.integerValue = "foo";
    o.keyValue = buildKey();
    o.meaning = 42;
    o.nullValue = "foo";
    o.stringValue = "foo";
    o.timestampValue = "foo";
  }
  buildCounterValue--;
  return o;
}

checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    checkArrayValue(o.arrayValue);
    unittest.expect(o.blobValue, unittest.equals('foo'));
    unittest.expect(o.booleanValue, unittest.isTrue);
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    checkEntity(o.entityValue);
    unittest.expect(o.excludeFromIndexes, unittest.isTrue);
    checkLatLng(o.geoPointValue);
    unittest.expect(o.integerValue, unittest.equals('foo'));
    checkKey(o.keyValue);
    unittest.expect(o.meaning, unittest.equals(42));
    unittest.expect(o.nullValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
    unittest.expect(o.timestampValue, unittest.equals('foo'));
  }
  buildCounterValue--;
}

main() {
  unittest.group("obj-schema-AllocateIdsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAllocateIdsRequest();
      var od = new api.AllocateIdsRequest.fromJson(o.toJson());
      checkAllocateIdsRequest(od);
    });
  });

  unittest.group("obj-schema-AllocateIdsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAllocateIdsResponse();
      var od = new api.AllocateIdsResponse.fromJson(o.toJson());
      checkAllocateIdsResponse(od);
    });
  });

  unittest.group("obj-schema-ArrayValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildArrayValue();
      var od = new api.ArrayValue.fromJson(o.toJson());
      checkArrayValue(od);
    });
  });

  unittest.group("obj-schema-BeginTransactionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBeginTransactionRequest();
      var od = new api.BeginTransactionRequest.fromJson(o.toJson());
      checkBeginTransactionRequest(od);
    });
  });

  unittest.group("obj-schema-BeginTransactionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBeginTransactionResponse();
      var od = new api.BeginTransactionResponse.fromJson(o.toJson());
      checkBeginTransactionResponse(od);
    });
  });

  unittest.group("obj-schema-CommitRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitRequest();
      var od = new api.CommitRequest.fromJson(o.toJson());
      checkCommitRequest(od);
    });
  });

  unittest.group("obj-schema-CommitResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitResponse();
      var od = new api.CommitResponse.fromJson(o.toJson());
      checkCommitResponse(od);
    });
  });

  unittest.group("obj-schema-CompositeFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompositeFilter();
      var od = new api.CompositeFilter.fromJson(o.toJson());
      checkCompositeFilter(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Entity", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntity();
      var od = new api.Entity.fromJson(o.toJson());
      checkEntity(od);
    });
  });

  unittest.group("obj-schema-EntityResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntityResult();
      var od = new api.EntityResult.fromJson(o.toJson());
      checkEntityResult(od);
    });
  });

  unittest.group("obj-schema-Filter", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilter();
      var od = new api.Filter.fromJson(o.toJson());
      checkFilter(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1CommonMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1CommonMetadata();
      var od =
          new api.GoogleDatastoreAdminV1CommonMetadata.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1CommonMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1EntityFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1EntityFilter();
      var od = new api.GoogleDatastoreAdminV1EntityFilter.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1EntityFilter(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ExportEntitiesMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ExportEntitiesMetadata();
      var od = new api.GoogleDatastoreAdminV1ExportEntitiesMetadata.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1ExportEntitiesMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ExportEntitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ExportEntitiesRequest();
      var od = new api.GoogleDatastoreAdminV1ExportEntitiesRequest.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1ExportEntitiesRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ExportEntitiesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ExportEntitiesResponse();
      var od = new api.GoogleDatastoreAdminV1ExportEntitiesResponse.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1ExportEntitiesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ImportEntitiesMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ImportEntitiesMetadata();
      var od = new api.GoogleDatastoreAdminV1ImportEntitiesMetadata.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1ImportEntitiesMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ImportEntitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ImportEntitiesRequest();
      var od = new api.GoogleDatastoreAdminV1ImportEntitiesRequest.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1ImportEntitiesRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1Index", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1Index();
      var od = new api.GoogleDatastoreAdminV1Index.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1Index(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1IndexOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1IndexOperationMetadata();
      var od = new api.GoogleDatastoreAdminV1IndexOperationMetadata.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1IndexOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1IndexedProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1IndexedProperty();
      var od =
          new api.GoogleDatastoreAdminV1IndexedProperty.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1IndexedProperty(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ListIndexesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ListIndexesResponse();
      var od = new api.GoogleDatastoreAdminV1ListIndexesResponse.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1ListIndexesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1Progress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1Progress();
      var od = new api.GoogleDatastoreAdminV1Progress.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1Progress(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1CommonMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1CommonMetadata();
      var od = new api.GoogleDatastoreAdminV1beta1CommonMetadata.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1beta1CommonMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1EntityFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1EntityFilter();
      var od =
          new api.GoogleDatastoreAdminV1beta1EntityFilter.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1beta1EntityFilter(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1ExportEntitiesMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1ExportEntitiesMetadata();
      var od =
          new api.GoogleDatastoreAdminV1beta1ExportEntitiesMetadata.fromJson(
              o.toJson());
      checkGoogleDatastoreAdminV1beta1ExportEntitiesMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1ExportEntitiesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1ExportEntitiesResponse();
      var od =
          new api.GoogleDatastoreAdminV1beta1ExportEntitiesResponse.fromJson(
              o.toJson());
      checkGoogleDatastoreAdminV1beta1ExportEntitiesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1ImportEntitiesMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1ImportEntitiesMetadata();
      var od =
          new api.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata.fromJson(
              o.toJson());
      checkGoogleDatastoreAdminV1beta1ImportEntitiesMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1Progress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1Progress();
      var od = new api.GoogleDatastoreAdminV1beta1Progress.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1beta1Progress(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od =
          new api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group("obj-schema-GqlQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildGqlQuery();
      var od = new api.GqlQuery.fromJson(o.toJson());
      checkGqlQuery(od);
    });
  });

  unittest.group("obj-schema-GqlQueryParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGqlQueryParameter();
      var od = new api.GqlQueryParameter.fromJson(o.toJson());
      checkGqlQueryParameter(od);
    });
  });

  unittest.group("obj-schema-Key", () {
    unittest.test("to-json--from-json", () {
      var o = buildKey();
      var od = new api.Key.fromJson(o.toJson());
      checkKey(od);
    });
  });

  unittest.group("obj-schema-KindExpression", () {
    unittest.test("to-json--from-json", () {
      var o = buildKindExpression();
      var od = new api.KindExpression.fromJson(o.toJson());
      checkKindExpression(od);
    });
  });

  unittest.group("obj-schema-LatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLng();
      var od = new api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });

  unittest.group("obj-schema-LookupRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildLookupRequest();
      var od = new api.LookupRequest.fromJson(o.toJson());
      checkLookupRequest(od);
    });
  });

  unittest.group("obj-schema-LookupResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLookupResponse();
      var od = new api.LookupResponse.fromJson(o.toJson());
      checkLookupResponse(od);
    });
  });

  unittest.group("obj-schema-Mutation", () {
    unittest.test("to-json--from-json", () {
      var o = buildMutation();
      var od = new api.Mutation.fromJson(o.toJson());
      checkMutation(od);
    });
  });

  unittest.group("obj-schema-MutationResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildMutationResult();
      var od = new api.MutationResult.fromJson(o.toJson());
      checkMutationResult(od);
    });
  });

  unittest.group("obj-schema-PartitionId", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartitionId();
      var od = new api.PartitionId.fromJson(o.toJson());
      checkPartitionId(od);
    });
  });

  unittest.group("obj-schema-PathElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildPathElement();
      var od = new api.PathElement.fromJson(o.toJson());
      checkPathElement(od);
    });
  });

  unittest.group("obj-schema-Projection", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjection();
      var od = new api.Projection.fromJson(o.toJson());
      checkProjection(od);
    });
  });

  unittest.group("obj-schema-PropertyFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildPropertyFilter();
      var od = new api.PropertyFilter.fromJson(o.toJson());
      checkPropertyFilter(od);
    });
  });

  unittest.group("obj-schema-PropertyOrder", () {
    unittest.test("to-json--from-json", () {
      var o = buildPropertyOrder();
      var od = new api.PropertyOrder.fromJson(o.toJson());
      checkPropertyOrder(od);
    });
  });

  unittest.group("obj-schema-PropertyReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildPropertyReference();
      var od = new api.PropertyReference.fromJson(o.toJson());
      checkPropertyReference(od);
    });
  });

  unittest.group("obj-schema-Query", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuery();
      var od = new api.Query.fromJson(o.toJson());
      checkQuery(od);
    });
  });

  unittest.group("obj-schema-QueryResultBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryResultBatch();
      var od = new api.QueryResultBatch.fromJson(o.toJson());
      checkQueryResultBatch(od);
    });
  });

  unittest.group("obj-schema-ReadOnly", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadOnly();
      var od = new api.ReadOnly.fromJson(o.toJson());
      checkReadOnly(od);
    });
  });

  unittest.group("obj-schema-ReadOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadOptions();
      var od = new api.ReadOptions.fromJson(o.toJson());
      checkReadOptions(od);
    });
  });

  unittest.group("obj-schema-ReadWrite", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadWrite();
      var od = new api.ReadWrite.fromJson(o.toJson());
      checkReadWrite(od);
    });
  });

  unittest.group("obj-schema-ReserveIdsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReserveIdsRequest();
      var od = new api.ReserveIdsRequest.fromJson(o.toJson());
      checkReserveIdsRequest(od);
    });
  });

  unittest.group("obj-schema-ReserveIdsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReserveIdsResponse();
      var od = new api.ReserveIdsResponse.fromJson(o.toJson());
      checkReserveIdsResponse(od);
    });
  });

  unittest.group("obj-schema-RollbackRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollbackRequest();
      var od = new api.RollbackRequest.fromJson(o.toJson());
      checkRollbackRequest(od);
    });
  });

  unittest.group("obj-schema-RollbackResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollbackResponse();
      var od = new api.RollbackResponse.fromJson(o.toJson());
      checkRollbackResponse(od);
    });
  });

  unittest.group("obj-schema-RunQueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunQueryRequest();
      var od = new api.RunQueryRequest.fromJson(o.toJson());
      checkRunQueryRequest(od);
    });
  });

  unittest.group("obj-schema-RunQueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunQueryResponse();
      var od = new api.RunQueryResponse.fromJson(o.toJson());
      checkRunQueryResponse(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TransactionOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransactionOptions();
      var od = new api.TransactionOptions.fromJson(o.toJson());
      checkTransactionOptions(od);
    });
  });

  unittest.group("obj-schema-Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildValue();
      var od = new api.Value.fromJson(o.toJson());
      checkValue(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--allocateIds", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DatastoreApi(mock).projects;
      var arg_request = buildAllocateIdsRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AllocateIdsRequest.fromJson(json);
        checkAllocateIdsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":allocateIds", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals(":allocateIds"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildAllocateIdsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .allocateIds(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAllocateIdsResponse(response);
      })));
    });

    unittest.test("method--beginTransaction", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DatastoreApi(mock).projects;
      var arg_request = buildBeginTransactionRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BeginTransactionRequest.fromJson(json);
        checkBeginTransactionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":beginTransaction", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals(":beginTransaction"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildBeginTransactionResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .beginTransaction(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBeginTransactionResponse(response);
      })));
    });

    unittest.test("method--commit", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DatastoreApi(mock).projects;
      var arg_request = buildCommitRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CommitRequest.fromJson(json);
        checkCommitRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":commit", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":commit"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildCommitResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .commit(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommitResponse(response);
      })));
    });

    unittest.test("method--export", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DatastoreApi(mock).projects;
      var arg_request = buildGoogleDatastoreAdminV1ExportEntitiesRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleDatastoreAdminV1ExportEntitiesRequest.fromJson(json);
        checkGoogleDatastoreAdminV1ExportEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":export", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":export"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DatastoreApi(mock).projects;
      var arg_request = buildGoogleDatastoreAdminV1ImportEntitiesRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleDatastoreAdminV1ImportEntitiesRequest.fromJson(json);
        checkGoogleDatastoreAdminV1ImportEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":import", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":import"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--lookup", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DatastoreApi(mock).projects;
      var arg_request = buildLookupRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LookupRequest.fromJson(json);
        checkLookupRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":lookup", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":lookup"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildLookupResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookup(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLookupResponse(response);
      })));
    });

    unittest.test("method--reserveIds", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DatastoreApi(mock).projects;
      var arg_request = buildReserveIdsRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReserveIdsRequest.fromJson(json);
        checkReserveIdsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":reserveIds", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals(":reserveIds"));
        pathOffset += 11;

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
        var resp = convert.json.encode(buildReserveIdsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reserveIds(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReserveIdsResponse(response);
      })));
    });

    unittest.test("method--rollback", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DatastoreApi(mock).projects;
      var arg_request = buildRollbackRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RollbackRequest.fromJson(json);
        checkRollbackRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":rollback", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":rollback"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildRollbackResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rollback(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRollbackResponse(response);
      })));
    });

    unittest.test("method--runQuery", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DatastoreApi(mock).projects;
      var arg_request = buildRunQueryRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RunQueryRequest.fromJson(json);
        checkRunQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":runQuery", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":runQuery"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildRunQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .runQuery(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRunQueryResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsIndexesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsIndexesResourceApi res =
          new api.DatastoreApi(mock).projects.indexes;
      var arg_projectId = "foo";
      var arg_indexId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/indexes/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_indexId"));

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
        var resp = convert.json.encode(buildGoogleDatastoreAdminV1Index());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_indexId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleDatastoreAdminV1Index(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsIndexesResourceApi res =
          new api.DatastoreApi(mock).projects.indexes;
      var arg_projectId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/indexes"));
        pathOffset += 8;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleDatastoreAdminV1ListIndexesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleDatastoreAdminV1ListIndexesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DatastoreApi(mock).projects.operations;
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
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DatastoreApi(mock).projects.operations;
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
      api.ProjectsOperationsResourceApi res =
          new api.DatastoreApi(mock).projects.operations;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DatastoreApi(mock).projects.operations;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });
}
