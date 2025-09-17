// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/firestore/v1beta1.dart' as api;
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
    unittest.expect(o.alias!, unittest.equals('foo'));
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

core.List<api.Value> buildUnnamed1() => [buildValue(), buildValue()];

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

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    unittest.expect(o.readTime!, unittest.equals('foo'));
    unittest.expect(o.transaction!, unittest.equals('foo'));
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
    unittest.expect(o.missing!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
    unittest.expect(o.transaction!, unittest.equals('foo'));
  }
  buildCounterBatchGetDocumentsResponse--;
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Write> buildUnnamed4() => [buildWrite(), buildWrite()];

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

core.List<api.Status> buildUnnamed5() => [buildStatus(), buildStatus()];

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
    unittest.expect(o.transaction!, unittest.equals('foo'));
  }
  buildCounterBeginTransactionResponse--;
}

core.int buildCounterBitSequence = 0;
api.BitSequence buildBitSequence() {
  final o = api.BitSequence();
  buildCounterBitSequence++;
  if (buildCounterBitSequence < 3) {
    o.bitmap = 'foo';
    o.padding = 42;
  }
  buildCounterBitSequence--;
  return o;
}

void checkBitSequence(api.BitSequence o) {
  buildCounterBitSequence++;
  if (buildCounterBitSequence < 3) {
    unittest.expect(o.bitmap!, unittest.equals('foo'));
    unittest.expect(o.padding!, unittest.equals(42));
  }
  buildCounterBitSequence--;
}

core.int buildCounterBloomFilter = 0;
api.BloomFilter buildBloomFilter() {
  final o = api.BloomFilter();
  buildCounterBloomFilter++;
  if (buildCounterBloomFilter < 3) {
    o.bits = buildBitSequence();
    o.hashCount = 42;
  }
  buildCounterBloomFilter--;
  return o;
}

void checkBloomFilter(api.BloomFilter o) {
  buildCounterBloomFilter++;
  if (buildCounterBloomFilter < 3) {
    checkBitSequence(o.bits!);
    unittest.expect(o.hashCount!, unittest.equals(42));
  }
  buildCounterBloomFilter--;
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
    unittest.expect(o.collectionId!, unittest.equals('foo'));
  }
  buildCounterCollectionSelector--;
}

core.List<api.Write> buildUnnamed7() => [buildWrite(), buildWrite()];

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
    unittest.expect(o.transaction!, unittest.equals('foo'));
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
    unittest.expect(o.commitTime!, unittest.equals('foo'));
    checkUnnamed8(o.writeResults!);
  }
  buildCounterCommitResponse--;
}

core.List<api.Filter> buildUnnamed9() => [buildFilter(), buildFilter()];

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
    unittest.expect(o.op!, unittest.equals('foo'));
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
    unittest.expect(o.upTo!, unittest.equals('foo'));
  }
  buildCounterCount--;
}

core.List<api.Value> buildUnnamed10() => [buildValue(), buildValue()];

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
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed11(o.fields!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterDocument--;
}

core.List<core.int> buildUnnamed12() => [42, 42];

