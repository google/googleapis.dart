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

import 'package:googleapis/datastore/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Key> buildUnnamed0() => [
      buildKey(),
      buildKey(),
    ];

void checkUnnamed0(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterAllocateIdsRequest = 0;
api.AllocateIdsRequest buildAllocateIdsRequest() {
  final o = api.AllocateIdsRequest();
  buildCounterAllocateIdsRequest++;
  if (buildCounterAllocateIdsRequest < 3) {
    o.keys = buildUnnamed0();
  }
  buildCounterAllocateIdsRequest--;
  return o;
}

void checkAllocateIdsRequest(api.AllocateIdsRequest o) {
  buildCounterAllocateIdsRequest++;
  if (buildCounterAllocateIdsRequest < 3) {
    checkUnnamed0(o.keys!);
  }
  buildCounterAllocateIdsRequest--;
}

core.List<api.Key> buildUnnamed1() => [
      buildKey(),
      buildKey(),
    ];

void checkUnnamed1(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterAllocateIdsResponse = 0;
api.AllocateIdsResponse buildAllocateIdsResponse() {
  final o = api.AllocateIdsResponse();
  buildCounterAllocateIdsResponse++;
  if (buildCounterAllocateIdsResponse < 3) {
    o.keys = buildUnnamed1();
  }
  buildCounterAllocateIdsResponse--;
  return o;
}

void checkAllocateIdsResponse(api.AllocateIdsResponse o) {
  buildCounterAllocateIdsResponse++;
  if (buildCounterAllocateIdsResponse < 3) {
    checkUnnamed1(o.keys!);
  }
  buildCounterAllocateIdsResponse--;
}

core.List<api.Value> buildUnnamed2() => [
      buildValue(),
      buildValue(),
    ];

void checkUnnamed2(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterArrayValue = 0;
api.ArrayValue buildArrayValue() {
  final o = api.ArrayValue();
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    o.values = buildUnnamed2();
  }
  buildCounterArrayValue--;
  return o;
}

void checkArrayValue(api.ArrayValue o) {
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    checkUnnamed2(o.values!);
  }
  buildCounterArrayValue--;
}

core.int buildCounterBeginTransactionRequest = 0;
api.BeginTransactionRequest buildBeginTransactionRequest() {
  final o = api.BeginTransactionRequest();
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    o.transactionOptions = buildTransactionOptions();
  }
  buildCounterBeginTransactionRequest--;
  return o;
}

void checkBeginTransactionRequest(api.BeginTransactionRequest o) {
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    checkTransactionOptions(o.transactionOptions!);
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

core.List<api.Mutation> buildUnnamed3() => [
      buildMutation(),
      buildMutation(),
    ];

void checkUnnamed3(core.List<api.Mutation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutation(o[0]);
  checkMutation(o[1]);
}

core.int buildCounterCommitRequest = 0;
api.CommitRequest buildCommitRequest() {
  final o = api.CommitRequest();
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    o.mode = 'foo';
    o.mutations = buildUnnamed3();
    o.transaction = 'foo';
  }
  buildCounterCommitRequest--;
  return o;
}

void checkCommitRequest(api.CommitRequest o) {
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.mutations!);
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommitRequest--;
}

core.List<api.MutationResult> buildUnnamed4() => [
      buildMutationResult(),
      buildMutationResult(),
    ];

void checkUnnamed4(core.List<api.MutationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutationResult(o[0]);
  checkMutationResult(o[1]);
}

core.int buildCounterCommitResponse = 0;
api.CommitResponse buildCommitResponse() {
  final o = api.CommitResponse();
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    o.indexUpdates = 42;
    o.mutationResults = buildUnnamed4();
  }
  buildCounterCommitResponse--;
  return o;
}

void checkCommitResponse(api.CommitResponse o) {
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    unittest.expect(
      o.indexUpdates!,
      unittest.equals(42),
    );
    checkUnnamed4(o.mutationResults!);
  }
  buildCounterCommitResponse--;
}

core.List<api.Filter> buildUnnamed5() => [
      buildFilter(),
      buildFilter(),
    ];

void checkUnnamed5(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterCompositeFilter = 0;
api.CompositeFilter buildCompositeFilter() {
  final o = api.CompositeFilter();
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    o.filters = buildUnnamed5();
    o.op = 'foo';
  }
  buildCounterCompositeFilter--;
  return o;
}

void checkCompositeFilter(api.CompositeFilter o) {
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    checkUnnamed5(o.filters!);
    unittest.expect(
      o.op!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompositeFilter--;
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

core.Map<core.String, api.Value> buildUnnamed6() => {
      'x': buildValue(),
      'y': buildValue(),
    };

void checkUnnamed6(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o['x']!);
  checkValue(o['y']!);
}

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  final o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.key = buildKey();
    o.properties = buildUnnamed6();
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    checkKey(o.key!);
    checkUnnamed6(o.properties!);
  }
  buildCounterEntity--;
}

