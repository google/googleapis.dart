// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/firestore/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAggregation = 0;
api.Aggregation buildAggregation() {
  final o = api.Aggregation();
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    o.alias = 'foo';
    o.avg = buildAvg();
    o.count = buildCount();
    o.sum = buildSum();
  }
  buildCounterAggregation--;
  return o;
}

void checkAggregation(api.Aggregation o) {
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    unittest.expect(
      o.alias!,
      unittest.equals('foo'),
    );
    checkAvg(o.avg!);
    checkCount(o.count!);
    checkSum(o.sum!);
  }
  buildCounterAggregation--;
}

core.Map<core.String, api.Value> buildUnnamed0() => {
      'x': buildValue(),
      'y': buildValue(),
    };

void checkUnnamed0(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o['x']!);
  checkValue(o['y']!);
}

core.int buildCounterAggregationResult = 0;
api.AggregationResult buildAggregationResult() {
  final o = api.AggregationResult();
  buildCounterAggregationResult++;
  if (buildCounterAggregationResult < 3) {
    o.aggregateFields = buildUnnamed0();
  }
  buildCounterAggregationResult--;
  return o;
}

void checkAggregationResult(api.AggregationResult o) {
  buildCounterAggregationResult++;
  if (buildCounterAggregationResult < 3) {
    checkUnnamed0(o.aggregateFields!);
  }
  buildCounterAggregationResult--;
}

core.List<api.Value> buildUnnamed1() => [
      buildValue(),
      buildValue(),
    ];

void checkUnnamed1(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterArrayValue = 0;
api.ArrayValue buildArrayValue() {
  final o = api.ArrayValue();
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    o.values = buildUnnamed1();
  }
  buildCounterArrayValue--;
  return o;
}

void checkArrayValue(api.ArrayValue o) {
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    checkUnnamed1(o.values!);
  }
  buildCounterArrayValue--;
}

core.int buildCounterAvg = 0;
api.Avg buildAvg() {
  final o = api.Avg();
  buildCounterAvg++;
  if (buildCounterAvg < 3) {
    o.field = buildFieldReference();
  }
  buildCounterAvg--;
  return o;
}

