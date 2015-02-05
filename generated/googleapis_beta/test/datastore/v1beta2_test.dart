library googleapis_beta.datastore.v1beta2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis_beta/common/common.dart' as common;
import 'package:googleapis_beta/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis_beta/datastore/v1beta2.dart' as api;



buildUnnamed1592() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed1592(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterAllocateIdsRequest = 0;
buildAllocateIdsRequest() {
  var o = new api.AllocateIdsRequest();
  buildCounterAllocateIdsRequest++;
  if (buildCounterAllocateIdsRequest < 3) {
    o.keys = buildUnnamed1592();
  }
  buildCounterAllocateIdsRequest--;
  return o;
}

checkAllocateIdsRequest(api.AllocateIdsRequest o) {
  buildCounterAllocateIdsRequest++;
  if (buildCounterAllocateIdsRequest < 3) {
    checkUnnamed1592(o.keys);
  }
  buildCounterAllocateIdsRequest--;
}

buildUnnamed1593() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed1593(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterAllocateIdsResponse = 0;
buildAllocateIdsResponse() {
  var o = new api.AllocateIdsResponse();
  buildCounterAllocateIdsResponse++;
  if (buildCounterAllocateIdsResponse < 3) {
    o.header = buildResponseHeader();
    o.keys = buildUnnamed1593();
  }
  buildCounterAllocateIdsResponse--;
  return o;
}

checkAllocateIdsResponse(api.AllocateIdsResponse o) {
  buildCounterAllocateIdsResponse++;
  if (buildCounterAllocateIdsResponse < 3) {
    checkResponseHeader(o.header);
    checkUnnamed1593(o.keys);
  }
  buildCounterAllocateIdsResponse--;
}

core.int buildCounterBeginTransactionRequest = 0;
buildBeginTransactionRequest() {
  var o = new api.BeginTransactionRequest();
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    o.isolationLevel = "foo";
  }
  buildCounterBeginTransactionRequest--;
  return o;
}

checkBeginTransactionRequest(api.BeginTransactionRequest o) {
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    unittest.expect(o.isolationLevel, unittest.equals('foo'));
  }
  buildCounterBeginTransactionRequest--;
}

core.int buildCounterBeginTransactionResponse = 0;
buildBeginTransactionResponse() {
  var o = new api.BeginTransactionResponse();
  buildCounterBeginTransactionResponse++;
  if (buildCounterBeginTransactionResponse < 3) {
    o.header = buildResponseHeader();
    o.transaction = "foo";
  }
  buildCounterBeginTransactionResponse--;
  return o;
}

checkBeginTransactionResponse(api.BeginTransactionResponse o) {
  buildCounterBeginTransactionResponse++;
  if (buildCounterBeginTransactionResponse < 3) {
    checkResponseHeader(o.header);
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterBeginTransactionResponse--;
}

core.int buildCounterCommitRequest = 0;
buildCommitRequest() {
  var o = new api.CommitRequest();
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    o.ignoreReadOnly = true;
    o.mode = "foo";
    o.mutation = buildMutation();
    o.transaction = "foo";
  }
  buildCounterCommitRequest--;
  return o;
}

checkCommitRequest(api.CommitRequest o) {
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    unittest.expect(o.ignoreReadOnly, unittest.isTrue);
    unittest.expect(o.mode, unittest.equals('foo'));
    checkMutation(o.mutation);
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterCommitRequest--;
}

core.int buildCounterCommitResponse = 0;
buildCommitResponse() {
  var o = new api.CommitResponse();
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    o.header = buildResponseHeader();
    o.mutationResult = buildMutationResult();
  }
  buildCounterCommitResponse--;
  return o;
}

checkCommitResponse(api.CommitResponse o) {
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    checkResponseHeader(o.header);
    checkMutationResult(o.mutationResult);
  }
  buildCounterCommitResponse--;
}

buildUnnamed1594() {
  var o = new core.List<api.Filter>();
  o.add(buildFilter());
  o.add(buildFilter());
  return o;
}

checkUnnamed1594(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterCompositeFilter = 0;
buildCompositeFilter() {
  var o = new api.CompositeFilter();
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    o.filters = buildUnnamed1594();
    o.operator = "foo";
  }
  buildCounterCompositeFilter--;
  return o;
}

checkCompositeFilter(api.CompositeFilter o) {
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    checkUnnamed1594(o.filters);
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterCompositeFilter--;
}