core.int buildCounterEntityResult = 0;
api.EntityResult buildEntityResult() {
  final o = api.EntityResult();
  buildCounterEntityResult++;
  if (buildCounterEntityResult < 3) {
    o.cursor = 'foo';
    o.entity = buildEntity();
    o.version = 'foo';
  }
  buildCounterEntityResult--;
  return o;
}

void checkEntityResult(api.EntityResult o) {
  buildCounterEntityResult++;
  if (buildCounterEntityResult < 3) {
    unittest.expect(
      o.cursor!,
      unittest.equals('foo'),
    );
    checkEntity(o.entity!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntityResult--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  final o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.compositeFilter = buildCompositeFilter();
    o.propertyFilter = buildPropertyFilter();
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkCompositeFilter(o.compositeFilter!);
    checkPropertyFilter(o.propertyFilter!);
  }
  buildCounterFilter--;
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

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.int buildCounterGoogleDatastoreAdminV1EntityFilter = 0;
api.GoogleDatastoreAdminV1EntityFilter
    buildGoogleDatastoreAdminV1EntityFilter() {
  final o = api.GoogleDatastoreAdminV1EntityFilter();
  buildCounterGoogleDatastoreAdminV1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1EntityFilter < 3) {
    o.kinds = buildUnnamed7();
    o.namespaceIds = buildUnnamed8();
  }
  buildCounterGoogleDatastoreAdminV1EntityFilter--;
  return o;
}

void checkGoogleDatastoreAdminV1EntityFilter(
    api.GoogleDatastoreAdminV1EntityFilter o) {
  buildCounterGoogleDatastoreAdminV1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1EntityFilter < 3) {
    checkUnnamed7(o.kinds!);
    checkUnnamed8(o.namespaceIds!);
  }
  buildCounterGoogleDatastoreAdminV1EntityFilter--;
}

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest = 0;
api.GoogleDatastoreAdminV1ExportEntitiesRequest
    buildGoogleDatastoreAdminV1ExportEntitiesRequest() {
  final o = api.GoogleDatastoreAdminV1ExportEntitiesRequest();
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest < 3) {
    o.entityFilter = buildGoogleDatastoreAdminV1EntityFilter();
    o.labels = buildUnnamed9();
    o.outputUrlPrefix = 'foo';
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest--;
  return o;
}

void checkGoogleDatastoreAdminV1ExportEntitiesRequest(
    api.GoogleDatastoreAdminV1ExportEntitiesRequest o) {
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest < 3) {
    checkGoogleDatastoreAdminV1EntityFilter(o.entityFilter!);
    checkUnnamed9(o.labels!);
    unittest.expect(
      o.outputUrlPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest--;
}

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest = 0;
api.GoogleDatastoreAdminV1ImportEntitiesRequest
    buildGoogleDatastoreAdminV1ImportEntitiesRequest() {
  final o = api.GoogleDatastoreAdminV1ImportEntitiesRequest();
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest < 3) {
    o.entityFilter = buildGoogleDatastoreAdminV1EntityFilter();
    o.inputUrl = 'foo';
    o.labels = buildUnnamed10();
  }
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest--;
  return o;
}

void checkGoogleDatastoreAdminV1ImportEntitiesRequest(
    api.GoogleDatastoreAdminV1ImportEntitiesRequest o) {
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest < 3) {
    checkGoogleDatastoreAdminV1EntityFilter(o.entityFilter!);
    unittest.expect(
      o.inputUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.labels!);
  }
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest--;
}

core.List<api.GoogleDatastoreAdminV1IndexedProperty> buildUnnamed11() => [
      buildGoogleDatastoreAdminV1IndexedProperty(),
      buildGoogleDatastoreAdminV1IndexedProperty(),
    ];

void checkUnnamed11(core.List<api.GoogleDatastoreAdminV1IndexedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDatastoreAdminV1IndexedProperty(o[0]);
  checkGoogleDatastoreAdminV1IndexedProperty(o[1]);
}

core.int buildCounterGoogleDatastoreAdminV1Index = 0;
api.GoogleDatastoreAdminV1Index buildGoogleDatastoreAdminV1Index() {
  final o = api.GoogleDatastoreAdminV1Index();
  buildCounterGoogleDatastoreAdminV1Index++;
  if (buildCounterGoogleDatastoreAdminV1Index < 3) {
    o.ancestor = 'foo';
    o.indexId = 'foo';
    o.kind = 'foo';
    o.projectId = 'foo';
    o.properties = buildUnnamed11();
    o.state = 'foo';
  }
  buildCounterGoogleDatastoreAdminV1Index--;
  return o;
}