void checkUnnamed12(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.int> buildUnnamed13() => [42, 42];

void checkUnnamed13(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterDocumentChange = 0;
api.DocumentChange buildDocumentChange() {
  final o = api.DocumentChange();
  buildCounterDocumentChange++;
  if (buildCounterDocumentChange < 3) {
    o.document = buildDocument();
    o.removedTargetIds = buildUnnamed12();
    o.targetIds = buildUnnamed13();
  }
  buildCounterDocumentChange--;
  return o;
}

void checkDocumentChange(api.DocumentChange o) {
  buildCounterDocumentChange++;
  if (buildCounterDocumentChange < 3) {
    checkDocument(o.document!);
    checkUnnamed12(o.removedTargetIds!);
    checkUnnamed13(o.targetIds!);
  }
  buildCounterDocumentChange--;
}

core.List<core.int> buildUnnamed14() => [42, 42];

void checkUnnamed14(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterDocumentDelete = 0;
api.DocumentDelete buildDocumentDelete() {
  final o = api.DocumentDelete();
  buildCounterDocumentDelete++;
  if (buildCounterDocumentDelete < 3) {
    o.document = 'foo';
    o.readTime = 'foo';
    o.removedTargetIds = buildUnnamed14();
  }
  buildCounterDocumentDelete--;
  return o;
}

void checkDocumentDelete(api.DocumentDelete o) {
  buildCounterDocumentDelete++;
  if (buildCounterDocumentDelete < 3) {
    unittest.expect(o.document!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
    checkUnnamed14(o.removedTargetIds!);
  }
  buildCounterDocumentDelete--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDocumentMask = 0;
api.DocumentMask buildDocumentMask() {
  final o = api.DocumentMask();
  buildCounterDocumentMask++;
  if (buildCounterDocumentMask < 3) {
    o.fieldPaths = buildUnnamed15();
  }
  buildCounterDocumentMask--;
  return o;
}

void checkDocumentMask(api.DocumentMask o) {
  buildCounterDocumentMask++;
  if (buildCounterDocumentMask < 3) {
    checkUnnamed15(o.fieldPaths!);
  }
  buildCounterDocumentMask--;
}

core.List<core.int> buildUnnamed16() => [42, 42];

void checkUnnamed16(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterDocumentRemove = 0;
api.DocumentRemove buildDocumentRemove() {
  final o = api.DocumentRemove();
  buildCounterDocumentRemove++;
  if (buildCounterDocumentRemove < 3) {
    o.document = 'foo';
    o.readTime = 'foo';
    o.removedTargetIds = buildUnnamed16();
  }
  buildCounterDocumentRemove--;
  return o;
}

void checkDocumentRemove(api.DocumentRemove o) {
  buildCounterDocumentRemove++;
  if (buildCounterDocumentRemove < 3) {
    unittest.expect(o.document!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
    checkUnnamed16(o.removedTargetIds!);
  }
  buildCounterDocumentRemove--;
}

core.List<api.FieldTransform> buildUnnamed17() => [
  buildFieldTransform(),
  buildFieldTransform(),
];

void checkUnnamed17(core.List<api.FieldTransform> o) {
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
    o.fieldTransforms = buildUnnamed17();
  }
  buildCounterDocumentTransform--;
  return o;
}

void checkDocumentTransform(api.DocumentTransform o) {
  buildCounterDocumentTransform++;
  if (buildCounterDocumentTransform < 3) {
    unittest.expect(o.document!, unittest.equals('foo'));
    checkUnnamed17(o.fieldTransforms!);
  }
  buildCounterDocumentTransform--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDocumentsTarget = 0;
api.DocumentsTarget buildDocumentsTarget() {
  final o = api.DocumentsTarget();
  buildCounterDocumentsTarget++;
  if (buildCounterDocumentsTarget < 3) {
    o.documents = buildUnnamed18();
  }
  buildCounterDocumentsTarget--;
  return o;
}

void checkDocumentsTarget(api.DocumentsTarget o) {
  buildCounterDocumentsTarget++;
  if (buildCounterDocumentsTarget < 3) {
    checkUnnamed18(o.documents!);
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

core.Map<core.String, core.Object?> buildUnnamed19() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterExecutionStats = 0;
api.ExecutionStats buildExecutionStats() {
  final o = api.ExecutionStats();
  buildCounterExecutionStats++;
  if (buildCounterExecutionStats < 3) {
    o.debugStats = buildUnnamed19();
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
    checkUnnamed19(o.debugStats!);
    unittest.expect(o.executionDuration!, unittest.equals('foo'));
    unittest.expect(o.readOperations!, unittest.equals('foo'));
    unittest.expect(o.resultsReturned!, unittest.equals('foo'));
  }
  buildCounterExecutionStats--;
}

core.int buildCounterExistenceFilter = 0;
api.ExistenceFilter buildExistenceFilter() {
  final o = api.ExistenceFilter();
  buildCounterExistenceFilter++;
  if (buildCounterExistenceFilter < 3) {
    o.count = 42;
    o.targetId = 42;
    o.unchangedNames = buildBloomFilter();
  }
  buildCounterExistenceFilter--;
  return o;
}

void checkExistenceFilter(api.ExistenceFilter o) {
  buildCounterExistenceFilter++;
  if (buildCounterExistenceFilter < 3) {
    unittest.expect(o.count!, unittest.equals(42));
    unittest.expect(o.targetId!, unittest.equals(42));
    checkBloomFilter(o.unchangedNames!);
  }
  buildCounterExistenceFilter--;
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
    unittest.expect(o.op!, unittest.equals('foo'));
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
    unittest.expect(o.fieldPath!, unittest.equals('foo'));
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
    unittest.expect(o.fieldPath!, unittest.equals('foo'));
    checkValue(o.increment!);
    checkValue(o.maximum!);
    checkValue(o.minimum!);
    checkArrayValue(o.removeAllFromArray!);
    unittest.expect(o.setToServerValue!, unittest.equals('foo'));
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
    o.distanceResultField = 'foo';
    o.distanceThreshold = 42.0;
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
    unittest.expect(o.distanceMeasure!, unittest.equals('foo'));
    unittest.expect(o.distanceResultField!, unittest.equals('foo'));
    unittest.expect(o.distanceThreshold!, unittest.equals(42.0));
    unittest.expect(o.limit!, unittest.equals(42));
    checkValue(o.queryVector!);
    checkFieldReference(o.vectorField!);
  }
  buildCounterFindNearest--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFirestoreAdminV1beta1ExportDocumentsRequest = 0;
api.GoogleFirestoreAdminV1beta1ExportDocumentsRequest
buildGoogleFirestoreAdminV1beta1ExportDocumentsRequest() {
  final o = api.GoogleFirestoreAdminV1beta1ExportDocumentsRequest();
  buildCounterGoogleFirestoreAdminV1beta1ExportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1beta1ExportDocumentsRequest < 3) {
    o.collectionIds = buildUnnamed20();
    o.outputUriPrefix = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta1ExportDocumentsRequest--;
  return o;
}

void checkGoogleFirestoreAdminV1beta1ExportDocumentsRequest(
  api.GoogleFirestoreAdminV1beta1ExportDocumentsRequest o,
) {
  buildCounterGoogleFirestoreAdminV1beta1ExportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1beta1ExportDocumentsRequest < 3) {
    checkUnnamed20(o.collectionIds!);
    unittest.expect(o.outputUriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta1ExportDocumentsRequest--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFirestoreAdminV1beta1ImportDocumentsRequest = 0;
api.GoogleFirestoreAdminV1beta1ImportDocumentsRequest
buildGoogleFirestoreAdminV1beta1ImportDocumentsRequest() {
  final o = api.GoogleFirestoreAdminV1beta1ImportDocumentsRequest();
  buildCounterGoogleFirestoreAdminV1beta1ImportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1beta1ImportDocumentsRequest < 3) {
    o.collectionIds = buildUnnamed21();
    o.inputUriPrefix = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta1ImportDocumentsRequest--;
  return o;
}

void checkGoogleFirestoreAdminV1beta1ImportDocumentsRequest(
  api.GoogleFirestoreAdminV1beta1ImportDocumentsRequest o,
) {
  buildCounterGoogleFirestoreAdminV1beta1ImportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1beta1ImportDocumentsRequest < 3) {
    checkUnnamed21(o.collectionIds!);
    unittest.expect(o.inputUriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta1ImportDocumentsRequest--;
}

core.List<api.GoogleFirestoreAdminV1beta1IndexField> buildUnnamed22() => [
  buildGoogleFirestoreAdminV1beta1IndexField(),
  buildGoogleFirestoreAdminV1beta1IndexField(),
];

void checkUnnamed22(core.List<api.GoogleFirestoreAdminV1beta1IndexField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1beta1IndexField(o[0]);
  checkGoogleFirestoreAdminV1beta1IndexField(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1beta1Index = 0;
api.GoogleFirestoreAdminV1beta1Index buildGoogleFirestoreAdminV1beta1Index() {
  final o = api.GoogleFirestoreAdminV1beta1Index();
  buildCounterGoogleFirestoreAdminV1beta1Index++;
  if (buildCounterGoogleFirestoreAdminV1beta1Index < 3) {
    o.collectionId = 'foo';
    o.fields = buildUnnamed22();
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta1Index--;
  return o;
}

void checkGoogleFirestoreAdminV1beta1Index(
  api.GoogleFirestoreAdminV1beta1Index o,
) {
  buildCounterGoogleFirestoreAdminV1beta1Index++;
  if (buildCounterGoogleFirestoreAdminV1beta1Index < 3) {
    unittest.expect(o.collectionId!, unittest.equals('foo'));
    checkUnnamed22(o.fields!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta1Index--;
}

core.int buildCounterGoogleFirestoreAdminV1beta1IndexField = 0;
api.GoogleFirestoreAdminV1beta1IndexField
buildGoogleFirestoreAdminV1beta1IndexField() {
  final o = api.GoogleFirestoreAdminV1beta1IndexField();
  buildCounterGoogleFirestoreAdminV1beta1IndexField++;
  if (buildCounterGoogleFirestoreAdminV1beta1IndexField < 3) {
    o.fieldPath = 'foo';
    o.mode = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta1IndexField--;
  return o;
}

void checkGoogleFirestoreAdminV1beta1IndexField(
  api.GoogleFirestoreAdminV1beta1IndexField o,
) {
  buildCounterGoogleFirestoreAdminV1beta1IndexField++;
  if (buildCounterGoogleFirestoreAdminV1beta1IndexField < 3) {
    unittest.expect(o.fieldPath!, unittest.equals('foo'));
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta1IndexField--;
}

core.List<api.GoogleFirestoreAdminV1beta1Index> buildUnnamed23() => [
  buildGoogleFirestoreAdminV1beta1Index(),
  buildGoogleFirestoreAdminV1beta1Index(),
];

void checkUnnamed23(core.List<api.GoogleFirestoreAdminV1beta1Index> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1beta1Index(o[0]);
  checkGoogleFirestoreAdminV1beta1Index(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1beta1ListIndexesResponse = 0;
api.GoogleFirestoreAdminV1beta1ListIndexesResponse
buildGoogleFirestoreAdminV1beta1ListIndexesResponse() {
  final o = api.GoogleFirestoreAdminV1beta1ListIndexesResponse();
  buildCounterGoogleFirestoreAdminV1beta1ListIndexesResponse++;
  if (buildCounterGoogleFirestoreAdminV1beta1ListIndexesResponse < 3) {
    o.indexes = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta1ListIndexesResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1beta1ListIndexesResponse(
  api.GoogleFirestoreAdminV1beta1ListIndexesResponse o,
) {
  buildCounterGoogleFirestoreAdminV1beta1ListIndexesResponse++;
  if (buildCounterGoogleFirestoreAdminV1beta1ListIndexesResponse < 3) {
    checkUnnamed23(o.indexes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta1ListIndexesResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed24() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed24(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed25() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed25(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed24();
    o.name = 'foo';
    o.response = buildUnnamed25();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed24(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed25(o.response!);
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
    unittest.expect(o.latitude!, unittest.equals(42.0));
    unittest.expect(o.longitude!, unittest.equals(42.0));
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
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
  }
  buildCounterListCollectionIdsRequest--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListCollectionIdsResponse = 0;
api.ListCollectionIdsResponse buildListCollectionIdsResponse() {
  final o = api.ListCollectionIdsResponse();
  buildCounterListCollectionIdsResponse++;
  if (buildCounterListCollectionIdsResponse < 3) {
    o.collectionIds = buildUnnamed26();
    o.nextPageToken = 'foo';
  }
  buildCounterListCollectionIdsResponse--;
  return o;
}

void checkListCollectionIdsResponse(api.ListCollectionIdsResponse o) {
  buildCounterListCollectionIdsResponse++;
  if (buildCounterListCollectionIdsResponse < 3) {
    checkUnnamed26(o.collectionIds!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCollectionIdsResponse--;
}

core.List<api.Document> buildUnnamed27() => [buildDocument(), buildDocument()];

void checkUnnamed27(core.List<api.Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocument(o[0]);
  checkDocument(o[1]);
}

core.int buildCounterListDocumentsResponse = 0;
api.ListDocumentsResponse buildListDocumentsResponse() {
  final o = api.ListDocumentsResponse();
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    o.documents = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterListDocumentsResponse--;
  return o;
}

void checkListDocumentsResponse(api.ListDocumentsResponse o) {
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    checkUnnamed27(o.documents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDocumentsResponse--;
}

core.Map<core.String, core.String> buildUnnamed28() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed28(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterListenRequest = 0;
api.ListenRequest buildListenRequest() {
  final o = api.ListenRequest();
  buildCounterListenRequest++;
  if (buildCounterListenRequest < 3) {
    o.addTarget = buildTarget();
    o.labels = buildUnnamed28();
    o.removeTarget = 42;
  }
  buildCounterListenRequest--;
  return o;
}

void checkListenRequest(api.ListenRequest o) {
  buildCounterListenRequest++;
  if (buildCounterListenRequest < 3) {
    checkTarget(o.addTarget!);
    checkUnnamed28(o.labels!);
    unittest.expect(o.removeTarget!, unittest.equals(42));
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

core.Map<core.String, api.Value> buildUnnamed29() => {
  'x': buildValue(),
  'y': buildValue(),
};

void checkUnnamed29(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o['x']!);
  checkValue(o['y']!);
}

core.int buildCounterMapValue = 0;
api.MapValue buildMapValue() {
  final o = api.MapValue();
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    o.fields = buildUnnamed29();
  }
  buildCounterMapValue--;
  return o;
}

void checkMapValue(api.MapValue o) {
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    checkUnnamed29(o.fields!);
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
    unittest.expect(o.direction!, unittest.equals('foo'));
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
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.partitionCount!, unittest.equals('foo'));
    unittest.expect(o.readTime!, unittest.equals('foo'));
    checkStructuredQuery(o.structuredQuery!);
  }
  buildCounterPartitionQueryRequest--;
}

core.List<api.Cursor> buildUnnamed30() => [buildCursor(), buildCursor()];

void checkUnnamed30(core.List<api.Cursor> o) {
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
    o.partitions = buildUnnamed30();
  }
  buildCounterPartitionQueryResponse--;
  return o;
}

void checkPartitionQueryResponse(api.PartitionQueryResponse o) {
  buildCounterPartitionQueryResponse++;
  if (buildCounterPartitionQueryResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.partitions!);
  }
  buildCounterPartitionQueryResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed32() => [
  buildUnnamed31(),
  buildUnnamed31(),
];

void checkUnnamed32(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed31(o[0]);
  checkUnnamed31(o[1]);
}

core.int buildCounterPlanSummary = 0;
api.PlanSummary buildPlanSummary() {
  final o = api.PlanSummary();
  buildCounterPlanSummary++;
  if (buildCounterPlanSummary < 3) {
    o.indexesUsed = buildUnnamed32();
  }
  buildCounterPlanSummary--;
  return o;
}

void checkPlanSummary(api.PlanSummary o) {
  buildCounterPlanSummary++;
  if (buildCounterPlanSummary < 3) {
    checkUnnamed32(o.indexesUsed!);
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
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPrecondition--;
}

core.List<api.FieldReference> buildUnnamed33() => [
  buildFieldReference(),
  buildFieldReference(),
];

void checkUnnamed33(core.List<api.FieldReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldReference(o[0]);
  checkFieldReference(o[1]);
}

core.int buildCounterProjection = 0;
api.Projection buildProjection() {
  final o = api.Projection();
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    o.fields = buildUnnamed33();
  }
  buildCounterProjection--;
  return o;
}

void checkProjection(api.Projection o) {
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    checkUnnamed33(o.fields!);
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
    unittest.expect(o.parent!, unittest.equals('foo'));
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
    unittest.expect(o.readTime!, unittest.equals('foo'));
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
    unittest.expect(o.retryTransaction!, unittest.equals('foo'));
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
    unittest.expect(o.transaction!, unittest.equals('foo'));
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
    unittest.expect(o.readTime!, unittest.equals('foo'));
    checkStructuredAggregationQuery(o.structuredAggregationQuery!);
    unittest.expect(o.transaction!, unittest.equals('foo'));
  }
  buildCounterRunAggregationQueryRequest--;
}

core.int buildCounterRunAggregationQueryResponse = 0;
api.RunAggregationQueryResponse buildRunAggregationQueryResponse() {
  final o = api.RunAggregationQueryResponse();
  buildCounterRunAggregationQueryResponse++;
  if (buildCounterRunAggregationQueryResponse < 3) {
    o.explainMetrics = buildExplainMetrics();
    o.readTime = 'foo';
    o.result = buildAggregationResult();
    o.transaction = 'foo';
  }
  buildCounterRunAggregationQueryResponse--;
  return o;
}

void checkRunAggregationQueryResponse(api.RunAggregationQueryResponse o) {
  buildCounterRunAggregationQueryResponse++;
  if (buildCounterRunAggregationQueryResponse < 3) {
    checkExplainMetrics(o.explainMetrics!);
    unittest.expect(o.readTime!, unittest.equals('foo'));
    checkAggregationResult(o.result!);
    unittest.expect(o.transaction!, unittest.equals('foo'));
  }
  buildCounterRunAggregationQueryResponse--;
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
    unittest.expect(o.readTime!, unittest.equals('foo'));
    checkStructuredQuery(o.structuredQuery!);
    unittest.expect(o.transaction!, unittest.equals('foo'));
  }
  buildCounterRunQueryRequest--;
}

core.int buildCounterRunQueryResponse = 0;
api.RunQueryResponse buildRunQueryResponse() {
  final o = api.RunQueryResponse();
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    o.document = buildDocument();
    o.done = true;
    o.explainMetrics = buildExplainMetrics();
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
    unittest.expect(o.done!, unittest.isTrue);
    checkExplainMetrics(o.explainMetrics!);
    unittest.expect(o.readTime!, unittest.equals('foo'));
    unittest.expect(o.skippedResults!, unittest.equals(42));
    unittest.expect(o.transaction!, unittest.equals('foo'));
  }
  buildCounterRunQueryResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed34() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed35() => [
  buildUnnamed34(),
  buildUnnamed34(),
];

void checkUnnamed35(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed34(o[0]);
  checkUnnamed34(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed35();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed35(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<api.Aggregation> buildUnnamed36() => [
  buildAggregation(),
  buildAggregation(),
];

void checkUnnamed36(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0]);
  checkAggregation(o[1]);
}

core.int buildCounterStructuredAggregationQuery = 0;
api.StructuredAggregationQuery buildStructuredAggregationQuery() {
  final o = api.StructuredAggregationQuery();
  buildCounterStructuredAggregationQuery++;
  if (buildCounterStructuredAggregationQuery < 3) {
    o.aggregations = buildUnnamed36();
    o.structuredQuery = buildStructuredQuery();
  }
  buildCounterStructuredAggregationQuery--;
  return o;
}

void checkStructuredAggregationQuery(api.StructuredAggregationQuery o) {
  buildCounterStructuredAggregationQuery++;
  if (buildCounterStructuredAggregationQuery < 3) {
    checkUnnamed36(o.aggregations!);
    checkStructuredQuery(o.structuredQuery!);
  }
  buildCounterStructuredAggregationQuery--;
}

core.List<api.CollectionSelector> buildUnnamed37() => [
  buildCollectionSelector(),
  buildCollectionSelector(),
];

void checkUnnamed37(core.List<api.CollectionSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionSelector(o[0]);
  checkCollectionSelector(o[1]);
}

core.List<api.Order> buildUnnamed38() => [buildOrder(), buildOrder()];

void checkUnnamed38(core.List<api.Order> o) {
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
    o.from = buildUnnamed37();
    o.limit = 42;
    o.offset = 42;
    o.orderBy = buildUnnamed38();
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
    checkUnnamed37(o.from!);
    unittest.expect(o.limit!, unittest.equals(42));
    unittest.expect(o.offset!, unittest.equals(42));
    checkUnnamed38(o.orderBy!);
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

core.int buildCounterTarget = 0;
api.Target buildTarget() {
  final o = api.Target();
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    o.documents = buildDocumentsTarget();
    o.expectedCount = 42;
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
    unittest.expect(o.expectedCount!, unittest.equals(42));
    unittest.expect(o.once!, unittest.isTrue);
    checkQueryTarget(o.query!);
    unittest.expect(o.readTime!, unittest.equals('foo'));
    unittest.expect(o.resumeToken!, unittest.equals('foo'));
    unittest.expect(o.targetId!, unittest.equals(42));
  }
  buildCounterTarget--;
}

core.List<core.int> buildUnnamed39() => [42, 42];

void checkUnnamed39(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
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
    o.targetIds = buildUnnamed39();
  }
  buildCounterTargetChange--;
  return o;
}

void checkTargetChange(api.TargetChange o) {
  buildCounterTargetChange++;
  if (buildCounterTargetChange < 3) {
    checkStatus(o.cause!);
    unittest.expect(o.readTime!, unittest.equals('foo'));
    unittest.expect(o.resumeToken!, unittest.equals('foo'));
    unittest.expect(o.targetChangeType!, unittest.equals('foo'));
    checkUnnamed39(o.targetIds!);
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
    unittest.expect(o.op!, unittest.equals('foo'));
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
    unittest.expect(o.bytesValue!, unittest.equals('foo'));
    unittest.expect(o.doubleValue!, unittest.equals(42.0));
    checkLatLng(o.geoPointValue!);
    unittest.expect(o.integerValue!, unittest.equals('foo'));
    checkMapValue(o.mapValue!);
    unittest.expect(o.nullValue!, unittest.equals('NULL_VALUE'));
    unittest.expect(o.referenceValue!, unittest.equals('foo'));
    unittest.expect(o.stringValue!, unittest.equals('foo'));
    unittest.expect(o.timestampValue!, unittest.equals('foo'));
  }
  buildCounterValue--;
}

core.List<api.FieldTransform> buildUnnamed40() => [
  buildFieldTransform(),
  buildFieldTransform(),
];

void checkUnnamed40(core.List<api.FieldTransform> o) {
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
    o.updateTransforms = buildUnnamed40();
  }
  buildCounterWrite--;
  return o;
}

void checkWrite(api.Write o) {
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    checkPrecondition(o.currentDocument!);
    unittest.expect(o.delete!, unittest.equals('foo'));
    checkDocumentTransform(o.transform!);
    checkDocument(o.update!);
    checkDocumentMask(o.updateMask!);
    checkUnnamed40(o.updateTransforms!);
  }
  buildCounterWrite--;
}

core.Map<core.String, core.String> buildUnnamed41() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed41(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Write> buildUnnamed42() => [buildWrite(), buildWrite()];

void checkUnnamed42(core.List<api.Write> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWrite(o[0]);
  checkWrite(o[1]);
}

core.int buildCounterWriteRequest = 0;
api.WriteRequest buildWriteRequest() {
  final o = api.WriteRequest();
  buildCounterWriteRequest++;
  if (buildCounterWriteRequest < 3) {
    o.labels = buildUnnamed41();
    o.streamId = 'foo';
    o.streamToken = 'foo';
    o.writes = buildUnnamed42();
  }
  buildCounterWriteRequest--;
  return o;
}

void checkWriteRequest(api.WriteRequest o) {
  buildCounterWriteRequest++;
  if (buildCounterWriteRequest < 3) {
    checkUnnamed41(o.labels!);
    unittest.expect(o.streamId!, unittest.equals('foo'));
    unittest.expect(o.streamToken!, unittest.equals('foo'));
    checkUnnamed42(o.writes!);
  }
  buildCounterWriteRequest--;
}

core.List<api.WriteResult> buildUnnamed43() => [
  buildWriteResult(),
  buildWriteResult(),
];

void checkUnnamed43(core.List<api.WriteResult> o) {
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
    o.writeResults = buildUnnamed43();
  }
  buildCounterWriteResponse--;
  return o;
}

void checkWriteResponse(api.WriteResponse o) {
  buildCounterWriteResponse++;
  if (buildCounterWriteResponse < 3) {
    unittest.expect(o.commitTime!, unittest.equals('foo'));
    unittest.expect(o.streamId!, unittest.equals('foo'));
    unittest.expect(o.streamToken!, unittest.equals('foo'));
    checkUnnamed43(o.writeResults!);
  }
  buildCounterWriteResponse--;
}

core.List<api.Value> buildUnnamed44() => [buildValue(), buildValue()];

void checkUnnamed44(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterWriteResult = 0;
api.WriteResult buildWriteResult() {
  final o = api.WriteResult();
  buildCounterWriteResult++;
  if (buildCounterWriteResult < 3) {
    o.transformResults = buildUnnamed44();
    o.updateTime = 'foo';
  }
  buildCounterWriteResult--;
  return o;
}

void checkWriteResult(api.WriteResult o) {
  buildCounterWriteResult++;
  if (buildCounterWriteResult < 3) {
    checkUnnamed44(o.transformResults!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterWriteResult--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed48() => ['foo', 'foo'];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed50() => ['foo', 'foo'];

void checkUnnamed50(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Aggregation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Aggregation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregation(od);
    });
  });

  unittest.group('obj-schema-AggregationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationResult(od);
    });
  });

  unittest.group('obj-schema-ArrayValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArrayValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArrayValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
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
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchGetDocumentsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchGetDocumentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetDocumentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchGetDocumentsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchWriteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchWriteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchWriteRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchWriteRequest(od);
    });
  });

  unittest.group('obj-schema-BatchWriteResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchWriteResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchWriteResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchWriteResponse(od);
    });
  });

  unittest.group('obj-schema-BeginTransactionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBeginTransactionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BeginTransactionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBeginTransactionRequest(od);
    });
  });

  unittest.group('obj-schema-BeginTransactionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBeginTransactionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BeginTransactionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBeginTransactionResponse(od);
    });
  });

  unittest.group('obj-schema-BitSequence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitSequence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitSequence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBitSequence(od);
    });
  });

  unittest.group('obj-schema-BloomFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBloomFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BloomFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBloomFilter(od);
    });
  });

  unittest.group('obj-schema-CollectionSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectionSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectionSelector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCollectionSelector(od);
    });
  });

  unittest.group('obj-schema-CommitRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitRequest(od);
    });
  });

  unittest.group('obj-schema-CommitResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitResponse(od);
    });
  });

  unittest.group('obj-schema-CompositeFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompositeFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompositeFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompositeFilter(od);
    });
  });

  unittest.group('obj-schema-Count', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Count.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCount(od);
    });
  });

  unittest.group('obj-schema-Cursor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCursor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Cursor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCursor(od);
    });
  });

  unittest.group('obj-schema-Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Document.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocument(od);
    });
  });

  unittest.group('obj-schema-DocumentChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentChange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentChange(od);
    });
  });

  unittest.group('obj-schema-DocumentDelete', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentDelete();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentDelete.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentDelete(od);
    });
  });

  unittest.group('obj-schema-DocumentMask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentMask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentMask.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentMask(od);
    });
  });

  unittest.group('obj-schema-DocumentRemove', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentRemove();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentRemove.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentRemove(od);
    });
  });

  unittest.group('obj-schema-DocumentTransform', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentTransform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentTransform.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentTransform(od);
    });
  });

  unittest.group('obj-schema-DocumentsTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentsTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentsTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentsTarget(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ExecutionStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutionStats(od);
    });
  });

  unittest.group('obj-schema-ExistenceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExistenceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExistenceFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExistenceFilter(od);
    });
  });

  unittest.group('obj-schema-ExplainMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplainMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExplainMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExplainMetrics(od);
    });
  });

  unittest.group('obj-schema-ExplainOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplainOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExplainOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExplainOptions(od);
    });
  });

  unittest.group('obj-schema-FieldFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldFilter(od);
    });
  });

  unittest.group('obj-schema-FieldReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldReference(od);
    });
  });

  unittest.group('obj-schema-FieldTransform', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldTransform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldTransform.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldTransform(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Filter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFilter(od);
    });
  });

  unittest.group('obj-schema-FindNearest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindNearest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindNearest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFindNearest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleFirestoreAdminV1beta1ExportDocumentsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirestoreAdminV1beta1ExportDocumentsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirestoreAdminV1beta1ExportDocumentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirestoreAdminV1beta1ExportDocumentsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirestoreAdminV1beta1ImportDocumentsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirestoreAdminV1beta1ImportDocumentsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirestoreAdminV1beta1ImportDocumentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirestoreAdminV1beta1ImportDocumentsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleFirestoreAdminV1beta1Index', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1beta1Index();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1beta1Index.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirestoreAdminV1beta1Index(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1beta1IndexField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1beta1IndexField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1beta1IndexField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirestoreAdminV1beta1IndexField(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleFirestoreAdminV1beta1ListIndexesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirestoreAdminV1beta1ListIndexesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleFirestoreAdminV1beta1ListIndexesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirestoreAdminV1beta1ListIndexesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatLng.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-ListCollectionIdsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCollectionIdsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCollectionIdsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCollectionIdsRequest(od);
    });
  });

  unittest.group('obj-schema-ListCollectionIdsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCollectionIdsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCollectionIdsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCollectionIdsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDocumentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDocumentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDocumentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListenRequest(od);
    });
  });

  unittest.group('obj-schema-ListenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListenResponse(od);
    });
  });

  unittest.group('obj-schema-MapValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MapValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMapValue(od);
    });
  });

  unittest.group('obj-schema-Order', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Order.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrder(od);
    });
  });

  unittest.group('obj-schema-PartitionQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionQueryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartitionQueryRequest(od);
    });
  });

  unittest.group('obj-schema-PartitionQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionQueryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartitionQueryResponse(od);
    });
  });

  unittest.group('obj-schema-PlanSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlanSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlanSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPlanSummary(od);
    });
  });

  unittest.group('obj-schema-Precondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrecondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Precondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrecondition(od);
    });
  });

  unittest.group('obj-schema-Projection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Projection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProjection(od);
    });
  });

  unittest.group('obj-schema-QueryTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryTarget(od);
    });
  });

  unittest.group('obj-schema-ReadOnly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadOnly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReadOnly.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReadOnly(od);
    });
  });

  unittest.group('obj-schema-ReadWrite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadWrite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReadWrite.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReadWrite(od);
    });
  });

  unittest.group('obj-schema-RollbackRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackRequest(od);
    });
  });

  unittest.group('obj-schema-RunAggregationQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunAggregationQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunAggregationQueryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunAggregationQueryRequest(od);
    });
  });

  unittest.group('obj-schema-RunAggregationQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunAggregationQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunAggregationQueryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunAggregationQueryResponse(od);
    });
  });

  unittest.group('obj-schema-RunQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunQueryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunQueryRequest(od);
    });
  });

  unittest.group('obj-schema-RunQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunQueryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunQueryResponse(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-StructuredAggregationQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredAggregationQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredAggregationQuery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStructuredAggregationQuery(od);
    });
  });

  unittest.group('obj-schema-StructuredQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredQuery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
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

  unittest.group('obj-schema-Target', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Target.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTarget(od);
    });
  });

  unittest.group('obj-schema-TargetChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetChange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetChange(od);
    });
  });

  unittest.group('obj-schema-TransactionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransactionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransactionOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransactionOptions(od);
    });
  });

  unittest.group('obj-schema-UnaryFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnaryFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnaryFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnaryFilter(od);
    });
  });

  unittest.group('obj-schema-Value', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Value.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValue(od);
    });
  });

  unittest.group('obj-schema-Write', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWrite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Write.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWrite(od);
    });
  });

  unittest.group('obj-schema-WriteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteRequest(od);
    });
  });

  unittest.group('obj-schema-WriteResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteResponse(od);
    });
  });

  unittest.group('obj-schema-WriteResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteResult(od);
    });
  });

  unittest.group('resource-ProjectsDatabasesResource', () {
    unittest.test('method--exportDocuments', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_request =
          buildGoogleFirestoreAdminV1beta1ExportDocumentsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleFirestoreAdminV1beta1ExportDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirestoreAdminV1beta1ExportDocumentsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exportDocuments(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--importDocuments', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_request =
          buildGoogleFirestoreAdminV1beta1ImportDocumentsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleFirestoreAdminV1beta1ImportDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirestoreAdminV1beta1ImportDocumentsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.importDocuments(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsDatabasesDocumentsResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildBatchGetDocumentsRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchGetDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBatchGetDocumentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchGet(
        arg_request,
        arg_database,
        $fields: arg_$fields,
      );
      checkBatchGetDocumentsResponse(response as api.BatchGetDocumentsResponse);
    });

    unittest.test('method--batchWrite', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildBatchWriteRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchWriteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBatchWriteResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchWrite(
        arg_request,
        arg_database,
        $fields: arg_$fields,
      );
      checkBatchWriteResponse(response as api.BatchWriteResponse);
    });

    unittest.test('method--beginTransaction', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildBeginTransactionRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BeginTransactionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBeginTransactionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.beginTransaction(
        arg_request,
        arg_database,
        $fields: arg_$fields,
      );
      checkBeginTransactionResponse(response as api.BeginTransactionResponse);
    });

    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildCommitRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CommitRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCommitResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.commit(
        arg_request,
        arg_database,
        $fields: arg_$fields,
      );
      checkCommitResponse(response as api.CommitResponse);
    });

    unittest.test('method--createDocument', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildDocument();
      final arg_parent = 'foo';
      final arg_collectionId = 'foo';
      final arg_documentId = 'foo';
      final arg_mask_fieldPaths = buildUnnamed45();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Document.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDocument());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.createDocument(
        arg_request,
        arg_parent,
        arg_collectionId,
        documentId: arg_documentId,
        mask_fieldPaths: arg_mask_fieldPaths,
        $fields: arg_$fields,
      );
      checkDocument(response as api.Document);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_name = 'foo';
      final arg_currentDocument_exists = true;
      final arg_currentDocument_updateTime = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        currentDocument_exists: arg_currentDocument_exists,
        currentDocument_updateTime: arg_currentDocument_updateTime,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_name = 'foo';
      final arg_mask_fieldPaths = buildUnnamed46();
      final arg_readTime = 'foo';
      final arg_transaction = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDocument());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        mask_fieldPaths: arg_mask_fieldPaths,
        readTime: arg_readTime,
        transaction: arg_transaction,
        $fields: arg_$fields,
      );
      checkDocument(response as api.Document);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_parent = 'foo';
      final arg_collectionId = 'foo';
      final arg_mask_fieldPaths = buildUnnamed47();
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
      final arg_showMissing = true;
      final arg_transaction = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDocumentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        arg_collectionId,
        mask_fieldPaths: arg_mask_fieldPaths,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readTime: arg_readTime,
        showMissing: arg_showMissing,
        transaction: arg_transaction,
        $fields: arg_$fields,
      );
      checkListDocumentsResponse(response as api.ListDocumentsResponse);
    });

    unittest.test('method--listCollectionIds', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildListCollectionIdsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ListCollectionIdsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListCollectionIdsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listCollectionIds(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkListCollectionIdsResponse(response as api.ListCollectionIdsResponse);
    });

    unittest.test('method--listDocuments', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_parent = 'foo';
      final arg_collectionId = 'foo';
      final arg_mask_fieldPaths = buildUnnamed48();
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
      final arg_showMissing = true;
      final arg_transaction = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDocumentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listDocuments(
        arg_parent,
        arg_collectionId,
        mask_fieldPaths: arg_mask_fieldPaths,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readTime: arg_readTime,
        showMissing: arg_showMissing,
        transaction: arg_transaction,
        $fields: arg_$fields,
      );
      checkListDocumentsResponse(response as api.ListDocumentsResponse);
    });

    unittest.test('method--listen', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildListenRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ListenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkListenRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListenResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listen(
        arg_request,
        arg_database,
        $fields: arg_$fields,
      );
      checkListenResponse(response as api.ListenResponse);
    });

    unittest.test('method--partitionQuery', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildPartitionQueryRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PartitionQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPartitionQueryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.partitionQuery(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkPartitionQueryResponse(response as api.PartitionQueryResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildDocument();
      final arg_name = 'foo';
      final arg_currentDocument_exists = true;
      final arg_currentDocument_updateTime = 'foo';
      final arg_mask_fieldPaths = buildUnnamed49();
      final arg_updateMask_fieldPaths = buildUnnamed50();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Document.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDocument());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        currentDocument_exists: arg_currentDocument_exists,
        currentDocument_updateTime: arg_currentDocument_updateTime,
        mask_fieldPaths: arg_mask_fieldPaths,
        updateMask_fieldPaths: arg_updateMask_fieldPaths,
        $fields: arg_$fields,
      );
      checkDocument(response as api.Document);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildRollbackRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RollbackRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.rollback(
        arg_request,
        arg_database,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--runAggregationQuery', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildRunAggregationQueryRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RunAggregationQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRunAggregationQueryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.runAggregationQuery(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkRunAggregationQueryResponse(
        response as api.RunAggregationQueryResponse,
      );
    });

    unittest.test('method--runQuery', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildRunQueryRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RunQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRunQueryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.runQuery(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkRunQueryResponse(response as api.RunQueryResponse);
    });

    unittest.test('method--write', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.documents;
      final arg_request = buildWriteRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WriteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWriteResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.write(
        arg_request,
        arg_database,
        $fields: arg_$fields,
      );
      checkWriteResponse(response as api.WriteResponse);
    });
  });

  unittest.group('resource-ProjectsDatabasesIndexesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.indexes;
      final arg_request = buildGoogleFirestoreAdminV1beta1Index();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleFirestoreAdminV1beta1Index.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirestoreAdminV1beta1Index(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.indexes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.indexes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleFirestoreAdminV1beta1Index(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1beta1Index(
        response as api.GoogleFirestoreAdminV1beta1Index,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases.indexes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleFirestoreAdminV1beta1ListIndexesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleFirestoreAdminV1beta1ListIndexesResponse(
        response as api.GoogleFirestoreAdminV1beta1ListIndexesResponse,
      );
    });
  });
}
