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

import 'package:googleapis/firestore/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Value> buildUnnamed4525() => [
      buildValue(),
      buildValue(),
    ];

void checkUnnamed4525(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterArrayValue = 0;
api.ArrayValue buildArrayValue() {
  final o = api.ArrayValue();
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    o.values = buildUnnamed4525();
  }
  buildCounterArrayValue--;
  return o;
}

void checkArrayValue(api.ArrayValue o) {
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    checkUnnamed4525(o.values!);
  }
  buildCounterArrayValue--;
}

core.List<core.String> buildUnnamed4526() => [
      'foo',
      'foo',
    ];

void checkUnnamed4526(core.List<core.String> o) {
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

core.int buildCounterBatchGetDocumentsRequest = 0;
api.BatchGetDocumentsRequest buildBatchGetDocumentsRequest() {
  final o = api.BatchGetDocumentsRequest();
  buildCounterBatchGetDocumentsRequest++;
  if (buildCounterBatchGetDocumentsRequest < 3) {
    o.documents = buildUnnamed4526();
    o.mask = buildDocumentMask();
    o.newTransaction = buildTransactionOptions();
    o.readTime = 'foo';
    o.transaction = 'foo';
  }
  buildCounterBatchGetDocumentsRequest--;
  return o;
}

void checkBatchGetDocumentsRequest(api.BatchGetDocumentsRequest o) {
  buildCounterBatchGetDocumentsRequest++;
  if (buildCounterBatchGetDocumentsRequest < 3) {
    checkUnnamed4526(o.documents!);
    checkDocumentMask(o.mask!);
    checkTransactionOptions(o.newTransaction!);
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchGetDocumentsRequest--;
}

core.int buildCounterBatchGetDocumentsResponse = 0;
api.BatchGetDocumentsResponse buildBatchGetDocumentsResponse() {
  final o = api.BatchGetDocumentsResponse();
  buildCounterBatchGetDocumentsResponse++;
  if (buildCounterBatchGetDocumentsResponse < 3) {
    o.found = buildDocument();
    o.missing = 'foo';
    o.readTime = 'foo';
    o.transaction = 'foo';
  }
  buildCounterBatchGetDocumentsResponse--;
  return o;
}

void checkBatchGetDocumentsResponse(api.BatchGetDocumentsResponse o) {
  buildCounterBatchGetDocumentsResponse++;
  if (buildCounterBatchGetDocumentsResponse < 3) {
    checkDocument(o.found!);
    unittest.expect(
      o.missing!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchGetDocumentsResponse--;
}

core.Map<core.String, core.String> buildUnnamed4527() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4527(core.Map<core.String, core.String> o) {
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

core.List<api.Write> buildUnnamed4528() => [
      buildWrite(),
      buildWrite(),
    ];

void checkUnnamed4528(core.List<api.Write> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWrite(o[0]);
  checkWrite(o[1]);
}

core.int buildCounterBatchWriteRequest = 0;
api.BatchWriteRequest buildBatchWriteRequest() {
  final o = api.BatchWriteRequest();
  buildCounterBatchWriteRequest++;
  if (buildCounterBatchWriteRequest < 3) {
    o.labels = buildUnnamed4527();
    o.writes = buildUnnamed4528();
  }
  buildCounterBatchWriteRequest--;
  return o;
}

void checkBatchWriteRequest(api.BatchWriteRequest o) {
  buildCounterBatchWriteRequest++;
  if (buildCounterBatchWriteRequest < 3) {
    checkUnnamed4527(o.labels!);
    checkUnnamed4528(o.writes!);
  }
  buildCounterBatchWriteRequest--;
}

core.List<api.Status> buildUnnamed4529() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed4529(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.WriteResult> buildUnnamed4530() => [
      buildWriteResult(),
      buildWriteResult(),
    ];

void checkUnnamed4530(core.List<api.WriteResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWriteResult(o[0]);
  checkWriteResult(o[1]);
}

core.int buildCounterBatchWriteResponse = 0;
api.BatchWriteResponse buildBatchWriteResponse() {
  final o = api.BatchWriteResponse();
  buildCounterBatchWriteResponse++;
  if (buildCounterBatchWriteResponse < 3) {
    o.status = buildUnnamed4529();
    o.writeResults = buildUnnamed4530();
  }
  buildCounterBatchWriteResponse--;
  return o;
}

void checkBatchWriteResponse(api.BatchWriteResponse o) {
  buildCounterBatchWriteResponse++;
  if (buildCounterBatchWriteResponse < 3) {
    checkUnnamed4529(o.status!);
    checkUnnamed4530(o.writeResults!);
  }
  buildCounterBatchWriteResponse--;
}

core.int buildCounterBeginTransactionRequest = 0;
api.BeginTransactionRequest buildBeginTransactionRequest() {
  final o = api.BeginTransactionRequest();
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    o.options = buildTransactionOptions();
  }
  buildCounterBeginTransactionRequest--;
  return o;
}

void checkBeginTransactionRequest(api.BeginTransactionRequest o) {
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    checkTransactionOptions(o.options!);
  }
  buildCounterBeginTransactionRequest--;
}

core.int buildCounterBeginTransactionResponse = 0;
api.BeginTransactionResponse buildBeginTransactionResponse() {
  final o = api.BeginTransactionResponse();
  buildCounterBeginTransactionResponse++;
  if (buildCounterBeginTransactionResponse < 3) {
    o.transaction = 'foo';
  }
  buildCounterBeginTransactionResponse--;
  return o;
}

void checkBeginTransactionResponse(api.BeginTransactionResponse o) {
  buildCounterBeginTransactionResponse++;
  if (buildCounterBeginTransactionResponse < 3) {
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterBeginTransactionResponse--;
}

core.int buildCounterCollectionSelector = 0;
api.CollectionSelector buildCollectionSelector() {
  final o = api.CollectionSelector();
  buildCounterCollectionSelector++;
  if (buildCounterCollectionSelector < 3) {
    o.allDescendants = true;
    o.collectionId = 'foo';
  }
  buildCounterCollectionSelector--;
  return o;
}

void checkCollectionSelector(api.CollectionSelector o) {
  buildCounterCollectionSelector++;
  if (buildCounterCollectionSelector < 3) {
    unittest.expect(o.allDescendants!, unittest.isTrue);
    unittest.expect(
      o.collectionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCollectionSelector--;
}

core.List<api.Write> buildUnnamed4531() => [
      buildWrite(),
      buildWrite(),
    ];

void checkUnnamed4531(core.List<api.Write> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWrite(o[0]);
  checkWrite(o[1]);
}

core.int buildCounterCommitRequest = 0;
api.CommitRequest buildCommitRequest() {
  final o = api.CommitRequest();
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    o.transaction = 'foo';
    o.writes = buildUnnamed4531();
  }
  buildCounterCommitRequest--;
  return o;
}

void checkCommitRequest(api.CommitRequest o) {
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
    checkUnnamed4531(o.writes!);
  }
  buildCounterCommitRequest--;
}

core.List<api.WriteResult> buildUnnamed4532() => [
      buildWriteResult(),
      buildWriteResult(),
    ];

void checkUnnamed4532(core.List<api.WriteResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWriteResult(o[0]);
  checkWriteResult(o[1]);
}

core.int buildCounterCommitResponse = 0;
api.CommitResponse buildCommitResponse() {
  final o = api.CommitResponse();
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    o.commitTime = 'foo';
    o.writeResults = buildUnnamed4532();
  }
  buildCounterCommitResponse--;
  return o;
}

void checkCommitResponse(api.CommitResponse o) {
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    unittest.expect(
      o.commitTime!,
      unittest.equals('foo'),
    );
    checkUnnamed4532(o.writeResults!);
  }
  buildCounterCommitResponse--;
}

core.List<api.Filter> buildUnnamed4533() => [
      buildFilter(),
      buildFilter(),
    ];

void checkUnnamed4533(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterCompositeFilter = 0;
api.CompositeFilter buildCompositeFilter() {
  final o = api.CompositeFilter();
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    o.filters = buildUnnamed4533();
    o.op = 'foo';
  }
  buildCounterCompositeFilter--;
  return o;
}

void checkCompositeFilter(api.CompositeFilter o) {
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    checkUnnamed4533(o.filters!);
    unittest.expect(
      o.op!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompositeFilter--;
}

core.List<api.Value> buildUnnamed4534() => [
      buildValue(),
      buildValue(),
    ];

void checkUnnamed4534(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterCursor = 0;
api.Cursor buildCursor() {
  final o = api.Cursor();
  buildCounterCursor++;
  if (buildCounterCursor < 3) {
    o.before = true;
    o.values = buildUnnamed4534();
  }
  buildCounterCursor--;
  return o;
}

void checkCursor(api.Cursor o) {
  buildCounterCursor++;
  if (buildCounterCursor < 3) {
    unittest.expect(o.before!, unittest.isTrue);
    checkUnnamed4534(o.values!);
  }
  buildCounterCursor--;
}

core.Map<core.String, api.Value> buildUnnamed4535() => {
      'x': buildValue(),
      'y': buildValue(),
    };

void checkUnnamed4535(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o['x']!);
  checkValue(o['y']!);
}

core.int buildCounterDocument = 0;
api.Document buildDocument() {
  final o = api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.createTime = 'foo';
    o.fields = buildUnnamed4535();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterDocument--;
  return o;
}

void checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed4535(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocument--;
}

core.List<core.int> buildUnnamed4536() => [
      42,
      42,
    ];

void checkUnnamed4536(core.List<core.int> o) {
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

core.List<core.int> buildUnnamed4537() => [
      42,
      42,
    ];

void checkUnnamed4537(core.List<core.int> o) {
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

core.int buildCounterDocumentChange = 0;
api.DocumentChange buildDocumentChange() {
  final o = api.DocumentChange();
  buildCounterDocumentChange++;
  if (buildCounterDocumentChange < 3) {
    o.document = buildDocument();
    o.removedTargetIds = buildUnnamed4536();
    o.targetIds = buildUnnamed4537();
  }
  buildCounterDocumentChange--;
  return o;
}

void checkDocumentChange(api.DocumentChange o) {
  buildCounterDocumentChange++;
  if (buildCounterDocumentChange < 3) {
    checkDocument(o.document!);
    checkUnnamed4536(o.removedTargetIds!);
    checkUnnamed4537(o.targetIds!);
  }
  buildCounterDocumentChange--;
}

core.List<core.int> buildUnnamed4538() => [
      42,
      42,
    ];

void checkUnnamed4538(core.List<core.int> o) {
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

core.int buildCounterDocumentDelete = 0;
api.DocumentDelete buildDocumentDelete() {
  final o = api.DocumentDelete();
  buildCounterDocumentDelete++;
  if (buildCounterDocumentDelete < 3) {
    o.document = 'foo';
    o.readTime = 'foo';
    o.removedTargetIds = buildUnnamed4538();
  }
  buildCounterDocumentDelete--;
  return o;
}

void checkDocumentDelete(api.DocumentDelete o) {
  buildCounterDocumentDelete++;
  if (buildCounterDocumentDelete < 3) {
    unittest.expect(
      o.document!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    checkUnnamed4538(o.removedTargetIds!);
  }
  buildCounterDocumentDelete--;
}

core.List<core.String> buildUnnamed4539() => [
      'foo',
      'foo',
    ];

void checkUnnamed4539(core.List<core.String> o) {
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

core.int buildCounterDocumentMask = 0;
api.DocumentMask buildDocumentMask() {
  final o = api.DocumentMask();
  buildCounterDocumentMask++;
  if (buildCounterDocumentMask < 3) {
    o.fieldPaths = buildUnnamed4539();
  }
  buildCounterDocumentMask--;
  return o;
}

void checkDocumentMask(api.DocumentMask o) {
  buildCounterDocumentMask++;
  if (buildCounterDocumentMask < 3) {
    checkUnnamed4539(o.fieldPaths!);
  }
  buildCounterDocumentMask--;
}

core.List<core.int> buildUnnamed4540() => [
      42,
      42,
    ];

void checkUnnamed4540(core.List<core.int> o) {
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

core.int buildCounterDocumentRemove = 0;
api.DocumentRemove buildDocumentRemove() {
  final o = api.DocumentRemove();
  buildCounterDocumentRemove++;
  if (buildCounterDocumentRemove < 3) {
    o.document = 'foo';
    o.readTime = 'foo';
    o.removedTargetIds = buildUnnamed4540();
  }
  buildCounterDocumentRemove--;
  return o;
}

void checkDocumentRemove(api.DocumentRemove o) {
  buildCounterDocumentRemove++;
  if (buildCounterDocumentRemove < 3) {
    unittest.expect(
      o.document!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    checkUnnamed4540(o.removedTargetIds!);
  }
  buildCounterDocumentRemove--;
}

core.List<api.FieldTransform> buildUnnamed4541() => [
      buildFieldTransform(),
      buildFieldTransform(),
    ];

void checkUnnamed4541(core.List<api.FieldTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldTransform(o[0]);
  checkFieldTransform(o[1]);
}

core.int buildCounterDocumentTransform = 0;
api.DocumentTransform buildDocumentTransform() {
  final o = api.DocumentTransform();
  buildCounterDocumentTransform++;
  if (buildCounterDocumentTransform < 3) {
    o.document = 'foo';
    o.fieldTransforms = buildUnnamed4541();
  }
  buildCounterDocumentTransform--;
  return o;
}

void checkDocumentTransform(api.DocumentTransform o) {
  buildCounterDocumentTransform++;
  if (buildCounterDocumentTransform < 3) {
    unittest.expect(
      o.document!,
      unittest.equals('foo'),
    );
    checkUnnamed4541(o.fieldTransforms!);
  }
  buildCounterDocumentTransform--;
}

core.List<core.String> buildUnnamed4542() => [
      'foo',
      'foo',
    ];

void checkUnnamed4542(core.List<core.String> o) {
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

core.int buildCounterDocumentsTarget = 0;
api.DocumentsTarget buildDocumentsTarget() {
  final o = api.DocumentsTarget();
  buildCounterDocumentsTarget++;
  if (buildCounterDocumentsTarget < 3) {
    o.documents = buildUnnamed4542();
  }
  buildCounterDocumentsTarget--;
  return o;
}

void checkDocumentsTarget(api.DocumentsTarget o) {
  buildCounterDocumentsTarget++;
  if (buildCounterDocumentsTarget < 3) {
    checkUnnamed4542(o.documents!);
  }
  buildCounterDocumentsTarget--;
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

core.int buildCounterExistenceFilter = 0;
api.ExistenceFilter buildExistenceFilter() {
  final o = api.ExistenceFilter();
  buildCounterExistenceFilter++;
  if (buildCounterExistenceFilter < 3) {
    o.count = 42;
    o.targetId = 42;
  }
  buildCounterExistenceFilter--;
  return o;
}

void checkExistenceFilter(api.ExistenceFilter o) {
  buildCounterExistenceFilter++;
  if (buildCounterExistenceFilter < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.targetId!,
      unittest.equals(42),
    );
  }
  buildCounterExistenceFilter--;
}

core.int buildCounterFieldFilter = 0;
api.FieldFilter buildFieldFilter() {
  final o = api.FieldFilter();
  buildCounterFieldFilter++;
  if (buildCounterFieldFilter < 3) {
    o.field = buildFieldReference();
    o.op = 'foo';
    o.value = buildValue();
  }
  buildCounterFieldFilter--;
  return o;
}

void checkFieldFilter(api.FieldFilter o) {
  buildCounterFieldFilter++;
  if (buildCounterFieldFilter < 3) {
    checkFieldReference(o.field!);
    unittest.expect(
      o.op!,
      unittest.equals('foo'),
    );
    checkValue(o.value!);
  }
  buildCounterFieldFilter--;
}

core.int buildCounterFieldReference = 0;
api.FieldReference buildFieldReference() {
  final o = api.FieldReference();
  buildCounterFieldReference++;
  if (buildCounterFieldReference < 3) {
    o.fieldPath = 'foo';
  }
  buildCounterFieldReference--;
  return o;
}

void checkFieldReference(api.FieldReference o) {
  buildCounterFieldReference++;
  if (buildCounterFieldReference < 3) {
    unittest.expect(
      o.fieldPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterFieldReference--;
}

core.int buildCounterFieldTransform = 0;
api.FieldTransform buildFieldTransform() {
  final o = api.FieldTransform();
  buildCounterFieldTransform++;
  if (buildCounterFieldTransform < 3) {
    o.appendMissingElements = buildArrayValue();
    o.fieldPath = 'foo';
    o.increment = buildValue();
    o.maximum = buildValue();
    o.minimum = buildValue();
    o.removeAllFromArray = buildArrayValue();
    o.setToServerValue = 'foo';
  }
  buildCounterFieldTransform--;
  return o;
}

void checkFieldTransform(api.FieldTransform o) {
  buildCounterFieldTransform++;
  if (buildCounterFieldTransform < 3) {
    checkArrayValue(o.appendMissingElements!);
    unittest.expect(
      o.fieldPath!,
      unittest.equals('foo'),
    );
    checkValue(o.increment!);
    checkValue(o.maximum!);
    checkValue(o.minimum!);
    checkArrayValue(o.removeAllFromArray!);
    unittest.expect(
      o.setToServerValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterFieldTransform--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  final o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.compositeFilter = buildCompositeFilter();
    o.fieldFilter = buildFieldFilter();
    o.unaryFilter = buildUnaryFilter();
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkCompositeFilter(o.compositeFilter!);
    checkFieldFilter(o.fieldFilter!);
    checkUnaryFilter(o.unaryFilter!);
  }
  buildCounterFilter--;
}

core.List<core.String> buildUnnamed4543() => [
      'foo',
      'foo',
    ];

void checkUnnamed4543(core.List<core.String> o) {
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

core.int buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata = 0;
api.GoogleFirestoreAdminV1ExportDocumentsMetadata
    buildGoogleFirestoreAdminV1ExportDocumentsMetadata() {
  final o = api.GoogleFirestoreAdminV1ExportDocumentsMetadata();
  buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata < 3) {
    o.collectionIds = buildUnnamed4543();
    o.endTime = 'foo';
    o.operationState = 'foo';
    o.outputUriPrefix = 'foo';
    o.progressBytes = buildGoogleFirestoreAdminV1Progress();
    o.progressDocuments = buildGoogleFirestoreAdminV1Progress();
    o.startTime = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata--;
  return o;
}

void checkGoogleFirestoreAdminV1ExportDocumentsMetadata(
    api.GoogleFirestoreAdminV1ExportDocumentsMetadata o) {
  buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata < 3) {
    checkUnnamed4543(o.collectionIds!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputUriPrefix!,
      unittest.equals('foo'),
    );
    checkGoogleFirestoreAdminV1Progress(o.progressBytes!);
    checkGoogleFirestoreAdminV1Progress(o.progressDocuments!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsMetadata--;
}

core.List<core.String> buildUnnamed4544() => [
      'foo',
      'foo',
    ];

void checkUnnamed4544(core.List<core.String> o) {
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

core.int buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest = 0;
api.GoogleFirestoreAdminV1ExportDocumentsRequest
    buildGoogleFirestoreAdminV1ExportDocumentsRequest() {
  final o = api.GoogleFirestoreAdminV1ExportDocumentsRequest();
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest < 3) {
    o.collectionIds = buildUnnamed4544();
    o.outputUriPrefix = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest--;
  return o;
}

void checkGoogleFirestoreAdminV1ExportDocumentsRequest(
    api.GoogleFirestoreAdminV1ExportDocumentsRequest o) {
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest < 3) {
    checkUnnamed4544(o.collectionIds!);
    unittest.expect(
      o.outputUriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest--;
}

core.int buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse = 0;
api.GoogleFirestoreAdminV1ExportDocumentsResponse
    buildGoogleFirestoreAdminV1ExportDocumentsResponse() {
  final o = api.GoogleFirestoreAdminV1ExportDocumentsResponse();
  buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse < 3) {
    o.outputUriPrefix = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1ExportDocumentsResponse(
    api.GoogleFirestoreAdminV1ExportDocumentsResponse o) {
  buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse < 3) {
    unittest.expect(
      o.outputUriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsResponse--;
}

core.int buildCounterGoogleFirestoreAdminV1Field = 0;
api.GoogleFirestoreAdminV1Field buildGoogleFirestoreAdminV1Field() {
  final o = api.GoogleFirestoreAdminV1Field();
  buildCounterGoogleFirestoreAdminV1Field++;
  if (buildCounterGoogleFirestoreAdminV1Field < 3) {
    o.indexConfig = buildGoogleFirestoreAdminV1IndexConfig();
    o.name = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1Field--;
  return o;
}

void checkGoogleFirestoreAdminV1Field(api.GoogleFirestoreAdminV1Field o) {
  buildCounterGoogleFirestoreAdminV1Field++;
  if (buildCounterGoogleFirestoreAdminV1Field < 3) {
    checkGoogleFirestoreAdminV1IndexConfig(o.indexConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1Field--;
}

core.List<api.GoogleFirestoreAdminV1IndexConfigDelta> buildUnnamed4545() => [
      buildGoogleFirestoreAdminV1IndexConfigDelta(),
      buildGoogleFirestoreAdminV1IndexConfigDelta(),
    ];

void checkUnnamed4545(core.List<api.GoogleFirestoreAdminV1IndexConfigDelta> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1IndexConfigDelta(o[0]);
  checkGoogleFirestoreAdminV1IndexConfigDelta(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1FieldOperationMetadata = 0;
api.GoogleFirestoreAdminV1FieldOperationMetadata
    buildGoogleFirestoreAdminV1FieldOperationMetadata() {
  final o = api.GoogleFirestoreAdminV1FieldOperationMetadata();
  buildCounterGoogleFirestoreAdminV1FieldOperationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1FieldOperationMetadata < 3) {
    o.endTime = 'foo';
    o.field = 'foo';
    o.indexConfigDeltas = buildUnnamed4545();
    o.progressBytes = buildGoogleFirestoreAdminV1Progress();
    o.progressDocuments = buildGoogleFirestoreAdminV1Progress();
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1FieldOperationMetadata--;
  return o;
}

void checkGoogleFirestoreAdminV1FieldOperationMetadata(
    api.GoogleFirestoreAdminV1FieldOperationMetadata o) {
  buildCounterGoogleFirestoreAdminV1FieldOperationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1FieldOperationMetadata < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    checkUnnamed4545(o.indexConfigDeltas!);
    checkGoogleFirestoreAdminV1Progress(o.progressBytes!);
    checkGoogleFirestoreAdminV1Progress(o.progressDocuments!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1FieldOperationMetadata--;
}

core.List<core.String> buildUnnamed4546() => [
      'foo',
      'foo',
    ];

void checkUnnamed4546(core.List<core.String> o) {
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

core.int buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata = 0;
api.GoogleFirestoreAdminV1ImportDocumentsMetadata
    buildGoogleFirestoreAdminV1ImportDocumentsMetadata() {
  final o = api.GoogleFirestoreAdminV1ImportDocumentsMetadata();
  buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata++;
  if (buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata < 3) {
    o.collectionIds = buildUnnamed4546();
    o.endTime = 'foo';
    o.inputUriPrefix = 'foo';
    o.operationState = 'foo';
    o.progressBytes = buildGoogleFirestoreAdminV1Progress();
    o.progressDocuments = buildGoogleFirestoreAdminV1Progress();
    o.startTime = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata--;
  return o;
}

void checkGoogleFirestoreAdminV1ImportDocumentsMetadata(
    api.GoogleFirestoreAdminV1ImportDocumentsMetadata o) {
  buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata++;
  if (buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata < 3) {
    checkUnnamed4546(o.collectionIds!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputUriPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationState!,
      unittest.equals('foo'),
    );
    checkGoogleFirestoreAdminV1Progress(o.progressBytes!);
    checkGoogleFirestoreAdminV1Progress(o.progressDocuments!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1ImportDocumentsMetadata--;
}

core.List<core.String> buildUnnamed4547() => [
      'foo',
      'foo',
    ];

void checkUnnamed4547(core.List<core.String> o) {
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

core.int buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest = 0;
api.GoogleFirestoreAdminV1ImportDocumentsRequest
    buildGoogleFirestoreAdminV1ImportDocumentsRequest() {
  final o = api.GoogleFirestoreAdminV1ImportDocumentsRequest();
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest < 3) {
    o.collectionIds = buildUnnamed4547();
    o.inputUriPrefix = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest--;
  return o;
}

void checkGoogleFirestoreAdminV1ImportDocumentsRequest(
    api.GoogleFirestoreAdminV1ImportDocumentsRequest o) {
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest < 3) {
    checkUnnamed4547(o.collectionIds!);
    unittest.expect(
      o.inputUriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest--;
}

core.List<api.GoogleFirestoreAdminV1IndexField> buildUnnamed4548() => [
      buildGoogleFirestoreAdminV1IndexField(),
      buildGoogleFirestoreAdminV1IndexField(),
    ];

void checkUnnamed4548(core.List<api.GoogleFirestoreAdminV1IndexField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1IndexField(o[0]);
  checkGoogleFirestoreAdminV1IndexField(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1Index = 0;
api.GoogleFirestoreAdminV1Index buildGoogleFirestoreAdminV1Index() {
  final o = api.GoogleFirestoreAdminV1Index();
  buildCounterGoogleFirestoreAdminV1Index++;
  if (buildCounterGoogleFirestoreAdminV1Index < 3) {
    o.fields = buildUnnamed4548();
    o.name = 'foo';
    o.queryScope = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1Index--;
  return o;
}

void checkGoogleFirestoreAdminV1Index(api.GoogleFirestoreAdminV1Index o) {
  buildCounterGoogleFirestoreAdminV1Index++;
  if (buildCounterGoogleFirestoreAdminV1Index < 3) {
    checkUnnamed4548(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.queryScope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1Index--;
}

core.List<api.GoogleFirestoreAdminV1Index> buildUnnamed4549() => [
      buildGoogleFirestoreAdminV1Index(),
      buildGoogleFirestoreAdminV1Index(),
    ];

void checkUnnamed4549(core.List<api.GoogleFirestoreAdminV1Index> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1Index(o[0]);
  checkGoogleFirestoreAdminV1Index(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1IndexConfig = 0;
api.GoogleFirestoreAdminV1IndexConfig buildGoogleFirestoreAdminV1IndexConfig() {
  final o = api.GoogleFirestoreAdminV1IndexConfig();
  buildCounterGoogleFirestoreAdminV1IndexConfig++;
  if (buildCounterGoogleFirestoreAdminV1IndexConfig < 3) {
    o.ancestorField = 'foo';
    o.indexes = buildUnnamed4549();
    o.reverting = true;
    o.usesAncestorConfig = true;
  }
  buildCounterGoogleFirestoreAdminV1IndexConfig--;
  return o;
}

void checkGoogleFirestoreAdminV1IndexConfig(
    api.GoogleFirestoreAdminV1IndexConfig o) {
  buildCounterGoogleFirestoreAdminV1IndexConfig++;
  if (buildCounterGoogleFirestoreAdminV1IndexConfig < 3) {
    unittest.expect(
      o.ancestorField!,
      unittest.equals('foo'),
    );
    checkUnnamed4549(o.indexes!);
    unittest.expect(o.reverting!, unittest.isTrue);
    unittest.expect(o.usesAncestorConfig!, unittest.isTrue);
  }
  buildCounterGoogleFirestoreAdminV1IndexConfig--;
}

core.int buildCounterGoogleFirestoreAdminV1IndexConfigDelta = 0;
api.GoogleFirestoreAdminV1IndexConfigDelta
    buildGoogleFirestoreAdminV1IndexConfigDelta() {
  final o = api.GoogleFirestoreAdminV1IndexConfigDelta();
  buildCounterGoogleFirestoreAdminV1IndexConfigDelta++;
  if (buildCounterGoogleFirestoreAdminV1IndexConfigDelta < 3) {
    o.changeType = 'foo';
    o.index = buildGoogleFirestoreAdminV1Index();
  }
  buildCounterGoogleFirestoreAdminV1IndexConfigDelta--;
  return o;
}

void checkGoogleFirestoreAdminV1IndexConfigDelta(
    api.GoogleFirestoreAdminV1IndexConfigDelta o) {
  buildCounterGoogleFirestoreAdminV1IndexConfigDelta++;
  if (buildCounterGoogleFirestoreAdminV1IndexConfigDelta < 3) {
    unittest.expect(
      o.changeType!,
      unittest.equals('foo'),
    );
    checkGoogleFirestoreAdminV1Index(o.index!);
  }
  buildCounterGoogleFirestoreAdminV1IndexConfigDelta--;
}

core.int buildCounterGoogleFirestoreAdminV1IndexField = 0;
api.GoogleFirestoreAdminV1IndexField buildGoogleFirestoreAdminV1IndexField() {
  final o = api.GoogleFirestoreAdminV1IndexField();
  buildCounterGoogleFirestoreAdminV1IndexField++;
  if (buildCounterGoogleFirestoreAdminV1IndexField < 3) {
    o.arrayConfig = 'foo';
    o.fieldPath = 'foo';
    o.order = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1IndexField--;
  return o;
}

void checkGoogleFirestoreAdminV1IndexField(
    api.GoogleFirestoreAdminV1IndexField o) {
  buildCounterGoogleFirestoreAdminV1IndexField++;
  if (buildCounterGoogleFirestoreAdminV1IndexField < 3) {
    unittest.expect(
      o.arrayConfig!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.order!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1IndexField--;
}

core.int buildCounterGoogleFirestoreAdminV1IndexOperationMetadata = 0;
api.GoogleFirestoreAdminV1IndexOperationMetadata
    buildGoogleFirestoreAdminV1IndexOperationMetadata() {
  final o = api.GoogleFirestoreAdminV1IndexOperationMetadata();
  buildCounterGoogleFirestoreAdminV1IndexOperationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1IndexOperationMetadata < 3) {
    o.endTime = 'foo';
    o.index = 'foo';
    o.progressBytes = buildGoogleFirestoreAdminV1Progress();
    o.progressDocuments = buildGoogleFirestoreAdminV1Progress();
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1IndexOperationMetadata--;
  return o;
}

void checkGoogleFirestoreAdminV1IndexOperationMetadata(
    api.GoogleFirestoreAdminV1IndexOperationMetadata o) {
  buildCounterGoogleFirestoreAdminV1IndexOperationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1IndexOperationMetadata < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.index!,
      unittest.equals('foo'),
    );
    checkGoogleFirestoreAdminV1Progress(o.progressBytes!);
    checkGoogleFirestoreAdminV1Progress(o.progressDocuments!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1IndexOperationMetadata--;
}

core.List<api.GoogleFirestoreAdminV1Field> buildUnnamed4550() => [
      buildGoogleFirestoreAdminV1Field(),
      buildGoogleFirestoreAdminV1Field(),
    ];

void checkUnnamed4550(core.List<api.GoogleFirestoreAdminV1Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1Field(o[0]);
  checkGoogleFirestoreAdminV1Field(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1ListFieldsResponse = 0;
api.GoogleFirestoreAdminV1ListFieldsResponse
    buildGoogleFirestoreAdminV1ListFieldsResponse() {
  final o = api.GoogleFirestoreAdminV1ListFieldsResponse();
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListFieldsResponse < 3) {
    o.fields = buildUnnamed4550();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1ListFieldsResponse(
    api.GoogleFirestoreAdminV1ListFieldsResponse o) {
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListFieldsResponse < 3) {
    checkUnnamed4550(o.fields!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse--;
}

core.List<api.GoogleFirestoreAdminV1Index> buildUnnamed4551() => [
      buildGoogleFirestoreAdminV1Index(),
      buildGoogleFirestoreAdminV1Index(),
    ];

void checkUnnamed4551(core.List<api.GoogleFirestoreAdminV1Index> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1Index(o[0]);
  checkGoogleFirestoreAdminV1Index(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1ListIndexesResponse = 0;
api.GoogleFirestoreAdminV1ListIndexesResponse
    buildGoogleFirestoreAdminV1ListIndexesResponse() {
  final o = api.GoogleFirestoreAdminV1ListIndexesResponse();
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListIndexesResponse < 3) {
    o.indexes = buildUnnamed4551();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1ListIndexesResponse(
    api.GoogleFirestoreAdminV1ListIndexesResponse o) {
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListIndexesResponse < 3) {
    checkUnnamed4551(o.indexes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse--;
}

core.int buildCounterGoogleFirestoreAdminV1LocationMetadata = 0;
api.GoogleFirestoreAdminV1LocationMetadata
    buildGoogleFirestoreAdminV1LocationMetadata() {
  final o = api.GoogleFirestoreAdminV1LocationMetadata();
  buildCounterGoogleFirestoreAdminV1LocationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1LocationMetadata < 3) {}
  buildCounterGoogleFirestoreAdminV1LocationMetadata--;
  return o;
}

void checkGoogleFirestoreAdminV1LocationMetadata(
    api.GoogleFirestoreAdminV1LocationMetadata o) {
  buildCounterGoogleFirestoreAdminV1LocationMetadata++;
  if (buildCounterGoogleFirestoreAdminV1LocationMetadata < 3) {}
  buildCounterGoogleFirestoreAdminV1LocationMetadata--;
}

core.int buildCounterGoogleFirestoreAdminV1Progress = 0;
api.GoogleFirestoreAdminV1Progress buildGoogleFirestoreAdminV1Progress() {
  final o = api.GoogleFirestoreAdminV1Progress();
  buildCounterGoogleFirestoreAdminV1Progress++;
  if (buildCounterGoogleFirestoreAdminV1Progress < 3) {
    o.completedWork = 'foo';
    o.estimatedWork = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1Progress--;
  return o;
}

void checkGoogleFirestoreAdminV1Progress(api.GoogleFirestoreAdminV1Progress o) {
  buildCounterGoogleFirestoreAdminV1Progress++;
  if (buildCounterGoogleFirestoreAdminV1Progress < 3) {
    unittest.expect(
      o.completedWork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.estimatedWork!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1Progress--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
    buildGoogleLongrunningCancelOperationRequest() {
  final o = api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

void checkGoogleLongrunningCancelOperationRequest(
    api.GoogleLongrunningCancelOperationRequest o) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed4552() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed4552(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed4552();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4552(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed4553() => {
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

void checkUnnamed4553(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed4554() => {
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

void checkUnnamed4554(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed4553();
    o.name = 'foo';
    o.response = buildUnnamed4554();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed4553(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4554(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  final o = api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

void checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterLatLng--;
}

core.int buildCounterListCollectionIdsRequest = 0;
api.ListCollectionIdsRequest buildListCollectionIdsRequest() {
  final o = api.ListCollectionIdsRequest();
  buildCounterListCollectionIdsRequest++;
  if (buildCounterListCollectionIdsRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterListCollectionIdsRequest--;
  return o;
}

void checkListCollectionIdsRequest(api.ListCollectionIdsRequest o) {
  buildCounterListCollectionIdsRequest++;
  if (buildCounterListCollectionIdsRequest < 3) {
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCollectionIdsRequest--;
}

core.List<core.String> buildUnnamed4555() => [
      'foo',
      'foo',
    ];

void checkUnnamed4555(core.List<core.String> o) {
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

core.int buildCounterListCollectionIdsResponse = 0;
api.ListCollectionIdsResponse buildListCollectionIdsResponse() {
  final o = api.ListCollectionIdsResponse();
  buildCounterListCollectionIdsResponse++;
  if (buildCounterListCollectionIdsResponse < 3) {
    o.collectionIds = buildUnnamed4555();
    o.nextPageToken = 'foo';
  }
  buildCounterListCollectionIdsResponse--;
  return o;
}

void checkListCollectionIdsResponse(api.ListCollectionIdsResponse o) {
  buildCounterListCollectionIdsResponse++;
  if (buildCounterListCollectionIdsResponse < 3) {
    checkUnnamed4555(o.collectionIds!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCollectionIdsResponse--;
}

core.List<api.Document> buildUnnamed4556() => [
      buildDocument(),
      buildDocument(),
    ];

void checkUnnamed4556(core.List<api.Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocument(o[0]);
  checkDocument(o[1]);
}

core.int buildCounterListDocumentsResponse = 0;
api.ListDocumentsResponse buildListDocumentsResponse() {
  final o = api.ListDocumentsResponse();
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    o.documents = buildUnnamed4556();
    o.nextPageToken = 'foo';
  }
  buildCounterListDocumentsResponse--;
  return o;
}

void checkListDocumentsResponse(api.ListDocumentsResponse o) {
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    checkUnnamed4556(o.documents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDocumentsResponse--;
}

core.List<api.Location> buildUnnamed4557() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed4557(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed4557();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed4557(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed4558() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4558(core.Map<core.String, core.String> o) {
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

core.int buildCounterListenRequest = 0;
api.ListenRequest buildListenRequest() {
  final o = api.ListenRequest();
  buildCounterListenRequest++;
  if (buildCounterListenRequest < 3) {
    o.addTarget = buildTarget();
    o.labels = buildUnnamed4558();
    o.removeTarget = 42;
  }
  buildCounterListenRequest--;
  return o;
}

void checkListenRequest(api.ListenRequest o) {
  buildCounterListenRequest++;
  if (buildCounterListenRequest < 3) {
    checkTarget(o.addTarget!);
    checkUnnamed4558(o.labels!);
    unittest.expect(
      o.removeTarget!,
      unittest.equals(42),
    );
  }
  buildCounterListenRequest--;
}

core.int buildCounterListenResponse = 0;
api.ListenResponse buildListenResponse() {
  final o = api.ListenResponse();
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

void checkListenResponse(api.ListenResponse o) {
  buildCounterListenResponse++;
  if (buildCounterListenResponse < 3) {
    checkDocumentChange(o.documentChange!);
    checkDocumentDelete(o.documentDelete!);
    checkDocumentRemove(o.documentRemove!);
    checkExistenceFilter(o.filter!);
    checkTargetChange(o.targetChange!);
  }
  buildCounterListenResponse--;
}

core.Map<core.String, core.String> buildUnnamed4559() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4559(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed4560() => {
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

void checkUnnamed4560(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed4559();
    o.locationId = 'foo';
    o.metadata = buildUnnamed4560();
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
    checkUnnamed4559(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed4560(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, api.Value> buildUnnamed4561() => {
      'x': buildValue(),
      'y': buildValue(),
    };

void checkUnnamed4561(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o['x']!);
  checkValue(o['y']!);
}

core.int buildCounterMapValue = 0;
api.MapValue buildMapValue() {
  final o = api.MapValue();
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    o.fields = buildUnnamed4561();
  }
  buildCounterMapValue--;
  return o;
}

void checkMapValue(api.MapValue o) {
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    checkUnnamed4561(o.fields!);
  }
  buildCounterMapValue--;
}

core.int buildCounterOrder = 0;
api.Order buildOrder() {
  final o = api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.direction = 'foo';
    o.field = buildFieldReference();
  }
  buildCounterOrder--;
  return o;
}

void checkOrder(api.Order o) {
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    unittest.expect(
      o.direction!,
      unittest.equals('foo'),
    );
    checkFieldReference(o.field!);
  }
  buildCounterOrder--;
}

core.int buildCounterPartitionQueryRequest = 0;
api.PartitionQueryRequest buildPartitionQueryRequest() {
  final o = api.PartitionQueryRequest();
  buildCounterPartitionQueryRequest++;
  if (buildCounterPartitionQueryRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.partitionCount = 'foo';
    o.structuredQuery = buildStructuredQuery();
  }
  buildCounterPartitionQueryRequest--;
  return o;
}

void checkPartitionQueryRequest(api.PartitionQueryRequest o) {
  buildCounterPartitionQueryRequest++;
  if (buildCounterPartitionQueryRequest < 3) {
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partitionCount!,
      unittest.equals('foo'),
    );
    checkStructuredQuery(o.structuredQuery!);
  }
  buildCounterPartitionQueryRequest--;
}

core.List<api.Cursor> buildUnnamed4562() => [
      buildCursor(),
      buildCursor(),
    ];

void checkUnnamed4562(core.List<api.Cursor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCursor(o[0]);
  checkCursor(o[1]);
}

core.int buildCounterPartitionQueryResponse = 0;
api.PartitionQueryResponse buildPartitionQueryResponse() {
  final o = api.PartitionQueryResponse();
  buildCounterPartitionQueryResponse++;
  if (buildCounterPartitionQueryResponse < 3) {
    o.nextPageToken = 'foo';
    o.partitions = buildUnnamed4562();
  }
  buildCounterPartitionQueryResponse--;
  return o;
}

void checkPartitionQueryResponse(api.PartitionQueryResponse o) {
  buildCounterPartitionQueryResponse++;
  if (buildCounterPartitionQueryResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4562(o.partitions!);
  }
  buildCounterPartitionQueryResponse--;
}

core.int buildCounterPrecondition = 0;
api.Precondition buildPrecondition() {
  final o = api.Precondition();
  buildCounterPrecondition++;
  if (buildCounterPrecondition < 3) {
    o.exists = true;
    o.updateTime = 'foo';
  }
  buildCounterPrecondition--;
  return o;
}

void checkPrecondition(api.Precondition o) {
  buildCounterPrecondition++;
  if (buildCounterPrecondition < 3) {
    unittest.expect(o.exists!, unittest.isTrue);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrecondition--;
}

core.List<api.FieldReference> buildUnnamed4563() => [
      buildFieldReference(),
      buildFieldReference(),
    ];

void checkUnnamed4563(core.List<api.FieldReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldReference(o[0]);
  checkFieldReference(o[1]);
}

core.int buildCounterProjection = 0;
api.Projection buildProjection() {
  final o = api.Projection();
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    o.fields = buildUnnamed4563();
  }
  buildCounterProjection--;
  return o;
}

void checkProjection(api.Projection o) {
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    checkUnnamed4563(o.fields!);
  }
  buildCounterProjection--;
}

core.int buildCounterQueryTarget = 0;
api.QueryTarget buildQueryTarget() {
  final o = api.QueryTarget();
  buildCounterQueryTarget++;
  if (buildCounterQueryTarget < 3) {
    o.parent = 'foo';
    o.structuredQuery = buildStructuredQuery();
  }
  buildCounterQueryTarget--;
  return o;
}

void checkQueryTarget(api.QueryTarget o) {
  buildCounterQueryTarget++;
  if (buildCounterQueryTarget < 3) {
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkStructuredQuery(o.structuredQuery!);
  }
  buildCounterQueryTarget--;
}

core.int buildCounterReadOnly = 0;
api.ReadOnly buildReadOnly() {
  final o = api.ReadOnly();
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {
    o.readTime = 'foo';
  }
  buildCounterReadOnly--;
  return o;
}

void checkReadOnly(api.ReadOnly o) {
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterReadOnly--;
}

core.int buildCounterReadWrite = 0;
api.ReadWrite buildReadWrite() {
  final o = api.ReadWrite();
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    o.retryTransaction = 'foo';
  }
  buildCounterReadWrite--;
  return o;
}

void checkReadWrite(api.ReadWrite o) {
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    unittest.expect(
      o.retryTransaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterReadWrite--;
}

core.int buildCounterRollbackRequest = 0;
api.RollbackRequest buildRollbackRequest() {
  final o = api.RollbackRequest();
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    o.transaction = 'foo';
  }
  buildCounterRollbackRequest--;
  return o;
}

void checkRollbackRequest(api.RollbackRequest o) {
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterRollbackRequest--;
}

core.int buildCounterRunQueryRequest = 0;
api.RunQueryRequest buildRunQueryRequest() {
  final o = api.RunQueryRequest();
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    o.newTransaction = buildTransactionOptions();
    o.readTime = 'foo';
    o.structuredQuery = buildStructuredQuery();
    o.transaction = 'foo';
  }
  buildCounterRunQueryRequest--;
  return o;
}

void checkRunQueryRequest(api.RunQueryRequest o) {
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    checkTransactionOptions(o.newTransaction!);
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    checkStructuredQuery(o.structuredQuery!);
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunQueryRequest--;
}

core.int buildCounterRunQueryResponse = 0;
api.RunQueryResponse buildRunQueryResponse() {
  final o = api.RunQueryResponse();
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    o.document = buildDocument();
    o.readTime = 'foo';
    o.skippedResults = 42;
    o.transaction = 'foo';
  }
  buildCounterRunQueryResponse--;
  return o;
}

void checkRunQueryResponse(api.RunQueryResponse o) {
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    checkDocument(o.document!);
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skippedResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunQueryResponse--;
}

core.Map<core.String, core.Object> buildUnnamed4564() => {
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

void checkUnnamed4564(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed4565() => [
      buildUnnamed4564(),
      buildUnnamed4564(),
    ];

void checkUnnamed4565(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4564(o[0]);
  checkUnnamed4564(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4565();
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
    checkUnnamed4565(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.CollectionSelector> buildUnnamed4566() => [
      buildCollectionSelector(),
      buildCollectionSelector(),
    ];

void checkUnnamed4566(core.List<api.CollectionSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionSelector(o[0]);
  checkCollectionSelector(o[1]);
}

core.List<api.Order> buildUnnamed4567() => [
      buildOrder(),
      buildOrder(),
    ];

void checkUnnamed4567(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0]);
  checkOrder(o[1]);
}

core.int buildCounterStructuredQuery = 0;
api.StructuredQuery buildStructuredQuery() {
  final o = api.StructuredQuery();
  buildCounterStructuredQuery++;
  if (buildCounterStructuredQuery < 3) {
    o.endAt = buildCursor();
    o.from = buildUnnamed4566();
    o.limit = 42;
    o.offset = 42;
    o.orderBy = buildUnnamed4567();
    o.select = buildProjection();
    o.startAt = buildCursor();
    o.where = buildFilter();
  }
  buildCounterStructuredQuery--;
  return o;
}

void checkStructuredQuery(api.StructuredQuery o) {
  buildCounterStructuredQuery++;
  if (buildCounterStructuredQuery < 3) {
    checkCursor(o.endAt!);
    checkUnnamed4566(o.from!);
    unittest.expect(
      o.limit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offset!,
      unittest.equals(42),
    );
    checkUnnamed4567(o.orderBy!);
    checkProjection(o.select!);
    checkCursor(o.startAt!);
    checkFilter(o.where!);
  }
  buildCounterStructuredQuery--;
}

core.int buildCounterTarget = 0;
api.Target buildTarget() {
  final o = api.Target();
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    o.documents = buildDocumentsTarget();
    o.once = true;
    o.query = buildQueryTarget();
    o.readTime = 'foo';
    o.resumeToken = 'foo';
    o.targetId = 42;
  }
  buildCounterTarget--;
  return o;
}

void checkTarget(api.Target o) {
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    checkDocumentsTarget(o.documents!);
    unittest.expect(o.once!, unittest.isTrue);
    checkQueryTarget(o.query!);
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resumeToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetId!,
      unittest.equals(42),
    );
  }
  buildCounterTarget--;
}

core.List<core.int> buildUnnamed4568() => [
      42,
      42,
    ];

void checkUnnamed4568(core.List<core.int> o) {
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

core.int buildCounterTargetChange = 0;
api.TargetChange buildTargetChange() {
  final o = api.TargetChange();
  buildCounterTargetChange++;
  if (buildCounterTargetChange < 3) {
    o.cause = buildStatus();
    o.readTime = 'foo';
    o.resumeToken = 'foo';
    o.targetChangeType = 'foo';
    o.targetIds = buildUnnamed4568();
  }
  buildCounterTargetChange--;
  return o;
}

void checkTargetChange(api.TargetChange o) {
  buildCounterTargetChange++;
  if (buildCounterTargetChange < 3) {
    checkStatus(o.cause!);
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resumeToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetChangeType!,
      unittest.equals('foo'),
    );
    checkUnnamed4568(o.targetIds!);
  }
  buildCounterTargetChange--;
}

core.int buildCounterTransactionOptions = 0;
api.TransactionOptions buildTransactionOptions() {
  final o = api.TransactionOptions();
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    o.readOnly = buildReadOnly();
    o.readWrite = buildReadWrite();
  }
  buildCounterTransactionOptions--;
  return o;
}

void checkTransactionOptions(api.TransactionOptions o) {
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    checkReadOnly(o.readOnly!);
    checkReadWrite(o.readWrite!);
  }
  buildCounterTransactionOptions--;
}

core.int buildCounterUnaryFilter = 0;
api.UnaryFilter buildUnaryFilter() {
  final o = api.UnaryFilter();
  buildCounterUnaryFilter++;
  if (buildCounterUnaryFilter < 3) {
    o.field = buildFieldReference();
    o.op = 'foo';
  }
  buildCounterUnaryFilter--;
  return o;
}

void checkUnaryFilter(api.UnaryFilter o) {
  buildCounterUnaryFilter++;
  if (buildCounterUnaryFilter < 3) {
    checkFieldReference(o.field!);
    unittest.expect(
      o.op!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnaryFilter--;
}

core.int buildCounterValue = 0;
api.Value buildValue() {
  final o = api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.arrayValue = buildArrayValue();
    o.booleanValue = true;
    o.bytesValue = 'foo';
    o.doubleValue = 42.0;
    o.geoPointValue = buildLatLng();
    o.integerValue = 'foo';
    o.mapValue = buildMapValue();
    o.nullValue = 'foo';
    o.referenceValue = 'foo';
    o.stringValue = 'foo';
    o.timestampValue = 'foo';
  }
  buildCounterValue--;
  return o;
}

void checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    checkArrayValue(o.arrayValue!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    unittest.expect(
      o.bytesValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    checkLatLng(o.geoPointValue!);
    unittest.expect(
      o.integerValue!,
      unittest.equals('foo'),
    );
    checkMapValue(o.mapValue!);
    unittest.expect(
      o.nullValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referenceValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterValue--;
}

core.List<api.FieldTransform> buildUnnamed4569() => [
      buildFieldTransform(),
      buildFieldTransform(),
    ];

void checkUnnamed4569(core.List<api.FieldTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldTransform(o[0]);
  checkFieldTransform(o[1]);
}

core.int buildCounterWrite = 0;
api.Write buildWrite() {
  final o = api.Write();
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    o.currentDocument = buildPrecondition();
    o.delete = 'foo';
    o.transform = buildDocumentTransform();
    o.update = buildDocument();
    o.updateMask = buildDocumentMask();
    o.updateTransforms = buildUnnamed4569();
  }
  buildCounterWrite--;
  return o;
}

void checkWrite(api.Write o) {
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    checkPrecondition(o.currentDocument!);
    unittest.expect(
      o.delete!,
      unittest.equals('foo'),
    );
    checkDocumentTransform(o.transform!);
    checkDocument(o.update!);
    checkDocumentMask(o.updateMask!);
    checkUnnamed4569(o.updateTransforms!);
  }
  buildCounterWrite--;
}

core.Map<core.String, core.String> buildUnnamed4570() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4570(core.Map<core.String, core.String> o) {
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

core.List<api.Write> buildUnnamed4571() => [
      buildWrite(),
      buildWrite(),
    ];

void checkUnnamed4571(core.List<api.Write> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWrite(o[0]);
  checkWrite(o[1]);
}

core.int buildCounterWriteRequest = 0;
api.WriteRequest buildWriteRequest() {
  final o = api.WriteRequest();
  buildCounterWriteRequest++;
  if (buildCounterWriteRequest < 3) {
    o.labels = buildUnnamed4570();
    o.streamId = 'foo';
    o.streamToken = 'foo';
    o.writes = buildUnnamed4571();
  }
  buildCounterWriteRequest--;
  return o;
}

void checkWriteRequest(api.WriteRequest o) {
  buildCounterWriteRequest++;
  if (buildCounterWriteRequest < 3) {
    checkUnnamed4570(o.labels!);
    unittest.expect(
      o.streamId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streamToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4571(o.writes!);
  }
  buildCounterWriteRequest--;
}

core.List<api.WriteResult> buildUnnamed4572() => [
      buildWriteResult(),
      buildWriteResult(),
    ];

void checkUnnamed4572(core.List<api.WriteResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWriteResult(o[0]);
  checkWriteResult(o[1]);
}

core.int buildCounterWriteResponse = 0;
api.WriteResponse buildWriteResponse() {
  final o = api.WriteResponse();
  buildCounterWriteResponse++;
  if (buildCounterWriteResponse < 3) {
    o.commitTime = 'foo';
    o.streamId = 'foo';
    o.streamToken = 'foo';
    o.writeResults = buildUnnamed4572();
  }
  buildCounterWriteResponse--;
  return o;
}

void checkWriteResponse(api.WriteResponse o) {
  buildCounterWriteResponse++;
  if (buildCounterWriteResponse < 3) {
    unittest.expect(
      o.commitTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streamId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streamToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4572(o.writeResults!);
  }
  buildCounterWriteResponse--;
}

core.List<api.Value> buildUnnamed4573() => [
      buildValue(),
      buildValue(),
    ];

void checkUnnamed4573(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterWriteResult = 0;
api.WriteResult buildWriteResult() {
  final o = api.WriteResult();
  buildCounterWriteResult++;
  if (buildCounterWriteResult < 3) {
    o.transformResults = buildUnnamed4573();
    o.updateTime = 'foo';
  }
  buildCounterWriteResult--;
  return o;
}

void checkWriteResult(api.WriteResult o) {
  buildCounterWriteResult++;
  if (buildCounterWriteResult < 3) {
    checkUnnamed4573(o.transformResults!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterWriteResult--;
}

core.List<core.String> buildUnnamed4574() => [
      'foo',
      'foo',
    ];

void checkUnnamed4574(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4575() => [
      'foo',
      'foo',
    ];

void checkUnnamed4575(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4576() => [
      'foo',
      'foo',
    ];

void checkUnnamed4576(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4577() => [
      'foo',
      'foo',
    ];

void checkUnnamed4577(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4578() => [
      'foo',
      'foo',
    ];

void checkUnnamed4578(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-ArrayValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArrayValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ArrayValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkArrayValue(od);
    });
  });

  unittest.group('obj-schema-BatchGetDocumentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetDocumentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetDocumentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetDocumentsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchGetDocumentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetDocumentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetDocumentsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchWriteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchWriteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchWriteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchWriteRequest(od);
    });
  });

  unittest.group('obj-schema-BatchWriteResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchWriteResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchWriteResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchWriteResponse(od);
    });
  });

  unittest.group('obj-schema-BeginTransactionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBeginTransactionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BeginTransactionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBeginTransactionRequest(od);
    });
  });

  unittest.group('obj-schema-BeginTransactionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBeginTransactionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BeginTransactionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBeginTransactionResponse(od);
    });
  });

  unittest.group('obj-schema-CollectionSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectionSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectionSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectionSelector(od);
    });
  });

  unittest.group('obj-schema-CommitRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommitRequest(od);
    });
  });

  unittest.group('obj-schema-CommitResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommitResponse(od);
    });
  });

  unittest.group('obj-schema-CompositeFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompositeFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompositeFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompositeFilter(od);
    });
  });

  unittest.group('obj-schema-Cursor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCursor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Cursor.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCursor(od);
    });
  });

  unittest.group('obj-schema-Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Document.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDocument(od);
    });
  });

  unittest.group('obj-schema-DocumentChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentChange(od);
    });
  });

  unittest.group('obj-schema-DocumentDelete', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentDelete();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentDelete.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentDelete(od);
    });
  });

  unittest.group('obj-schema-DocumentMask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentMask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentMask.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentMask(od);
    });
  });

  unittest.group('obj-schema-DocumentRemove', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentRemove();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentRemove.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentRemove(od);
    });
  });

  unittest.group('obj-schema-DocumentTransform', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentTransform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentTransform.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentTransform(od);
    });
  });

  unittest.group('obj-schema-DocumentsTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentsTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentsTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentsTarget(od);
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

  unittest.group('obj-schema-ExistenceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExistenceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExistenceFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExistenceFilter(od);
    });
  });

  unittest.group('obj-schema-FieldFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFieldFilter(od);
    });
  });

  unittest.group('obj-schema-FieldReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFieldReference(od);
    });
  });

  unittest.group('obj-schema-FieldTransform', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldTransform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldTransform.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFieldTransform(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Filter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1ExportDocumentsMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1ExportDocumentsMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1ExportDocumentsMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1ExportDocumentsMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1ExportDocumentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1ExportDocumentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1ExportDocumentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1ExportDocumentsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1ExportDocumentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1ExportDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1ExportDocumentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1ExportDocumentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1Field();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1Field.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1Field(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1FieldOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1FieldOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1FieldOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1FieldOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1ImportDocumentsMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1ImportDocumentsMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1ImportDocumentsMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1ImportDocumentsMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1ImportDocumentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1ImportDocumentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1ImportDocumentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1ImportDocumentsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1Index', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1Index();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1Index.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1Index(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1IndexConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1IndexConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1IndexConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1IndexConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1IndexConfigDelta', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1IndexConfigDelta();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1IndexConfigDelta.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1IndexConfigDelta(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1IndexField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1IndexField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1IndexField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1IndexField(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1IndexOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1IndexOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1IndexOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1IndexOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1ListFieldsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1ListFieldsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1ListFieldsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1ListFieldsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1ListIndexesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1ListIndexesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1ListIndexesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1ListIndexesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1LocationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1LocationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1LocationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1LocationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1Progress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1Progress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1Progress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1Progress(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LatLng.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-ListCollectionIdsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCollectionIdsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCollectionIdsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCollectionIdsRequest(od);
    });
  });

  unittest.group('obj-schema-ListCollectionIdsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCollectionIdsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCollectionIdsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCollectionIdsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDocumentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDocumentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDocumentsResponse(od);
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

  unittest.group('obj-schema-ListenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListenRequest(od);
    });
  });

  unittest.group('obj-schema-ListenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListenResponse(od);
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

  unittest.group('obj-schema-MapValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MapValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMapValue(od);
    });
  });

  unittest.group('obj-schema-Order', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Order.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrder(od);
    });
  });

  unittest.group('obj-schema-PartitionQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionQueryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionQueryRequest(od);
    });
  });

  unittest.group('obj-schema-PartitionQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionQueryResponse(od);
    });
  });

  unittest.group('obj-schema-Precondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrecondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Precondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrecondition(od);
    });
  });

  unittest.group('obj-schema-Projection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Projection.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProjection(od);
    });
  });

  unittest.group('obj-schema-QueryTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryTarget(od);
    });
  });

  unittest.group('obj-schema-ReadOnly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadOnly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReadOnly.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReadOnly(od);
    });
  });

  unittest.group('obj-schema-ReadWrite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadWrite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReadWrite.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReadWrite(od);
    });
  });

  unittest.group('obj-schema-RollbackRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRollbackRequest(od);
    });
  });

  unittest.group('obj-schema-RunQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunQueryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunQueryRequest(od);
    });
  });

  unittest.group('obj-schema-RunQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunQueryResponse(od);
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

  unittest.group('obj-schema-StructuredQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStructuredQuery(od);
    });
  });

  unittest.group('obj-schema-Target', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Target.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTarget(od);
    });
  });

  unittest.group('obj-schema-TargetChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetChange(od);
    });
  });

  unittest.group('obj-schema-TransactionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransactionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransactionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransactionOptions(od);
    });
  });

  unittest.group('obj-schema-UnaryFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnaryFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnaryFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnaryFilter(od);
    });
  });

  unittest.group('obj-schema-Value', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Value.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkValue(od);
    });
  });

  unittest.group('obj-schema-Write', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWrite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Write.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWrite(od);
    });
  });

  unittest.group('obj-schema-WriteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWriteRequest(od);
    });
  });

  unittest.group('obj-schema-WriteResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWriteResponse(od);
    });
  });

  unittest.group('obj-schema-WriteResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWriteResult(od);
    });
  });

  unittest.group('resource-ProjectsDatabasesResource', () {
    unittest.test('method--exportDocuments', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_request = buildGoogleFirestoreAdminV1ExportDocumentsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirestoreAdminV1ExportDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirestoreAdminV1ExportDocumentsRequest(obj);

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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exportDocuments(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--importDocuments', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_request = buildGoogleFirestoreAdminV1ImportDocumentsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirestoreAdminV1ImportDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirestoreAdminV1ImportDocumentsRequest(obj);

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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.importDocuments(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsDatabasesCollectionGroupsFieldsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.fields;
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
        final resp = convert.json.encode(buildGoogleFirestoreAdminV1Field());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1Field(
          response as api.GoogleFirestoreAdminV1Field);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.fields;
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
        final resp = convert.json
            .encode(buildGoogleFirestoreAdminV1ListFieldsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirestoreAdminV1ListFieldsResponse(
          response as api.GoogleFirestoreAdminV1ListFieldsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.fields;
      final arg_request = buildGoogleFirestoreAdminV1Field();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirestoreAdminV1Field.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirestoreAdminV1Field(obj);

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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsDatabasesCollectionGroupsIndexesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.indexes;
      final arg_request = buildGoogleFirestoreAdminV1Index();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirestoreAdminV1Index.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirestoreAdminV1Index(obj);

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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.indexes;
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
          api.FirestoreApi(mock).projects.databases.collectionGroups.indexes;
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
        final resp = convert.json.encode(buildGoogleFirestoreAdminV1Index());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1Index(
          response as api.GoogleFirestoreAdminV1Index);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.indexes;
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
        final resp = convert.json
            .encode(buildGoogleFirestoreAdminV1ListIndexesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirestoreAdminV1ListIndexesResponse(
          response as api.GoogleFirestoreAdminV1ListIndexesResponse);
    });
  });

  unittest.group('resource-ProjectsDatabasesDocumentsResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildBatchGetDocumentsRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchGetDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchGetDocumentsRequest(obj);

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
        final resp = convert.json.encode(buildBatchGetDocumentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchGet(arg_request, arg_database, $fields: arg_$fields);
      checkBatchGetDocumentsResponse(response as api.BatchGetDocumentsResponse);
    });

    unittest.test('method--batchWrite', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildBatchWriteRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchWriteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchWriteRequest(obj);

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
        final resp = convert.json.encode(buildBatchWriteResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchWrite(arg_request, arg_database, $fields: arg_$fields);
      checkBatchWriteResponse(response as api.BatchWriteResponse);
    });

    unittest.test('method--beginTransaction', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildBeginTransactionRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BeginTransactionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBeginTransactionRequest(obj);

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
        final resp = convert.json.encode(buildBeginTransactionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.beginTransaction(arg_request, arg_database,
          $fields: arg_$fields);
      checkBeginTransactionResponse(response as api.BeginTransactionResponse);
    });

    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildCommitRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CommitRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommitRequest(obj);

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
        final resp = convert.json.encode(buildCommitResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.commit(arg_request, arg_database, $fields: arg_$fields);
      checkCommitResponse(response as api.CommitResponse);
    });

    unittest.test('method--createDocument', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildDocument();
      final arg_parent = 'foo';
      final arg_collectionId = 'foo';
      final arg_documentId = 'foo';
      final arg_mask_fieldPaths = buildUnnamed4574();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Document.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDocument(obj);

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
          queryMap['documentId']!.first,
          unittest.equals(arg_documentId),
        );
        unittest.expect(
          queryMap['mask.fieldPaths']!,
          unittest.equals(arg_mask_fieldPaths),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDocument());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createDocument(
          arg_request, arg_parent, arg_collectionId,
          documentId: arg_documentId,
          mask_fieldPaths: arg_mask_fieldPaths,
          $fields: arg_$fields);
      checkDocument(response as api.Document);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_name = 'foo';
      final arg_currentDocument_exists = true;
      final arg_currentDocument_updateTime = 'foo';
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
          queryMap['currentDocument.exists']!.first,
          unittest.equals('$arg_currentDocument_exists'),
        );
        unittest.expect(
          queryMap['currentDocument.updateTime']!.first,
          unittest.equals(arg_currentDocument_updateTime),
        );
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
      final response = await res.delete(arg_name,
          currentDocument_exists: arg_currentDocument_exists,
          currentDocument_updateTime: arg_currentDocument_updateTime,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_name = 'foo';
      final arg_mask_fieldPaths = buildUnnamed4575();
      final arg_readTime = 'foo';
      final arg_transaction = 'foo';
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
          queryMap['mask.fieldPaths']!,
          unittest.equals(arg_mask_fieldPaths),
        );
        unittest.expect(
          queryMap['readTime']!.first,
          unittest.equals(arg_readTime),
        );
        unittest.expect(
          queryMap['transaction']!.first,
          unittest.equals(arg_transaction),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDocument());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          mask_fieldPaths: arg_mask_fieldPaths,
          readTime: arg_readTime,
          transaction: arg_transaction,
          $fields: arg_$fields);
      checkDocument(response as api.Document);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_parent = 'foo';
      final arg_collectionId = 'foo';
      final arg_mask_fieldPaths = buildUnnamed4576();
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
      final arg_showMissing = true;
      final arg_transaction = 'foo';
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
          queryMap['mask.fieldPaths']!,
          unittest.equals(arg_mask_fieldPaths),
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
          queryMap['readTime']!.first,
          unittest.equals(arg_readTime),
        );
        unittest.expect(
          queryMap['showMissing']!.first,
          unittest.equals('$arg_showMissing'),
        );
        unittest.expect(
          queryMap['transaction']!.first,
          unittest.equals(arg_transaction),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDocumentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, arg_collectionId,
          mask_fieldPaths: arg_mask_fieldPaths,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readTime: arg_readTime,
          showMissing: arg_showMissing,
          transaction: arg_transaction,
          $fields: arg_$fields);
      checkListDocumentsResponse(response as api.ListDocumentsResponse);
    });

    unittest.test('method--listCollectionIds', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildListCollectionIdsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ListCollectionIdsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkListCollectionIdsRequest(obj);

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
        final resp = convert.json.encode(buildListCollectionIdsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listCollectionIds(arg_request, arg_parent,
          $fields: arg_$fields);
      checkListCollectionIdsResponse(response as api.ListCollectionIdsResponse);
    });

    unittest.test('method--listen', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildListenRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ListenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkListenRequest(obj);

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
        final resp = convert.json.encode(buildListenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.listen(arg_request, arg_database, $fields: arg_$fields);
      checkListenResponse(response as api.ListenResponse);
    });

    unittest.test('method--partitionQuery', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildPartitionQueryRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PartitionQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPartitionQueryRequest(obj);

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
        final resp = convert.json.encode(buildPartitionQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.partitionQuery(arg_request, arg_parent,
          $fields: arg_$fields);
      checkPartitionQueryResponse(response as api.PartitionQueryResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildDocument();
      final arg_name = 'foo';
      final arg_currentDocument_exists = true;
      final arg_currentDocument_updateTime = 'foo';
      final arg_mask_fieldPaths = buildUnnamed4577();
      final arg_updateMask_fieldPaths = buildUnnamed4578();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Document.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDocument(obj);

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
          queryMap['currentDocument.exists']!.first,
          unittest.equals('$arg_currentDocument_exists'),
        );
        unittest.expect(
          queryMap['currentDocument.updateTime']!.first,
          unittest.equals(arg_currentDocument_updateTime),
        );
        unittest.expect(
          queryMap['mask.fieldPaths']!,
          unittest.equals(arg_mask_fieldPaths),
        );
        unittest.expect(
          queryMap['updateMask.fieldPaths']!,
          unittest.equals(arg_updateMask_fieldPaths),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDocument());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          currentDocument_exists: arg_currentDocument_exists,
          currentDocument_updateTime: arg_currentDocument_updateTime,
          mask_fieldPaths: arg_mask_fieldPaths,
          updateMask_fieldPaths: arg_updateMask_fieldPaths,
          $fields: arg_$fields);
      checkDocument(response as api.Document);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildRollbackRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RollbackRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackRequest(obj);

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
          await res.rollback(arg_request, arg_database, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--runQuery', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildRunQueryRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunQueryRequest(obj);

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
        final resp = convert.json.encode(buildRunQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.runQuery(arg_request, arg_parent, $fields: arg_$fields);
      checkRunQueryResponse(response as api.RunQueryResponse);
    });

    unittest.test('method--write', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildWriteRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WriteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWriteRequest(obj);

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
        final resp = convert.json.encode(buildWriteResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.write(arg_request, arg_database, $fields: arg_$fields);
      checkWriteResponse(response as api.WriteResponse);
    });
  });

  unittest.group('resource-ProjectsDatabasesOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningCancelOperationRequest(obj);

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
      final res = api.FirestoreApi(mock).projects.databases.operations;
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
      final res = api.FirestoreApi(mock).projects.databases.operations;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.operations;
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.locations;
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
}