buildUnnamed1595() {
  var o = new core.Map<core.String, api.Property>();
  o["x"] = buildProperty();
  o["y"] = buildProperty();
  return o;
}

checkUnnamed1595(core.Map<core.String, api.Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProperty(o["x"]);
  checkProperty(o["y"]);
}

core.int buildCounterEntity = 0;
buildEntity() {
  var o = new api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.key = buildKey();
    o.properties = buildUnnamed1595();
  }
  buildCounterEntity--;
  return o;
}

checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    checkKey(o.key);
    checkUnnamed1595(o.properties);
  }
  buildCounterEntity--;
}

core.int buildCounterEntityResult = 0;
buildEntityResult() {
  var o = new api.EntityResult();
  buildCounterEntityResult++;
  if (buildCounterEntityResult < 3) {
    o.entity = buildEntity();
  }
  buildCounterEntityResult--;
  return o;
}

checkEntityResult(api.EntityResult o) {
  buildCounterEntityResult++;
  if (buildCounterEntityResult < 3) {
    checkEntity(o.entity);
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

buildUnnamed1596() {
  var o = new core.List<api.GqlQueryArg>();
  o.add(buildGqlQueryArg());
  o.add(buildGqlQueryArg());
  return o;
}

checkUnnamed1596(core.List<api.GqlQueryArg> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGqlQueryArg(o[0]);
  checkGqlQueryArg(o[1]);
}

buildUnnamed1597() {
  var o = new core.List<api.GqlQueryArg>();
  o.add(buildGqlQueryArg());
  o.add(buildGqlQueryArg());
  return o;
}

checkUnnamed1597(core.List<api.GqlQueryArg> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGqlQueryArg(o[0]);
  checkGqlQueryArg(o[1]);
}

core.int buildCounterGqlQuery = 0;
buildGqlQuery() {
  var o = new api.GqlQuery();
  buildCounterGqlQuery++;
  if (buildCounterGqlQuery < 3) {
    o.allowLiteral = true;
    o.nameArgs = buildUnnamed1596();
    o.numberArgs = buildUnnamed1597();
    o.queryString = "foo";
  }
  buildCounterGqlQuery--;
  return o;
}

checkGqlQuery(api.GqlQuery o) {
  buildCounterGqlQuery++;
  if (buildCounterGqlQuery < 3) {
    unittest.expect(o.allowLiteral, unittest.isTrue);
    checkUnnamed1596(o.nameArgs);
    checkUnnamed1597(o.numberArgs);
    unittest.expect(o.queryString, unittest.equals('foo'));
  }
  buildCounterGqlQuery--;
}

core.int buildCounterGqlQueryArg = 0;
buildGqlQueryArg() {
  var o = new api.GqlQueryArg();
  buildCounterGqlQueryArg++;
  if (buildCounterGqlQueryArg < 3) {
    o.cursor = "foo";
    o.name = "foo";
    o.value = buildValue();
  }
  buildCounterGqlQueryArg--;
  return o;
}

checkGqlQueryArg(api.GqlQueryArg o) {
  buildCounterGqlQueryArg++;
  if (buildCounterGqlQueryArg < 3) {
    unittest.expect(o.cursor, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkValue(o.value);
  }
  buildCounterGqlQueryArg--;
}

buildUnnamed1598() {
  var o = new core.List<api.KeyPathElement>();
  o.add(buildKeyPathElement());
  o.add(buildKeyPathElement());
  return o;
}

checkUnnamed1598(core.List<api.KeyPathElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyPathElement(o[0]);
  checkKeyPathElement(o[1]);
}

core.int buildCounterKey = 0;
buildKey() {
  var o = new api.Key();
  buildCounterKey++;
  if (buildCounterKey < 3) {
    o.partitionId = buildPartitionId();
    o.path = buildUnnamed1598();
  }
  buildCounterKey--;
  return o;
}

checkKey(api.Key o) {
  buildCounterKey++;
  if (buildCounterKey < 3) {
    checkPartitionId(o.partitionId);
    checkUnnamed1598(o.path);
  }
  buildCounterKey--;
}

core.int buildCounterKeyPathElement = 0;
buildKeyPathElement() {
  var o = new api.KeyPathElement();
  buildCounterKeyPathElement++;
  if (buildCounterKeyPathElement < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterKeyPathElement--;
  return o;
}

checkKeyPathElement(api.KeyPathElement o) {
  buildCounterKeyPathElement++;
  if (buildCounterKeyPathElement < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterKeyPathElement--;
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

buildUnnamed1599() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed1599(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterLookupRequest = 0;
buildLookupRequest() {
  var o = new api.LookupRequest();
  buildCounterLookupRequest++;
  if (buildCounterLookupRequest < 3) {
    o.keys = buildUnnamed1599();
    o.readOptions = buildReadOptions();
  }
  buildCounterLookupRequest--;
  return o;
}

checkLookupRequest(api.LookupRequest o) {
  buildCounterLookupRequest++;
  if (buildCounterLookupRequest < 3) {
    checkUnnamed1599(o.keys);
    checkReadOptions(o.readOptions);
  }
  buildCounterLookupRequest--;
}

buildUnnamed1600() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed1600(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

buildUnnamed1601() {
  var o = new core.List<api.EntityResult>();
  o.add(buildEntityResult());
  o.add(buildEntityResult());
  return o;
}

checkUnnamed1601(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

buildUnnamed1602() {
  var o = new core.List<api.EntityResult>();
  o.add(buildEntityResult());
  o.add(buildEntityResult());
  return o;
}

checkUnnamed1602(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

core.int buildCounterLookupResponse = 0;
buildLookupResponse() {
  var o = new api.LookupResponse();
  buildCounterLookupResponse++;
  if (buildCounterLookupResponse < 3) {
    o.deferred = buildUnnamed1600();
    o.found = buildUnnamed1601();
    o.header = buildResponseHeader();
    o.missing = buildUnnamed1602();
  }
  buildCounterLookupResponse--;
  return o;
}

checkLookupResponse(api.LookupResponse o) {
  buildCounterLookupResponse++;
  if (buildCounterLookupResponse < 3) {
    checkUnnamed1600(o.deferred);
    checkUnnamed1601(o.found);
    checkResponseHeader(o.header);
    checkUnnamed1602(o.missing);
  }
  buildCounterLookupResponse--;
}

buildUnnamed1603() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed1603(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

buildUnnamed1604() {
  var o = new core.List<api.Entity>();
  o.add(buildEntity());
  o.add(buildEntity());
  return o;
}

checkUnnamed1604(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

buildUnnamed1605() {
  var o = new core.List<api.Entity>();
  o.add(buildEntity());
  o.add(buildEntity());
  return o;
}

checkUnnamed1605(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

buildUnnamed1606() {
  var o = new core.List<api.Entity>();
  o.add(buildEntity());
  o.add(buildEntity());
  return o;
}

checkUnnamed1606(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

buildUnnamed1607() {
  var o = new core.List<api.Entity>();
  o.add(buildEntity());
  o.add(buildEntity());
  return o;
}

checkUnnamed1607(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.int buildCounterMutation = 0;
buildMutation() {
  var o = new api.Mutation();
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    o.delete = buildUnnamed1603();
    o.force = true;
    o.insert = buildUnnamed1604();
    o.insertAutoId = buildUnnamed1605();
    o.update = buildUnnamed1606();
    o.upsert = buildUnnamed1607();
  }
  buildCounterMutation--;
  return o;
}

checkMutation(api.Mutation o) {
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    checkUnnamed1603(o.delete);
    unittest.expect(o.force, unittest.isTrue);
    checkUnnamed1604(o.insert);
    checkUnnamed1605(o.insertAutoId);
    checkUnnamed1606(o.update);
    checkUnnamed1607(o.upsert);
  }
  buildCounterMutation--;
}

buildUnnamed1608() {
  var o = new core.List<api.Key>();
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

checkUnnamed1608(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterMutationResult = 0;
buildMutationResult() {
  var o = new api.MutationResult();
  buildCounterMutationResult++;
  if (buildCounterMutationResult < 3) {
    o.indexUpdates = 42;
    o.insertAutoIdKeys = buildUnnamed1608();
  }
  buildCounterMutationResult--;
  return o;
}

checkMutationResult(api.MutationResult o) {
  buildCounterMutationResult++;
  if (buildCounterMutationResult < 3) {
    unittest.expect(o.indexUpdates, unittest.equals(42));
    checkUnnamed1608(o.insertAutoIdKeys);
  }
  buildCounterMutationResult--;
}

core.int buildCounterPartitionId = 0;
buildPartitionId() {
  var o = new api.PartitionId();
  buildCounterPartitionId++;
  if (buildCounterPartitionId < 3) {
    o.datasetId = "foo";
    o.namespace = "foo";
  }
  buildCounterPartitionId--;
  return o;
}

checkPartitionId(api.PartitionId o) {
  buildCounterPartitionId++;
  if (buildCounterPartitionId < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.namespace, unittest.equals('foo'));
  }
  buildCounterPartitionId--;
}

buildUnnamed1609() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed1609(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterProperty = 0;
buildProperty() {
  var o = new api.Property();
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    o.blobKeyValue = "foo";
    o.blobValue = "foo";
    o.booleanValue = true;
    o.dateTimeValue = core.DateTime.parse("2002-02-27T14:01:02");
    o.doubleValue = 42.0;
    o.entityValue = buildEntity();
    o.indexed = true;
    o.integerValue = "foo";
    o.keyValue = buildKey();
    o.listValue = buildUnnamed1609();
    o.meaning = 42;
    o.stringValue = "foo";
  }
  buildCounterProperty--;
  return o;
}

checkProperty(api.Property o) {
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    unittest.expect(o.blobKeyValue, unittest.equals('foo'));
    unittest.expect(o.blobValue, unittest.equals('foo'));
    unittest.expect(o.booleanValue, unittest.isTrue);
    unittest.expect(o.dateTimeValue, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    checkEntity(o.entityValue);
    unittest.expect(o.indexed, unittest.isTrue);
    unittest.expect(o.integerValue, unittest.equals('foo'));
    checkKey(o.keyValue);
    checkUnnamed1609(o.listValue);
    unittest.expect(o.meaning, unittest.equals(42));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterProperty--;
}

core.int buildCounterPropertyExpression = 0;
buildPropertyExpression() {
  var o = new api.PropertyExpression();
  buildCounterPropertyExpression++;
  if (buildCounterPropertyExpression < 3) {
    o.aggregationFunction = "foo";
    o.property = buildPropertyReference();
  }
  buildCounterPropertyExpression--;
  return o;
}

checkPropertyExpression(api.PropertyExpression o) {
  buildCounterPropertyExpression++;
  if (buildCounterPropertyExpression < 3) {
    unittest.expect(o.aggregationFunction, unittest.equals('foo'));
    checkPropertyReference(o.property);
  }
  buildCounterPropertyExpression--;
}

core.int buildCounterPropertyFilter = 0;
buildPropertyFilter() {
  var o = new api.PropertyFilter();
  buildCounterPropertyFilter++;
  if (buildCounterPropertyFilter < 3) {
    o.operator = "foo";
    o.property = buildPropertyReference();
    o.value = buildValue();
  }
  buildCounterPropertyFilter--;
  return o;
}

checkPropertyFilter(api.PropertyFilter o) {
  buildCounterPropertyFilter++;
  if (buildCounterPropertyFilter < 3) {
    unittest.expect(o.operator, unittest.equals('foo'));
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

buildUnnamed1610() {
  var o = new core.List<api.PropertyReference>();
  o.add(buildPropertyReference());
  o.add(buildPropertyReference());
  return o;
}

checkUnnamed1610(core.List<api.PropertyReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyReference(o[0]);
  checkPropertyReference(o[1]);
}

buildUnnamed1611() {
  var o = new core.List<api.KindExpression>();
  o.add(buildKindExpression());
  o.add(buildKindExpression());
  return o;
}

checkUnnamed1611(core.List<api.KindExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKindExpression(o[0]);
  checkKindExpression(o[1]);
}

buildUnnamed1612() {
  var o = new core.List<api.PropertyOrder>();
  o.add(buildPropertyOrder());
  o.add(buildPropertyOrder());
  return o;
}

checkUnnamed1612(core.List<api.PropertyOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyOrder(o[0]);
  checkPropertyOrder(o[1]);
}

buildUnnamed1613() {
  var o = new core.List<api.PropertyExpression>();
  o.add(buildPropertyExpression());
  o.add(buildPropertyExpression());
  return o;
}

checkUnnamed1613(core.List<api.PropertyExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyExpression(o[0]);
  checkPropertyExpression(o[1]);
}

core.int buildCounterQuery = 0;
buildQuery() {
  var o = new api.Query();
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    o.endCursor = "foo";
    o.filter = buildFilter();
    o.groupBy = buildUnnamed1610();
    o.kinds = buildUnnamed1611();
    o.limit = 42;
    o.offset = 42;
    o.order = buildUnnamed1612();
    o.projection = buildUnnamed1613();
    o.startCursor = "foo";
  }
  buildCounterQuery--;
  return o;
}

checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    unittest.expect(o.endCursor, unittest.equals('foo'));
    checkFilter(o.filter);
    checkUnnamed1610(o.groupBy);
    checkUnnamed1611(o.kinds);
    unittest.expect(o.limit, unittest.equals(42));
    unittest.expect(o.offset, unittest.equals(42));
    checkUnnamed1612(o.order);
    checkUnnamed1613(o.projection);
    unittest.expect(o.startCursor, unittest.equals('foo'));
  }
  buildCounterQuery--;
}

buildUnnamed1614() {
  var o = new core.List<api.EntityResult>();
  o.add(buildEntityResult());
  o.add(buildEntityResult());
  return o;
}

checkUnnamed1614(core.List<api.EntityResult> o) {
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
    o.entityResults = buildUnnamed1614();
    o.moreResults = "foo";
    o.skippedResults = 42;
  }
  buildCounterQueryResultBatch--;
  return o;
}

checkQueryResultBatch(api.QueryResultBatch o) {
  buildCounterQueryResultBatch++;
  if (buildCounterQueryResultBatch < 3) {
    unittest.expect(o.endCursor, unittest.equals('foo'));
    unittest.expect(o.entityResultType, unittest.equals('foo'));
    checkUnnamed1614(o.entityResults);
    unittest.expect(o.moreResults, unittest.equals('foo'));
    unittest.expect(o.skippedResults, unittest.equals(42));
  }
  buildCounterQueryResultBatch--;
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

core.int buildCounterResponseHeader = 0;
buildResponseHeader() {
  var o = new api.ResponseHeader();
  buildCounterResponseHeader++;
  if (buildCounterResponseHeader < 3) {
    o.kind = "foo";
  }
  buildCounterResponseHeader--;
  return o;
}

checkResponseHeader(api.ResponseHeader o) {
  buildCounterResponseHeader++;
  if (buildCounterResponseHeader < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterResponseHeader--;
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
  if (buildCounterRollbackResponse < 3) {
    o.header = buildResponseHeader();
  }
  buildCounterRollbackResponse--;
  return o;
}

checkRollbackResponse(api.RollbackResponse o) {
  buildCounterRollbackResponse++;
  if (buildCounterRollbackResponse < 3) {
    checkResponseHeader(o.header);
  }
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
    o.header = buildResponseHeader();
  }
  buildCounterRunQueryResponse--;
  return o;
}

checkRunQueryResponse(api.RunQueryResponse o) {
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    checkQueryResultBatch(o.batch);
    checkResponseHeader(o.header);
  }
  buildCounterRunQueryResponse--;
}

buildUnnamed1615() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed1615(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterValue = 0;
buildValue() {
  var o = new api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.blobKeyValue = "foo";
    o.blobValue = "foo";
    o.booleanValue = true;
    o.dateTimeValue = core.DateTime.parse("2002-02-27T14:01:02");
    o.doubleValue = 42.0;
    o.entityValue = buildEntity();
    o.indexed = true;
    o.integerValue = "foo";
    o.keyValue = buildKey();
    o.listValue = buildUnnamed1615();
    o.meaning = 42;
    o.stringValue = "foo";
  }
  buildCounterValue--;
  return o;
}

checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    unittest.expect(o.blobKeyValue, unittest.equals('foo'));
    unittest.expect(o.blobValue, unittest.equals('foo'));
    unittest.expect(o.booleanValue, unittest.isTrue);
    unittest.expect(o.dateTimeValue, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    checkEntity(o.entityValue);
    unittest.expect(o.indexed, unittest.isTrue);
    unittest.expect(o.integerValue, unittest.equals('foo'));
    checkKey(o.keyValue);
    checkUnnamed1615(o.listValue);
    unittest.expect(o.meaning, unittest.equals(42));
    unittest.expect(o.stringValue, unittest.equals('foo'));
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


  unittest.group("obj-schema-GqlQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildGqlQuery();
      var od = new api.GqlQuery.fromJson(o.toJson());
      checkGqlQuery(od);
    });
  });


  unittest.group("obj-schema-GqlQueryArg", () {
    unittest.test("to-json--from-json", () {
      var o = buildGqlQueryArg();
      var od = new api.GqlQueryArg.fromJson(o.toJson());
      checkGqlQueryArg(od);
    });
  });


  unittest.group("obj-schema-Key", () {
    unittest.test("to-json--from-json", () {
      var o = buildKey();
      var od = new api.Key.fromJson(o.toJson());
      checkKey(od);
    });
  });


  unittest.group("obj-schema-KeyPathElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyPathElement();
      var od = new api.KeyPathElement.fromJson(o.toJson());
      checkKeyPathElement(od);
    });
  });


  unittest.group("obj-schema-KindExpression", () {
    unittest.test("to-json--from-json", () {
      var o = buildKindExpression();
      var od = new api.KindExpression.fromJson(o.toJson());
      checkKindExpression(od);
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


  unittest.group("obj-schema-Property", () {
    unittest.test("to-json--from-json", () {
      var o = buildProperty();
      var od = new api.Property.fromJson(o.toJson());
      checkProperty(od);
    });
  });


  unittest.group("obj-schema-PropertyExpression", () {
    unittest.test("to-json--from-json", () {
      var o = buildPropertyExpression();
      var od = new api.PropertyExpression.fromJson(o.toJson());
      checkPropertyExpression(od);
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


  unittest.group("obj-schema-ReadOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadOptions();
      var od = new api.ReadOptions.fromJson(o.toJson());
      checkReadOptions(od);
    });
  });


  unittest.group("obj-schema-ResponseHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildResponseHeader();
      var od = new api.ResponseHeader.fromJson(o.toJson());
      checkResponseHeader(od);
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


  unittest.group("obj-schema-Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildValue();
      var od = new api.Value.fromJson(o.toJson());
      checkValue(od);
    });
  });


  unittest.group("resource-DatasetsResourceApi", () {
    unittest.test("method--allocateIds", () {

      var mock = new common_test.HttpServerMock();
      api.DatasetsResourceApi res = new api.DatastoreApi(mock).datasets;
      var arg_request = buildAllocateIdsRequest();
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AllocateIdsRequest.fromJson(json);
        checkAllocateIdsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAllocateIdsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.allocateIds(arg_request, arg_datasetId).then(unittest.expectAsync(((api.AllocateIdsResponse response) {
        checkAllocateIdsResponse(response);
      })));
    });

    unittest.test("method--beginTransaction", () {

      var mock = new common_test.HttpServerMock();
      api.DatasetsResourceApi res = new api.DatastoreApi(mock).datasets;
      var arg_request = buildBeginTransactionRequest();
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.BeginTransactionRequest.fromJson(json);
        checkBeginTransactionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBeginTransactionResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.beginTransaction(arg_request, arg_datasetId).then(unittest.expectAsync(((api.BeginTransactionResponse response) {
        checkBeginTransactionResponse(response);
      })));
    });

    unittest.test("method--commit", () {

      var mock = new common_test.HttpServerMock();
      api.DatasetsResourceApi res = new api.DatastoreApi(mock).datasets;
      var arg_request = buildCommitRequest();
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CommitRequest.fromJson(json);
        checkCommitRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommitResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.commit(arg_request, arg_datasetId).then(unittest.expectAsync(((api.CommitResponse response) {
        checkCommitResponse(response);
      })));
    });

    unittest.test("method--lookup", () {

      var mock = new common_test.HttpServerMock();
      api.DatasetsResourceApi res = new api.DatastoreApi(mock).datasets;
      var arg_request = buildLookupRequest();
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LookupRequest.fromJson(json);
        checkLookupRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLookupResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.lookup(arg_request, arg_datasetId).then(unittest.expectAsync(((api.LookupResponse response) {
        checkLookupResponse(response);
      })));
    });

    unittest.test("method--rollback", () {

      var mock = new common_test.HttpServerMock();
      api.DatasetsResourceApi res = new api.DatastoreApi(mock).datasets;
      var arg_request = buildRollbackRequest();
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RollbackRequest.fromJson(json);
        checkRollbackRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRollbackResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.rollback(arg_request, arg_datasetId).then(unittest.expectAsync(((api.RollbackResponse response) {
        checkRollbackResponse(response);
      })));
    });

    unittest.test("method--runQuery", () {

      var mock = new common_test.HttpServerMock();
      api.DatasetsResourceApi res = new api.DatastoreApi(mock).datasets;
      var arg_request = buildRunQueryRequest();
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RunQueryRequest.fromJson(json);
        checkRunQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRunQueryResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.runQuery(arg_request, arg_datasetId).then(unittest.expectAsync(((api.RunQueryResponse response) {
        checkRunQueryResponse(response);
      })));
    });

  });


}