void checkGoogleDatastoreAdminV1Index(api.GoogleDatastoreAdminV1Index o) {
  buildCounterGoogleDatastoreAdminV1Index++;
  if (buildCounterGoogleDatastoreAdminV1Index < 3) {
    unittest.expect(
      o.ancestor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.indexId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.properties!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleDatastoreAdminV1Index--;
}

core.int buildCounterGoogleDatastoreAdminV1IndexedProperty = 0;
api.GoogleDatastoreAdminV1IndexedProperty
    buildGoogleDatastoreAdminV1IndexedProperty() {
  final o = api.GoogleDatastoreAdminV1IndexedProperty();
  buildCounterGoogleDatastoreAdminV1IndexedProperty++;
  if (buildCounterGoogleDatastoreAdminV1IndexedProperty < 3) {
    o.direction = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleDatastoreAdminV1IndexedProperty--;
  return o;
}

void checkGoogleDatastoreAdminV1IndexedProperty(
    api.GoogleDatastoreAdminV1IndexedProperty o) {
  buildCounterGoogleDatastoreAdminV1IndexedProperty++;
  if (buildCounterGoogleDatastoreAdminV1IndexedProperty < 3) {
    unittest.expect(
      o.direction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleDatastoreAdminV1IndexedProperty--;
}

core.List<api.GoogleDatastoreAdminV1Index> buildUnnamed12() => [
      buildGoogleDatastoreAdminV1Index(),
      buildGoogleDatastoreAdminV1Index(),
    ];

void checkUnnamed12(core.List<api.GoogleDatastoreAdminV1Index> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDatastoreAdminV1Index(o[0]);
  checkGoogleDatastoreAdminV1Index(o[1]);
}

core.int buildCounterGoogleDatastoreAdminV1ListIndexesResponse = 0;
api.GoogleDatastoreAdminV1ListIndexesResponse
    buildGoogleDatastoreAdminV1ListIndexesResponse() {
  final o = api.GoogleDatastoreAdminV1ListIndexesResponse();
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleDatastoreAdminV1ListIndexesResponse < 3) {
    o.indexes = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse--;
  return o;
}

void checkGoogleDatastoreAdminV1ListIndexesResponse(
    api.GoogleDatastoreAdminV1ListIndexesResponse o) {
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleDatastoreAdminV1ListIndexesResponse < 3) {
    checkUnnamed12(o.indexes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed13() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed13(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed13();
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
    checkUnnamed13(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
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
    o.metadata = buildUnnamed14();
    o.name = 'foo';
    o.response = buildUnnamed15();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed14(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, api.GqlQueryParameter> buildUnnamed16() => {
      'x': buildGqlQueryParameter(),
      'y': buildGqlQueryParameter(),
    };

void checkUnnamed16(core.Map<core.String, api.GqlQueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGqlQueryParameter(o['x']!);
  checkGqlQueryParameter(o['y']!);
}

core.List<api.GqlQueryParameter> buildUnnamed17() => [
      buildGqlQueryParameter(),
      buildGqlQueryParameter(),
    ];

void checkUnnamed17(core.List<api.GqlQueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGqlQueryParameter(o[0]);
  checkGqlQueryParameter(o[1]);
}

core.int buildCounterGqlQuery = 0;
api.GqlQuery buildGqlQuery() {
  final o = api.GqlQuery();
  buildCounterGqlQuery++;
  if (buildCounterGqlQuery < 3) {
    o.allowLiterals = true;
    o.namedBindings = buildUnnamed16();
    o.positionalBindings = buildUnnamed17();
    o.queryString = 'foo';
  }
  buildCounterGqlQuery--;
  return o;
}

void checkGqlQuery(api.GqlQuery o) {
  buildCounterGqlQuery++;
  if (buildCounterGqlQuery < 3) {
    unittest.expect(o.allowLiterals!, unittest.isTrue);
    checkUnnamed16(o.namedBindings!);
    checkUnnamed17(o.positionalBindings!);
    unittest.expect(
      o.queryString!,
      unittest.equals('foo'),
    );
  }
  buildCounterGqlQuery--;
}

core.int buildCounterGqlQueryParameter = 0;
api.GqlQueryParameter buildGqlQueryParameter() {
  final o = api.GqlQueryParameter();
  buildCounterGqlQueryParameter++;
  if (buildCounterGqlQueryParameter < 3) {
    o.cursor = 'foo';
    o.value = buildValue();
  }
  buildCounterGqlQueryParameter--;
  return o;
}

void checkGqlQueryParameter(api.GqlQueryParameter o) {
  buildCounterGqlQueryParameter++;
  if (buildCounterGqlQueryParameter < 3) {
    unittest.expect(
      o.cursor!,
      unittest.equals('foo'),
    );
    checkValue(o.value!);
  }
  buildCounterGqlQueryParameter--;
}

core.List<api.PathElement> buildUnnamed18() => [
      buildPathElement(),
      buildPathElement(),
    ];

void checkUnnamed18(core.List<api.PathElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathElement(o[0]);
  checkPathElement(o[1]);
}

core.int buildCounterKey = 0;
api.Key buildKey() {
  final o = api.Key();
  buildCounterKey++;
  if (buildCounterKey < 3) {
    o.partitionId = buildPartitionId();
    o.path = buildUnnamed18();
  }
  buildCounterKey--;
  return o;
}

void checkKey(api.Key o) {
  buildCounterKey++;
  if (buildCounterKey < 3) {
    checkPartitionId(o.partitionId!);
    checkUnnamed18(o.path!);
  }
  buildCounterKey--;
}

core.int buildCounterKindExpression = 0;
api.KindExpression buildKindExpression() {
  final o = api.KindExpression();
  buildCounterKindExpression++;
  if (buildCounterKindExpression < 3) {
    o.name = 'foo';
  }
  buildCounterKindExpression--;
  return o;
}

void checkKindExpression(api.KindExpression o) {
  buildCounterKindExpression++;
  if (buildCounterKindExpression < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterKindExpression--;
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

core.List<api.Key> buildUnnamed19() => [
      buildKey(),
      buildKey(),
    ];

void checkUnnamed19(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterLookupRequest = 0;
api.LookupRequest buildLookupRequest() {
  final o = api.LookupRequest();
  buildCounterLookupRequest++;
  if (buildCounterLookupRequest < 3) {
    o.keys = buildUnnamed19();
    o.readOptions = buildReadOptions();
  }
  buildCounterLookupRequest--;
  return o;
}

void checkLookupRequest(api.LookupRequest o) {
  buildCounterLookupRequest++;
  if (buildCounterLookupRequest < 3) {
    checkUnnamed19(o.keys!);
    checkReadOptions(o.readOptions!);
  }
  buildCounterLookupRequest--;
}

core.List<api.Key> buildUnnamed20() => [
      buildKey(),
      buildKey(),
    ];

void checkUnnamed20(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.List<api.EntityResult> buildUnnamed21() => [
      buildEntityResult(),
      buildEntityResult(),
    ];

void checkUnnamed21(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

core.List<api.EntityResult> buildUnnamed22() => [
      buildEntityResult(),
      buildEntityResult(),
    ];

void checkUnnamed22(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

core.int buildCounterLookupResponse = 0;
api.LookupResponse buildLookupResponse() {
  final o = api.LookupResponse();
  buildCounterLookupResponse++;
  if (buildCounterLookupResponse < 3) {
    o.deferred = buildUnnamed20();
    o.found = buildUnnamed21();
    o.missing = buildUnnamed22();
  }
  buildCounterLookupResponse--;
  return o;
}

void checkLookupResponse(api.LookupResponse o) {
  buildCounterLookupResponse++;
  if (buildCounterLookupResponse < 3) {
    checkUnnamed20(o.deferred!);
    checkUnnamed21(o.found!);
    checkUnnamed22(o.missing!);
  }
  buildCounterLookupResponse--;
}

core.int buildCounterMutation = 0;
api.Mutation buildMutation() {
  final o = api.Mutation();
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    o.baseVersion = 'foo';
    o.delete = buildKey();
    o.insert = buildEntity();
    o.update = buildEntity();
    o.upsert = buildEntity();
  }
  buildCounterMutation--;
  return o;
}

void checkMutation(api.Mutation o) {
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    unittest.expect(
      o.baseVersion!,
      unittest.equals('foo'),
    );
    checkKey(o.delete!);
    checkEntity(o.insert!);
    checkEntity(o.update!);
    checkEntity(o.upsert!);
  }
  buildCounterMutation--;
}

core.int buildCounterMutationResult = 0;
api.MutationResult buildMutationResult() {
  final o = api.MutationResult();
  buildCounterMutationResult++;
  if (buildCounterMutationResult < 3) {
    o.conflictDetected = true;
    o.key = buildKey();
    o.version = 'foo';
  }
  buildCounterMutationResult--;
  return o;
}

void checkMutationResult(api.MutationResult o) {
  buildCounterMutationResult++;
  if (buildCounterMutationResult < 3) {
    unittest.expect(o.conflictDetected!, unittest.isTrue);
    checkKey(o.key!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterMutationResult--;
}

core.int buildCounterPartitionId = 0;
api.PartitionId buildPartitionId() {
  final o = api.PartitionId();
  buildCounterPartitionId++;
  if (buildCounterPartitionId < 3) {
    o.namespaceId = 'foo';
    o.projectId = 'foo';
  }
  buildCounterPartitionId--;
  return o;
}

void checkPartitionId(api.PartitionId o) {
  buildCounterPartitionId++;
  if (buildCounterPartitionId < 3) {
    unittest.expect(
      o.namespaceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartitionId--;
}

core.int buildCounterPathElement = 0;
api.PathElement buildPathElement() {
  final o = api.PathElement();
  buildCounterPathElement++;
  if (buildCounterPathElement < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterPathElement--;
  return o;
}

void checkPathElement(api.PathElement o) {
  buildCounterPathElement++;
  if (buildCounterPathElement < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPathElement--;
}

core.int buildCounterProjection = 0;
api.Projection buildProjection() {
  final o = api.Projection();
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    o.property = buildPropertyReference();
  }
  buildCounterProjection--;
  return o;
}

void checkProjection(api.Projection o) {
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    checkPropertyReference(o.property!);
  }
  buildCounterProjection--;
}

core.int buildCounterPropertyFilter = 0;
api.PropertyFilter buildPropertyFilter() {
  final o = api.PropertyFilter();
  buildCounterPropertyFilter++;
  if (buildCounterPropertyFilter < 3) {
    o.op = 'foo';
    o.property = buildPropertyReference();
    o.value = buildValue();
  }
  buildCounterPropertyFilter--;
  return o;
}

void checkPropertyFilter(api.PropertyFilter o) {
  buildCounterPropertyFilter++;
  if (buildCounterPropertyFilter < 3) {
    unittest.expect(
      o.op!,
      unittest.equals('foo'),
    );
    checkPropertyReference(o.property!);
    checkValue(o.value!);
  }
  buildCounterPropertyFilter--;
}

core.int buildCounterPropertyOrder = 0;
api.PropertyOrder buildPropertyOrder() {
  final o = api.PropertyOrder();
  buildCounterPropertyOrder++;
  if (buildCounterPropertyOrder < 3) {
    o.direction = 'foo';
    o.property = buildPropertyReference();
  }
  buildCounterPropertyOrder--;
  return o;
}

void checkPropertyOrder(api.PropertyOrder o) {
  buildCounterPropertyOrder++;
  if (buildCounterPropertyOrder < 3) {
    unittest.expect(
      o.direction!,
      unittest.equals('foo'),
    );
    checkPropertyReference(o.property!);
  }
  buildCounterPropertyOrder--;
}

core.int buildCounterPropertyReference = 0;
api.PropertyReference buildPropertyReference() {
  final o = api.PropertyReference();
  buildCounterPropertyReference++;
  if (buildCounterPropertyReference < 3) {
    o.name = 'foo';
  }
  buildCounterPropertyReference--;
  return o;
}

void checkPropertyReference(api.PropertyReference o) {
  buildCounterPropertyReference++;
  if (buildCounterPropertyReference < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPropertyReference--;
}

core.List<api.PropertyReference> buildUnnamed23() => [
      buildPropertyReference(),
      buildPropertyReference(),
    ];

void checkUnnamed23(core.List<api.PropertyReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyReference(o[0]);
  checkPropertyReference(o[1]);
}

core.List<api.KindExpression> buildUnnamed24() => [
      buildKindExpression(),
      buildKindExpression(),
    ];

void checkUnnamed24(core.List<api.KindExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKindExpression(o[0]);
  checkKindExpression(o[1]);
}

core.List<api.PropertyOrder> buildUnnamed25() => [
      buildPropertyOrder(),
      buildPropertyOrder(),
    ];

void checkUnnamed25(core.List<api.PropertyOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyOrder(o[0]);
  checkPropertyOrder(o[1]);
}

core.List<api.Projection> buildUnnamed26() => [
      buildProjection(),
      buildProjection(),
    ];

void checkUnnamed26(core.List<api.Projection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjection(o[0]);
  checkProjection(o[1]);
}

core.int buildCounterQuery = 0;
api.Query buildQuery() {
  final o = api.Query();
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    o.distinctOn = buildUnnamed23();
    o.endCursor = 'foo';
    o.filter = buildFilter();
    o.kind = buildUnnamed24();
    o.limit = 42;
    o.offset = 42;
    o.order = buildUnnamed25();
    o.projection = buildUnnamed26();
    o.startCursor = 'foo';
  }
  buildCounterQuery--;
  return o;
}

void checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    checkUnnamed23(o.distinctOn!);
    unittest.expect(
      o.endCursor!,
      unittest.equals('foo'),
    );
    checkFilter(o.filter!);
    checkUnnamed24(o.kind!);
    unittest.expect(
      o.limit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offset!,
      unittest.equals(42),
    );
    checkUnnamed25(o.order!);
    checkUnnamed26(o.projection!);
    unittest.expect(
      o.startCursor!,
      unittest.equals('foo'),
    );
  }
  buildCounterQuery--;
}

core.List<api.EntityResult> buildUnnamed27() => [
      buildEntityResult(),
      buildEntityResult(),
    ];

void checkUnnamed27(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

core.int buildCounterQueryResultBatch = 0;
api.QueryResultBatch buildQueryResultBatch() {
  final o = api.QueryResultBatch();
  buildCounterQueryResultBatch++;
  if (buildCounterQueryResultBatch < 3) {
    o.endCursor = 'foo';
    o.entityResultType = 'foo';
    o.entityResults = buildUnnamed27();
    o.moreResults = 'foo';
    o.skippedCursor = 'foo';
    o.skippedResults = 42;
    o.snapshotVersion = 'foo';
  }
  buildCounterQueryResultBatch--;
  return o;
}

void checkQueryResultBatch(api.QueryResultBatch o) {
  buildCounterQueryResultBatch++;
  if (buildCounterQueryResultBatch < 3) {
    unittest.expect(
      o.endCursor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityResultType!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.entityResults!);
    unittest.expect(
      o.moreResults!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skippedCursor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skippedResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.snapshotVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryResultBatch--;
}

core.int buildCounterReadOnly = 0;
api.ReadOnly buildReadOnly() {
  final o = api.ReadOnly();
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {}
  buildCounterReadOnly--;
  return o;
}

void checkReadOnly(api.ReadOnly o) {
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {}
  buildCounterReadOnly--;
}

core.int buildCounterReadOptions = 0;
api.ReadOptions buildReadOptions() {
  final o = api.ReadOptions();
  buildCounterReadOptions++;
  if (buildCounterReadOptions < 3) {
    o.readConsistency = 'foo';
    o.transaction = 'foo';
  }
  buildCounterReadOptions--;
  return o;
}

void checkReadOptions(api.ReadOptions o) {
  buildCounterReadOptions++;
  if (buildCounterReadOptions < 3) {
    unittest.expect(
      o.readConsistency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterReadOptions--;
}

core.int buildCounterReadWrite = 0;
api.ReadWrite buildReadWrite() {
  final o = api.ReadWrite();
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    o.previousTransaction = 'foo';
  }
  buildCounterReadWrite--;
  return o;
}

void checkReadWrite(api.ReadWrite o) {
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    unittest.expect(
      o.previousTransaction!,
      unittest.equals('foo'),
    );
  }
  buildCounterReadWrite--;
}

core.List<api.Key> buildUnnamed28() => [
      buildKey(),
      buildKey(),
    ];

void checkUnnamed28(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterReserveIdsRequest = 0;
api.ReserveIdsRequest buildReserveIdsRequest() {
  final o = api.ReserveIdsRequest();
  buildCounterReserveIdsRequest++;
  if (buildCounterReserveIdsRequest < 3) {
    o.databaseId = 'foo';
    o.keys = buildUnnamed28();
  }
  buildCounterReserveIdsRequest--;
  return o;
}

void checkReserveIdsRequest(api.ReserveIdsRequest o) {
  buildCounterReserveIdsRequest++;
  if (buildCounterReserveIdsRequest < 3) {
    unittest.expect(
      o.databaseId!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.keys!);
  }
  buildCounterReserveIdsRequest--;
}

core.int buildCounterReserveIdsResponse = 0;
api.ReserveIdsResponse buildReserveIdsResponse() {
  final o = api.ReserveIdsResponse();
  buildCounterReserveIdsResponse++;
  if (buildCounterReserveIdsResponse < 3) {}
  buildCounterReserveIdsResponse--;
  return o;
}

void checkReserveIdsResponse(api.ReserveIdsResponse o) {
  buildCounterReserveIdsResponse++;
  if (buildCounterReserveIdsResponse < 3) {}
  buildCounterReserveIdsResponse--;
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

core.int buildCounterRollbackResponse = 0;
api.RollbackResponse buildRollbackResponse() {
  final o = api.RollbackResponse();
  buildCounterRollbackResponse++;
  if (buildCounterRollbackResponse < 3) {}
  buildCounterRollbackResponse--;
  return o;
}

void checkRollbackResponse(api.RollbackResponse o) {
  buildCounterRollbackResponse++;
  if (buildCounterRollbackResponse < 3) {}
  buildCounterRollbackResponse--;
}

core.int buildCounterRunQueryRequest = 0;
api.RunQueryRequest buildRunQueryRequest() {
  final o = api.RunQueryRequest();
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

void checkRunQueryRequest(api.RunQueryRequest o) {
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    checkGqlQuery(o.gqlQuery!);
    checkPartitionId(o.partitionId!);
    checkQuery(o.query!);
    checkReadOptions(o.readOptions!);
  }
  buildCounterRunQueryRequest--;
}

core.int buildCounterRunQueryResponse = 0;
api.RunQueryResponse buildRunQueryResponse() {
  final o = api.RunQueryResponse();
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    o.batch = buildQueryResultBatch();
    o.query = buildQuery();
  }
  buildCounterRunQueryResponse--;
  return o;
}

void checkRunQueryResponse(api.RunQueryResponse o) {
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    checkQueryResultBatch(o.batch!);
    checkQuery(o.query!);
  }
  buildCounterRunQueryResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed30() => [
      buildUnnamed29(),
      buildUnnamed29(),
    ];

void checkUnnamed30(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed29(o[0]);
  checkUnnamed29(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed30();
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
    checkUnnamed30(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
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

core.int buildCounterValue = 0;
api.Value buildValue() {
  final o = api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.arrayValue = buildArrayValue();
    o.blobValue = 'foo';
    o.booleanValue = true;
    o.doubleValue = 42.0;
    o.entityValue = buildEntity();
    o.excludeFromIndexes = true;
    o.geoPointValue = buildLatLng();
    o.integerValue = 'foo';
    o.keyValue = buildKey();
    o.meaning = 42;
    o.nullValue = 'NULL_VALUE';
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
    unittest.expect(
      o.blobValue!,
      unittest.equals('foo'),
    );
    unittest.expect(o.booleanValue!, unittest.isTrue);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    checkEntity(o.entityValue!);
    unittest.expect(o.excludeFromIndexes!, unittest.isTrue);
    checkLatLng(o.geoPointValue!);
    unittest.expect(
      o.integerValue!,
      unittest.equals('foo'),
    );
    checkKey(o.keyValue!);
    unittest.expect(
      o.meaning!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nullValue!,
      unittest.equals('NULL_VALUE'),
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

void main() {
  unittest.group('obj-schema-AllocateIdsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllocateIdsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllocateIdsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllocateIdsRequest(od);
    });
  });

  unittest.group('obj-schema-AllocateIdsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllocateIdsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllocateIdsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllocateIdsResponse(od);
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

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Entity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntity(od);
    });
  });

  unittest.group('obj-schema-EntityResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityResult(od);
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

  unittest.group('obj-schema-GoogleDatastoreAdminV1EntityFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDatastoreAdminV1EntityFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDatastoreAdminV1EntityFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDatastoreAdminV1EntityFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleDatastoreAdminV1ExportEntitiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDatastoreAdminV1ExportEntitiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDatastoreAdminV1ExportEntitiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDatastoreAdminV1ExportEntitiesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleDatastoreAdminV1ImportEntitiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDatastoreAdminV1ImportEntitiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDatastoreAdminV1ImportEntitiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDatastoreAdminV1ImportEntitiesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleDatastoreAdminV1Index', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDatastoreAdminV1Index();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDatastoreAdminV1Index.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDatastoreAdminV1Index(od);
    });
  });

  unittest.group('obj-schema-GoogleDatastoreAdminV1IndexedProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDatastoreAdminV1IndexedProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDatastoreAdminV1IndexedProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDatastoreAdminV1IndexedProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleDatastoreAdminV1ListIndexesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDatastoreAdminV1ListIndexesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDatastoreAdminV1ListIndexesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDatastoreAdminV1ListIndexesResponse(od);
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

  unittest.group('obj-schema-GqlQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGqlQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GqlQuery.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGqlQuery(od);
    });
  });

  unittest.group('obj-schema-GqlQueryParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGqlQueryParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GqlQueryParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGqlQueryParameter(od);
    });
  });

  unittest.group('obj-schema-Key', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Key.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKey(od);
    });
  });

  unittest.group('obj-schema-KindExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKindExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KindExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKindExpression(od);
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

  unittest.group('obj-schema-LookupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupRequest(od);
    });
  });

  unittest.group('obj-schema-LookupResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupResponse(od);
    });
  });

  unittest.group('obj-schema-Mutation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMutation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Mutation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMutation(od);
    });
  });

  unittest.group('obj-schema-MutationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMutationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MutationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMutationResult(od);
    });
  });

  unittest.group('obj-schema-PartitionId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionId(od);
    });
  });

  unittest.group('obj-schema-PathElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPathElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PathElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPathElement(od);
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

  unittest.group('obj-schema-PropertyFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPropertyFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PropertyFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPropertyFilter(od);
    });
  });

  unittest.group('obj-schema-PropertyOrder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPropertyOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PropertyOrder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPropertyOrder(od);
    });
  });

  unittest.group('obj-schema-PropertyReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPropertyReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PropertyReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPropertyReference(od);
    });
  });

  unittest.group('obj-schema-Query', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Query.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuery(od);
    });
  });

  unittest.group('obj-schema-QueryResultBatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryResultBatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryResultBatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryResultBatch(od);
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

  unittest.group('obj-schema-ReadOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReadOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReadOptions(od);
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

  unittest.group('obj-schema-ReserveIdsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReserveIdsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReserveIdsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReserveIdsRequest(od);
    });
  });

  unittest.group('obj-schema-ReserveIdsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReserveIdsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReserveIdsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReserveIdsResponse(od);
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

  unittest.group('obj-schema-RollbackResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRollbackResponse(od);
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

  unittest.group('obj-schema-TransactionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransactionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransactionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransactionOptions(od);
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

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--allocateIds', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request = buildAllocateIdsRequest();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AllocateIdsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAllocateIdsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf(':allocateIds', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals(':allocateIds'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildAllocateIdsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.allocateIds(arg_request, arg_projectId,
          $fields: arg_$fields);
      checkAllocateIdsResponse(response as api.AllocateIdsResponse);
    });

    unittest.test('method--beginTransaction', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request = buildBeginTransactionRequest();
      final arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf(':beginTransaction', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals(':beginTransaction'),
        );
        pathOffset += 17;

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
      final response = await res.beginTransaction(arg_request, arg_projectId,
          $fields: arg_$fields);
      checkBeginTransactionResponse(response as api.BeginTransactionResponse);
    });

    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request = buildCommitRequest();
      final arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf(':commit', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':commit'),
        );
        pathOffset += 7;

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
          await res.commit(arg_request, arg_projectId, $fields: arg_$fields);
      checkCommitResponse(response as api.CommitResponse);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request = buildGoogleDatastoreAdminV1ExportEntitiesRequest();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleDatastoreAdminV1ExportEntitiesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleDatastoreAdminV1ExportEntitiesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf(':export', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':export'),
        );
        pathOffset += 7;

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
          await res.export(arg_request, arg_projectId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request = buildGoogleDatastoreAdminV1ImportEntitiesRequest();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleDatastoreAdminV1ImportEntitiesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleDatastoreAdminV1ImportEntitiesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf(':import', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':import'),
        );
        pathOffset += 7;

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
          await res.import(arg_request, arg_projectId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request = buildLookupRequest();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LookupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLookupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf(':lookup', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':lookup'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildLookupResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.lookup(arg_request, arg_projectId, $fields: arg_$fields);
      checkLookupResponse(response as api.LookupResponse);
    });

    unittest.test('method--reserveIds', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request = buildReserveIdsRequest();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReserveIdsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReserveIdsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf(':reserveIds', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals(':reserveIds'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildReserveIdsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reserveIds(arg_request, arg_projectId,
          $fields: arg_$fields);
      checkReserveIdsResponse(response as api.ReserveIdsResponse);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request = buildRollbackRequest();
      final arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf(':rollback', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':rollback'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildRollbackResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rollback(arg_request, arg_projectId, $fields: arg_$fields);
      checkRollbackResponse(response as api.RollbackResponse);
    });

    unittest.test('method--runQuery', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request = buildRunQueryRequest();
      final arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf(':runQuery', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':runQuery'),
        );
        pathOffset += 9;

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
          await res.runQuery(arg_request, arg_projectId, $fields: arg_$fields);
      checkRunQueryResponse(response as api.RunQueryResponse);
    });
  });

  unittest.group('resource-ProjectsIndexesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects.indexes;
      final arg_request = buildGoogleDatastoreAdminV1Index();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleDatastoreAdminV1Index.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleDatastoreAdminV1Index(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/indexes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/indexes'),
        );
        pathOffset += 8;

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
          await res.create(arg_request, arg_projectId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects.indexes;
      final arg_projectId = 'foo';
      final arg_indexId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/indexes/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/indexes/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_indexId'),
        );

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
          await res.delete(arg_projectId, arg_indexId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects.indexes;
      final arg_projectId = 'foo';
      final arg_indexId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/indexes/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/indexes/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_indexId'),
        );

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
        final resp = convert.json.encode(buildGoogleDatastoreAdminV1Index());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_projectId, arg_indexId, $fields: arg_$fields);
      checkGoogleDatastoreAdminV1Index(
          response as api.GoogleDatastoreAdminV1Index);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects.indexes;
      final arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/indexes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/indexes'),
        );
        pathOffset += 8;

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
            .encode(buildGoogleDatastoreAdminV1ListIndexesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleDatastoreAdminV1ListIndexesResponse(
          response as api.GoogleDatastoreAdminV1ListIndexesResponse);
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects.operations;
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
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects.operations;
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
      final res = api.DatastoreApi(mock).projects.operations;
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
      final res = api.DatastoreApi(mock).projects.operations;
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
}