void checkAvg(api.Avg o) {
  buildCounterAvg++;
  if (buildCounterAvg < 3) {
    checkFieldReference(o.field!);
  }
  buildCounterAvg--;
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

core.int buildCounterBatchGetDocumentsRequest = 0;
api.BatchGetDocumentsRequest buildBatchGetDocumentsRequest() {
  final o = api.BatchGetDocumentsRequest();
  buildCounterBatchGetDocumentsRequest++;
  if (buildCounterBatchGetDocumentsRequest < 3) {
    o.documents = buildUnnamed2();
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
    checkUnnamed2(o.documents!);
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

core.int buildCounterBatchGetDocumentsResponseElement = 0;
api.BatchGetDocumentsResponseElement buildBatchGetDocumentsResponseElement() {
  final o = api.BatchGetDocumentsResponseElement();
  buildCounterBatchGetDocumentsResponseElement++;
  if (buildCounterBatchGetDocumentsResponseElement < 3) {
    o.found = buildDocument();
    o.missing = 'foo';
    o.readTime = 'foo';
    o.transaction = 'foo';
  }
  buildCounterBatchGetDocumentsResponseElement--;
  return o;
}

void checkBatchGetDocumentsResponseElement(
    api.BatchGetDocumentsResponseElement o) {
  buildCounterBatchGetDocumentsResponseElement++;
  if (buildCounterBatchGetDocumentsResponseElement < 3) {
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
  buildCounterBatchGetDocumentsResponseElement--;
}

api.BatchGetDocumentsResponse buildBatchGetDocumentsResponse() {
  return [
    buildBatchGetDocumentsResponseElement(),
    buildBatchGetDocumentsResponseElement(),
  ];
}

void checkBatchGetDocumentsResponse(api.BatchGetDocumentsResponse o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchGetDocumentsResponseElement(o[0]);
  checkBatchGetDocumentsResponseElement(o[1]);
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
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

core.List<api.Write> buildUnnamed4() => [
      buildWrite(),
      buildWrite(),
    ];

void checkUnnamed4(core.List<api.Write> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWrite(o[0]);
  checkWrite(o[1]);
}

core.int buildCounterBatchWriteRequest = 0;
api.BatchWriteRequest buildBatchWriteRequest() {
  final o = api.BatchWriteRequest();
  buildCounterBatchWriteRequest++;
  if (buildCounterBatchWriteRequest < 3) {
    o.labels = buildUnnamed3();
    o.writes = buildUnnamed4();
  }
  buildCounterBatchWriteRequest--;
  return o;
}

void checkBatchWriteRequest(api.BatchWriteRequest o) {
  buildCounterBatchWriteRequest++;
  if (buildCounterBatchWriteRequest < 3) {
    checkUnnamed3(o.labels!);
    checkUnnamed4(o.writes!);
  }
  buildCounterBatchWriteRequest--;
}

core.List<api.Status> buildUnnamed5() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed5(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.WriteResult> buildUnnamed6() => [
      buildWriteResult(),
      buildWriteResult(),
    ];

void checkUnnamed6(core.List<api.WriteResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWriteResult(o[0]);
  checkWriteResult(o[1]);
}

core.int buildCounterBatchWriteResponse = 0;
api.BatchWriteResponse buildBatchWriteResponse() {
  final o = api.BatchWriteResponse();
  buildCounterBatchWriteResponse++;
  if (buildCounterBatchWriteResponse < 3) {
    o.status = buildUnnamed5();
    o.writeResults = buildUnnamed6();
  }
  buildCounterBatchWriteResponse--;
  return o;
}

void checkBatchWriteResponse(api.BatchWriteResponse o) {
  buildCounterBatchWriteResponse++;
  if (buildCounterBatchWriteResponse < 3) {
    checkUnnamed5(o.status!);
    checkUnnamed6(o.writeResults!);
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

core.List<api.Write> buildUnnamed7() => [
      buildWrite(),
      buildWrite(),
    ];

void checkUnnamed7(core.List<api.Write> o) {
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
    o.writes = buildUnnamed7();
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
    checkUnnamed7(o.writes!);
  }
  buildCounterCommitRequest--;
}

core.List<api.WriteResult> buildUnnamed8() => [
      buildWriteResult(),
      buildWriteResult(),
    ];

void checkUnnamed8(core.List<api.WriteResult> o) {
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
    o.writeResults = buildUnnamed8();
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
    checkUnnamed8(o.writeResults!);
  }
  buildCounterCommitResponse--;
}

core.List<api.Filter> buildUnnamed9() => [
      buildFilter(),
      buildFilter(),
    ];

void checkUnnamed9(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterCompositeFilter = 0;
api.CompositeFilter buildCompositeFilter() {
  final o = api.CompositeFilter();
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    o.filters = buildUnnamed9();
    o.op = 'foo';
  }
  buildCounterCompositeFilter--;
  return o;
}

void checkCompositeFilter(api.CompositeFilter o) {
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    checkUnnamed9(o.filters!);
    unittest.expect(
      o.op!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompositeFilter--;
}

core.int buildCounterCount = 0;
api.Count buildCount() {
  final o = api.Count();
  buildCounterCount++;
  if (buildCounterCount < 3) {
    o.upTo = 'foo';
  }
  buildCounterCount--;
  return o;
}

void checkCount(api.Count o) {
  buildCounterCount++;
  if (buildCounterCount < 3) {
    unittest.expect(
      o.upTo!,
      unittest.equals('foo'),
    );
  }
  buildCounterCount--;
}

core.List<api.Value> buildUnnamed10() => [
      buildValue(),
      buildValue(),
    ];

void checkUnnamed10(core.List<api.Value> o) {
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
    o.values = buildUnnamed10();
  }
  buildCounterCursor--;
  return o;
}

void checkCursor(api.Cursor o) {
  buildCounterCursor++;
  if (buildCounterCursor < 3) {
    unittest.expect(o.before!, unittest.isTrue);
    checkUnnamed10(o.values!);
  }
  buildCounterCursor--;
}

core.Map<core.String, api.Value> buildUnnamed11() => {
      'x': buildValue(),
      'y': buildValue(),
    };

void checkUnnamed11(core.Map<core.String, api.Value> o) {
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
    o.fields = buildUnnamed11();
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
    checkUnnamed11(o.fields!);
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

core.int buildCounterDocumentMask = 0;
api.DocumentMask buildDocumentMask() {
  final o = api.DocumentMask();
  buildCounterDocumentMask++;
  if (buildCounterDocumentMask < 3) {
    o.fieldPaths = buildUnnamed12();
  }
  buildCounterDocumentMask--;
  return o;
}

void checkDocumentMask(api.DocumentMask o) {
  buildCounterDocumentMask++;
  if (buildCounterDocumentMask < 3) {
    checkUnnamed12(o.fieldPaths!);
  }
  buildCounterDocumentMask--;
}

core.List<api.FieldTransform> buildUnnamed13() => [
      buildFieldTransform(),
      buildFieldTransform(),
    ];

void checkUnnamed13(core.List<api.FieldTransform> o) {
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
    o.fieldTransforms = buildUnnamed13();
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
    checkUnnamed13(o.fieldTransforms!);
  }
  buildCounterDocumentTransform--;
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

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterExecutionStats = 0;
api.ExecutionStats buildExecutionStats() {
  final o = api.ExecutionStats();
  buildCounterExecutionStats++;
  if (buildCounterExecutionStats < 3) {
    o.debugStats = buildUnnamed14();
    o.executionDuration = 'foo';
    o.readOperations = 'foo';
    o.resultsReturned = 'foo';
  }
  buildCounterExecutionStats--;
  return o;
}

void checkExecutionStats(api.ExecutionStats o) {
  buildCounterExecutionStats++;
  if (buildCounterExecutionStats < 3) {
    checkUnnamed14(o.debugStats!);
    unittest.expect(
      o.executionDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readOperations!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resultsReturned!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecutionStats--;
}

core.int buildCounterExplainMetrics = 0;
api.ExplainMetrics buildExplainMetrics() {
  final o = api.ExplainMetrics();
  buildCounterExplainMetrics++;
  if (buildCounterExplainMetrics < 3) {
    o.executionStats = buildExecutionStats();
    o.planSummary = buildPlanSummary();
  }
  buildCounterExplainMetrics--;
  return o;
}

void checkExplainMetrics(api.ExplainMetrics o) {
  buildCounterExplainMetrics++;
  if (buildCounterExplainMetrics < 3) {
    checkExecutionStats(o.executionStats!);
    checkPlanSummary(o.planSummary!);
  }
  buildCounterExplainMetrics--;
}

core.int buildCounterExplainOptions = 0;
api.ExplainOptions buildExplainOptions() {
  final o = api.ExplainOptions();
  buildCounterExplainOptions++;
  if (buildCounterExplainOptions < 3) {
    o.analyze = true;
  }
  buildCounterExplainOptions--;
  return o;
}

void checkExplainOptions(api.ExplainOptions o) {
  buildCounterExplainOptions++;
  if (buildCounterExplainOptions < 3) {
    unittest.expect(o.analyze!, unittest.isTrue);
  }
  buildCounterExplainOptions--;
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

core.int buildCounterFindNearest = 0;
api.FindNearest buildFindNearest() {
  final o = api.FindNearest();
  buildCounterFindNearest++;
  if (buildCounterFindNearest < 3) {
    o.distanceMeasure = 'foo';
    o.limit = 42;
    o.queryVector = buildValue();
    o.vectorField = buildFieldReference();
  }
  buildCounterFindNearest--;
  return o;
}

void checkFindNearest(api.FindNearest o) {
  buildCounterFindNearest++;
  if (buildCounterFindNearest < 3) {
    unittest.expect(
      o.distanceMeasure!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.limit!,
      unittest.equals(42),
    );
    checkValue(o.queryVector!);
    checkFieldReference(o.vectorField!);
  }
  buildCounterFindNearest--;
}

core.int buildCounterGoogleFirestoreAdminV1Backup = 0;
api.GoogleFirestoreAdminV1Backup buildGoogleFirestoreAdminV1Backup() {
  final o = api.GoogleFirestoreAdminV1Backup();
  buildCounterGoogleFirestoreAdminV1Backup++;
  if (buildCounterGoogleFirestoreAdminV1Backup < 3) {
    o.database = 'foo';
    o.databaseUid = 'foo';
    o.expireTime = 'foo';
    o.name = 'foo';
    o.snapshotTime = 'foo';
    o.state = 'foo';
    o.stats = buildGoogleFirestoreAdminV1Stats();
  }
  buildCounterGoogleFirestoreAdminV1Backup--;
  return o;
}

void checkGoogleFirestoreAdminV1Backup(api.GoogleFirestoreAdminV1Backup o) {
  buildCounterGoogleFirestoreAdminV1Backup++;
  if (buildCounterGoogleFirestoreAdminV1Backup < 3) {
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseUid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshotTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkGoogleFirestoreAdminV1Stats(o.stats!);
  }
  buildCounterGoogleFirestoreAdminV1Backup--;
}

core.int buildCounterGoogleFirestoreAdminV1BackupSchedule = 0;
api.GoogleFirestoreAdminV1BackupSchedule
    buildGoogleFirestoreAdminV1BackupSchedule() {
  final o = api.GoogleFirestoreAdminV1BackupSchedule();
  buildCounterGoogleFirestoreAdminV1BackupSchedule++;
  if (buildCounterGoogleFirestoreAdminV1BackupSchedule < 3) {
    o.createTime = 'foo';
    o.dailyRecurrence = buildGoogleFirestoreAdminV1DailyRecurrence();
    o.name = 'foo';
    o.retention = 'foo';
    o.updateTime = 'foo';
    o.weeklyRecurrence = buildGoogleFirestoreAdminV1WeeklyRecurrence();
  }
  buildCounterGoogleFirestoreAdminV1BackupSchedule--;
  return o;
}

void checkGoogleFirestoreAdminV1BackupSchedule(
    api.GoogleFirestoreAdminV1BackupSchedule o) {
  buildCounterGoogleFirestoreAdminV1BackupSchedule++;
  if (buildCounterGoogleFirestoreAdminV1BackupSchedule < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleFirestoreAdminV1DailyRecurrence(o.dailyRecurrence!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.retention!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkGoogleFirestoreAdminV1WeeklyRecurrence(o.weeklyRecurrence!);
  }
  buildCounterGoogleFirestoreAdminV1BackupSchedule--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterGoogleFirestoreAdminV1CmekConfig = 0;
api.GoogleFirestoreAdminV1CmekConfig buildGoogleFirestoreAdminV1CmekConfig() {
  final o = api.GoogleFirestoreAdminV1CmekConfig();
  buildCounterGoogleFirestoreAdminV1CmekConfig++;
  if (buildCounterGoogleFirestoreAdminV1CmekConfig < 3) {
    o.activeKeyVersion = buildUnnamed15();
    o.kmsKeyName = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1CmekConfig--;
  return o;
}

void checkGoogleFirestoreAdminV1CmekConfig(
    api.GoogleFirestoreAdminV1CmekConfig o) {
  buildCounterGoogleFirestoreAdminV1CmekConfig++;
  if (buildCounterGoogleFirestoreAdminV1CmekConfig < 3) {
    checkUnnamed15(o.activeKeyVersion!);
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1CmekConfig--;
}

core.int buildCounterGoogleFirestoreAdminV1DailyRecurrence = 0;
api.GoogleFirestoreAdminV1DailyRecurrence
    buildGoogleFirestoreAdminV1DailyRecurrence() {
  final o = api.GoogleFirestoreAdminV1DailyRecurrence();
  buildCounterGoogleFirestoreAdminV1DailyRecurrence++;
  if (buildCounterGoogleFirestoreAdminV1DailyRecurrence < 3) {}
  buildCounterGoogleFirestoreAdminV1DailyRecurrence--;
  return o;
}

void checkGoogleFirestoreAdminV1DailyRecurrence(
    api.GoogleFirestoreAdminV1DailyRecurrence o) {
  buildCounterGoogleFirestoreAdminV1DailyRecurrence++;
  if (buildCounterGoogleFirestoreAdminV1DailyRecurrence < 3) {}
  buildCounterGoogleFirestoreAdminV1DailyRecurrence--;
}

core.int buildCounterGoogleFirestoreAdminV1Database = 0;
api.GoogleFirestoreAdminV1Database buildGoogleFirestoreAdminV1Database() {
  final o = api.GoogleFirestoreAdminV1Database();
  buildCounterGoogleFirestoreAdminV1Database++;
  if (buildCounterGoogleFirestoreAdminV1Database < 3) {
    o.appEngineIntegrationMode = 'foo';
    o.cmekConfig = buildGoogleFirestoreAdminV1CmekConfig();
    o.concurrencyMode = 'foo';
    o.createTime = 'foo';
    o.deleteProtectionState = 'foo';
    o.earliestVersionTime = 'foo';
    o.etag = 'foo';
    o.keyPrefix = 'foo';
    o.locationId = 'foo';
    o.name = 'foo';
    o.pointInTimeRecoveryEnablement = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.versionRetentionPeriod = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1Database--;
  return o;
}

void checkGoogleFirestoreAdminV1Database(api.GoogleFirestoreAdminV1Database o) {
  buildCounterGoogleFirestoreAdminV1Database++;
  if (buildCounterGoogleFirestoreAdminV1Database < 3) {
    unittest.expect(
      o.appEngineIntegrationMode!,
      unittest.equals('foo'),
    );
    checkGoogleFirestoreAdminV1CmekConfig(o.cmekConfig!);
    unittest.expect(
      o.concurrencyMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteProtectionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.earliestVersionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pointInTimeRecoveryEnablement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionRetentionPeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1Database--;
}

core.int buildCounterGoogleFirestoreAdminV1DatabaseSnapshot = 0;
api.GoogleFirestoreAdminV1DatabaseSnapshot
    buildGoogleFirestoreAdminV1DatabaseSnapshot() {
  final o = api.GoogleFirestoreAdminV1DatabaseSnapshot();
  buildCounterGoogleFirestoreAdminV1DatabaseSnapshot++;
  if (buildCounterGoogleFirestoreAdminV1DatabaseSnapshot < 3) {
    o.database = 'foo';
    o.snapshotTime = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1DatabaseSnapshot--;
  return o;
}

void checkGoogleFirestoreAdminV1DatabaseSnapshot(
    api.GoogleFirestoreAdminV1DatabaseSnapshot o) {
  buildCounterGoogleFirestoreAdminV1DatabaseSnapshot++;
  if (buildCounterGoogleFirestoreAdminV1DatabaseSnapshot < 3) {
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshotTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1DatabaseSnapshot--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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
    o.collectionIds = buildUnnamed16();
    o.namespaceIds = buildUnnamed17();
    o.outputUriPrefix = 'foo';
    o.snapshotTime = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest--;
  return o;
}

void checkGoogleFirestoreAdminV1ExportDocumentsRequest(
    api.GoogleFirestoreAdminV1ExportDocumentsRequest o) {
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest < 3) {
    checkUnnamed16(o.collectionIds!);
    checkUnnamed17(o.namespaceIds!);
    unittest.expect(
      o.outputUriPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshotTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1ExportDocumentsRequest--;
}

core.int buildCounterGoogleFirestoreAdminV1Field = 0;
api.GoogleFirestoreAdminV1Field buildGoogleFirestoreAdminV1Field() {
  final o = api.GoogleFirestoreAdminV1Field();
  buildCounterGoogleFirestoreAdminV1Field++;
  if (buildCounterGoogleFirestoreAdminV1Field < 3) {
    o.indexConfig = buildGoogleFirestoreAdminV1IndexConfig();
    o.name = 'foo';
    o.ttlConfig = buildGoogleFirestoreAdminV1TtlConfig();
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
    checkGoogleFirestoreAdminV1TtlConfig(o.ttlConfig!);
  }
  buildCounterGoogleFirestoreAdminV1Field--;
}

core.int buildCounterGoogleFirestoreAdminV1FlatIndex = 0;
api.GoogleFirestoreAdminV1FlatIndex buildGoogleFirestoreAdminV1FlatIndex() {
  final o = api.GoogleFirestoreAdminV1FlatIndex();
  buildCounterGoogleFirestoreAdminV1FlatIndex++;
  if (buildCounterGoogleFirestoreAdminV1FlatIndex < 3) {}
  buildCounterGoogleFirestoreAdminV1FlatIndex--;
  return o;
}

void checkGoogleFirestoreAdminV1FlatIndex(
    api.GoogleFirestoreAdminV1FlatIndex o) {
  buildCounterGoogleFirestoreAdminV1FlatIndex++;
  if (buildCounterGoogleFirestoreAdminV1FlatIndex < 3) {}
  buildCounterGoogleFirestoreAdminV1FlatIndex--;
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

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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
    o.collectionIds = buildUnnamed18();
    o.inputUriPrefix = 'foo';
    o.namespaceIds = buildUnnamed19();
  }
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest--;
  return o;
}

void checkGoogleFirestoreAdminV1ImportDocumentsRequest(
    api.GoogleFirestoreAdminV1ImportDocumentsRequest o) {
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest < 3) {
    checkUnnamed18(o.collectionIds!);
    unittest.expect(
      o.inputUriPrefix!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.namespaceIds!);
  }
  buildCounterGoogleFirestoreAdminV1ImportDocumentsRequest--;
}

core.List<api.GoogleFirestoreAdminV1IndexField> buildUnnamed20() => [
      buildGoogleFirestoreAdminV1IndexField(),
      buildGoogleFirestoreAdminV1IndexField(),
    ];

void checkUnnamed20(core.List<api.GoogleFirestoreAdminV1IndexField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1IndexField(o[0]);
  checkGoogleFirestoreAdminV1IndexField(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1Index = 0;
api.GoogleFirestoreAdminV1Index buildGoogleFirestoreAdminV1Index() {
  final o = api.GoogleFirestoreAdminV1Index();
  buildCounterGoogleFirestoreAdminV1Index++;
  if (buildCounterGoogleFirestoreAdminV1Index < 3) {
    o.apiScope = 'foo';
    o.fields = buildUnnamed20();
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
    unittest.expect(
      o.apiScope!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.fields!);
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

core.List<api.GoogleFirestoreAdminV1Index> buildUnnamed21() => [
      buildGoogleFirestoreAdminV1Index(),
      buildGoogleFirestoreAdminV1Index(),
    ];

void checkUnnamed21(core.List<api.GoogleFirestoreAdminV1Index> o) {
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
    o.indexes = buildUnnamed21();
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
    checkUnnamed21(o.indexes!);
    unittest.expect(o.reverting!, unittest.isTrue);
    unittest.expect(o.usesAncestorConfig!, unittest.isTrue);
  }
  buildCounterGoogleFirestoreAdminV1IndexConfig--;
}

core.int buildCounterGoogleFirestoreAdminV1IndexField = 0;
api.GoogleFirestoreAdminV1IndexField buildGoogleFirestoreAdminV1IndexField() {
  final o = api.GoogleFirestoreAdminV1IndexField();
  buildCounterGoogleFirestoreAdminV1IndexField++;
  if (buildCounterGoogleFirestoreAdminV1IndexField < 3) {
    o.arrayConfig = 'foo';
    o.fieldPath = 'foo';
    o.order = 'foo';
    o.vectorConfig = buildGoogleFirestoreAdminV1VectorConfig();
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
    checkGoogleFirestoreAdminV1VectorConfig(o.vectorConfig!);
  }
  buildCounterGoogleFirestoreAdminV1IndexField--;
}

core.List<api.GoogleFirestoreAdminV1BackupSchedule> buildUnnamed22() => [
      buildGoogleFirestoreAdminV1BackupSchedule(),
      buildGoogleFirestoreAdminV1BackupSchedule(),
    ];

void checkUnnamed22(core.List<api.GoogleFirestoreAdminV1BackupSchedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1BackupSchedule(o[0]);
  checkGoogleFirestoreAdminV1BackupSchedule(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1ListBackupSchedulesResponse = 0;
api.GoogleFirestoreAdminV1ListBackupSchedulesResponse
    buildGoogleFirestoreAdminV1ListBackupSchedulesResponse() {
  final o = api.GoogleFirestoreAdminV1ListBackupSchedulesResponse();
  buildCounterGoogleFirestoreAdminV1ListBackupSchedulesResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListBackupSchedulesResponse < 3) {
    o.backupSchedules = buildUnnamed22();
  }
  buildCounterGoogleFirestoreAdminV1ListBackupSchedulesResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1ListBackupSchedulesResponse(
    api.GoogleFirestoreAdminV1ListBackupSchedulesResponse o) {
  buildCounterGoogleFirestoreAdminV1ListBackupSchedulesResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListBackupSchedulesResponse < 3) {
    checkUnnamed22(o.backupSchedules!);
  }
  buildCounterGoogleFirestoreAdminV1ListBackupSchedulesResponse--;
}

core.List<api.GoogleFirestoreAdminV1Backup> buildUnnamed23() => [
      buildGoogleFirestoreAdminV1Backup(),
      buildGoogleFirestoreAdminV1Backup(),
    ];

void checkUnnamed23(core.List<api.GoogleFirestoreAdminV1Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1Backup(o[0]);
  checkGoogleFirestoreAdminV1Backup(o[1]);
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterGoogleFirestoreAdminV1ListBackupsResponse = 0;
api.GoogleFirestoreAdminV1ListBackupsResponse
    buildGoogleFirestoreAdminV1ListBackupsResponse() {
  final o = api.GoogleFirestoreAdminV1ListBackupsResponse();
  buildCounterGoogleFirestoreAdminV1ListBackupsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListBackupsResponse < 3) {
    o.backups = buildUnnamed23();
    o.unreachable = buildUnnamed24();
  }
  buildCounterGoogleFirestoreAdminV1ListBackupsResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1ListBackupsResponse(
    api.GoogleFirestoreAdminV1ListBackupsResponse o) {
  buildCounterGoogleFirestoreAdminV1ListBackupsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListBackupsResponse < 3) {
    checkUnnamed23(o.backups!);
    checkUnnamed24(o.unreachable!);
  }
  buildCounterGoogleFirestoreAdminV1ListBackupsResponse--;
}

core.List<api.GoogleFirestoreAdminV1Database> buildUnnamed25() => [
      buildGoogleFirestoreAdminV1Database(),
      buildGoogleFirestoreAdminV1Database(),
    ];

void checkUnnamed25(core.List<api.GoogleFirestoreAdminV1Database> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1Database(o[0]);
  checkGoogleFirestoreAdminV1Database(o[1]);
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterGoogleFirestoreAdminV1ListDatabasesResponse = 0;
api.GoogleFirestoreAdminV1ListDatabasesResponse
    buildGoogleFirestoreAdminV1ListDatabasesResponse() {
  final o = api.GoogleFirestoreAdminV1ListDatabasesResponse();
  buildCounterGoogleFirestoreAdminV1ListDatabasesResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListDatabasesResponse < 3) {
    o.databases = buildUnnamed25();
    o.unreachable = buildUnnamed26();
  }
  buildCounterGoogleFirestoreAdminV1ListDatabasesResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1ListDatabasesResponse(
    api.GoogleFirestoreAdminV1ListDatabasesResponse o) {
  buildCounterGoogleFirestoreAdminV1ListDatabasesResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListDatabasesResponse < 3) {
    checkUnnamed25(o.databases!);
    checkUnnamed26(o.unreachable!);
  }
  buildCounterGoogleFirestoreAdminV1ListDatabasesResponse--;
}

core.List<api.GoogleFirestoreAdminV1Field> buildUnnamed27() => [
      buildGoogleFirestoreAdminV1Field(),
      buildGoogleFirestoreAdminV1Field(),
    ];

void checkUnnamed27(core.List<api.GoogleFirestoreAdminV1Field> o) {
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
    o.fields = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1ListFieldsResponse(
    api.GoogleFirestoreAdminV1ListFieldsResponse o) {
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListFieldsResponse < 3) {
    checkUnnamed27(o.fields!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1ListFieldsResponse--;
}

core.List<api.GoogleFirestoreAdminV1Index> buildUnnamed28() => [
      buildGoogleFirestoreAdminV1Index(),
      buildGoogleFirestoreAdminV1Index(),
    ];

void checkUnnamed28(core.List<api.GoogleFirestoreAdminV1Index> o) {
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
    o.indexes = buildUnnamed28();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1ListIndexesResponse(
    api.GoogleFirestoreAdminV1ListIndexesResponse o) {
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleFirestoreAdminV1ListIndexesResponse < 3) {
    checkUnnamed28(o.indexes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1ListIndexesResponse--;
}

core.int buildCounterGoogleFirestoreAdminV1RestoreDatabaseRequest = 0;
api.GoogleFirestoreAdminV1RestoreDatabaseRequest
    buildGoogleFirestoreAdminV1RestoreDatabaseRequest() {
  final o = api.GoogleFirestoreAdminV1RestoreDatabaseRequest();
  buildCounterGoogleFirestoreAdminV1RestoreDatabaseRequest++;
  if (buildCounterGoogleFirestoreAdminV1RestoreDatabaseRequest < 3) {
    o.backup = 'foo';
    o.databaseId = 'foo';
    o.databaseSnapshot = buildGoogleFirestoreAdminV1DatabaseSnapshot();
  }
  buildCounterGoogleFirestoreAdminV1RestoreDatabaseRequest--;
  return o;
}

void checkGoogleFirestoreAdminV1RestoreDatabaseRequest(
    api.GoogleFirestoreAdminV1RestoreDatabaseRequest o) {
  buildCounterGoogleFirestoreAdminV1RestoreDatabaseRequest++;
  if (buildCounterGoogleFirestoreAdminV1RestoreDatabaseRequest < 3) {
    unittest.expect(
      o.backup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseId!,
      unittest.equals('foo'),
    );
    checkGoogleFirestoreAdminV1DatabaseSnapshot(o.databaseSnapshot!);
  }
  buildCounterGoogleFirestoreAdminV1RestoreDatabaseRequest--;
}

core.int buildCounterGoogleFirestoreAdminV1Stats = 0;
api.GoogleFirestoreAdminV1Stats buildGoogleFirestoreAdminV1Stats() {
  final o = api.GoogleFirestoreAdminV1Stats();
  buildCounterGoogleFirestoreAdminV1Stats++;
  if (buildCounterGoogleFirestoreAdminV1Stats < 3) {
    o.documentCount = 'foo';
    o.indexCount = 'foo';
    o.sizeBytes = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1Stats--;
  return o;
}

void checkGoogleFirestoreAdminV1Stats(api.GoogleFirestoreAdminV1Stats o) {
  buildCounterGoogleFirestoreAdminV1Stats++;
  if (buildCounterGoogleFirestoreAdminV1Stats < 3) {
    unittest.expect(
      o.documentCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.indexCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1Stats--;
}

core.int buildCounterGoogleFirestoreAdminV1TtlConfig = 0;
api.GoogleFirestoreAdminV1TtlConfig buildGoogleFirestoreAdminV1TtlConfig() {
  final o = api.GoogleFirestoreAdminV1TtlConfig();
  buildCounterGoogleFirestoreAdminV1TtlConfig++;
  if (buildCounterGoogleFirestoreAdminV1TtlConfig < 3) {
    o.state = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1TtlConfig--;
  return o;
}

void checkGoogleFirestoreAdminV1TtlConfig(
    api.GoogleFirestoreAdminV1TtlConfig o) {
  buildCounterGoogleFirestoreAdminV1TtlConfig++;
  if (buildCounterGoogleFirestoreAdminV1TtlConfig < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1TtlConfig--;
}

core.int buildCounterGoogleFirestoreAdminV1VectorConfig = 0;
api.GoogleFirestoreAdminV1VectorConfig
    buildGoogleFirestoreAdminV1VectorConfig() {
  final o = api.GoogleFirestoreAdminV1VectorConfig();
  buildCounterGoogleFirestoreAdminV1VectorConfig++;
  if (buildCounterGoogleFirestoreAdminV1VectorConfig < 3) {
    o.dimension = 42;
    o.flat = buildGoogleFirestoreAdminV1FlatIndex();
  }
  buildCounterGoogleFirestoreAdminV1VectorConfig--;
  return o;
}

void checkGoogleFirestoreAdminV1VectorConfig(
    api.GoogleFirestoreAdminV1VectorConfig o) {
  buildCounterGoogleFirestoreAdminV1VectorConfig++;
  if (buildCounterGoogleFirestoreAdminV1VectorConfig < 3) {
    unittest.expect(
      o.dimension!,
      unittest.equals(42),
    );
    checkGoogleFirestoreAdminV1FlatIndex(o.flat!);
  }
  buildCounterGoogleFirestoreAdminV1VectorConfig--;
}

core.int buildCounterGoogleFirestoreAdminV1WeeklyRecurrence = 0;
api.GoogleFirestoreAdminV1WeeklyRecurrence
    buildGoogleFirestoreAdminV1WeeklyRecurrence() {
  final o = api.GoogleFirestoreAdminV1WeeklyRecurrence();
  buildCounterGoogleFirestoreAdminV1WeeklyRecurrence++;
  if (buildCounterGoogleFirestoreAdminV1WeeklyRecurrence < 3) {
    o.day = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1WeeklyRecurrence--;
  return o;
}

void checkGoogleFirestoreAdminV1WeeklyRecurrence(
    api.GoogleFirestoreAdminV1WeeklyRecurrence o) {
  buildCounterGoogleFirestoreAdminV1WeeklyRecurrence++;
  if (buildCounterGoogleFirestoreAdminV1WeeklyRecurrence < 3) {
    unittest.expect(
      o.day!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirestoreAdminV1WeeklyRecurrence--;
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

core.List<api.GoogleLongrunningOperation> buildUnnamed29() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed29(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed29();
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
    checkUnnamed29(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed30();
    o.name = 'foo';
    o.response = buildUnnamed31();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed30(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.response!);
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
    o.readTime = 'foo';
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
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCollectionIdsRequest--;
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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
    o.collectionIds = buildUnnamed32();
    o.nextPageToken = 'foo';
  }
  buildCounterListCollectionIdsResponse--;
  return o;
}

void checkListCollectionIdsResponse(api.ListCollectionIdsResponse o) {
  buildCounterListCollectionIdsResponse++;
  if (buildCounterListCollectionIdsResponse < 3) {
    checkUnnamed32(o.collectionIds!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCollectionIdsResponse--;
}

core.List<api.Document> buildUnnamed33() => [
      buildDocument(),
      buildDocument(),
    ];

void checkUnnamed33(core.List<api.Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocument(o[0]);
  checkDocument(o[1]);
}

core.int buildCounterListDocumentsResponse = 0;
api.ListDocumentsResponse buildListDocumentsResponse() {
  final o = api.ListDocumentsResponse();
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    o.documents = buildUnnamed33();
    o.nextPageToken = 'foo';
  }
  buildCounterListDocumentsResponse--;
  return o;
}

void checkListDocumentsResponse(api.ListDocumentsResponse o) {
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    checkUnnamed33(o.documents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDocumentsResponse--;
}

core.List<api.Location> buildUnnamed34() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed34(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed34();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed34(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed35() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed35(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed36() => {
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

void checkUnnamed36(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed35();
    o.locationId = 'foo';
    o.metadata = buildUnnamed36();
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
    checkUnnamed35(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, api.Value> buildUnnamed37() => {
      'x': buildValue(),
      'y': buildValue(),
    };

void checkUnnamed37(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o['x']!);
  checkValue(o['y']!);
}

core.int buildCounterMapValue = 0;
api.MapValue buildMapValue() {
  final o = api.MapValue();
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    o.fields = buildUnnamed37();
  }
  buildCounterMapValue--;
  return o;
}

void checkMapValue(api.MapValue o) {
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    checkUnnamed37(o.fields!);
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
    o.readTime = 'foo';
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
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    checkStructuredQuery(o.structuredQuery!);
  }
  buildCounterPartitionQueryRequest--;
}

core.List<api.Cursor> buildUnnamed38() => [
      buildCursor(),
      buildCursor(),
    ];

void checkUnnamed38(core.List<api.Cursor> o) {
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
    o.partitions = buildUnnamed38();
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
    checkUnnamed38(o.partitions!);
  }
  buildCounterPartitionQueryResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed39() => {
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

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed40() => [
      buildUnnamed39(),
      buildUnnamed39(),
    ];

void checkUnnamed40(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed39(o[0]);
  checkUnnamed39(o[1]);
}

core.int buildCounterPlanSummary = 0;
api.PlanSummary buildPlanSummary() {
  final o = api.PlanSummary();
  buildCounterPlanSummary++;
  if (buildCounterPlanSummary < 3) {
    o.indexesUsed = buildUnnamed40();
  }
  buildCounterPlanSummary--;
  return o;
}

void checkPlanSummary(api.PlanSummary o) {
  buildCounterPlanSummary++;
  if (buildCounterPlanSummary < 3) {
    checkUnnamed40(o.indexesUsed!);
  }
  buildCounterPlanSummary--;
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

core.List<api.FieldReference> buildUnnamed41() => [
      buildFieldReference(),
      buildFieldReference(),
    ];

void checkUnnamed41(core.List<api.FieldReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldReference(o[0]);
  checkFieldReference(o[1]);
}

core.int buildCounterProjection = 0;
api.Projection buildProjection() {
  final o = api.Projection();
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    o.fields = buildUnnamed41();
  }
  buildCounterProjection--;
  return o;
}

void checkProjection(api.Projection o) {
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    checkUnnamed41(o.fields!);
  }
  buildCounterProjection--;
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

core.int buildCounterRunAggregationQueryRequest = 0;
api.RunAggregationQueryRequest buildRunAggregationQueryRequest() {
  final o = api.RunAggregationQueryRequest();
  buildCounterRunAggregationQueryRequest++;
  if (buildCounterRunAggregationQueryRequest < 3) {
    o.explainOptions = buildExplainOptions();
    o.newTransaction = buildTransactionOptions();
    o.readTime = 'foo';
    o.structuredAggregationQuery = buildStructuredAggregationQuery();
    o.transaction = 'foo';
  }
  buildCounterRunAggregationQueryRequest--;
  return o;
}

void checkRunAggregationQueryRequest(api.RunAggregationQueryRequest o) {
  buildCounterRunAggregationQueryRequest++;
  if (buildCounterRunAggregationQueryRequest < 3) {
    checkExplainOptions(o.explainOptions!);
    checkTransactionOptions(o.newTransaction!);
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    checkStructuredAggregationQuery(o.structuredAggregationQuery!);
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunAggregationQueryRequest--;
}

core.int buildCounterRunAggregationQueryResponseElement = 0;
api.RunAggregationQueryResponseElement
    buildRunAggregationQueryResponseElement() {
  final o = api.RunAggregationQueryResponseElement();
  buildCounterRunAggregationQueryResponseElement++;
  if (buildCounterRunAggregationQueryResponseElement < 3) {
    o.explainMetrics = buildExplainMetrics();
    o.readTime = 'foo';
    o.result = buildAggregationResult();
    o.transaction = 'foo';
  }
  buildCounterRunAggregationQueryResponseElement--;
  return o;
}

void checkRunAggregationQueryResponseElement(
    api.RunAggregationQueryResponseElement o) {
  buildCounterRunAggregationQueryResponseElement++;
  if (buildCounterRunAggregationQueryResponseElement < 3) {
    checkExplainMetrics(o.explainMetrics!);
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    checkAggregationResult(o.result!);
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunAggregationQueryResponseElement--;
}

api.RunAggregationQueryResponse buildRunAggregationQueryResponse() {
  return [
    buildRunAggregationQueryResponseElement(),
    buildRunAggregationQueryResponseElement(),
  ];
}

void checkRunAggregationQueryResponse(api.RunAggregationQueryResponse o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunAggregationQueryResponseElement(o[0]);
  checkRunAggregationQueryResponseElement(o[1]);
}

core.int buildCounterRunQueryRequest = 0;
api.RunQueryRequest buildRunQueryRequest() {
  final o = api.RunQueryRequest();
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    o.explainOptions = buildExplainOptions();
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
    checkExplainOptions(o.explainOptions!);
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

core.int buildCounterRunQueryResponseElement = 0;
api.RunQueryResponseElement buildRunQueryResponseElement() {
  final o = api.RunQueryResponseElement();
  buildCounterRunQueryResponseElement++;
  if (buildCounterRunQueryResponseElement < 3) {
    o.document = buildDocument();
    o.done = true;
    o.explainMetrics = buildExplainMetrics();
    o.readTime = 'foo';
    o.skippedResults = 42;
    o.transaction = 'foo';
  }
  buildCounterRunQueryResponseElement--;
  return o;
}

void checkRunQueryResponseElement(api.RunQueryResponseElement o) {
  buildCounterRunQueryResponseElement++;
  if (buildCounterRunQueryResponseElement < 3) {
    checkDocument(o.document!);
    unittest.expect(o.done!, unittest.isTrue);
    checkExplainMetrics(o.explainMetrics!);
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
  buildCounterRunQueryResponseElement--;
}

api.RunQueryResponse buildRunQueryResponse() {
  return [
    buildRunQueryResponseElement(),
    buildRunQueryResponseElement(),
  ];
}

void checkRunQueryResponse(api.RunQueryResponse o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunQueryResponseElement(o[0]);
  checkRunQueryResponseElement(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed42() => {
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

void checkUnnamed42(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed43() => [
      buildUnnamed42(),
      buildUnnamed42(),
    ];

void checkUnnamed43(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed42(o[0]);
  checkUnnamed42(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed43();
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
    checkUnnamed43(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.Aggregation> buildUnnamed44() => [
      buildAggregation(),
      buildAggregation(),
    ];

void checkUnnamed44(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0]);
  checkAggregation(o[1]);
}

core.int buildCounterStructuredAggregationQuery = 0;
api.StructuredAggregationQuery buildStructuredAggregationQuery() {
  final o = api.StructuredAggregationQuery();
  buildCounterStructuredAggregationQuery++;
  if (buildCounterStructuredAggregationQuery < 3) {
    o.aggregations = buildUnnamed44();
    o.structuredQuery = buildStructuredQuery();
  }
  buildCounterStructuredAggregationQuery--;
  return o;
}

void checkStructuredAggregationQuery(api.StructuredAggregationQuery o) {
  buildCounterStructuredAggregationQuery++;
  if (buildCounterStructuredAggregationQuery < 3) {
    checkUnnamed44(o.aggregations!);
    checkStructuredQuery(o.structuredQuery!);
  }
  buildCounterStructuredAggregationQuery--;
}

core.List<api.CollectionSelector> buildUnnamed45() => [
      buildCollectionSelector(),
      buildCollectionSelector(),
    ];

void checkUnnamed45(core.List<api.CollectionSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionSelector(o[0]);
  checkCollectionSelector(o[1]);
}

core.List<api.Order> buildUnnamed46() => [
      buildOrder(),
      buildOrder(),
    ];

void checkUnnamed46(core.List<api.Order> o) {
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
    o.findNearest = buildFindNearest();
    o.from = buildUnnamed45();
    o.limit = 42;
    o.offset = 42;
    o.orderBy = buildUnnamed46();
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
    checkFindNearest(o.findNearest!);
    checkUnnamed45(o.from!);
    unittest.expect(
      o.limit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offset!,
      unittest.equals(42),
    );
    checkUnnamed46(o.orderBy!);
    checkProjection(o.select!);
    checkCursor(o.startAt!);
    checkFilter(o.where!);
  }
  buildCounterStructuredQuery--;
}

core.int buildCounterSum = 0;
api.Sum buildSum() {
  final o = api.Sum();
  buildCounterSum++;
  if (buildCounterSum < 3) {
    o.field = buildFieldReference();
  }
  buildCounterSum--;
  return o;
}

void checkSum(api.Sum o) {
  buildCounterSum++;
  if (buildCounterSum < 3) {
    checkFieldReference(o.field!);
  }
  buildCounterSum--;
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
    o.nullValue = 'NULL_VALUE';
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
      unittest.equals('NULL_VALUE'),
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

core.List<api.FieldTransform> buildUnnamed47() => [
      buildFieldTransform(),
      buildFieldTransform(),
    ];

void checkUnnamed47(core.List<api.FieldTransform> o) {
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
    o.updateTransforms = buildUnnamed47();
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
    checkUnnamed47(o.updateTransforms!);
  }
  buildCounterWrite--;
}

core.Map<core.String, core.String> buildUnnamed48() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed48(core.Map<core.String, core.String> o) {
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

core.List<api.Write> buildUnnamed49() => [
      buildWrite(),
      buildWrite(),
    ];

void checkUnnamed49(core.List<api.Write> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWrite(o[0]);
  checkWrite(o[1]);
}

core.int buildCounterWriteRequest = 0;
api.WriteRequest buildWriteRequest() {
  final o = api.WriteRequest();
  buildCounterWriteRequest++;
  if (buildCounterWriteRequest < 3) {
    o.labels = buildUnnamed48();
    o.streamId = 'foo';
    o.streamToken = 'foo';
    o.writes = buildUnnamed49();
  }
  buildCounterWriteRequest--;
  return o;
}

void checkWriteRequest(api.WriteRequest o) {
  buildCounterWriteRequest++;
  if (buildCounterWriteRequest < 3) {
    checkUnnamed48(o.labels!);
    unittest.expect(
      o.streamId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streamToken!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.writes!);
  }
  buildCounterWriteRequest--;
}

core.List<api.WriteResult> buildUnnamed50() => [
      buildWriteResult(),
      buildWriteResult(),
    ];

void checkUnnamed50(core.List<api.WriteResult> o) {
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
    o.writeResults = buildUnnamed50();
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
    checkUnnamed50(o.writeResults!);
  }
  buildCounterWriteResponse--;
}

core.List<api.Value> buildUnnamed51() => [
      buildValue(),
      buildValue(),
    ];

void checkUnnamed51(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterWriteResult = 0;
api.WriteResult buildWriteResult() {
  final o = api.WriteResult();
  buildCounterWriteResult++;
  if (buildCounterWriteResult < 3) {
    o.transformResults = buildUnnamed51();
    o.updateTime = 'foo';
  }
  buildCounterWriteResult--;
  return o;
}

void checkWriteResult(api.WriteResult o) {
  buildCounterWriteResult++;
  if (buildCounterWriteResult < 3) {
    checkUnnamed51(o.transformResults!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterWriteResult--;
}

core.List<core.String> buildUnnamed52() => [
      'foo',
      'foo',
    ];

void checkUnnamed52(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed53() => [
      'foo',
      'foo',
    ];

void checkUnnamed53(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed54() => [
      'foo',
      'foo',
    ];

void checkUnnamed54(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed55() => [
      'foo',
      'foo',
    ];

void checkUnnamed55(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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
  unittest.group('obj-schema-Aggregation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Aggregation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregation(od);
    });
  });

  unittest.group('obj-schema-AggregationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationResult(od);
    });
  });

  unittest.group('obj-schema-ArrayValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArrayValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ArrayValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkArrayValue(od);
    });
  });

  unittest.group('obj-schema-Avg', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvg();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Avg.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAvg(od);
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

  unittest.group('obj-schema-BatchGetDocumentsResponseElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetDocumentsResponseElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetDocumentsResponseElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetDocumentsResponseElement(od);
    });
  });

  unittest.group('obj-schema-BatchGetDocumentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = (oJson as core.List)
          .map((value) => api.BatchGetDocumentsResponseElement.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
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

  unittest.group('obj-schema-Count', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Count.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCount(od);
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

  unittest.group('obj-schema-DocumentMask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentMask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentMask.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentMask(od);
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

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ExecutionStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionStats(od);
    });
  });

  unittest.group('obj-schema-ExplainMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplainMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExplainMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExplainMetrics(od);
    });
  });

  unittest.group('obj-schema-ExplainOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplainOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExplainOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExplainOptions(od);
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

  unittest.group('obj-schema-FindNearest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindNearest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindNearest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindNearest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1Backup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1Backup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1Backup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1Backup(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1BackupSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1BackupSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1BackupSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1BackupSchedule(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1CmekConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1CmekConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1CmekConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1CmekConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1DailyRecurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1DailyRecurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1DailyRecurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1DailyRecurrence(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1Database', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1Database();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1Database.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1Database(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1DatabaseSnapshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1DatabaseSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1DatabaseSnapshot.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1DatabaseSnapshot(od);
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

  unittest.group('obj-schema-GoogleFirestoreAdminV1Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1Field();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1Field.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1Field(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1FlatIndex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1FlatIndex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1FlatIndex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1FlatIndex(od);
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

  unittest.group('obj-schema-GoogleFirestoreAdminV1IndexField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1IndexField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1IndexField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1IndexField(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1ListBackupSchedulesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1ListBackupSchedulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1ListBackupSchedulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1ListBackupSchedulesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1ListBackupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1ListBackupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1ListBackupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1ListBackupsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1ListDatabasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1ListDatabasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1ListDatabasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1ListDatabasesResponse(od);
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

  unittest.group('obj-schema-GoogleFirestoreAdminV1RestoreDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1RestoreDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1RestoreDatabaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1RestoreDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1Stats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1Stats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1Stats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1Stats(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1TtlConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1TtlConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1TtlConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1TtlConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1VectorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1VectorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1VectorConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1VectorConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1WeeklyRecurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1WeeklyRecurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1WeeklyRecurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirestoreAdminV1WeeklyRecurrence(od);
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

  unittest.group('obj-schema-PlanSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlanSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlanSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlanSummary(od);
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

  unittest.group('obj-schema-RunAggregationQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunAggregationQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunAggregationQueryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunAggregationQueryRequest(od);
    });
  });

  unittest.group('obj-schema-RunAggregationQueryResponseElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunAggregationQueryResponseElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunAggregationQueryResponseElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunAggregationQueryResponseElement(od);
    });
  });

  unittest.group('obj-schema-RunAggregationQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunAggregationQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = (oJson as core.List)
          .map((value) => api.RunAggregationQueryResponseElement.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
      checkRunAggregationQueryResponse(od);
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

  unittest.group('obj-schema-RunQueryResponseElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunQueryResponseElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunQueryResponseElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunQueryResponseElement(od);
    });
  });

  unittest.group('obj-schema-RunQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = (oJson as core.List)
          .map((value) => api.RunQueryResponseElement.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
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

  unittest.group('obj-schema-StructuredAggregationQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredAggregationQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredAggregationQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStructuredAggregationQuery(od);
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

  unittest.group('obj-schema-Sum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Sum.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSum(od);
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
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_request = buildGoogleFirestoreAdminV1Database();
      final arg_parent = 'foo';
      final arg_databaseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirestoreAdminV1Database.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirestoreAdminV1Database(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['databaseId']!.first,
          unittest.equals(arg_databaseId),
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
      final response = await res.create(arg_request, arg_parent,
          databaseId: arg_databaseId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
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
      final response =
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

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

        final path = req.url.path;
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

        final query = req.url.query;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json.encode(buildGoogleFirestoreAdminV1Database());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1Database(
          response as api.GoogleFirestoreAdminV1Database);
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

        final path = req.url.path;
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

        final query = req.url.query;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json
            .encode(buildGoogleFirestoreAdminV1ListDatabasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1ListDatabasesResponse(
          response as api.GoogleFirestoreAdminV1ListDatabasesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_request = buildGoogleFirestoreAdminV1Database();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirestoreAdminV1Database.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirestoreAdminV1Database(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_request = buildGoogleFirestoreAdminV1RestoreDatabaseRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirestoreAdminV1RestoreDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirestoreAdminV1RestoreDatabaseRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
          await res.restore(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsDatabasesBackupSchedulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.backupSchedules;
      final arg_request = buildGoogleFirestoreAdminV1BackupSchedule();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirestoreAdminV1BackupSchedule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirestoreAdminV1BackupSchedule(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
            convert.json.encode(buildGoogleFirestoreAdminV1BackupSchedule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1BackupSchedule(
          response as api.GoogleFirestoreAdminV1BackupSchedule);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.backupSchedules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
      final res = api.FirestoreApi(mock).projects.databases.backupSchedules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
            convert.json.encode(buildGoogleFirestoreAdminV1BackupSchedule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1BackupSchedule(
          response as api.GoogleFirestoreAdminV1BackupSchedule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.backupSchedules;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json
            .encode(buildGoogleFirestoreAdminV1ListBackupSchedulesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1ListBackupSchedulesResponse(
          response as api.GoogleFirestoreAdminV1ListBackupSchedulesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.backupSchedules;
      final arg_request = buildGoogleFirestoreAdminV1BackupSchedule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirestoreAdminV1BackupSchedule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirestoreAdminV1BackupSchedule(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp =
            convert.json.encode(buildGoogleFirestoreAdminV1BackupSchedule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1BackupSchedule(
          response as api.GoogleFirestoreAdminV1BackupSchedule);
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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
      final arg_mask_fieldPaths = buildUnnamed52();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Document.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDocument(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
      final arg_mask_fieldPaths = buildUnnamed53();
      final arg_readTime = 'foo';
      final arg_transaction = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
      final arg_mask_fieldPaths = buildUnnamed54();
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
      final arg_showMissing = true;
      final arg_transaction = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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

    unittest.test('method--listDocuments', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_parent = 'foo';
      final arg_collectionId = 'foo';
      final arg_mask_fieldPaths = buildUnnamed55();
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
      final arg_showMissing = true;
      final arg_transaction = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
      final response = await res.listDocuments(arg_parent, arg_collectionId,
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

        final path = req.url.path;
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

        final query = req.url.query;
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
      final arg_mask_fieldPaths = buildUnnamed56();
      final arg_updateMask_fieldPaths = buildUnnamed57();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Document.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDocument(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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

    unittest.test('method--runAggregationQuery', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildRunAggregationQueryRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunAggregationQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunAggregationQueryRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json.encode(buildRunAggregationQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.runAggregationQuery(arg_request, arg_parent,
          $fields: arg_$fields);
      checkRunAggregationQueryResponse(
          response as api.RunAggregationQueryResponse);
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

        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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

  unittest.group('resource-ProjectsLocationsBackupsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.locations.backups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
      final res = api.FirestoreApi(mock).projects.locations.backups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json.encode(buildGoogleFirestoreAdminV1Backup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1Backup(
          response as api.GoogleFirestoreAdminV1Backup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.locations.backups;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json
            .encode(buildGoogleFirestoreAdminV1ListBackupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1ListBackupsResponse(
          response as api.GoogleFirestoreAdminV1ListBackupsResponse);
    });
  });
}
