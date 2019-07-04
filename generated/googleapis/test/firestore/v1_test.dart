library googleapis.firestore.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/firestore/v1.dart' as api;

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

buildUnnamed2309() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed2309(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterArrayValue = 0;
buildArrayValue() {
  var o = new api.ArrayValue();
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    o.values = buildUnnamed2309();
  }
  buildCounterArrayValue--;
  return o;
}

checkArrayValue(api.ArrayValue o) {
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    checkUnnamed2309(o.values);
  }
  buildCounterArrayValue--;
}

buildUnnamed2310() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2310(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchGetDocumentsRequest = 0;
buildBatchGetDocumentsRequest() {
  var o = new api.BatchGetDocumentsRequest();
  buildCounterBatchGetDocumentsRequest++;
  if (buildCounterBatchGetDocumentsRequest < 3) {
    o.documents = buildUnnamed2310();
    o.mask = buildDocumentMask();
    o.newTransaction = buildTransactionOptions();
    o.readTime = "foo";
    o.transaction = "foo";
  }
  buildCounterBatchGetDocumentsRequest--;
  return o;
}

checkBatchGetDocumentsRequest(api.BatchGetDocumentsRequest o) {
  buildCounterBatchGetDocumentsRequest++;
  if (buildCounterBatchGetDocumentsRequest < 3) {
    checkUnnamed2310(o.documents);
    checkDocumentMask(o.mask);
    checkTransactionOptions(o.newTransaction);
    unittest.expect(o.readTime, unittest.equals('foo'));
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterBatchGetDocumentsRequest--;
}

core.int buildCounterBatchGetDocumentsResponse = 0;
buildBatchGetDocumentsResponse() {
  var o = new api.BatchGetDocumentsResponse();
  buildCounterBatchGetDocumentsResponse++;
  if (buildCounterBatchGetDocumentsResponse < 3) {
    o.found = buildDocument();
    o.missing = "foo";
    o.readTime = "foo";
    o.transaction = "foo";
  }
  buildCounterBatchGetDocumentsResponse--;
  return o;
}

checkBatchGetDocumentsResponse(api.BatchGetDocumentsResponse o) {
  buildCounterBatchGetDocumentsResponse++;
  if (buildCounterBatchGetDocumentsResponse < 3) {
    checkDocument(o.found);
    unittest.expect(o.missing, unittest.equals('foo'));
    unittest.expect(o.readTime, unittest.equals('foo'));
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterBatchGetDocumentsResponse--;
}

core.int buildCounterBeginTransactionRequest = 0;
buildBeginTransactionRequest() {
  var o = new api.BeginTransactionRequest();
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    o.options = buildTransactionOptions();
  }
  buildCounterBeginTransactionRequest--;
  return o;
}

checkBeginTransactionRequest(api.BeginTransactionRequest o) {
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    checkTransactionOptions(o.options);
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

core.int buildCounterCollectionSelector = 0;
buildCollectionSelector() {
  var o = new api.CollectionSelector();
  buildCounterCollectionSelector++;
  if (buildCounterCollectionSelector < 3) {
    o.allDescendants = true;
    o.collectionId = "foo";
  }
  buildCounterCollectionSelector--;
  return o;
}

checkCollectionSelector(api.CollectionSelector o) {
  buildCounterCollectionSelector++;
  if (buildCounterCollectionSelector < 3) {
    unittest.expect(o.allDescendants, unittest.isTrue);
    unittest.expect(o.collectionId, unittest.equals('foo'));
  }
  buildCounterCollectionSelector--;
}

buildUnnamed2311() {
  var o = new core.List<api.Write>();
  o.add(buildWrite());
  o.add(buildWrite());
  return o;
}

checkUnnamed2311(core.List<api.Write> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWrite(o[0]);
  checkWrite(o[1]);
}

core.int buildCounterCommitRequest = 0;
buildCommitRequest() {
  var o = new api.CommitRequest();
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    o.transaction = "foo";
    o.writes = buildUnnamed2311();
  }
  buildCounterCommitRequest--;
  return o;
}

checkCommitRequest(api.CommitRequest o) {
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    unittest.expect(o.transaction, unittest.equals('foo'));
    checkUnnamed2311(o.writes);
  }
  buildCounterCommitRequest--;
}

buildUnnamed2312() {
  var o = new core.List<api.WriteResult>();
  o.add(buildWriteResult());
  o.add(buildWriteResult());
  return o;
}

checkUnnamed2312(core.List<api.WriteResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWriteResult(o[0]);
  checkWriteResult(o[1]);
}

core.int buildCounterCommitResponse = 0;
buildCommitResponse() {
  var o = new api.CommitResponse();
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    o.commitTime = "foo";
    o.writeResults = buildUnnamed2312();
  }
  buildCounterCommitResponse--;
  return o;
}

checkCommitResponse(api.CommitResponse o) {
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    unittest.expect(o.commitTime, unittest.equals('foo'));
    checkUnnamed2312(o.writeResults);
  }
  buildCounterCommitResponse--;
}

buildUnnamed2313() {
  var o = new core.List<api.Filter>();
  o.add(buildFilter());
  o.add(buildFilter());
  return o;
}

checkUnnamed2313(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterCompositeFilter = 0;
buildCompositeFilter() {
  var o = new api.CompositeFilter();
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    o.filters = buildUnnamed2313();
    o.op = "foo";
  }
  buildCounterCompositeFilter--;
  return o;
}

checkCompositeFilter(api.CompositeFilter o) {
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    checkUnnamed2313(o.filters);
    unittest.expect(o.op, unittest.equals('foo'));
  }
  buildCounterCompositeFilter--;
}

buildUnnamed2314() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed2314(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterCursor = 0;
buildCursor() {
  var o = new api.Cursor();
  buildCounterCursor++;
  if (buildCounterCursor < 3) {
    o.before = true;
    o.values = buildUnnamed2314();
  }
  buildCounterCursor--;
  return o;
}

checkCursor(api.Cursor o) {
  buildCounterCursor++;
  if (buildCounterCursor < 3) {
    unittest.expect(o.before, unittest.isTrue);
    checkUnnamed2314(o.values);
  }
  buildCounterCursor--;
}

buildUnnamed2315() {
  var o = new core.Map<core.String, api.Value>();
  o["x"] = buildValue();
  o["y"] = buildValue();
  return o;
}

checkUnnamed2315(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o["x"]);
  checkValue(o["y"]);
}

core.int buildCounterDocument = 0;
buildDocument() {
  var o = new api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.createTime = "foo";
    o.fields = buildUnnamed2315();
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterDocument--;
  return o;
}

checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed2315(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterDocument--;
}

