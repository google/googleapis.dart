library googleapis_beta.dlp.v2beta1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/dlp/v2beta1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
  }
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
  }
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCategoryDescription = 0;
buildCategoryDescription() {
  var o = new api.CategoryDescription();
  buildCounterCategoryDescription++;
  if (buildCounterCategoryDescription < 3) {
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterCategoryDescription--;
  return o;
}

checkCategoryDescription(api.CategoryDescription o) {
  buildCounterCategoryDescription++;
  if (buildCounterCategoryDescription < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterCategoryDescription--;
}

core.int buildCounterCloudStorageKey = 0;
buildCloudStorageKey() {
  var o = new api.CloudStorageKey();
  buildCounterCloudStorageKey++;
  if (buildCounterCloudStorageKey < 3) {
    o.filePath = "foo";
    o.startOffset = "foo";
  }
  buildCounterCloudStorageKey--;
  return o;
}

checkCloudStorageKey(api.CloudStorageKey o) {
  buildCounterCloudStorageKey++;
  if (buildCounterCloudStorageKey < 3) {
    unittest.expect(o.filePath, unittest.equals('foo'));
    unittest.expect(o.startOffset, unittest.equals('foo'));
  }
  buildCounterCloudStorageKey--;
}

core.int buildCounterCloudStorageOptions = 0;
buildCloudStorageOptions() {
  var o = new api.CloudStorageOptions();
  buildCounterCloudStorageOptions++;
  if (buildCounterCloudStorageOptions < 3) {
    o.fileSet = buildFileSet();
  }
  buildCounterCloudStorageOptions--;
  return o;
}

checkCloudStorageOptions(api.CloudStorageOptions o) {
  buildCounterCloudStorageOptions++;
  if (buildCounterCloudStorageOptions < 3) {
    checkFileSet(o.fileSet);
  }
  buildCounterCloudStorageOptions--;
}

core.int buildCounterContentItem = 0;
buildContentItem() {
  var o = new api.ContentItem();
  buildCounterContentItem++;
  if (buildCounterContentItem < 3) {
    o.data = "foo";
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterContentItem--;
  return o;
}

checkContentItem(api.ContentItem o) {
  buildCounterContentItem++;
  if (buildCounterContentItem < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterContentItem--;
}

core.int buildCounterCreateInspectOperationRequest = 0;
buildCreateInspectOperationRequest() {
  var o = new api.CreateInspectOperationRequest();
  buildCounterCreateInspectOperationRequest++;
  if (buildCounterCreateInspectOperationRequest < 3) {
    o.inspectConfig = buildInspectConfig();
    o.storageConfig = buildStorageConfig();
  }
  buildCounterCreateInspectOperationRequest--;
  return o;
}

checkCreateInspectOperationRequest(api.CreateInspectOperationRequest o) {
  buildCounterCreateInspectOperationRequest++;
  if (buildCounterCreateInspectOperationRequest < 3) {
    checkInspectConfig(o.inspectConfig);
    checkStorageConfig(o.storageConfig);
  }
  buildCounterCreateInspectOperationRequest--;
}

core.int buildCounterDatastoreKey = 0;
buildDatastoreKey() {
  var o = new api.DatastoreKey();
  buildCounterDatastoreKey++;
  if (buildCounterDatastoreKey < 3) {
    o.entityKey = buildKey();
  }
  buildCounterDatastoreKey--;
  return o;
}

checkDatastoreKey(api.DatastoreKey o) {
  buildCounterDatastoreKey++;
  if (buildCounterDatastoreKey < 3) {
    checkKey(o.entityKey);
  }
  buildCounterDatastoreKey--;
}

buildUnnamed3332() {
  var o = new core.List<api.Projection>();
  o.add(buildProjection());
  o.add(buildProjection());
  return o;
}

checkUnnamed3332(core.List<api.Projection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjection(o[0]);
  checkProjection(o[1]);
}

core.int buildCounterDatastoreOptions = 0;
buildDatastoreOptions() {
  var o = new api.DatastoreOptions();
  buildCounterDatastoreOptions++;
  if (buildCounterDatastoreOptions < 3) {
    o.kind = buildKindExpression();
    o.partitionId = buildPartitionId();
    o.projection = buildUnnamed3332();
  }
  buildCounterDatastoreOptions--;
  return o;
}

checkDatastoreOptions(api.DatastoreOptions o) {
  buildCounterDatastoreOptions++;
  if (buildCounterDatastoreOptions < 3) {
    checkKindExpression(o.kind);
    checkPartitionId(o.partitionId);
    checkUnnamed3332(o.projection);
  }
  buildCounterDatastoreOptions--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
}

core.int buildCounterFieldId = 0;
buildFieldId() {
  var o = new api.FieldId();
  buildCounterFieldId++;
  if (buildCounterFieldId < 3) {
    o.columnName = "foo";
  }
  buildCounterFieldId--;
  return o;
}

checkFieldId(api.FieldId o) {
  buildCounterFieldId++;
  if (buildCounterFieldId < 3) {
    unittest.expect(o.columnName, unittest.equals('foo'));
  }
  buildCounterFieldId--;
}

core.int buildCounterFileSet = 0;
buildFileSet() {
  var o = new api.FileSet();
  buildCounterFileSet++;
  if (buildCounterFileSet < 3) {
    o.url = "foo";
  }
  buildCounterFileSet--;
  return o;
}

checkFileSet(api.FileSet o) {
  buildCounterFileSet++;
  if (buildCounterFileSet < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterFileSet--;
}

core.int buildCounterFinding = 0;
buildFinding() {
  var o = new api.Finding();
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    o.createTime = "foo";
    o.infoType = buildInfoType();
    o.likelihood = "foo";
    o.location = buildLocation();
    o.quote = "foo";
  }
  buildCounterFinding--;
  return o;
}

checkFinding(api.Finding o) {
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkInfoType(o.infoType);
    unittest.expect(o.likelihood, unittest.equals('foo'));
    checkLocation(o.location);
    unittest.expect(o.quote, unittest.equals('foo'));
  }
  buildCounterFinding--;
}

core.int buildCounterImageLocation = 0;
buildImageLocation() {
  var o = new api.ImageLocation();
  buildCounterImageLocation++;
  if (buildCounterImageLocation < 3) {
    o.height = 42;
    o.left = 42;
    o.top = 42;
    o.width = 42;
  }
  buildCounterImageLocation--;
  return o;
}

checkImageLocation(api.ImageLocation o) {
  buildCounterImageLocation++;
  if (buildCounterImageLocation < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.top, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterImageLocation--;
}

core.int buildCounterInfoType = 0;
buildInfoType() {
  var o = new api.InfoType();
  buildCounterInfoType++;
  if (buildCounterInfoType < 3) {
    o.name = "foo";
  }
  buildCounterInfoType--;
  return o;
}

checkInfoType(api.InfoType o) {
  buildCounterInfoType++;
  if (buildCounterInfoType < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterInfoType--;
}

buildUnnamed3333() {
  var o = new core.List<api.CategoryDescription>();
  o.add(buildCategoryDescription());
  o.add(buildCategoryDescription());
  return o;
}

checkUnnamed3333(core.List<api.CategoryDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategoryDescription(o[0]);
  checkCategoryDescription(o[1]);
}

core.int buildCounterInfoTypeDescription = 0;
buildInfoTypeDescription() {
  var o = new api.InfoTypeDescription();
  buildCounterInfoTypeDescription++;
  if (buildCounterInfoTypeDescription < 3) {
    o.categories = buildUnnamed3333();
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterInfoTypeDescription--;
  return o;
}

checkInfoTypeDescription(api.InfoTypeDescription o) {
  buildCounterInfoTypeDescription++;
  if (buildCounterInfoTypeDescription < 3) {
    checkUnnamed3333(o.categories);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterInfoTypeDescription--;
}

buildUnnamed3334() {
  var o = new core.List<api.InfoType>();
  o.add(buildInfoType());
  o.add(buildInfoType());
  return o;
}

checkUnnamed3334(core.List<api.InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInfoType(o[0]);
  checkInfoType(o[1]);
}

core.int buildCounterInspectConfig = 0;
buildInspectConfig() {
  var o = new api.InspectConfig();
  buildCounterInspectConfig++;
  if (buildCounterInspectConfig < 3) {
    o.excludeTypes = true;
    o.includeQuote = true;
    o.infoTypes = buildUnnamed3334();
    o.maxFindings = 42;
    o.minLikelihood = "foo";
  }
  buildCounterInspectConfig--;
  return o;
}

checkInspectConfig(api.InspectConfig o) {
  buildCounterInspectConfig++;
  if (buildCounterInspectConfig < 3) {
    unittest.expect(o.excludeTypes, unittest.isTrue);
    unittest.expect(o.includeQuote, unittest.isTrue);
    checkUnnamed3334(o.infoTypes);
    unittest.expect(o.maxFindings, unittest.equals(42));
    unittest.expect(o.minLikelihood, unittest.equals('foo'));
  }
  buildCounterInspectConfig--;
}

buildUnnamed3335() {
  var o = new core.List<api.ContentItem>();
  o.add(buildContentItem());
  o.add(buildContentItem());
  return o;
}

checkUnnamed3335(core.List<api.ContentItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentItem(o[0]);
  checkContentItem(o[1]);
}

core.int buildCounterInspectContentRequest = 0;
buildInspectContentRequest() {
  var o = new api.InspectContentRequest();
  buildCounterInspectContentRequest++;
  if (buildCounterInspectContentRequest < 3) {
    o.inspectConfig = buildInspectConfig();
    o.items = buildUnnamed3335();
  }
  buildCounterInspectContentRequest--;
  return o;
}

checkInspectContentRequest(api.InspectContentRequest o) {
  buildCounterInspectContentRequest++;
  if (buildCounterInspectContentRequest < 3) {
    checkInspectConfig(o.inspectConfig);
    checkUnnamed3335(o.items);
  }
  buildCounterInspectContentRequest--;
}

buildUnnamed3336() {
  var o = new core.List<api.InspectResult>();
  o.add(buildInspectResult());
  o.add(buildInspectResult());
  return o;
}

checkUnnamed3336(core.List<api.InspectResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInspectResult(o[0]);
  checkInspectResult(o[1]);
}

core.int buildCounterInspectContentResponse = 0;
buildInspectContentResponse() {
  var o = new api.InspectContentResponse();
  buildCounterInspectContentResponse++;
  if (buildCounterInspectContentResponse < 3) {
    o.results = buildUnnamed3336();
  }
  buildCounterInspectContentResponse--;
  return o;
}

checkInspectContentResponse(api.InspectContentResponse o) {
  buildCounterInspectContentResponse++;
  if (buildCounterInspectContentResponse < 3) {
    checkUnnamed3336(o.results);
  }
  buildCounterInspectContentResponse--;
}

buildUnnamed3337() {
  var o = new core.List<api.Finding>();
  o.add(buildFinding());
  o.add(buildFinding());
  return o;
}

checkUnnamed3337(core.List<api.Finding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFinding(o[0]);
  checkFinding(o[1]);
}

core.int buildCounterInspectResult = 0;
buildInspectResult() {
  var o = new api.InspectResult();
  buildCounterInspectResult++;
  if (buildCounterInspectResult < 3) {
    o.findings = buildUnnamed3337();
    o.findingsTruncated = true;
  }
  buildCounterInspectResult--;
  return o;
}

checkInspectResult(api.InspectResult o) {
  buildCounterInspectResult++;
  if (buildCounterInspectResult < 3) {
    checkUnnamed3337(o.findings);
    unittest.expect(o.findingsTruncated, unittest.isTrue);
  }
  buildCounterInspectResult--;
}

buildUnnamed3338() {
  var o = new core.List<api.PathElement>();
  o.add(buildPathElement());
  o.add(buildPathElement());
  return o;
}

checkUnnamed3338(core.List<api.PathElement> o) {
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
    o.path = buildUnnamed3338();
  }
  buildCounterKey--;
  return o;
}

checkKey(api.Key o) {
  buildCounterKey++;
  if (buildCounterKey < 3) {
    checkPartitionId(o.partitionId);
    checkUnnamed3338(o.path);
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

buildUnnamed3339() {
  var o = new core.List<api.InfoTypeDescription>();
  o.add(buildInfoTypeDescription());
  o.add(buildInfoTypeDescription());
  return o;
}

checkUnnamed3339(core.List<api.InfoTypeDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInfoTypeDescription(o[0]);
  checkInfoTypeDescription(o[1]);
}

core.int buildCounterListInfoTypesResponse = 0;
buildListInfoTypesResponse() {
  var o = new api.ListInfoTypesResponse();
  buildCounterListInfoTypesResponse++;
  if (buildCounterListInfoTypesResponse < 3) {
    o.infoTypes = buildUnnamed3339();
  }
  buildCounterListInfoTypesResponse--;
  return o;
}

checkListInfoTypesResponse(api.ListInfoTypesResponse o) {
  buildCounterListInfoTypesResponse++;
  if (buildCounterListInfoTypesResponse < 3) {
    checkUnnamed3339(o.infoTypes);
  }
  buildCounterListInfoTypesResponse--;
}

core.int buildCounterListInspectFindingsResponse = 0;
buildListInspectFindingsResponse() {
  var o = new api.ListInspectFindingsResponse();
  buildCounterListInspectFindingsResponse++;
  if (buildCounterListInspectFindingsResponse < 3) {
    o.nextPageToken = "foo";
    o.result = buildInspectResult();
  }
  buildCounterListInspectFindingsResponse--;
  return o;
}

checkListInspectFindingsResponse(api.ListInspectFindingsResponse o) {
  buildCounterListInspectFindingsResponse++;
  if (buildCounterListInspectFindingsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkInspectResult(o.result);
  }
  buildCounterListInspectFindingsResponse--;
}

buildUnnamed3340() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed3340(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed3340();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3340(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed3341() {
  var o = new core.List<api.CategoryDescription>();
  o.add(buildCategoryDescription());
  o.add(buildCategoryDescription());
  return o;
}

checkUnnamed3341(core.List<api.CategoryDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategoryDescription(o[0]);
  checkCategoryDescription(o[1]);
}

core.int buildCounterListRootCategoriesResponse = 0;
buildListRootCategoriesResponse() {
  var o = new api.ListRootCategoriesResponse();
  buildCounterListRootCategoriesResponse++;
  if (buildCounterListRootCategoriesResponse < 3) {
    o.categories = buildUnnamed3341();
  }
  buildCounterListRootCategoriesResponse--;
  return o;
}

checkListRootCategoriesResponse(api.ListRootCategoriesResponse o) {
  buildCounterListRootCategoriesResponse++;
  if (buildCounterListRootCategoriesResponse < 3) {
    checkUnnamed3341(o.categories);
  }
  buildCounterListRootCategoriesResponse--;
}

buildUnnamed3342() {
  var o = new core.List<api.ImageLocation>();
  o.add(buildImageLocation());
  o.add(buildImageLocation());
  return o;
}

checkUnnamed3342(core.List<api.ImageLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageLocation(o[0]);
  checkImageLocation(o[1]);
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.byteRange = buildRange();
    o.codepointRange = buildRange();
    o.fieldId = buildFieldId();
    o.imageBoxes = buildUnnamed3342();
    o.recordKey = buildRecordKey();
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkRange(o.byteRange);
    checkRange(o.codepointRange);
    checkFieldId(o.fieldId);
    checkUnnamed3342(o.imageBoxes);
    checkRecordKey(o.recordKey);
  }
  buildCounterLocation--;
}

buildUnnamed3343() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3343(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed3344() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3344(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed3343();
    o.name = "foo";
    o.response = buildUnnamed3344();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed3343(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3344(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterPartitionId = 0;
buildPartitionId() {
  var o = new api.PartitionId();
  buildCounterPartitionId++;
  if (buildCounterPartitionId < 3) {
    o.databaseId = "foo";
    o.namespaceId = "foo";
    o.projectId = "foo";
  }
  buildCounterPartitionId--;
  return o;
}

checkPartitionId(api.PartitionId o) {
  buildCounterPartitionId++;
  if (buildCounterPartitionId < 3) {
    unittest.expect(o.databaseId, unittest.equals('foo'));
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

core.int buildCounterRange = 0;
buildRange() {
  var o = new api.Range();
  buildCounterRange++;
  if (buildCounterRange < 3) {
    o.end = "foo";
    o.start = "foo";
  }
  buildCounterRange--;
  return o;
}

checkRange(api.Range o) {
  buildCounterRange++;
  if (buildCounterRange < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterRange--;
}

core.int buildCounterRecordKey = 0;
buildRecordKey() {
  var o = new api.RecordKey();
  buildCounterRecordKey++;
  if (buildCounterRecordKey < 3) {
    o.cloudStorageKey = buildCloudStorageKey();
    o.datastoreKey = buildDatastoreKey();
  }
  buildCounterRecordKey--;
  return o;
}

checkRecordKey(api.RecordKey o) {
  buildCounterRecordKey++;
  if (buildCounterRecordKey < 3) {
    checkCloudStorageKey(o.cloudStorageKey);
    checkDatastoreKey(o.datastoreKey);
  }
  buildCounterRecordKey--;
}

buildUnnamed3345() {
  var o = new core.List<api.ContentItem>();
  o.add(buildContentItem());
  o.add(buildContentItem());
  return o;
}

checkUnnamed3345(core.List<api.ContentItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentItem(o[0]);
  checkContentItem(o[1]);
}

buildUnnamed3346() {
  var o = new core.List<api.ReplaceConfig>();
  o.add(buildReplaceConfig());
  o.add(buildReplaceConfig());
  return o;
}

checkUnnamed3346(core.List<api.ReplaceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplaceConfig(o[0]);
  checkReplaceConfig(o[1]);
}

core.int buildCounterRedactContentRequest = 0;
buildRedactContentRequest() {
  var o = new api.RedactContentRequest();
  buildCounterRedactContentRequest++;
  if (buildCounterRedactContentRequest < 3) {
    o.inspectConfig = buildInspectConfig();
    o.items = buildUnnamed3345();
    o.replaceConfigs = buildUnnamed3346();
  }
  buildCounterRedactContentRequest--;
  return o;
}

checkRedactContentRequest(api.RedactContentRequest o) {
  buildCounterRedactContentRequest++;
  if (buildCounterRedactContentRequest < 3) {
    checkInspectConfig(o.inspectConfig);
    checkUnnamed3345(o.items);
    checkUnnamed3346(o.replaceConfigs);
  }
  buildCounterRedactContentRequest--;
}

buildUnnamed3347() {
  var o = new core.List<api.ContentItem>();
  o.add(buildContentItem());
  o.add(buildContentItem());
  return o;
}

checkUnnamed3347(core.List<api.ContentItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentItem(o[0]);
  checkContentItem(o[1]);
}

core.int buildCounterRedactContentResponse = 0;
buildRedactContentResponse() {
  var o = new api.RedactContentResponse();
  buildCounterRedactContentResponse++;
  if (buildCounterRedactContentResponse < 3) {
    o.items = buildUnnamed3347();
  }
  buildCounterRedactContentResponse--;
  return o;
}

checkRedactContentResponse(api.RedactContentResponse o) {
  buildCounterRedactContentResponse++;
  if (buildCounterRedactContentResponse < 3) {
    checkUnnamed3347(o.items);
  }
  buildCounterRedactContentResponse--;
}

core.int buildCounterReplaceConfig = 0;
buildReplaceConfig() {
  var o = new api.ReplaceConfig();
  buildCounterReplaceConfig++;
  if (buildCounterReplaceConfig < 3) {
    o.infoType = buildInfoType();
    o.replaceWith = "foo";
  }
  buildCounterReplaceConfig--;
  return o;
}

checkReplaceConfig(api.ReplaceConfig o) {
  buildCounterReplaceConfig++;
  if (buildCounterReplaceConfig < 3) {
    checkInfoType(o.infoType);
    unittest.expect(o.replaceWith, unittest.equals('foo'));
  }
  buildCounterReplaceConfig--;
}

buildUnnamed3348() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3348(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed3349() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3348());
  o.add(buildUnnamed3348());
  return o;
}

checkUnnamed3349(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3348(o[0]);
  checkUnnamed3348(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3349();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3349(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStorageConfig = 0;
buildStorageConfig() {
  var o = new api.StorageConfig();
  buildCounterStorageConfig++;
  if (buildCounterStorageConfig < 3) {
    o.cloudStorageOptions = buildCloudStorageOptions();
    o.datastoreOptions = buildDatastoreOptions();
  }
  buildCounterStorageConfig--;
  return o;
}

checkStorageConfig(api.StorageConfig o) {
  buildCounterStorageConfig++;
  if (buildCounterStorageConfig < 3) {
    checkCloudStorageOptions(o.cloudStorageOptions);
    checkDatastoreOptions(o.datastoreOptions);
  }
  buildCounterStorageConfig--;
}


main() {
  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });


  unittest.group("obj-schema-CategoryDescription", () {
    unittest.test("to-json--from-json", () {
      var o = buildCategoryDescription();
      var od = new api.CategoryDescription.fromJson(o.toJson());
      checkCategoryDescription(od);
    });
  });


  unittest.group("obj-schema-CloudStorageKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudStorageKey();
      var od = new api.CloudStorageKey.fromJson(o.toJson());
      checkCloudStorageKey(od);
    });
  });


  unittest.group("obj-schema-CloudStorageOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudStorageOptions();
      var od = new api.CloudStorageOptions.fromJson(o.toJson());
      checkCloudStorageOptions(od);
    });
  });


  unittest.group("obj-schema-ContentItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildContentItem();
      var od = new api.ContentItem.fromJson(o.toJson());
      checkContentItem(od);
    });
  });


  unittest.group("obj-schema-CreateInspectOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateInspectOperationRequest();
      var od = new api.CreateInspectOperationRequest.fromJson(o.toJson());
      checkCreateInspectOperationRequest(od);
    });
  });


  unittest.group("obj-schema-DatastoreKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatastoreKey();
      var od = new api.DatastoreKey.fromJson(o.toJson());
      checkDatastoreKey(od);
    });
  });


  unittest.group("obj-schema-DatastoreOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatastoreOptions();
      var od = new api.DatastoreOptions.fromJson(o.toJson());
      checkDatastoreOptions(od);
    });
  });


  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });


  unittest.group("obj-schema-FieldId", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldId();
      var od = new api.FieldId.fromJson(o.toJson());
      checkFieldId(od);
    });
  });


  unittest.group("obj-schema-FileSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileSet();
      var od = new api.FileSet.fromJson(o.toJson());
      checkFileSet(od);
    });
  });


  unittest.group("obj-schema-Finding", () {
    unittest.test("to-json--from-json", () {
      var o = buildFinding();
      var od = new api.Finding.fromJson(o.toJson());
      checkFinding(od);
    });
  });


  unittest.group("obj-schema-ImageLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageLocation();
      var od = new api.ImageLocation.fromJson(o.toJson());
      checkImageLocation(od);
    });
  });


  unittest.group("obj-schema-InfoType", () {
    unittest.test("to-json--from-json", () {
      var o = buildInfoType();
      var od = new api.InfoType.fromJson(o.toJson());
      checkInfoType(od);
    });
  });


  unittest.group("obj-schema-InfoTypeDescription", () {
    unittest.test("to-json--from-json", () {
      var o = buildInfoTypeDescription();
      var od = new api.InfoTypeDescription.fromJson(o.toJson());
      checkInfoTypeDescription(od);
    });
  });


  unittest.group("obj-schema-InspectConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildInspectConfig();
      var od = new api.InspectConfig.fromJson(o.toJson());
      checkInspectConfig(od);
    });
  });


  unittest.group("obj-schema-InspectContentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInspectContentRequest();
      var od = new api.InspectContentRequest.fromJson(o.toJson());
      checkInspectContentRequest(od);
    });
  });


  unittest.group("obj-schema-InspectContentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInspectContentResponse();
      var od = new api.InspectContentResponse.fromJson(o.toJson());
      checkInspectContentResponse(od);
    });
  });


  unittest.group("obj-schema-InspectResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildInspectResult();
      var od = new api.InspectResult.fromJson(o.toJson());
      checkInspectResult(od);
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


  unittest.group("obj-schema-ListInfoTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInfoTypesResponse();
      var od = new api.ListInfoTypesResponse.fromJson(o.toJson());
      checkListInfoTypesResponse(od);
    });
  });


  unittest.group("obj-schema-ListInspectFindingsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInspectFindingsResponse();
      var od = new api.ListInspectFindingsResponse.fromJson(o.toJson());
      checkListInspectFindingsResponse(od);
    });
  });


  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });


  unittest.group("obj-schema-ListRootCategoriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListRootCategoriesResponse();
      var od = new api.ListRootCategoriesResponse.fromJson(o.toJson());
      checkListRootCategoriesResponse(od);
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


  unittest.group("obj-schema-PropertyReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildPropertyReference();
      var od = new api.PropertyReference.fromJson(o.toJson());
      checkPropertyReference(od);
    });
  });


  unittest.group("obj-schema-Range", () {
    unittest.test("to-json--from-json", () {
      var o = buildRange();
      var od = new api.Range.fromJson(o.toJson());
      checkRange(od);
    });
  });


  unittest.group("obj-schema-RecordKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecordKey();
      var od = new api.RecordKey.fromJson(o.toJson());
      checkRecordKey(od);
    });
  });


  unittest.group("obj-schema-RedactContentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRedactContentRequest();
      var od = new api.RedactContentRequest.fromJson(o.toJson());
      checkRedactContentRequest(od);
    });
  });


  unittest.group("obj-schema-RedactContentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRedactContentResponse();
      var od = new api.RedactContentResponse.fromJson(o.toJson());
      checkRedactContentResponse(od);
    });
  });


  unittest.group("obj-schema-ReplaceConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplaceConfig();
      var od = new api.ReplaceConfig.fromJson(o.toJson());
      checkReplaceConfig(od);
    });
  });


  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });


  unittest.group("obj-schema-StorageConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildStorageConfig();
      var od = new api.StorageConfig.fromJson(o.toJson());
      checkStorageConfig(od);
    });
  });


  unittest.group("resource-ContentResourceApi", () {
    unittest.test("method--inspect", () {

      var mock = new HttpServerMock();
      api.ContentResourceApi res = new api.DlpApi(mock).content;
      var arg_request = buildInspectContentRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InspectContentRequest.fromJson(json);
        checkInspectContentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 23), unittest.equals("v2beta1/content:inspect"));
        pathOffset += 23;

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
        var resp = convert.JSON.encode(buildInspectContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.inspect(arg_request).then(unittest.expectAsync(((api.InspectContentResponse response) {
        checkInspectContentResponse(response);
      })));
    });

    unittest.test("method--redact", () {

      var mock = new HttpServerMock();
      api.ContentResourceApi res = new api.DlpApi(mock).content;
      var arg_request = buildRedactContentRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RedactContentRequest.fromJson(json);
        checkRedactContentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("v2beta1/content:redact"));
        pathOffset += 22;

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
        var resp = convert.JSON.encode(buildRedactContentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.redact(arg_request).then(unittest.expectAsync(((api.RedactContentResponse response) {
        checkRedactContentResponse(response);
      })));
    });

  });


  unittest.group("resource-InspectOperationsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.InspectOperationsResourceApi res = new api.DlpApi(mock).inspect.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v2beta1/"));
        pathOffset += 8;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_request, arg_name).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.InspectOperationsResourceApi res = new api.DlpApi(mock).inspect.operations;
      var arg_request = buildCreateInspectOperationRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CreateInspectOperationRequest.fromJson(json);
        checkCreateInspectOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26), unittest.equals("v2beta1/inspect/operations"));
        pathOffset += 26;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.InspectOperationsResourceApi res = new api.DlpApi(mock).inspect.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v2beta1/"));
        pathOffset += 8;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.InspectOperationsResourceApi res = new api.DlpApi(mock).inspect.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v2beta1/"));
        pathOffset += 8;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.InspectOperationsResourceApi res = new api.DlpApi(mock).inspect.operations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v2beta1/"));
        pathOffset += 8;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_name, filter: arg_filter, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListOperationsResponse response) {
        checkListOperationsResponse(response);
      })));
    });

  });


  unittest.group("resource-InspectResultsFindingsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.InspectResultsFindingsResourceApi res = new api.DlpApi(mock).inspect.results.findings;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v2beta1/"));
        pathOffset += 8;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListInspectFindingsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_name, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListInspectFindingsResponse response) {
        checkListInspectFindingsResponse(response);
      })));
    });

  });


  unittest.group("resource-RootCategoriesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.RootCategoriesResourceApi res = new api.DlpApi(mock).rootCategories;
      var arg_languageCode = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("v2beta1/rootCategories"));
        pathOffset += 22;

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
        unittest.expect(queryMap["languageCode"].first, unittest.equals(arg_languageCode));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListRootCategoriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(languageCode: arg_languageCode).then(unittest.expectAsync(((api.ListRootCategoriesResponse response) {
        checkListRootCategoriesResponse(response);
      })));
    });

  });


  unittest.group("resource-RootCategoriesInfoTypesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.RootCategoriesInfoTypesResourceApi res = new api.DlpApi(mock).rootCategories.infoTypes;
      var arg_category = "foo";
      var arg_languageCode = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 23), unittest.equals("v2beta1/rootCategories/"));
        pathOffset += 23;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["languageCode"].first, unittest.equals(arg_languageCode));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListInfoTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_category, languageCode: arg_languageCode).then(unittest.expectAsync(((api.ListInfoTypesResponse response) {
        checkListInfoTypesResponse(response);
      })));
    });

  });


}

