// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.apigee.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/apigee/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(http.BaseRequest, core.Object)
      _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.Map<core.String, core.Object> buildUnnamed4946() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed4946(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed4947() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed4946());
  o.add(buildUnnamed4946());
  return o;
}

void checkUnnamed4947(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4946(o[0]);
  checkUnnamed4946(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
api.GoogleApiHttpBody buildGoogleApiHttpBody() {
  var o = api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed4947();
  }
  buildCounterGoogleApiHttpBody--;
  return o;
}

void checkGoogleApiHttpBody(api.GoogleApiHttpBody o) {
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    checkUnnamed4947(o.extensions);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int buildCounterGoogleCloudApigeeV1Access = 0;
api.GoogleCloudApigeeV1Access buildGoogleCloudApigeeV1Access() {
  var o = api.GoogleCloudApigeeV1Access();
  buildCounterGoogleCloudApigeeV1Access++;
  if (buildCounterGoogleCloudApigeeV1Access < 3) {
    o.Get = buildGoogleCloudApigeeV1AccessGet();
    o.Remove = buildGoogleCloudApigeeV1AccessRemove();
    o.Set = buildGoogleCloudApigeeV1AccessSet();
  }
  buildCounterGoogleCloudApigeeV1Access--;
  return o;
}

void checkGoogleCloudApigeeV1Access(api.GoogleCloudApigeeV1Access o) {
  buildCounterGoogleCloudApigeeV1Access++;
  if (buildCounterGoogleCloudApigeeV1Access < 3) {
    checkGoogleCloudApigeeV1AccessGet(
        o.Get as api.GoogleCloudApigeeV1AccessGet);
    checkGoogleCloudApigeeV1AccessRemove(
        o.Remove as api.GoogleCloudApigeeV1AccessRemove);
    checkGoogleCloudApigeeV1AccessSet(
        o.Set as api.GoogleCloudApigeeV1AccessSet);
  }
  buildCounterGoogleCloudApigeeV1Access--;
}

core.int buildCounterGoogleCloudApigeeV1AccessGet = 0;
api.GoogleCloudApigeeV1AccessGet buildGoogleCloudApigeeV1AccessGet() {
  var o = api.GoogleCloudApigeeV1AccessGet();
  buildCounterGoogleCloudApigeeV1AccessGet++;
  if (buildCounterGoogleCloudApigeeV1AccessGet < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudApigeeV1AccessGet--;
  return o;
}

void checkGoogleCloudApigeeV1AccessGet(api.GoogleCloudApigeeV1AccessGet o) {
  buildCounterGoogleCloudApigeeV1AccessGet++;
  if (buildCounterGoogleCloudApigeeV1AccessGet < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AccessGet--;
}

core.int buildCounterGoogleCloudApigeeV1AccessRemove = 0;
api.GoogleCloudApigeeV1AccessRemove buildGoogleCloudApigeeV1AccessRemove() {
  var o = api.GoogleCloudApigeeV1AccessRemove();
  buildCounterGoogleCloudApigeeV1AccessRemove++;
  if (buildCounterGoogleCloudApigeeV1AccessRemove < 3) {
    o.name = 'foo';
    o.success = true;
  }
  buildCounterGoogleCloudApigeeV1AccessRemove--;
  return o;
}

void checkGoogleCloudApigeeV1AccessRemove(
    api.GoogleCloudApigeeV1AccessRemove o) {
  buildCounterGoogleCloudApigeeV1AccessRemove++;
  if (buildCounterGoogleCloudApigeeV1AccessRemove < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.success, unittest.isTrue);
  }
  buildCounterGoogleCloudApigeeV1AccessRemove--;
}

core.int buildCounterGoogleCloudApigeeV1AccessSet = 0;
api.GoogleCloudApigeeV1AccessSet buildGoogleCloudApigeeV1AccessSet() {
  var o = api.GoogleCloudApigeeV1AccessSet();
  buildCounterGoogleCloudApigeeV1AccessSet++;
  if (buildCounterGoogleCloudApigeeV1AccessSet < 3) {
    o.name = 'foo';
    o.success = true;
    o.value = 'foo';
  }
  buildCounterGoogleCloudApigeeV1AccessSet--;
  return o;
}

void checkGoogleCloudApigeeV1AccessSet(api.GoogleCloudApigeeV1AccessSet o) {
  buildCounterGoogleCloudApigeeV1AccessSet++;
  if (buildCounterGoogleCloudApigeeV1AccessSet < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.success, unittest.isTrue);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AccessSet--;
}

core.int buildCounterGoogleCloudApigeeV1Alias = 0;
api.GoogleCloudApigeeV1Alias buildGoogleCloudApigeeV1Alias() {
  var o = api.GoogleCloudApigeeV1Alias();
  buildCounterGoogleCloudApigeeV1Alias++;
  if (buildCounterGoogleCloudApigeeV1Alias < 3) {
    o.alias = 'foo';
    o.certsInfo = buildGoogleCloudApigeeV1Certificate();
    o.type = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Alias--;
  return o;
}

void checkGoogleCloudApigeeV1Alias(api.GoogleCloudApigeeV1Alias o) {
  buildCounterGoogleCloudApigeeV1Alias++;
  if (buildCounterGoogleCloudApigeeV1Alias < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    checkGoogleCloudApigeeV1Certificate(
        o.certsInfo as api.GoogleCloudApigeeV1Certificate);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Alias--;
}

core.int buildCounterGoogleCloudApigeeV1AliasRevisionConfig = 0;
api.GoogleCloudApigeeV1AliasRevisionConfig
    buildGoogleCloudApigeeV1AliasRevisionConfig() {
  var o = api.GoogleCloudApigeeV1AliasRevisionConfig();
  buildCounterGoogleCloudApigeeV1AliasRevisionConfig++;
  if (buildCounterGoogleCloudApigeeV1AliasRevisionConfig < 3) {
    o.location = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudApigeeV1AliasRevisionConfig--;
  return o;
}

void checkGoogleCloudApigeeV1AliasRevisionConfig(
    api.GoogleCloudApigeeV1AliasRevisionConfig o) {
  buildCounterGoogleCloudApigeeV1AliasRevisionConfig++;
  if (buildCounterGoogleCloudApigeeV1AliasRevisionConfig < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AliasRevisionConfig--;
}

core.int buildCounterGoogleCloudApigeeV1ApiCategory = 0;
api.GoogleCloudApigeeV1ApiCategory buildGoogleCloudApigeeV1ApiCategory() {
  var o = api.GoogleCloudApigeeV1ApiCategory();
  buildCounterGoogleCloudApigeeV1ApiCategory++;
  if (buildCounterGoogleCloudApigeeV1ApiCategory < 3) {
    o.data = buildGoogleCloudApigeeV1ApiCategoryData();
    o.errorCode = 'foo';
    o.message = 'foo';
    o.requestId = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ApiCategory--;
  return o;
}

void checkGoogleCloudApigeeV1ApiCategory(api.GoogleCloudApigeeV1ApiCategory o) {
  buildCounterGoogleCloudApigeeV1ApiCategory++;
  if (buildCounterGoogleCloudApigeeV1ApiCategory < 3) {
    checkGoogleCloudApigeeV1ApiCategoryData(
        o.data as api.GoogleCloudApigeeV1ApiCategoryData);
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ApiCategory--;
}

core.int buildCounterGoogleCloudApigeeV1ApiCategoryData = 0;
api.GoogleCloudApigeeV1ApiCategoryData
    buildGoogleCloudApigeeV1ApiCategoryData() {
  var o = api.GoogleCloudApigeeV1ApiCategoryData();
  buildCounterGoogleCloudApigeeV1ApiCategoryData++;
  if (buildCounterGoogleCloudApigeeV1ApiCategoryData < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.siteId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ApiCategoryData--;
  return o;
}

void checkGoogleCloudApigeeV1ApiCategoryData(
    api.GoogleCloudApigeeV1ApiCategoryData o) {
  buildCounterGoogleCloudApigeeV1ApiCategoryData++;
  if (buildCounterGoogleCloudApigeeV1ApiCategoryData < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.siteId, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ApiCategoryData--;
}

core.List<core.String> buildUnnamed4948() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4948(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudApigeeV1Attribute> buildUnnamed4949() {
  var o = <api.GoogleCloudApigeeV1Attribute>[];
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

void checkUnnamed4949(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0] as api.GoogleCloudApigeeV1Attribute);
  checkGoogleCloudApigeeV1Attribute(o[1] as api.GoogleCloudApigeeV1Attribute);
}

core.List<core.String> buildUnnamed4950() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4950(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4951() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4951(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4952() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4952(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1ApiProduct = 0;
api.GoogleCloudApigeeV1ApiProduct buildGoogleCloudApigeeV1ApiProduct() {
  var o = api.GoogleCloudApigeeV1ApiProduct();
  buildCounterGoogleCloudApigeeV1ApiProduct++;
  if (buildCounterGoogleCloudApigeeV1ApiProduct < 3) {
    o.apiResources = buildUnnamed4948();
    o.approvalType = 'foo';
    o.attributes = buildUnnamed4949();
    o.createdAt = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.environments = buildUnnamed4950();
    o.lastModifiedAt = 'foo';
    o.name = 'foo';
    o.operationGroup = buildGoogleCloudApigeeV1OperationGroup();
    o.proxies = buildUnnamed4951();
    o.quota = 'foo';
    o.quotaInterval = 'foo';
    o.quotaTimeUnit = 'foo';
    o.scopes = buildUnnamed4952();
  }
  buildCounterGoogleCloudApigeeV1ApiProduct--;
  return o;
}

void checkGoogleCloudApigeeV1ApiProduct(api.GoogleCloudApigeeV1ApiProduct o) {
  buildCounterGoogleCloudApigeeV1ApiProduct++;
  if (buildCounterGoogleCloudApigeeV1ApiProduct < 3) {
    checkUnnamed4948(o.apiResources);
    unittest.expect(o.approvalType, unittest.equals('foo'));
    checkUnnamed4949(o.attributes);
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4950(o.environments);
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudApigeeV1OperationGroup(
        o.operationGroup as api.GoogleCloudApigeeV1OperationGroup);
    checkUnnamed4951(o.proxies);
    unittest.expect(o.quota, unittest.equals('foo'));
    unittest.expect(o.quotaInterval, unittest.equals('foo'));
    unittest.expect(o.quotaTimeUnit, unittest.equals('foo'));
    checkUnnamed4952(o.scopes);
  }
  buildCounterGoogleCloudApigeeV1ApiProduct--;
}

core.int buildCounterGoogleCloudApigeeV1ApiProductRef = 0;
api.GoogleCloudApigeeV1ApiProductRef buildGoogleCloudApigeeV1ApiProductRef() {
  var o = api.GoogleCloudApigeeV1ApiProductRef();
  buildCounterGoogleCloudApigeeV1ApiProductRef++;
  if (buildCounterGoogleCloudApigeeV1ApiProductRef < 3) {
    o.apiproduct = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ApiProductRef--;
  return o;
}

void checkGoogleCloudApigeeV1ApiProductRef(
    api.GoogleCloudApigeeV1ApiProductRef o) {
  buildCounterGoogleCloudApigeeV1ApiProductRef++;
  if (buildCounterGoogleCloudApigeeV1ApiProductRef < 3) {
    unittest.expect(o.apiproduct, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ApiProductRef--;
}

core.List<core.String> buildUnnamed4953() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4953(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1ApiProxy = 0;
api.GoogleCloudApigeeV1ApiProxy buildGoogleCloudApigeeV1ApiProxy() {
  var o = api.GoogleCloudApigeeV1ApiProxy();
  buildCounterGoogleCloudApigeeV1ApiProxy++;
  if (buildCounterGoogleCloudApigeeV1ApiProxy < 3) {
    o.latestRevisionId = 'foo';
    o.metaData = buildGoogleCloudApigeeV1EntityMetadata();
    o.name = 'foo';
    o.revision = buildUnnamed4953();
  }
  buildCounterGoogleCloudApigeeV1ApiProxy--;
  return o;
}

void checkGoogleCloudApigeeV1ApiProxy(api.GoogleCloudApigeeV1ApiProxy o) {
  buildCounterGoogleCloudApigeeV1ApiProxy++;
  if (buildCounterGoogleCloudApigeeV1ApiProxy < 3) {
    unittest.expect(o.latestRevisionId, unittest.equals('foo'));
    checkGoogleCloudApigeeV1EntityMetadata(
        o.metaData as api.GoogleCloudApigeeV1EntityMetadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4953(o.revision);
  }
  buildCounterGoogleCloudApigeeV1ApiProxy--;
}

core.List<core.String> buildUnnamed4954() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4954(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed4955() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4955(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4956() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4956(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4957() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4957(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4958() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4958(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4959() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4959(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4960() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4960(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4961() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4961(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4962() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4962(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4963() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4963(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4964() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4964(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1ApiProxyRevision = 0;
api.GoogleCloudApigeeV1ApiProxyRevision
    buildGoogleCloudApigeeV1ApiProxyRevision() {
  var o = api.GoogleCloudApigeeV1ApiProxyRevision();
  buildCounterGoogleCloudApigeeV1ApiProxyRevision++;
  if (buildCounterGoogleCloudApigeeV1ApiProxyRevision < 3) {
    o.basepaths = buildUnnamed4954();
    o.configurationVersion = buildGoogleCloudApigeeV1ConfigVersion();
    o.contextInfo = 'foo';
    o.createdAt = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.entityMetaDataAsProperties = buildUnnamed4955();
    o.lastModifiedAt = 'foo';
    o.name = 'foo';
    o.policies = buildUnnamed4956();
    o.proxies = buildUnnamed4957();
    o.proxyEndpoints = buildUnnamed4958();
    o.resourceFiles = buildGoogleCloudApigeeV1ResourceFiles();
    o.resources = buildUnnamed4959();
    o.revision = 'foo';
    o.sharedFlows = buildUnnamed4960();
    o.spec = 'foo';
    o.targetEndpoints = buildUnnamed4961();
    o.targetServers = buildUnnamed4962();
    o.targets = buildUnnamed4963();
    o.teams = buildUnnamed4964();
    o.type = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ApiProxyRevision--;
  return o;
}

void checkGoogleCloudApigeeV1ApiProxyRevision(
    api.GoogleCloudApigeeV1ApiProxyRevision o) {
  buildCounterGoogleCloudApigeeV1ApiProxyRevision++;
  if (buildCounterGoogleCloudApigeeV1ApiProxyRevision < 3) {
    checkUnnamed4954(o.basepaths);
    checkGoogleCloudApigeeV1ConfigVersion(
        o.configurationVersion as api.GoogleCloudApigeeV1ConfigVersion);
    unittest.expect(o.contextInfo, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4955(o.entityMetaDataAsProperties);
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4956(o.policies);
    checkUnnamed4957(o.proxies);
    checkUnnamed4958(o.proxyEndpoints);
    checkGoogleCloudApigeeV1ResourceFiles(
        o.resourceFiles as api.GoogleCloudApigeeV1ResourceFiles);
    checkUnnamed4959(o.resources);
    unittest.expect(o.revision, unittest.equals('foo'));
    checkUnnamed4960(o.sharedFlows);
    unittest.expect(o.spec, unittest.equals('foo'));
    checkUnnamed4961(o.targetEndpoints);
    checkUnnamed4962(o.targetServers);
    checkUnnamed4963(o.targets);
    checkUnnamed4964(o.teams);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ApiProxyRevision--;
}

core.int buildCounterGoogleCloudApigeeV1ApiResponseWrapper = 0;
api.GoogleCloudApigeeV1ApiResponseWrapper
    buildGoogleCloudApigeeV1ApiResponseWrapper() {
  var o = api.GoogleCloudApigeeV1ApiResponseWrapper();
  buildCounterGoogleCloudApigeeV1ApiResponseWrapper++;
  if (buildCounterGoogleCloudApigeeV1ApiResponseWrapper < 3) {
    o.errorCode = 'foo';
    o.message = 'foo';
    o.requestId = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ApiResponseWrapper--;
  return o;
}

void checkGoogleCloudApigeeV1ApiResponseWrapper(
    api.GoogleCloudApigeeV1ApiResponseWrapper o) {
  buildCounterGoogleCloudApigeeV1ApiResponseWrapper++;
  if (buildCounterGoogleCloudApigeeV1ApiResponseWrapper < 3) {
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ApiResponseWrapper--;
}

core.List<api.GoogleCloudApigeeV1ApiProductRef> buildUnnamed4965() {
  var o = <api.GoogleCloudApigeeV1ApiProductRef>[];
  o.add(buildGoogleCloudApigeeV1ApiProductRef());
  o.add(buildGoogleCloudApigeeV1ApiProductRef());
  return o;
}

void checkUnnamed4965(core.List<api.GoogleCloudApigeeV1ApiProductRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ApiProductRef(
      o[0] as api.GoogleCloudApigeeV1ApiProductRef);
  checkGoogleCloudApigeeV1ApiProductRef(
      o[1] as api.GoogleCloudApigeeV1ApiProductRef);
}

core.List<api.GoogleCloudApigeeV1Attribute> buildUnnamed4966() {
  var o = <api.GoogleCloudApigeeV1Attribute>[];
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

void checkUnnamed4966(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0] as api.GoogleCloudApigeeV1Attribute);
  checkGoogleCloudApigeeV1Attribute(o[1] as api.GoogleCloudApigeeV1Attribute);
}

core.List<api.GoogleCloudApigeeV1Credential> buildUnnamed4967() {
  var o = <api.GoogleCloudApigeeV1Credential>[];
  o.add(buildGoogleCloudApigeeV1Credential());
  o.add(buildGoogleCloudApigeeV1Credential());
  return o;
}

void checkUnnamed4967(core.List<api.GoogleCloudApigeeV1Credential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Credential(o[0] as api.GoogleCloudApigeeV1Credential);
  checkGoogleCloudApigeeV1Credential(o[1] as api.GoogleCloudApigeeV1Credential);
}

core.List<core.String> buildUnnamed4968() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4968(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1App = 0;
api.GoogleCloudApigeeV1App buildGoogleCloudApigeeV1App() {
  var o = api.GoogleCloudApigeeV1App();
  buildCounterGoogleCloudApigeeV1App++;
  if (buildCounterGoogleCloudApigeeV1App < 3) {
    o.apiProducts = buildUnnamed4965();
    o.appId = 'foo';
    o.attributes = buildUnnamed4966();
    o.callbackUrl = 'foo';
    o.companyName = 'foo';
    o.createdAt = 'foo';
    o.credentials = buildUnnamed4967();
    o.developerId = 'foo';
    o.keyExpiresIn = 'foo';
    o.lastModifiedAt = 'foo';
    o.name = 'foo';
    o.scopes = buildUnnamed4968();
    o.status = 'foo';
  }
  buildCounterGoogleCloudApigeeV1App--;
  return o;
}

void checkGoogleCloudApigeeV1App(api.GoogleCloudApigeeV1App o) {
  buildCounterGoogleCloudApigeeV1App++;
  if (buildCounterGoogleCloudApigeeV1App < 3) {
    checkUnnamed4965(o.apiProducts);
    unittest.expect(o.appId, unittest.equals('foo'));
    checkUnnamed4966(o.attributes);
    unittest.expect(o.callbackUrl, unittest.equals('foo'));
    unittest.expect(o.companyName, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    checkUnnamed4967(o.credentials);
    unittest.expect(o.developerId, unittest.equals('foo'));
    unittest.expect(o.keyExpiresIn, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4968(o.scopes);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1App--;
}

core.int buildCounterGoogleCloudApigeeV1AsyncQuery = 0;
api.GoogleCloudApigeeV1AsyncQuery buildGoogleCloudApigeeV1AsyncQuery() {
  var o = api.GoogleCloudApigeeV1AsyncQuery();
  buildCounterGoogleCloudApigeeV1AsyncQuery++;
  if (buildCounterGoogleCloudApigeeV1AsyncQuery < 3) {
    o.created = 'foo';
    o.error = 'foo';
    o.executionTime = 'foo';
    o.name = 'foo';
    o.queryParams = buildGoogleCloudApigeeV1QueryMetadata();
    o.reportDefinitionId = 'foo';
    o.result = buildGoogleCloudApigeeV1AsyncQueryResult();
    o.resultFileSize = 'foo';
    o.resultRows = 'foo';
    o.self = 'foo';
    o.state = 'foo';
    o.updated = 'foo';
  }
  buildCounterGoogleCloudApigeeV1AsyncQuery--;
  return o;
}

void checkGoogleCloudApigeeV1AsyncQuery(api.GoogleCloudApigeeV1AsyncQuery o) {
  buildCounterGoogleCloudApigeeV1AsyncQuery++;
  if (buildCounterGoogleCloudApigeeV1AsyncQuery < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.error, unittest.equals('foo'));
    unittest.expect(o.executionTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudApigeeV1QueryMetadata(
        o.queryParams as api.GoogleCloudApigeeV1QueryMetadata);
    unittest.expect(o.reportDefinitionId, unittest.equals('foo'));
    checkGoogleCloudApigeeV1AsyncQueryResult(
        o.result as api.GoogleCloudApigeeV1AsyncQueryResult);
    unittest.expect(o.resultFileSize, unittest.equals('foo'));
    unittest.expect(o.resultRows, unittest.equals('foo'));
    unittest.expect(o.self, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updated, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AsyncQuery--;
}

core.int buildCounterGoogleCloudApigeeV1AsyncQueryResult = 0;
api.GoogleCloudApigeeV1AsyncQueryResult
    buildGoogleCloudApigeeV1AsyncQueryResult() {
  var o = api.GoogleCloudApigeeV1AsyncQueryResult();
  buildCounterGoogleCloudApigeeV1AsyncQueryResult++;
  if (buildCounterGoogleCloudApigeeV1AsyncQueryResult < 3) {
    o.expires = 'foo';
    o.self = 'foo';
  }
  buildCounterGoogleCloudApigeeV1AsyncQueryResult--;
  return o;
}

void checkGoogleCloudApigeeV1AsyncQueryResult(
    api.GoogleCloudApigeeV1AsyncQueryResult o) {
  buildCounterGoogleCloudApigeeV1AsyncQueryResult++;
  if (buildCounterGoogleCloudApigeeV1AsyncQueryResult < 3) {
    unittest.expect(o.expires, unittest.equals('foo'));
    unittest.expect(o.self, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AsyncQueryResult--;
}

core.int buildCounterGoogleCloudApigeeV1Attribute = 0;
api.GoogleCloudApigeeV1Attribute buildGoogleCloudApigeeV1Attribute() {
  var o = api.GoogleCloudApigeeV1Attribute();
  buildCounterGoogleCloudApigeeV1Attribute++;
  if (buildCounterGoogleCloudApigeeV1Attribute < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Attribute--;
  return o;
}

void checkGoogleCloudApigeeV1Attribute(api.GoogleCloudApigeeV1Attribute o) {
  buildCounterGoogleCloudApigeeV1Attribute++;
  if (buildCounterGoogleCloudApigeeV1Attribute < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Attribute--;
}

core.List<api.GoogleCloudApigeeV1Attribute> buildUnnamed4969() {
  var o = <api.GoogleCloudApigeeV1Attribute>[];
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

void checkUnnamed4969(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0] as api.GoogleCloudApigeeV1Attribute);
  checkGoogleCloudApigeeV1Attribute(o[1] as api.GoogleCloudApigeeV1Attribute);
}

core.int buildCounterGoogleCloudApigeeV1Attributes = 0;
api.GoogleCloudApigeeV1Attributes buildGoogleCloudApigeeV1Attributes() {
  var o = api.GoogleCloudApigeeV1Attributes();
  buildCounterGoogleCloudApigeeV1Attributes++;
  if (buildCounterGoogleCloudApigeeV1Attributes < 3) {
    o.attribute = buildUnnamed4969();
  }
  buildCounterGoogleCloudApigeeV1Attributes--;
  return o;
}

void checkGoogleCloudApigeeV1Attributes(api.GoogleCloudApigeeV1Attributes o) {
  buildCounterGoogleCloudApigeeV1Attributes++;
  if (buildCounterGoogleCloudApigeeV1Attributes < 3) {
    checkUnnamed4969(o.attribute);
  }
  buildCounterGoogleCloudApigeeV1Attributes--;
}

core.List<core.String> buildUnnamed4970() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4970(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1CertInfo = 0;
api.GoogleCloudApigeeV1CertInfo buildGoogleCloudApigeeV1CertInfo() {
  var o = api.GoogleCloudApigeeV1CertInfo();
  buildCounterGoogleCloudApigeeV1CertInfo++;
  if (buildCounterGoogleCloudApigeeV1CertInfo < 3) {
    o.basicConstraints = 'foo';
    o.expiryDate = 'foo';
    o.isValid = 'foo';
    o.issuer = 'foo';
    o.publicKey = 'foo';
    o.serialNumber = 'foo';
    o.sigAlgName = 'foo';
    o.subject = 'foo';
    o.subjectAlternativeNames = buildUnnamed4970();
    o.validFrom = 'foo';
    o.version = 42;
  }
  buildCounterGoogleCloudApigeeV1CertInfo--;
  return o;
}

void checkGoogleCloudApigeeV1CertInfo(api.GoogleCloudApigeeV1CertInfo o) {
  buildCounterGoogleCloudApigeeV1CertInfo++;
  if (buildCounterGoogleCloudApigeeV1CertInfo < 3) {
    unittest.expect(o.basicConstraints, unittest.equals('foo'));
    unittest.expect(o.expiryDate, unittest.equals('foo'));
    unittest.expect(o.isValid, unittest.equals('foo'));
    unittest.expect(o.issuer, unittest.equals('foo'));
    unittest.expect(o.publicKey, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    unittest.expect(o.sigAlgName, unittest.equals('foo'));
    unittest.expect(o.subject, unittest.equals('foo'));
    checkUnnamed4970(o.subjectAlternativeNames);
    unittest.expect(o.validFrom, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleCloudApigeeV1CertInfo--;
}

core.List<api.GoogleCloudApigeeV1CertInfo> buildUnnamed4971() {
  var o = <api.GoogleCloudApigeeV1CertInfo>[];
  o.add(buildGoogleCloudApigeeV1CertInfo());
  o.add(buildGoogleCloudApigeeV1CertInfo());
  return o;
}

void checkUnnamed4971(core.List<api.GoogleCloudApigeeV1CertInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1CertInfo(o[0] as api.GoogleCloudApigeeV1CertInfo);
  checkGoogleCloudApigeeV1CertInfo(o[1] as api.GoogleCloudApigeeV1CertInfo);
}

core.int buildCounterGoogleCloudApigeeV1Certificate = 0;
api.GoogleCloudApigeeV1Certificate buildGoogleCloudApigeeV1Certificate() {
  var o = api.GoogleCloudApigeeV1Certificate();
  buildCounterGoogleCloudApigeeV1Certificate++;
  if (buildCounterGoogleCloudApigeeV1Certificate < 3) {
    o.certInfo = buildUnnamed4971();
  }
  buildCounterGoogleCloudApigeeV1Certificate--;
  return o;
}

void checkGoogleCloudApigeeV1Certificate(api.GoogleCloudApigeeV1Certificate o) {
  buildCounterGoogleCloudApigeeV1Certificate++;
  if (buildCounterGoogleCloudApigeeV1Certificate < 3) {
    checkUnnamed4971(o.certInfo);
  }
  buildCounterGoogleCloudApigeeV1Certificate--;
}

core.int buildCounterGoogleCloudApigeeV1CommonNameConfig = 0;
api.GoogleCloudApigeeV1CommonNameConfig
    buildGoogleCloudApigeeV1CommonNameConfig() {
  var o = api.GoogleCloudApigeeV1CommonNameConfig();
  buildCounterGoogleCloudApigeeV1CommonNameConfig++;
  if (buildCounterGoogleCloudApigeeV1CommonNameConfig < 3) {
    o.matchWildCards = true;
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1CommonNameConfig--;
  return o;
}

void checkGoogleCloudApigeeV1CommonNameConfig(
    api.GoogleCloudApigeeV1CommonNameConfig o) {
  buildCounterGoogleCloudApigeeV1CommonNameConfig++;
  if (buildCounterGoogleCloudApigeeV1CommonNameConfig < 3) {
    unittest.expect(o.matchWildCards, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1CommonNameConfig--;
}

core.int buildCounterGoogleCloudApigeeV1ConfigVersion = 0;
api.GoogleCloudApigeeV1ConfigVersion buildGoogleCloudApigeeV1ConfigVersion() {
  var o = api.GoogleCloudApigeeV1ConfigVersion();
  buildCounterGoogleCloudApigeeV1ConfigVersion++;
  if (buildCounterGoogleCloudApigeeV1ConfigVersion < 3) {
    o.majorVersion = 42;
    o.minorVersion = 42;
  }
  buildCounterGoogleCloudApigeeV1ConfigVersion--;
  return o;
}

void checkGoogleCloudApigeeV1ConfigVersion(
    api.GoogleCloudApigeeV1ConfigVersion o) {
  buildCounterGoogleCloudApigeeV1ConfigVersion++;
  if (buildCounterGoogleCloudApigeeV1ConfigVersion < 3) {
    unittest.expect(o.majorVersion, unittest.equals(42));
    unittest.expect(o.minorVersion, unittest.equals(42));
  }
  buildCounterGoogleCloudApigeeV1ConfigVersion--;
}

core.List<api.GoogleCloudApigeeV1ApiProductRef> buildUnnamed4972() {
  var o = <api.GoogleCloudApigeeV1ApiProductRef>[];
  o.add(buildGoogleCloudApigeeV1ApiProductRef());
  o.add(buildGoogleCloudApigeeV1ApiProductRef());
  return o;
}

void checkUnnamed4972(core.List<api.GoogleCloudApigeeV1ApiProductRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ApiProductRef(
      o[0] as api.GoogleCloudApigeeV1ApiProductRef);
  checkGoogleCloudApigeeV1ApiProductRef(
      o[1] as api.GoogleCloudApigeeV1ApiProductRef);
}

core.List<api.GoogleCloudApigeeV1Attribute> buildUnnamed4973() {
  var o = <api.GoogleCloudApigeeV1Attribute>[];
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

void checkUnnamed4973(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0] as api.GoogleCloudApigeeV1Attribute);
  checkGoogleCloudApigeeV1Attribute(o[1] as api.GoogleCloudApigeeV1Attribute);
}

core.List<core.String> buildUnnamed4974() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4974(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Credential = 0;
api.GoogleCloudApigeeV1Credential buildGoogleCloudApigeeV1Credential() {
  var o = api.GoogleCloudApigeeV1Credential();
  buildCounterGoogleCloudApigeeV1Credential++;
  if (buildCounterGoogleCloudApigeeV1Credential < 3) {
    o.apiProducts = buildUnnamed4972();
    o.attributes = buildUnnamed4973();
    o.consumerKey = 'foo';
    o.consumerSecret = 'foo';
    o.expiresAt = 'foo';
    o.issuedAt = 'foo';
    o.scopes = buildUnnamed4974();
    o.status = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Credential--;
  return o;
}

void checkGoogleCloudApigeeV1Credential(api.GoogleCloudApigeeV1Credential o) {
  buildCounterGoogleCloudApigeeV1Credential++;
  if (buildCounterGoogleCloudApigeeV1Credential < 3) {
    checkUnnamed4972(o.apiProducts);
    checkUnnamed4973(o.attributes);
    unittest.expect(o.consumerKey, unittest.equals('foo'));
    unittest.expect(o.consumerSecret, unittest.equals('foo'));
    unittest.expect(o.expiresAt, unittest.equals('foo'));
    unittest.expect(o.issuedAt, unittest.equals('foo'));
    checkUnnamed4974(o.scopes);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Credential--;
}

core.List<core.String> buildUnnamed4975() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4975(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4976() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4976(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudApigeeV1CustomReportMetric> buildUnnamed4977() {
  var o = <api.GoogleCloudApigeeV1CustomReportMetric>[];
  o.add(buildGoogleCloudApigeeV1CustomReportMetric());
  o.add(buildGoogleCloudApigeeV1CustomReportMetric());
  return o;
}

void checkUnnamed4977(core.List<api.GoogleCloudApigeeV1CustomReportMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1CustomReportMetric(
      o[0] as api.GoogleCloudApigeeV1CustomReportMetric);
  checkGoogleCloudApigeeV1CustomReportMetric(
      o[1] as api.GoogleCloudApigeeV1CustomReportMetric);
}

core.List<api.GoogleCloudApigeeV1ReportProperty> buildUnnamed4978() {
  var o = <api.GoogleCloudApigeeV1ReportProperty>[];
  o.add(buildGoogleCloudApigeeV1ReportProperty());
  o.add(buildGoogleCloudApigeeV1ReportProperty());
  return o;
}

void checkUnnamed4978(core.List<api.GoogleCloudApigeeV1ReportProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ReportProperty(
      o[0] as api.GoogleCloudApigeeV1ReportProperty);
  checkGoogleCloudApigeeV1ReportProperty(
      o[1] as api.GoogleCloudApigeeV1ReportProperty);
}

core.List<core.String> buildUnnamed4979() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4979(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4980() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4980(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1CustomReport = 0;
api.GoogleCloudApigeeV1CustomReport buildGoogleCloudApigeeV1CustomReport() {
  var o = api.GoogleCloudApigeeV1CustomReport();
  buildCounterGoogleCloudApigeeV1CustomReport++;
  if (buildCounterGoogleCloudApigeeV1CustomReport < 3) {
    o.chartType = 'foo';
    o.comments = buildUnnamed4975();
    o.createdAt = 'foo';
    o.dimensions = buildUnnamed4976();
    o.displayName = 'foo';
    o.environment = 'foo';
    o.filter = 'foo';
    o.fromTime = 'foo';
    o.lastModifiedAt = 'foo';
    o.lastViewedAt = 'foo';
    o.limit = 'foo';
    o.metrics = buildUnnamed4977();
    o.name = 'foo';
    o.offset = 'foo';
    o.organization = 'foo';
    o.properties = buildUnnamed4978();
    o.sortByCols = buildUnnamed4979();
    o.sortOrder = 'foo';
    o.tags = buildUnnamed4980();
    o.timeUnit = 'foo';
    o.toTime = 'foo';
    o.topk = 'foo';
  }
  buildCounterGoogleCloudApigeeV1CustomReport--;
  return o;
}

void checkGoogleCloudApigeeV1CustomReport(
    api.GoogleCloudApigeeV1CustomReport o) {
  buildCounterGoogleCloudApigeeV1CustomReport++;
  if (buildCounterGoogleCloudApigeeV1CustomReport < 3) {
    unittest.expect(o.chartType, unittest.equals('foo'));
    checkUnnamed4975(o.comments);
    unittest.expect(o.createdAt, unittest.equals('foo'));
    checkUnnamed4976(o.dimensions);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.fromTime, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.lastViewedAt, unittest.equals('foo'));
    unittest.expect(o.limit, unittest.equals('foo'));
    checkUnnamed4977(o.metrics);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.offset, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    checkUnnamed4978(o.properties);
    checkUnnamed4979(o.sortByCols);
    unittest.expect(o.sortOrder, unittest.equals('foo'));
    checkUnnamed4980(o.tags);
    unittest.expect(o.timeUnit, unittest.equals('foo'));
    unittest.expect(o.toTime, unittest.equals('foo'));
    unittest.expect(o.topk, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1CustomReport--;
}

core.int buildCounterGoogleCloudApigeeV1CustomReportMetric = 0;
api.GoogleCloudApigeeV1CustomReportMetric
    buildGoogleCloudApigeeV1CustomReportMetric() {
  var o = api.GoogleCloudApigeeV1CustomReportMetric();
  buildCounterGoogleCloudApigeeV1CustomReportMetric++;
  if (buildCounterGoogleCloudApigeeV1CustomReportMetric < 3) {
    o.function = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1CustomReportMetric--;
  return o;
}

void checkGoogleCloudApigeeV1CustomReportMetric(
    api.GoogleCloudApigeeV1CustomReportMetric o) {
  buildCounterGoogleCloudApigeeV1CustomReportMetric++;
  if (buildCounterGoogleCloudApigeeV1CustomReportMetric < 3) {
    unittest.expect(o.function, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1CustomReportMetric--;
}

core.int buildCounterGoogleCloudApigeeV1DataCollectorConfig = 0;
api.GoogleCloudApigeeV1DataCollectorConfig
    buildGoogleCloudApigeeV1DataCollectorConfig() {
  var o = api.GoogleCloudApigeeV1DataCollectorConfig();
  buildCounterGoogleCloudApigeeV1DataCollectorConfig++;
  if (buildCounterGoogleCloudApigeeV1DataCollectorConfig < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudApigeeV1DataCollectorConfig--;
  return o;
}

void checkGoogleCloudApigeeV1DataCollectorConfig(
    api.GoogleCloudApigeeV1DataCollectorConfig o) {
  buildCounterGoogleCloudApigeeV1DataCollectorConfig++;
  if (buildCounterGoogleCloudApigeeV1DataCollectorConfig < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DataCollectorConfig--;
}

core.int buildCounterGoogleCloudApigeeV1Datastore = 0;
api.GoogleCloudApigeeV1Datastore buildGoogleCloudApigeeV1Datastore() {
  var o = api.GoogleCloudApigeeV1Datastore();
  buildCounterGoogleCloudApigeeV1Datastore++;
  if (buildCounterGoogleCloudApigeeV1Datastore < 3) {
    o.createTime = 'foo';
    o.datastoreConfig = buildGoogleCloudApigeeV1DatastoreConfig();
    o.displayName = 'foo';
    o.lastUpdateTime = 'foo';
    o.org = 'foo';
    o.self = 'foo';
    o.targetType = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Datastore--;
  return o;
}

void checkGoogleCloudApigeeV1Datastore(api.GoogleCloudApigeeV1Datastore o) {
  buildCounterGoogleCloudApigeeV1Datastore++;
  if (buildCounterGoogleCloudApigeeV1Datastore < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGoogleCloudApigeeV1DatastoreConfig(
        o.datastoreConfig as api.GoogleCloudApigeeV1DatastoreConfig);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTime, unittest.equals('foo'));
    unittest.expect(o.org, unittest.equals('foo'));
    unittest.expect(o.self, unittest.equals('foo'));
    unittest.expect(o.targetType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Datastore--;
}

core.int buildCounterGoogleCloudApigeeV1DatastoreConfig = 0;
api.GoogleCloudApigeeV1DatastoreConfig
    buildGoogleCloudApigeeV1DatastoreConfig() {
  var o = api.GoogleCloudApigeeV1DatastoreConfig();
  buildCounterGoogleCloudApigeeV1DatastoreConfig++;
  if (buildCounterGoogleCloudApigeeV1DatastoreConfig < 3) {
    o.bucketName = 'foo';
    o.datasetName = 'foo';
    o.path = 'foo';
    o.projectId = 'foo';
    o.tablePrefix = 'foo';
  }
  buildCounterGoogleCloudApigeeV1DatastoreConfig--;
  return o;
}

void checkGoogleCloudApigeeV1DatastoreConfig(
    api.GoogleCloudApigeeV1DatastoreConfig o) {
  buildCounterGoogleCloudApigeeV1DatastoreConfig++;
  if (buildCounterGoogleCloudApigeeV1DatastoreConfig < 3) {
    unittest.expect(o.bucketName, unittest.equals('foo'));
    unittest.expect(o.datasetName, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tablePrefix, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DatastoreConfig--;
}

core.int buildCounterGoogleCloudApigeeV1DateRange = 0;
api.GoogleCloudApigeeV1DateRange buildGoogleCloudApigeeV1DateRange() {
  var o = api.GoogleCloudApigeeV1DateRange();
  buildCounterGoogleCloudApigeeV1DateRange++;
  if (buildCounterGoogleCloudApigeeV1DateRange < 3) {
    o.end = 'foo';
    o.start = 'foo';
  }
  buildCounterGoogleCloudApigeeV1DateRange--;
  return o;
}

void checkGoogleCloudApigeeV1DateRange(api.GoogleCloudApigeeV1DateRange o) {
  buildCounterGoogleCloudApigeeV1DateRange++;
  if (buildCounterGoogleCloudApigeeV1DateRange < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DateRange--;
}

core.List<core.String> buildUnnamed4981() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4981(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4982() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4982(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed4983() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4983(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4984() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4984(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4985() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4985(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4986() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4986(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4987() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4987(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4988() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4988(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1DebugMask = 0;
api.GoogleCloudApigeeV1DebugMask buildGoogleCloudApigeeV1DebugMask() {
  var o = api.GoogleCloudApigeeV1DebugMask();
  buildCounterGoogleCloudApigeeV1DebugMask++;
  if (buildCounterGoogleCloudApigeeV1DebugMask < 3) {
    o.faultJSONPaths = buildUnnamed4981();
    o.faultXPaths = buildUnnamed4982();
    o.name = 'foo';
    o.namespaces = buildUnnamed4983();
    o.requestJSONPaths = buildUnnamed4984();
    o.requestXPaths = buildUnnamed4985();
    o.responseJSONPaths = buildUnnamed4986();
    o.responseXPaths = buildUnnamed4987();
    o.variables = buildUnnamed4988();
  }
  buildCounterGoogleCloudApigeeV1DebugMask--;
  return o;
}

void checkGoogleCloudApigeeV1DebugMask(api.GoogleCloudApigeeV1DebugMask o) {
  buildCounterGoogleCloudApigeeV1DebugMask++;
  if (buildCounterGoogleCloudApigeeV1DebugMask < 3) {
    checkUnnamed4981(o.faultJSONPaths);
    checkUnnamed4982(o.faultXPaths);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4983(o.namespaces);
    checkUnnamed4984(o.requestJSONPaths);
    checkUnnamed4985(o.requestXPaths);
    checkUnnamed4986(o.responseJSONPaths);
    checkUnnamed4987(o.responseXPaths);
    checkUnnamed4988(o.variables);
  }
  buildCounterGoogleCloudApigeeV1DebugMask--;
}

core.int buildCounterGoogleCloudApigeeV1DebugSession = 0;
api.GoogleCloudApigeeV1DebugSession buildGoogleCloudApigeeV1DebugSession() {
  var o = api.GoogleCloudApigeeV1DebugSession();
  buildCounterGoogleCloudApigeeV1DebugSession++;
  if (buildCounterGoogleCloudApigeeV1DebugSession < 3) {
    o.count = 42;
    o.filter = 'foo';
    o.name = 'foo';
    o.timeout = 'foo';
    o.tracesize = 42;
    o.validity = 42;
  }
  buildCounterGoogleCloudApigeeV1DebugSession--;
  return o;
}

void checkGoogleCloudApigeeV1DebugSession(
    api.GoogleCloudApigeeV1DebugSession o) {
  buildCounterGoogleCloudApigeeV1DebugSession++;
  if (buildCounterGoogleCloudApigeeV1DebugSession < 3) {
    unittest.expect(o.count, unittest.equals(42));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.timeout, unittest.equals('foo'));
    unittest.expect(o.tracesize, unittest.equals(42));
    unittest.expect(o.validity, unittest.equals(42));
  }
  buildCounterGoogleCloudApigeeV1DebugSession--;
}

core.List<api.GoogleCloudApigeeV1Point> buildUnnamed4989() {
  var o = <api.GoogleCloudApigeeV1Point>[];
  o.add(buildGoogleCloudApigeeV1Point());
  o.add(buildGoogleCloudApigeeV1Point());
  return o;
}

void checkUnnamed4989(core.List<api.GoogleCloudApigeeV1Point> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Point(o[0] as api.GoogleCloudApigeeV1Point);
  checkGoogleCloudApigeeV1Point(o[1] as api.GoogleCloudApigeeV1Point);
}

core.int buildCounterGoogleCloudApigeeV1DebugSessionTransaction = 0;
api.GoogleCloudApigeeV1DebugSessionTransaction
    buildGoogleCloudApigeeV1DebugSessionTransaction() {
  var o = api.GoogleCloudApigeeV1DebugSessionTransaction();
  buildCounterGoogleCloudApigeeV1DebugSessionTransaction++;
  if (buildCounterGoogleCloudApigeeV1DebugSessionTransaction < 3) {
    o.completed = true;
    o.point = buildUnnamed4989();
  }
  buildCounterGoogleCloudApigeeV1DebugSessionTransaction--;
  return o;
}

void checkGoogleCloudApigeeV1DebugSessionTransaction(
    api.GoogleCloudApigeeV1DebugSessionTransaction o) {
  buildCounterGoogleCloudApigeeV1DebugSessionTransaction++;
  if (buildCounterGoogleCloudApigeeV1DebugSessionTransaction < 3) {
    unittest.expect(o.completed, unittest.isTrue);
    checkUnnamed4989(o.point);
  }
  buildCounterGoogleCloudApigeeV1DebugSessionTransaction--;
}

core.int buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse = 0;
api.GoogleCloudApigeeV1DeleteCustomReportResponse
    buildGoogleCloudApigeeV1DeleteCustomReportResponse() {
  var o = api.GoogleCloudApigeeV1DeleteCustomReportResponse();
  buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse++;
  if (buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse < 3) {
    o.message = 'foo';
  }
  buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse--;
  return o;
}

void checkGoogleCloudApigeeV1DeleteCustomReportResponse(
    api.GoogleCloudApigeeV1DeleteCustomReportResponse o) {
  buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse++;
  if (buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse < 3) {
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed4990() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed4990(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.List<api.GoogleCloudApigeeV1InstanceDeploymentStatus> buildUnnamed4991() {
  var o = <api.GoogleCloudApigeeV1InstanceDeploymentStatus>[];
  o.add(buildGoogleCloudApigeeV1InstanceDeploymentStatus());
  o.add(buildGoogleCloudApigeeV1InstanceDeploymentStatus());
  return o;
}

void checkUnnamed4991(
    core.List<api.GoogleCloudApigeeV1InstanceDeploymentStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1InstanceDeploymentStatus(
      o[0] as api.GoogleCloudApigeeV1InstanceDeploymentStatus);
  checkGoogleCloudApigeeV1InstanceDeploymentStatus(
      o[1] as api.GoogleCloudApigeeV1InstanceDeploymentStatus);
}

core.List<api.GoogleCloudApigeeV1PodStatus> buildUnnamed4992() {
  var o = <api.GoogleCloudApigeeV1PodStatus>[];
  o.add(buildGoogleCloudApigeeV1PodStatus());
  o.add(buildGoogleCloudApigeeV1PodStatus());
  return o;
}

void checkUnnamed4992(core.List<api.GoogleCloudApigeeV1PodStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1PodStatus(o[0] as api.GoogleCloudApigeeV1PodStatus);
  checkGoogleCloudApigeeV1PodStatus(o[1] as api.GoogleCloudApigeeV1PodStatus);
}

core.List<api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>
    buildUnnamed4993() {
  var o = <api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>[];
  o.add(buildGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict());
  o.add(buildGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict());
  return o;
}

void checkUnnamed4993(
    core.List<api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict(
      o[0] as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict);
  checkGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict(
      o[1] as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict);
}

core.int buildCounterGoogleCloudApigeeV1Deployment = 0;
api.GoogleCloudApigeeV1Deployment buildGoogleCloudApigeeV1Deployment() {
  var o = api.GoogleCloudApigeeV1Deployment();
  buildCounterGoogleCloudApigeeV1Deployment++;
  if (buildCounterGoogleCloudApigeeV1Deployment < 3) {
    o.apiProxy = 'foo';
    o.deployStartTime = 'foo';
    o.environment = 'foo';
    o.errors = buildUnnamed4990();
    o.instances = buildUnnamed4991();
    o.pods = buildUnnamed4992();
    o.revision = 'foo';
    o.routeConflicts = buildUnnamed4993();
    o.state = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Deployment--;
  return o;
}

void checkGoogleCloudApigeeV1Deployment(api.GoogleCloudApigeeV1Deployment o) {
  buildCounterGoogleCloudApigeeV1Deployment++;
  if (buildCounterGoogleCloudApigeeV1Deployment < 3) {
    unittest.expect(o.apiProxy, unittest.equals('foo'));
    unittest.expect(o.deployStartTime, unittest.equals('foo'));
    unittest.expect(o.environment, unittest.equals('foo'));
    checkUnnamed4990(o.errors);
    checkUnnamed4991(o.instances);
    checkUnnamed4992(o.pods);
    unittest.expect(o.revision, unittest.equals('foo'));
    checkUnnamed4993(o.routeConflicts);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Deployment--;
}

core.List<api.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange>
    buildUnnamed4994() {
  var o = <api.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange>[];
  o.add(buildGoogleCloudApigeeV1DeploymentChangeReportRoutingChange());
  o.add(buildGoogleCloudApigeeV1DeploymentChangeReportRoutingChange());
  return o;
}

void checkUnnamed4994(
    core.List<api.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1DeploymentChangeReportRoutingChange(
      o[0] as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange);
  checkGoogleCloudApigeeV1DeploymentChangeReportRoutingChange(
      o[1] as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange);
}

core.List<api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>
    buildUnnamed4995() {
  var o = <api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>[];
  o.add(buildGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict());
  o.add(buildGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict());
  return o;
}

void checkUnnamed4995(
    core.List<api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict(
      o[0] as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict);
  checkGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict(
      o[1] as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict);
}

core.int buildCounterGoogleCloudApigeeV1DeploymentChangeReport = 0;
api.GoogleCloudApigeeV1DeploymentChangeReport
    buildGoogleCloudApigeeV1DeploymentChangeReport() {
  var o = api.GoogleCloudApigeeV1DeploymentChangeReport();
  buildCounterGoogleCloudApigeeV1DeploymentChangeReport++;
  if (buildCounterGoogleCloudApigeeV1DeploymentChangeReport < 3) {
    o.routingChanges = buildUnnamed4994();
    o.routingConflicts = buildUnnamed4995();
    o.validationErrors = buildGoogleRpcPreconditionFailure();
  }
  buildCounterGoogleCloudApigeeV1DeploymentChangeReport--;
  return o;
}

void checkGoogleCloudApigeeV1DeploymentChangeReport(
    api.GoogleCloudApigeeV1DeploymentChangeReport o) {
  buildCounterGoogleCloudApigeeV1DeploymentChangeReport++;
  if (buildCounterGoogleCloudApigeeV1DeploymentChangeReport < 3) {
    checkUnnamed4994(o.routingChanges);
    checkUnnamed4995(o.routingConflicts);
    checkGoogleRpcPreconditionFailure(
        o.validationErrors as api.GoogleRpcPreconditionFailure);
  }
  buildCounterGoogleCloudApigeeV1DeploymentChangeReport--;
}

core.int buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingChange = 0;
api.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange
    buildGoogleCloudApigeeV1DeploymentChangeReportRoutingChange() {
  var o = api.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange();
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingChange++;
  if (buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingChange < 3) {
    o.description = 'foo';
    o.environmentGroup = 'foo';
    o.fromDeployment =
        buildGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment();
    o.shouldSequenceRollout = true;
    o.toDeployment =
        buildGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment();
  }
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingChange--;
  return o;
}

void checkGoogleCloudApigeeV1DeploymentChangeReportRoutingChange(
    api.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange o) {
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingChange++;
  if (buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingChange < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.environmentGroup, unittest.equals('foo'));
    checkGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment(
        o.fromDeployment
            as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment);
    unittest.expect(o.shouldSequenceRollout, unittest.isTrue);
    checkGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment(
        o.toDeployment
            as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment);
  }
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingChange--;
}

core.int buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict =
    0;
api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict
    buildGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict() {
  var o = api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict();
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict++;
  if (buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict <
      3) {
    o.conflictingDeployment =
        buildGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment();
    o.description = 'foo';
    o.environmentGroup = 'foo';
  }
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict--;
  return o;
}

void checkGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict(
    api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict o) {
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict++;
  if (buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict <
      3) {
    checkGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment(
        o.conflictingDeployment
            as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.environmentGroup, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict--;
}

core.int
    buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment = 0;
api.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment
    buildGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment() {
  var o = api.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment();
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment++;
  if (buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment <
      3) {
    o.apiProxy = 'foo';
    o.basepath = 'foo';
    o.environment = 'foo';
    o.revision = 'foo';
  }
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment--;
  return o;
}

void checkGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment(
    api.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment o) {
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment++;
  if (buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment <
      3) {
    unittest.expect(o.apiProxy, unittest.equals('foo'));
    unittest.expect(o.basepath, unittest.equals('foo'));
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.revision, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment--;
}

core.Map<core.String, core.String> buildUnnamed4996() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4996(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1DeploymentConfig = 0;
api.GoogleCloudApigeeV1DeploymentConfig
    buildGoogleCloudApigeeV1DeploymentConfig() {
  var o = api.GoogleCloudApigeeV1DeploymentConfig();
  buildCounterGoogleCloudApigeeV1DeploymentConfig++;
  if (buildCounterGoogleCloudApigeeV1DeploymentConfig < 3) {
    o.attributes = buildUnnamed4996();
    o.basePath = 'foo';
    o.location = 'foo';
    o.name = 'foo';
    o.proxyUid = 'foo';
    o.uid = 'foo';
  }
  buildCounterGoogleCloudApigeeV1DeploymentConfig--;
  return o;
}

void checkGoogleCloudApigeeV1DeploymentConfig(
    api.GoogleCloudApigeeV1DeploymentConfig o) {
  buildCounterGoogleCloudApigeeV1DeploymentConfig++;
  if (buildCounterGoogleCloudApigeeV1DeploymentConfig < 3) {
    checkUnnamed4996(o.attributes);
    unittest.expect(o.basePath, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.proxyUid, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DeploymentConfig--;
}

core.List<core.String> buildUnnamed4997() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4997(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudApigeeV1Attribute> buildUnnamed4998() {
  var o = <api.GoogleCloudApigeeV1Attribute>[];
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

void checkUnnamed4998(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0] as api.GoogleCloudApigeeV1Attribute);
  checkGoogleCloudApigeeV1Attribute(o[1] as api.GoogleCloudApigeeV1Attribute);
}

core.List<core.String> buildUnnamed4999() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4999(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Developer = 0;
api.GoogleCloudApigeeV1Developer buildGoogleCloudApigeeV1Developer() {
  var o = api.GoogleCloudApigeeV1Developer();
  buildCounterGoogleCloudApigeeV1Developer++;
  if (buildCounterGoogleCloudApigeeV1Developer < 3) {
    o.accessType = 'foo';
    o.appFamily = 'foo';
    o.apps = buildUnnamed4997();
    o.attributes = buildUnnamed4998();
    o.companies = buildUnnamed4999();
    o.createdAt = 'foo';
    o.developerId = 'foo';
    o.email = 'foo';
    o.firstName = 'foo';
    o.lastModifiedAt = 'foo';
    o.lastName = 'foo';
    o.organizationName = 'foo';
    o.status = 'foo';
    o.userName = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Developer--;
  return o;
}

void checkGoogleCloudApigeeV1Developer(api.GoogleCloudApigeeV1Developer o) {
  buildCounterGoogleCloudApigeeV1Developer++;
  if (buildCounterGoogleCloudApigeeV1Developer < 3) {
    unittest.expect(o.accessType, unittest.equals('foo'));
    unittest.expect(o.appFamily, unittest.equals('foo'));
    checkUnnamed4997(o.apps);
    checkUnnamed4998(o.attributes);
    checkUnnamed4999(o.companies);
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.developerId, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.firstName, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.lastName, unittest.equals('foo'));
    unittest.expect(o.organizationName, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Developer--;
}

core.List<core.String> buildUnnamed5000() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5000(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudApigeeV1Attribute> buildUnnamed5001() {
  var o = <api.GoogleCloudApigeeV1Attribute>[];
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

void checkUnnamed5001(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0] as api.GoogleCloudApigeeV1Attribute);
  checkGoogleCloudApigeeV1Attribute(o[1] as api.GoogleCloudApigeeV1Attribute);
}

core.List<api.GoogleCloudApigeeV1Credential> buildUnnamed5002() {
  var o = <api.GoogleCloudApigeeV1Credential>[];
  o.add(buildGoogleCloudApigeeV1Credential());
  o.add(buildGoogleCloudApigeeV1Credential());
  return o;
}

void checkUnnamed5002(core.List<api.GoogleCloudApigeeV1Credential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Credential(o[0] as api.GoogleCloudApigeeV1Credential);
  checkGoogleCloudApigeeV1Credential(o[1] as api.GoogleCloudApigeeV1Credential);
}

core.List<core.String> buildUnnamed5003() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5003(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1DeveloperApp = 0;
api.GoogleCloudApigeeV1DeveloperApp buildGoogleCloudApigeeV1DeveloperApp() {
  var o = api.GoogleCloudApigeeV1DeveloperApp();
  buildCounterGoogleCloudApigeeV1DeveloperApp++;
  if (buildCounterGoogleCloudApigeeV1DeveloperApp < 3) {
    o.apiProducts = buildUnnamed5000();
    o.appFamily = 'foo';
    o.appId = 'foo';
    o.attributes = buildUnnamed5001();
    o.callbackUrl = 'foo';
    o.createdAt = 'foo';
    o.credentials = buildUnnamed5002();
    o.developerId = 'foo';
    o.keyExpiresIn = 'foo';
    o.lastModifiedAt = 'foo';
    o.name = 'foo';
    o.scopes = buildUnnamed5003();
    o.status = 'foo';
  }
  buildCounterGoogleCloudApigeeV1DeveloperApp--;
  return o;
}

void checkGoogleCloudApigeeV1DeveloperApp(
    api.GoogleCloudApigeeV1DeveloperApp o) {
  buildCounterGoogleCloudApigeeV1DeveloperApp++;
  if (buildCounterGoogleCloudApigeeV1DeveloperApp < 3) {
    checkUnnamed5000(o.apiProducts);
    unittest.expect(o.appFamily, unittest.equals('foo'));
    unittest.expect(o.appId, unittest.equals('foo'));
    checkUnnamed5001(o.attributes);
    unittest.expect(o.callbackUrl, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    checkUnnamed5002(o.credentials);
    unittest.expect(o.developerId, unittest.equals('foo'));
    unittest.expect(o.keyExpiresIn, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5003(o.scopes);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DeveloperApp--;
}

core.List<core.Object> buildUnnamed5004() {
  var o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed5004(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o[1]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudApigeeV1Attribute> buildUnnamed5005() {
  var o = <api.GoogleCloudApigeeV1Attribute>[];
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

void checkUnnamed5005(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0] as api.GoogleCloudApigeeV1Attribute);
  checkGoogleCloudApigeeV1Attribute(o[1] as api.GoogleCloudApigeeV1Attribute);
}

core.List<core.String> buildUnnamed5006() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5006(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1DeveloperAppKey = 0;
api.GoogleCloudApigeeV1DeveloperAppKey
    buildGoogleCloudApigeeV1DeveloperAppKey() {
  var o = api.GoogleCloudApigeeV1DeveloperAppKey();
  buildCounterGoogleCloudApigeeV1DeveloperAppKey++;
  if (buildCounterGoogleCloudApigeeV1DeveloperAppKey < 3) {
    o.apiProducts = buildUnnamed5004();
    o.attributes = buildUnnamed5005();
    o.consumerKey = 'foo';
    o.consumerSecret = 'foo';
    o.expiresAt = 'foo';
    o.issuedAt = 'foo';
    o.scopes = buildUnnamed5006();
    o.status = 'foo';
  }
  buildCounterGoogleCloudApigeeV1DeveloperAppKey--;
  return o;
}

void checkGoogleCloudApigeeV1DeveloperAppKey(
    api.GoogleCloudApigeeV1DeveloperAppKey o) {
  buildCounterGoogleCloudApigeeV1DeveloperAppKey++;
  if (buildCounterGoogleCloudApigeeV1DeveloperAppKey < 3) {
    checkUnnamed5004(o.apiProducts);
    checkUnnamed5005(o.attributes);
    unittest.expect(o.consumerKey, unittest.equals('foo'));
    unittest.expect(o.consumerSecret, unittest.equals('foo'));
    unittest.expect(o.expiresAt, unittest.equals('foo'));
    unittest.expect(o.issuedAt, unittest.equals('foo'));
    checkUnnamed5006(o.scopes);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DeveloperAppKey--;
}

core.List<api.GoogleCloudApigeeV1Metric> buildUnnamed5007() {
  var o = <api.GoogleCloudApigeeV1Metric>[];
  o.add(buildGoogleCloudApigeeV1Metric());
  o.add(buildGoogleCloudApigeeV1Metric());
  return o;
}

void checkUnnamed5007(core.List<api.GoogleCloudApigeeV1Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Metric(o[0] as api.GoogleCloudApigeeV1Metric);
  checkGoogleCloudApigeeV1Metric(o[1] as api.GoogleCloudApigeeV1Metric);
}

core.int buildCounterGoogleCloudApigeeV1DimensionMetric = 0;
api.GoogleCloudApigeeV1DimensionMetric
    buildGoogleCloudApigeeV1DimensionMetric() {
  var o = api.GoogleCloudApigeeV1DimensionMetric();
  buildCounterGoogleCloudApigeeV1DimensionMetric++;
  if (buildCounterGoogleCloudApigeeV1DimensionMetric < 3) {
    o.metrics = buildUnnamed5007();
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1DimensionMetric--;
  return o;
}

void checkGoogleCloudApigeeV1DimensionMetric(
    api.GoogleCloudApigeeV1DimensionMetric o) {
  buildCounterGoogleCloudApigeeV1DimensionMetric++;
  if (buildCounterGoogleCloudApigeeV1DimensionMetric < 3) {
    checkUnnamed5007(o.metrics);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DimensionMetric--;
}

core.int buildCounterGoogleCloudApigeeV1EntityMetadata = 0;
api.GoogleCloudApigeeV1EntityMetadata buildGoogleCloudApigeeV1EntityMetadata() {
  var o = api.GoogleCloudApigeeV1EntityMetadata();
  buildCounterGoogleCloudApigeeV1EntityMetadata++;
  if (buildCounterGoogleCloudApigeeV1EntityMetadata < 3) {
    o.createdAt = 'foo';
    o.lastModifiedAt = 'foo';
    o.subType = 'foo';
  }
  buildCounterGoogleCloudApigeeV1EntityMetadata--;
  return o;
}

void checkGoogleCloudApigeeV1EntityMetadata(
    api.GoogleCloudApigeeV1EntityMetadata o) {
  buildCounterGoogleCloudApigeeV1EntityMetadata++;
  if (buildCounterGoogleCloudApigeeV1EntityMetadata < 3) {
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.subType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1EntityMetadata--;
}

core.int buildCounterGoogleCloudApigeeV1Environment = 0;
api.GoogleCloudApigeeV1Environment buildGoogleCloudApigeeV1Environment() {
  var o = api.GoogleCloudApigeeV1Environment();
  buildCounterGoogleCloudApigeeV1Environment++;
  if (buildCounterGoogleCloudApigeeV1Environment < 3) {
    o.createdAt = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.lastModifiedAt = 'foo';
    o.name = 'foo';
    o.properties = buildGoogleCloudApigeeV1Properties();
  }
  buildCounterGoogleCloudApigeeV1Environment--;
  return o;
}

void checkGoogleCloudApigeeV1Environment(api.GoogleCloudApigeeV1Environment o) {
  buildCounterGoogleCloudApigeeV1Environment++;
  if (buildCounterGoogleCloudApigeeV1Environment < 3) {
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudApigeeV1Properties(
        o.properties as api.GoogleCloudApigeeV1Properties);
  }
  buildCounterGoogleCloudApigeeV1Environment--;
}

core.List<api.GoogleCloudApigeeV1DataCollectorConfig> buildUnnamed5008() {
  var o = <api.GoogleCloudApigeeV1DataCollectorConfig>[];
  o.add(buildGoogleCloudApigeeV1DataCollectorConfig());
  o.add(buildGoogleCloudApigeeV1DataCollectorConfig());
  return o;
}

void checkUnnamed5008(core.List<api.GoogleCloudApigeeV1DataCollectorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1DataCollectorConfig(
      o[0] as api.GoogleCloudApigeeV1DataCollectorConfig);
  checkGoogleCloudApigeeV1DataCollectorConfig(
      o[1] as api.GoogleCloudApigeeV1DataCollectorConfig);
}

core.List<api.GoogleCloudApigeeV1DeploymentConfig> buildUnnamed5009() {
  var o = <api.GoogleCloudApigeeV1DeploymentConfig>[];
  o.add(buildGoogleCloudApigeeV1DeploymentConfig());
  o.add(buildGoogleCloudApigeeV1DeploymentConfig());
  return o;
}

void checkUnnamed5009(core.List<api.GoogleCloudApigeeV1DeploymentConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1DeploymentConfig(
      o[0] as api.GoogleCloudApigeeV1DeploymentConfig);
  checkGoogleCloudApigeeV1DeploymentConfig(
      o[1] as api.GoogleCloudApigeeV1DeploymentConfig);
}

core.Map<core.String, core.String> buildUnnamed5010() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5010(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.GoogleCloudApigeeV1FlowHookConfig> buildUnnamed5011() {
  var o = <api.GoogleCloudApigeeV1FlowHookConfig>[];
  o.add(buildGoogleCloudApigeeV1FlowHookConfig());
  o.add(buildGoogleCloudApigeeV1FlowHookConfig());
  return o;
}

void checkUnnamed5011(core.List<api.GoogleCloudApigeeV1FlowHookConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1FlowHookConfig(
      o[0] as api.GoogleCloudApigeeV1FlowHookConfig);
  checkGoogleCloudApigeeV1FlowHookConfig(
      o[1] as api.GoogleCloudApigeeV1FlowHookConfig);
}

core.List<api.GoogleCloudApigeeV1KeystoreConfig> buildUnnamed5012() {
  var o = <api.GoogleCloudApigeeV1KeystoreConfig>[];
  o.add(buildGoogleCloudApigeeV1KeystoreConfig());
  o.add(buildGoogleCloudApigeeV1KeystoreConfig());
  return o;
}

void checkUnnamed5012(core.List<api.GoogleCloudApigeeV1KeystoreConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1KeystoreConfig(
      o[0] as api.GoogleCloudApigeeV1KeystoreConfig);
  checkGoogleCloudApigeeV1KeystoreConfig(
      o[1] as api.GoogleCloudApigeeV1KeystoreConfig);
}

core.List<api.GoogleCloudApigeeV1ReferenceConfig> buildUnnamed5013() {
  var o = <api.GoogleCloudApigeeV1ReferenceConfig>[];
  o.add(buildGoogleCloudApigeeV1ReferenceConfig());
  o.add(buildGoogleCloudApigeeV1ReferenceConfig());
  return o;
}

void checkUnnamed5013(core.List<api.GoogleCloudApigeeV1ReferenceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ReferenceConfig(
      o[0] as api.GoogleCloudApigeeV1ReferenceConfig);
  checkGoogleCloudApigeeV1ReferenceConfig(
      o[1] as api.GoogleCloudApigeeV1ReferenceConfig);
}

core.List<api.GoogleCloudApigeeV1ResourceConfig> buildUnnamed5014() {
  var o = <api.GoogleCloudApigeeV1ResourceConfig>[];
  o.add(buildGoogleCloudApigeeV1ResourceConfig());
  o.add(buildGoogleCloudApigeeV1ResourceConfig());
  return o;
}

void checkUnnamed5014(core.List<api.GoogleCloudApigeeV1ResourceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ResourceConfig(
      o[0] as api.GoogleCloudApigeeV1ResourceConfig);
  checkGoogleCloudApigeeV1ResourceConfig(
      o[1] as api.GoogleCloudApigeeV1ResourceConfig);
}

core.List<api.GoogleCloudApigeeV1TargetServerConfig> buildUnnamed5015() {
  var o = <api.GoogleCloudApigeeV1TargetServerConfig>[];
  o.add(buildGoogleCloudApigeeV1TargetServerConfig());
  o.add(buildGoogleCloudApigeeV1TargetServerConfig());
  return o;
}

void checkUnnamed5015(core.List<api.GoogleCloudApigeeV1TargetServerConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1TargetServerConfig(
      o[0] as api.GoogleCloudApigeeV1TargetServerConfig);
  checkGoogleCloudApigeeV1TargetServerConfig(
      o[1] as api.GoogleCloudApigeeV1TargetServerConfig);
}

core.int buildCounterGoogleCloudApigeeV1EnvironmentConfig = 0;
api.GoogleCloudApigeeV1EnvironmentConfig
    buildGoogleCloudApigeeV1EnvironmentConfig() {
  var o = api.GoogleCloudApigeeV1EnvironmentConfig();
  buildCounterGoogleCloudApigeeV1EnvironmentConfig++;
  if (buildCounterGoogleCloudApigeeV1EnvironmentConfig < 3) {
    o.createTime = 'foo';
    o.dataCollectors = buildUnnamed5008();
    o.debugMask = buildGoogleCloudApigeeV1DebugMask();
    o.deployments = buildUnnamed5009();
    o.featureFlags = buildUnnamed5010();
    o.flowhooks = buildUnnamed5011();
    o.keystores = buildUnnamed5012();
    o.name = 'foo';
    o.provider = 'foo';
    o.pubsubTopic = 'foo';
    o.resourceReferences = buildUnnamed5013();
    o.resources = buildUnnamed5014();
    o.revisionId = 'foo';
    o.sequenceNumber = 'foo';
    o.targets = buildUnnamed5015();
    o.traceConfig = buildGoogleCloudApigeeV1RuntimeTraceConfig();
    o.uid = 'foo';
  }
  buildCounterGoogleCloudApigeeV1EnvironmentConfig--;
  return o;
}

void checkGoogleCloudApigeeV1EnvironmentConfig(
    api.GoogleCloudApigeeV1EnvironmentConfig o) {
  buildCounterGoogleCloudApigeeV1EnvironmentConfig++;
  if (buildCounterGoogleCloudApigeeV1EnvironmentConfig < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed5008(o.dataCollectors);
    checkGoogleCloudApigeeV1DebugMask(
        o.debugMask as api.GoogleCloudApigeeV1DebugMask);
    checkUnnamed5009(o.deployments);
    checkUnnamed5010(o.featureFlags);
    checkUnnamed5011(o.flowhooks);
    checkUnnamed5012(o.keystores);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.provider, unittest.equals('foo'));
    unittest.expect(o.pubsubTopic, unittest.equals('foo'));
    checkUnnamed5013(o.resourceReferences);
    checkUnnamed5014(o.resources);
    unittest.expect(o.revisionId, unittest.equals('foo'));
    unittest.expect(o.sequenceNumber, unittest.equals('foo'));
    checkUnnamed5015(o.targets);
    checkGoogleCloudApigeeV1RuntimeTraceConfig(
        o.traceConfig as api.GoogleCloudApigeeV1RuntimeTraceConfig);
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1EnvironmentConfig--;
}

core.List<core.String> buildUnnamed5016() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5016(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1EnvironmentGroup = 0;
api.GoogleCloudApigeeV1EnvironmentGroup
    buildGoogleCloudApigeeV1EnvironmentGroup() {
  var o = api.GoogleCloudApigeeV1EnvironmentGroup();
  buildCounterGoogleCloudApigeeV1EnvironmentGroup++;
  if (buildCounterGoogleCloudApigeeV1EnvironmentGroup < 3) {
    o.createdAt = 'foo';
    o.hostnames = buildUnnamed5016();
    o.lastModifiedAt = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1EnvironmentGroup--;
  return o;
}

void checkGoogleCloudApigeeV1EnvironmentGroup(
    api.GoogleCloudApigeeV1EnvironmentGroup o) {
  buildCounterGoogleCloudApigeeV1EnvironmentGroup++;
  if (buildCounterGoogleCloudApigeeV1EnvironmentGroup < 3) {
    unittest.expect(o.createdAt, unittest.equals('foo'));
    checkUnnamed5016(o.hostnames);
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1EnvironmentGroup--;
}

core.int buildCounterGoogleCloudApigeeV1EnvironmentGroupAttachment = 0;
api.GoogleCloudApigeeV1EnvironmentGroupAttachment
    buildGoogleCloudApigeeV1EnvironmentGroupAttachment() {
  var o = api.GoogleCloudApigeeV1EnvironmentGroupAttachment();
  buildCounterGoogleCloudApigeeV1EnvironmentGroupAttachment++;
  if (buildCounterGoogleCloudApigeeV1EnvironmentGroupAttachment < 3) {
    o.createdAt = 'foo';
    o.environment = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1EnvironmentGroupAttachment--;
  return o;
}

void checkGoogleCloudApigeeV1EnvironmentGroupAttachment(
    api.GoogleCloudApigeeV1EnvironmentGroupAttachment o) {
  buildCounterGoogleCloudApigeeV1EnvironmentGroupAttachment++;
  if (buildCounterGoogleCloudApigeeV1EnvironmentGroupAttachment < 3) {
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1EnvironmentGroupAttachment--;
}

core.List<core.String> buildUnnamed5017() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5017(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudApigeeV1RoutingRule> buildUnnamed5018() {
  var o = <api.GoogleCloudApigeeV1RoutingRule>[];
  o.add(buildGoogleCloudApigeeV1RoutingRule());
  o.add(buildGoogleCloudApigeeV1RoutingRule());
  return o;
}

void checkUnnamed5018(core.List<api.GoogleCloudApigeeV1RoutingRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1RoutingRule(
      o[0] as api.GoogleCloudApigeeV1RoutingRule);
  checkGoogleCloudApigeeV1RoutingRule(
      o[1] as api.GoogleCloudApigeeV1RoutingRule);
}

core.int buildCounterGoogleCloudApigeeV1EnvironmentGroupConfig = 0;
api.GoogleCloudApigeeV1EnvironmentGroupConfig
    buildGoogleCloudApigeeV1EnvironmentGroupConfig() {
  var o = api.GoogleCloudApigeeV1EnvironmentGroupConfig();
  buildCounterGoogleCloudApigeeV1EnvironmentGroupConfig++;
  if (buildCounterGoogleCloudApigeeV1EnvironmentGroupConfig < 3) {
    o.hostnames = buildUnnamed5017();
    o.name = 'foo';
    o.revisionId = 'foo';
    o.routingRules = buildUnnamed5018();
    o.uid = 'foo';
  }
  buildCounterGoogleCloudApigeeV1EnvironmentGroupConfig--;
  return o;
}

void checkGoogleCloudApigeeV1EnvironmentGroupConfig(
    api.GoogleCloudApigeeV1EnvironmentGroupConfig o) {
  buildCounterGoogleCloudApigeeV1EnvironmentGroupConfig++;
  if (buildCounterGoogleCloudApigeeV1EnvironmentGroupConfig < 3) {
    checkUnnamed5017(o.hostnames);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.revisionId, unittest.equals('foo'));
    checkUnnamed5018(o.routingRules);
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1EnvironmentGroupConfig--;
}

core.int buildCounterGoogleCloudApigeeV1Export = 0;
api.GoogleCloudApigeeV1Export buildGoogleCloudApigeeV1Export() {
  var o = api.GoogleCloudApigeeV1Export();
  buildCounterGoogleCloudApigeeV1Export++;
  if (buildCounterGoogleCloudApigeeV1Export < 3) {
    o.created = 'foo';
    o.datastoreName = 'foo';
    o.description = 'foo';
    o.error = 'foo';
    o.executionTime = 'foo';
    o.name = 'foo';
    o.self = 'foo';
    o.state = 'foo';
    o.updated = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Export--;
  return o;
}

void checkGoogleCloudApigeeV1Export(api.GoogleCloudApigeeV1Export o) {
  buildCounterGoogleCloudApigeeV1Export++;
  if (buildCounterGoogleCloudApigeeV1Export < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.datastoreName, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.error, unittest.equals('foo'));
    unittest.expect(o.executionTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.self, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updated, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Export--;
}

core.int buildCounterGoogleCloudApigeeV1ExportRequest = 0;
api.GoogleCloudApigeeV1ExportRequest buildGoogleCloudApigeeV1ExportRequest() {
  var o = api.GoogleCloudApigeeV1ExportRequest();
  buildCounterGoogleCloudApigeeV1ExportRequest++;
  if (buildCounterGoogleCloudApigeeV1ExportRequest < 3) {
    o.csvDelimiter = 'foo';
    o.datastoreName = 'foo';
    o.dateRange = buildGoogleCloudApigeeV1DateRange();
    o.description = 'foo';
    o.name = 'foo';
    o.outputFormat = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ExportRequest--;
  return o;
}

void checkGoogleCloudApigeeV1ExportRequest(
    api.GoogleCloudApigeeV1ExportRequest o) {
  buildCounterGoogleCloudApigeeV1ExportRequest++;
  if (buildCounterGoogleCloudApigeeV1ExportRequest < 3) {
    unittest.expect(o.csvDelimiter, unittest.equals('foo'));
    unittest.expect(o.datastoreName, unittest.equals('foo'));
    checkGoogleCloudApigeeV1DateRange(
        o.dateRange as api.GoogleCloudApigeeV1DateRange);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.outputFormat, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ExportRequest--;
}

core.int buildCounterGoogleCloudApigeeV1FlowHook = 0;
api.GoogleCloudApigeeV1FlowHook buildGoogleCloudApigeeV1FlowHook() {
  var o = api.GoogleCloudApigeeV1FlowHook();
  buildCounterGoogleCloudApigeeV1FlowHook++;
  if (buildCounterGoogleCloudApigeeV1FlowHook < 3) {
    o.continueOnError = true;
    o.description = 'foo';
    o.flowHookPoint = 'foo';
    o.sharedFlow = 'foo';
  }
  buildCounterGoogleCloudApigeeV1FlowHook--;
  return o;
}

void checkGoogleCloudApigeeV1FlowHook(api.GoogleCloudApigeeV1FlowHook o) {
  buildCounterGoogleCloudApigeeV1FlowHook++;
  if (buildCounterGoogleCloudApigeeV1FlowHook < 3) {
    unittest.expect(o.continueOnError, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.flowHookPoint, unittest.equals('foo'));
    unittest.expect(o.sharedFlow, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1FlowHook--;
}

core.int buildCounterGoogleCloudApigeeV1FlowHookConfig = 0;
api.GoogleCloudApigeeV1FlowHookConfig buildGoogleCloudApigeeV1FlowHookConfig() {
  var o = api.GoogleCloudApigeeV1FlowHookConfig();
  buildCounterGoogleCloudApigeeV1FlowHookConfig++;
  if (buildCounterGoogleCloudApigeeV1FlowHookConfig < 3) {
    o.continueOnError = true;
    o.name = 'foo';
    o.sharedFlowName = 'foo';
  }
  buildCounterGoogleCloudApigeeV1FlowHookConfig--;
  return o;
}

void checkGoogleCloudApigeeV1FlowHookConfig(
    api.GoogleCloudApigeeV1FlowHookConfig o) {
  buildCounterGoogleCloudApigeeV1FlowHookConfig++;
  if (buildCounterGoogleCloudApigeeV1FlowHookConfig < 3) {
    unittest.expect(o.continueOnError, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sharedFlowName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1FlowHookConfig--;
}

core.int buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest = 0;
api.GoogleCloudApigeeV1GetSyncAuthorizationRequest
    buildGoogleCloudApigeeV1GetSyncAuthorizationRequest() {
  var o = api.GoogleCloudApigeeV1GetSyncAuthorizationRequest();
  buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest++;
  if (buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest < 3) {}
  buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest--;
  return o;
}

void checkGoogleCloudApigeeV1GetSyncAuthorizationRequest(
    api.GoogleCloudApigeeV1GetSyncAuthorizationRequest o) {
  buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest++;
  if (buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest < 3) {}
  buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest--;
}

core.List<api.GoogleCloudApigeeV1EnvironmentGroupConfig> buildUnnamed5019() {
  var o = <api.GoogleCloudApigeeV1EnvironmentGroupConfig>[];
  o.add(buildGoogleCloudApigeeV1EnvironmentGroupConfig());
  o.add(buildGoogleCloudApigeeV1EnvironmentGroupConfig());
  return o;
}

void checkUnnamed5019(
    core.List<api.GoogleCloudApigeeV1EnvironmentGroupConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1EnvironmentGroupConfig(
      o[0] as api.GoogleCloudApigeeV1EnvironmentGroupConfig);
  checkGoogleCloudApigeeV1EnvironmentGroupConfig(
      o[1] as api.GoogleCloudApigeeV1EnvironmentGroupConfig);
}

core.int buildCounterGoogleCloudApigeeV1IngressConfig = 0;
api.GoogleCloudApigeeV1IngressConfig buildGoogleCloudApigeeV1IngressConfig() {
  var o = api.GoogleCloudApigeeV1IngressConfig();
  buildCounterGoogleCloudApigeeV1IngressConfig++;
  if (buildCounterGoogleCloudApigeeV1IngressConfig < 3) {
    o.environmentGroups = buildUnnamed5019();
    o.name = 'foo';
    o.revisionCreateTime = 'foo';
    o.revisionId = 'foo';
    o.uid = 'foo';
  }
  buildCounterGoogleCloudApigeeV1IngressConfig--;
  return o;
}

void checkGoogleCloudApigeeV1IngressConfig(
    api.GoogleCloudApigeeV1IngressConfig o) {
  buildCounterGoogleCloudApigeeV1IngressConfig++;
  if (buildCounterGoogleCloudApigeeV1IngressConfig < 3) {
    checkUnnamed5019(o.environmentGroups);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.revisionCreateTime, unittest.equals('foo'));
    unittest.expect(o.revisionId, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1IngressConfig--;
}

core.int buildCounterGoogleCloudApigeeV1Instance = 0;
api.GoogleCloudApigeeV1Instance buildGoogleCloudApigeeV1Instance() {
  var o = api.GoogleCloudApigeeV1Instance();
  buildCounterGoogleCloudApigeeV1Instance++;
  if (buildCounterGoogleCloudApigeeV1Instance < 3) {
    o.createdAt = 'foo';
    o.description = 'foo';
    o.diskEncryptionKeyName = 'foo';
    o.displayName = 'foo';
    o.host = 'foo';
    o.lastModifiedAt = 'foo';
    o.location = 'foo';
    o.name = 'foo';
    o.port = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Instance--;
  return o;
}

void checkGoogleCloudApigeeV1Instance(api.GoogleCloudApigeeV1Instance o) {
  buildCounterGoogleCloudApigeeV1Instance++;
  if (buildCounterGoogleCloudApigeeV1Instance < 3) {
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.diskEncryptionKeyName, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Instance--;
}

core.int buildCounterGoogleCloudApigeeV1InstanceAttachment = 0;
api.GoogleCloudApigeeV1InstanceAttachment
    buildGoogleCloudApigeeV1InstanceAttachment() {
  var o = api.GoogleCloudApigeeV1InstanceAttachment();
  buildCounterGoogleCloudApigeeV1InstanceAttachment++;
  if (buildCounterGoogleCloudApigeeV1InstanceAttachment < 3) {
    o.createdAt = 'foo';
    o.environment = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1InstanceAttachment--;
  return o;
}

void checkGoogleCloudApigeeV1InstanceAttachment(
    api.GoogleCloudApigeeV1InstanceAttachment o) {
  buildCounterGoogleCloudApigeeV1InstanceAttachment++;
  if (buildCounterGoogleCloudApigeeV1InstanceAttachment < 3) {
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1InstanceAttachment--;
}

core.List<api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision>
    buildUnnamed5020() {
  var o = <api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision>[];
  o.add(buildGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision());
  o.add(buildGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision());
  return o;
}

void checkUnnamed5020(
    core.List<api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision(
      o[0] as api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision);
  checkGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision(
      o[1] as api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision);
}

core.List<api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute>
    buildUnnamed5021() {
  var o = <api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute>[];
  o.add(buildGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute());
  o.add(buildGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute());
  return o;
}

void checkUnnamed5021(
    core.List<api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute(
      o[0] as api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute);
  checkGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute(
      o[1] as api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute);
}

core.int buildCounterGoogleCloudApigeeV1InstanceDeploymentStatus = 0;
api.GoogleCloudApigeeV1InstanceDeploymentStatus
    buildGoogleCloudApigeeV1InstanceDeploymentStatus() {
  var o = api.GoogleCloudApigeeV1InstanceDeploymentStatus();
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatus++;
  if (buildCounterGoogleCloudApigeeV1InstanceDeploymentStatus < 3) {
    o.deployedRevisions = buildUnnamed5020();
    o.deployedRoutes = buildUnnamed5021();
    o.instance = 'foo';
  }
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatus--;
  return o;
}

void checkGoogleCloudApigeeV1InstanceDeploymentStatus(
    api.GoogleCloudApigeeV1InstanceDeploymentStatus o) {
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatus++;
  if (buildCounterGoogleCloudApigeeV1InstanceDeploymentStatus < 3) {
    checkUnnamed5020(o.deployedRevisions);
    checkUnnamed5021(o.deployedRoutes);
    unittest.expect(o.instance, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatus--;
}

core.int
    buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision = 0;
api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision
    buildGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision() {
  var o = api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision();
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision++;
  if (buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision <
      3) {
    o.percentage = 42;
    o.revision = 'foo';
  }
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision--;
  return o;
}

void checkGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision(
    api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision o) {
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision++;
  if (buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision <
      3) {
    unittest.expect(o.percentage, unittest.equals(42));
    unittest.expect(o.revision, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision--;
}

core.int buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute =
    0;
api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute
    buildGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute() {
  var o = api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute();
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute++;
  if (buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute <
      3) {
    o.basepath = 'foo';
    o.envgroup = 'foo';
    o.environment = 'foo';
    o.percentage = 42;
  }
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute--;
  return o;
}

void checkGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute(
    api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute o) {
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute++;
  if (buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute <
      3) {
    unittest.expect(o.basepath, unittest.equals('foo'));
    unittest.expect(o.envgroup, unittest.equals('foo'));
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.percentage, unittest.equals(42));
  }
  buildCounterGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute--;
}

core.int buildCounterGoogleCloudApigeeV1KeyAliasReference = 0;
api.GoogleCloudApigeeV1KeyAliasReference
    buildGoogleCloudApigeeV1KeyAliasReference() {
  var o = api.GoogleCloudApigeeV1KeyAliasReference();
  buildCounterGoogleCloudApigeeV1KeyAliasReference++;
  if (buildCounterGoogleCloudApigeeV1KeyAliasReference < 3) {
    o.aliasId = 'foo';
    o.reference = 'foo';
  }
  buildCounterGoogleCloudApigeeV1KeyAliasReference--;
  return o;
}

void checkGoogleCloudApigeeV1KeyAliasReference(
    api.GoogleCloudApigeeV1KeyAliasReference o) {
  buildCounterGoogleCloudApigeeV1KeyAliasReference++;
  if (buildCounterGoogleCloudApigeeV1KeyAliasReference < 3) {
    unittest.expect(o.aliasId, unittest.equals('foo'));
    unittest.expect(o.reference, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1KeyAliasReference--;
}

core.int buildCounterGoogleCloudApigeeV1KeyValueMap = 0;
api.GoogleCloudApigeeV1KeyValueMap buildGoogleCloudApigeeV1KeyValueMap() {
  var o = api.GoogleCloudApigeeV1KeyValueMap();
  buildCounterGoogleCloudApigeeV1KeyValueMap++;
  if (buildCounterGoogleCloudApigeeV1KeyValueMap < 3) {
    o.encrypted = true;
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1KeyValueMap--;
  return o;
}

void checkGoogleCloudApigeeV1KeyValueMap(api.GoogleCloudApigeeV1KeyValueMap o) {
  buildCounterGoogleCloudApigeeV1KeyValueMap++;
  if (buildCounterGoogleCloudApigeeV1KeyValueMap < 3) {
    unittest.expect(o.encrypted, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1KeyValueMap--;
}

core.List<core.String> buildUnnamed5022() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5022(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Keystore = 0;
api.GoogleCloudApigeeV1Keystore buildGoogleCloudApigeeV1Keystore() {
  var o = api.GoogleCloudApigeeV1Keystore();
  buildCounterGoogleCloudApigeeV1Keystore++;
  if (buildCounterGoogleCloudApigeeV1Keystore < 3) {
    o.aliases = buildUnnamed5022();
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Keystore--;
  return o;
}

void checkGoogleCloudApigeeV1Keystore(api.GoogleCloudApigeeV1Keystore o) {
  buildCounterGoogleCloudApigeeV1Keystore++;
  if (buildCounterGoogleCloudApigeeV1Keystore < 3) {
    checkUnnamed5022(o.aliases);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Keystore--;
}

core.List<api.GoogleCloudApigeeV1AliasRevisionConfig> buildUnnamed5023() {
  var o = <api.GoogleCloudApigeeV1AliasRevisionConfig>[];
  o.add(buildGoogleCloudApigeeV1AliasRevisionConfig());
  o.add(buildGoogleCloudApigeeV1AliasRevisionConfig());
  return o;
}

void checkUnnamed5023(core.List<api.GoogleCloudApigeeV1AliasRevisionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1AliasRevisionConfig(
      o[0] as api.GoogleCloudApigeeV1AliasRevisionConfig);
  checkGoogleCloudApigeeV1AliasRevisionConfig(
      o[1] as api.GoogleCloudApigeeV1AliasRevisionConfig);
}

core.int buildCounterGoogleCloudApigeeV1KeystoreConfig = 0;
api.GoogleCloudApigeeV1KeystoreConfig buildGoogleCloudApigeeV1KeystoreConfig() {
  var o = api.GoogleCloudApigeeV1KeystoreConfig();
  buildCounterGoogleCloudApigeeV1KeystoreConfig++;
  if (buildCounterGoogleCloudApigeeV1KeystoreConfig < 3) {
    o.aliases = buildUnnamed5023();
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1KeystoreConfig--;
  return o;
}

void checkGoogleCloudApigeeV1KeystoreConfig(
    api.GoogleCloudApigeeV1KeystoreConfig o) {
  buildCounterGoogleCloudApigeeV1KeystoreConfig++;
  if (buildCounterGoogleCloudApigeeV1KeystoreConfig < 3) {
    checkUnnamed5023(o.aliases);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1KeystoreConfig--;
}

core.List<api.GoogleCloudApigeeV1ApiCategoryData> buildUnnamed5024() {
  var o = <api.GoogleCloudApigeeV1ApiCategoryData>[];
  o.add(buildGoogleCloudApigeeV1ApiCategoryData());
  o.add(buildGoogleCloudApigeeV1ApiCategoryData());
  return o;
}

void checkUnnamed5024(core.List<api.GoogleCloudApigeeV1ApiCategoryData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ApiCategoryData(
      o[0] as api.GoogleCloudApigeeV1ApiCategoryData);
  checkGoogleCloudApigeeV1ApiCategoryData(
      o[1] as api.GoogleCloudApigeeV1ApiCategoryData);
}

core.int buildCounterGoogleCloudApigeeV1ListApiCategoriesResponse = 0;
api.GoogleCloudApigeeV1ListApiCategoriesResponse
    buildGoogleCloudApigeeV1ListApiCategoriesResponse() {
  var o = api.GoogleCloudApigeeV1ListApiCategoriesResponse();
  buildCounterGoogleCloudApigeeV1ListApiCategoriesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListApiCategoriesResponse < 3) {
    o.data = buildUnnamed5024();
    o.errorCode = 'foo';
    o.message = 'foo';
    o.requestId = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ListApiCategoriesResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListApiCategoriesResponse(
    api.GoogleCloudApigeeV1ListApiCategoriesResponse o) {
  buildCounterGoogleCloudApigeeV1ListApiCategoriesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListApiCategoriesResponse < 3) {
    checkUnnamed5024(o.data);
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ListApiCategoriesResponse--;
}

core.List<api.GoogleCloudApigeeV1ApiProduct> buildUnnamed5025() {
  var o = <api.GoogleCloudApigeeV1ApiProduct>[];
  o.add(buildGoogleCloudApigeeV1ApiProduct());
  o.add(buildGoogleCloudApigeeV1ApiProduct());
  return o;
}

void checkUnnamed5025(core.List<api.GoogleCloudApigeeV1ApiProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ApiProduct(o[0] as api.GoogleCloudApigeeV1ApiProduct);
  checkGoogleCloudApigeeV1ApiProduct(o[1] as api.GoogleCloudApigeeV1ApiProduct);
}

core.int buildCounterGoogleCloudApigeeV1ListApiProductsResponse = 0;
api.GoogleCloudApigeeV1ListApiProductsResponse
    buildGoogleCloudApigeeV1ListApiProductsResponse() {
  var o = api.GoogleCloudApigeeV1ListApiProductsResponse();
  buildCounterGoogleCloudApigeeV1ListApiProductsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListApiProductsResponse < 3) {
    o.apiProduct = buildUnnamed5025();
  }
  buildCounterGoogleCloudApigeeV1ListApiProductsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListApiProductsResponse(
    api.GoogleCloudApigeeV1ListApiProductsResponse o) {
  buildCounterGoogleCloudApigeeV1ListApiProductsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListApiProductsResponse < 3) {
    checkUnnamed5025(o.apiProduct);
  }
  buildCounterGoogleCloudApigeeV1ListApiProductsResponse--;
}

core.List<api.GoogleCloudApigeeV1ApiProxy> buildUnnamed5026() {
  var o = <api.GoogleCloudApigeeV1ApiProxy>[];
  o.add(buildGoogleCloudApigeeV1ApiProxy());
  o.add(buildGoogleCloudApigeeV1ApiProxy());
  return o;
}

void checkUnnamed5026(core.List<api.GoogleCloudApigeeV1ApiProxy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ApiProxy(o[0] as api.GoogleCloudApigeeV1ApiProxy);
  checkGoogleCloudApigeeV1ApiProxy(o[1] as api.GoogleCloudApigeeV1ApiProxy);
}

core.int buildCounterGoogleCloudApigeeV1ListApiProxiesResponse = 0;
api.GoogleCloudApigeeV1ListApiProxiesResponse
    buildGoogleCloudApigeeV1ListApiProxiesResponse() {
  var o = api.GoogleCloudApigeeV1ListApiProxiesResponse();
  buildCounterGoogleCloudApigeeV1ListApiProxiesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListApiProxiesResponse < 3) {
    o.proxies = buildUnnamed5026();
  }
  buildCounterGoogleCloudApigeeV1ListApiProxiesResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListApiProxiesResponse(
    api.GoogleCloudApigeeV1ListApiProxiesResponse o) {
  buildCounterGoogleCloudApigeeV1ListApiProxiesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListApiProxiesResponse < 3) {
    checkUnnamed5026(o.proxies);
  }
  buildCounterGoogleCloudApigeeV1ListApiProxiesResponse--;
}

core.List<api.GoogleCloudApigeeV1App> buildUnnamed5027() {
  var o = <api.GoogleCloudApigeeV1App>[];
  o.add(buildGoogleCloudApigeeV1App());
  o.add(buildGoogleCloudApigeeV1App());
  return o;
}

void checkUnnamed5027(core.List<api.GoogleCloudApigeeV1App> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1App(o[0] as api.GoogleCloudApigeeV1App);
  checkGoogleCloudApigeeV1App(o[1] as api.GoogleCloudApigeeV1App);
}

core.int buildCounterGoogleCloudApigeeV1ListAppsResponse = 0;
api.GoogleCloudApigeeV1ListAppsResponse
    buildGoogleCloudApigeeV1ListAppsResponse() {
  var o = api.GoogleCloudApigeeV1ListAppsResponse();
  buildCounterGoogleCloudApigeeV1ListAppsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListAppsResponse < 3) {
    o.app = buildUnnamed5027();
  }
  buildCounterGoogleCloudApigeeV1ListAppsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListAppsResponse(
    api.GoogleCloudApigeeV1ListAppsResponse o) {
  buildCounterGoogleCloudApigeeV1ListAppsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListAppsResponse < 3) {
    checkUnnamed5027(o.app);
  }
  buildCounterGoogleCloudApigeeV1ListAppsResponse--;
}

core.List<api.GoogleCloudApigeeV1AsyncQuery> buildUnnamed5028() {
  var o = <api.GoogleCloudApigeeV1AsyncQuery>[];
  o.add(buildGoogleCloudApigeeV1AsyncQuery());
  o.add(buildGoogleCloudApigeeV1AsyncQuery());
  return o;
}

void checkUnnamed5028(core.List<api.GoogleCloudApigeeV1AsyncQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1AsyncQuery(o[0] as api.GoogleCloudApigeeV1AsyncQuery);
  checkGoogleCloudApigeeV1AsyncQuery(o[1] as api.GoogleCloudApigeeV1AsyncQuery);
}

core.int buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse = 0;
api.GoogleCloudApigeeV1ListAsyncQueriesResponse
    buildGoogleCloudApigeeV1ListAsyncQueriesResponse() {
  var o = api.GoogleCloudApigeeV1ListAsyncQueriesResponse();
  buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse < 3) {
    o.queries = buildUnnamed5028();
  }
  buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListAsyncQueriesResponse(
    api.GoogleCloudApigeeV1ListAsyncQueriesResponse o) {
  buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse < 3) {
    checkUnnamed5028(o.queries);
  }
  buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse--;
}

core.List<api.GoogleCloudApigeeV1CustomReport> buildUnnamed5029() {
  var o = <api.GoogleCloudApigeeV1CustomReport>[];
  o.add(buildGoogleCloudApigeeV1CustomReport());
  o.add(buildGoogleCloudApigeeV1CustomReport());
  return o;
}

void checkUnnamed5029(core.List<api.GoogleCloudApigeeV1CustomReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1CustomReport(
      o[0] as api.GoogleCloudApigeeV1CustomReport);
  checkGoogleCloudApigeeV1CustomReport(
      o[1] as api.GoogleCloudApigeeV1CustomReport);
}

core.int buildCounterGoogleCloudApigeeV1ListCustomReportsResponse = 0;
api.GoogleCloudApigeeV1ListCustomReportsResponse
    buildGoogleCloudApigeeV1ListCustomReportsResponse() {
  var o = api.GoogleCloudApigeeV1ListCustomReportsResponse();
  buildCounterGoogleCloudApigeeV1ListCustomReportsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListCustomReportsResponse < 3) {
    o.qualifier = buildUnnamed5029();
  }
  buildCounterGoogleCloudApigeeV1ListCustomReportsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListCustomReportsResponse(
    api.GoogleCloudApigeeV1ListCustomReportsResponse o) {
  buildCounterGoogleCloudApigeeV1ListCustomReportsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListCustomReportsResponse < 3) {
    checkUnnamed5029(o.qualifier);
  }
  buildCounterGoogleCloudApigeeV1ListCustomReportsResponse--;
}

core.List<api.GoogleCloudApigeeV1Datastore> buildUnnamed5030() {
  var o = <api.GoogleCloudApigeeV1Datastore>[];
  o.add(buildGoogleCloudApigeeV1Datastore());
  o.add(buildGoogleCloudApigeeV1Datastore());
  return o;
}

void checkUnnamed5030(core.List<api.GoogleCloudApigeeV1Datastore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Datastore(o[0] as api.GoogleCloudApigeeV1Datastore);
  checkGoogleCloudApigeeV1Datastore(o[1] as api.GoogleCloudApigeeV1Datastore);
}

core.int buildCounterGoogleCloudApigeeV1ListDatastoresResponse = 0;
api.GoogleCloudApigeeV1ListDatastoresResponse
    buildGoogleCloudApigeeV1ListDatastoresResponse() {
  var o = api.GoogleCloudApigeeV1ListDatastoresResponse();
  buildCounterGoogleCloudApigeeV1ListDatastoresResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDatastoresResponse < 3) {
    o.datastores = buildUnnamed5030();
  }
  buildCounterGoogleCloudApigeeV1ListDatastoresResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListDatastoresResponse(
    api.GoogleCloudApigeeV1ListDatastoresResponse o) {
  buildCounterGoogleCloudApigeeV1ListDatastoresResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDatastoresResponse < 3) {
    checkUnnamed5030(o.datastores);
  }
  buildCounterGoogleCloudApigeeV1ListDatastoresResponse--;
}

core.List<api.GoogleCloudApigeeV1Session> buildUnnamed5031() {
  var o = <api.GoogleCloudApigeeV1Session>[];
  o.add(buildGoogleCloudApigeeV1Session());
  o.add(buildGoogleCloudApigeeV1Session());
  return o;
}

void checkUnnamed5031(core.List<api.GoogleCloudApigeeV1Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Session(o[0] as api.GoogleCloudApigeeV1Session);
  checkGoogleCloudApigeeV1Session(o[1] as api.GoogleCloudApigeeV1Session);
}

core.int buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse = 0;
api.GoogleCloudApigeeV1ListDebugSessionsResponse
    buildGoogleCloudApigeeV1ListDebugSessionsResponse() {
  var o = api.GoogleCloudApigeeV1ListDebugSessionsResponse();
  buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sessions = buildUnnamed5031();
  }
  buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListDebugSessionsResponse(
    api.GoogleCloudApigeeV1ListDebugSessionsResponse o) {
  buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5031(o.sessions);
  }
  buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse--;
}

core.List<api.GoogleCloudApigeeV1Deployment> buildUnnamed5032() {
  var o = <api.GoogleCloudApigeeV1Deployment>[];
  o.add(buildGoogleCloudApigeeV1Deployment());
  o.add(buildGoogleCloudApigeeV1Deployment());
  return o;
}

void checkUnnamed5032(core.List<api.GoogleCloudApigeeV1Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Deployment(o[0] as api.GoogleCloudApigeeV1Deployment);
  checkGoogleCloudApigeeV1Deployment(o[1] as api.GoogleCloudApigeeV1Deployment);
}

core.int buildCounterGoogleCloudApigeeV1ListDeploymentsResponse = 0;
api.GoogleCloudApigeeV1ListDeploymentsResponse
    buildGoogleCloudApigeeV1ListDeploymentsResponse() {
  var o = api.GoogleCloudApigeeV1ListDeploymentsResponse();
  buildCounterGoogleCloudApigeeV1ListDeploymentsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed5032();
  }
  buildCounterGoogleCloudApigeeV1ListDeploymentsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListDeploymentsResponse(
    api.GoogleCloudApigeeV1ListDeploymentsResponse o) {
  buildCounterGoogleCloudApigeeV1ListDeploymentsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDeploymentsResponse < 3) {
    checkUnnamed5032(o.deployments);
  }
  buildCounterGoogleCloudApigeeV1ListDeploymentsResponse--;
}

core.List<api.GoogleCloudApigeeV1DeveloperApp> buildUnnamed5033() {
  var o = <api.GoogleCloudApigeeV1DeveloperApp>[];
  o.add(buildGoogleCloudApigeeV1DeveloperApp());
  o.add(buildGoogleCloudApigeeV1DeveloperApp());
  return o;
}

void checkUnnamed5033(core.List<api.GoogleCloudApigeeV1DeveloperApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1DeveloperApp(
      o[0] as api.GoogleCloudApigeeV1DeveloperApp);
  checkGoogleCloudApigeeV1DeveloperApp(
      o[1] as api.GoogleCloudApigeeV1DeveloperApp);
}

core.int buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse = 0;
api.GoogleCloudApigeeV1ListDeveloperAppsResponse
    buildGoogleCloudApigeeV1ListDeveloperAppsResponse() {
  var o = api.GoogleCloudApigeeV1ListDeveloperAppsResponse();
  buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse < 3) {
    o.app = buildUnnamed5033();
  }
  buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListDeveloperAppsResponse(
    api.GoogleCloudApigeeV1ListDeveloperAppsResponse o) {
  buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse < 3) {
    checkUnnamed5033(o.app);
  }
  buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse--;
}

core.List<api.GoogleCloudApigeeV1EnvironmentGroupAttachment>
    buildUnnamed5034() {
  var o = <api.GoogleCloudApigeeV1EnvironmentGroupAttachment>[];
  o.add(buildGoogleCloudApigeeV1EnvironmentGroupAttachment());
  o.add(buildGoogleCloudApigeeV1EnvironmentGroupAttachment());
  return o;
}

void checkUnnamed5034(
    core.List<api.GoogleCloudApigeeV1EnvironmentGroupAttachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1EnvironmentGroupAttachment(
      o[0] as api.GoogleCloudApigeeV1EnvironmentGroupAttachment);
  checkGoogleCloudApigeeV1EnvironmentGroupAttachment(
      o[1] as api.GoogleCloudApigeeV1EnvironmentGroupAttachment);
}

core.int
    buildCounterGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse = 0;
api.GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse
    buildGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse() {
  var o = api.GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse();
  buildCounterGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse <
      3) {
    o.environmentGroupAttachments = buildUnnamed5034();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse(
    api.GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse o) {
  buildCounterGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse <
      3) {
    checkUnnamed5034(o.environmentGroupAttachments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse--;
}

core.List<api.GoogleCloudApigeeV1EnvironmentGroup> buildUnnamed5035() {
  var o = <api.GoogleCloudApigeeV1EnvironmentGroup>[];
  o.add(buildGoogleCloudApigeeV1EnvironmentGroup());
  o.add(buildGoogleCloudApigeeV1EnvironmentGroup());
  return o;
}

void checkUnnamed5035(core.List<api.GoogleCloudApigeeV1EnvironmentGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1EnvironmentGroup(
      o[0] as api.GoogleCloudApigeeV1EnvironmentGroup);
  checkGoogleCloudApigeeV1EnvironmentGroup(
      o[1] as api.GoogleCloudApigeeV1EnvironmentGroup);
}

core.int buildCounterGoogleCloudApigeeV1ListEnvironmentGroupsResponse = 0;
api.GoogleCloudApigeeV1ListEnvironmentGroupsResponse
    buildGoogleCloudApigeeV1ListEnvironmentGroupsResponse() {
  var o = api.GoogleCloudApigeeV1ListEnvironmentGroupsResponse();
  buildCounterGoogleCloudApigeeV1ListEnvironmentGroupsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListEnvironmentGroupsResponse < 3) {
    o.environmentGroups = buildUnnamed5035();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ListEnvironmentGroupsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListEnvironmentGroupsResponse(
    api.GoogleCloudApigeeV1ListEnvironmentGroupsResponse o) {
  buildCounterGoogleCloudApigeeV1ListEnvironmentGroupsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListEnvironmentGroupsResponse < 3) {
    checkUnnamed5035(o.environmentGroups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ListEnvironmentGroupsResponse--;
}

core.List<api.GoogleCloudApigeeV1ResourceFile> buildUnnamed5036() {
  var o = <api.GoogleCloudApigeeV1ResourceFile>[];
  o.add(buildGoogleCloudApigeeV1ResourceFile());
  o.add(buildGoogleCloudApigeeV1ResourceFile());
  return o;
}

void checkUnnamed5036(core.List<api.GoogleCloudApigeeV1ResourceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ResourceFile(
      o[0] as api.GoogleCloudApigeeV1ResourceFile);
  checkGoogleCloudApigeeV1ResourceFile(
      o[1] as api.GoogleCloudApigeeV1ResourceFile);
}

core.int buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse = 0;
api.GoogleCloudApigeeV1ListEnvironmentResourcesResponse
    buildGoogleCloudApigeeV1ListEnvironmentResourcesResponse() {
  var o = api.GoogleCloudApigeeV1ListEnvironmentResourcesResponse();
  buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse < 3) {
    o.resourceFile = buildUnnamed5036();
  }
  buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListEnvironmentResourcesResponse(
    api.GoogleCloudApigeeV1ListEnvironmentResourcesResponse o) {
  buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse < 3) {
    checkUnnamed5036(o.resourceFile);
  }
  buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse--;
}

core.List<api.GoogleCloudApigeeV1Export> buildUnnamed5037() {
  var o = <api.GoogleCloudApigeeV1Export>[];
  o.add(buildGoogleCloudApigeeV1Export());
  o.add(buildGoogleCloudApigeeV1Export());
  return o;
}

void checkUnnamed5037(core.List<api.GoogleCloudApigeeV1Export> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Export(o[0] as api.GoogleCloudApigeeV1Export);
  checkGoogleCloudApigeeV1Export(o[1] as api.GoogleCloudApigeeV1Export);
}

core.int buildCounterGoogleCloudApigeeV1ListExportsResponse = 0;
api.GoogleCloudApigeeV1ListExportsResponse
    buildGoogleCloudApigeeV1ListExportsResponse() {
  var o = api.GoogleCloudApigeeV1ListExportsResponse();
  buildCounterGoogleCloudApigeeV1ListExportsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListExportsResponse < 3) {
    o.exports = buildUnnamed5037();
  }
  buildCounterGoogleCloudApigeeV1ListExportsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListExportsResponse(
    api.GoogleCloudApigeeV1ListExportsResponse o) {
  buildCounterGoogleCloudApigeeV1ListExportsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListExportsResponse < 3) {
    checkUnnamed5037(o.exports);
  }
  buildCounterGoogleCloudApigeeV1ListExportsResponse--;
}

core.List<api.GoogleCloudApigeeV1ServiceIssuersMapping> buildUnnamed5038() {
  var o = <api.GoogleCloudApigeeV1ServiceIssuersMapping>[];
  o.add(buildGoogleCloudApigeeV1ServiceIssuersMapping());
  o.add(buildGoogleCloudApigeeV1ServiceIssuersMapping());
  return o;
}

void checkUnnamed5038(
    core.List<api.GoogleCloudApigeeV1ServiceIssuersMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ServiceIssuersMapping(
      o[0] as api.GoogleCloudApigeeV1ServiceIssuersMapping);
  checkGoogleCloudApigeeV1ServiceIssuersMapping(
      o[1] as api.GoogleCloudApigeeV1ServiceIssuersMapping);
}

core.int buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse = 0;
api.GoogleCloudApigeeV1ListHybridIssuersResponse
    buildGoogleCloudApigeeV1ListHybridIssuersResponse() {
  var o = api.GoogleCloudApigeeV1ListHybridIssuersResponse();
  buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse++;
  if (buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse < 3) {
    o.issuers = buildUnnamed5038();
  }
  buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListHybridIssuersResponse(
    api.GoogleCloudApigeeV1ListHybridIssuersResponse o) {
  buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse++;
  if (buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse < 3) {
    checkUnnamed5038(o.issuers);
  }
  buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse--;
}

core.List<api.GoogleCloudApigeeV1InstanceAttachment> buildUnnamed5039() {
  var o = <api.GoogleCloudApigeeV1InstanceAttachment>[];
  o.add(buildGoogleCloudApigeeV1InstanceAttachment());
  o.add(buildGoogleCloudApigeeV1InstanceAttachment());
  return o;
}

void checkUnnamed5039(core.List<api.GoogleCloudApigeeV1InstanceAttachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1InstanceAttachment(
      o[0] as api.GoogleCloudApigeeV1InstanceAttachment);
  checkGoogleCloudApigeeV1InstanceAttachment(
      o[1] as api.GoogleCloudApigeeV1InstanceAttachment);
}

core.int buildCounterGoogleCloudApigeeV1ListInstanceAttachmentsResponse = 0;
api.GoogleCloudApigeeV1ListInstanceAttachmentsResponse
    buildGoogleCloudApigeeV1ListInstanceAttachmentsResponse() {
  var o = api.GoogleCloudApigeeV1ListInstanceAttachmentsResponse();
  buildCounterGoogleCloudApigeeV1ListInstanceAttachmentsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListInstanceAttachmentsResponse < 3) {
    o.attachments = buildUnnamed5039();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ListInstanceAttachmentsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListInstanceAttachmentsResponse(
    api.GoogleCloudApigeeV1ListInstanceAttachmentsResponse o) {
  buildCounterGoogleCloudApigeeV1ListInstanceAttachmentsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListInstanceAttachmentsResponse < 3) {
    checkUnnamed5039(o.attachments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ListInstanceAttachmentsResponse--;
}

core.List<api.GoogleCloudApigeeV1Instance> buildUnnamed5040() {
  var o = <api.GoogleCloudApigeeV1Instance>[];
  o.add(buildGoogleCloudApigeeV1Instance());
  o.add(buildGoogleCloudApigeeV1Instance());
  return o;
}

void checkUnnamed5040(core.List<api.GoogleCloudApigeeV1Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Instance(o[0] as api.GoogleCloudApigeeV1Instance);
  checkGoogleCloudApigeeV1Instance(o[1] as api.GoogleCloudApigeeV1Instance);
}

core.int buildCounterGoogleCloudApigeeV1ListInstancesResponse = 0;
api.GoogleCloudApigeeV1ListInstancesResponse
    buildGoogleCloudApigeeV1ListInstancesResponse() {
  var o = api.GoogleCloudApigeeV1ListInstancesResponse();
  buildCounterGoogleCloudApigeeV1ListInstancesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListInstancesResponse < 3) {
    o.instances = buildUnnamed5040();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ListInstancesResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListInstancesResponse(
    api.GoogleCloudApigeeV1ListInstancesResponse o) {
  buildCounterGoogleCloudApigeeV1ListInstancesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListInstancesResponse < 3) {
    checkUnnamed5040(o.instances);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ListInstancesResponse--;
}

core.List<api.GoogleCloudApigeeV1Developer> buildUnnamed5041() {
  var o = <api.GoogleCloudApigeeV1Developer>[];
  o.add(buildGoogleCloudApigeeV1Developer());
  o.add(buildGoogleCloudApigeeV1Developer());
  return o;
}

void checkUnnamed5041(core.List<api.GoogleCloudApigeeV1Developer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Developer(o[0] as api.GoogleCloudApigeeV1Developer);
  checkGoogleCloudApigeeV1Developer(o[1] as api.GoogleCloudApigeeV1Developer);
}

core.int buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse = 0;
api.GoogleCloudApigeeV1ListOfDevelopersResponse
    buildGoogleCloudApigeeV1ListOfDevelopersResponse() {
  var o = api.GoogleCloudApigeeV1ListOfDevelopersResponse();
  buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse++;
  if (buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse < 3) {
    o.developer = buildUnnamed5041();
  }
  buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListOfDevelopersResponse(
    api.GoogleCloudApigeeV1ListOfDevelopersResponse o) {
  buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse++;
  if (buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse < 3) {
    checkUnnamed5041(o.developer);
  }
  buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse--;
}

core.List<api.GoogleCloudApigeeV1OrganizationProjectMapping>
    buildUnnamed5042() {
  var o = <api.GoogleCloudApigeeV1OrganizationProjectMapping>[];
  o.add(buildGoogleCloudApigeeV1OrganizationProjectMapping());
  o.add(buildGoogleCloudApigeeV1OrganizationProjectMapping());
  return o;
}

void checkUnnamed5042(
    core.List<api.GoogleCloudApigeeV1OrganizationProjectMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1OrganizationProjectMapping(
      o[0] as api.GoogleCloudApigeeV1OrganizationProjectMapping);
  checkGoogleCloudApigeeV1OrganizationProjectMapping(
      o[1] as api.GoogleCloudApigeeV1OrganizationProjectMapping);
}

core.int buildCounterGoogleCloudApigeeV1ListOrganizationsResponse = 0;
api.GoogleCloudApigeeV1ListOrganizationsResponse
    buildGoogleCloudApigeeV1ListOrganizationsResponse() {
  var o = api.GoogleCloudApigeeV1ListOrganizationsResponse();
  buildCounterGoogleCloudApigeeV1ListOrganizationsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListOrganizationsResponse < 3) {
    o.organizations = buildUnnamed5042();
  }
  buildCounterGoogleCloudApigeeV1ListOrganizationsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListOrganizationsResponse(
    api.GoogleCloudApigeeV1ListOrganizationsResponse o) {
  buildCounterGoogleCloudApigeeV1ListOrganizationsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListOrganizationsResponse < 3) {
    checkUnnamed5042(o.organizations);
  }
  buildCounterGoogleCloudApigeeV1ListOrganizationsResponse--;
}

core.List<api.GoogleCloudApigeeV1SharedFlow> buildUnnamed5043() {
  var o = <api.GoogleCloudApigeeV1SharedFlow>[];
  o.add(buildGoogleCloudApigeeV1SharedFlow());
  o.add(buildGoogleCloudApigeeV1SharedFlow());
  return o;
}

void checkUnnamed5043(core.List<api.GoogleCloudApigeeV1SharedFlow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1SharedFlow(o[0] as api.GoogleCloudApigeeV1SharedFlow);
  checkGoogleCloudApigeeV1SharedFlow(o[1] as api.GoogleCloudApigeeV1SharedFlow);
}

core.int buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse = 0;
api.GoogleCloudApigeeV1ListSharedFlowsResponse
    buildGoogleCloudApigeeV1ListSharedFlowsResponse() {
  var o = api.GoogleCloudApigeeV1ListSharedFlowsResponse();
  buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse < 3) {
    o.sharedFlows = buildUnnamed5043();
  }
  buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ListSharedFlowsResponse(
    api.GoogleCloudApigeeV1ListSharedFlowsResponse o) {
  buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse < 3) {
    checkUnnamed5043(o.sharedFlows);
  }
  buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse--;
}

core.List<core.String> buildUnnamed5044() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5044(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5045() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5045(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Metadata = 0;
api.GoogleCloudApigeeV1Metadata buildGoogleCloudApigeeV1Metadata() {
  var o = api.GoogleCloudApigeeV1Metadata();
  buildCounterGoogleCloudApigeeV1Metadata++;
  if (buildCounterGoogleCloudApigeeV1Metadata < 3) {
    o.errors = buildUnnamed5044();
    o.notices = buildUnnamed5045();
  }
  buildCounterGoogleCloudApigeeV1Metadata--;
  return o;
}

void checkGoogleCloudApigeeV1Metadata(api.GoogleCloudApigeeV1Metadata o) {
  buildCounterGoogleCloudApigeeV1Metadata++;
  if (buildCounterGoogleCloudApigeeV1Metadata < 3) {
    checkUnnamed5044(o.errors);
    checkUnnamed5045(o.notices);
  }
  buildCounterGoogleCloudApigeeV1Metadata--;
}

core.List<core.Object> buildUnnamed5046() {
  var o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed5046(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o[1]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Metric = 0;
api.GoogleCloudApigeeV1Metric buildGoogleCloudApigeeV1Metric() {
  var o = api.GoogleCloudApigeeV1Metric();
  buildCounterGoogleCloudApigeeV1Metric++;
  if (buildCounterGoogleCloudApigeeV1Metric < 3) {
    o.name = 'foo';
    o.values = buildUnnamed5046();
  }
  buildCounterGoogleCloudApigeeV1Metric--;
  return o;
}

void checkGoogleCloudApigeeV1Metric(api.GoogleCloudApigeeV1Metric o) {
  buildCounterGoogleCloudApigeeV1Metric++;
  if (buildCounterGoogleCloudApigeeV1Metric < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5046(o.values);
  }
  buildCounterGoogleCloudApigeeV1Metric--;
}

core.List<core.String> buildUnnamed5047() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5047(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Operation = 0;
api.GoogleCloudApigeeV1Operation buildGoogleCloudApigeeV1Operation() {
  var o = api.GoogleCloudApigeeV1Operation();
  buildCounterGoogleCloudApigeeV1Operation++;
  if (buildCounterGoogleCloudApigeeV1Operation < 3) {
    o.methods = buildUnnamed5047();
    o.resource = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Operation--;
  return o;
}

void checkGoogleCloudApigeeV1Operation(api.GoogleCloudApigeeV1Operation o) {
  buildCounterGoogleCloudApigeeV1Operation++;
  if (buildCounterGoogleCloudApigeeV1Operation < 3) {
    checkUnnamed5047(o.methods);
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Operation--;
}

core.List<api.GoogleCloudApigeeV1Attribute> buildUnnamed5048() {
  var o = <api.GoogleCloudApigeeV1Attribute>[];
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

void checkUnnamed5048(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0] as api.GoogleCloudApigeeV1Attribute);
  checkGoogleCloudApigeeV1Attribute(o[1] as api.GoogleCloudApigeeV1Attribute);
}

core.List<api.GoogleCloudApigeeV1Operation> buildUnnamed5049() {
  var o = <api.GoogleCloudApigeeV1Operation>[];
  o.add(buildGoogleCloudApigeeV1Operation());
  o.add(buildGoogleCloudApigeeV1Operation());
  return o;
}

void checkUnnamed5049(core.List<api.GoogleCloudApigeeV1Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Operation(o[0] as api.GoogleCloudApigeeV1Operation);
  checkGoogleCloudApigeeV1Operation(o[1] as api.GoogleCloudApigeeV1Operation);
}

core.int buildCounterGoogleCloudApigeeV1OperationConfig = 0;
api.GoogleCloudApigeeV1OperationConfig
    buildGoogleCloudApigeeV1OperationConfig() {
  var o = api.GoogleCloudApigeeV1OperationConfig();
  buildCounterGoogleCloudApigeeV1OperationConfig++;
  if (buildCounterGoogleCloudApigeeV1OperationConfig < 3) {
    o.apiSource = 'foo';
    o.attributes = buildUnnamed5048();
    o.operations = buildUnnamed5049();
    o.quota = buildGoogleCloudApigeeV1Quota();
  }
  buildCounterGoogleCloudApigeeV1OperationConfig--;
  return o;
}

void checkGoogleCloudApigeeV1OperationConfig(
    api.GoogleCloudApigeeV1OperationConfig o) {
  buildCounterGoogleCloudApigeeV1OperationConfig++;
  if (buildCounterGoogleCloudApigeeV1OperationConfig < 3) {
    unittest.expect(o.apiSource, unittest.equals('foo'));
    checkUnnamed5048(o.attributes);
    checkUnnamed5049(o.operations);
    checkGoogleCloudApigeeV1Quota(o.quota as api.GoogleCloudApigeeV1Quota);
  }
  buildCounterGoogleCloudApigeeV1OperationConfig--;
}

core.List<api.GoogleCloudApigeeV1OperationConfig> buildUnnamed5050() {
  var o = <api.GoogleCloudApigeeV1OperationConfig>[];
  o.add(buildGoogleCloudApigeeV1OperationConfig());
  o.add(buildGoogleCloudApigeeV1OperationConfig());
  return o;
}

void checkUnnamed5050(core.List<api.GoogleCloudApigeeV1OperationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1OperationConfig(
      o[0] as api.GoogleCloudApigeeV1OperationConfig);
  checkGoogleCloudApigeeV1OperationConfig(
      o[1] as api.GoogleCloudApigeeV1OperationConfig);
}

core.int buildCounterGoogleCloudApigeeV1OperationGroup = 0;
api.GoogleCloudApigeeV1OperationGroup buildGoogleCloudApigeeV1OperationGroup() {
  var o = api.GoogleCloudApigeeV1OperationGroup();
  buildCounterGoogleCloudApigeeV1OperationGroup++;
  if (buildCounterGoogleCloudApigeeV1OperationGroup < 3) {
    o.operationConfigType = 'foo';
    o.operationConfigs = buildUnnamed5050();
  }
  buildCounterGoogleCloudApigeeV1OperationGroup--;
  return o;
}

void checkGoogleCloudApigeeV1OperationGroup(
    api.GoogleCloudApigeeV1OperationGroup o) {
  buildCounterGoogleCloudApigeeV1OperationGroup++;
  if (buildCounterGoogleCloudApigeeV1OperationGroup < 3) {
    unittest.expect(o.operationConfigType, unittest.equals('foo'));
    checkUnnamed5050(o.operationConfigs);
  }
  buildCounterGoogleCloudApigeeV1OperationGroup--;
}

core.int buildCounterGoogleCloudApigeeV1OperationMetadata = 0;
api.GoogleCloudApigeeV1OperationMetadata
    buildGoogleCloudApigeeV1OperationMetadata() {
  var o = api.GoogleCloudApigeeV1OperationMetadata();
  buildCounterGoogleCloudApigeeV1OperationMetadata++;
  if (buildCounterGoogleCloudApigeeV1OperationMetadata < 3) {
    o.operationType = 'foo';
    o.state = 'foo';
    o.targetResourceName = 'foo';
  }
  buildCounterGoogleCloudApigeeV1OperationMetadata--;
  return o;
}

void checkGoogleCloudApigeeV1OperationMetadata(
    api.GoogleCloudApigeeV1OperationMetadata o) {
  buildCounterGoogleCloudApigeeV1OperationMetadata++;
  if (buildCounterGoogleCloudApigeeV1OperationMetadata < 3) {
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.targetResourceName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1OperationMetadata--;
}

core.int buildCounterGoogleCloudApigeeV1OptimizedStats = 0;
api.GoogleCloudApigeeV1OptimizedStats buildGoogleCloudApigeeV1OptimizedStats() {
  var o = api.GoogleCloudApigeeV1OptimizedStats();
  buildCounterGoogleCloudApigeeV1OptimizedStats++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStats < 3) {
    o.Response = buildGoogleCloudApigeeV1OptimizedStatsResponse();
  }
  buildCounterGoogleCloudApigeeV1OptimizedStats--;
  return o;
}

void checkGoogleCloudApigeeV1OptimizedStats(
    api.GoogleCloudApigeeV1OptimizedStats o) {
  buildCounterGoogleCloudApigeeV1OptimizedStats++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStats < 3) {
    checkGoogleCloudApigeeV1OptimizedStatsResponse(
        o.Response as api.GoogleCloudApigeeV1OptimizedStatsResponse);
  }
  buildCounterGoogleCloudApigeeV1OptimizedStats--;
}

core.List<core.Object> buildUnnamed5051() {
  var o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed5051(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o[1]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1OptimizedStatsNode = 0;
api.GoogleCloudApigeeV1OptimizedStatsNode
    buildGoogleCloudApigeeV1OptimizedStatsNode() {
  var o = api.GoogleCloudApigeeV1OptimizedStatsNode();
  buildCounterGoogleCloudApigeeV1OptimizedStatsNode++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStatsNode < 3) {
    o.data = buildUnnamed5051();
  }
  buildCounterGoogleCloudApigeeV1OptimizedStatsNode--;
  return o;
}

void checkGoogleCloudApigeeV1OptimizedStatsNode(
    api.GoogleCloudApigeeV1OptimizedStatsNode o) {
  buildCounterGoogleCloudApigeeV1OptimizedStatsNode++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStatsNode < 3) {
    checkUnnamed5051(o.data);
  }
  buildCounterGoogleCloudApigeeV1OptimizedStatsNode--;
}

core.List<core.String> buildUnnamed5052() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5052(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1OptimizedStatsResponse = 0;
api.GoogleCloudApigeeV1OptimizedStatsResponse
    buildGoogleCloudApigeeV1OptimizedStatsResponse() {
  var o = api.GoogleCloudApigeeV1OptimizedStatsResponse();
  buildCounterGoogleCloudApigeeV1OptimizedStatsResponse++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStatsResponse < 3) {
    o.TimeUnit = buildUnnamed5052();
    o.metaData = buildGoogleCloudApigeeV1Metadata();
    o.resultTruncated = true;
    o.stats = buildGoogleCloudApigeeV1OptimizedStatsNode();
  }
  buildCounterGoogleCloudApigeeV1OptimizedStatsResponse--;
  return o;
}

void checkGoogleCloudApigeeV1OptimizedStatsResponse(
    api.GoogleCloudApigeeV1OptimizedStatsResponse o) {
  buildCounterGoogleCloudApigeeV1OptimizedStatsResponse++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStatsResponse < 3) {
    checkUnnamed5052(o.TimeUnit);
    checkGoogleCloudApigeeV1Metadata(
        o.metaData as api.GoogleCloudApigeeV1Metadata);
    unittest.expect(o.resultTruncated, unittest.isTrue);
    checkGoogleCloudApigeeV1OptimizedStatsNode(
        o.stats as api.GoogleCloudApigeeV1OptimizedStatsNode);
  }
  buildCounterGoogleCloudApigeeV1OptimizedStatsResponse--;
}

core.List<core.String> buildUnnamed5053() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5053(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5054() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5054(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Organization = 0;
api.GoogleCloudApigeeV1Organization buildGoogleCloudApigeeV1Organization() {
  var o = api.GoogleCloudApigeeV1Organization();
  buildCounterGoogleCloudApigeeV1Organization++;
  if (buildCounterGoogleCloudApigeeV1Organization < 3) {
    o.analyticsRegion = 'foo';
    o.attributes = buildUnnamed5053();
    o.authorizedNetwork = 'foo';
    o.caCertificate = 'foo';
    o.createdAt = 'foo';
    o.customerName = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.environments = buildUnnamed5054();
    o.lastModifiedAt = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.properties = buildGoogleCloudApigeeV1Properties();
    o.runtimeType_ = 'foo';
    o.subscriptionType = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Organization--;
  return o;
}

void checkGoogleCloudApigeeV1Organization(
    api.GoogleCloudApigeeV1Organization o) {
  buildCounterGoogleCloudApigeeV1Organization++;
  if (buildCounterGoogleCloudApigeeV1Organization < 3) {
    unittest.expect(o.analyticsRegion, unittest.equals('foo'));
    checkUnnamed5053(o.attributes);
    unittest.expect(o.authorizedNetwork, unittest.equals('foo'));
    unittest.expect(o.caCertificate, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.customerName, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5054(o.environments);
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkGoogleCloudApigeeV1Properties(
        o.properties as api.GoogleCloudApigeeV1Properties);
    unittest.expect(o.runtimeType_, unittest.equals('foo'));
    unittest.expect(o.subscriptionType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Organization--;
}

core.List<core.String> buildUnnamed5055() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5055(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1OrganizationProjectMapping = 0;
api.GoogleCloudApigeeV1OrganizationProjectMapping
    buildGoogleCloudApigeeV1OrganizationProjectMapping() {
  var o = api.GoogleCloudApigeeV1OrganizationProjectMapping();
  buildCounterGoogleCloudApigeeV1OrganizationProjectMapping++;
  if (buildCounterGoogleCloudApigeeV1OrganizationProjectMapping < 3) {
    o.organization = 'foo';
    o.projectIds = buildUnnamed5055();
  }
  buildCounterGoogleCloudApigeeV1OrganizationProjectMapping--;
  return o;
}

void checkGoogleCloudApigeeV1OrganizationProjectMapping(
    api.GoogleCloudApigeeV1OrganizationProjectMapping o) {
  buildCounterGoogleCloudApigeeV1OrganizationProjectMapping++;
  if (buildCounterGoogleCloudApigeeV1OrganizationProjectMapping < 3) {
    unittest.expect(o.organization, unittest.equals('foo'));
    checkUnnamed5055(o.projectIds);
  }
  buildCounterGoogleCloudApigeeV1OrganizationProjectMapping--;
}

core.int buildCounterGoogleCloudApigeeV1PodStatus = 0;
api.GoogleCloudApigeeV1PodStatus buildGoogleCloudApigeeV1PodStatus() {
  var o = api.GoogleCloudApigeeV1PodStatus();
  buildCounterGoogleCloudApigeeV1PodStatus++;
  if (buildCounterGoogleCloudApigeeV1PodStatus < 3) {
    o.appVersion = 'foo';
    o.deploymentStatus = 'foo';
    o.deploymentStatusTime = 'foo';
    o.deploymentTime = 'foo';
    o.podName = 'foo';
    o.podStatus = 'foo';
    o.podStatusTime = 'foo';
    o.statusCode = 'foo';
    o.statusCodeDetails = 'foo';
  }
  buildCounterGoogleCloudApigeeV1PodStatus--;
  return o;
}

void checkGoogleCloudApigeeV1PodStatus(api.GoogleCloudApigeeV1PodStatus o) {
  buildCounterGoogleCloudApigeeV1PodStatus++;
  if (buildCounterGoogleCloudApigeeV1PodStatus < 3) {
    unittest.expect(o.appVersion, unittest.equals('foo'));
    unittest.expect(o.deploymentStatus, unittest.equals('foo'));
    unittest.expect(o.deploymentStatusTime, unittest.equals('foo'));
    unittest.expect(o.deploymentTime, unittest.equals('foo'));
    unittest.expect(o.podName, unittest.equals('foo'));
    unittest.expect(o.podStatus, unittest.equals('foo'));
    unittest.expect(o.podStatusTime, unittest.equals('foo'));
    unittest.expect(o.statusCode, unittest.equals('foo'));
    unittest.expect(o.statusCodeDetails, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1PodStatus--;
}

core.List<api.GoogleCloudApigeeV1Result> buildUnnamed5056() {
  var o = <api.GoogleCloudApigeeV1Result>[];
  o.add(buildGoogleCloudApigeeV1Result());
  o.add(buildGoogleCloudApigeeV1Result());
  return o;
}

void checkUnnamed5056(core.List<api.GoogleCloudApigeeV1Result> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Result(o[0] as api.GoogleCloudApigeeV1Result);
  checkGoogleCloudApigeeV1Result(o[1] as api.GoogleCloudApigeeV1Result);
}

core.int buildCounterGoogleCloudApigeeV1Point = 0;
api.GoogleCloudApigeeV1Point buildGoogleCloudApigeeV1Point() {
  var o = api.GoogleCloudApigeeV1Point();
  buildCounterGoogleCloudApigeeV1Point++;
  if (buildCounterGoogleCloudApigeeV1Point < 3) {
    o.id = 'foo';
    o.results = buildUnnamed5056();
  }
  buildCounterGoogleCloudApigeeV1Point--;
  return o;
}

void checkGoogleCloudApigeeV1Point(api.GoogleCloudApigeeV1Point o) {
  buildCounterGoogleCloudApigeeV1Point++;
  if (buildCounterGoogleCloudApigeeV1Point < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed5056(o.results);
  }
  buildCounterGoogleCloudApigeeV1Point--;
}

core.List<api.GoogleCloudApigeeV1Property> buildUnnamed5057() {
  var o = <api.GoogleCloudApigeeV1Property>[];
  o.add(buildGoogleCloudApigeeV1Property());
  o.add(buildGoogleCloudApigeeV1Property());
  return o;
}

void checkUnnamed5057(core.List<api.GoogleCloudApigeeV1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Property(o[0] as api.GoogleCloudApigeeV1Property);
  checkGoogleCloudApigeeV1Property(o[1] as api.GoogleCloudApigeeV1Property);
}

core.int buildCounterGoogleCloudApigeeV1Properties = 0;
api.GoogleCloudApigeeV1Properties buildGoogleCloudApigeeV1Properties() {
  var o = api.GoogleCloudApigeeV1Properties();
  buildCounterGoogleCloudApigeeV1Properties++;
  if (buildCounterGoogleCloudApigeeV1Properties < 3) {
    o.property = buildUnnamed5057();
  }
  buildCounterGoogleCloudApigeeV1Properties--;
  return o;
}

void checkGoogleCloudApigeeV1Properties(api.GoogleCloudApigeeV1Properties o) {
  buildCounterGoogleCloudApigeeV1Properties++;
  if (buildCounterGoogleCloudApigeeV1Properties < 3) {
    checkUnnamed5057(o.property);
  }
  buildCounterGoogleCloudApigeeV1Properties--;
}

core.int buildCounterGoogleCloudApigeeV1Property = 0;
api.GoogleCloudApigeeV1Property buildGoogleCloudApigeeV1Property() {
  var o = api.GoogleCloudApigeeV1Property();
  buildCounterGoogleCloudApigeeV1Property++;
  if (buildCounterGoogleCloudApigeeV1Property < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Property--;
  return o;
}

void checkGoogleCloudApigeeV1Property(api.GoogleCloudApigeeV1Property o) {
  buildCounterGoogleCloudApigeeV1Property++;
  if (buildCounterGoogleCloudApigeeV1Property < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Property--;
}

core.int buildCounterGoogleCloudApigeeV1ProvisionOrganizationRequest = 0;
api.GoogleCloudApigeeV1ProvisionOrganizationRequest
    buildGoogleCloudApigeeV1ProvisionOrganizationRequest() {
  var o = api.GoogleCloudApigeeV1ProvisionOrganizationRequest();
  buildCounterGoogleCloudApigeeV1ProvisionOrganizationRequest++;
  if (buildCounterGoogleCloudApigeeV1ProvisionOrganizationRequest < 3) {
    o.analyticsRegion = 'foo';
    o.authorizedNetwork = 'foo';
    o.runtimeLocation = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ProvisionOrganizationRequest--;
  return o;
}

void checkGoogleCloudApigeeV1ProvisionOrganizationRequest(
    api.GoogleCloudApigeeV1ProvisionOrganizationRequest o) {
  buildCounterGoogleCloudApigeeV1ProvisionOrganizationRequest++;
  if (buildCounterGoogleCloudApigeeV1ProvisionOrganizationRequest < 3) {
    unittest.expect(o.analyticsRegion, unittest.equals('foo'));
    unittest.expect(o.authorizedNetwork, unittest.equals('foo'));
    unittest.expect(o.runtimeLocation, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ProvisionOrganizationRequest--;
}

core.List<core.String> buildUnnamed5058() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5058(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudApigeeV1QueryMetric> buildUnnamed5059() {
  var o = <api.GoogleCloudApigeeV1QueryMetric>[];
  o.add(buildGoogleCloudApigeeV1QueryMetric());
  o.add(buildGoogleCloudApigeeV1QueryMetric());
  return o;
}

void checkUnnamed5059(core.List<api.GoogleCloudApigeeV1QueryMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1QueryMetric(
      o[0] as api.GoogleCloudApigeeV1QueryMetric);
  checkGoogleCloudApigeeV1QueryMetric(
      o[1] as api.GoogleCloudApigeeV1QueryMetric);
}

core.int buildCounterGoogleCloudApigeeV1Query = 0;
api.GoogleCloudApigeeV1Query buildGoogleCloudApigeeV1Query() {
  var o = api.GoogleCloudApigeeV1Query();
  buildCounterGoogleCloudApigeeV1Query++;
  if (buildCounterGoogleCloudApigeeV1Query < 3) {
    o.csvDelimiter = 'foo';
    o.dimensions = buildUnnamed5058();
    o.filter = 'foo';
    o.groupByTimeUnit = 'foo';
    o.limit = 42;
    o.metrics = buildUnnamed5059();
    o.name = 'foo';
    o.outputFormat = 'foo';
    o.reportDefinitionId = 'foo';
    o.timeRange = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudApigeeV1Query--;
  return o;
}

void checkGoogleCloudApigeeV1Query(api.GoogleCloudApigeeV1Query o) {
  buildCounterGoogleCloudApigeeV1Query++;
  if (buildCounterGoogleCloudApigeeV1Query < 3) {
    unittest.expect(o.csvDelimiter, unittest.equals('foo'));
    checkUnnamed5058(o.dimensions);
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.groupByTimeUnit, unittest.equals('foo'));
    unittest.expect(o.limit, unittest.equals(42));
    checkUnnamed5059(o.metrics);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.outputFormat, unittest.equals('foo'));
    unittest.expect(o.reportDefinitionId, unittest.equals('foo'));
    var casted9 = (o.timeRange) as core.Map;
    unittest.expect(casted9, unittest.hasLength(3));
    unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted9['bool'], unittest.equals(true));
    unittest.expect(casted9['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Query--;
}

core.List<core.String> buildUnnamed5060() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5060(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5061() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5061(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1QueryMetadata = 0;
api.GoogleCloudApigeeV1QueryMetadata buildGoogleCloudApigeeV1QueryMetadata() {
  var o = api.GoogleCloudApigeeV1QueryMetadata();
  buildCounterGoogleCloudApigeeV1QueryMetadata++;
  if (buildCounterGoogleCloudApigeeV1QueryMetadata < 3) {
    o.dimensions = buildUnnamed5060();
    o.endTimestamp = 'foo';
    o.metrics = buildUnnamed5061();
    o.outputFormat = 'foo';
    o.startTimestamp = 'foo';
    o.timeUnit = 'foo';
  }
  buildCounterGoogleCloudApigeeV1QueryMetadata--;
  return o;
}

void checkGoogleCloudApigeeV1QueryMetadata(
    api.GoogleCloudApigeeV1QueryMetadata o) {
  buildCounterGoogleCloudApigeeV1QueryMetadata++;
  if (buildCounterGoogleCloudApigeeV1QueryMetadata < 3) {
    checkUnnamed5060(o.dimensions);
    unittest.expect(o.endTimestamp, unittest.equals('foo'));
    checkUnnamed5061(o.metrics);
    unittest.expect(o.outputFormat, unittest.equals('foo'));
    unittest.expect(o.startTimestamp, unittest.equals('foo'));
    unittest.expect(o.timeUnit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1QueryMetadata--;
}

core.int buildCounterGoogleCloudApigeeV1QueryMetric = 0;
api.GoogleCloudApigeeV1QueryMetric buildGoogleCloudApigeeV1QueryMetric() {
  var o = api.GoogleCloudApigeeV1QueryMetric();
  buildCounterGoogleCloudApigeeV1QueryMetric++;
  if (buildCounterGoogleCloudApigeeV1QueryMetric < 3) {
    o.alias = 'foo';
    o.function = 'foo';
    o.name = 'foo';
    o.operator = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudApigeeV1QueryMetric--;
  return o;
}

void checkGoogleCloudApigeeV1QueryMetric(api.GoogleCloudApigeeV1QueryMetric o) {
  buildCounterGoogleCloudApigeeV1QueryMetric++;
  if (buildCounterGoogleCloudApigeeV1QueryMetric < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.function, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.operator, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1QueryMetric--;
}

core.int buildCounterGoogleCloudApigeeV1Quota = 0;
api.GoogleCloudApigeeV1Quota buildGoogleCloudApigeeV1Quota() {
  var o = api.GoogleCloudApigeeV1Quota();
  buildCounterGoogleCloudApigeeV1Quota++;
  if (buildCounterGoogleCloudApigeeV1Quota < 3) {
    o.interval = 'foo';
    o.limit = 'foo';
    o.timeUnit = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Quota--;
  return o;
}

void checkGoogleCloudApigeeV1Quota(api.GoogleCloudApigeeV1Quota o) {
  buildCounterGoogleCloudApigeeV1Quota++;
  if (buildCounterGoogleCloudApigeeV1Quota < 3) {
    unittest.expect(o.interval, unittest.equals('foo'));
    unittest.expect(o.limit, unittest.equals('foo'));
    unittest.expect(o.timeUnit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Quota--;
}

core.int buildCounterGoogleCloudApigeeV1Reference = 0;
api.GoogleCloudApigeeV1Reference buildGoogleCloudApigeeV1Reference() {
  var o = api.GoogleCloudApigeeV1Reference();
  buildCounterGoogleCloudApigeeV1Reference++;
  if (buildCounterGoogleCloudApigeeV1Reference < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.refers = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Reference--;
  return o;
}

void checkGoogleCloudApigeeV1Reference(api.GoogleCloudApigeeV1Reference o) {
  buildCounterGoogleCloudApigeeV1Reference++;
  if (buildCounterGoogleCloudApigeeV1Reference < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.refers, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Reference--;
}

core.int buildCounterGoogleCloudApigeeV1ReferenceConfig = 0;
api.GoogleCloudApigeeV1ReferenceConfig
    buildGoogleCloudApigeeV1ReferenceConfig() {
  var o = api.GoogleCloudApigeeV1ReferenceConfig();
  buildCounterGoogleCloudApigeeV1ReferenceConfig++;
  if (buildCounterGoogleCloudApigeeV1ReferenceConfig < 3) {
    o.name = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ReferenceConfig--;
  return o;
}

void checkGoogleCloudApigeeV1ReferenceConfig(
    api.GoogleCloudApigeeV1ReferenceConfig o) {
  buildCounterGoogleCloudApigeeV1ReferenceConfig++;
  if (buildCounterGoogleCloudApigeeV1ReferenceConfig < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ReferenceConfig--;
}

core.List<api.GoogleCloudApigeeV1ResourceStatus> buildUnnamed5062() {
  var o = <api.GoogleCloudApigeeV1ResourceStatus>[];
  o.add(buildGoogleCloudApigeeV1ResourceStatus());
  o.add(buildGoogleCloudApigeeV1ResourceStatus());
  return o;
}

void checkUnnamed5062(core.List<api.GoogleCloudApigeeV1ResourceStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ResourceStatus(
      o[0] as api.GoogleCloudApigeeV1ResourceStatus);
  checkGoogleCloudApigeeV1ResourceStatus(
      o[1] as api.GoogleCloudApigeeV1ResourceStatus);
}

core.int buildCounterGoogleCloudApigeeV1ReportInstanceStatusRequest = 0;
api.GoogleCloudApigeeV1ReportInstanceStatusRequest
    buildGoogleCloudApigeeV1ReportInstanceStatusRequest() {
  var o = api.GoogleCloudApigeeV1ReportInstanceStatusRequest();
  buildCounterGoogleCloudApigeeV1ReportInstanceStatusRequest++;
  if (buildCounterGoogleCloudApigeeV1ReportInstanceStatusRequest < 3) {
    o.instanceUid = 'foo';
    o.reportTime = 'foo';
    o.resources = buildUnnamed5062();
  }
  buildCounterGoogleCloudApigeeV1ReportInstanceStatusRequest--;
  return o;
}

void checkGoogleCloudApigeeV1ReportInstanceStatusRequest(
    api.GoogleCloudApigeeV1ReportInstanceStatusRequest o) {
  buildCounterGoogleCloudApigeeV1ReportInstanceStatusRequest++;
  if (buildCounterGoogleCloudApigeeV1ReportInstanceStatusRequest < 3) {
    unittest.expect(o.instanceUid, unittest.equals('foo'));
    unittest.expect(o.reportTime, unittest.equals('foo'));
    checkUnnamed5062(o.resources);
  }
  buildCounterGoogleCloudApigeeV1ReportInstanceStatusRequest--;
}

core.int buildCounterGoogleCloudApigeeV1ReportInstanceStatusResponse = 0;
api.GoogleCloudApigeeV1ReportInstanceStatusResponse
    buildGoogleCloudApigeeV1ReportInstanceStatusResponse() {
  var o = api.GoogleCloudApigeeV1ReportInstanceStatusResponse();
  buildCounterGoogleCloudApigeeV1ReportInstanceStatusResponse++;
  if (buildCounterGoogleCloudApigeeV1ReportInstanceStatusResponse < 3) {}
  buildCounterGoogleCloudApigeeV1ReportInstanceStatusResponse--;
  return o;
}

void checkGoogleCloudApigeeV1ReportInstanceStatusResponse(
    api.GoogleCloudApigeeV1ReportInstanceStatusResponse o) {
  buildCounterGoogleCloudApigeeV1ReportInstanceStatusResponse++;
  if (buildCounterGoogleCloudApigeeV1ReportInstanceStatusResponse < 3) {}
  buildCounterGoogleCloudApigeeV1ReportInstanceStatusResponse--;
}

core.List<api.GoogleCloudApigeeV1Attribute> buildUnnamed5063() {
  var o = <api.GoogleCloudApigeeV1Attribute>[];
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

void checkUnnamed5063(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0] as api.GoogleCloudApigeeV1Attribute);
  checkGoogleCloudApigeeV1Attribute(o[1] as api.GoogleCloudApigeeV1Attribute);
}

core.int buildCounterGoogleCloudApigeeV1ReportProperty = 0;
api.GoogleCloudApigeeV1ReportProperty buildGoogleCloudApigeeV1ReportProperty() {
  var o = api.GoogleCloudApigeeV1ReportProperty();
  buildCounterGoogleCloudApigeeV1ReportProperty++;
  if (buildCounterGoogleCloudApigeeV1ReportProperty < 3) {
    o.property = 'foo';
    o.value = buildUnnamed5063();
  }
  buildCounterGoogleCloudApigeeV1ReportProperty--;
  return o;
}

void checkGoogleCloudApigeeV1ReportProperty(
    api.GoogleCloudApigeeV1ReportProperty o) {
  buildCounterGoogleCloudApigeeV1ReportProperty++;
  if (buildCounterGoogleCloudApigeeV1ReportProperty < 3) {
    unittest.expect(o.property, unittest.equals('foo'));
    checkUnnamed5063(o.value);
  }
  buildCounterGoogleCloudApigeeV1ReportProperty--;
}

core.int buildCounterGoogleCloudApigeeV1ResourceConfig = 0;
api.GoogleCloudApigeeV1ResourceConfig buildGoogleCloudApigeeV1ResourceConfig() {
  var o = api.GoogleCloudApigeeV1ResourceConfig();
  buildCounterGoogleCloudApigeeV1ResourceConfig++;
  if (buildCounterGoogleCloudApigeeV1ResourceConfig < 3) {
    o.location = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ResourceConfig--;
  return o;
}

void checkGoogleCloudApigeeV1ResourceConfig(
    api.GoogleCloudApigeeV1ResourceConfig o) {
  buildCounterGoogleCloudApigeeV1ResourceConfig++;
  if (buildCounterGoogleCloudApigeeV1ResourceConfig < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ResourceConfig--;
}

core.int buildCounterGoogleCloudApigeeV1ResourceFile = 0;
api.GoogleCloudApigeeV1ResourceFile buildGoogleCloudApigeeV1ResourceFile() {
  var o = api.GoogleCloudApigeeV1ResourceFile();
  buildCounterGoogleCloudApigeeV1ResourceFile++;
  if (buildCounterGoogleCloudApigeeV1ResourceFile < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ResourceFile--;
  return o;
}

void checkGoogleCloudApigeeV1ResourceFile(
    api.GoogleCloudApigeeV1ResourceFile o) {
  buildCounterGoogleCloudApigeeV1ResourceFile++;
  if (buildCounterGoogleCloudApigeeV1ResourceFile < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ResourceFile--;
}

core.List<api.GoogleCloudApigeeV1ResourceFile> buildUnnamed5064() {
  var o = <api.GoogleCloudApigeeV1ResourceFile>[];
  o.add(buildGoogleCloudApigeeV1ResourceFile());
  o.add(buildGoogleCloudApigeeV1ResourceFile());
  return o;
}

void checkUnnamed5064(core.List<api.GoogleCloudApigeeV1ResourceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ResourceFile(
      o[0] as api.GoogleCloudApigeeV1ResourceFile);
  checkGoogleCloudApigeeV1ResourceFile(
      o[1] as api.GoogleCloudApigeeV1ResourceFile);
}

core.int buildCounterGoogleCloudApigeeV1ResourceFiles = 0;
api.GoogleCloudApigeeV1ResourceFiles buildGoogleCloudApigeeV1ResourceFiles() {
  var o = api.GoogleCloudApigeeV1ResourceFiles();
  buildCounterGoogleCloudApigeeV1ResourceFiles++;
  if (buildCounterGoogleCloudApigeeV1ResourceFiles < 3) {
    o.resourceFile = buildUnnamed5064();
  }
  buildCounterGoogleCloudApigeeV1ResourceFiles--;
  return o;
}

void checkGoogleCloudApigeeV1ResourceFiles(
    api.GoogleCloudApigeeV1ResourceFiles o) {
  buildCounterGoogleCloudApigeeV1ResourceFiles++;
  if (buildCounterGoogleCloudApigeeV1ResourceFiles < 3) {
    checkUnnamed5064(o.resourceFile);
  }
  buildCounterGoogleCloudApigeeV1ResourceFiles--;
}

core.List<api.GoogleCloudApigeeV1RevisionStatus> buildUnnamed5065() {
  var o = <api.GoogleCloudApigeeV1RevisionStatus>[];
  o.add(buildGoogleCloudApigeeV1RevisionStatus());
  o.add(buildGoogleCloudApigeeV1RevisionStatus());
  return o;
}

void checkUnnamed5065(core.List<api.GoogleCloudApigeeV1RevisionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1RevisionStatus(
      o[0] as api.GoogleCloudApigeeV1RevisionStatus);
  checkGoogleCloudApigeeV1RevisionStatus(
      o[1] as api.GoogleCloudApigeeV1RevisionStatus);
}

core.int buildCounterGoogleCloudApigeeV1ResourceStatus = 0;
api.GoogleCloudApigeeV1ResourceStatus buildGoogleCloudApigeeV1ResourceStatus() {
  var o = api.GoogleCloudApigeeV1ResourceStatus();
  buildCounterGoogleCloudApigeeV1ResourceStatus++;
  if (buildCounterGoogleCloudApigeeV1ResourceStatus < 3) {
    o.resource = 'foo';
    o.revisions = buildUnnamed5065();
    o.totalReplicas = 42;
    o.uid = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ResourceStatus--;
  return o;
}

void checkGoogleCloudApigeeV1ResourceStatus(
    api.GoogleCloudApigeeV1ResourceStatus o) {
  buildCounterGoogleCloudApigeeV1ResourceStatus++;
  if (buildCounterGoogleCloudApigeeV1ResourceStatus < 3) {
    unittest.expect(o.resource, unittest.equals('foo'));
    checkUnnamed5065(o.revisions);
    unittest.expect(o.totalReplicas, unittest.equals(42));
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ResourceStatus--;
}

core.List<api.GoogleCloudApigeeV1Access> buildUnnamed5066() {
  var o = <api.GoogleCloudApigeeV1Access>[];
  o.add(buildGoogleCloudApigeeV1Access());
  o.add(buildGoogleCloudApigeeV1Access());
  return o;
}

void checkUnnamed5066(core.List<api.GoogleCloudApigeeV1Access> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Access(o[0] as api.GoogleCloudApigeeV1Access);
  checkGoogleCloudApigeeV1Access(o[1] as api.GoogleCloudApigeeV1Access);
}

core.List<api.GoogleCloudApigeeV1Property> buildUnnamed5067() {
  var o = <api.GoogleCloudApigeeV1Property>[];
  o.add(buildGoogleCloudApigeeV1Property());
  o.add(buildGoogleCloudApigeeV1Property());
  return o;
}

void checkUnnamed5067(core.List<api.GoogleCloudApigeeV1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Property(o[0] as api.GoogleCloudApigeeV1Property);
  checkGoogleCloudApigeeV1Property(o[1] as api.GoogleCloudApigeeV1Property);
}

core.int buildCounterGoogleCloudApigeeV1Result = 0;
api.GoogleCloudApigeeV1Result buildGoogleCloudApigeeV1Result() {
  var o = api.GoogleCloudApigeeV1Result();
  buildCounterGoogleCloudApigeeV1Result++;
  if (buildCounterGoogleCloudApigeeV1Result < 3) {
    o.ActionResult = 'foo';
    o.accessList = buildUnnamed5066();
    o.content = 'foo';
    o.headers = buildUnnamed5067();
    o.properties = buildGoogleCloudApigeeV1Properties();
    o.reasonPhrase = 'foo';
    o.statusCode = 'foo';
    o.timestamp = 'foo';
    o.uRI = 'foo';
    o.verb = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Result--;
  return o;
}

void checkGoogleCloudApigeeV1Result(api.GoogleCloudApigeeV1Result o) {
  buildCounterGoogleCloudApigeeV1Result++;
  if (buildCounterGoogleCloudApigeeV1Result < 3) {
    unittest.expect(o.ActionResult, unittest.equals('foo'));
    checkUnnamed5066(o.accessList);
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed5067(o.headers);
    checkGoogleCloudApigeeV1Properties(
        o.properties as api.GoogleCloudApigeeV1Properties);
    unittest.expect(o.reasonPhrase, unittest.equals('foo'));
    unittest.expect(o.statusCode, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.uRI, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Result--;
}

core.List<api.GoogleCloudApigeeV1UpdateError> buildUnnamed5068() {
  var o = <api.GoogleCloudApigeeV1UpdateError>[];
  o.add(buildGoogleCloudApigeeV1UpdateError());
  o.add(buildGoogleCloudApigeeV1UpdateError());
  return o;
}

void checkUnnamed5068(core.List<api.GoogleCloudApigeeV1UpdateError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1UpdateError(
      o[0] as api.GoogleCloudApigeeV1UpdateError);
  checkGoogleCloudApigeeV1UpdateError(
      o[1] as api.GoogleCloudApigeeV1UpdateError);
}

core.int buildCounterGoogleCloudApigeeV1RevisionStatus = 0;
api.GoogleCloudApigeeV1RevisionStatus buildGoogleCloudApigeeV1RevisionStatus() {
  var o = api.GoogleCloudApigeeV1RevisionStatus();
  buildCounterGoogleCloudApigeeV1RevisionStatus++;
  if (buildCounterGoogleCloudApigeeV1RevisionStatus < 3) {
    o.errors = buildUnnamed5068();
    o.jsonSpec = 'foo';
    o.replicas = 42;
    o.revisionId = 'foo';
  }
  buildCounterGoogleCloudApigeeV1RevisionStatus--;
  return o;
}

void checkGoogleCloudApigeeV1RevisionStatus(
    api.GoogleCloudApigeeV1RevisionStatus o) {
  buildCounterGoogleCloudApigeeV1RevisionStatus++;
  if (buildCounterGoogleCloudApigeeV1RevisionStatus < 3) {
    checkUnnamed5068(o.errors);
    unittest.expect(o.jsonSpec, unittest.equals('foo'));
    unittest.expect(o.replicas, unittest.equals(42));
    unittest.expect(o.revisionId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1RevisionStatus--;
}

core.int buildCounterGoogleCloudApigeeV1RoutingRule = 0;
api.GoogleCloudApigeeV1RoutingRule buildGoogleCloudApigeeV1RoutingRule() {
  var o = api.GoogleCloudApigeeV1RoutingRule();
  buildCounterGoogleCloudApigeeV1RoutingRule++;
  if (buildCounterGoogleCloudApigeeV1RoutingRule < 3) {
    o.basepath = 'foo';
    o.envGroupRevision = 'foo';
    o.environment = 'foo';
    o.receiver = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApigeeV1RoutingRule--;
  return o;
}

void checkGoogleCloudApigeeV1RoutingRule(api.GoogleCloudApigeeV1RoutingRule o) {
  buildCounterGoogleCloudApigeeV1RoutingRule++;
  if (buildCounterGoogleCloudApigeeV1RoutingRule < 3) {
    unittest.expect(o.basepath, unittest.equals('foo'));
    unittest.expect(o.envGroupRevision, unittest.equals('foo'));
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.receiver, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1RoutingRule--;
}

core.List<api.GoogleCloudApigeeV1RuntimeTraceConfigOverride>
    buildUnnamed5069() {
  var o = <api.GoogleCloudApigeeV1RuntimeTraceConfigOverride>[];
  o.add(buildGoogleCloudApigeeV1RuntimeTraceConfigOverride());
  o.add(buildGoogleCloudApigeeV1RuntimeTraceConfigOverride());
  return o;
}

void checkUnnamed5069(
    core.List<api.GoogleCloudApigeeV1RuntimeTraceConfigOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1RuntimeTraceConfigOverride(
      o[0] as api.GoogleCloudApigeeV1RuntimeTraceConfigOverride);
  checkGoogleCloudApigeeV1RuntimeTraceConfigOverride(
      o[1] as api.GoogleCloudApigeeV1RuntimeTraceConfigOverride);
}

core.int buildCounterGoogleCloudApigeeV1RuntimeTraceConfig = 0;
api.GoogleCloudApigeeV1RuntimeTraceConfig
    buildGoogleCloudApigeeV1RuntimeTraceConfig() {
  var o = api.GoogleCloudApigeeV1RuntimeTraceConfig();
  buildCounterGoogleCloudApigeeV1RuntimeTraceConfig++;
  if (buildCounterGoogleCloudApigeeV1RuntimeTraceConfig < 3) {
    o.endpoint = 'foo';
    o.exporter = 'foo';
    o.name = 'foo';
    o.overrides = buildUnnamed5069();
    o.revisionCreateTime = 'foo';
    o.revisionId = 'foo';
    o.samplingConfig = buildGoogleCloudApigeeV1RuntimeTraceSamplingConfig();
  }
  buildCounterGoogleCloudApigeeV1RuntimeTraceConfig--;
  return o;
}

void checkGoogleCloudApigeeV1RuntimeTraceConfig(
    api.GoogleCloudApigeeV1RuntimeTraceConfig o) {
  buildCounterGoogleCloudApigeeV1RuntimeTraceConfig++;
  if (buildCounterGoogleCloudApigeeV1RuntimeTraceConfig < 3) {
    unittest.expect(o.endpoint, unittest.equals('foo'));
    unittest.expect(o.exporter, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5069(o.overrides);
    unittest.expect(o.revisionCreateTime, unittest.equals('foo'));
    unittest.expect(o.revisionId, unittest.equals('foo'));
    checkGoogleCloudApigeeV1RuntimeTraceSamplingConfig(
        o.samplingConfig as api.GoogleCloudApigeeV1RuntimeTraceSamplingConfig);
  }
  buildCounterGoogleCloudApigeeV1RuntimeTraceConfig--;
}

core.int buildCounterGoogleCloudApigeeV1RuntimeTraceConfigOverride = 0;
api.GoogleCloudApigeeV1RuntimeTraceConfigOverride
    buildGoogleCloudApigeeV1RuntimeTraceConfigOverride() {
  var o = api.GoogleCloudApigeeV1RuntimeTraceConfigOverride();
  buildCounterGoogleCloudApigeeV1RuntimeTraceConfigOverride++;
  if (buildCounterGoogleCloudApigeeV1RuntimeTraceConfigOverride < 3) {
    o.apiProxy = 'foo';
    o.name = 'foo';
    o.revisionCreateTime = 'foo';
    o.revisionId = 'foo';
    o.samplingConfig = buildGoogleCloudApigeeV1RuntimeTraceSamplingConfig();
    o.uid = 'foo';
  }
  buildCounterGoogleCloudApigeeV1RuntimeTraceConfigOverride--;
  return o;
}

void checkGoogleCloudApigeeV1RuntimeTraceConfigOverride(
    api.GoogleCloudApigeeV1RuntimeTraceConfigOverride o) {
  buildCounterGoogleCloudApigeeV1RuntimeTraceConfigOverride++;
  if (buildCounterGoogleCloudApigeeV1RuntimeTraceConfigOverride < 3) {
    unittest.expect(o.apiProxy, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.revisionCreateTime, unittest.equals('foo'));
    unittest.expect(o.revisionId, unittest.equals('foo'));
    checkGoogleCloudApigeeV1RuntimeTraceSamplingConfig(
        o.samplingConfig as api.GoogleCloudApigeeV1RuntimeTraceSamplingConfig);
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1RuntimeTraceConfigOverride--;
}

core.List<core.String> buildUnnamed5070() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5070(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange>
    buildUnnamed5071() {
  var o =
      <api.GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange>[];
  o.add(buildGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange());
  o.add(buildGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange());
  return o;
}

void checkUnnamed5071(
    core.List<
            api.GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange(o[0]
      as api.GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange);
  checkGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange(o[1]
      as api.GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange);
}

core.List<core.int> buildUnnamed5072() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed5072(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfig = 0;
api.GoogleCloudApigeeV1RuntimeTraceSamplingConfig
    buildGoogleCloudApigeeV1RuntimeTraceSamplingConfig() {
  var o = api.GoogleCloudApigeeV1RuntimeTraceSamplingConfig();
  buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfig++;
  if (buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfig < 3) {
    o.errorSources = buildUnnamed5070();
    o.responseCodeRanges = buildUnnamed5071();
    o.responseCodes = buildUnnamed5072();
    o.sampler = 'foo';
    o.samplingRate = 42.0;
  }
  buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfig--;
  return o;
}

void checkGoogleCloudApigeeV1RuntimeTraceSamplingConfig(
    api.GoogleCloudApigeeV1RuntimeTraceSamplingConfig o) {
  buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfig++;
  if (buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfig < 3) {
    checkUnnamed5070(o.errorSources);
    checkUnnamed5071(o.responseCodeRanges);
    checkUnnamed5072(o.responseCodes);
    unittest.expect(o.sampler, unittest.equals('foo'));
    unittest.expect(o.samplingRate, unittest.equals(42.0));
  }
  buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfig--;
}

core.int
    buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange =
    0;
api.GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange
    buildGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange() {
  var o = api.GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange();
  buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange++;
  if (buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange <
      3) {
    o.firstResponseCode = 42;
    o.lastResponseCode = 42;
  }
  buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange--;
  return o;
}

void checkGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange(
    api.GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange o) {
  buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange++;
  if (buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange <
      3) {
    unittest.expect(o.firstResponseCode, unittest.equals(42));
    unittest.expect(o.lastResponseCode, unittest.equals(42));
  }
  buildCounterGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange--;
}

core.List<api.GoogleCloudApigeeV1SchemaSchemaElement> buildUnnamed5073() {
  var o = <api.GoogleCloudApigeeV1SchemaSchemaElement>[];
  o.add(buildGoogleCloudApigeeV1SchemaSchemaElement());
  o.add(buildGoogleCloudApigeeV1SchemaSchemaElement());
  return o;
}

void checkUnnamed5073(core.List<api.GoogleCloudApigeeV1SchemaSchemaElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1SchemaSchemaElement(
      o[0] as api.GoogleCloudApigeeV1SchemaSchemaElement);
  checkGoogleCloudApigeeV1SchemaSchemaElement(
      o[1] as api.GoogleCloudApigeeV1SchemaSchemaElement);
}

core.List<core.String> buildUnnamed5074() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5074(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudApigeeV1SchemaSchemaElement> buildUnnamed5075() {
  var o = <api.GoogleCloudApigeeV1SchemaSchemaElement>[];
  o.add(buildGoogleCloudApigeeV1SchemaSchemaElement());
  o.add(buildGoogleCloudApigeeV1SchemaSchemaElement());
  return o;
}

void checkUnnamed5075(core.List<api.GoogleCloudApigeeV1SchemaSchemaElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1SchemaSchemaElement(
      o[0] as api.GoogleCloudApigeeV1SchemaSchemaElement);
  checkGoogleCloudApigeeV1SchemaSchemaElement(
      o[1] as api.GoogleCloudApigeeV1SchemaSchemaElement);
}

core.int buildCounterGoogleCloudApigeeV1Schema = 0;
api.GoogleCloudApigeeV1Schema buildGoogleCloudApigeeV1Schema() {
  var o = api.GoogleCloudApigeeV1Schema();
  buildCounterGoogleCloudApigeeV1Schema++;
  if (buildCounterGoogleCloudApigeeV1Schema < 3) {
    o.dimensions = buildUnnamed5073();
    o.meta = buildUnnamed5074();
    o.metrics = buildUnnamed5075();
  }
  buildCounterGoogleCloudApigeeV1Schema--;
  return o;
}

void checkGoogleCloudApigeeV1Schema(api.GoogleCloudApigeeV1Schema o) {
  buildCounterGoogleCloudApigeeV1Schema++;
  if (buildCounterGoogleCloudApigeeV1Schema < 3) {
    checkUnnamed5073(o.dimensions);
    checkUnnamed5074(o.meta);
    checkUnnamed5075(o.metrics);
  }
  buildCounterGoogleCloudApigeeV1Schema--;
}

core.int buildCounterGoogleCloudApigeeV1SchemaSchemaElement = 0;
api.GoogleCloudApigeeV1SchemaSchemaElement
    buildGoogleCloudApigeeV1SchemaSchemaElement() {
  var o = api.GoogleCloudApigeeV1SchemaSchemaElement();
  buildCounterGoogleCloudApigeeV1SchemaSchemaElement++;
  if (buildCounterGoogleCloudApigeeV1SchemaSchemaElement < 3) {
    o.name = 'foo';
    o.properties = buildGoogleCloudApigeeV1SchemaSchemaProperty();
  }
  buildCounterGoogleCloudApigeeV1SchemaSchemaElement--;
  return o;
}

void checkGoogleCloudApigeeV1SchemaSchemaElement(
    api.GoogleCloudApigeeV1SchemaSchemaElement o) {
  buildCounterGoogleCloudApigeeV1SchemaSchemaElement++;
  if (buildCounterGoogleCloudApigeeV1SchemaSchemaElement < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudApigeeV1SchemaSchemaProperty(
        o.properties as api.GoogleCloudApigeeV1SchemaSchemaProperty);
  }
  buildCounterGoogleCloudApigeeV1SchemaSchemaElement--;
}

core.int buildCounterGoogleCloudApigeeV1SchemaSchemaProperty = 0;
api.GoogleCloudApigeeV1SchemaSchemaProperty
    buildGoogleCloudApigeeV1SchemaSchemaProperty() {
  var o = api.GoogleCloudApigeeV1SchemaSchemaProperty();
  buildCounterGoogleCloudApigeeV1SchemaSchemaProperty++;
  if (buildCounterGoogleCloudApigeeV1SchemaSchemaProperty < 3) {
    o.createTime = 'foo';
    o.custom = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudApigeeV1SchemaSchemaProperty--;
  return o;
}

void checkGoogleCloudApigeeV1SchemaSchemaProperty(
    api.GoogleCloudApigeeV1SchemaSchemaProperty o) {
  buildCounterGoogleCloudApigeeV1SchemaSchemaProperty++;
  if (buildCounterGoogleCloudApigeeV1SchemaSchemaProperty < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.custom, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1SchemaSchemaProperty--;
}

core.List<core.String> buildUnnamed5076() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5076(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1ServiceIssuersMapping = 0;
api.GoogleCloudApigeeV1ServiceIssuersMapping
    buildGoogleCloudApigeeV1ServiceIssuersMapping() {
  var o = api.GoogleCloudApigeeV1ServiceIssuersMapping();
  buildCounterGoogleCloudApigeeV1ServiceIssuersMapping++;
  if (buildCounterGoogleCloudApigeeV1ServiceIssuersMapping < 3) {
    o.emailIds = buildUnnamed5076();
    o.service = 'foo';
  }
  buildCounterGoogleCloudApigeeV1ServiceIssuersMapping--;
  return o;
}

void checkGoogleCloudApigeeV1ServiceIssuersMapping(
    api.GoogleCloudApigeeV1ServiceIssuersMapping o) {
  buildCounterGoogleCloudApigeeV1ServiceIssuersMapping++;
  if (buildCounterGoogleCloudApigeeV1ServiceIssuersMapping < 3) {
    checkUnnamed5076(o.emailIds);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ServiceIssuersMapping--;
}

core.int buildCounterGoogleCloudApigeeV1Session = 0;
api.GoogleCloudApigeeV1Session buildGoogleCloudApigeeV1Session() {
  var o = api.GoogleCloudApigeeV1Session();
  buildCounterGoogleCloudApigeeV1Session++;
  if (buildCounterGoogleCloudApigeeV1Session < 3) {
    o.id = 'foo';
    o.timestampMs = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Session--;
  return o;
}

void checkGoogleCloudApigeeV1Session(api.GoogleCloudApigeeV1Session o) {
  buildCounterGoogleCloudApigeeV1Session++;
  if (buildCounterGoogleCloudApigeeV1Session < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.timestampMs, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Session--;
}

core.List<core.String> buildUnnamed5077() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5077(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1SharedFlow = 0;
api.GoogleCloudApigeeV1SharedFlow buildGoogleCloudApigeeV1SharedFlow() {
  var o = api.GoogleCloudApigeeV1SharedFlow();
  buildCounterGoogleCloudApigeeV1SharedFlow++;
  if (buildCounterGoogleCloudApigeeV1SharedFlow < 3) {
    o.latestRevisionId = 'foo';
    o.metaData = buildGoogleCloudApigeeV1EntityMetadata();
    o.name = 'foo';
    o.revision = buildUnnamed5077();
  }
  buildCounterGoogleCloudApigeeV1SharedFlow--;
  return o;
}

void checkGoogleCloudApigeeV1SharedFlow(api.GoogleCloudApigeeV1SharedFlow o) {
  buildCounterGoogleCloudApigeeV1SharedFlow++;
  if (buildCounterGoogleCloudApigeeV1SharedFlow < 3) {
    unittest.expect(o.latestRevisionId, unittest.equals('foo'));
    checkGoogleCloudApigeeV1EntityMetadata(
        o.metaData as api.GoogleCloudApigeeV1EntityMetadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5077(o.revision);
  }
  buildCounterGoogleCloudApigeeV1SharedFlow--;
}

core.Map<core.String, core.String> buildUnnamed5078() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5078(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5079() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5079(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5080() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5080(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5081() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5081(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1SharedFlowRevision = 0;
api.GoogleCloudApigeeV1SharedFlowRevision
    buildGoogleCloudApigeeV1SharedFlowRevision() {
  var o = api.GoogleCloudApigeeV1SharedFlowRevision();
  buildCounterGoogleCloudApigeeV1SharedFlowRevision++;
  if (buildCounterGoogleCloudApigeeV1SharedFlowRevision < 3) {
    o.configurationVersion = buildGoogleCloudApigeeV1ConfigVersion();
    o.contextInfo = 'foo';
    o.createdAt = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.entityMetaDataAsProperties = buildUnnamed5078();
    o.lastModifiedAt = 'foo';
    o.name = 'foo';
    o.policies = buildUnnamed5079();
    o.resourceFiles = buildGoogleCloudApigeeV1ResourceFiles();
    o.resources = buildUnnamed5080();
    o.revision = 'foo';
    o.sharedFlows = buildUnnamed5081();
    o.type = 'foo';
  }
  buildCounterGoogleCloudApigeeV1SharedFlowRevision--;
  return o;
}

void checkGoogleCloudApigeeV1SharedFlowRevision(
    api.GoogleCloudApigeeV1SharedFlowRevision o) {
  buildCounterGoogleCloudApigeeV1SharedFlowRevision++;
  if (buildCounterGoogleCloudApigeeV1SharedFlowRevision < 3) {
    checkGoogleCloudApigeeV1ConfigVersion(
        o.configurationVersion as api.GoogleCloudApigeeV1ConfigVersion);
    unittest.expect(o.contextInfo, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5078(o.entityMetaDataAsProperties);
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5079(o.policies);
    checkGoogleCloudApigeeV1ResourceFiles(
        o.resourceFiles as api.GoogleCloudApigeeV1ResourceFiles);
    checkUnnamed5080(o.resources);
    unittest.expect(o.revision, unittest.equals('foo'));
    checkUnnamed5081(o.sharedFlows);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1SharedFlowRevision--;
}

core.List<api.GoogleCloudApigeeV1StatsEnvironmentStats> buildUnnamed5082() {
  var o = <api.GoogleCloudApigeeV1StatsEnvironmentStats>[];
  o.add(buildGoogleCloudApigeeV1StatsEnvironmentStats());
  o.add(buildGoogleCloudApigeeV1StatsEnvironmentStats());
  return o;
}

void checkUnnamed5082(
    core.List<api.GoogleCloudApigeeV1StatsEnvironmentStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1StatsEnvironmentStats(
      o[0] as api.GoogleCloudApigeeV1StatsEnvironmentStats);
  checkGoogleCloudApigeeV1StatsEnvironmentStats(
      o[1] as api.GoogleCloudApigeeV1StatsEnvironmentStats);
}

core.int buildCounterGoogleCloudApigeeV1Stats = 0;
api.GoogleCloudApigeeV1Stats buildGoogleCloudApigeeV1Stats() {
  var o = api.GoogleCloudApigeeV1Stats();
  buildCounterGoogleCloudApigeeV1Stats++;
  if (buildCounterGoogleCloudApigeeV1Stats < 3) {
    o.environments = buildUnnamed5082();
    o.metaData = buildGoogleCloudApigeeV1Metadata();
  }
  buildCounterGoogleCloudApigeeV1Stats--;
  return o;
}

void checkGoogleCloudApigeeV1Stats(api.GoogleCloudApigeeV1Stats o) {
  buildCounterGoogleCloudApigeeV1Stats++;
  if (buildCounterGoogleCloudApigeeV1Stats < 3) {
    checkUnnamed5082(o.environments);
    checkGoogleCloudApigeeV1Metadata(
        o.metaData as api.GoogleCloudApigeeV1Metadata);
  }
  buildCounterGoogleCloudApigeeV1Stats--;
}

core.List<api.GoogleCloudApigeeV1DimensionMetric> buildUnnamed5083() {
  var o = <api.GoogleCloudApigeeV1DimensionMetric>[];
  o.add(buildGoogleCloudApigeeV1DimensionMetric());
  o.add(buildGoogleCloudApigeeV1DimensionMetric());
  return o;
}

void checkUnnamed5083(core.List<api.GoogleCloudApigeeV1DimensionMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1DimensionMetric(
      o[0] as api.GoogleCloudApigeeV1DimensionMetric);
  checkGoogleCloudApigeeV1DimensionMetric(
      o[1] as api.GoogleCloudApigeeV1DimensionMetric);
}

core.List<api.GoogleCloudApigeeV1Metric> buildUnnamed5084() {
  var o = <api.GoogleCloudApigeeV1Metric>[];
  o.add(buildGoogleCloudApigeeV1Metric());
  o.add(buildGoogleCloudApigeeV1Metric());
  return o;
}

void checkUnnamed5084(core.List<api.GoogleCloudApigeeV1Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Metric(o[0] as api.GoogleCloudApigeeV1Metric);
  checkGoogleCloudApigeeV1Metric(o[1] as api.GoogleCloudApigeeV1Metric);
}

core.int buildCounterGoogleCloudApigeeV1StatsEnvironmentStats = 0;
api.GoogleCloudApigeeV1StatsEnvironmentStats
    buildGoogleCloudApigeeV1StatsEnvironmentStats() {
  var o = api.GoogleCloudApigeeV1StatsEnvironmentStats();
  buildCounterGoogleCloudApigeeV1StatsEnvironmentStats++;
  if (buildCounterGoogleCloudApigeeV1StatsEnvironmentStats < 3) {
    o.dimensions = buildUnnamed5083();
    o.metrics = buildUnnamed5084();
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1StatsEnvironmentStats--;
  return o;
}

void checkGoogleCloudApigeeV1StatsEnvironmentStats(
    api.GoogleCloudApigeeV1StatsEnvironmentStats o) {
  buildCounterGoogleCloudApigeeV1StatsEnvironmentStats++;
  if (buildCounterGoogleCloudApigeeV1StatsEnvironmentStats < 3) {
    checkUnnamed5083(o.dimensions);
    checkUnnamed5084(o.metrics);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1StatsEnvironmentStats--;
}

core.int buildCounterGoogleCloudApigeeV1Subscription = 0;
api.GoogleCloudApigeeV1Subscription buildGoogleCloudApigeeV1Subscription() {
  var o = api.GoogleCloudApigeeV1Subscription();
  buildCounterGoogleCloudApigeeV1Subscription++;
  if (buildCounterGoogleCloudApigeeV1Subscription < 3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudApigeeV1Subscription--;
  return o;
}

void checkGoogleCloudApigeeV1Subscription(
    api.GoogleCloudApigeeV1Subscription o) {
  buildCounterGoogleCloudApigeeV1Subscription++;
  if (buildCounterGoogleCloudApigeeV1Subscription < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Subscription--;
}

core.List<core.String> buildUnnamed5085() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5085(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1SyncAuthorization = 0;
api.GoogleCloudApigeeV1SyncAuthorization
    buildGoogleCloudApigeeV1SyncAuthorization() {
  var o = api.GoogleCloudApigeeV1SyncAuthorization();
  buildCounterGoogleCloudApigeeV1SyncAuthorization++;
  if (buildCounterGoogleCloudApigeeV1SyncAuthorization < 3) {
    o.etag = 'foo';
    o.identities = buildUnnamed5085();
  }
  buildCounterGoogleCloudApigeeV1SyncAuthorization--;
  return o;
}

void checkGoogleCloudApigeeV1SyncAuthorization(
    api.GoogleCloudApigeeV1SyncAuthorization o) {
  buildCounterGoogleCloudApigeeV1SyncAuthorization++;
  if (buildCounterGoogleCloudApigeeV1SyncAuthorization < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5085(o.identities);
  }
  buildCounterGoogleCloudApigeeV1SyncAuthorization--;
}

core.int buildCounterGoogleCloudApigeeV1TargetServer = 0;
api.GoogleCloudApigeeV1TargetServer buildGoogleCloudApigeeV1TargetServer() {
  var o = api.GoogleCloudApigeeV1TargetServer();
  buildCounterGoogleCloudApigeeV1TargetServer++;
  if (buildCounterGoogleCloudApigeeV1TargetServer < 3) {
    o.description = 'foo';
    o.host = 'foo';
    o.isEnabled = true;
    o.name = 'foo';
    o.port = 42;
    o.sSLInfo = buildGoogleCloudApigeeV1TlsInfo();
  }
  buildCounterGoogleCloudApigeeV1TargetServer--;
  return o;
}

void checkGoogleCloudApigeeV1TargetServer(
    api.GoogleCloudApigeeV1TargetServer o) {
  buildCounterGoogleCloudApigeeV1TargetServer++;
  if (buildCounterGoogleCloudApigeeV1TargetServer < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.isEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    checkGoogleCloudApigeeV1TlsInfo(
        o.sSLInfo as api.GoogleCloudApigeeV1TlsInfo);
  }
  buildCounterGoogleCloudApigeeV1TargetServer--;
}

core.int buildCounterGoogleCloudApigeeV1TargetServerConfig = 0;
api.GoogleCloudApigeeV1TargetServerConfig
    buildGoogleCloudApigeeV1TargetServerConfig() {
  var o = api.GoogleCloudApigeeV1TargetServerConfig();
  buildCounterGoogleCloudApigeeV1TargetServerConfig++;
  if (buildCounterGoogleCloudApigeeV1TargetServerConfig < 3) {
    o.host = 'foo';
    o.name = 'foo';
    o.port = 42;
    o.tlsInfo = buildGoogleCloudApigeeV1TlsInfoConfig();
  }
  buildCounterGoogleCloudApigeeV1TargetServerConfig--;
  return o;
}

void checkGoogleCloudApigeeV1TargetServerConfig(
    api.GoogleCloudApigeeV1TargetServerConfig o) {
  buildCounterGoogleCloudApigeeV1TargetServerConfig++;
  if (buildCounterGoogleCloudApigeeV1TargetServerConfig < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    checkGoogleCloudApigeeV1TlsInfoConfig(
        o.tlsInfo as api.GoogleCloudApigeeV1TlsInfoConfig);
  }
  buildCounterGoogleCloudApigeeV1TargetServerConfig--;
}

core.int buildCounterGoogleCloudApigeeV1TestDatastoreResponse = 0;
api.GoogleCloudApigeeV1TestDatastoreResponse
    buildGoogleCloudApigeeV1TestDatastoreResponse() {
  var o = api.GoogleCloudApigeeV1TestDatastoreResponse();
  buildCounterGoogleCloudApigeeV1TestDatastoreResponse++;
  if (buildCounterGoogleCloudApigeeV1TestDatastoreResponse < 3) {
    o.error = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudApigeeV1TestDatastoreResponse--;
  return o;
}

void checkGoogleCloudApigeeV1TestDatastoreResponse(
    api.GoogleCloudApigeeV1TestDatastoreResponse o) {
  buildCounterGoogleCloudApigeeV1TestDatastoreResponse++;
  if (buildCounterGoogleCloudApigeeV1TestDatastoreResponse < 3) {
    unittest.expect(o.error, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1TestDatastoreResponse--;
}

core.List<core.String> buildUnnamed5086() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5086(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5087() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5087(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1TlsInfo = 0;
api.GoogleCloudApigeeV1TlsInfo buildGoogleCloudApigeeV1TlsInfo() {
  var o = api.GoogleCloudApigeeV1TlsInfo();
  buildCounterGoogleCloudApigeeV1TlsInfo++;
  if (buildCounterGoogleCloudApigeeV1TlsInfo < 3) {
    o.ciphers = buildUnnamed5086();
    o.clientAuthEnabled = true;
    o.commonName = buildGoogleCloudApigeeV1TlsInfoCommonName();
    o.enabled = true;
    o.ignoreValidationErrors = true;
    o.keyAlias = 'foo';
    o.keyStore = 'foo';
    o.protocols = buildUnnamed5087();
    o.trustStore = 'foo';
  }
  buildCounterGoogleCloudApigeeV1TlsInfo--;
  return o;
}

void checkGoogleCloudApigeeV1TlsInfo(api.GoogleCloudApigeeV1TlsInfo o) {
  buildCounterGoogleCloudApigeeV1TlsInfo++;
  if (buildCounterGoogleCloudApigeeV1TlsInfo < 3) {
    checkUnnamed5086(o.ciphers);
    unittest.expect(o.clientAuthEnabled, unittest.isTrue);
    checkGoogleCloudApigeeV1TlsInfoCommonName(
        o.commonName as api.GoogleCloudApigeeV1TlsInfoCommonName);
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.ignoreValidationErrors, unittest.isTrue);
    unittest.expect(o.keyAlias, unittest.equals('foo'));
    unittest.expect(o.keyStore, unittest.equals('foo'));
    checkUnnamed5087(o.protocols);
    unittest.expect(o.trustStore, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1TlsInfo--;
}

core.int buildCounterGoogleCloudApigeeV1TlsInfoCommonName = 0;
api.GoogleCloudApigeeV1TlsInfoCommonName
    buildGoogleCloudApigeeV1TlsInfoCommonName() {
  var o = api.GoogleCloudApigeeV1TlsInfoCommonName();
  buildCounterGoogleCloudApigeeV1TlsInfoCommonName++;
  if (buildCounterGoogleCloudApigeeV1TlsInfoCommonName < 3) {
    o.value = 'foo';
    o.wildcardMatch = true;
  }
  buildCounterGoogleCloudApigeeV1TlsInfoCommonName--;
  return o;
}

void checkGoogleCloudApigeeV1TlsInfoCommonName(
    api.GoogleCloudApigeeV1TlsInfoCommonName o) {
  buildCounterGoogleCloudApigeeV1TlsInfoCommonName++;
  if (buildCounterGoogleCloudApigeeV1TlsInfoCommonName < 3) {
    unittest.expect(o.value, unittest.equals('foo'));
    unittest.expect(o.wildcardMatch, unittest.isTrue);
  }
  buildCounterGoogleCloudApigeeV1TlsInfoCommonName--;
}

core.List<core.String> buildUnnamed5088() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5088(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5089() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5089(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1TlsInfoConfig = 0;
api.GoogleCloudApigeeV1TlsInfoConfig buildGoogleCloudApigeeV1TlsInfoConfig() {
  var o = api.GoogleCloudApigeeV1TlsInfoConfig();
  buildCounterGoogleCloudApigeeV1TlsInfoConfig++;
  if (buildCounterGoogleCloudApigeeV1TlsInfoConfig < 3) {
    o.ciphers = buildUnnamed5088();
    o.clientAuthEnabled = true;
    o.commonName = buildGoogleCloudApigeeV1CommonNameConfig();
    o.enabled = true;
    o.ignoreValidationErrors = true;
    o.keyAlias = 'foo';
    o.keyAliasReference = buildGoogleCloudApigeeV1KeyAliasReference();
    o.protocols = buildUnnamed5089();
    o.trustStore = 'foo';
  }
  buildCounterGoogleCloudApigeeV1TlsInfoConfig--;
  return o;
}

void checkGoogleCloudApigeeV1TlsInfoConfig(
    api.GoogleCloudApigeeV1TlsInfoConfig o) {
  buildCounterGoogleCloudApigeeV1TlsInfoConfig++;
  if (buildCounterGoogleCloudApigeeV1TlsInfoConfig < 3) {
    checkUnnamed5088(o.ciphers);
    unittest.expect(o.clientAuthEnabled, unittest.isTrue);
    checkGoogleCloudApigeeV1CommonNameConfig(
        o.commonName as api.GoogleCloudApigeeV1CommonNameConfig);
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.ignoreValidationErrors, unittest.isTrue);
    unittest.expect(o.keyAlias, unittest.equals('foo'));
    checkGoogleCloudApigeeV1KeyAliasReference(
        o.keyAliasReference as api.GoogleCloudApigeeV1KeyAliasReference);
    checkUnnamed5089(o.protocols);
    unittest.expect(o.trustStore, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1TlsInfoConfig--;
}

core.int buildCounterGoogleCloudApigeeV1UpdateError = 0;
api.GoogleCloudApigeeV1UpdateError buildGoogleCloudApigeeV1UpdateError() {
  var o = api.GoogleCloudApigeeV1UpdateError();
  buildCounterGoogleCloudApigeeV1UpdateError++;
  if (buildCounterGoogleCloudApigeeV1UpdateError < 3) {
    o.code = 'foo';
    o.message = 'foo';
    o.resource = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudApigeeV1UpdateError--;
  return o;
}

void checkGoogleCloudApigeeV1UpdateError(api.GoogleCloudApigeeV1UpdateError o) {
  buildCounterGoogleCloudApigeeV1UpdateError++;
  if (buildCounterGoogleCloudApigeeV1UpdateError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1UpdateError--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed5090() {
  var o = <api.GoogleIamV1AuditLogConfig>[];
  o.add(buildGoogleIamV1AuditLogConfig());
  o.add(buildGoogleIamV1AuditLogConfig());
  return o;
}

void checkUnnamed5090(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0] as api.GoogleIamV1AuditLogConfig);
  checkGoogleIamV1AuditLogConfig(o[1] as api.GoogleIamV1AuditLogConfig);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  var o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed5090();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed5090(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed5091() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5091(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  var o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed5091();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed5091(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed5092() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5092(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  var o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed5092();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition as api.GoogleTypeExpr);
    checkUnnamed5092(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed5093() {
  var o = <api.GoogleIamV1AuditConfig>[];
  o.add(buildGoogleIamV1AuditConfig());
  o.add(buildGoogleIamV1AuditConfig());
  return o;
}

void checkUnnamed5093(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0] as api.GoogleIamV1AuditConfig);
  checkGoogleIamV1AuditConfig(o[1] as api.GoogleIamV1AuditConfig);
}

core.List<api.GoogleIamV1Binding> buildUnnamed5094() {
  var o = <api.GoogleIamV1Binding>[];
  o.add(buildGoogleIamV1Binding());
  o.add(buildGoogleIamV1Binding());
  return o;
}

void checkUnnamed5094(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0] as api.GoogleIamV1Binding);
  checkGoogleIamV1Binding(o[1] as api.GoogleIamV1Binding);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  var o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed5093();
    o.bindings = buildUnnamed5094();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed5093(o.auditConfigs);
    checkUnnamed5094(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleIamV1SetIamPolicyRequest = 0;
api.GoogleIamV1SetIamPolicyRequest buildGoogleIamV1SetIamPolicyRequest() {
  var o = api.GoogleIamV1SetIamPolicyRequest();
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.updateMask = 'foo';
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
  return o;
}

void checkGoogleIamV1SetIamPolicyRequest(api.GoogleIamV1SetIamPolicyRequest o) {
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    checkGoogleIamV1Policy(o.policy as api.GoogleIamV1Policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed5095() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5095(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
api.GoogleIamV1TestIamPermissionsRequest
    buildGoogleIamV1TestIamPermissionsRequest() {
  var o = api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed5095();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
    api.GoogleIamV1TestIamPermissionsRequest o) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed5095(o.permissions);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed5096() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5096(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
api.GoogleIamV1TestIamPermissionsResponse
    buildGoogleIamV1TestIamPermissionsResponse() {
  var o = api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed5096();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
    api.GoogleIamV1TestIamPermissionsResponse o) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed5096(o.permissions);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed5097() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed5097(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0] as api.GoogleLongrunningOperation);
  checkGoogleLongrunningOperation(o[1] as api.GoogleLongrunningOperation);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  var o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed5097();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5097(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5098() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5098(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted10 = (o['x']) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
  var casted11 = (o['y']) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5099() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5099(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted12 = (o['x']) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
  var casted13 = (o['y']) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed5098();
    o.name = 'foo';
    o.response = buildUnnamed5099();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error as api.GoogleRpcStatus);
    checkUnnamed5098(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5099(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.List<api.GoogleRpcPreconditionFailureViolation> buildUnnamed5100() {
  var o = <api.GoogleRpcPreconditionFailureViolation>[];
  o.add(buildGoogleRpcPreconditionFailureViolation());
  o.add(buildGoogleRpcPreconditionFailureViolation());
  return o;
}

void checkUnnamed5100(core.List<api.GoogleRpcPreconditionFailureViolation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcPreconditionFailureViolation(
      o[0] as api.GoogleRpcPreconditionFailureViolation);
  checkGoogleRpcPreconditionFailureViolation(
      o[1] as api.GoogleRpcPreconditionFailureViolation);
}

core.int buildCounterGoogleRpcPreconditionFailure = 0;
api.GoogleRpcPreconditionFailure buildGoogleRpcPreconditionFailure() {
  var o = api.GoogleRpcPreconditionFailure();
  buildCounterGoogleRpcPreconditionFailure++;
  if (buildCounterGoogleRpcPreconditionFailure < 3) {
    o.violations = buildUnnamed5100();
  }
  buildCounterGoogleRpcPreconditionFailure--;
  return o;
}

void checkGoogleRpcPreconditionFailure(api.GoogleRpcPreconditionFailure o) {
  buildCounterGoogleRpcPreconditionFailure++;
  if (buildCounterGoogleRpcPreconditionFailure < 3) {
    checkUnnamed5100(o.violations);
  }
  buildCounterGoogleRpcPreconditionFailure--;
}

core.int buildCounterGoogleRpcPreconditionFailureViolation = 0;
api.GoogleRpcPreconditionFailureViolation
    buildGoogleRpcPreconditionFailureViolation() {
  var o = api.GoogleRpcPreconditionFailureViolation();
  buildCounterGoogleRpcPreconditionFailureViolation++;
  if (buildCounterGoogleRpcPreconditionFailureViolation < 3) {
    o.description = 'foo';
    o.subject = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleRpcPreconditionFailureViolation--;
  return o;
}

void checkGoogleRpcPreconditionFailureViolation(
    api.GoogleRpcPreconditionFailureViolation o) {
  buildCounterGoogleRpcPreconditionFailureViolation++;
  if (buildCounterGoogleRpcPreconditionFailureViolation < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.subject, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleRpcPreconditionFailureViolation--;
}

core.Map<core.String, core.Object> buildUnnamed5101() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5101(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted14 = (o['x']) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
  var casted15 = (o['y']) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed5102() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5101());
  o.add(buildUnnamed5101());
  return o;
}

void checkUnnamed5102(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5101(o[0]);
  checkUnnamed5101(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5102();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5102(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  var o = api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

void checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group('obj-schema-GoogleApiHttpBody', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleApiHttpBody();
      var od = api.GoogleApiHttpBody.fromJson(o.toJson());
      checkGoogleApiHttpBody(od as api.GoogleApiHttpBody);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Access', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Access();
      var od = api.GoogleCloudApigeeV1Access.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Access(od as api.GoogleCloudApigeeV1Access);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1AccessGet', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1AccessGet();
      var od = api.GoogleCloudApigeeV1AccessGet.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AccessGet(od as api.GoogleCloudApigeeV1AccessGet);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1AccessRemove', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1AccessRemove();
      var od = api.GoogleCloudApigeeV1AccessRemove.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AccessRemove(
          od as api.GoogleCloudApigeeV1AccessRemove);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1AccessSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1AccessSet();
      var od = api.GoogleCloudApigeeV1AccessSet.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AccessSet(od as api.GoogleCloudApigeeV1AccessSet);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Alias', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Alias();
      var od = api.GoogleCloudApigeeV1Alias.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Alias(od as api.GoogleCloudApigeeV1Alias);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1AliasRevisionConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1AliasRevisionConfig();
      var od = api.GoogleCloudApigeeV1AliasRevisionConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AliasRevisionConfig(
          od as api.GoogleCloudApigeeV1AliasRevisionConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ApiCategory', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ApiCategory();
      var od = api.GoogleCloudApigeeV1ApiCategory.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiCategory(
          od as api.GoogleCloudApigeeV1ApiCategory);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ApiCategoryData', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ApiCategoryData();
      var od = api.GoogleCloudApigeeV1ApiCategoryData.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiCategoryData(
          od as api.GoogleCloudApigeeV1ApiCategoryData);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ApiProduct', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ApiProduct();
      var od = api.GoogleCloudApigeeV1ApiProduct.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiProduct(
          od as api.GoogleCloudApigeeV1ApiProduct);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ApiProductRef', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ApiProductRef();
      var od = api.GoogleCloudApigeeV1ApiProductRef.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiProductRef(
          od as api.GoogleCloudApigeeV1ApiProductRef);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ApiProxy', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ApiProxy();
      var od = api.GoogleCloudApigeeV1ApiProxy.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiProxy(od as api.GoogleCloudApigeeV1ApiProxy);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ApiProxyRevision', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ApiProxyRevision();
      var od = api.GoogleCloudApigeeV1ApiProxyRevision.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiProxyRevision(
          od as api.GoogleCloudApigeeV1ApiProxyRevision);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ApiResponseWrapper', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ApiResponseWrapper();
      var od = api.GoogleCloudApigeeV1ApiResponseWrapper.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiResponseWrapper(
          od as api.GoogleCloudApigeeV1ApiResponseWrapper);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1App', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1App();
      var od = api.GoogleCloudApigeeV1App.fromJson(o.toJson());
      checkGoogleCloudApigeeV1App(od as api.GoogleCloudApigeeV1App);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1AsyncQuery', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1AsyncQuery();
      var od = api.GoogleCloudApigeeV1AsyncQuery.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AsyncQuery(
          od as api.GoogleCloudApigeeV1AsyncQuery);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1AsyncQueryResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1AsyncQueryResult();
      var od = api.GoogleCloudApigeeV1AsyncQueryResult.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AsyncQueryResult(
          od as api.GoogleCloudApigeeV1AsyncQueryResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Attribute', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Attribute();
      var od = api.GoogleCloudApigeeV1Attribute.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Attribute(od as api.GoogleCloudApigeeV1Attribute);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Attributes', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Attributes();
      var od = api.GoogleCloudApigeeV1Attributes.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Attributes(
          od as api.GoogleCloudApigeeV1Attributes);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1CertInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1CertInfo();
      var od = api.GoogleCloudApigeeV1CertInfo.fromJson(o.toJson());
      checkGoogleCloudApigeeV1CertInfo(od as api.GoogleCloudApigeeV1CertInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Certificate', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Certificate();
      var od = api.GoogleCloudApigeeV1Certificate.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Certificate(
          od as api.GoogleCloudApigeeV1Certificate);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1CommonNameConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1CommonNameConfig();
      var od = api.GoogleCloudApigeeV1CommonNameConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1CommonNameConfig(
          od as api.GoogleCloudApigeeV1CommonNameConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ConfigVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ConfigVersion();
      var od = api.GoogleCloudApigeeV1ConfigVersion.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ConfigVersion(
          od as api.GoogleCloudApigeeV1ConfigVersion);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Credential', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Credential();
      var od = api.GoogleCloudApigeeV1Credential.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Credential(
          od as api.GoogleCloudApigeeV1Credential);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1CustomReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1CustomReport();
      var od = api.GoogleCloudApigeeV1CustomReport.fromJson(o.toJson());
      checkGoogleCloudApigeeV1CustomReport(
          od as api.GoogleCloudApigeeV1CustomReport);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1CustomReportMetric', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1CustomReportMetric();
      var od = api.GoogleCloudApigeeV1CustomReportMetric.fromJson(o.toJson());
      checkGoogleCloudApigeeV1CustomReportMetric(
          od as api.GoogleCloudApigeeV1CustomReportMetric);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DataCollectorConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DataCollectorConfig();
      var od = api.GoogleCloudApigeeV1DataCollectorConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DataCollectorConfig(
          od as api.GoogleCloudApigeeV1DataCollectorConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Datastore', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Datastore();
      var od = api.GoogleCloudApigeeV1Datastore.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Datastore(od as api.GoogleCloudApigeeV1Datastore);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DatastoreConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DatastoreConfig();
      var od = api.GoogleCloudApigeeV1DatastoreConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DatastoreConfig(
          od as api.GoogleCloudApigeeV1DatastoreConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DateRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DateRange();
      var od = api.GoogleCloudApigeeV1DateRange.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DateRange(od as api.GoogleCloudApigeeV1DateRange);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DebugMask', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DebugMask();
      var od = api.GoogleCloudApigeeV1DebugMask.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DebugMask(od as api.GoogleCloudApigeeV1DebugMask);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DebugSession', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DebugSession();
      var od = api.GoogleCloudApigeeV1DebugSession.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DebugSession(
          od as api.GoogleCloudApigeeV1DebugSession);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DebugSessionTransaction', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DebugSessionTransaction();
      var od =
          api.GoogleCloudApigeeV1DebugSessionTransaction.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DebugSessionTransaction(
          od as api.GoogleCloudApigeeV1DebugSessionTransaction);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DeleteCustomReportResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DeleteCustomReportResponse();
      var od = api.GoogleCloudApigeeV1DeleteCustomReportResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1DeleteCustomReportResponse(
          od as api.GoogleCloudApigeeV1DeleteCustomReportResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Deployment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Deployment();
      var od = api.GoogleCloudApigeeV1Deployment.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Deployment(
          od as api.GoogleCloudApigeeV1Deployment);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DeploymentChangeReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DeploymentChangeReport();
      var od =
          api.GoogleCloudApigeeV1DeploymentChangeReport.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DeploymentChangeReport(
          od as api.GoogleCloudApigeeV1DeploymentChangeReport);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudApigeeV1DeploymentChangeReportRoutingChange', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DeploymentChangeReportRoutingChange();
      var od =
          api.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange.fromJson(
              o.toJson());
      checkGoogleCloudApigeeV1DeploymentChangeReportRoutingChange(
          od as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict();
      var od =
          api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict.fromJson(
              o.toJson());
      checkGoogleCloudApigeeV1DeploymentChangeReportRoutingConflict(
          od as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment();
      var od = api.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment
          .fromJson(o.toJson());
      checkGoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment(
          od as api.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DeploymentConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DeploymentConfig();
      var od = api.GoogleCloudApigeeV1DeploymentConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DeploymentConfig(
          od as api.GoogleCloudApigeeV1DeploymentConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Developer', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Developer();
      var od = api.GoogleCloudApigeeV1Developer.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Developer(od as api.GoogleCloudApigeeV1Developer);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DeveloperApp', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DeveloperApp();
      var od = api.GoogleCloudApigeeV1DeveloperApp.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DeveloperApp(
          od as api.GoogleCloudApigeeV1DeveloperApp);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DeveloperAppKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DeveloperAppKey();
      var od = api.GoogleCloudApigeeV1DeveloperAppKey.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DeveloperAppKey(
          od as api.GoogleCloudApigeeV1DeveloperAppKey);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1DimensionMetric', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1DimensionMetric();
      var od = api.GoogleCloudApigeeV1DimensionMetric.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DimensionMetric(
          od as api.GoogleCloudApigeeV1DimensionMetric);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1EntityMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1EntityMetadata();
      var od = api.GoogleCloudApigeeV1EntityMetadata.fromJson(o.toJson());
      checkGoogleCloudApigeeV1EntityMetadata(
          od as api.GoogleCloudApigeeV1EntityMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Environment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Environment();
      var od = api.GoogleCloudApigeeV1Environment.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Environment(
          od as api.GoogleCloudApigeeV1Environment);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1EnvironmentConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1EnvironmentConfig();
      var od = api.GoogleCloudApigeeV1EnvironmentConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1EnvironmentConfig(
          od as api.GoogleCloudApigeeV1EnvironmentConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1EnvironmentGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1EnvironmentGroup();
      var od = api.GoogleCloudApigeeV1EnvironmentGroup.fromJson(o.toJson());
      checkGoogleCloudApigeeV1EnvironmentGroup(
          od as api.GoogleCloudApigeeV1EnvironmentGroup);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1EnvironmentGroupAttachment',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1EnvironmentGroupAttachment();
      var od = api.GoogleCloudApigeeV1EnvironmentGroupAttachment.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1EnvironmentGroupAttachment(
          od as api.GoogleCloudApigeeV1EnvironmentGroupAttachment);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1EnvironmentGroupConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1EnvironmentGroupConfig();
      var od =
          api.GoogleCloudApigeeV1EnvironmentGroupConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1EnvironmentGroupConfig(
          od as api.GoogleCloudApigeeV1EnvironmentGroupConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Export', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Export();
      var od = api.GoogleCloudApigeeV1Export.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Export(od as api.GoogleCloudApigeeV1Export);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ExportRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ExportRequest();
      var od = api.GoogleCloudApigeeV1ExportRequest.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ExportRequest(
          od as api.GoogleCloudApigeeV1ExportRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1FlowHook', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1FlowHook();
      var od = api.GoogleCloudApigeeV1FlowHook.fromJson(o.toJson());
      checkGoogleCloudApigeeV1FlowHook(od as api.GoogleCloudApigeeV1FlowHook);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1FlowHookConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1FlowHookConfig();
      var od = api.GoogleCloudApigeeV1FlowHookConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1FlowHookConfig(
          od as api.GoogleCloudApigeeV1FlowHookConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1GetSyncAuthorizationRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1GetSyncAuthorizationRequest();
      var od = api.GoogleCloudApigeeV1GetSyncAuthorizationRequest.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1GetSyncAuthorizationRequest(
          od as api.GoogleCloudApigeeV1GetSyncAuthorizationRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1IngressConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1IngressConfig();
      var od = api.GoogleCloudApigeeV1IngressConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1IngressConfig(
          od as api.GoogleCloudApigeeV1IngressConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Instance', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Instance();
      var od = api.GoogleCloudApigeeV1Instance.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Instance(od as api.GoogleCloudApigeeV1Instance);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1InstanceAttachment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1InstanceAttachment();
      var od = api.GoogleCloudApigeeV1InstanceAttachment.fromJson(o.toJson());
      checkGoogleCloudApigeeV1InstanceAttachment(
          od as api.GoogleCloudApigeeV1InstanceAttachment);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1InstanceDeploymentStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1InstanceDeploymentStatus();
      var od =
          api.GoogleCloudApigeeV1InstanceDeploymentStatus.fromJson(o.toJson());
      checkGoogleCloudApigeeV1InstanceDeploymentStatus(
          od as api.GoogleCloudApigeeV1InstanceDeploymentStatus);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision();
      var od = api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision
          .fromJson(o.toJson());
      checkGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision(od
          as api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute();
      var od =
          api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute.fromJson(
              o.toJson());
      checkGoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute(
          od as api.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1KeyAliasReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1KeyAliasReference();
      var od = api.GoogleCloudApigeeV1KeyAliasReference.fromJson(o.toJson());
      checkGoogleCloudApigeeV1KeyAliasReference(
          od as api.GoogleCloudApigeeV1KeyAliasReference);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1KeyValueMap', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1KeyValueMap();
      var od = api.GoogleCloudApigeeV1KeyValueMap.fromJson(o.toJson());
      checkGoogleCloudApigeeV1KeyValueMap(
          od as api.GoogleCloudApigeeV1KeyValueMap);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Keystore', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Keystore();
      var od = api.GoogleCloudApigeeV1Keystore.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Keystore(od as api.GoogleCloudApigeeV1Keystore);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1KeystoreConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1KeystoreConfig();
      var od = api.GoogleCloudApigeeV1KeystoreConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1KeystoreConfig(
          od as api.GoogleCloudApigeeV1KeystoreConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListApiCategoriesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListApiCategoriesResponse();
      var od =
          api.GoogleCloudApigeeV1ListApiCategoriesResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListApiCategoriesResponse(
          od as api.GoogleCloudApigeeV1ListApiCategoriesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListApiProductsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListApiProductsResponse();
      var od =
          api.GoogleCloudApigeeV1ListApiProductsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListApiProductsResponse(
          od as api.GoogleCloudApigeeV1ListApiProductsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListApiProxiesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListApiProxiesResponse();
      var od =
          api.GoogleCloudApigeeV1ListApiProxiesResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListApiProxiesResponse(
          od as api.GoogleCloudApigeeV1ListApiProxiesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListAppsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListAppsResponse();
      var od = api.GoogleCloudApigeeV1ListAppsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListAppsResponse(
          od as api.GoogleCloudApigeeV1ListAppsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListAsyncQueriesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListAsyncQueriesResponse();
      var od =
          api.GoogleCloudApigeeV1ListAsyncQueriesResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListAsyncQueriesResponse(
          od as api.GoogleCloudApigeeV1ListAsyncQueriesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListCustomReportsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListCustomReportsResponse();
      var od =
          api.GoogleCloudApigeeV1ListCustomReportsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListCustomReportsResponse(
          od as api.GoogleCloudApigeeV1ListCustomReportsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListDatastoresResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListDatastoresResponse();
      var od =
          api.GoogleCloudApigeeV1ListDatastoresResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListDatastoresResponse(
          od as api.GoogleCloudApigeeV1ListDatastoresResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListDebugSessionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListDebugSessionsResponse();
      var od =
          api.GoogleCloudApigeeV1ListDebugSessionsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListDebugSessionsResponse(
          od as api.GoogleCloudApigeeV1ListDebugSessionsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListDeploymentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListDeploymentsResponse();
      var od =
          api.GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListDeploymentsResponse(
          od as api.GoogleCloudApigeeV1ListDeploymentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListDeveloperAppsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListDeveloperAppsResponse();
      var od =
          api.GoogleCloudApigeeV1ListDeveloperAppsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListDeveloperAppsResponse(
          od as api.GoogleCloudApigeeV1ListDeveloperAppsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse();
      var od = api.GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse
          .fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse(
          od as api.GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListEnvironmentGroupsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListEnvironmentGroupsResponse();
      var od = api.GoogleCloudApigeeV1ListEnvironmentGroupsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListEnvironmentGroupsResponse(
          od as api.GoogleCloudApigeeV1ListEnvironmentGroupsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudApigeeV1ListEnvironmentResourcesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListEnvironmentResourcesResponse();
      var od = api.GoogleCloudApigeeV1ListEnvironmentResourcesResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListEnvironmentResourcesResponse(
          od as api.GoogleCloudApigeeV1ListEnvironmentResourcesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListExportsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListExportsResponse();
      var od = api.GoogleCloudApigeeV1ListExportsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListExportsResponse(
          od as api.GoogleCloudApigeeV1ListExportsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListHybridIssuersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListHybridIssuersResponse();
      var od =
          api.GoogleCloudApigeeV1ListHybridIssuersResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListHybridIssuersResponse(
          od as api.GoogleCloudApigeeV1ListHybridIssuersResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudApigeeV1ListInstanceAttachmentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListInstanceAttachmentsResponse();
      var od = api.GoogleCloudApigeeV1ListInstanceAttachmentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListInstanceAttachmentsResponse(
          od as api.GoogleCloudApigeeV1ListInstanceAttachmentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListInstancesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListInstancesResponse();
      var od =
          api.GoogleCloudApigeeV1ListInstancesResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListInstancesResponse(
          od as api.GoogleCloudApigeeV1ListInstancesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListOfDevelopersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListOfDevelopersResponse();
      var od =
          api.GoogleCloudApigeeV1ListOfDevelopersResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListOfDevelopersResponse(
          od as api.GoogleCloudApigeeV1ListOfDevelopersResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListOrganizationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListOrganizationsResponse();
      var od =
          api.GoogleCloudApigeeV1ListOrganizationsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListOrganizationsResponse(
          od as api.GoogleCloudApigeeV1ListOrganizationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ListSharedFlowsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ListSharedFlowsResponse();
      var od =
          api.GoogleCloudApigeeV1ListSharedFlowsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListSharedFlowsResponse(
          od as api.GoogleCloudApigeeV1ListSharedFlowsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Metadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Metadata();
      var od = api.GoogleCloudApigeeV1Metadata.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Metadata(od as api.GoogleCloudApigeeV1Metadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Metric', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Metric();
      var od = api.GoogleCloudApigeeV1Metric.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Metric(od as api.GoogleCloudApigeeV1Metric);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Operation();
      var od = api.GoogleCloudApigeeV1Operation.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Operation(od as api.GoogleCloudApigeeV1Operation);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1OperationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1OperationConfig();
      var od = api.GoogleCloudApigeeV1OperationConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1OperationConfig(
          od as api.GoogleCloudApigeeV1OperationConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1OperationGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1OperationGroup();
      var od = api.GoogleCloudApigeeV1OperationGroup.fromJson(o.toJson());
      checkGoogleCloudApigeeV1OperationGroup(
          od as api.GoogleCloudApigeeV1OperationGroup);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1OperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1OperationMetadata();
      var od = api.GoogleCloudApigeeV1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudApigeeV1OperationMetadata(
          od as api.GoogleCloudApigeeV1OperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1OptimizedStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1OptimizedStats();
      var od = api.GoogleCloudApigeeV1OptimizedStats.fromJson(o.toJson());
      checkGoogleCloudApigeeV1OptimizedStats(
          od as api.GoogleCloudApigeeV1OptimizedStats);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1OptimizedStatsNode', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1OptimizedStatsNode();
      var od = api.GoogleCloudApigeeV1OptimizedStatsNode.fromJson(o.toJson());
      checkGoogleCloudApigeeV1OptimizedStatsNode(
          od as api.GoogleCloudApigeeV1OptimizedStatsNode);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1OptimizedStatsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1OptimizedStatsResponse();
      var od =
          api.GoogleCloudApigeeV1OptimizedStatsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1OptimizedStatsResponse(
          od as api.GoogleCloudApigeeV1OptimizedStatsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Organization', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Organization();
      var od = api.GoogleCloudApigeeV1Organization.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Organization(
          od as api.GoogleCloudApigeeV1Organization);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1OrganizationProjectMapping',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1OrganizationProjectMapping();
      var od = api.GoogleCloudApigeeV1OrganizationProjectMapping.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1OrganizationProjectMapping(
          od as api.GoogleCloudApigeeV1OrganizationProjectMapping);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1PodStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1PodStatus();
      var od = api.GoogleCloudApigeeV1PodStatus.fromJson(o.toJson());
      checkGoogleCloudApigeeV1PodStatus(od as api.GoogleCloudApigeeV1PodStatus);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Point', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Point();
      var od = api.GoogleCloudApigeeV1Point.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Point(od as api.GoogleCloudApigeeV1Point);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Properties', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Properties();
      var od = api.GoogleCloudApigeeV1Properties.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Properties(
          od as api.GoogleCloudApigeeV1Properties);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Property', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Property();
      var od = api.GoogleCloudApigeeV1Property.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Property(od as api.GoogleCloudApigeeV1Property);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ProvisionOrganizationRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ProvisionOrganizationRequest();
      var od = api.GoogleCloudApigeeV1ProvisionOrganizationRequest.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ProvisionOrganizationRequest(
          od as api.GoogleCloudApigeeV1ProvisionOrganizationRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Query', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Query();
      var od = api.GoogleCloudApigeeV1Query.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Query(od as api.GoogleCloudApigeeV1Query);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1QueryMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1QueryMetadata();
      var od = api.GoogleCloudApigeeV1QueryMetadata.fromJson(o.toJson());
      checkGoogleCloudApigeeV1QueryMetadata(
          od as api.GoogleCloudApigeeV1QueryMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1QueryMetric', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1QueryMetric();
      var od = api.GoogleCloudApigeeV1QueryMetric.fromJson(o.toJson());
      checkGoogleCloudApigeeV1QueryMetric(
          od as api.GoogleCloudApigeeV1QueryMetric);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Quota', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Quota();
      var od = api.GoogleCloudApigeeV1Quota.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Quota(od as api.GoogleCloudApigeeV1Quota);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Reference', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Reference();
      var od = api.GoogleCloudApigeeV1Reference.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Reference(od as api.GoogleCloudApigeeV1Reference);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ReferenceConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ReferenceConfig();
      var od = api.GoogleCloudApigeeV1ReferenceConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ReferenceConfig(
          od as api.GoogleCloudApigeeV1ReferenceConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ReportInstanceStatusRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ReportInstanceStatusRequest();
      var od = api.GoogleCloudApigeeV1ReportInstanceStatusRequest.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ReportInstanceStatusRequest(
          od as api.GoogleCloudApigeeV1ReportInstanceStatusRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ReportInstanceStatusResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ReportInstanceStatusResponse();
      var od = api.GoogleCloudApigeeV1ReportInstanceStatusResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ReportInstanceStatusResponse(
          od as api.GoogleCloudApigeeV1ReportInstanceStatusResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ReportProperty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ReportProperty();
      var od = api.GoogleCloudApigeeV1ReportProperty.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ReportProperty(
          od as api.GoogleCloudApigeeV1ReportProperty);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ResourceConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ResourceConfig();
      var od = api.GoogleCloudApigeeV1ResourceConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ResourceConfig(
          od as api.GoogleCloudApigeeV1ResourceConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ResourceFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ResourceFile();
      var od = api.GoogleCloudApigeeV1ResourceFile.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ResourceFile(
          od as api.GoogleCloudApigeeV1ResourceFile);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ResourceFiles', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ResourceFiles();
      var od = api.GoogleCloudApigeeV1ResourceFiles.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ResourceFiles(
          od as api.GoogleCloudApigeeV1ResourceFiles);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ResourceStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ResourceStatus();
      var od = api.GoogleCloudApigeeV1ResourceStatus.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ResourceStatus(
          od as api.GoogleCloudApigeeV1ResourceStatus);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Result', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Result();
      var od = api.GoogleCloudApigeeV1Result.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Result(od as api.GoogleCloudApigeeV1Result);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1RevisionStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1RevisionStatus();
      var od = api.GoogleCloudApigeeV1RevisionStatus.fromJson(o.toJson());
      checkGoogleCloudApigeeV1RevisionStatus(
          od as api.GoogleCloudApigeeV1RevisionStatus);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1RoutingRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1RoutingRule();
      var od = api.GoogleCloudApigeeV1RoutingRule.fromJson(o.toJson());
      checkGoogleCloudApigeeV1RoutingRule(
          od as api.GoogleCloudApigeeV1RoutingRule);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1RuntimeTraceConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1RuntimeTraceConfig();
      var od = api.GoogleCloudApigeeV1RuntimeTraceConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1RuntimeTraceConfig(
          od as api.GoogleCloudApigeeV1RuntimeTraceConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1RuntimeTraceConfigOverride',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1RuntimeTraceConfigOverride();
      var od = api.GoogleCloudApigeeV1RuntimeTraceConfigOverride.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1RuntimeTraceConfigOverride(
          od as api.GoogleCloudApigeeV1RuntimeTraceConfigOverride);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1RuntimeTraceSamplingConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1RuntimeTraceSamplingConfig();
      var od = api.GoogleCloudApigeeV1RuntimeTraceSamplingConfig.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1RuntimeTraceSamplingConfig(
          od as api.GoogleCloudApigeeV1RuntimeTraceSamplingConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange();
      var od =
          api.GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange
              .fromJson(o.toJson());
      checkGoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange(od
          as api
              .GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Schema', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Schema();
      var od = api.GoogleCloudApigeeV1Schema.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Schema(od as api.GoogleCloudApigeeV1Schema);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1SchemaSchemaElement', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1SchemaSchemaElement();
      var od = api.GoogleCloudApigeeV1SchemaSchemaElement.fromJson(o.toJson());
      checkGoogleCloudApigeeV1SchemaSchemaElement(
          od as api.GoogleCloudApigeeV1SchemaSchemaElement);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1SchemaSchemaProperty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1SchemaSchemaProperty();
      var od = api.GoogleCloudApigeeV1SchemaSchemaProperty.fromJson(o.toJson());
      checkGoogleCloudApigeeV1SchemaSchemaProperty(
          od as api.GoogleCloudApigeeV1SchemaSchemaProperty);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1ServiceIssuersMapping', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1ServiceIssuersMapping();
      var od =
          api.GoogleCloudApigeeV1ServiceIssuersMapping.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ServiceIssuersMapping(
          od as api.GoogleCloudApigeeV1ServiceIssuersMapping);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Session', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Session();
      var od = api.GoogleCloudApigeeV1Session.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Session(od as api.GoogleCloudApigeeV1Session);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1SharedFlow', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1SharedFlow();
      var od = api.GoogleCloudApigeeV1SharedFlow.fromJson(o.toJson());
      checkGoogleCloudApigeeV1SharedFlow(
          od as api.GoogleCloudApigeeV1SharedFlow);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1SharedFlowRevision', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1SharedFlowRevision();
      var od = api.GoogleCloudApigeeV1SharedFlowRevision.fromJson(o.toJson());
      checkGoogleCloudApigeeV1SharedFlowRevision(
          od as api.GoogleCloudApigeeV1SharedFlowRevision);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Stats', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Stats();
      var od = api.GoogleCloudApigeeV1Stats.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Stats(od as api.GoogleCloudApigeeV1Stats);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1StatsEnvironmentStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1StatsEnvironmentStats();
      var od =
          api.GoogleCloudApigeeV1StatsEnvironmentStats.fromJson(o.toJson());
      checkGoogleCloudApigeeV1StatsEnvironmentStats(
          od as api.GoogleCloudApigeeV1StatsEnvironmentStats);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1Subscription', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1Subscription();
      var od = api.GoogleCloudApigeeV1Subscription.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Subscription(
          od as api.GoogleCloudApigeeV1Subscription);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1SyncAuthorization', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1SyncAuthorization();
      var od = api.GoogleCloudApigeeV1SyncAuthorization.fromJson(o.toJson());
      checkGoogleCloudApigeeV1SyncAuthorization(
          od as api.GoogleCloudApigeeV1SyncAuthorization);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1TargetServer', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1TargetServer();
      var od = api.GoogleCloudApigeeV1TargetServer.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TargetServer(
          od as api.GoogleCloudApigeeV1TargetServer);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1TargetServerConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1TargetServerConfig();
      var od = api.GoogleCloudApigeeV1TargetServerConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TargetServerConfig(
          od as api.GoogleCloudApigeeV1TargetServerConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1TestDatastoreResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1TestDatastoreResponse();
      var od =
          api.GoogleCloudApigeeV1TestDatastoreResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TestDatastoreResponse(
          od as api.GoogleCloudApigeeV1TestDatastoreResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1TlsInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1TlsInfo();
      var od = api.GoogleCloudApigeeV1TlsInfo.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TlsInfo(od as api.GoogleCloudApigeeV1TlsInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1TlsInfoCommonName', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1TlsInfoCommonName();
      var od = api.GoogleCloudApigeeV1TlsInfoCommonName.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TlsInfoCommonName(
          od as api.GoogleCloudApigeeV1TlsInfoCommonName);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1TlsInfoConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1TlsInfoConfig();
      var od = api.GoogleCloudApigeeV1TlsInfoConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TlsInfoConfig(
          od as api.GoogleCloudApigeeV1TlsInfoConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudApigeeV1UpdateError', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudApigeeV1UpdateError();
      var od = api.GoogleCloudApigeeV1UpdateError.fromJson(o.toJson());
      checkGoogleCloudApigeeV1UpdateError(
          od as api.GoogleCloudApigeeV1UpdateError);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1AuditConfig();
      var od = api.GoogleIamV1AuditConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditConfig(od as api.GoogleIamV1AuditConfig);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1AuditLogConfig();
      var od = api.GoogleIamV1AuditLogConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditLogConfig(od as api.GoogleIamV1AuditLogConfig);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1Binding();
      var od = api.GoogleIamV1Binding.fromJson(o.toJson());
      checkGoogleIamV1Binding(od as api.GoogleIamV1Binding);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1Policy();
      var od = api.GoogleIamV1Policy.fromJson(o.toJson());
      checkGoogleIamV1Policy(od as api.GoogleIamV1Policy);
    });
  });

  unittest.group('obj-schema-GoogleIamV1SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1SetIamPolicyRequest();
      var od = api.GoogleIamV1SetIamPolicyRequest.fromJson(o.toJson());
      checkGoogleIamV1SetIamPolicyRequest(
          od as api.GoogleIamV1SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1TestIamPermissionsRequest();
      var od = api.GoogleIamV1TestIamPermissionsRequest.fromJson(o.toJson());
      checkGoogleIamV1TestIamPermissionsRequest(
          od as api.GoogleIamV1TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1TestIamPermissionsResponse();
      var od = api.GoogleIamV1TestIamPermissionsResponse.fromJson(o.toJson());
      checkGoogleIamV1TestIamPermissionsResponse(
          od as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(
          od as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleProtobufEmpty();
      var od = api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-GoogleRpcPreconditionFailure', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcPreconditionFailure();
      var od = api.GoogleRpcPreconditionFailure.fromJson(o.toJson());
      checkGoogleRpcPreconditionFailure(od as api.GoogleRpcPreconditionFailure);
    });
  });

  unittest.group('obj-schema-GoogleRpcPreconditionFailureViolation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcPreconditionFailureViolation();
      var od = api.GoogleRpcPreconditionFailureViolation.fromJson(o.toJson());
      checkGoogleRpcPreconditionFailureViolation(
          od as api.GoogleRpcPreconditionFailureViolation);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleTypeExpr();
      var od = api.GoogleTypeExpr.fromJson(o.toJson());
      checkGoogleTypeExpr(od as api.GoogleTypeExpr);
    });
  });

  unittest.group('resource-HybridIssuersResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).hybrid.issuers;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListHybridIssuersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListHybridIssuersResponse(
            response as api.GoogleCloudApigeeV1ListHybridIssuersResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations;
      var arg_request = buildGoogleCloudApigeeV1Organization();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Organization.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Organization(
            obj as api.GoogleCloudApigeeV1Organization);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/organizations"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, parent: arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Organization());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Organization(
            response as api.GoogleCloudApigeeV1Organization);
      })));
    });

    unittest.test('method--getDeployedIngressConfig', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations;
      var arg_name = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1IngressConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDeployedIngressConfig(arg_name,
              view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1IngressConfig(
            response as api.GoogleCloudApigeeV1IngressConfig);
      })));
    });

    unittest.test('method--getSyncAuthorization', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations;
      var arg_request = buildGoogleCloudApigeeV1GetSyncAuthorizationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1GetSyncAuthorizationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1GetSyncAuthorizationRequest(
            obj as api.GoogleCloudApigeeV1GetSyncAuthorizationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1SyncAuthorization());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getSyncAuthorization(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SyncAuthorization(
            response as api.GoogleCloudApigeeV1SyncAuthorization);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListOrganizationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListOrganizationsResponse(
            response as api.GoogleCloudApigeeV1ListOrganizationsResponse);
      })));
    });

    unittest.test('method--setSyncAuthorization', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations;
      var arg_request = buildGoogleCloudApigeeV1SyncAuthorization();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1SyncAuthorization.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1SyncAuthorization(
            obj as api.GoogleCloudApigeeV1SyncAuthorization);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1SyncAuthorization());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setSyncAuthorization(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SyncAuthorization(
            response as api.GoogleCloudApigeeV1SyncAuthorization);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations;
      var arg_request = buildGoogleCloudApigeeV1Organization();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Organization.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Organization(
            obj as api.GoogleCloudApigeeV1Organization);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Organization());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Organization(
            response as api.GoogleCloudApigeeV1Organization);
      })));
    });
  });

  unittest.group('resource-OrganizationsAnalyticsDatastoresResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.analytics.datastores;
      var arg_request = buildGoogleCloudApigeeV1Datastore();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Datastore.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Datastore(
            obj as api.GoogleCloudApigeeV1Datastore);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Datastore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Datastore(
            response as api.GoogleCloudApigeeV1Datastore);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.analytics.datastores;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.analytics.datastores;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Datastore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Datastore(
            response as api.GoogleCloudApigeeV1Datastore);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.analytics.datastores;
      var arg_parent = 'foo';
      var arg_targetType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["targetType"].first, unittest.equals(arg_targetType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDatastoresResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, targetType: arg_targetType, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDatastoresResponse(
            response as api.GoogleCloudApigeeV1ListDatastoresResponse);
      })));
    });

    unittest.test('method--test', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.analytics.datastores;
      var arg_request = buildGoogleCloudApigeeV1Datastore();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Datastore.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Datastore(
            obj as api.GoogleCloudApigeeV1Datastore);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1TestDatastoreResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .test(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1TestDatastoreResponse(
            response as api.GoogleCloudApigeeV1TestDatastoreResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.analytics.datastores;
      var arg_request = buildGoogleCloudApigeeV1Datastore();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Datastore.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Datastore(
            obj as api.GoogleCloudApigeeV1Datastore);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Datastore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Datastore(
            response as api.GoogleCloudApigeeV1Datastore);
      })));
    });
  });

  unittest.group('resource-OrganizationsApiproductsResourceApi', () {
    unittest.test('method--attributes', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apiproducts;
      var arg_request = buildGoogleCloudApigeeV1Attributes();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Attributes.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Attributes(
            obj as api.GoogleCloudApigeeV1Attributes);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .attributes(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(
            response as api.GoogleCloudApigeeV1Attributes);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apiproducts;
      var arg_request = buildGoogleCloudApigeeV1ApiProduct();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1ApiProduct.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1ApiProduct(
            obj as api.GoogleCloudApigeeV1ApiProduct);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProduct(
            response as api.GoogleCloudApigeeV1ApiProduct);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apiproducts;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProduct(
            response as api.GoogleCloudApigeeV1ApiProduct);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apiproducts;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProduct(
            response as api.GoogleCloudApigeeV1ApiProduct);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apiproducts;
      var arg_parent = 'foo';
      var arg_attributename = 'foo';
      var arg_attributevalue = 'foo';
      var arg_count = 'foo';
      var arg_expand = true;
      var arg_startKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["attributename"].first,
            unittest.equals(arg_attributename));
        unittest.expect(queryMap["attributevalue"].first,
            unittest.equals(arg_attributevalue));
        unittest.expect(queryMap["count"].first, unittest.equals(arg_count));
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(
            queryMap["startKey"].first, unittest.equals(arg_startKey));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListApiProductsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              attributename: arg_attributename,
              attributevalue: arg_attributevalue,
              count: arg_count,
              expand: arg_expand,
              startKey: arg_startKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListApiProductsResponse(
            response as api.GoogleCloudApigeeV1ListApiProductsResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apiproducts;
      var arg_request = buildGoogleCloudApigeeV1ApiProduct();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1ApiProduct.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1ApiProduct(
            obj as api.GoogleCloudApigeeV1ApiProduct);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProduct(
            response as api.GoogleCloudApigeeV1ApiProduct);
      })));
    });
  });

  unittest.group('resource-OrganizationsApiproductsAttributesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apiproducts.attributes_1;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(
            response as api.GoogleCloudApigeeV1Attribute);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apiproducts.attributes_1;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(
            response as api.GoogleCloudApigeeV1Attribute);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apiproducts.attributes_1;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(
            response as api.GoogleCloudApigeeV1Attributes);
      })));
    });

    unittest.test('method--updateApiProductAttribute', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apiproducts.attributes_1;
      var arg_request = buildGoogleCloudApigeeV1Attribute();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Attribute.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Attribute(
            obj as api.GoogleCloudApigeeV1Attribute);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateApiProductAttribute(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(
            response as api.GoogleCloudApigeeV1Attribute);
      })));
    });
  });

  unittest.group('resource-OrganizationsApisResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis;
      var arg_request = buildGoogleApiHttpBody();
      var arg_parent = 'foo';
      var arg_action = 'foo';
      var arg_name = 'foo';
      var arg_validate = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleApiHttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleApiHttpBody(obj as api.GoogleApiHttpBody);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(
            queryMap["validate"].first, unittest.equals("$arg_validate"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1ApiProxyRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              action: arg_action,
              name: arg_name,
              validate: arg_validate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProxyRevision(
            response as api.GoogleCloudApigeeV1ApiProxyRevision);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProxy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProxy(
            response as api.GoogleCloudApigeeV1ApiProxy);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProxy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProxy(
            response as api.GoogleCloudApigeeV1ApiProxy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis;
      var arg_parent = 'foo';
      var arg_includeMetaData = true;
      var arg_includeRevisions = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["includeMetaData"].first,
            unittest.equals("$arg_includeMetaData"));
        unittest.expect(queryMap["includeRevisions"].first,
            unittest.equals("$arg_includeRevisions"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListApiProxiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              includeMetaData: arg_includeMetaData,
              includeRevisions: arg_includeRevisions,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListApiProxiesResponse(
            response as api.GoogleCloudApigeeV1ListApiProxiesResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsApisDeploymentsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis.deployments;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(
            response as api.GoogleCloudApigeeV1ListDeploymentsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsApisKeyvaluemapsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis.keyvaluemaps;
      var arg_request = buildGoogleCloudApigeeV1KeyValueMap();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1KeyValueMap.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1KeyValueMap(
            obj as api.GoogleCloudApigeeV1KeyValueMap);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(
            response as api.GoogleCloudApigeeV1KeyValueMap);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis.keyvaluemaps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(
            response as api.GoogleCloudApigeeV1KeyValueMap);
      })));
    });
  });

  unittest.group('resource-OrganizationsApisRevisionsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis.revisions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1ApiProxyRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProxyRevision(
            response as api.GoogleCloudApigeeV1ApiProxyRevision);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis.revisions;
      var arg_name = 'foo';
      var arg_format = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, format: arg_format, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
      })));
    });

    unittest.test('method--updateApiProxyRevision', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis.revisions;
      var arg_request = buildGoogleApiHttpBody();
      var arg_name = 'foo';
      var arg_validate = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleApiHttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleApiHttpBody(obj as api.GoogleApiHttpBody);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["validate"].first, unittest.equals("$arg_validate"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1ApiProxyRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateApiProxyRevision(arg_request, arg_name,
              validate: arg_validate, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProxyRevision(
            response as api.GoogleCloudApigeeV1ApiProxyRevision);
      })));
    });
  });

  unittest.group('resource-OrganizationsApisRevisionsDeploymentsResourceApi',
      () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apis.revisions.deployments;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(
            response as api.GoogleCloudApigeeV1ListDeploymentsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsAppsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1App());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1App(response as api.GoogleCloudApigeeV1App);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.apps;
      var arg_parent = 'foo';
      var arg_apiProduct = 'foo';
      var arg_apptype = 'foo';
      var arg_expand = true;
      var arg_ids = 'foo';
      var arg_includeCred = true;
      var arg_keyStatus = 'foo';
      var arg_rows = 'foo';
      var arg_startKey = 'foo';
      var arg_status = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["apiProduct"].first, unittest.equals(arg_apiProduct));
        unittest.expect(
            queryMap["apptype"].first, unittest.equals(arg_apptype));
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(queryMap["ids"].first, unittest.equals(arg_ids));
        unittest.expect(
            queryMap["includeCred"].first, unittest.equals("$arg_includeCred"));
        unittest.expect(
            queryMap["keyStatus"].first, unittest.equals(arg_keyStatus));
        unittest.expect(queryMap["rows"].first, unittest.equals(arg_rows));
        unittest.expect(
            queryMap["startKey"].first, unittest.equals(arg_startKey));
        unittest.expect(queryMap["status"].first, unittest.equals(arg_status));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1ListAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              apiProduct: arg_apiProduct,
              apptype: arg_apptype,
              expand: arg_expand,
              ids: arg_ids,
              includeCred: arg_includeCred,
              keyStatus: arg_keyStatus,
              rows: arg_rows,
              startKey: arg_startKey,
              status: arg_status,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListAppsResponse(
            response as api.GoogleCloudApigeeV1ListAppsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsDeploymentsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.deployments;
      var arg_parent = 'foo';
      var arg_sharedFlows = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["sharedFlows"].first, unittest.equals("$arg_sharedFlows"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, sharedFlows: arg_sharedFlows, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(
            response as api.GoogleCloudApigeeV1ListDeploymentsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsDevelopersResourceApi', () {
    unittest.test('method--attributes', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers;
      var arg_request = buildGoogleCloudApigeeV1Attributes();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Attributes.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Attributes(
            obj as api.GoogleCloudApigeeV1Attributes);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .attributes(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(
            response as api.GoogleCloudApigeeV1Attributes);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers;
      var arg_request = buildGoogleCloudApigeeV1Developer();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Developer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Developer(
            obj as api.GoogleCloudApigeeV1Developer);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Developer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Developer(
            response as api.GoogleCloudApigeeV1Developer);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Developer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Developer(
            response as api.GoogleCloudApigeeV1Developer);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers;
      var arg_name = 'foo';
      var arg_action = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Developer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Developer(
            response as api.GoogleCloudApigeeV1Developer);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers;
      var arg_parent = 'foo';
      var arg_count = 'foo';
      var arg_expand = true;
      var arg_ids = 'foo';
      var arg_includeCompany = true;
      var arg_startKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["count"].first, unittest.equals(arg_count));
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(queryMap["ids"].first, unittest.equals(arg_ids));
        unittest.expect(queryMap["includeCompany"].first,
            unittest.equals("$arg_includeCompany"));
        unittest.expect(
            queryMap["startKey"].first, unittest.equals(arg_startKey));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListOfDevelopersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              count: arg_count,
              expand: arg_expand,
              ids: arg_ids,
              includeCompany: arg_includeCompany,
              startKey: arg_startKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListOfDevelopersResponse(
            response as api.GoogleCloudApigeeV1ListOfDevelopersResponse);
      })));
    });

    unittest.test('method--setDeveloperStatus', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers;
      var arg_name = 'foo';
      var arg_action = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setDeveloperStatus(arg_name,
              action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers;
      var arg_request = buildGoogleCloudApigeeV1Developer();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Developer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Developer(
            obj as api.GoogleCloudApigeeV1Developer);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Developer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Developer(
            response as api.GoogleCloudApigeeV1Developer);
      })));
    });
  });

  unittest.group('resource-OrganizationsDevelopersAppsResourceApi', () {
    unittest.test('method--attributes', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps;
      var arg_request = buildGoogleCloudApigeeV1Attributes();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Attributes.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Attributes(
            obj as api.GoogleCloudApigeeV1Attributes);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .attributes(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(
            response as api.GoogleCloudApigeeV1Attributes);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps;
      var arg_request = buildGoogleCloudApigeeV1DeveloperApp();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1DeveloperApp.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1DeveloperApp(
            obj as api.GoogleCloudApigeeV1DeveloperApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DeveloperApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperApp(
            response as api.GoogleCloudApigeeV1DeveloperApp);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DeveloperApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperApp(
            response as api.GoogleCloudApigeeV1DeveloperApp);
      })));
    });

    unittest.test('method--generateKeyPairOrUpdateDeveloperAppStatus', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps;
      var arg_request = buildGoogleCloudApigeeV1DeveloperApp();
      var arg_name = 'foo';
      var arg_action = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1DeveloperApp.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1DeveloperApp(
            obj as api.GoogleCloudApigeeV1DeveloperApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DeveloperApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateKeyPairOrUpdateDeveloperAppStatus(arg_request, arg_name,
              action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperApp(
            response as api.GoogleCloudApigeeV1DeveloperApp);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps;
      var arg_name = 'foo';
      var arg_entity = 'foo';
      var arg_query = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["entity"].first, unittest.equals(arg_entity));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DeveloperApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              entity: arg_entity, query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperApp(
            response as api.GoogleCloudApigeeV1DeveloperApp);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps;
      var arg_parent = 'foo';
      var arg_count = 'foo';
      var arg_expand = true;
      var arg_shallowExpand = true;
      var arg_startKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["count"].first, unittest.equals(arg_count));
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(queryMap["shallowExpand"].first,
            unittest.equals("$arg_shallowExpand"));
        unittest.expect(
            queryMap["startKey"].first, unittest.equals(arg_startKey));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeveloperAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              count: arg_count,
              expand: arg_expand,
              shallowExpand: arg_shallowExpand,
              startKey: arg_startKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeveloperAppsResponse(
            response as api.GoogleCloudApigeeV1ListDeveloperAppsResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps;
      var arg_request = buildGoogleCloudApigeeV1DeveloperApp();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1DeveloperApp.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1DeveloperApp(
            obj as api.GoogleCloudApigeeV1DeveloperApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DeveloperApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperApp(
            response as api.GoogleCloudApigeeV1DeveloperApp);
      })));
    });
  });

  unittest.group('resource-OrganizationsDevelopersAppsAttributesResourceApi',
      () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps.attributes_1;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(
            response as api.GoogleCloudApigeeV1Attribute);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps.attributes_1;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(
            response as api.GoogleCloudApigeeV1Attribute);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps.attributes_1;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(
            response as api.GoogleCloudApigeeV1Attributes);
      })));
    });

    unittest.test('method--updateDeveloperAppAttribute', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps.attributes_1;
      var arg_request = buildGoogleCloudApigeeV1Attribute();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Attribute.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Attribute(
            obj as api.GoogleCloudApigeeV1Attribute);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDeveloperAppAttribute(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(
            response as api.GoogleCloudApigeeV1Attribute);
      })));
    });
  });

  unittest.group('resource-OrganizationsDevelopersAppsKeysResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps.keys;
      var arg_request = buildGoogleCloudApigeeV1DeveloperAppKey();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1DeveloperAppKey.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1DeveloperAppKey(
            obj as api.GoogleCloudApigeeV1DeveloperAppKey);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(
            response as api.GoogleCloudApigeeV1DeveloperAppKey);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps.keys;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(
            response as api.GoogleCloudApigeeV1DeveloperAppKey);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps.keys;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(
            response as api.GoogleCloudApigeeV1DeveloperAppKey);
      })));
    });

    unittest.test('method--replaceDeveloperAppKey', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps.keys;
      var arg_request = buildGoogleCloudApigeeV1DeveloperAppKey();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1DeveloperAppKey.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1DeveloperAppKey(
            obj as api.GoogleCloudApigeeV1DeveloperAppKey);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .replaceDeveloperAppKey(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(
            response as api.GoogleCloudApigeeV1DeveloperAppKey);
      })));
    });

    unittest.test('method--updateDeveloperAppKey', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps.keys;
      var arg_request = buildGoogleCloudApigeeV1DeveloperAppKey();
      var arg_name = 'foo';
      var arg_action = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1DeveloperAppKey.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1DeveloperAppKey(
            obj as api.GoogleCloudApigeeV1DeveloperAppKey);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDeveloperAppKey(arg_request, arg_name,
              action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(
            response as api.GoogleCloudApigeeV1DeveloperAppKey);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsDevelopersAppsKeysApiproductsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.developers.apps.keys.apiproducts;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(
            response as api.GoogleCloudApigeeV1DeveloperAppKey);
      })));
    });

    unittest.test('method--updateDeveloperAppKeyApiProduct', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.developers.apps.keys.apiproducts;
      var arg_name = 'foo';
      var arg_action = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDeveloperAppKeyApiProduct(arg_name,
              action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });
  });

  unittest.group('resource-OrganizationsDevelopersAppsKeysCreateResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.apps.keys.create_1;
      var arg_request = buildGoogleCloudApigeeV1DeveloperAppKey();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1DeveloperAppKey.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1DeveloperAppKey(
            obj as api.GoogleCloudApigeeV1DeveloperAppKey);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(
            response as api.GoogleCloudApigeeV1DeveloperAppKey);
      })));
    });
  });

  unittest.group('resource-OrganizationsDevelopersAttributesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.attributes_1;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(
            response as api.GoogleCloudApigeeV1Attribute);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.attributes_1;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(
            response as api.GoogleCloudApigeeV1Attribute);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.attributes_1;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(
            response as api.GoogleCloudApigeeV1Attributes);
      })));
    });

    unittest.test('method--updateDeveloperAttribute', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.developers.attributes_1;
      var arg_request = buildGoogleCloudApigeeV1Attribute();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Attribute.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Attribute(
            obj as api.GoogleCloudApigeeV1Attribute);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDeveloperAttribute(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(
            response as api.GoogleCloudApigeeV1Attribute);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvgroupsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.envgroups;
      var arg_request = buildGoogleCloudApigeeV1EnvironmentGroup();
      var arg_parent = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1EnvironmentGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1EnvironmentGroup(
            obj as api.GoogleCloudApigeeV1EnvironmentGroup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.envgroups;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.envgroups;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1EnvironmentGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1EnvironmentGroup(
            response as api.GoogleCloudApigeeV1EnvironmentGroup);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.envgroups;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListEnvironmentGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListEnvironmentGroupsResponse(
            response as api.GoogleCloudApigeeV1ListEnvironmentGroupsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.envgroups;
      var arg_request = buildGoogleCloudApigeeV1EnvironmentGroup();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1EnvironmentGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1EnvironmentGroup(
            obj as api.GoogleCloudApigeeV1EnvironmentGroup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvgroupsAttachmentsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.envgroups.attachments;
      var arg_request = buildGoogleCloudApigeeV1EnvironmentGroupAttachment();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1EnvironmentGroupAttachment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1EnvironmentGroupAttachment(
            obj as api.GoogleCloudApigeeV1EnvironmentGroupAttachment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.envgroups.attachments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.envgroups.attachments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1EnvironmentGroupAttachment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1EnvironmentGroupAttachment(
            response as api.GoogleCloudApigeeV1EnvironmentGroupAttachment);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.envgroups.attachments;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse(response
            as api.GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleCloudApigeeV1Environment();
      var arg_parent = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Environment(
            obj as api.GoogleCloudApigeeV1Environment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Environment(
            response as api.GoogleCloudApigeeV1Environment);
      })));
    });

    unittest.test('method--getDebugmask', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DebugMask());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDebugmask(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DebugMask(
            response as api.GoogleCloudApigeeV1DebugMask);
      })));
    });

    unittest.test('method--getDeployedConfig', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1EnvironmentConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDeployedConfig(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1EnvironmentConfig(
            response as api.GoogleCloudApigeeV1EnvironmentConfig);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleIamV1SetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(
            obj as api.GoogleIamV1SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
      })));
    });

    unittest.test('method--subscribe', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Subscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .subscribe(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Subscription(
            response as api.GoogleCloudApigeeV1Subscription);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(
            obj as api.GoogleIamV1TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1TestIamPermissionsResponse(
            response as api.GoogleIamV1TestIamPermissionsResponse);
      })));
    });

    unittest.test('method--unsubscribe', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleCloudApigeeV1Subscription();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Subscription(
            obj as api.GoogleCloudApigeeV1Subscription);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unsubscribe(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleCloudApigeeV1Environment();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Environment(
            obj as api.GoogleCloudApigeeV1Environment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Environment(
            response as api.GoogleCloudApigeeV1Environment);
      })));
    });

    unittest.test('method--updateDebugmask', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleCloudApigeeV1DebugMask();
      var arg_name = 'foo';
      var arg_replaceRepeatedFields = true;
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1DebugMask.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1DebugMask(
            obj as api.GoogleCloudApigeeV1DebugMask);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["replaceRepeatedFields"].first,
            unittest.equals("$arg_replaceRepeatedFields"));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DebugMask());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDebugmask(arg_request, arg_name,
              replaceRepeatedFields: arg_replaceRepeatedFields,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DebugMask(
            response as api.GoogleCloudApigeeV1DebugMask);
      })));
    });

    unittest.test('method--updateEnvironment', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleCloudApigeeV1Environment();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Environment(
            obj as api.GoogleCloudApigeeV1Environment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateEnvironment(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Environment(
            response as api.GoogleCloudApigeeV1Environment);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsAnalyticsAdminResourceApi',
      () {
    unittest.test('method--getSchemav2', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.analytics.admin;
      var arg_name = 'foo';
      var arg_type = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Schema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getSchemav2(arg_name, type: arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Schema(
            response as api.GoogleCloudApigeeV1Schema);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsEnvironmentsAnalyticsExportsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.analytics.exports;
      var arg_request = buildGoogleCloudApigeeV1ExportRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1ExportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1ExportRequest(
            obj as api.GoogleCloudApigeeV1ExportRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Export());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Export(
            response as api.GoogleCloudApigeeV1Export);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.analytics.exports;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Export());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Export(
            response as api.GoogleCloudApigeeV1Export);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.analytics.exports;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1ListExportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListExportsResponse(
            response as api.GoogleCloudApigeeV1ListExportsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsApisDeploymentsResourceApi',
      () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.apis.deployments;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(
            response as api.GoogleCloudApigeeV1ListDeploymentsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsApisRevisionsResourceApi',
      () {
    unittest.test('method--deploy', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.apis.revisions;
      var arg_name = 'foo';
      var arg_override = true;
      var arg_sequencedRollout = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["override"].first, unittest.equals("$arg_override"));
        unittest.expect(queryMap["sequencedRollout"].first,
            unittest.equals("$arg_sequencedRollout"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Deployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deploy(arg_name,
              override: arg_override,
              sequencedRollout: arg_sequencedRollout,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Deployment(
            response as api.GoogleCloudApigeeV1Deployment);
      })));
    });

    unittest.test('method--getDeployments', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.apis.revisions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Deployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDeployments(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Deployment(
            response as api.GoogleCloudApigeeV1Deployment);
      })));
    });

    unittest.test('method--undeploy', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.apis.revisions;
      var arg_name = 'foo';
      var arg_sequencedRollout = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["sequencedRollout"].first,
            unittest.equals("$arg_sequencedRollout"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undeploy(arg_name,
              sequencedRollout: arg_sequencedRollout, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsEnvironmentsApisRevisionsDebugsessionsResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock)
          .organizations
          .environments
          .apis
          .revisions
          .debugsessions;
      var arg_request = buildGoogleCloudApigeeV1DebugSession();
      var arg_parent = 'foo';
      var arg_timeout = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1DebugSession.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1DebugSession(
            obj as api.GoogleCloudApigeeV1DebugSession);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["timeout"].first, unittest.equals(arg_timeout));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DebugSession());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              timeout: arg_timeout, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DebugSession(
            response as api.GoogleCloudApigeeV1DebugSession);
      })));
    });

    unittest.test('method--deleteData', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock)
          .organizations
          .environments
          .apis
          .revisions
          .debugsessions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteData(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock)
          .organizations
          .environments
          .apis
          .revisions
          .debugsessions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DebugSession());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DebugSession(
            response as api.GoogleCloudApigeeV1DebugSession);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock)
          .organizations
          .environments
          .apis
          .revisions
          .debugsessions;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDebugSessionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDebugSessionsResponse(
            response as api.GoogleCloudApigeeV1ListDebugSessionsResponse);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsEnvironmentsApisRevisionsDebugsessionsDataResourceApi',
      () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock)
          .organizations
          .environments
          .apis
          .revisions
          .debugsessions
          .data;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1DebugSessionTransaction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DebugSessionTransaction(
            response as api.GoogleCloudApigeeV1DebugSessionTransaction);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsEnvironmentsApisRevisionsDeploymentsResourceApi',
      () {
    unittest.test('method--generateDeployChangeReport', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock)
          .organizations
          .environments
          .apis
          .revisions
          .deployments;
      var arg_name = 'foo';
      var arg_override = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["override"].first, unittest.equals("$arg_override"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1DeploymentChangeReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateDeployChangeReport(arg_name,
              override: arg_override, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeploymentChangeReport(
            response as api.GoogleCloudApigeeV1DeploymentChangeReport);
      })));
    });

    unittest.test('method--generateUndeployChangeReport', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock)
          .organizations
          .environments
          .apis
          .revisions
          .deployments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1DeploymentChangeReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateUndeployChangeReport(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeploymentChangeReport(
            response as api.GoogleCloudApigeeV1DeploymentChangeReport);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsCachesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.caches;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsDeploymentsResourceApi',
      () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.deployments;
      var arg_parent = 'foo';
      var arg_sharedFlows = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["sharedFlows"].first, unittest.equals("$arg_sharedFlows"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, sharedFlows: arg_sharedFlows, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(
            response as api.GoogleCloudApigeeV1ListDeploymentsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsFlowhooksResourceApi', () {
    unittest.test('method--attachSharedFlowToFlowHook', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.flowhooks;
      var arg_request = buildGoogleCloudApigeeV1FlowHook();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1FlowHook.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1FlowHook(
            obj as api.GoogleCloudApigeeV1FlowHook);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1FlowHook());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .attachSharedFlowToFlowHook(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1FlowHook(
            response as api.GoogleCloudApigeeV1FlowHook);
      })));
    });

    unittest.test('method--detachSharedFlowFromFlowHook', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.flowhooks;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1FlowHook());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detachSharedFlowFromFlowHook(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1FlowHook(
            response as api.GoogleCloudApigeeV1FlowHook);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.flowhooks;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1FlowHook());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1FlowHook(
            response as api.GoogleCloudApigeeV1FlowHook);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsKeystoresResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.keystores;
      var arg_request = buildGoogleCloudApigeeV1Keystore();
      var arg_parent = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Keystore.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Keystore(
            obj as api.GoogleCloudApigeeV1Keystore);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Keystore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Keystore(
            response as api.GoogleCloudApigeeV1Keystore);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.keystores;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Keystore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Keystore(
            response as api.GoogleCloudApigeeV1Keystore);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.keystores;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Keystore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Keystore(
            response as api.GoogleCloudApigeeV1Keystore);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsEnvironmentsKeystoresAliasesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.keystores.aliases;
      var arg_request = buildGoogleApiHttpBody();
      var arg_parent = 'foo';
      var arg_P_password = 'foo';
      var arg_alias = 'foo';
      var arg_format = 'foo';
      var arg_ignoreExpiryValidation = true;
      var arg_ignoreNewlineValidation = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleApiHttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleApiHttpBody(obj as api.GoogleApiHttpBody);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["_password"].first, unittest.equals(arg_P_password));
        unittest.expect(queryMap["alias"].first, unittest.equals(arg_alias));
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["ignoreExpiryValidation"].first,
            unittest.equals("$arg_ignoreExpiryValidation"));
        unittest.expect(queryMap["ignoreNewlineValidation"].first,
            unittest.equals("$arg_ignoreNewlineValidation"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Alias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              P_password: arg_P_password,
              alias: arg_alias,
              format: arg_format,
              ignoreExpiryValidation: arg_ignoreExpiryValidation,
              ignoreNewlineValidation: arg_ignoreNewlineValidation,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Alias(response as api.GoogleCloudApigeeV1Alias);
      })));
    });

    unittest.test('method--csr', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.keystores.aliases;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .csr(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.keystores.aliases;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Alias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Alias(response as api.GoogleCloudApigeeV1Alias);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.keystores.aliases;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Alias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Alias(response as api.GoogleCloudApigeeV1Alias);
      })));
    });

    unittest.test('method--getCertificate', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.keystores.aliases;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getCertificate(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.keystores.aliases;
      var arg_request = buildGoogleApiHttpBody();
      var arg_name = 'foo';
      var arg_ignoreExpiryValidation = true;
      var arg_ignoreNewlineValidation = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleApiHttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleApiHttpBody(obj as api.GoogleApiHttpBody);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["ignoreExpiryValidation"].first,
            unittest.equals("$arg_ignoreExpiryValidation"));
        unittest.expect(queryMap["ignoreNewlineValidation"].first,
            unittest.equals("$arg_ignoreNewlineValidation"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Alias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name,
              ignoreExpiryValidation: arg_ignoreExpiryValidation,
              ignoreNewlineValidation: arg_ignoreNewlineValidation,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Alias(response as api.GoogleCloudApigeeV1Alias);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsKeyvaluemapsResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.keyvaluemaps;
      var arg_request = buildGoogleCloudApigeeV1KeyValueMap();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1KeyValueMap.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1KeyValueMap(
            obj as api.GoogleCloudApigeeV1KeyValueMap);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(
            response as api.GoogleCloudApigeeV1KeyValueMap);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.keyvaluemaps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(
            response as api.GoogleCloudApigeeV1KeyValueMap);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsOptimizedStatsResourceApi',
      () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.optimizedStats;
      var arg_name = 'foo';
      var arg_accuracy = 'foo';
      var arg_aggTable = 'foo';
      var arg_filter = 'foo';
      var arg_limit = 'foo';
      var arg_offset = 'foo';
      var arg_realtime = true;
      var arg_select = 'foo';
      var arg_sonar = true;
      var arg_sort = 'foo';
      var arg_sortby = 'foo';
      var arg_timeRange = 'foo';
      var arg_timeUnit = 'foo';
      var arg_topk = 'foo';
      var arg_tsAscending = true;
      var arg_tzo = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["accuracy"].first, unittest.equals(arg_accuracy));
        unittest.expect(
            queryMap["aggTable"].first, unittest.equals(arg_aggTable));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["limit"].first, unittest.equals(arg_limit));
        unittest.expect(queryMap["offset"].first, unittest.equals(arg_offset));
        unittest.expect(
            queryMap["realtime"].first, unittest.equals("$arg_realtime"));
        unittest.expect(queryMap["select"].first, unittest.equals(arg_select));
        unittest.expect(queryMap["sonar"].first, unittest.equals("$arg_sonar"));
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));
        unittest.expect(queryMap["sortby"].first, unittest.equals(arg_sortby));
        unittest.expect(
            queryMap["timeRange"].first, unittest.equals(arg_timeRange));
        unittest.expect(
            queryMap["timeUnit"].first, unittest.equals(arg_timeUnit));
        unittest.expect(queryMap["topk"].first, unittest.equals(arg_topk));
        unittest.expect(
            queryMap["tsAscending"].first, unittest.equals("$arg_tsAscending"));
        unittest.expect(queryMap["tzo"].first, unittest.equals(arg_tzo));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1OptimizedStats());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              accuracy: arg_accuracy,
              aggTable: arg_aggTable,
              filter: arg_filter,
              limit: arg_limit,
              offset: arg_offset,
              realtime: arg_realtime,
              select: arg_select,
              sonar: arg_sonar,
              sort: arg_sort,
              sortby: arg_sortby,
              timeRange: arg_timeRange,
              timeUnit: arg_timeUnit,
              topk: arg_topk,
              tsAscending: arg_tsAscending,
              tzo: arg_tzo,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1OptimizedStats(
            response as api.GoogleCloudApigeeV1OptimizedStats);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsQueriesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.queries;
      var arg_request = buildGoogleCloudApigeeV1Query();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Query.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Query(obj as api.GoogleCloudApigeeV1Query);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1AsyncQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1AsyncQuery(
            response as api.GoogleCloudApigeeV1AsyncQuery);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.queries;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1AsyncQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1AsyncQuery(
            response as api.GoogleCloudApigeeV1AsyncQuery);
      })));
    });

    unittest.test('method--getResult', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.queries;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getResult(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.queries;
      var arg_parent = 'foo';
      var arg_dataset = 'foo';
      var arg_from = 'foo';
      var arg_inclQueriesWithoutReport = 'foo';
      var arg_status = 'foo';
      var arg_submittedBy = 'foo';
      var arg_to = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["dataset"].first, unittest.equals(arg_dataset));
        unittest.expect(queryMap["from"].first, unittest.equals(arg_from));
        unittest.expect(queryMap["inclQueriesWithoutReport"].first,
            unittest.equals(arg_inclQueriesWithoutReport));
        unittest.expect(queryMap["status"].first, unittest.equals(arg_status));
        unittest.expect(
            queryMap["submittedBy"].first, unittest.equals(arg_submittedBy));
        unittest.expect(queryMap["to"].first, unittest.equals(arg_to));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListAsyncQueriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              dataset: arg_dataset,
              from: arg_from,
              inclQueriesWithoutReport: arg_inclQueriesWithoutReport,
              status: arg_status,
              submittedBy: arg_submittedBy,
              to: arg_to,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListAsyncQueriesResponse(
            response as api.GoogleCloudApigeeV1ListAsyncQueriesResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsReferencesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.references;
      var arg_request = buildGoogleCloudApigeeV1Reference();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Reference.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Reference(
            obj as api.GoogleCloudApigeeV1Reference);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Reference());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Reference(
            response as api.GoogleCloudApigeeV1Reference);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.references;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Reference());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Reference(
            response as api.GoogleCloudApigeeV1Reference);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.references;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Reference());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Reference(
            response as api.GoogleCloudApigeeV1Reference);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.references;
      var arg_request = buildGoogleCloudApigeeV1Reference();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Reference.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Reference(
            obj as api.GoogleCloudApigeeV1Reference);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Reference());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Reference(
            response as api.GoogleCloudApigeeV1Reference);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsResourcefilesResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_request = buildGoogleApiHttpBody();
      var arg_parent = 'foo';
      var arg_name = 'foo';
      var arg_type = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleApiHttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleApiHttpBody(obj as api.GoogleApiHttpBody);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ResourceFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              name: arg_name, type: arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ResourceFile(
            response as api.GoogleCloudApigeeV1ResourceFile);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_parent = 'foo';
      var arg_type = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ResourceFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_parent, arg_type, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ResourceFile(
            response as api.GoogleCloudApigeeV1ResourceFile);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_parent = 'foo';
      var arg_type = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_parent, arg_type, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_parent = 'foo';
      var arg_type = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListEnvironmentResourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, type: arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListEnvironmentResourcesResponse(response
            as api.GoogleCloudApigeeV1ListEnvironmentResourcesResponse);
      })));
    });

    unittest.test('method--listEnvironmentResources', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_parent = 'foo';
      var arg_type = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListEnvironmentResourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listEnvironmentResources(arg_parent, arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListEnvironmentResourcesResponse(response
            as api.GoogleCloudApigeeV1ListEnvironmentResourcesResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_request = buildGoogleApiHttpBody();
      var arg_parent = 'foo';
      var arg_type = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleApiHttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleApiHttpBody(obj as api.GoogleApiHttpBody);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ResourceFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_parent, arg_type, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ResourceFile(
            response as api.GoogleCloudApigeeV1ResourceFile);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsEnvironmentsSharedflowsDeploymentsResourceApi',
      () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock)
          .organizations
          .environments
          .sharedflows
          .deployments;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(
            response as api.GoogleCloudApigeeV1ListDeploymentsResponse);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsEnvironmentsSharedflowsRevisionsResourceApi', () {
    unittest.test('method--deploy', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.sharedflows.revisions;
      var arg_name = 'foo';
      var arg_override = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["override"].first, unittest.equals("$arg_override"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Deployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deploy(arg_name, override: arg_override, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Deployment(
            response as api.GoogleCloudApigeeV1Deployment);
      })));
    });

    unittest.test('method--getDeployments', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.sharedflows.revisions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Deployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDeployments(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Deployment(
            response as api.GoogleCloudApigeeV1Deployment);
      })));
    });

    unittest.test('method--undeploy', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.environments.sharedflows.revisions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undeploy(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsStatsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.stats;
      var arg_name = 'foo';
      var arg_accuracy = 'foo';
      var arg_aggTable = 'foo';
      var arg_filter = 'foo';
      var arg_limit = 'foo';
      var arg_offset = 'foo';
      var arg_realtime = true;
      var arg_select = 'foo';
      var arg_sonar = true;
      var arg_sort = 'foo';
      var arg_sortby = 'foo';
      var arg_timeRange = 'foo';
      var arg_timeUnit = 'foo';
      var arg_topk = 'foo';
      var arg_tsAscending = true;
      var arg_tzo = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["accuracy"].first, unittest.equals(arg_accuracy));
        unittest.expect(
            queryMap["aggTable"].first, unittest.equals(arg_aggTable));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["limit"].first, unittest.equals(arg_limit));
        unittest.expect(queryMap["offset"].first, unittest.equals(arg_offset));
        unittest.expect(
            queryMap["realtime"].first, unittest.equals("$arg_realtime"));
        unittest.expect(queryMap["select"].first, unittest.equals(arg_select));
        unittest.expect(queryMap["sonar"].first, unittest.equals("$arg_sonar"));
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));
        unittest.expect(queryMap["sortby"].first, unittest.equals(arg_sortby));
        unittest.expect(
            queryMap["timeRange"].first, unittest.equals(arg_timeRange));
        unittest.expect(
            queryMap["timeUnit"].first, unittest.equals(arg_timeUnit));
        unittest.expect(queryMap["topk"].first, unittest.equals(arg_topk));
        unittest.expect(
            queryMap["tsAscending"].first, unittest.equals("$arg_tsAscending"));
        unittest.expect(queryMap["tzo"].first, unittest.equals(arg_tzo));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Stats());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              accuracy: arg_accuracy,
              aggTable: arg_aggTable,
              filter: arg_filter,
              limit: arg_limit,
              offset: arg_offset,
              realtime: arg_realtime,
              select: arg_select,
              sonar: arg_sonar,
              sort: arg_sort,
              sortby: arg_sortby,
              timeRange: arg_timeRange,
              timeUnit: arg_timeUnit,
              topk: arg_topk,
              tsAscending: arg_tsAscending,
              tzo: arg_tzo,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Stats(response as api.GoogleCloudApigeeV1Stats);
      })));
    });
  });

  unittest.group('resource-OrganizationsEnvironmentsTargetserversResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.targetservers;
      var arg_request = buildGoogleCloudApigeeV1TargetServer();
      var arg_parent = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1TargetServer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1TargetServer(
            obj as api.GoogleCloudApigeeV1TargetServer);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1TargetServer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1TargetServer(
            response as api.GoogleCloudApigeeV1TargetServer);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.targetservers;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1TargetServer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1TargetServer(
            response as api.GoogleCloudApigeeV1TargetServer);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.targetservers;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1TargetServer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1TargetServer(
            response as api.GoogleCloudApigeeV1TargetServer);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.environments.targetservers;
      var arg_request = buildGoogleCloudApigeeV1TargetServer();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1TargetServer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1TargetServer(
            obj as api.GoogleCloudApigeeV1TargetServer);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1TargetServer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1TargetServer(
            response as api.GoogleCloudApigeeV1TargetServer);
      })));
    });
  });

  unittest.group('resource-OrganizationsInstancesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.instances;
      var arg_request = buildGoogleCloudApigeeV1Instance();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1Instance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1Instance(
            obj as api.GoogleCloudApigeeV1Instance);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.instances;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.instances;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Instance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Instance(
            response as api.GoogleCloudApigeeV1Instance);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.instances;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListInstancesResponse(
            response as api.GoogleCloudApigeeV1ListInstancesResponse);
      })));
    });

    unittest.test('method--reportStatus', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.instances;
      var arg_request = buildGoogleCloudApigeeV1ReportInstanceStatusRequest();
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1ReportInstanceStatusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1ReportInstanceStatusRequest(
            obj as api.GoogleCloudApigeeV1ReportInstanceStatusRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ReportInstanceStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reportStatus(arg_request, arg_instance, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ReportInstanceStatusResponse(
            response as api.GoogleCloudApigeeV1ReportInstanceStatusResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsInstancesAttachmentsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.instances.attachments;
      var arg_request = buildGoogleCloudApigeeV1InstanceAttachment();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1InstanceAttachment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1InstanceAttachment(
            obj as api.GoogleCloudApigeeV1InstanceAttachment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.instances.attachments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.instances.attachments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1InstanceAttachment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1InstanceAttachment(
            response as api.GoogleCloudApigeeV1InstanceAttachment);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.instances.attachments;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListInstanceAttachmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListInstanceAttachmentsResponse(
            response as api.GoogleCloudApigeeV1ListInstanceAttachmentsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsKeyvaluemapsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.keyvaluemaps;
      var arg_request = buildGoogleCloudApigeeV1KeyValueMap();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1KeyValueMap.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1KeyValueMap(
            obj as api.GoogleCloudApigeeV1KeyValueMap);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(
            response as api.GoogleCloudApigeeV1KeyValueMap);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.keyvaluemaps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(
            response as api.GoogleCloudApigeeV1KeyValueMap);
      })));
    });
  });

  unittest.group('resource-OrganizationsOperationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(
            response as api.GoogleLongrunningListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsReportsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.reports;
      var arg_request = buildGoogleCloudApigeeV1CustomReport();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1CustomReport.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1CustomReport(
            obj as api.GoogleCloudApigeeV1CustomReport);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CustomReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CustomReport(
            response as api.GoogleCloudApigeeV1CustomReport);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.reports;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1DeleteCustomReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeleteCustomReportResponse(
            response as api.GoogleCloudApigeeV1DeleteCustomReportResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.reports;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CustomReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CustomReport(
            response as api.GoogleCloudApigeeV1CustomReport);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.reports;
      var arg_parent = 'foo';
      var arg_expand = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListCustomReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, expand: arg_expand, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListCustomReportsResponse(
            response as api.GoogleCloudApigeeV1ListCustomReportsResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.reports;
      var arg_request = buildGoogleCloudApigeeV1CustomReport();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1CustomReport.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1CustomReport(
            obj as api.GoogleCloudApigeeV1CustomReport);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CustomReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CustomReport(
            response as api.GoogleCloudApigeeV1CustomReport);
      })));
    });
  });

  unittest.group('resource-OrganizationsSharedflowsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sharedflows;
      var arg_request = buildGoogleApiHttpBody();
      var arg_parent = 'foo';
      var arg_action = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleApiHttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleApiHttpBody(obj as api.GoogleApiHttpBody);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1SharedFlowRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              action: arg_action, name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SharedFlowRevision(
            response as api.GoogleCloudApigeeV1SharedFlowRevision);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sharedflows;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1SharedFlow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SharedFlow(
            response as api.GoogleCloudApigeeV1SharedFlow);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sharedflows;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1SharedFlow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SharedFlow(
            response as api.GoogleCloudApigeeV1SharedFlow);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sharedflows;
      var arg_parent = 'foo';
      var arg_includeMetaData = true;
      var arg_includeRevisions = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["includeMetaData"].first,
            unittest.equals("$arg_includeMetaData"));
        unittest.expect(queryMap["includeRevisions"].first,
            unittest.equals("$arg_includeRevisions"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListSharedFlowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              includeMetaData: arg_includeMetaData,
              includeRevisions: arg_includeRevisions,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListSharedFlowsResponse(
            response as api.GoogleCloudApigeeV1ListSharedFlowsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsSharedflowsDeploymentsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sharedflows.deployments;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(
            response as api.GoogleCloudApigeeV1ListDeploymentsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsSharedflowsRevisionsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sharedflows.revisions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1SharedFlowRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SharedFlowRevision(
            response as api.GoogleCloudApigeeV1SharedFlowRevision);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sharedflows.revisions;
      var arg_name = 'foo';
      var arg_format = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, format: arg_format, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
      })));
    });

    unittest.test('method--updateSharedFlowRevision', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sharedflows.revisions;
      var arg_request = buildGoogleApiHttpBody();
      var arg_name = 'foo';
      var arg_validate = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleApiHttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleApiHttpBody(obj as api.GoogleApiHttpBody);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["validate"].first, unittest.equals("$arg_validate"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1SharedFlowRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSharedFlowRevision(arg_request, arg_name,
              validate: arg_validate, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SharedFlowRevision(
            response as api.GoogleCloudApigeeV1SharedFlowRevision);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsSharedflowsRevisionsDeploymentsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.ApigeeApi(mock).organizations.sharedflows.revisions.deployments;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(
            response as api.GoogleCloudApigeeV1ListDeploymentsResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsSitesApicategoriesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sites.apicategories;
      var arg_request = buildGoogleCloudApigeeV1ApiCategoryData();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1ApiCategoryData.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1ApiCategoryData(
            obj as api.GoogleCloudApigeeV1ApiCategoryData);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiCategory(
            response as api.GoogleCloudApigeeV1ApiCategory);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sites.apicategories;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1ApiResponseWrapper());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiResponseWrapper(
            response as api.GoogleCloudApigeeV1ApiResponseWrapper);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sites.apicategories;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiCategory(
            response as api.GoogleCloudApigeeV1ApiCategory);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sites.apicategories;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListApiCategoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListApiCategoriesResponse(
            response as api.GoogleCloudApigeeV1ListApiCategoriesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).organizations.sites.apicategories;
      var arg_request = buildGoogleCloudApigeeV1ApiCategoryData();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1ApiCategoryData.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1ApiCategoryData(
            obj as api.GoogleCloudApigeeV1ApiCategoryData);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiCategory(
            response as api.GoogleCloudApigeeV1ApiCategory);
      })));
    });
  });

  unittest.group('resource-ProjectsResourceApi', () {
    unittest.test('method--provisionOrganization', () {
      var mock = HttpServerMock();
      var res = api.ApigeeApi(mock).projects;
      var arg_request = buildGoogleCloudApigeeV1ProvisionOrganizationRequest();
      var arg_project = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudApigeeV1ProvisionOrganizationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudApigeeV1ProvisionOrganizationRequest(
            obj as api.GoogleCloudApigeeV1ProvisionOrganizationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .provisionOrganization(arg_request, arg_project, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });
}