buildUnnamed2316() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed2316(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed2317() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed2317(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterDocumentChange = 0;
buildDocumentChange() {
  var o = new api.DocumentChange();
  buildCounterDocumentChange++;
  if (buildCounterDocumentChange < 3) {
    o.document = buildDocument();
    o.removedTargetIds = buildUnnamed2316();
    o.targetIds = buildUnnamed2317();
  }
  buildCounterDocumentChange--;
  return o;
}

checkDocumentChange(api.DocumentChange o) {
  buildCounterDocumentChange++;
  if (buildCounterDocumentChange < 3) {
    checkDocument(o.document);
    checkUnnamed2316(o.removedTargetIds);
    checkUnnamed2317(o.targetIds);
  }
  buildCounterDocumentChange--;
}

buildUnnamed2318() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed2318(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterDocumentDelete = 0;
buildDocumentDelete() {
  var o = new api.DocumentDelete();
  buildCounterDocumentDelete++;
  if (buildCounterDocumentDelete < 3) {
    o.document = "foo";
    o.readTime = "foo";
    o.removedTargetIds = buildUnnamed2318();
  }
  buildCounterDocumentDelete--;
  return o;
}

checkDocumentDelete(api.DocumentDelete o) {
  buildCounterDocumentDelete++;
  if (buildCounterDocumentDelete < 3) {
    unittest.expect(o.document, unittest.equals('foo'));
    unittest.expect(o.readTime, unittest.equals('foo'));
    checkUnnamed2318(o.removedTargetIds);
  }
  buildCounterDocumentDelete--;
}

buildUnnamed2319() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2319(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDocumentMask = 0;
buildDocumentMask() {
  var o = new api.DocumentMask();
  buildCounterDocumentMask++;
  if (buildCounterDocumentMask < 3) {
    o.fieldPaths = buildUnnamed2319();
  }
  buildCounterDocumentMask--;
  return o;
}

checkDocumentMask(api.DocumentMask o) {
  buildCounterDocumentMask++;
  if (buildCounterDocumentMask < 3) {
    checkUnnamed2319(o.fieldPaths);
  }
  buildCounterDocumentMask--;
}

buildUnnamed2320() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed2320(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterDocumentRemove = 0;
buildDocumentRemove() {
  var o = new api.DocumentRemove();
  buildCounterDocumentRemove++;
  if (buildCounterDocumentRemove < 3) {
    o.document = "foo";
    o.readTime = "foo";
    o.removedTargetIds = buildUnnamed2320();
  }
  buildCounterDocumentRemove--;
  return o;
}

checkDocumentRemove(api.DocumentRemove o) {
  buildCounterDocumentRemove++;
  if (buildCounterDocumentRemove < 3) {
    unittest.expect(o.document, unittest.equals('foo'));
    unittest.expect(o.readTime, unittest.equals('foo'));
    checkUnnamed2320(o.removedTargetIds);
  }
  buildCounterDocumentRemove--;
}

buildUnnamed2321() {
  var o = new core.List<api.FieldTransform>();
  o.add(buildFieldTransform());
  o.add(buildFieldTransform());
  return o;
}

checkUnnamed2321(core.List<api.FieldTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldTransform(o[0]);
  checkFieldTransform(o[1]);
}

core.int buildCounterDocumentTransform = 0;
buildDocumentTransform() {
  var o = new api.DocumentTransform();
  buildCounterDocumentTransform++;
  if (buildCounterDocumentTransform < 3) {
    o.document = "foo";
    o.fieldTransforms = buildUnnamed2321();
  }
  buildCounterDocumentTransform--;
  return o;
}

checkDocumentTransform(api.DocumentTransform o) {
  buildCounterDocumentTransform++;
  if (buildCounterDocumentTransform < 3) {
    unittest.expect(o.document, unittest.equals('foo'));
    checkUnnamed2321(o.fieldTransforms);
  }
  buildCounterDocumentTransform--;
}

buildUnnamed2322() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2322(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDocumentsTarget = 0;
buildDocumentsTarget() {
  var o = new api.DocumentsTarget();
  buildCounterDocumentsTarget++;
  if (buildCounterDocumentsTarget < 3) {
    o.documents = buildUnnamed2322();
  }
  buildCounterDocumentsTarget--;
  return o;
}

checkDocumentsTarget(api.DocumentsTarget o) {
  buildCounterDocumentsTarget++;
  if (buildCounterDocumentsTarget < 3) {
    checkUnnamed2322(o.documents);
  }
  buildCounterDocumentsTarget--;
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

core.int buildCounterExistenceFilter = 0;
buildExistenceFilter() {
  var o = new api.ExistenceFilter();
  buildCounterExistenceFilter++;
  if (buildCounterExistenceFilter < 3) {
    o.count = 42;
    o.targetId = 42;
  }
  buildCounterExistenceFilter--;
  return o;
}

checkExistenceFilter(api.ExistenceFilter o) {
  buildCounterExistenceFilter++;
  if (buildCounterExistenceFilter < 3) {
    unittest.expect(o.count, unittest.equals(42));
    unittest.expect(o.targetId, unittest.equals(42));
  }
  buildCounterExistenceFilter--;
}

core.int buildCounterFieldFilter = 0;
buildFieldFilter() {
  var o = new api.FieldFilter();
  buildCounterFieldFilter++;
  if (buildCounterFieldFilter < 3) {
    o.field = buildFieldReference();
    o.op = "foo";
    o.value = buildValue();
  }
  buildCounterFieldFilter--;
  return o;
}

checkFieldFilter(api.FieldFilter o) {
  buildCounterFieldFilter++;
  if (buildCounterFieldFilter < 3) {
    checkFieldReference(o.field);
    unittest.expect(o.op, unittest.equals('foo'));
    checkValue(o.value);
  }
  buildCounterFieldFilter--;
}

core.int buildCounterFieldReference = 0;
buildFieldReference() {
  var o = new api.FieldReference();
  buildCounterFieldReference++;
  if (buildCounterFieldReference < 3) {
    o.fieldPath = "foo";
  }
  buildCounterFieldReference--;
  return o;
}

checkFieldReference(api.FieldReference o) {
  buildCounterFieldReference++;
  if (buildCounterFieldReference < 3) {
    unittest.expect(o.fieldPath, unittest.equals('foo'));
  }
  buildCounterFieldReference--;
}

core.int buildCounterFieldTransform = 0;
buildFieldTransform() {
  var o = new api.FieldTransform();
  buildCounterFieldTransform++;
  if (buildCounterFieldTransform < 3) {
    o.appendMissingElements = buildArrayValue();
    o.fieldPath = "foo";
    o.increment = buildValue();
    o.maximum = buildValue();
    o.minimum = buildValue();
    o.removeAllFromArray = buildArrayValue();
    o.setToServerValue = "foo";
  }
  buildCounterFieldTransform--;
  return o;
}

checkFieldTransform(api.FieldTransform o) {
  buildCounterFieldTransform++;
  if (buildCounterFieldTransform < 3) {
    checkArrayValue(o.appendMissingElements);
    unittest.expect(o.fieldPath, unittest.equals('foo'));
    checkValue(o.increment);
    checkValue(o.maximum);
    checkValue(o.minimum);
    checkArrayValue(o.removeAllFromArray);
    unittest.expect(o.setToServerValue, unittest.equals('foo'));
  }
  buildCounterFieldTransform--;
}

core.int buildCounterFilter = 0;
buildFilter() {
  var o = new api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.compositeFilter = buildCompositeFilter();
    o.fieldFilter = buildFieldFilter();
    o.unaryFilter = buildUnaryFilter();
  }
  buildCounterFilter--;
  return o;
}

checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkCompositeFilter(o.compositeFilter);
    checkFieldFilter(o.fieldFilter);
    checkUnaryFilter(o.unaryFilter);
  }
  buildCounterFilter--;
}

buildUnnamed2323() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2323(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata = 0;
buildGoogleFirestoreAdminV1ExportDocumentsMetadata() {
  var o = new api.GoogleFirestoreAdminV1ExportDocumentsMetadata();
  buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata < 3) {
    o.collectionIds = buildUnnamed2323();
    o.endTime = "foo";
    o.operationState = "foo";
    o.outputUriPrefix = "foo";
    o.progressBytes = buildGoogleFirestoreAdminV1Progress();
    o.progressDocuments = buildGoogleFirestoreAdminV1Progress();
    o.startTime = "foo";
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata--;
  return o;
}

checkGoogleFirestoreAdminV1ExportDocumentsMetadata(
    api.GoogleFirestoreAdminV1ExportDocumentsMetadata o) {
  buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata < 3) {
    checkUnnamed2323(o.collectionIds);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.operationState, unittest.equals('foo'));
    unittest.expect(o.outputUriPrefix, unittest.equals('foo'));
    checkGoogleFirestoreAdminV1Progress(o.progressBytes);
    checkGoogleFirestoreAdminV1Progress(o.progressDocuments);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata--;
}

buildUnnamed2324() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2324(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest = 0;
buildGoogleFirestoreAdminV1ExportDocumentsRequest() {
  var o = new api.GoogleFirestoreAdminV1ExportDocumentsRequest();
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest < 3) {
    o.collectionIds = buildUnnamed2324();
    o.outputUriPrefix = "foo";
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest--;
  return o;
}

checkGoogleFirestoreAdminV1ExportDocumentsRequest(
    api.GoogleFirestoreAdminV1ExportDocumentsRequest o) {
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest < 3) {
    checkUnnamed2324(o.collectionIds);
    unittest.expect(o.outputUriPrefix, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest--;
}

core.int buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse = 0;
buildGoogleFirestoreAdminV1ExportDocumentsResponse() {
  var o = new api.GoogleFirestoreAdminV1ExportDocumentsResponse();
  buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse < 3) {
    o.outputUriPrefix = "foo";
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse--;
  return o;
}

checkGoogleFirestoreAdminV1ExportDocumentsResponse(
    api.GoogleFirestoreAdminV1ExportDocumentsResponse o) {
  buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse < 3) {
    unittest.expect(o.outputUriPrefix, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse--;
}

core.int buildCounterGoogleFirestoreAdminV1Field = 0;
buildGoogleFirestoreAdminV1Field() {
  var o = new api.GoogleFirestoreAdminV1Field();
  buildCounterGoogleFirestoreAdminV1Field++;
  if (buildCounterGoogleFirestoreAdminV1Field < 3) {
    o.indexConfig = buildGoogleFirestoreAdminV1IndexConfig();
    o.name = "foo";
  }
  buildCounterGoogleFirestoreAdminV1Field--;
  return o;
}

checkGoogleFirestoreAdminV1Field(api.GoogleFirestoreAdminV1Field o) {
  buildCounterGoogleFirestoreAdminV1Field++;
  if (buildCounterGoogleFirestoreAdminV1Field < 3) {
    checkGoogleFirestoreAdminV1IndexConfig(o.indexConfig);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1Field--;
}

buildUnnamed2325() {
  var o = new core.List<api.GoogleFirestoreAdminV1IndexConfigDelta>();
  o.add(buildGoogleFirestoreAdminV1IndexConfigDelta());
  o.add(buildGoogleFirestoreAdminV1IndexConfigDelta());
  return o;
}

checkUnnamed2325(core.List<api.GoogleFirestoreAdminV1IndexConfigDelta> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1IndexConfigDelta(o[0]);
  checkGoogleFirestoreAdminV1IndexConfigDelta(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1FieldOperationMetadata = 0;
buildGoogleFirestoreAdminV1FieldOperationMetadata() {
  var o = new api.GoogleFirestoreAdminV1FieldOperationMetadata();
  buildCounterGoogleFirestoreAdminV1FieldOperationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1FieldOperationMetadata < 3) {
    o.endTime = "foo";
    o.field = "foo";
    o.indexConfigDeltas = buildUnnamed2325();
    o.progressBytes = buildGoogleFirestoreAdminV1Progress();
    o.progressDocuments = buildGoogleFirestoreAdminV1Progress();
    o.startTime = "foo";
    o.state = "foo";
  }
  buildCounterGoogleFirestoreAdminV1FieldOperationMetadata--;
  return o;
}

checkGoogleFirestoreAdminV1FieldOperationMetadata(
    api.GoogleFirestoreAdminV1FieldOperationMetadata o) {
  buildCounterGoogleFirestoreAdminV1FieldOperationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1FieldOperationMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.field, unittest.equals('foo'));
    checkUnnamed2325(o.indexConfigDeltas);
    checkGoogleFirestoreAdminV1Progress(o.progressBytes);
    checkGoogleFirestoreAdminV1Progress(o.progressDocuments);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1FieldOperationMetadata--;
}

buildUnnamed2326() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2326(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata = 0;
buildGoogleFirestoreAdminV1ImportDocumentsMetadata() {
  var o = new api.GoogleFirestoreAdminV1ImportDocumentsMetadata();
  buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata++;
  if (buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata < 3) {
    o.collectionIds = buildUnnamed2326();
    o.endTime = "foo";
    o.inputUriPrefix = "foo";
    o.operationState = "foo";
    o.progressBytes = buildGoogleFirestoreAdminV1Progress();
    o.progressDocuments = buildGoogleFirestoreAdminV1Progress();
    o.startTime = "foo";
  }
  buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata--;
  return o;
}

checkGoogleFirestoreAdminV1ImportDocumentsMetadata(
    api.GoogleFirestoreAdminV1ImportDocumentsMetadata o) {
  buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata++;
  if (buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata < 3) {
    checkUnnamed2326(o.collectionIds);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.inputUriPrefix, unittest.equals('foo'));
    unittest.expect(o.operationState, unittest.equals('foo'));
    checkGoogleFirestoreAdminV1Progress(o.progressBytes);
    checkGoogleFirestoreAdminV1Progress(o.progressDocuments);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata--;
}

buildUnnamed2327() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2327(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest = 0;
buildGoogleFirestoreAdminV1ImportDocumentsRequest() {
  var o = new api.GoogleFirestoreAdminV1ImportDocumentsRequest();
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest < 3) {
    o.collectionIds = buildUnnamed2327();
    o.inputUriPrefix = "foo";
  }
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest--;
  return o;
}

checkGoogleFirestoreAdminV1ImportDocumentsRequest(
    api.GoogleFirestoreAdminV1ImportDocumentsRequest o) {
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest < 3) {
    checkUnnamed2327(o.collectionIds);
    unittest.expect(o.inputUriPrefix, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest--;
}

buildUnnamed2328() {
  var o = new core.List<api.GoogleFirestoreAdminV1IndexField>();
  o.add(buildGoogleFirestoreAdminV1IndexField());
  o.add(buildGoogleFirestoreAdminV1IndexField());
  return o;
}

checkUnnamed2328(core.List<api.GoogleFirestoreAdminV1IndexField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1IndexField(o[0]);
  checkGoogleFirestoreAdminV1IndexField(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1Index = 0;
buildGoogleFirestoreAdminV1Index() {
  var o = new api.GoogleFirestoreAdminV1Index();
  buildCounterGoogleFirestoreAdminV1Index++;
  if (buildCounterGoogleFirestoreAdminV1Index < 3) {
    o.fields = buildUnnamed2328();
    o.name = "foo";
    o.queryScope = "foo";
    o.state = "foo";
  }
  buildCounterGoogleFirestoreAdminV1Index--;
  return o;
}

checkGoogleFirestoreAdminV1Index(api.GoogleFirestoreAdminV1Index o) {
  buildCounterGoogleFirestoreAdminV1Index++;
  if (buildCounterGoogleFirestoreAdminV1Index < 3) {
    checkUnnamed2328(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.queryScope, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1Index--;
}

buildUnnamed2329() {
  var o = new core.List<api.GoogleFirestoreAdminV1Index>();
  o.add(buildGoogleFirestoreAdminV1Index());
  o.add(buildGoogleFirestoreAdminV1Index());
  return o;
}

checkUnnamed2329(core.List<api.GoogleFirestoreAdminV1Index> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1Index(o[0]);
  checkGoogleFirestoreAdminV1Index(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1IndexConfig = 0;
buildGoogleFirestoreAdminV1IndexConfig() {
  var o = new api.GoogleFirestoreAdminV1IndexConfig();
  buildCounterGoogleFirestoreAdminV1IndexConfig++;
  if (buildCounterGoogleFirestoreAdminV1IndexConfig < 3) {
    o.ancestorField = "foo";
    o.indexes = buildUnnamed2329();
    o.reverting = true;
    o.usesAncestorConfig = true;
  }
  buildCounterGoogleFirestoreAdminV1IndexConfig--;
  return o;
}

checkGoogleFirestoreAdminV1IndexConfig(
    api.GoogleFirestoreAdminV1IndexConfig o) {
  buildCounterGoogleFirestoreAdminV1IndexConfig++;
  if (buildCounterGoogleFirestoreAdminV1IndexConfig < 3) {
    unittest.expect(o.ancestorField, unittest.equals('foo'));
    checkUnnamed2329(o.indexes);
    unittest.expect(o.reverting, unittest.isTrue);
    unittest.expect(o.usesAncestorConfig, unittest.isTrue);
  }
  buildCounterGoogleFirestoreAdminV1IndexConfig--;
}

core.int buildCounterGoogleFirestoreAdminV1IndexConfigDelta = 0;
buildGoogleFirestoreAdminV1IndexConfigDelta() {
  var o = new api.GoogleFirestoreAdminV1IndexConfigDelta();
  buildCounterGoogleFirestoreAdminV1IndexConfigDelta++;
  if (buildCounterGoogleFirestoreAdminV1IndexConfigDelta < 3) {
    o.changeType = "foo";
    o.index = buildGoogleFirestoreAdminV1Index();
  }
  buildCounterGoogleFirestoreAdminV1IndexConfigDelta--;
  return o;
}

checkGoogleFirestoreAdminV1IndexConfigDelta(
    api.GoogleFirestoreAdminV1IndexConfigDelta o) {
  buildCounterGoogleFirestoreAdminV1IndexConfigDelta++;
  if (buildCounterGoogleFirestoreAdminV1IndexConfigDelta < 3) {
    unittest.expect(o.changeType, unittest.equals('foo'));
    checkGoogleFirestoreAdminV1Index(o.index);
  }
  buildCounterGoogleFirestoreAdminV1IndexConfigDelta--;
}

core.int buildCounterGoogleFirestoreAdminV1IndexField = 0;
buildGoogleFirestoreAdminV1IndexField() {
  var o = new api.GoogleFirestoreAdminV1IndexField();
  buildCounterGoogleFirestoreAdminV1IndexField++;
  if (buildCounterGoogleFirestoreAdminV1IndexField < 3) {
    o.arrayConfig = "foo";
    o.fieldPath = "foo";
    o.order = "foo";
  }
  buildCounterGoogleFirestoreAdminV1IndexField--;
  return o;
}

checkGoogleFirestoreAdminV1IndexField(api.GoogleFirestoreAdminV1IndexField o) {
  buildCounterGoogleFirestoreAdminV1IndexField++;
  if (buildCounterGoogleFirestoreAdminV1IndexField < 3) {
    unittest.expect(o.arrayConfig, unittest.equals('foo'));
    unittest.expect(o.fieldPath, unittest.equals('foo'));
    unittest.expect(o.order, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1IndexField--;
}

core.int buildCounterGoogleFirestoreAdminV1IndexOperationMetadata = 0;
buildGoogleFirestoreAdminV1IndexOperationMetadata() {
  var o = new api.GoogleFirestoreAdminV1IndexOperationMetadata();
  buildCounterGoogleFirestoreAdminV1IndexOperationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1IndexOperationMetadata < 3) {
    o.endTime = "foo";
    o.index = "foo";
    o.progressBytes = buildGoogleFirestoreAdminV1Progress();
    o.progressDocuments = buildGoogleFirestoreAdminV1Progress();
    o.startTime = "foo";
    o.state = "foo";
  }
  buildCounterGoogleFirestoreAdminV1IndexOperationMetadata--;
  return o;
}

checkGoogleFirestoreAdminV1IndexOperationMetadata(
    api.GoogleFirestoreAdminV1IndexOperationMetadata o) {
  buildCounterGoogleFirestoreAdminV1IndexOperationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1IndexOperationMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.index, unittest.equals('foo'));
    checkGoogleFirestoreAdminV1Progress(o.progressBytes);
    checkGoogleFirestoreAdminV1Progress(o.progressDocuments);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1IndexOperationMetadata--;
}

buildUnnamed2330() {
  var o = new core.List<api.GoogleFirestoreAdminV1Field>();
  o.add(buildGoogleFirestoreAdminV1Field());
  o.add(buildGoogleFirestoreAdminV1Field());
  return o;
}

checkUnnamed2330(core.List<api.GoogleFirestoreAdminV1Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1Field(o[0]);
  checkGoogleFirestoreAdminV1Field(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1ListFieldsResponse = 0;
buildGoogleFirestoreAdminV1ListFieldsResponse() {
  var o = new api.GoogleFirestoreAdminV1ListFieldsResponse();
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListFieldsResponse < 3) {
    o.fields = buildUnnamed2330();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse--;
  return o;
}

checkGoogleFirestoreAdminV1ListFieldsResponse(
    api.GoogleFirestoreAdminV1ListFieldsResponse o) {
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListFieldsResponse < 3) {
    checkUnnamed2330(o.fields);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse--;
}

buildUnnamed2331() {
  var o = new core.List<api.GoogleFirestoreAdminV1Index>();
  o.add(buildGoogleFirestoreAdminV1Index());
  o.add(buildGoogleFirestoreAdminV1Index());
  return o;
}

checkUnnamed2331(core.List<api.GoogleFirestoreAdminV1Index> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1Index(o[0]);
  checkGoogleFirestoreAdminV1Index(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1ListIndexesResponse = 0;
buildGoogleFirestoreAdminV1ListIndexesResponse() {
  var o = new api.GoogleFirestoreAdminV1ListIndexesResponse();
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListIndexesResponse < 3) {
    o.indexes = buildUnnamed2331();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse--;
  return o;
}

checkGoogleFirestoreAdminV1ListIndexesResponse(
    api.GoogleFirestoreAdminV1ListIndexesResponse o) {
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListIndexesResponse < 3) {
    checkUnnamed2331(o.indexes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse--;
}

core.int buildCounterGoogleFirestoreAdminV1LocationMetadata = 0;
buildGoogleFirestoreAdminV1LocationMetadata() {
  var o = new api.GoogleFirestoreAdminV1LocationMetadata();
  buildCounterGoogleFirestoreAdminV1LocationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1LocationMetadata < 3) {}
  buildCounterGoogleFirestoreAdminV1LocationMetadata--;
  return o;
}

checkGoogleFirestoreAdminV1LocationMetadata(
    api.GoogleFirestoreAdminV1LocationMetadata o) {
  buildCounterGoogleFirestoreAdminV1LocationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1LocationMetadata < 3) {}
  buildCounterGoogleFirestoreAdminV1LocationMetadata--;
}

core.int buildCounterGoogleFirestoreAdminV1Progress = 0;
buildGoogleFirestoreAdminV1Progress() {
  var o = new api.GoogleFirestoreAdminV1Progress();
  buildCounterGoogleFirestoreAdminV1Progress++;
  if (buildCounterGoogleFirestoreAdminV1Progress < 3) {
    o.completedWork = "foo";
    o.estimatedWork = "foo";
  }
  buildCounterGoogleFirestoreAdminV1Progress--;
  return o;
}

checkGoogleFirestoreAdminV1Progress(api.GoogleFirestoreAdminV1Progress o) {
  buildCounterGoogleFirestoreAdminV1Progress++;
  if (buildCounterGoogleFirestoreAdminV1Progress < 3) {
    unittest.expect(o.completedWork, unittest.equals('foo'));
    unittest.expect(o.estimatedWork, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1Progress--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
buildGoogleLongrunningCancelOperationRequest() {
  var o = new api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

checkGoogleLongrunningCancelOperationRequest(
    api.GoogleLongrunningCancelOperationRequest o) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

buildUnnamed2332() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed2332(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed2332();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2332(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed2333() {
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

checkUnnamed2333(core.Map<core.String, core.Object> o) {
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

buildUnnamed2334() {
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

checkUnnamed2334(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed2333();
    o.name = "foo";
    o.response = buildUnnamed2334();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2333(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2334(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
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

core.int buildCounterListCollectionIdsRequest = 0;
buildListCollectionIdsRequest() {
  var o = new api.ListCollectionIdsRequest();
  buildCounterListCollectionIdsRequest++;
  if (buildCounterListCollectionIdsRequest < 3) {
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterListCollectionIdsRequest--;
  return o;
}

checkListCollectionIdsRequest(api.ListCollectionIdsRequest o) {
  buildCounterListCollectionIdsRequest++;
  if (buildCounterListCollectionIdsRequest < 3) {
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterListCollectionIdsRequest--;
}

buildUnnamed2335() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2335(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListCollectionIdsResponse = 0;
buildListCollectionIdsResponse() {
  var o = new api.ListCollectionIdsResponse();
  buildCounterListCollectionIdsResponse++;
  if (buildCounterListCollectionIdsResponse < 3) {
    o.collectionIds = buildUnnamed2335();
    o.nextPageToken = "foo";
  }
  buildCounterListCollectionIdsResponse--;
  return o;
}

checkListCollectionIdsResponse(api.ListCollectionIdsResponse o) {
  buildCounterListCollectionIdsResponse++;
  if (buildCounterListCollectionIdsResponse < 3) {
    checkUnnamed2335(o.collectionIds);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCollectionIdsResponse--;
}

buildUnnamed2336() {
  var o = new core.List<api.Document>();
  o.add(buildDocument());
  o.add(buildDocument());
  return o;
}

checkUnnamed2336(core.List<api.Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocument(o[0]);
  checkDocument(o[1]);
}

core.int buildCounterListDocumentsResponse = 0;
buildListDocumentsResponse() {
  var o = new api.ListDocumentsResponse();
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    o.documents = buildUnnamed2336();
    o.nextPageToken = "foo";
  }
  buildCounterListDocumentsResponse--;
  return o;
}

checkListDocumentsResponse(api.ListDocumentsResponse o) {
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    checkUnnamed2336(o.documents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDocumentsResponse--;
}

buildUnnamed2337() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed2337(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed2337();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed2337(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed2338() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2338(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterListenRequest = 0;
buildListenRequest() {
  var o = new api.ListenRequest();
  buildCounterListenRequest++;
  if (buildCounterListenRequest < 3) {
    o.addTarget = buildTarget();
    o.labels = buildUnnamed2338();
    o.removeTarget = 42;
  }
  buildCounterListenRequest--;
  return o;
}

checkListenRequest(api.ListenRequest o) {
  buildCounterListenRequest++;
  if (buildCounterListenRequest < 3) {
    checkTarget(o.addTarget);
    checkUnnamed2338(o.labels);
    unittest.expect(o.removeTarget, unittest.equals(42));
  }
  buildCounterListenRequest--;
}

core.int buildCounterListenResponse = 0;
buildListenResponse() {
  var o = new api.ListenResponse();
  buildCounterListenResponse++;
  if (buildCounterListenResponse < 3) {
    o.documentChange = buildDocumentChange();
    o.documentDelete = buildDocumentDelete();
    o.documentRemove = buildDocumentRemove();
    o.filter = buildExistenceFilter();
    o.targetChange = buildTargetChange();
  }
  buildCounterListenResponse--;
  return o;
}

checkListenResponse(api.ListenResponse o) {
  buildCounterListenResponse++;
  if (buildCounterListenResponse < 3) {
    checkDocumentChange(o.documentChange);
    checkDocumentDelete(o.documentDelete);
    checkDocumentRemove(o.documentRemove);
    checkExistenceFilter(o.filter);
    checkTargetChange(o.targetChange);
  }
  buildCounterListenResponse--;
}

buildUnnamed2339() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2339(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2340() {
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

checkUnnamed2340(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed2339();
    o.locationId = "foo";
    o.metadata = buildUnnamed2340();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2339(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed2340(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

buildUnnamed2341() {
  var o = new core.Map<core.String, api.Value>();
  o["x"] = buildValue();
  o["y"] = buildValue();
  return o;
}

checkUnnamed2341(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o["x"]);
  checkValue(o["y"]);
}

core.int buildCounterMapValue = 0;
buildMapValue() {
  var o = new api.MapValue();
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    o.fields = buildUnnamed2341();
  }
  buildCounterMapValue--;
  return o;
}

checkMapValue(api.MapValue o) {
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    checkUnnamed2341(o.fields);
  }
  buildCounterMapValue--;
}

core.int buildCounterOrder = 0;
buildOrder() {
  var o = new api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.direction = "foo";
    o.field = buildFieldReference();
  }
  buildCounterOrder--;
  return o;
}

checkOrder(api.Order o) {
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    unittest.expect(o.direction, unittest.equals('foo'));
    checkFieldReference(o.field);
  }
  buildCounterOrder--;
}

core.int buildCounterPrecondition = 0;
buildPrecondition() {
  var o = new api.Precondition();
  buildCounterPrecondition++;
  if (buildCounterPrecondition < 3) {
    o.exists = true;
    o.updateTime = "foo";
  }
  buildCounterPrecondition--;
  return o;
}

checkPrecondition(api.Precondition o) {
  buildCounterPrecondition++;
  if (buildCounterPrecondition < 3) {
    unittest.expect(o.exists, unittest.isTrue);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterPrecondition--;
}

buildUnnamed2342() {
  var o = new core.List<api.FieldReference>();
  o.add(buildFieldReference());
  o.add(buildFieldReference());
  return o;
}

checkUnnamed2342(core.List<api.FieldReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldReference(o[0]);
  checkFieldReference(o[1]);
}

core.int buildCounterProjection = 0;
buildProjection() {
  var o = new api.Projection();
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    o.fields = buildUnnamed2342();
  }
  buildCounterProjection--;
  return o;
}

checkProjection(api.Projection o) {
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    checkUnnamed2342(o.fields);
  }
  buildCounterProjection--;
}

core.int buildCounterQueryTarget = 0;
buildQueryTarget() {
  var o = new api.QueryTarget();
  buildCounterQueryTarget++;
  if (buildCounterQueryTarget < 3) {
    o.parent = "foo";
    o.structuredQuery = buildStructuredQuery();
  }
  buildCounterQueryTarget--;
  return o;
}

checkQueryTarget(api.QueryTarget o) {
  buildCounterQueryTarget++;
  if (buildCounterQueryTarget < 3) {
    unittest.expect(o.parent, unittest.equals('foo'));
    checkStructuredQuery(o.structuredQuery);
  }
  buildCounterQueryTarget--;
}

core.int buildCounterReadOnly = 0;
buildReadOnly() {
  var o = new api.ReadOnly();
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {
    o.readTime = "foo";
  }
  buildCounterReadOnly--;
  return o;
}

checkReadOnly(api.ReadOnly o) {
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {
    unittest.expect(o.readTime, unittest.equals('foo'));
  }
  buildCounterReadOnly--;
}

core.int buildCounterReadWrite = 0;
buildReadWrite() {
  var o = new api.ReadWrite();
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    o.retryTransaction = "foo";
  }
  buildCounterReadWrite--;
  return o;
}

checkReadWrite(api.ReadWrite o) {
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    unittest.expect(o.retryTransaction, unittest.equals('foo'));
  }
  buildCounterReadWrite--;
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

core.int buildCounterRunQueryRequest = 0;
buildRunQueryRequest() {
  var o = new api.RunQueryRequest();
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    o.newTransaction = buildTransactionOptions();
    o.readTime = "foo";
    o.structuredQuery = buildStructuredQuery();
    o.transaction = "foo";
  }
  buildCounterRunQueryRequest--;
  return o;
}

checkRunQueryRequest(api.RunQueryRequest o) {
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    checkTransactionOptions(o.newTransaction);
    unittest.expect(o.readTime, unittest.equals('foo'));
    checkStructuredQuery(o.structuredQuery);
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterRunQueryRequest--;
}

core.int buildCounterRunQueryResponse = 0;
buildRunQueryResponse() {
  var o = new api.RunQueryResponse();
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    o.document = buildDocument();
    o.readTime = "foo";
    o.skippedResults = 42;
    o.transaction = "foo";
  }
  buildCounterRunQueryResponse--;
  return o;
}

checkRunQueryResponse(api.RunQueryResponse o) {
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    checkDocument(o.document);
    unittest.expect(o.readTime, unittest.equals('foo'));
    unittest.expect(o.skippedResults, unittest.equals(42));
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterRunQueryResponse--;
}

buildUnnamed2343() {
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

checkUnnamed2343(core.Map<core.String, core.Object> o) {
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

buildUnnamed2344() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2343());
  o.add(buildUnnamed2343());
  return o;
}

checkUnnamed2344(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2343(o[0]);
  checkUnnamed2343(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2344();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2344(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed2345() {
  var o = new core.List<api.CollectionSelector>();
  o.add(buildCollectionSelector());
  o.add(buildCollectionSelector());
  return o;
}

checkUnnamed2345(core.List<api.CollectionSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionSelector(o[0]);
  checkCollectionSelector(o[1]);
}

buildUnnamed2346() {
  var o = new core.List<api.Order>();
  o.add(buildOrder());
  o.add(buildOrder());
  return o;
}

checkUnnamed2346(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0]);
  checkOrder(o[1]);
}

core.int buildCounterStructuredQuery = 0;
buildStructuredQuery() {
  var o = new api.StructuredQuery();
  buildCounterStructuredQuery++;
  if (buildCounterStructuredQuery < 3) {
    o.endAt = buildCursor();
    o.from = buildUnnamed2345();
    o.limit = 42;
    o.offset = 42;
    o.orderBy = buildUnnamed2346();
    o.select = buildProjection();
    o.startAt = buildCursor();
    o.where = buildFilter();
  }
  buildCounterStructuredQuery--;
  return o;
}

checkStructuredQuery(api.StructuredQuery o) {
  buildCounterStructuredQuery++;
  if (buildCounterStructuredQuery < 3) {
    checkCursor(o.endAt);
    checkUnnamed2345(o.from);
    unittest.expect(o.limit, unittest.equals(42));
    unittest.expect(o.offset, unittest.equals(42));
    checkUnnamed2346(o.orderBy);
    checkProjection(o.select);
    checkCursor(o.startAt);
    checkFilter(o.where);
  }
  buildCounterStructuredQuery--;
}

core.int buildCounterTarget = 0;
buildTarget() {
  var o = new api.Target();
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    o.documents = buildDocumentsTarget();
    o.once = true;
    o.query = buildQueryTarget();
    o.readTime = "foo";
    o.resumeToken = "foo";
    o.targetId = 42;
  }
  buildCounterTarget--;
  return o;
}

checkTarget(api.Target o) {
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    checkDocumentsTarget(o.documents);
    unittest.expect(o.once, unittest.isTrue);
    checkQueryTarget(o.query);
    unittest.expect(o.readTime, unittest.equals('foo'));
    unittest.expect(o.resumeToken, unittest.equals('foo'));
    unittest.expect(o.targetId, unittest.equals(42));
  }
  buildCounterTarget--;
}

buildUnnamed2347() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed2347(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterTargetChange = 0;
buildTargetChange() {
  var o = new api.TargetChange();
  buildCounterTargetChange++;
  if (buildCounterTargetChange < 3) {
    o.cause = buildStatus();
    o.readTime = "foo";
    o.resumeToken = "foo";
    o.targetChangeType = "foo";
    o.targetIds = buildUnnamed2347();
  }
  buildCounterTargetChange--;
  return o;
}

checkTargetChange(api.TargetChange o) {
  buildCounterTargetChange++;
  if (buildCounterTargetChange < 3) {
    checkStatus(o.cause);
    unittest.expect(o.readTime, unittest.equals('foo'));
    unittest.expect(o.resumeToken, unittest.equals('foo'));
    unittest.expect(o.targetChangeType, unittest.equals('foo'));
    checkUnnamed2347(o.targetIds);
  }
  buildCounterTargetChange--;
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

core.int buildCounterUnaryFilter = 0;
buildUnaryFilter() {
  var o = new api.UnaryFilter();
  buildCounterUnaryFilter++;
  if (buildCounterUnaryFilter < 3) {
    o.field = buildFieldReference();
    o.op = "foo";
  }
  buildCounterUnaryFilter--;
  return o;
}

checkUnaryFilter(api.UnaryFilter o) {
  buildCounterUnaryFilter++;
  if (buildCounterUnaryFilter < 3) {
    checkFieldReference(o.field);
    unittest.expect(o.op, unittest.equals('foo'));
  }
  buildCounterUnaryFilter--;
}

core.int buildCounterValue = 0;
buildValue() {
  var o = new api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.arrayValue = buildArrayValue();
    o.booleanValue = true;
    o.bytesValue = "foo";
    o.doubleValue = 42.0;
    o.geoPointValue = buildLatLng();
    o.integerValue = "foo";
    o.mapValue = buildMapValue();
    o.nullValue = "foo";
    o.referenceValue = "foo";
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
    unittest.expect(o.booleanValue, unittest.isTrue);
    unittest.expect(o.bytesValue, unittest.equals('foo'));
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    checkLatLng(o.geoPointValue);
    unittest.expect(o.integerValue, unittest.equals('foo'));
    checkMapValue(o.mapValue);
    unittest.expect(o.nullValue, unittest.equals('foo'));
    unittest.expect(o.referenceValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
    unittest.expect(o.timestampValue, unittest.equals('foo'));
  }
  buildCounterValue--;
}

core.int buildCounterWrite = 0;
buildWrite() {
  var o = new api.Write();
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    o.currentDocument = buildPrecondition();
    o.delete = "foo";
    o.transform = buildDocumentTransform();
    o.update = buildDocument();
    o.updateMask = buildDocumentMask();
  }
  buildCounterWrite--;
  return o;
}

checkWrite(api.Write o) {
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    checkPrecondition(o.currentDocument);
    unittest.expect(o.delete, unittest.equals('foo'));
    checkDocumentTransform(o.transform);
    checkDocument(o.update);
    checkDocumentMask(o.updateMask);
  }
  buildCounterWrite--;
}

buildUnnamed2348() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2348(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2349() {
  var o = new core.List<api.Write>();
  o.add(buildWrite());
  o.add(buildWrite());
  return o;
}

checkUnnamed2349(core.List<api.Write> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWrite(o[0]);
  checkWrite(o[1]);
}

core.int buildCounterWriteRequest = 0;
buildWriteRequest() {
  var o = new api.WriteRequest();
  buildCounterWriteRequest++;
  if (buildCounterWriteRequest < 3) {
    o.labels = buildUnnamed2348();
    o.streamId = "foo";
    o.streamToken = "foo";
    o.writes = buildUnnamed2349();
  }
  buildCounterWriteRequest--;
  return o;
}

checkWriteRequest(api.WriteRequest o) {
  buildCounterWriteRequest++;
  if (buildCounterWriteRequest < 3) {
    checkUnnamed2348(o.labels);
    unittest.expect(o.streamId, unittest.equals('foo'));
    unittest.expect(o.streamToken, unittest.equals('foo'));
    checkUnnamed2349(o.writes);
  }
  buildCounterWriteRequest--;
}

buildUnnamed2350() {
  var o = new core.List<api.WriteResult>();
  o.add(buildWriteResult());
  o.add(buildWriteResult());
  return o;
}

checkUnnamed2350(core.List<api.WriteResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWriteResult(o[0]);
  checkWriteResult(o[1]);
}

core.int buildCounterWriteResponse = 0;
buildWriteResponse() {
  var o = new api.WriteResponse();
  buildCounterWriteResponse++;
  if (buildCounterWriteResponse < 3) {
    o.commitTime = "foo";
    o.streamId = "foo";
    o.streamToken = "foo";
    o.writeResults = buildUnnamed2350();
  }
  buildCounterWriteResponse--;
  return o;
}

checkWriteResponse(api.WriteResponse o) {
  buildCounterWriteResponse++;
  if (buildCounterWriteResponse < 3) {
    unittest.expect(o.commitTime, unittest.equals('foo'));
    unittest.expect(o.streamId, unittest.equals('foo'));
    unittest.expect(o.streamToken, unittest.equals('foo'));
    checkUnnamed2350(o.writeResults);
  }
  buildCounterWriteResponse--;
}

buildUnnamed2351() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed2351(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterWriteResult = 0;
buildWriteResult() {
  var o = new api.WriteResult();
  buildCounterWriteResult++;
  if (buildCounterWriteResult < 3) {
    o.transformResults = buildUnnamed2351();
    o.updateTime = "foo";
  }
  buildCounterWriteResult--;
  return o;
}

checkWriteResult(api.WriteResult o) {
  buildCounterWriteResult++;
  if (buildCounterWriteResult < 3) {
    checkUnnamed2351(o.transformResults);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterWriteResult--;
}

buildUnnamed2352() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2352(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2353() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2353(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2354() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2354(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2355() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2355(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2356() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2356(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-ArrayValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildArrayValue();
      var od = new api.ArrayValue.fromJson(o.toJson());
      checkArrayValue(od);
    });
  });

  unittest.group("obj-schema-BatchGetDocumentsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchGetDocumentsRequest();
      var od = new api.BatchGetDocumentsRequest.fromJson(o.toJson());
      checkBatchGetDocumentsRequest(od);
    });
  });

  unittest.group("obj-schema-BatchGetDocumentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchGetDocumentsResponse();
      var od = new api.BatchGetDocumentsResponse.fromJson(o.toJson());
      checkBatchGetDocumentsResponse(od);
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

  unittest.group("obj-schema-CollectionSelector", () {
    unittest.test("to-json--from-json", () {
      var o = buildCollectionSelector();
      var od = new api.CollectionSelector.fromJson(o.toJson());
      checkCollectionSelector(od);
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

  unittest.group("obj-schema-Cursor", () {
    unittest.test("to-json--from-json", () {
      var o = buildCursor();
      var od = new api.Cursor.fromJson(o.toJson());
      checkCursor(od);
    });
  });

  unittest.group("obj-schema-Document", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocument();
      var od = new api.Document.fromJson(o.toJson());
      checkDocument(od);
    });
  });

  unittest.group("obj-schema-DocumentChange", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentChange();
      var od = new api.DocumentChange.fromJson(o.toJson());
      checkDocumentChange(od);
    });
  });

  unittest.group("obj-schema-DocumentDelete", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentDelete();
      var od = new api.DocumentDelete.fromJson(o.toJson());
      checkDocumentDelete(od);
    });
  });

  unittest.group("obj-schema-DocumentMask", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentMask();
      var od = new api.DocumentMask.fromJson(o.toJson());
      checkDocumentMask(od);
    });
  });

  unittest.group("obj-schema-DocumentRemove", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentRemove();
      var od = new api.DocumentRemove.fromJson(o.toJson());
      checkDocumentRemove(od);
    });
  });

  unittest.group("obj-schema-DocumentTransform", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentTransform();
      var od = new api.DocumentTransform.fromJson(o.toJson());
      checkDocumentTransform(od);
    });
  });

  unittest.group("obj-schema-DocumentsTarget", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentsTarget();
      var od = new api.DocumentsTarget.fromJson(o.toJson());
      checkDocumentsTarget(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-ExistenceFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildExistenceFilter();
      var od = new api.ExistenceFilter.fromJson(o.toJson());
      checkExistenceFilter(od);
    });
  });

  unittest.group("obj-schema-FieldFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldFilter();
      var od = new api.FieldFilter.fromJson(o.toJson());
      checkFieldFilter(od);
    });
  });

  unittest.group("obj-schema-FieldReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldReference();
      var od = new api.FieldReference.fromJson(o.toJson());
      checkFieldReference(od);
    });
  });

  unittest.group("obj-schema-FieldTransform", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldTransform();
      var od = new api.FieldTransform.fromJson(o.toJson());
      checkFieldTransform(od);
    });
  });

  unittest.group("obj-schema-Filter", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilter();
      var od = new api.Filter.fromJson(o.toJson());
      checkFilter(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1ExportDocumentsMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1ExportDocumentsMetadata();
      var od = new api.GoogleFirestoreAdminV1ExportDocumentsMetadata.fromJson(
          o.toJson());
      checkGoogleFirestoreAdminV1ExportDocumentsMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1ExportDocumentsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1ExportDocumentsRequest();
      var od = new api.GoogleFirestoreAdminV1ExportDocumentsRequest.fromJson(
          o.toJson());
      checkGoogleFirestoreAdminV1ExportDocumentsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1ExportDocumentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1ExportDocumentsResponse();
      var od = new api.GoogleFirestoreAdminV1ExportDocumentsResponse.fromJson(
          o.toJson());
      checkGoogleFirestoreAdminV1ExportDocumentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1Field", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1Field();
      var od = new api.GoogleFirestoreAdminV1Field.fromJson(o.toJson());
      checkGoogleFirestoreAdminV1Field(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1FieldOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1FieldOperationMetadata();
      var od = new api.GoogleFirestoreAdminV1FieldOperationMetadata.fromJson(
          o.toJson());
      checkGoogleFirestoreAdminV1FieldOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1ImportDocumentsMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1ImportDocumentsMetadata();
      var od = new api.GoogleFirestoreAdminV1ImportDocumentsMetadata.fromJson(
          o.toJson());
      checkGoogleFirestoreAdminV1ImportDocumentsMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1ImportDocumentsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1ImportDocumentsRequest();
      var od = new api.GoogleFirestoreAdminV1ImportDocumentsRequest.fromJson(
          o.toJson());
      checkGoogleFirestoreAdminV1ImportDocumentsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1Index", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1Index();
      var od = new api.GoogleFirestoreAdminV1Index.fromJson(o.toJson());
      checkGoogleFirestoreAdminV1Index(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1IndexConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1IndexConfig();
      var od = new api.GoogleFirestoreAdminV1IndexConfig.fromJson(o.toJson());
      checkGoogleFirestoreAdminV1IndexConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1IndexConfigDelta", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1IndexConfigDelta();
      var od =
          new api.GoogleFirestoreAdminV1IndexConfigDelta.fromJson(o.toJson());
      checkGoogleFirestoreAdminV1IndexConfigDelta(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1IndexField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1IndexField();
      var od = new api.GoogleFirestoreAdminV1IndexField.fromJson(o.toJson());
      checkGoogleFirestoreAdminV1IndexField(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1IndexOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1IndexOperationMetadata();
      var od = new api.GoogleFirestoreAdminV1IndexOperationMetadata.fromJson(
          o.toJson());
      checkGoogleFirestoreAdminV1IndexOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1ListFieldsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1ListFieldsResponse();
      var od =
          new api.GoogleFirestoreAdminV1ListFieldsResponse.fromJson(o.toJson());
      checkGoogleFirestoreAdminV1ListFieldsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1ListIndexesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1ListIndexesResponse();
      var od = new api.GoogleFirestoreAdminV1ListIndexesResponse.fromJson(
          o.toJson());
      checkGoogleFirestoreAdminV1ListIndexesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1LocationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1LocationMetadata();
      var od =
          new api.GoogleFirestoreAdminV1LocationMetadata.fromJson(o.toJson());
      checkGoogleFirestoreAdminV1LocationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleFirestoreAdminV1Progress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFirestoreAdminV1Progress();
      var od = new api.GoogleFirestoreAdminV1Progress.fromJson(o.toJson());
      checkGoogleFirestoreAdminV1Progress(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningCancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningCancelOperationRequest();
      var od =
          new api.GoogleLongrunningCancelOperationRequest.fromJson(o.toJson());
      checkGoogleLongrunningCancelOperationRequest(od);
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

  unittest.group("obj-schema-LatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLng();
      var od = new api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });

  unittest.group("obj-schema-ListCollectionIdsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCollectionIdsRequest();
      var od = new api.ListCollectionIdsRequest.fromJson(o.toJson());
      checkListCollectionIdsRequest(od);
    });
  });

  unittest.group("obj-schema-ListCollectionIdsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCollectionIdsResponse();
      var od = new api.ListCollectionIdsResponse.fromJson(o.toJson());
      checkListCollectionIdsResponse(od);
    });
  });

  unittest.group("obj-schema-ListDocumentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDocumentsResponse();
      var od = new api.ListDocumentsResponse.fromJson(o.toJson());
      checkListDocumentsResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListenRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildListenRequest();
      var od = new api.ListenRequest.fromJson(o.toJson());
      checkListenRequest(od);
    });
  });

  unittest.group("obj-schema-ListenResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListenResponse();
      var od = new api.ListenResponse.fromJson(o.toJson());
      checkListenResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-MapValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildMapValue();
      var od = new api.MapValue.fromJson(o.toJson());
      checkMapValue(od);
    });
  });

  unittest.group("obj-schema-Order", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrder();
      var od = new api.Order.fromJson(o.toJson());
      checkOrder(od);
    });
  });

  unittest.group("obj-schema-Precondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrecondition();
      var od = new api.Precondition.fromJson(o.toJson());
      checkPrecondition(od);
    });
  });

  unittest.group("obj-schema-Projection", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjection();
      var od = new api.Projection.fromJson(o.toJson());
      checkProjection(od);
    });
  });

  unittest.group("obj-schema-QueryTarget", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryTarget();
      var od = new api.QueryTarget.fromJson(o.toJson());
      checkQueryTarget(od);
    });
  });

  unittest.group("obj-schema-ReadOnly", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadOnly();
      var od = new api.ReadOnly.fromJson(o.toJson());
      checkReadOnly(od);
    });
  });

  unittest.group("obj-schema-ReadWrite", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadWrite();
      var od = new api.ReadWrite.fromJson(o.toJson());
      checkReadWrite(od);
    });
  });

  unittest.group("obj-schema-RollbackRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollbackRequest();
      var od = new api.RollbackRequest.fromJson(o.toJson());
      checkRollbackRequest(od);
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

  unittest.group("obj-schema-StructuredQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildStructuredQuery();
      var od = new api.StructuredQuery.fromJson(o.toJson());
      checkStructuredQuery(od);
    });
  });

  unittest.group("obj-schema-Target", () {
    unittest.test("to-json--from-json", () {
      var o = buildTarget();
      var od = new api.Target.fromJson(o.toJson());
      checkTarget(od);
    });
  });

  unittest.group("obj-schema-TargetChange", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetChange();
      var od = new api.TargetChange.fromJson(o.toJson());
      checkTargetChange(od);
    });
  });

  unittest.group("obj-schema-TransactionOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransactionOptions();
      var od = new api.TransactionOptions.fromJson(o.toJson());
      checkTransactionOptions(od);
    });
  });

  unittest.group("obj-schema-UnaryFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnaryFilter();
      var od = new api.UnaryFilter.fromJson(o.toJson());
      checkUnaryFilter(od);
    });
  });

  unittest.group("obj-schema-Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildValue();
      var od = new api.Value.fromJson(o.toJson());
      checkValue(od);
    });
  });

  unittest.group("obj-schema-Write", () {
    unittest.test("to-json--from-json", () {
      var o = buildWrite();
      var od = new api.Write.fromJson(o.toJson());
      checkWrite(od);
    });
  });

  unittest.group("obj-schema-WriteRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteRequest();
      var od = new api.WriteRequest.fromJson(o.toJson());
      checkWriteRequest(od);
    });
  });

  unittest.group("obj-schema-WriteResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteResponse();
      var od = new api.WriteResponse.fromJson(o.toJson());
      checkWriteResponse(od);
    });
  });

  unittest.group("obj-schema-WriteResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteResult();
      var od = new api.WriteResult.fromJson(o.toJson());
      checkWriteResult(od);
    });
  });

  unittest.group("resource-ProjectsDatabasesResourceApi", () {
    unittest.test("method--exportDocuments", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesResourceApi res =
          new api.FirestoreApi(mock).projects.databases;
      var arg_request = buildGoogleFirestoreAdminV1ExportDocumentsRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleFirestoreAdminV1ExportDocumentsRequest.fromJson(json);
        checkGoogleFirestoreAdminV1ExportDocumentsRequest(obj);

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
          .exportDocuments(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--importDocuments", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesResourceApi res =
          new api.FirestoreApi(mock).projects.databases;
      var arg_request = buildGoogleFirestoreAdminV1ImportDocumentsRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleFirestoreAdminV1ImportDocumentsRequest.fromJson(json);
        checkGoogleFirestoreAdminV1ImportDocumentsRequest(obj);

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
          .importDocuments(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDatabasesCollectionGroupsFieldsResourceApi",
      () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesCollectionGroupsFieldsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.collectionGroups.fields;
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
        var resp = convert.json.encode(buildGoogleFirestoreAdminV1Field());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleFirestoreAdminV1Field(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesCollectionGroupsFieldsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.collectionGroups.fields;
      var arg_parent = "foo";
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
        var resp = convert.json
            .encode(buildGoogleFirestoreAdminV1ListFieldsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleFirestoreAdminV1ListFieldsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesCollectionGroupsFieldsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.collectionGroups.fields;
      var arg_request = buildGoogleFirestoreAdminV1Field();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleFirestoreAdminV1Field.fromJson(json);
        checkGoogleFirestoreAdminV1Field(obj);

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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDatabasesCollectionGroupsIndexesResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesCollectionGroupsIndexesResourceApi res =
          new api.FirestoreApi(mock)
              .projects
              .databases
              .collectionGroups
              .indexes;
      var arg_request = buildGoogleFirestoreAdminV1Index();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleFirestoreAdminV1Index.fromJson(json);
        checkGoogleFirestoreAdminV1Index(obj);

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
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesCollectionGroupsIndexesResourceApi res =
          new api.FirestoreApi(mock)
              .projects
              .databases
              .collectionGroups
              .indexes;
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
      api.ProjectsDatabasesCollectionGroupsIndexesResourceApi res =
          new api.FirestoreApi(mock)
              .projects
              .databases
              .collectionGroups
              .indexes;
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
        var resp = convert.json.encode(buildGoogleFirestoreAdminV1Index());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleFirestoreAdminV1Index(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesCollectionGroupsIndexesResourceApi res =
          new api.FirestoreApi(mock)
              .projects
              .databases
              .collectionGroups
              .indexes;
      var arg_parent = "foo";
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
        var resp = convert.json
            .encode(buildGoogleFirestoreAdminV1ListIndexesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleFirestoreAdminV1ListIndexesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDatabasesDocumentsResourceApi", () {
    unittest.test("method--batchGet", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_request = buildBatchGetDocumentsRequest();
      var arg_database = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchGetDocumentsRequest.fromJson(json);
        checkBatchGetDocumentsRequest(obj);

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
        var resp = convert.json.encode(buildBatchGetDocumentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(arg_request, arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetDocumentsResponse(response);
      })));
    });

    unittest.test("method--beginTransaction", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_request = buildBeginTransactionRequest();
      var arg_database = "foo";
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
        var resp = convert.json.encode(buildBeginTransactionResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .beginTransaction(arg_request, arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBeginTransactionResponse(response);
      })));
    });

    unittest.test("method--commit", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_request = buildCommitRequest();
      var arg_database = "foo";
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
        var resp = convert.json.encode(buildCommitResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .commit(arg_request, arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommitResponse(response);
      })));
    });

    unittest.test("method--createDocument", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_request = buildDocument();
      var arg_parent = "foo";
      var arg_collectionId = "foo";
      var arg_mask_fieldPaths = buildUnnamed2352();
      var arg_documentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Document.fromJson(json);
        checkDocument(obj);

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
            queryMap["mask.fieldPaths"], unittest.equals(arg_mask_fieldPaths));
        unittest.expect(
            queryMap["documentId"].first, unittest.equals(arg_documentId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDocument());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createDocument(arg_request, arg_parent, arg_collectionId,
              mask_fieldPaths: arg_mask_fieldPaths,
              documentId: arg_documentId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDocument(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_name = "foo";
      var arg_currentDocument_updateTime = "foo";
      var arg_currentDocument_exists = true;
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
        unittest.expect(queryMap["currentDocument.updateTime"].first,
            unittest.equals(arg_currentDocument_updateTime));
        unittest.expect(queryMap["currentDocument.exists"].first,
            unittest.equals("$arg_currentDocument_exists"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              currentDocument_updateTime: arg_currentDocument_updateTime,
              currentDocument_exists: arg_currentDocument_exists,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_name = "foo";
      var arg_mask_fieldPaths = buildUnnamed2353();
      var arg_readTime = "foo";
      var arg_transaction = "foo";
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
            queryMap["mask.fieldPaths"], unittest.equals(arg_mask_fieldPaths));
        unittest.expect(
            queryMap["readTime"].first, unittest.equals(arg_readTime));
        unittest.expect(
            queryMap["transaction"].first, unittest.equals(arg_transaction));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDocument());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              mask_fieldPaths: arg_mask_fieldPaths,
              readTime: arg_readTime,
              transaction: arg_transaction,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDocument(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_parent = "foo";
      var arg_collectionId = "foo";
      var arg_showMissing = true;
      var arg_mask_fieldPaths = buildUnnamed2354();
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_transaction = "foo";
      var arg_readTime = "foo";
      var arg_orderBy = "foo";
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
            queryMap["showMissing"].first, unittest.equals("$arg_showMissing"));
        unittest.expect(
            queryMap["mask.fieldPaths"], unittest.equals(arg_mask_fieldPaths));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["transaction"].first, unittest.equals(arg_transaction));
        unittest.expect(
            queryMap["readTime"].first, unittest.equals(arg_readTime));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDocumentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, arg_collectionId,
              showMissing: arg_showMissing,
              mask_fieldPaths: arg_mask_fieldPaths,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              transaction: arg_transaction,
              readTime: arg_readTime,
              orderBy: arg_orderBy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDocumentsResponse(response);
      })));
    });

    unittest.test("method--listCollectionIds", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_request = buildListCollectionIdsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ListCollectionIdsRequest.fromJson(json);
        checkListCollectionIdsRequest(obj);

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
        var resp = convert.json.encode(buildListCollectionIdsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listCollectionIds(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCollectionIdsResponse(response);
      })));
    });

    unittest.test("method--listen", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_request = buildListenRequest();
      var arg_database = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ListenRequest.fromJson(json);
        checkListenRequest(obj);

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
        var resp = convert.json.encode(buildListenResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listen(arg_request, arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListenResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_request = buildDocument();
      var arg_name = "foo";
      var arg_updateMask_fieldPaths = buildUnnamed2355();
      var arg_mask_fieldPaths = buildUnnamed2356();
      var arg_currentDocument_updateTime = "foo";
      var arg_currentDocument_exists = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Document.fromJson(json);
        checkDocument(obj);

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
        unittest.expect(queryMap["updateMask.fieldPaths"],
            unittest.equals(arg_updateMask_fieldPaths));
        unittest.expect(
            queryMap["mask.fieldPaths"], unittest.equals(arg_mask_fieldPaths));
        unittest.expect(queryMap["currentDocument.updateTime"].first,
            unittest.equals(arg_currentDocument_updateTime));
        unittest.expect(queryMap["currentDocument.exists"].first,
            unittest.equals("$arg_currentDocument_exists"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDocument());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask_fieldPaths: arg_updateMask_fieldPaths,
              mask_fieldPaths: arg_mask_fieldPaths,
              currentDocument_updateTime: arg_currentDocument_updateTime,
              currentDocument_exists: arg_currentDocument_exists,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDocument(response);
      })));
    });

    unittest.test("method--rollback", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_request = buildRollbackRequest();
      var arg_database = "foo";
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
          .rollback(arg_request, arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--runQuery", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_request = buildRunQueryRequest();
      var arg_parent = "foo";
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
        var resp = convert.json.encode(buildRunQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .runQuery(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRunQueryResponse(response);
      })));
    });

    unittest.test("method--write", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesDocumentsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.documents;
      var arg_request = buildWriteRequest();
      var arg_database = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WriteRequest.fromJson(json);
        checkWriteRequest(obj);

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
        var resp = convert.json.encode(buildWriteResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .write(arg_request, arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWriteResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDatabasesOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesOperationsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.operations;
      var arg_request = buildGoogleLongrunningCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleLongrunningCancelOperationRequest.fromJson(json);
        checkGoogleLongrunningCancelOperationRequest(obj);

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
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsDatabasesOperationsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.operations;
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
      api.ProjectsDatabasesOperationsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.operations;
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
      api.ProjectsDatabasesOperationsResourceApi res =
          new api.FirestoreApi(mock).projects.databases.operations;
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
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.FirestoreApi(mock).projects.locations;
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
        var resp = convert.json.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.FirestoreApi(mock).projects.locations;
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
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });
}
