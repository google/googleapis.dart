library googleapis.securitycenter.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/securitycenter/v1.dart' as api;

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

buildUnnamed619() {
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

checkUnnamed619(core.Map<core.String, core.Object> o) {
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

core.int buildCounterAsset = 0;
buildAsset() {
  var o = new api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.createTime = "foo";
    o.iamPolicy = buildIamPolicy();
    o.name = "foo";
    o.resourceProperties = buildUnnamed619();
    o.securityCenterProperties = buildSecurityCenterProperties();
    o.securityMarks = buildSecurityMarks();
    o.updateTime = "foo";
  }
  buildCounterAsset--;
  return o;
}

checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkIamPolicy(o.iamPolicy);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed619(o.resourceProperties);
    checkSecurityCenterProperties(o.securityCenterProperties);
    checkSecurityMarks(o.securityMarks);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterAsset--;
}

buildUnnamed620() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed620(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAssetDiscoveryConfig = 0;
buildAssetDiscoveryConfig() {
  var o = new api.AssetDiscoveryConfig();
  buildCounterAssetDiscoveryConfig++;
  if (buildCounterAssetDiscoveryConfig < 3) {
    o.inclusionMode = "foo";
    o.projectIds = buildUnnamed620();
  }
  buildCounterAssetDiscoveryConfig--;
  return o;
}

checkAssetDiscoveryConfig(api.AssetDiscoveryConfig o) {
  buildCounterAssetDiscoveryConfig++;
  if (buildCounterAssetDiscoveryConfig < 3) {
    unittest.expect(o.inclusionMode, unittest.equals('foo'));
    checkUnnamed620(o.projectIds);
  }
  buildCounterAssetDiscoveryConfig--;
}

buildUnnamed621() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed621(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed621();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed621(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed622() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed622(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed622();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed622(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed623() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed623(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed623();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed623(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
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

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

buildUnnamed624() {
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

checkUnnamed624(core.Map<core.String, core.Object> o) {
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

core.int buildCounterFinding = 0;
buildFinding() {
  var o = new api.Finding();
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    o.category = "foo";
    o.createTime = "foo";
    o.eventTime = "foo";
    o.externalUri = "foo";
    o.name = "foo";
    o.parent = "foo";
    o.resourceName = "foo";
    o.securityMarks = buildSecurityMarks();
    o.sourceProperties = buildUnnamed624();
    o.state = "foo";
  }
  buildCounterFinding--;
  return o;
}

checkFinding(api.Finding o) {
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.eventTime, unittest.equals('foo'));
    unittest.expect(o.externalUri, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
    checkSecurityMarks(o.securityMarks);
    checkUnnamed624(o.sourceProperties);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterFinding--;
}

core.int buildCounterGetIamPolicyRequest = 0;
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {}
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {}
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse = 0;
buildGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse() {
  var o = new api.GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse();
  buildCounterGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse++;
  if (buildCounterGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse < 3) {
    o.duration = "foo";
    o.state = "foo";
  }
  buildCounterGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse--;
  return o;
}

checkGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse(
    api.GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse o) {
  buildCounterGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse++;
  if (buildCounterGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse < 3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse--;
}

core.int buildCounterGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse =
    0;
buildGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse() {
  var o = new api.GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse();
  buildCounterGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse++;
  if (buildCounterGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse <
      3) {
    o.duration = "foo";
    o.state = "foo";
  }
  buildCounterGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse--;
  return o;
}

checkGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse(
    api.GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse o) {
  buildCounterGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse++;
  if (buildCounterGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse <
      3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse--;
}

core.int buildCounterGroupAssetsRequest = 0;
buildGroupAssetsRequest() {
  var o = new api.GroupAssetsRequest();
  buildCounterGroupAssetsRequest++;
  if (buildCounterGroupAssetsRequest < 3) {
    o.compareDuration = "foo";
    o.filter = "foo";
    o.groupBy = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
    o.readTime = "foo";
  }
  buildCounterGroupAssetsRequest--;
  return o;
}

checkGroupAssetsRequest(api.GroupAssetsRequest o) {
  buildCounterGroupAssetsRequest++;
  if (buildCounterGroupAssetsRequest < 3) {
    unittest.expect(o.compareDuration, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.groupBy, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.readTime, unittest.equals('foo'));
  }
  buildCounterGroupAssetsRequest--;
}

buildUnnamed625() {
  var o = new core.List<api.GroupResult>();
  o.add(buildGroupResult());
  o.add(buildGroupResult());
  return o;
}

checkUnnamed625(core.List<api.GroupResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupResult(o[0]);
  checkGroupResult(o[1]);
}

core.int buildCounterGroupAssetsResponse = 0;
buildGroupAssetsResponse() {
  var o = new api.GroupAssetsResponse();
  buildCounterGroupAssetsResponse++;
  if (buildCounterGroupAssetsResponse < 3) {
    o.groupByResults = buildUnnamed625();
    o.nextPageToken = "foo";
    o.readTime = "foo";
    o.totalSize = 42;
  }
  buildCounterGroupAssetsResponse--;
  return o;
}

checkGroupAssetsResponse(api.GroupAssetsResponse o) {
  buildCounterGroupAssetsResponse++;
  if (buildCounterGroupAssetsResponse < 3) {
    checkUnnamed625(o.groupByResults);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.readTime, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterGroupAssetsResponse--;
}

core.int buildCounterGroupFindingsRequest = 0;
buildGroupFindingsRequest() {
  var o = new api.GroupFindingsRequest();
  buildCounterGroupFindingsRequest++;
  if (buildCounterGroupFindingsRequest < 3) {
    o.compareDuration = "foo";
    o.filter = "foo";
    o.groupBy = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
    o.readTime = "foo";
  }
  buildCounterGroupFindingsRequest--;
  return o;
}

checkGroupFindingsRequest(api.GroupFindingsRequest o) {
  buildCounterGroupFindingsRequest++;
  if (buildCounterGroupFindingsRequest < 3) {
    unittest.expect(o.compareDuration, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.groupBy, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.readTime, unittest.equals('foo'));
  }
  buildCounterGroupFindingsRequest--;
}

buildUnnamed626() {
  var o = new core.List<api.GroupResult>();
  o.add(buildGroupResult());
  o.add(buildGroupResult());
  return o;
}

checkUnnamed626(core.List<api.GroupResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupResult(o[0]);
  checkGroupResult(o[1]);
}

core.int buildCounterGroupFindingsResponse = 0;
buildGroupFindingsResponse() {
  var o = new api.GroupFindingsResponse();
  buildCounterGroupFindingsResponse++;
  if (buildCounterGroupFindingsResponse < 3) {
    o.groupByResults = buildUnnamed626();
    o.nextPageToken = "foo";
    o.readTime = "foo";
    o.totalSize = 42;
  }
  buildCounterGroupFindingsResponse--;
  return o;
}

checkGroupFindingsResponse(api.GroupFindingsResponse o) {
  buildCounterGroupFindingsResponse++;
  if (buildCounterGroupFindingsResponse < 3) {
    checkUnnamed626(o.groupByResults);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.readTime, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterGroupFindingsResponse--;
}

buildUnnamed627() {
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

checkUnnamed627(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGroupResult = 0;
buildGroupResult() {
  var o = new api.GroupResult();
  buildCounterGroupResult++;
  if (buildCounterGroupResult < 3) {
    o.count = "foo";
    o.properties = buildUnnamed627();
  }
  buildCounterGroupResult--;
  return o;
}

checkGroupResult(api.GroupResult o) {
  buildCounterGroupResult++;
  if (buildCounterGroupResult < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    checkUnnamed627(o.properties);
  }
  buildCounterGroupResult--;
}

core.int buildCounterIamPolicy = 0;
buildIamPolicy() {
  var o = new api.IamPolicy();
  buildCounterIamPolicy++;
  if (buildCounterIamPolicy < 3) {
    o.policyBlob = "foo";
  }
  buildCounterIamPolicy--;
  return o;
}

checkIamPolicy(api.IamPolicy o) {
  buildCounterIamPolicy++;
  if (buildCounterIamPolicy < 3) {
    unittest.expect(o.policyBlob, unittest.equals('foo'));
  }
  buildCounterIamPolicy--;
}

buildUnnamed628() {
  var o = new core.List<api.ListAssetsResult>();
  o.add(buildListAssetsResult());
  o.add(buildListAssetsResult());
  return o;
}

checkUnnamed628(core.List<api.ListAssetsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListAssetsResult(o[0]);
  checkListAssetsResult(o[1]);
}

core.int buildCounterListAssetsResponse = 0;
buildListAssetsResponse() {
  var o = new api.ListAssetsResponse();
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    o.listAssetsResults = buildUnnamed628();
    o.nextPageToken = "foo";
    o.readTime = "foo";
    o.totalSize = 42;
  }
  buildCounterListAssetsResponse--;
  return o;
}

checkListAssetsResponse(api.ListAssetsResponse o) {
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    checkUnnamed628(o.listAssetsResults);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.readTime, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListAssetsResponse--;
}

core.int buildCounterListAssetsResult = 0;
buildListAssetsResult() {
  var o = new api.ListAssetsResult();
  buildCounterListAssetsResult++;
  if (buildCounterListAssetsResult < 3) {
    o.asset = buildAsset();
    o.stateChange = "foo";
  }
  buildCounterListAssetsResult--;
  return o;
}

checkListAssetsResult(api.ListAssetsResult o) {
  buildCounterListAssetsResult++;
  if (buildCounterListAssetsResult < 3) {
    checkAsset(o.asset);
    unittest.expect(o.stateChange, unittest.equals('foo'));
  }
  buildCounterListAssetsResult--;
}

buildUnnamed629() {
  var o = new core.List<api.ListFindingsResult>();
  o.add(buildListFindingsResult());
  o.add(buildListFindingsResult());
  return o;
}

checkUnnamed629(core.List<api.ListFindingsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListFindingsResult(o[0]);
  checkListFindingsResult(o[1]);
}

core.int buildCounterListFindingsResponse = 0;
buildListFindingsResponse() {
  var o = new api.ListFindingsResponse();
  buildCounterListFindingsResponse++;
  if (buildCounterListFindingsResponse < 3) {
    o.listFindingsResults = buildUnnamed629();
    o.nextPageToken = "foo";
    o.readTime = "foo";
    o.totalSize = 42;
  }
  buildCounterListFindingsResponse--;
  return o;
}

checkListFindingsResponse(api.ListFindingsResponse o) {
  buildCounterListFindingsResponse++;
  if (buildCounterListFindingsResponse < 3) {
    checkUnnamed629(o.listFindingsResults);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.readTime, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListFindingsResponse--;
}

core.int buildCounterListFindingsResult = 0;
buildListFindingsResult() {
  var o = new api.ListFindingsResult();
  buildCounterListFindingsResult++;
  if (buildCounterListFindingsResult < 3) {
    o.finding = buildFinding();
    o.stateChange = "foo";
  }
  buildCounterListFindingsResult--;
  return o;
}

checkListFindingsResult(api.ListFindingsResult o) {
  buildCounterListFindingsResult++;
  if (buildCounterListFindingsResult < 3) {
    checkFinding(o.finding);
    unittest.expect(o.stateChange, unittest.equals('foo'));
  }
  buildCounterListFindingsResult--;
}

buildUnnamed630() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed630(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed630();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed630(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed631() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed631(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterListSourcesResponse = 0;
buildListSourcesResponse() {
  var o = new api.ListSourcesResponse();
  buildCounterListSourcesResponse++;
  if (buildCounterListSourcesResponse < 3) {
    o.nextPageToken = "foo";
    o.sources = buildUnnamed631();
  }
  buildCounterListSourcesResponse--;
  return o;
}

checkListSourcesResponse(api.ListSourcesResponse o) {
  buildCounterListSourcesResponse++;
  if (buildCounterListSourcesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed631(o.sources);
  }
  buildCounterListSourcesResponse--;
}

buildUnnamed632() {
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

checkUnnamed632(core.Map<core.String, core.Object> o) {
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

buildUnnamed633() {
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

checkUnnamed633(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed632();
    o.name = "foo";
    o.response = buildUnnamed633();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed632(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed633(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOrganizationSettings = 0;
buildOrganizationSettings() {
  var o = new api.OrganizationSettings();
  buildCounterOrganizationSettings++;
  if (buildCounterOrganizationSettings < 3) {
    o.assetDiscoveryConfig = buildAssetDiscoveryConfig();
    o.enableAssetDiscovery = true;
    o.name = "foo";
  }
  buildCounterOrganizationSettings--;
  return o;
}

checkOrganizationSettings(api.OrganizationSettings o) {
  buildCounterOrganizationSettings++;
  if (buildCounterOrganizationSettings < 3) {
    checkAssetDiscoveryConfig(o.assetDiscoveryConfig);
    unittest.expect(o.enableAssetDiscovery, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterOrganizationSettings--;
}

buildUnnamed634() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed634(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed635() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed635(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed634();
    o.bindings = buildUnnamed635();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed634(o.auditConfigs);
    checkUnnamed635(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterRunAssetDiscoveryRequest = 0;
buildRunAssetDiscoveryRequest() {
  var o = new api.RunAssetDiscoveryRequest();
  buildCounterRunAssetDiscoveryRequest++;
  if (buildCounterRunAssetDiscoveryRequest < 3) {}
  buildCounterRunAssetDiscoveryRequest--;
  return o;
}

checkRunAssetDiscoveryRequest(api.RunAssetDiscoveryRequest o) {
  buildCounterRunAssetDiscoveryRequest++;
  if (buildCounterRunAssetDiscoveryRequest < 3) {}
  buildCounterRunAssetDiscoveryRequest--;
}

buildUnnamed636() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed636(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSecurityCenterProperties = 0;
buildSecurityCenterProperties() {
  var o = new api.SecurityCenterProperties();
  buildCounterSecurityCenterProperties++;
  if (buildCounterSecurityCenterProperties < 3) {
    o.resourceName = "foo";
    o.resourceOwners = buildUnnamed636();
    o.resourceParent = "foo";
    o.resourceProject = "foo";
    o.resourceType = "foo";
  }
  buildCounterSecurityCenterProperties--;
  return o;
}

checkSecurityCenterProperties(api.SecurityCenterProperties o) {
  buildCounterSecurityCenterProperties++;
  if (buildCounterSecurityCenterProperties < 3) {
    unittest.expect(o.resourceName, unittest.equals('foo'));
    checkUnnamed636(o.resourceOwners);
    unittest.expect(o.resourceParent, unittest.equals('foo'));
    unittest.expect(o.resourceProject, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
  }
  buildCounterSecurityCenterProperties--;
}

buildUnnamed637() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed637(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSecurityMarks = 0;
buildSecurityMarks() {
  var o = new api.SecurityMarks();
  buildCounterSecurityMarks++;
  if (buildCounterSecurityMarks < 3) {
    o.marks = buildUnnamed637();
    o.name = "foo";
  }
  buildCounterSecurityMarks--;
  return o;
}

checkSecurityMarks(api.SecurityMarks o) {
  buildCounterSecurityMarks++;
  if (buildCounterSecurityMarks < 3) {
    checkUnnamed637(o.marks);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterSecurityMarks--;
}

core.int buildCounterSetFindingStateRequest = 0;
buildSetFindingStateRequest() {
  var o = new api.SetFindingStateRequest();
  buildCounterSetFindingStateRequest++;
  if (buildCounterSetFindingStateRequest < 3) {
    o.startTime = "foo";
    o.state = "foo";
  }
  buildCounterSetFindingStateRequest--;
  return o;
}

checkSetFindingStateRequest(api.SetFindingStateRequest o) {
  buildCounterSetFindingStateRequest++;
  if (buildCounterSetFindingStateRequest < 3) {
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterSetFindingStateRequest--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSource = 0;
buildSource() {
  var o = new api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterSource--;
  return o;
}

checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterSource--;
}

buildUnnamed638() {
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

checkUnnamed638(core.Map<core.String, core.Object> o) {
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

buildUnnamed639() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed638());
  o.add(buildUnnamed638());
  return o;
}

checkUnnamed639(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed638(o[0]);
  checkUnnamed638(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed639();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed639(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed640() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed640(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed640();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed640(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed641() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed641(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed641();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed641(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

main() {
  unittest.group("obj-schema-Asset", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsset();
      var od = new api.Asset.fromJson(o.toJson());
      checkAsset(od);
    });
  });

  unittest.group("obj-schema-AssetDiscoveryConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAssetDiscoveryConfig();
      var od = new api.AssetDiscoveryConfig.fromJson(o.toJson());
      checkAssetDiscoveryConfig(od);
    });
  });

  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-Finding", () {
    unittest.test("to-json--from-json", () {
      var o = buildFinding();
      var od = new api.Finding.fromJson(o.toJson());
      checkFinding(od);
    });
  });

  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse();
      var od =
          new api.GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse.fromJson(
              o.toJson());
      checkGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse();
      var od = new api
              .GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse.fromJson(
          o.toJson());
      checkGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse(od);
    });
  });

  unittest.group("obj-schema-GroupAssetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupAssetsRequest();
      var od = new api.GroupAssetsRequest.fromJson(o.toJson());
      checkGroupAssetsRequest(od);
    });
  });

  unittest.group("obj-schema-GroupAssetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupAssetsResponse();
      var od = new api.GroupAssetsResponse.fromJson(o.toJson());
      checkGroupAssetsResponse(od);
    });
  });

  unittest.group("obj-schema-GroupFindingsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupFindingsRequest();
      var od = new api.GroupFindingsRequest.fromJson(o.toJson());
      checkGroupFindingsRequest(od);
    });
  });

  unittest.group("obj-schema-GroupFindingsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupFindingsResponse();
      var od = new api.GroupFindingsResponse.fromJson(o.toJson());
      checkGroupFindingsResponse(od);
    });
  });

  unittest.group("obj-schema-GroupResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupResult();
      var od = new api.GroupResult.fromJson(o.toJson());
      checkGroupResult(od);
    });
  });

  unittest.group("obj-schema-IamPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildIamPolicy();
      var od = new api.IamPolicy.fromJson(o.toJson());
      checkIamPolicy(od);
    });
  });

  unittest.group("obj-schema-ListAssetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAssetsResponse();
      var od = new api.ListAssetsResponse.fromJson(o.toJson());
      checkListAssetsResponse(od);
    });
  });

  unittest.group("obj-schema-ListAssetsResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAssetsResult();
      var od = new api.ListAssetsResult.fromJson(o.toJson());
      checkListAssetsResult(od);
    });
  });

  unittest.group("obj-schema-ListFindingsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFindingsResponse();
      var od = new api.ListFindingsResponse.fromJson(o.toJson());
      checkListFindingsResponse(od);
    });
  });

  unittest.group("obj-schema-ListFindingsResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFindingsResult();
      var od = new api.ListFindingsResult.fromJson(o.toJson());
      checkListFindingsResult(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListSourcesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSourcesResponse();
      var od = new api.ListSourcesResponse.fromJson(o.toJson());
      checkListSourcesResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OrganizationSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrganizationSettings();
      var od = new api.OrganizationSettings.fromJson(o.toJson());
      checkOrganizationSettings(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-RunAssetDiscoveryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunAssetDiscoveryRequest();
      var od = new api.RunAssetDiscoveryRequest.fromJson(o.toJson());
      checkRunAssetDiscoveryRequest(od);
    });
  });

  unittest.group("obj-schema-SecurityCenterProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecurityCenterProperties();
      var od = new api.SecurityCenterProperties.fromJson(o.toJson());
      checkSecurityCenterProperties(od);
    });
  });

  unittest.group("obj-schema-SecurityMarks", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecurityMarks();
      var od = new api.SecurityMarks.fromJson(o.toJson());
      checkSecurityMarks(od);
    });
  });

  unittest.group("obj-schema-SetFindingStateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetFindingStateRequest();
      var od = new api.SetFindingStateRequest.fromJson(o.toJson());
      checkSetFindingStateRequest(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-Source", () {
    unittest.test("to-json--from-json", () {
      var o = buildSource();
      var od = new api.Source.fromJson(o.toJson());
      checkSource(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("resource-OrganizationsResourceApi", () {
    unittest.test("method--getOrganizationSettings", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.SecuritycenterApi(mock).organizations;
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
        var resp = convert.json.encode(buildOrganizationSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getOrganizationSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrganizationSettings(response);
      })));
    });

    unittest.test("method--updateOrganizationSettings", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.SecuritycenterApi(mock).organizations;
      var arg_request = buildOrganizationSettings();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrganizationSettings.fromJson(json);
        checkOrganizationSettings(obj);

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
        var resp = convert.json.encode(buildOrganizationSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateOrganizationSettings(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrganizationSettings(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsAssetsResourceApi", () {
    unittest.test("method--group", () {
      var mock = new HttpServerMock();
      api.OrganizationsAssetsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.assets;
      var arg_request = buildGroupAssetsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GroupAssetsRequest.fromJson(json);
        checkGroupAssetsRequest(obj);

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
        var resp = convert.json.encode(buildGroupAssetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .group(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroupAssetsResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsAssetsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.assets;
      var arg_parent = "foo";
      var arg_readTime = "foo";
      var arg_orderBy = "foo";
      var arg_compareDuration = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_fieldMask = "foo";
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
            queryMap["readTime"].first, unittest.equals(arg_readTime));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["compareDuration"].first,
            unittest.equals(arg_compareDuration));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["fieldMask"].first, unittest.equals(arg_fieldMask));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAssetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              readTime: arg_readTime,
              orderBy: arg_orderBy,
              compareDuration: arg_compareDuration,
              filter: arg_filter,
              pageToken: arg_pageToken,
              fieldMask: arg_fieldMask,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAssetsResponse(response);
      })));
    });

    unittest.test("method--runDiscovery", () {
      var mock = new HttpServerMock();
      api.OrganizationsAssetsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.assets;
      var arg_request = buildRunAssetDiscoveryRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RunAssetDiscoveryRequest.fromJson(json);
        checkRunAssetDiscoveryRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .runDiscovery(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--updateSecurityMarks", () {
      var mock = new HttpServerMock();
      api.OrganizationsAssetsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.assets;
      var arg_request = buildSecurityMarks();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_startTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SecurityMarks.fromJson(json);
        checkSecurityMarks(obj);

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
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSecurityMarks());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSecurityMarks(arg_request, arg_name,
              updateMask: arg_updateMask,
              startTime: arg_startTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSecurityMarks(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OrganizationsOperationsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.operations;
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
      api.OrganizationsOperationsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.operations;
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
      api.OrganizationsOperationsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.operations;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsOperationsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.operations;
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
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsSourcesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources;
      var arg_request = buildSource();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Source.fromJson(json);
        checkSource(obj);

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
        var resp = convert.json.encode(buildSource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSource(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources;
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
        var resp = convert.json.encode(buildSource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSource(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources;
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
        var resp = convert.json.encode(buildListSourcesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSourcesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources;
      var arg_request = buildSource();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Source.fromJson(json);
        checkSource(obj);

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
        var resp = convert.json.encode(buildSource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSource(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsSourcesFindingsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesFindingsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources.findings;
      var arg_request = buildFinding();
      var arg_parent = "foo";
      var arg_findingId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Finding.fromJson(json);
        checkFinding(obj);

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
            queryMap["findingId"].first, unittest.equals(arg_findingId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFinding());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              findingId: arg_findingId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFinding(response);
      })));
    });

    unittest.test("method--group", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesFindingsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources.findings;
      var arg_request = buildGroupFindingsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GroupFindingsRequest.fromJson(json);
        checkGroupFindingsRequest(obj);

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
        var resp = convert.json.encode(buildGroupFindingsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .group(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroupFindingsResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesFindingsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources.findings;
      var arg_parent = "foo";
      var arg_readTime = "foo";
      var arg_orderBy = "foo";
      var arg_compareDuration = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_fieldMask = "foo";
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
            queryMap["readTime"].first, unittest.equals(arg_readTime));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["compareDuration"].first,
            unittest.equals(arg_compareDuration));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["fieldMask"].first, unittest.equals(arg_fieldMask));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListFindingsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              readTime: arg_readTime,
              orderBy: arg_orderBy,
              compareDuration: arg_compareDuration,
              filter: arg_filter,
              pageToken: arg_pageToken,
              fieldMask: arg_fieldMask,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFindingsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesFindingsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources.findings;
      var arg_request = buildFinding();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Finding.fromJson(json);
        checkFinding(obj);

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
        var resp = convert.json.encode(buildFinding());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFinding(response);
      })));
    });

    unittest.test("method--setState", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesFindingsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources.findings;
      var arg_request = buildSetFindingStateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetFindingStateRequest.fromJson(json);
        checkSetFindingStateRequest(obj);

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
        var resp = convert.json.encode(buildFinding());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setState(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFinding(response);
      })));
    });

    unittest.test("method--updateSecurityMarks", () {
      var mock = new HttpServerMock();
      api.OrganizationsSourcesFindingsResourceApi res =
          new api.SecuritycenterApi(mock).organizations.sources.findings;
      var arg_request = buildSecurityMarks();
      var arg_name = "foo";
      var arg_startTime = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SecurityMarks.fromJson(json);
        checkSecurityMarks(obj);

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
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSecurityMarks());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSecurityMarks(arg_request, arg_name,
              startTime: arg_startTime,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSecurityMarks(response);
      })));
    });
  });
}
