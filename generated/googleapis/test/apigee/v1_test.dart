library googleapis.apigee.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/apigee/v1.dart' as api;

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

buildUnnamed254() {
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

checkUnnamed254(core.Map<core.String, core.Object> o) {
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

buildUnnamed255() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed254());
  o.add(buildUnnamed254());
  return o;
}

checkUnnamed255(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed254(o[0]);
  checkUnnamed254(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
buildGoogleApiHttpBody() {
  var o = new api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = "foo";
    o.data = "foo";
    o.extensions = buildUnnamed255();
  }
  buildCounterGoogleApiHttpBody--;
  return o;
}

checkGoogleApiHttpBody(api.GoogleApiHttpBody o) {
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    checkUnnamed255(o.extensions);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int buildCounterGoogleCloudApigeeV1Access = 0;
buildGoogleCloudApigeeV1Access() {
  var o = new api.GoogleCloudApigeeV1Access();
  buildCounterGoogleCloudApigeeV1Access++;
  if (buildCounterGoogleCloudApigeeV1Access < 3) {
    o.Get = buildGoogleCloudApigeeV1AccessGet();
    o.Remove = buildGoogleCloudApigeeV1AccessRemove();
    o.Set = buildGoogleCloudApigeeV1AccessSet();
  }
  buildCounterGoogleCloudApigeeV1Access--;
  return o;
}

checkGoogleCloudApigeeV1Access(api.GoogleCloudApigeeV1Access o) {
  buildCounterGoogleCloudApigeeV1Access++;
  if (buildCounterGoogleCloudApigeeV1Access < 3) {
    checkGoogleCloudApigeeV1AccessGet(o.Get);
    checkGoogleCloudApigeeV1AccessRemove(o.Remove);
    checkGoogleCloudApigeeV1AccessSet(o.Set);
  }
  buildCounterGoogleCloudApigeeV1Access--;
}

core.int buildCounterGoogleCloudApigeeV1AccessGet = 0;
buildGoogleCloudApigeeV1AccessGet() {
  var o = new api.GoogleCloudApigeeV1AccessGet();
  buildCounterGoogleCloudApigeeV1AccessGet++;
  if (buildCounterGoogleCloudApigeeV1AccessGet < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudApigeeV1AccessGet--;
  return o;
}

checkGoogleCloudApigeeV1AccessGet(api.GoogleCloudApigeeV1AccessGet o) {
  buildCounterGoogleCloudApigeeV1AccessGet++;
  if (buildCounterGoogleCloudApigeeV1AccessGet < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AccessGet--;
}

core.int buildCounterGoogleCloudApigeeV1AccessRemove = 0;
buildGoogleCloudApigeeV1AccessRemove() {
  var o = new api.GoogleCloudApigeeV1AccessRemove();
  buildCounterGoogleCloudApigeeV1AccessRemove++;
  if (buildCounterGoogleCloudApigeeV1AccessRemove < 3) {
    o.name = "foo";
    o.success = true;
  }
  buildCounterGoogleCloudApigeeV1AccessRemove--;
  return o;
}

checkGoogleCloudApigeeV1AccessRemove(api.GoogleCloudApigeeV1AccessRemove o) {
  buildCounterGoogleCloudApigeeV1AccessRemove++;
  if (buildCounterGoogleCloudApigeeV1AccessRemove < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.success, unittest.isTrue);
  }
  buildCounterGoogleCloudApigeeV1AccessRemove--;
}

core.int buildCounterGoogleCloudApigeeV1AccessSet = 0;
buildGoogleCloudApigeeV1AccessSet() {
  var o = new api.GoogleCloudApigeeV1AccessSet();
  buildCounterGoogleCloudApigeeV1AccessSet++;
  if (buildCounterGoogleCloudApigeeV1AccessSet < 3) {
    o.name = "foo";
    o.success = true;
    o.value = "foo";
  }
  buildCounterGoogleCloudApigeeV1AccessSet--;
  return o;
}

checkGoogleCloudApigeeV1AccessSet(api.GoogleCloudApigeeV1AccessSet o) {
  buildCounterGoogleCloudApigeeV1AccessSet++;
  if (buildCounterGoogleCloudApigeeV1AccessSet < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.success, unittest.isTrue);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AccessSet--;
}

core.int buildCounterGoogleCloudApigeeV1Alias = 0;
buildGoogleCloudApigeeV1Alias() {
  var o = new api.GoogleCloudApigeeV1Alias();
  buildCounterGoogleCloudApigeeV1Alias++;
  if (buildCounterGoogleCloudApigeeV1Alias < 3) {
    o.alias = "foo";
    o.certsInfo = buildGoogleCloudApigeeV1Certificate();
    o.type = "foo";
  }
  buildCounterGoogleCloudApigeeV1Alias--;
  return o;
}

checkGoogleCloudApigeeV1Alias(api.GoogleCloudApigeeV1Alias o) {
  buildCounterGoogleCloudApigeeV1Alias++;
  if (buildCounterGoogleCloudApigeeV1Alias < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    checkGoogleCloudApigeeV1Certificate(o.certsInfo);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Alias--;
}

core.int buildCounterGoogleCloudApigeeV1AliasRevisionConfig = 0;
buildGoogleCloudApigeeV1AliasRevisionConfig() {
  var o = new api.GoogleCloudApigeeV1AliasRevisionConfig();
  buildCounterGoogleCloudApigeeV1AliasRevisionConfig++;
  if (buildCounterGoogleCloudApigeeV1AliasRevisionConfig < 3) {
    o.location = "foo";
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudApigeeV1AliasRevisionConfig--;
  return o;
}

checkGoogleCloudApigeeV1AliasRevisionConfig(
    api.GoogleCloudApigeeV1AliasRevisionConfig o) {
  buildCounterGoogleCloudApigeeV1AliasRevisionConfig++;
  if (buildCounterGoogleCloudApigeeV1AliasRevisionConfig < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AliasRevisionConfig--;
}

buildUnnamed256() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed256(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed257() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed257(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

buildUnnamed258() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed258(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed259() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed259(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed260() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed260(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1ApiProduct = 0;
buildGoogleCloudApigeeV1ApiProduct() {
  var o = new api.GoogleCloudApigeeV1ApiProduct();
  buildCounterGoogleCloudApigeeV1ApiProduct++;
  if (buildCounterGoogleCloudApigeeV1ApiProduct < 3) {
    o.apiResources = buildUnnamed256();
    o.approvalType = "foo";
    o.attributes = buildUnnamed257();
    o.createdAt = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.environments = buildUnnamed258();
    o.lastModifiedAt = "foo";
    o.name = "foo";
    o.proxies = buildUnnamed259();
    o.quota = "foo";
    o.quotaInterval = "foo";
    o.quotaTimeUnit = "foo";
    o.scopes = buildUnnamed260();
  }
  buildCounterGoogleCloudApigeeV1ApiProduct--;
  return o;
}

checkGoogleCloudApigeeV1ApiProduct(api.GoogleCloudApigeeV1ApiProduct o) {
  buildCounterGoogleCloudApigeeV1ApiProduct++;
  if (buildCounterGoogleCloudApigeeV1ApiProduct < 3) {
    checkUnnamed256(o.apiResources);
    unittest.expect(o.approvalType, unittest.equals('foo'));
    checkUnnamed257(o.attributes);
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed258(o.environments);
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed259(o.proxies);
    unittest.expect(o.quota, unittest.equals('foo'));
    unittest.expect(o.quotaInterval, unittest.equals('foo'));
    unittest.expect(o.quotaTimeUnit, unittest.equals('foo'));
    checkUnnamed260(o.scopes);
  }
  buildCounterGoogleCloudApigeeV1ApiProduct--;
}

core.int buildCounterGoogleCloudApigeeV1ApiProductRef = 0;
buildGoogleCloudApigeeV1ApiProductRef() {
  var o = new api.GoogleCloudApigeeV1ApiProductRef();
  buildCounterGoogleCloudApigeeV1ApiProductRef++;
  if (buildCounterGoogleCloudApigeeV1ApiProductRef < 3) {
    o.apiproduct = "foo";
    o.status = "foo";
  }
  buildCounterGoogleCloudApigeeV1ApiProductRef--;
  return o;
}

checkGoogleCloudApigeeV1ApiProductRef(api.GoogleCloudApigeeV1ApiProductRef o) {
  buildCounterGoogleCloudApigeeV1ApiProductRef++;
  if (buildCounterGoogleCloudApigeeV1ApiProductRef < 3) {
    unittest.expect(o.apiproduct, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ApiProductRef--;
}

buildUnnamed261() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed261(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1ApiProxy = 0;
buildGoogleCloudApigeeV1ApiProxy() {
  var o = new api.GoogleCloudApigeeV1ApiProxy();
  buildCounterGoogleCloudApigeeV1ApiProxy++;
  if (buildCounterGoogleCloudApigeeV1ApiProxy < 3) {
    o.latestRevisionId = "foo";
    o.metaData = buildGoogleCloudApigeeV1EntityMetadata();
    o.name = "foo";
    o.revision = buildUnnamed261();
  }
  buildCounterGoogleCloudApigeeV1ApiProxy--;
  return o;
}

checkGoogleCloudApigeeV1ApiProxy(api.GoogleCloudApigeeV1ApiProxy o) {
  buildCounterGoogleCloudApigeeV1ApiProxy++;
  if (buildCounterGoogleCloudApigeeV1ApiProxy < 3) {
    unittest.expect(o.latestRevisionId, unittest.equals('foo'));
    checkGoogleCloudApigeeV1EntityMetadata(o.metaData);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed261(o.revision);
  }
  buildCounterGoogleCloudApigeeV1ApiProxy--;
}

buildUnnamed262() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed262(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed263() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed263(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed264() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed264(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed265() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed265(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed266() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed266(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed267() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed267(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed268() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed268(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed269() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed269(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed270() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed270(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed271() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed271(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed272() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed272(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1ApiProxyRevision = 0;
buildGoogleCloudApigeeV1ApiProxyRevision() {
  var o = new api.GoogleCloudApigeeV1ApiProxyRevision();
  buildCounterGoogleCloudApigeeV1ApiProxyRevision++;
  if (buildCounterGoogleCloudApigeeV1ApiProxyRevision < 3) {
    o.basepaths = buildUnnamed262();
    o.configurationVersion = buildGoogleCloudApigeeV1ConfigVersion();
    o.contextInfo = "foo";
    o.createdAt = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.entityMetaDataAsProperties = buildUnnamed263();
    o.lastModifiedAt = "foo";
    o.name = "foo";
    o.policies = buildUnnamed264();
    o.proxies = buildUnnamed265();
    o.proxyEndpoints = buildUnnamed266();
    o.resourceFiles = buildGoogleCloudApigeeV1ResourceFiles();
    o.resources = buildUnnamed267();
    o.revision = "foo";
    o.sharedFlows = buildUnnamed268();
    o.spec = "foo";
    o.targetEndpoints = buildUnnamed269();
    o.targetServers = buildUnnamed270();
    o.targets = buildUnnamed271();
    o.teams = buildUnnamed272();
    o.type = "foo";
  }
  buildCounterGoogleCloudApigeeV1ApiProxyRevision--;
  return o;
}

checkGoogleCloudApigeeV1ApiProxyRevision(
    api.GoogleCloudApigeeV1ApiProxyRevision o) {
  buildCounterGoogleCloudApigeeV1ApiProxyRevision++;
  if (buildCounterGoogleCloudApigeeV1ApiProxyRevision < 3) {
    checkUnnamed262(o.basepaths);
    checkGoogleCloudApigeeV1ConfigVersion(o.configurationVersion);
    unittest.expect(o.contextInfo, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed263(o.entityMetaDataAsProperties);
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed264(o.policies);
    checkUnnamed265(o.proxies);
    checkUnnamed266(o.proxyEndpoints);
    checkGoogleCloudApigeeV1ResourceFiles(o.resourceFiles);
    checkUnnamed267(o.resources);
    unittest.expect(o.revision, unittest.equals('foo'));
    checkUnnamed268(o.sharedFlows);
    unittest.expect(o.spec, unittest.equals('foo'));
    checkUnnamed269(o.targetEndpoints);
    checkUnnamed270(o.targetServers);
    checkUnnamed271(o.targets);
    checkUnnamed272(o.teams);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ApiProxyRevision--;
}

buildUnnamed273() {
  var o = new core.List<api.GoogleCloudApigeeV1ApiProductRef>();
  o.add(buildGoogleCloudApigeeV1ApiProductRef());
  o.add(buildGoogleCloudApigeeV1ApiProductRef());
  return o;
}

checkUnnamed273(core.List<api.GoogleCloudApigeeV1ApiProductRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ApiProductRef(o[0]);
  checkGoogleCloudApigeeV1ApiProductRef(o[1]);
}

buildUnnamed274() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed274(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

buildUnnamed275() {
  var o = new core.List<api.GoogleCloudApigeeV1Credential>();
  o.add(buildGoogleCloudApigeeV1Credential());
  o.add(buildGoogleCloudApigeeV1Credential());
  return o;
}

checkUnnamed275(core.List<api.GoogleCloudApigeeV1Credential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Credential(o[0]);
  checkGoogleCloudApigeeV1Credential(o[1]);
}

buildUnnamed276() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed276(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1App = 0;
buildGoogleCloudApigeeV1App() {
  var o = new api.GoogleCloudApigeeV1App();
  buildCounterGoogleCloudApigeeV1App++;
  if (buildCounterGoogleCloudApigeeV1App < 3) {
    o.apiProducts = buildUnnamed273();
    o.appId = "foo";
    o.attributes = buildUnnamed274();
    o.callbackUrl = "foo";
    o.companyName = "foo";
    o.createdAt = "foo";
    o.credentials = buildUnnamed275();
    o.developerId = "foo";
    o.keyExpiresIn = "foo";
    o.lastModifiedAt = "foo";
    o.name = "foo";
    o.scopes = buildUnnamed276();
    o.status = "foo";
  }
  buildCounterGoogleCloudApigeeV1App--;
  return o;
}

checkGoogleCloudApigeeV1App(api.GoogleCloudApigeeV1App o) {
  buildCounterGoogleCloudApigeeV1App++;
  if (buildCounterGoogleCloudApigeeV1App < 3) {
    checkUnnamed273(o.apiProducts);
    unittest.expect(o.appId, unittest.equals('foo'));
    checkUnnamed274(o.attributes);
    unittest.expect(o.callbackUrl, unittest.equals('foo'));
    unittest.expect(o.companyName, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    checkUnnamed275(o.credentials);
    unittest.expect(o.developerId, unittest.equals('foo'));
    unittest.expect(o.keyExpiresIn, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed276(o.scopes);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1App--;
}

core.int buildCounterGoogleCloudApigeeV1AsyncQuery = 0;
buildGoogleCloudApigeeV1AsyncQuery() {
  var o = new api.GoogleCloudApigeeV1AsyncQuery();
  buildCounterGoogleCloudApigeeV1AsyncQuery++;
  if (buildCounterGoogleCloudApigeeV1AsyncQuery < 3) {
    o.created = "foo";
    o.error = "foo";
    o.executionTime = "foo";
    o.name = "foo";
    o.queryParams = buildGoogleCloudApigeeV1QueryMetadata();
    o.reportDefinitionId = "foo";
    o.result = buildGoogleCloudApigeeV1AsyncQueryResult();
    o.resultFileSize = "foo";
    o.resultRows = "foo";
    o.self = "foo";
    o.state = "foo";
    o.updated = "foo";
  }
  buildCounterGoogleCloudApigeeV1AsyncQuery--;
  return o;
}

checkGoogleCloudApigeeV1AsyncQuery(api.GoogleCloudApigeeV1AsyncQuery o) {
  buildCounterGoogleCloudApigeeV1AsyncQuery++;
  if (buildCounterGoogleCloudApigeeV1AsyncQuery < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.error, unittest.equals('foo'));
    unittest.expect(o.executionTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudApigeeV1QueryMetadata(o.queryParams);
    unittest.expect(o.reportDefinitionId, unittest.equals('foo'));
    checkGoogleCloudApigeeV1AsyncQueryResult(o.result);
    unittest.expect(o.resultFileSize, unittest.equals('foo'));
    unittest.expect(o.resultRows, unittest.equals('foo'));
    unittest.expect(o.self, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updated, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AsyncQuery--;
}

core.int buildCounterGoogleCloudApigeeV1AsyncQueryResult = 0;
buildGoogleCloudApigeeV1AsyncQueryResult() {
  var o = new api.GoogleCloudApigeeV1AsyncQueryResult();
  buildCounterGoogleCloudApigeeV1AsyncQueryResult++;
  if (buildCounterGoogleCloudApigeeV1AsyncQueryResult < 3) {
    o.expires = "foo";
    o.self = "foo";
  }
  buildCounterGoogleCloudApigeeV1AsyncQueryResult--;
  return o;
}

checkGoogleCloudApigeeV1AsyncQueryResult(
    api.GoogleCloudApigeeV1AsyncQueryResult o) {
  buildCounterGoogleCloudApigeeV1AsyncQueryResult++;
  if (buildCounterGoogleCloudApigeeV1AsyncQueryResult < 3) {
    unittest.expect(o.expires, unittest.equals('foo'));
    unittest.expect(o.self, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AsyncQueryResult--;
}

buildUnnamed277() {
  var o = new core.List<core.Object>();
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

checkUnnamed277(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o[1]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1AsyncQueryResultView = 0;
buildGoogleCloudApigeeV1AsyncQueryResultView() {
  var o = new api.GoogleCloudApigeeV1AsyncQueryResultView();
  buildCounterGoogleCloudApigeeV1AsyncQueryResultView++;
  if (buildCounterGoogleCloudApigeeV1AsyncQueryResultView < 3) {
    o.code = 42;
    o.error = "foo";
    o.metadata = buildGoogleCloudApigeeV1QueryMetadata();
    o.rows = buildUnnamed277();
    o.state = "foo";
  }
  buildCounterGoogleCloudApigeeV1AsyncQueryResultView--;
  return o;
}

checkGoogleCloudApigeeV1AsyncQueryResultView(
    api.GoogleCloudApigeeV1AsyncQueryResultView o) {
  buildCounterGoogleCloudApigeeV1AsyncQueryResultView++;
  if (buildCounterGoogleCloudApigeeV1AsyncQueryResultView < 3) {
    unittest.expect(o.code, unittest.equals(42));
    unittest.expect(o.error, unittest.equals('foo'));
    checkGoogleCloudApigeeV1QueryMetadata(o.metadata);
    checkUnnamed277(o.rows);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1AsyncQueryResultView--;
}

core.int buildCounterGoogleCloudApigeeV1Attribute = 0;
buildGoogleCloudApigeeV1Attribute() {
  var o = new api.GoogleCloudApigeeV1Attribute();
  buildCounterGoogleCloudApigeeV1Attribute++;
  if (buildCounterGoogleCloudApigeeV1Attribute < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudApigeeV1Attribute--;
  return o;
}

checkGoogleCloudApigeeV1Attribute(api.GoogleCloudApigeeV1Attribute o) {
  buildCounterGoogleCloudApigeeV1Attribute++;
  if (buildCounterGoogleCloudApigeeV1Attribute < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Attribute--;
}

buildUnnamed278() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed278(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1Attributes = 0;
buildGoogleCloudApigeeV1Attributes() {
  var o = new api.GoogleCloudApigeeV1Attributes();
  buildCounterGoogleCloudApigeeV1Attributes++;
  if (buildCounterGoogleCloudApigeeV1Attributes < 3) {
    o.attribute = buildUnnamed278();
  }
  buildCounterGoogleCloudApigeeV1Attributes--;
  return o;
}

checkGoogleCloudApigeeV1Attributes(api.GoogleCloudApigeeV1Attributes o) {
  buildCounterGoogleCloudApigeeV1Attributes++;
  if (buildCounterGoogleCloudApigeeV1Attributes < 3) {
    checkUnnamed278(o.attribute);
  }
  buildCounterGoogleCloudApigeeV1Attributes--;
}

buildUnnamed279() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed279(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1CertInfo = 0;
buildGoogleCloudApigeeV1CertInfo() {
  var o = new api.GoogleCloudApigeeV1CertInfo();
  buildCounterGoogleCloudApigeeV1CertInfo++;
  if (buildCounterGoogleCloudApigeeV1CertInfo < 3) {
    o.basicConstraints = "foo";
    o.expiryDate = "foo";
    o.isValid = "foo";
    o.issuer = "foo";
    o.publicKey = "foo";
    o.serialNumber = "foo";
    o.sigAlgName = "foo";
    o.subject = "foo";
    o.subjectAlternativeNames = buildUnnamed279();
    o.validFrom = "foo";
    o.version = 42;
  }
  buildCounterGoogleCloudApigeeV1CertInfo--;
  return o;
}

checkGoogleCloudApigeeV1CertInfo(api.GoogleCloudApigeeV1CertInfo o) {
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
    checkUnnamed279(o.subjectAlternativeNames);
    unittest.expect(o.validFrom, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleCloudApigeeV1CertInfo--;
}

buildUnnamed280() {
  var o = new core.List<api.GoogleCloudApigeeV1CertInfo>();
  o.add(buildGoogleCloudApigeeV1CertInfo());
  o.add(buildGoogleCloudApigeeV1CertInfo());
  return o;
}

checkUnnamed280(core.List<api.GoogleCloudApigeeV1CertInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1CertInfo(o[0]);
  checkGoogleCloudApigeeV1CertInfo(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1Certificate = 0;
buildGoogleCloudApigeeV1Certificate() {
  var o = new api.GoogleCloudApigeeV1Certificate();
  buildCounterGoogleCloudApigeeV1Certificate++;
  if (buildCounterGoogleCloudApigeeV1Certificate < 3) {
    o.certInfo = buildUnnamed280();
  }
  buildCounterGoogleCloudApigeeV1Certificate--;
  return o;
}

checkGoogleCloudApigeeV1Certificate(api.GoogleCloudApigeeV1Certificate o) {
  buildCounterGoogleCloudApigeeV1Certificate++;
  if (buildCounterGoogleCloudApigeeV1Certificate < 3) {
    checkUnnamed280(o.certInfo);
  }
  buildCounterGoogleCloudApigeeV1Certificate--;
}

core.int buildCounterGoogleCloudApigeeV1CommonNameConfig = 0;
buildGoogleCloudApigeeV1CommonNameConfig() {
  var o = new api.GoogleCloudApigeeV1CommonNameConfig();
  buildCounterGoogleCloudApigeeV1CommonNameConfig++;
  if (buildCounterGoogleCloudApigeeV1CommonNameConfig < 3) {
    o.matchWildCards = true;
    o.name = "foo";
  }
  buildCounterGoogleCloudApigeeV1CommonNameConfig--;
  return o;
}

checkGoogleCloudApigeeV1CommonNameConfig(
    api.GoogleCloudApigeeV1CommonNameConfig o) {
  buildCounterGoogleCloudApigeeV1CommonNameConfig++;
  if (buildCounterGoogleCloudApigeeV1CommonNameConfig < 3) {
    unittest.expect(o.matchWildCards, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1CommonNameConfig--;
}

buildUnnamed281() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed281(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed282() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed282(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1Company = 0;
buildGoogleCloudApigeeV1Company() {
  var o = new api.GoogleCloudApigeeV1Company();
  buildCounterGoogleCloudApigeeV1Company++;
  if (buildCounterGoogleCloudApigeeV1Company < 3) {
    o.apps = buildUnnamed281();
    o.attributes = buildUnnamed282();
    o.createdAt = "foo";
    o.displayName = "foo";
    o.lastModifiedAt = "foo";
    o.name = "foo";
    o.organization = "foo";
    o.status = "foo";
  }
  buildCounterGoogleCloudApigeeV1Company--;
  return o;
}

checkGoogleCloudApigeeV1Company(api.GoogleCloudApigeeV1Company o) {
  buildCounterGoogleCloudApigeeV1Company++;
  if (buildCounterGoogleCloudApigeeV1Company < 3) {
    checkUnnamed281(o.apps);
    checkUnnamed282(o.attributes);
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Company--;
}

buildUnnamed283() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed283(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed284() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed284(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

buildUnnamed285() {
  var o = new core.List<api.GoogleCloudApigeeV1Credential>();
  o.add(buildGoogleCloudApigeeV1Credential());
  o.add(buildGoogleCloudApigeeV1Credential());
  return o;
}

checkUnnamed285(core.List<api.GoogleCloudApigeeV1Credential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Credential(o[0]);
  checkGoogleCloudApigeeV1Credential(o[1]);
}

buildUnnamed286() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed286(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1CompanyApp = 0;
buildGoogleCloudApigeeV1CompanyApp() {
  var o = new api.GoogleCloudApigeeV1CompanyApp();
  buildCounterGoogleCloudApigeeV1CompanyApp++;
  if (buildCounterGoogleCloudApigeeV1CompanyApp < 3) {
    o.apiProducts = buildUnnamed283();
    o.appFamily = "foo";
    o.appId = "foo";
    o.attributes = buildUnnamed284();
    o.callbackUrl = "foo";
    o.companyName = "foo";
    o.createdAt = "foo";
    o.credentials = buildUnnamed285();
    o.keyExpiresIn = "foo";
    o.lastModifiedAt = "foo";
    o.name = "foo";
    o.scopes = buildUnnamed286();
    o.status = "foo";
  }
  buildCounterGoogleCloudApigeeV1CompanyApp--;
  return o;
}

checkGoogleCloudApigeeV1CompanyApp(api.GoogleCloudApigeeV1CompanyApp o) {
  buildCounterGoogleCloudApigeeV1CompanyApp++;
  if (buildCounterGoogleCloudApigeeV1CompanyApp < 3) {
    checkUnnamed283(o.apiProducts);
    unittest.expect(o.appFamily, unittest.equals('foo'));
    unittest.expect(o.appId, unittest.equals('foo'));
    checkUnnamed284(o.attributes);
    unittest.expect(o.callbackUrl, unittest.equals('foo'));
    unittest.expect(o.companyName, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    checkUnnamed285(o.credentials);
    unittest.expect(o.keyExpiresIn, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed286(o.scopes);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1CompanyApp--;
}

buildUnnamed287() {
  var o = new core.List<core.Object>();
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

checkUnnamed287(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o[1]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed288() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed288(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

buildUnnamed289() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed289(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1CompanyAppKey = 0;
buildGoogleCloudApigeeV1CompanyAppKey() {
  var o = new api.GoogleCloudApigeeV1CompanyAppKey();
  buildCounterGoogleCloudApigeeV1CompanyAppKey++;
  if (buildCounterGoogleCloudApigeeV1CompanyAppKey < 3) {
    o.apiProducts = buildUnnamed287();
    o.attributes = buildUnnamed288();
    o.consumerKey = "foo";
    o.consumerSecret = "foo";
    o.expiresAt = "foo";
    o.issuedAt = "foo";
    o.scopes = buildUnnamed289();
    o.status = "foo";
  }
  buildCounterGoogleCloudApigeeV1CompanyAppKey--;
  return o;
}

checkGoogleCloudApigeeV1CompanyAppKey(api.GoogleCloudApigeeV1CompanyAppKey o) {
  buildCounterGoogleCloudApigeeV1CompanyAppKey++;
  if (buildCounterGoogleCloudApigeeV1CompanyAppKey < 3) {
    checkUnnamed287(o.apiProducts);
    checkUnnamed288(o.attributes);
    unittest.expect(o.consumerKey, unittest.equals('foo'));
    unittest.expect(o.consumerSecret, unittest.equals('foo'));
    unittest.expect(o.expiresAt, unittest.equals('foo'));
    unittest.expect(o.issuedAt, unittest.equals('foo'));
    checkUnnamed289(o.scopes);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1CompanyAppKey--;
}

core.int buildCounterGoogleCloudApigeeV1ConfigVersion = 0;
buildGoogleCloudApigeeV1ConfigVersion() {
  var o = new api.GoogleCloudApigeeV1ConfigVersion();
  buildCounterGoogleCloudApigeeV1ConfigVersion++;
  if (buildCounterGoogleCloudApigeeV1ConfigVersion < 3) {
    o.majorVersion = 42;
    o.minorVersion = 42;
  }
  buildCounterGoogleCloudApigeeV1ConfigVersion--;
  return o;
}

checkGoogleCloudApigeeV1ConfigVersion(api.GoogleCloudApigeeV1ConfigVersion o) {
  buildCounterGoogleCloudApigeeV1ConfigVersion++;
  if (buildCounterGoogleCloudApigeeV1ConfigVersion < 3) {
    unittest.expect(o.majorVersion, unittest.equals(42));
    unittest.expect(o.minorVersion, unittest.equals(42));
  }
  buildCounterGoogleCloudApigeeV1ConfigVersion--;
}

buildUnnamed290() {
  var o = new core.List<api.GoogleCloudApigeeV1ApiProductRef>();
  o.add(buildGoogleCloudApigeeV1ApiProductRef());
  o.add(buildGoogleCloudApigeeV1ApiProductRef());
  return o;
}

checkUnnamed290(core.List<api.GoogleCloudApigeeV1ApiProductRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ApiProductRef(o[0]);
  checkGoogleCloudApigeeV1ApiProductRef(o[1]);
}

buildUnnamed291() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed291(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

buildUnnamed292() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed292(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Credential = 0;
buildGoogleCloudApigeeV1Credential() {
  var o = new api.GoogleCloudApigeeV1Credential();
  buildCounterGoogleCloudApigeeV1Credential++;
  if (buildCounterGoogleCloudApigeeV1Credential < 3) {
    o.apiProducts = buildUnnamed290();
    o.attributes = buildUnnamed291();
    o.consumerKey = "foo";
    o.consumerSecret = "foo";
    o.expiresAt = "foo";
    o.issuedAt = "foo";
    o.scopes = buildUnnamed292();
    o.status = "foo";
  }
  buildCounterGoogleCloudApigeeV1Credential--;
  return o;
}

checkGoogleCloudApigeeV1Credential(api.GoogleCloudApigeeV1Credential o) {
  buildCounterGoogleCloudApigeeV1Credential++;
  if (buildCounterGoogleCloudApigeeV1Credential < 3) {
    checkUnnamed290(o.apiProducts);
    checkUnnamed291(o.attributes);
    unittest.expect(o.consumerKey, unittest.equals('foo'));
    unittest.expect(o.consumerSecret, unittest.equals('foo'));
    unittest.expect(o.expiresAt, unittest.equals('foo'));
    unittest.expect(o.issuedAt, unittest.equals('foo'));
    checkUnnamed292(o.scopes);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Credential--;
}

buildUnnamed293() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed293(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed294() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed294(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed295() {
  var o = new core.List<api.GoogleCloudApigeeV1CustomReportMetric>();
  o.add(buildGoogleCloudApigeeV1CustomReportMetric());
  o.add(buildGoogleCloudApigeeV1CustomReportMetric());
  return o;
}

checkUnnamed295(core.List<api.GoogleCloudApigeeV1CustomReportMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1CustomReportMetric(o[0]);
  checkGoogleCloudApigeeV1CustomReportMetric(o[1]);
}

buildUnnamed296() {
  var o = new core.List<api.GoogleCloudApigeeV1ReportProperty>();
  o.add(buildGoogleCloudApigeeV1ReportProperty());
  o.add(buildGoogleCloudApigeeV1ReportProperty());
  return o;
}

checkUnnamed296(core.List<api.GoogleCloudApigeeV1ReportProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ReportProperty(o[0]);
  checkGoogleCloudApigeeV1ReportProperty(o[1]);
}

buildUnnamed297() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed297(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed298() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed298(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1CustomReport = 0;
buildGoogleCloudApigeeV1CustomReport() {
  var o = new api.GoogleCloudApigeeV1CustomReport();
  buildCounterGoogleCloudApigeeV1CustomReport++;
  if (buildCounterGoogleCloudApigeeV1CustomReport < 3) {
    o.chartType = "foo";
    o.comments = buildUnnamed293();
    o.createdAt = "foo";
    o.dimensions = buildUnnamed294();
    o.displayName = "foo";
    o.environment = "foo";
    o.filter = "foo";
    o.fromTime = "foo";
    o.lastModifiedAt = "foo";
    o.lastViewedAt = "foo";
    o.limit = "foo";
    o.metrics = buildUnnamed295();
    o.name = "foo";
    o.offset = "foo";
    o.organization = "foo";
    o.properties = buildUnnamed296();
    o.sortByCols = buildUnnamed297();
    o.sortOrder = "foo";
    o.tags = buildUnnamed298();
    o.timeUnit = "foo";
    o.toTime = "foo";
    o.topk = "foo";
  }
  buildCounterGoogleCloudApigeeV1CustomReport--;
  return o;
}

checkGoogleCloudApigeeV1CustomReport(api.GoogleCloudApigeeV1CustomReport o) {
  buildCounterGoogleCloudApigeeV1CustomReport++;
  if (buildCounterGoogleCloudApigeeV1CustomReport < 3) {
    unittest.expect(o.chartType, unittest.equals('foo'));
    checkUnnamed293(o.comments);
    unittest.expect(o.createdAt, unittest.equals('foo'));
    checkUnnamed294(o.dimensions);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.fromTime, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.lastViewedAt, unittest.equals('foo'));
    unittest.expect(o.limit, unittest.equals('foo'));
    checkUnnamed295(o.metrics);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.offset, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    checkUnnamed296(o.properties);
    checkUnnamed297(o.sortByCols);
    unittest.expect(o.sortOrder, unittest.equals('foo'));
    checkUnnamed298(o.tags);
    unittest.expect(o.timeUnit, unittest.equals('foo'));
    unittest.expect(o.toTime, unittest.equals('foo'));
    unittest.expect(o.topk, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1CustomReport--;
}

core.int buildCounterGoogleCloudApigeeV1CustomReportMetric = 0;
buildGoogleCloudApigeeV1CustomReportMetric() {
  var o = new api.GoogleCloudApigeeV1CustomReportMetric();
  buildCounterGoogleCloudApigeeV1CustomReportMetric++;
  if (buildCounterGoogleCloudApigeeV1CustomReportMetric < 3) {
    o.function = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudApigeeV1CustomReportMetric--;
  return o;
}

checkGoogleCloudApigeeV1CustomReportMetric(
    api.GoogleCloudApigeeV1CustomReportMetric o) {
  buildCounterGoogleCloudApigeeV1CustomReportMetric++;
  if (buildCounterGoogleCloudApigeeV1CustomReportMetric < 3) {
    unittest.expect(o.function, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1CustomReportMetric--;
}

core.int buildCounterGoogleCloudApigeeV1DataLocation = 0;
buildGoogleCloudApigeeV1DataLocation() {
  var o = new api.GoogleCloudApigeeV1DataLocation();
  buildCounterGoogleCloudApigeeV1DataLocation++;
  if (buildCounterGoogleCloudApigeeV1DataLocation < 3) {
    o.url = "foo";
  }
  buildCounterGoogleCloudApigeeV1DataLocation--;
  return o;
}

checkGoogleCloudApigeeV1DataLocation(api.GoogleCloudApigeeV1DataLocation o) {
  buildCounterGoogleCloudApigeeV1DataLocation++;
  if (buildCounterGoogleCloudApigeeV1DataLocation < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DataLocation--;
}

buildUnnamed299() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed299(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed300() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed300(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed301() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed301(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed302() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed302(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed303() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed303(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed304() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed304(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed305() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed305(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed306() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed306(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1DebugMask = 0;
buildGoogleCloudApigeeV1DebugMask() {
  var o = new api.GoogleCloudApigeeV1DebugMask();
  buildCounterGoogleCloudApigeeV1DebugMask++;
  if (buildCounterGoogleCloudApigeeV1DebugMask < 3) {
    o.faultJSONPaths = buildUnnamed299();
    o.faultXPaths = buildUnnamed300();
    o.name = "foo";
    o.namespaces = buildUnnamed301();
    o.requestJSONPaths = buildUnnamed302();
    o.requestXPaths = buildUnnamed303();
    o.responseJSONPaths = buildUnnamed304();
    o.responseXPaths = buildUnnamed305();
    o.variables = buildUnnamed306();
  }
  buildCounterGoogleCloudApigeeV1DebugMask--;
  return o;
}

checkGoogleCloudApigeeV1DebugMask(api.GoogleCloudApigeeV1DebugMask o) {
  buildCounterGoogleCloudApigeeV1DebugMask++;
  if (buildCounterGoogleCloudApigeeV1DebugMask < 3) {
    checkUnnamed299(o.faultJSONPaths);
    checkUnnamed300(o.faultXPaths);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed301(o.namespaces);
    checkUnnamed302(o.requestJSONPaths);
    checkUnnamed303(o.requestXPaths);
    checkUnnamed304(o.responseJSONPaths);
    checkUnnamed305(o.responseXPaths);
    checkUnnamed306(o.variables);
  }
  buildCounterGoogleCloudApigeeV1DebugMask--;
}

core.int buildCounterGoogleCloudApigeeV1DebugSession = 0;
buildGoogleCloudApigeeV1DebugSession() {
  var o = new api.GoogleCloudApigeeV1DebugSession();
  buildCounterGoogleCloudApigeeV1DebugSession++;
  if (buildCounterGoogleCloudApigeeV1DebugSession < 3) {
    o.count = 42;
    o.filter = "foo";
    o.name = "foo";
    o.timeout = "foo";
    o.tracesize = 42;
    o.validity = 42;
  }
  buildCounterGoogleCloudApigeeV1DebugSession--;
  return o;
}

checkGoogleCloudApigeeV1DebugSession(api.GoogleCloudApigeeV1DebugSession o) {
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

buildUnnamed307() {
  var o = new core.List<api.GoogleCloudApigeeV1Point>();
  o.add(buildGoogleCloudApigeeV1Point());
  o.add(buildGoogleCloudApigeeV1Point());
  return o;
}

checkUnnamed307(core.List<api.GoogleCloudApigeeV1Point> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Point(o[0]);
  checkGoogleCloudApigeeV1Point(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1DebugSessionTransaction = 0;
buildGoogleCloudApigeeV1DebugSessionTransaction() {
  var o = new api.GoogleCloudApigeeV1DebugSessionTransaction();
  buildCounterGoogleCloudApigeeV1DebugSessionTransaction++;
  if (buildCounterGoogleCloudApigeeV1DebugSessionTransaction < 3) {
    o.completed = true;
    o.point = buildUnnamed307();
  }
  buildCounterGoogleCloudApigeeV1DebugSessionTransaction--;
  return o;
}

checkGoogleCloudApigeeV1DebugSessionTransaction(
    api.GoogleCloudApigeeV1DebugSessionTransaction o) {
  buildCounterGoogleCloudApigeeV1DebugSessionTransaction++;
  if (buildCounterGoogleCloudApigeeV1DebugSessionTransaction < 3) {
    unittest.expect(o.completed, unittest.isTrue);
    checkUnnamed307(o.point);
  }
  buildCounterGoogleCloudApigeeV1DebugSessionTransaction--;
}

core.int buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse = 0;
buildGoogleCloudApigeeV1DeleteCustomReportResponse() {
  var o = new api.GoogleCloudApigeeV1DeleteCustomReportResponse();
  buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse++;
  if (buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse < 3) {
    o.message = "foo";
  }
  buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse--;
  return o;
}

checkGoogleCloudApigeeV1DeleteCustomReportResponse(
    api.GoogleCloudApigeeV1DeleteCustomReportResponse o) {
  buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse++;
  if (buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse < 3) {
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DeleteCustomReportResponse--;
}

buildUnnamed308() {
  var o = new core.List<api.GoogleCloudApigeeV1PodStatus>();
  o.add(buildGoogleCloudApigeeV1PodStatus());
  o.add(buildGoogleCloudApigeeV1PodStatus());
  return o;
}

checkUnnamed308(core.List<api.GoogleCloudApigeeV1PodStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1PodStatus(o[0]);
  checkGoogleCloudApigeeV1PodStatus(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1Deployment = 0;
buildGoogleCloudApigeeV1Deployment() {
  var o = new api.GoogleCloudApigeeV1Deployment();
  buildCounterGoogleCloudApigeeV1Deployment++;
  if (buildCounterGoogleCloudApigeeV1Deployment < 3) {
    o.apiProxy = "foo";
    o.basePath = "foo";
    o.deployStartTime = "foo";
    o.environment = "foo";
    o.pods = buildUnnamed308();
    o.revision = "foo";
  }
  buildCounterGoogleCloudApigeeV1Deployment--;
  return o;
}

checkGoogleCloudApigeeV1Deployment(api.GoogleCloudApigeeV1Deployment o) {
  buildCounterGoogleCloudApigeeV1Deployment++;
  if (buildCounterGoogleCloudApigeeV1Deployment < 3) {
    unittest.expect(o.apiProxy, unittest.equals('foo'));
    unittest.expect(o.basePath, unittest.equals('foo'));
    unittest.expect(o.deployStartTime, unittest.equals('foo'));
    unittest.expect(o.environment, unittest.equals('foo'));
    checkUnnamed308(o.pods);
    unittest.expect(o.revision, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Deployment--;
}

buildUnnamed309() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed309(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1DeploymentConfig = 0;
buildGoogleCloudApigeeV1DeploymentConfig() {
  var o = new api.GoogleCloudApigeeV1DeploymentConfig();
  buildCounterGoogleCloudApigeeV1DeploymentConfig++;
  if (buildCounterGoogleCloudApigeeV1DeploymentConfig < 3) {
    o.attributes = buildUnnamed309();
    o.basePath = "foo";
    o.location = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudApigeeV1DeploymentConfig--;
  return o;
}

checkGoogleCloudApigeeV1DeploymentConfig(
    api.GoogleCloudApigeeV1DeploymentConfig o) {
  buildCounterGoogleCloudApigeeV1DeploymentConfig++;
  if (buildCounterGoogleCloudApigeeV1DeploymentConfig < 3) {
    checkUnnamed309(o.attributes);
    unittest.expect(o.basePath, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DeploymentConfig--;
}

buildUnnamed310() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed310(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed311() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed311(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

buildUnnamed312() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed312(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Developer = 0;
buildGoogleCloudApigeeV1Developer() {
  var o = new api.GoogleCloudApigeeV1Developer();
  buildCounterGoogleCloudApigeeV1Developer++;
  if (buildCounterGoogleCloudApigeeV1Developer < 3) {
    o.accessType = "foo";
    o.appFamily = "foo";
    o.apps = buildUnnamed310();
    o.attributes = buildUnnamed311();
    o.companies = buildUnnamed312();
    o.createdAt = "foo";
    o.developerId = "foo";
    o.email = "foo";
    o.firstName = "foo";
    o.lastModifiedAt = "foo";
    o.lastName = "foo";
    o.organizationName = "foo";
    o.status = "foo";
    o.userName = "foo";
  }
  buildCounterGoogleCloudApigeeV1Developer--;
  return o;
}

checkGoogleCloudApigeeV1Developer(api.GoogleCloudApigeeV1Developer o) {
  buildCounterGoogleCloudApigeeV1Developer++;
  if (buildCounterGoogleCloudApigeeV1Developer < 3) {
    unittest.expect(o.accessType, unittest.equals('foo'));
    unittest.expect(o.appFamily, unittest.equals('foo'));
    checkUnnamed310(o.apps);
    checkUnnamed311(o.attributes);
    checkUnnamed312(o.companies);
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

buildUnnamed313() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed313(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed314() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed314(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

buildUnnamed315() {
  var o = new core.List<api.GoogleCloudApigeeV1Credential>();
  o.add(buildGoogleCloudApigeeV1Credential());
  o.add(buildGoogleCloudApigeeV1Credential());
  return o;
}

checkUnnamed315(core.List<api.GoogleCloudApigeeV1Credential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Credential(o[0]);
  checkGoogleCloudApigeeV1Credential(o[1]);
}

buildUnnamed316() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed316(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1DeveloperApp = 0;
buildGoogleCloudApigeeV1DeveloperApp() {
  var o = new api.GoogleCloudApigeeV1DeveloperApp();
  buildCounterGoogleCloudApigeeV1DeveloperApp++;
  if (buildCounterGoogleCloudApigeeV1DeveloperApp < 3) {
    o.apiProducts = buildUnnamed313();
    o.appFamily = "foo";
    o.appId = "foo";
    o.attributes = buildUnnamed314();
    o.callbackUrl = "foo";
    o.createdAt = "foo";
    o.credentials = buildUnnamed315();
    o.developerId = "foo";
    o.keyExpiresIn = "foo";
    o.lastModifiedAt = "foo";
    o.name = "foo";
    o.scopes = buildUnnamed316();
    o.status = "foo";
  }
  buildCounterGoogleCloudApigeeV1DeveloperApp--;
  return o;
}

checkGoogleCloudApigeeV1DeveloperApp(api.GoogleCloudApigeeV1DeveloperApp o) {
  buildCounterGoogleCloudApigeeV1DeveloperApp++;
  if (buildCounterGoogleCloudApigeeV1DeveloperApp < 3) {
    checkUnnamed313(o.apiProducts);
    unittest.expect(o.appFamily, unittest.equals('foo'));
    unittest.expect(o.appId, unittest.equals('foo'));
    checkUnnamed314(o.attributes);
    unittest.expect(o.callbackUrl, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    checkUnnamed315(o.credentials);
    unittest.expect(o.developerId, unittest.equals('foo'));
    unittest.expect(o.keyExpiresIn, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed316(o.scopes);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DeveloperApp--;
}

buildUnnamed317() {
  var o = new core.List<core.Object>();
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

checkUnnamed317(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o[1]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

buildUnnamed318() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed318(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

buildUnnamed319() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed319(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1DeveloperAppKey = 0;
buildGoogleCloudApigeeV1DeveloperAppKey() {
  var o = new api.GoogleCloudApigeeV1DeveloperAppKey();
  buildCounterGoogleCloudApigeeV1DeveloperAppKey++;
  if (buildCounterGoogleCloudApigeeV1DeveloperAppKey < 3) {
    o.apiProducts = buildUnnamed317();
    o.attributes = buildUnnamed318();
    o.consumerKey = "foo";
    o.consumerSecret = "foo";
    o.expiresAt = "foo";
    o.issuedAt = "foo";
    o.scopes = buildUnnamed319();
    o.status = "foo";
  }
  buildCounterGoogleCloudApigeeV1DeveloperAppKey--;
  return o;
}

checkGoogleCloudApigeeV1DeveloperAppKey(
    api.GoogleCloudApigeeV1DeveloperAppKey o) {
  buildCounterGoogleCloudApigeeV1DeveloperAppKey++;
  if (buildCounterGoogleCloudApigeeV1DeveloperAppKey < 3) {
    checkUnnamed317(o.apiProducts);
    checkUnnamed318(o.attributes);
    unittest.expect(o.consumerKey, unittest.equals('foo'));
    unittest.expect(o.consumerSecret, unittest.equals('foo'));
    unittest.expect(o.expiresAt, unittest.equals('foo'));
    unittest.expect(o.issuedAt, unittest.equals('foo'));
    checkUnnamed319(o.scopes);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DeveloperAppKey--;
}

buildUnnamed320() {
  var o = new core.List<api.GoogleCloudApigeeV1Metric>();
  o.add(buildGoogleCloudApigeeV1Metric());
  o.add(buildGoogleCloudApigeeV1Metric());
  return o;
}

checkUnnamed320(core.List<api.GoogleCloudApigeeV1Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Metric(o[0]);
  checkGoogleCloudApigeeV1Metric(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1DimensionMetric = 0;
buildGoogleCloudApigeeV1DimensionMetric() {
  var o = new api.GoogleCloudApigeeV1DimensionMetric();
  buildCounterGoogleCloudApigeeV1DimensionMetric++;
  if (buildCounterGoogleCloudApigeeV1DimensionMetric < 3) {
    o.metrics = buildUnnamed320();
    o.name = "foo";
  }
  buildCounterGoogleCloudApigeeV1DimensionMetric--;
  return o;
}

checkGoogleCloudApigeeV1DimensionMetric(
    api.GoogleCloudApigeeV1DimensionMetric o) {
  buildCounterGoogleCloudApigeeV1DimensionMetric++;
  if (buildCounterGoogleCloudApigeeV1DimensionMetric < 3) {
    checkUnnamed320(o.metrics);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1DimensionMetric--;
}

core.int buildCounterGoogleCloudApigeeV1EntityMetadata = 0;
buildGoogleCloudApigeeV1EntityMetadata() {
  var o = new api.GoogleCloudApigeeV1EntityMetadata();
  buildCounterGoogleCloudApigeeV1EntityMetadata++;
  if (buildCounterGoogleCloudApigeeV1EntityMetadata < 3) {
    o.createdAt = "foo";
    o.lastModifiedAt = "foo";
    o.subType = "foo";
  }
  buildCounterGoogleCloudApigeeV1EntityMetadata--;
  return o;
}

checkGoogleCloudApigeeV1EntityMetadata(
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
buildGoogleCloudApigeeV1Environment() {
  var o = new api.GoogleCloudApigeeV1Environment();
  buildCounterGoogleCloudApigeeV1Environment++;
  if (buildCounterGoogleCloudApigeeV1Environment < 3) {
    o.createdAt = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.lastModifiedAt = "foo";
    o.name = "foo";
    o.properties = buildGoogleCloudApigeeV1Properties();
  }
  buildCounterGoogleCloudApigeeV1Environment--;
  return o;
}

checkGoogleCloudApigeeV1Environment(api.GoogleCloudApigeeV1Environment o) {
  buildCounterGoogleCloudApigeeV1Environment++;
  if (buildCounterGoogleCloudApigeeV1Environment < 3) {
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudApigeeV1Properties(o.properties);
  }
  buildCounterGoogleCloudApigeeV1Environment--;
}

buildUnnamed321() {
  var o = new core.List<api.GoogleCloudApigeeV1DeploymentConfig>();
  o.add(buildGoogleCloudApigeeV1DeploymentConfig());
  o.add(buildGoogleCloudApigeeV1DeploymentConfig());
  return o;
}

checkUnnamed321(core.List<api.GoogleCloudApigeeV1DeploymentConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1DeploymentConfig(o[0]);
  checkGoogleCloudApigeeV1DeploymentConfig(o[1]);
}

buildUnnamed322() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed322(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed323() {
  var o = new core.List<api.GoogleCloudApigeeV1FlowHookConfig>();
  o.add(buildGoogleCloudApigeeV1FlowHookConfig());
  o.add(buildGoogleCloudApigeeV1FlowHookConfig());
  return o;
}

checkUnnamed323(core.List<api.GoogleCloudApigeeV1FlowHookConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1FlowHookConfig(o[0]);
  checkGoogleCloudApigeeV1FlowHookConfig(o[1]);
}

buildUnnamed324() {
  var o = new core.List<api.GoogleCloudApigeeV1KeystoreConfig>();
  o.add(buildGoogleCloudApigeeV1KeystoreConfig());
  o.add(buildGoogleCloudApigeeV1KeystoreConfig());
  return o;
}

checkUnnamed324(core.List<api.GoogleCloudApigeeV1KeystoreConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1KeystoreConfig(o[0]);
  checkGoogleCloudApigeeV1KeystoreConfig(o[1]);
}

buildUnnamed325() {
  var o = new core.List<api.GoogleCloudApigeeV1ReferenceConfig>();
  o.add(buildGoogleCloudApigeeV1ReferenceConfig());
  o.add(buildGoogleCloudApigeeV1ReferenceConfig());
  return o;
}

checkUnnamed325(core.List<api.GoogleCloudApigeeV1ReferenceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ReferenceConfig(o[0]);
  checkGoogleCloudApigeeV1ReferenceConfig(o[1]);
}

buildUnnamed326() {
  var o = new core.List<api.GoogleCloudApigeeV1ResourceConfig>();
  o.add(buildGoogleCloudApigeeV1ResourceConfig());
  o.add(buildGoogleCloudApigeeV1ResourceConfig());
  return o;
}

checkUnnamed326(core.List<api.GoogleCloudApigeeV1ResourceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ResourceConfig(o[0]);
  checkGoogleCloudApigeeV1ResourceConfig(o[1]);
}

buildUnnamed327() {
  var o = new core.List<api.GoogleCloudApigeeV1TargetServerConfig>();
  o.add(buildGoogleCloudApigeeV1TargetServerConfig());
  o.add(buildGoogleCloudApigeeV1TargetServerConfig());
  return o;
}

checkUnnamed327(core.List<api.GoogleCloudApigeeV1TargetServerConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1TargetServerConfig(o[0]);
  checkGoogleCloudApigeeV1TargetServerConfig(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1EnvironmentConfig = 0;
buildGoogleCloudApigeeV1EnvironmentConfig() {
  var o = new api.GoogleCloudApigeeV1EnvironmentConfig();
  buildCounterGoogleCloudApigeeV1EnvironmentConfig++;
  if (buildCounterGoogleCloudApigeeV1EnvironmentConfig < 3) {
    o.createTime = "foo";
    o.debugMask = buildGoogleCloudApigeeV1DebugMask();
    o.deployments = buildUnnamed321();
    o.featureFlags = buildUnnamed322();
    o.flowhooks = buildUnnamed323();
    o.keystores = buildUnnamed324();
    o.name = "foo";
    o.provider = "foo";
    o.pubsubTopic = "foo";
    o.resourceReferences = buildUnnamed325();
    o.resources = buildUnnamed326();
    o.sequenceNumber = "foo";
    o.targets = buildUnnamed327();
  }
  buildCounterGoogleCloudApigeeV1EnvironmentConfig--;
  return o;
}

checkGoogleCloudApigeeV1EnvironmentConfig(
    api.GoogleCloudApigeeV1EnvironmentConfig o) {
  buildCounterGoogleCloudApigeeV1EnvironmentConfig++;
  if (buildCounterGoogleCloudApigeeV1EnvironmentConfig < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGoogleCloudApigeeV1DebugMask(o.debugMask);
    checkUnnamed321(o.deployments);
    checkUnnamed322(o.featureFlags);
    checkUnnamed323(o.flowhooks);
    checkUnnamed324(o.keystores);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.provider, unittest.equals('foo'));
    unittest.expect(o.pubsubTopic, unittest.equals('foo'));
    checkUnnamed325(o.resourceReferences);
    checkUnnamed326(o.resources);
    unittest.expect(o.sequenceNumber, unittest.equals('foo'));
    checkUnnamed327(o.targets);
  }
  buildCounterGoogleCloudApigeeV1EnvironmentConfig--;
}

core.int buildCounterGoogleCloudApigeeV1FlowHook = 0;
buildGoogleCloudApigeeV1FlowHook() {
  var o = new api.GoogleCloudApigeeV1FlowHook();
  buildCounterGoogleCloudApigeeV1FlowHook++;
  if (buildCounterGoogleCloudApigeeV1FlowHook < 3) {
    o.continueOnError = true;
    o.description = "foo";
    o.flowHookPoint = "foo";
    o.sharedFlow = "foo";
  }
  buildCounterGoogleCloudApigeeV1FlowHook--;
  return o;
}

checkGoogleCloudApigeeV1FlowHook(api.GoogleCloudApigeeV1FlowHook o) {
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
buildGoogleCloudApigeeV1FlowHookConfig() {
  var o = new api.GoogleCloudApigeeV1FlowHookConfig();
  buildCounterGoogleCloudApigeeV1FlowHookConfig++;
  if (buildCounterGoogleCloudApigeeV1FlowHookConfig < 3) {
    o.continueOnError = true;
    o.name = "foo";
    o.sharedFlowName = "foo";
  }
  buildCounterGoogleCloudApigeeV1FlowHookConfig--;
  return o;
}

checkGoogleCloudApigeeV1FlowHookConfig(
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
buildGoogleCloudApigeeV1GetSyncAuthorizationRequest() {
  var o = new api.GoogleCloudApigeeV1GetSyncAuthorizationRequest();
  buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest++;
  if (buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest < 3) {}
  buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest--;
  return o;
}

checkGoogleCloudApigeeV1GetSyncAuthorizationRequest(
    api.GoogleCloudApigeeV1GetSyncAuthorizationRequest o) {
  buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest++;
  if (buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest < 3) {}
  buildCounterGoogleCloudApigeeV1GetSyncAuthorizationRequest--;
}

core.int buildCounterGoogleCloudApigeeV1KeyAliasReference = 0;
buildGoogleCloudApigeeV1KeyAliasReference() {
  var o = new api.GoogleCloudApigeeV1KeyAliasReference();
  buildCounterGoogleCloudApigeeV1KeyAliasReference++;
  if (buildCounterGoogleCloudApigeeV1KeyAliasReference < 3) {
    o.aliasId = "foo";
    o.reference = "foo";
  }
  buildCounterGoogleCloudApigeeV1KeyAliasReference--;
  return o;
}

checkGoogleCloudApigeeV1KeyAliasReference(
    api.GoogleCloudApigeeV1KeyAliasReference o) {
  buildCounterGoogleCloudApigeeV1KeyAliasReference++;
  if (buildCounterGoogleCloudApigeeV1KeyAliasReference < 3) {
    unittest.expect(o.aliasId, unittest.equals('foo'));
    unittest.expect(o.reference, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1KeyAliasReference--;
}

core.int buildCounterGoogleCloudApigeeV1KeyValueMap = 0;
buildGoogleCloudApigeeV1KeyValueMap() {
  var o = new api.GoogleCloudApigeeV1KeyValueMap();
  buildCounterGoogleCloudApigeeV1KeyValueMap++;
  if (buildCounterGoogleCloudApigeeV1KeyValueMap < 3) {
    o.encrypted = true;
    o.name = "foo";
  }
  buildCounterGoogleCloudApigeeV1KeyValueMap--;
  return o;
}

checkGoogleCloudApigeeV1KeyValueMap(api.GoogleCloudApigeeV1KeyValueMap o) {
  buildCounterGoogleCloudApigeeV1KeyValueMap++;
  if (buildCounterGoogleCloudApigeeV1KeyValueMap < 3) {
    unittest.expect(o.encrypted, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1KeyValueMap--;
}

buildUnnamed328() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed328(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Keystore = 0;
buildGoogleCloudApigeeV1Keystore() {
  var o = new api.GoogleCloudApigeeV1Keystore();
  buildCounterGoogleCloudApigeeV1Keystore++;
  if (buildCounterGoogleCloudApigeeV1Keystore < 3) {
    o.aliases = buildUnnamed328();
    o.name = "foo";
  }
  buildCounterGoogleCloudApigeeV1Keystore--;
  return o;
}

checkGoogleCloudApigeeV1Keystore(api.GoogleCloudApigeeV1Keystore o) {
  buildCounterGoogleCloudApigeeV1Keystore++;
  if (buildCounterGoogleCloudApigeeV1Keystore < 3) {
    checkUnnamed328(o.aliases);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Keystore--;
}

buildUnnamed329() {
  var o = new core.List<api.GoogleCloudApigeeV1AliasRevisionConfig>();
  o.add(buildGoogleCloudApigeeV1AliasRevisionConfig());
  o.add(buildGoogleCloudApigeeV1AliasRevisionConfig());
  return o;
}

checkUnnamed329(core.List<api.GoogleCloudApigeeV1AliasRevisionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1AliasRevisionConfig(o[0]);
  checkGoogleCloudApigeeV1AliasRevisionConfig(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1KeystoreConfig = 0;
buildGoogleCloudApigeeV1KeystoreConfig() {
  var o = new api.GoogleCloudApigeeV1KeystoreConfig();
  buildCounterGoogleCloudApigeeV1KeystoreConfig++;
  if (buildCounterGoogleCloudApigeeV1KeystoreConfig < 3) {
    o.aliases = buildUnnamed329();
    o.name = "foo";
  }
  buildCounterGoogleCloudApigeeV1KeystoreConfig--;
  return o;
}

checkGoogleCloudApigeeV1KeystoreConfig(
    api.GoogleCloudApigeeV1KeystoreConfig o) {
  buildCounterGoogleCloudApigeeV1KeystoreConfig++;
  if (buildCounterGoogleCloudApigeeV1KeystoreConfig < 3) {
    checkUnnamed329(o.aliases);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1KeystoreConfig--;
}

buildUnnamed330() {
  var o = new core.List<api.GoogleCloudApigeeV1ApiProduct>();
  o.add(buildGoogleCloudApigeeV1ApiProduct());
  o.add(buildGoogleCloudApigeeV1ApiProduct());
  return o;
}

checkUnnamed330(core.List<api.GoogleCloudApigeeV1ApiProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ApiProduct(o[0]);
  checkGoogleCloudApigeeV1ApiProduct(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListApiProductsResponse = 0;
buildGoogleCloudApigeeV1ListApiProductsResponse() {
  var o = new api.GoogleCloudApigeeV1ListApiProductsResponse();
  buildCounterGoogleCloudApigeeV1ListApiProductsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListApiProductsResponse < 3) {
    o.apiProduct = buildUnnamed330();
  }
  buildCounterGoogleCloudApigeeV1ListApiProductsResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListApiProductsResponse(
    api.GoogleCloudApigeeV1ListApiProductsResponse o) {
  buildCounterGoogleCloudApigeeV1ListApiProductsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListApiProductsResponse < 3) {
    checkUnnamed330(o.apiProduct);
  }
  buildCounterGoogleCloudApigeeV1ListApiProductsResponse--;
}

buildUnnamed331() {
  var o = new core.List<api.GoogleCloudApigeeV1ApiProxy>();
  o.add(buildGoogleCloudApigeeV1ApiProxy());
  o.add(buildGoogleCloudApigeeV1ApiProxy());
  return o;
}

checkUnnamed331(core.List<api.GoogleCloudApigeeV1ApiProxy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ApiProxy(o[0]);
  checkGoogleCloudApigeeV1ApiProxy(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListApiProxiesResponse = 0;
buildGoogleCloudApigeeV1ListApiProxiesResponse() {
  var o = new api.GoogleCloudApigeeV1ListApiProxiesResponse();
  buildCounterGoogleCloudApigeeV1ListApiProxiesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListApiProxiesResponse < 3) {
    o.proxies = buildUnnamed331();
  }
  buildCounterGoogleCloudApigeeV1ListApiProxiesResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListApiProxiesResponse(
    api.GoogleCloudApigeeV1ListApiProxiesResponse o) {
  buildCounterGoogleCloudApigeeV1ListApiProxiesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListApiProxiesResponse < 3) {
    checkUnnamed331(o.proxies);
  }
  buildCounterGoogleCloudApigeeV1ListApiProxiesResponse--;
}

buildUnnamed332() {
  var o = new core.List<api.GoogleCloudApigeeV1App>();
  o.add(buildGoogleCloudApigeeV1App());
  o.add(buildGoogleCloudApigeeV1App());
  return o;
}

checkUnnamed332(core.List<api.GoogleCloudApigeeV1App> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1App(o[0]);
  checkGoogleCloudApigeeV1App(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListAppsResponse = 0;
buildGoogleCloudApigeeV1ListAppsResponse() {
  var o = new api.GoogleCloudApigeeV1ListAppsResponse();
  buildCounterGoogleCloudApigeeV1ListAppsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListAppsResponse < 3) {
    o.app = buildUnnamed332();
  }
  buildCounterGoogleCloudApigeeV1ListAppsResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListAppsResponse(
    api.GoogleCloudApigeeV1ListAppsResponse o) {
  buildCounterGoogleCloudApigeeV1ListAppsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListAppsResponse < 3) {
    checkUnnamed332(o.app);
  }
  buildCounterGoogleCloudApigeeV1ListAppsResponse--;
}

buildUnnamed333() {
  var o = new core.List<api.GoogleCloudApigeeV1AsyncQuery>();
  o.add(buildGoogleCloudApigeeV1AsyncQuery());
  o.add(buildGoogleCloudApigeeV1AsyncQuery());
  return o;
}

checkUnnamed333(core.List<api.GoogleCloudApigeeV1AsyncQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1AsyncQuery(o[0]);
  checkGoogleCloudApigeeV1AsyncQuery(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse = 0;
buildGoogleCloudApigeeV1ListAsyncQueriesResponse() {
  var o = new api.GoogleCloudApigeeV1ListAsyncQueriesResponse();
  buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse < 3) {
    o.queries = buildUnnamed333();
  }
  buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListAsyncQueriesResponse(
    api.GoogleCloudApigeeV1ListAsyncQueriesResponse o) {
  buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse < 3) {
    checkUnnamed333(o.queries);
  }
  buildCounterGoogleCloudApigeeV1ListAsyncQueriesResponse--;
}

buildUnnamed334() {
  var o = new core.List<api.GoogleCloudApigeeV1Company>();
  o.add(buildGoogleCloudApigeeV1Company());
  o.add(buildGoogleCloudApigeeV1Company());
  return o;
}

checkUnnamed334(core.List<api.GoogleCloudApigeeV1Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Company(o[0]);
  checkGoogleCloudApigeeV1Company(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListCompaniesResponse = 0;
buildGoogleCloudApigeeV1ListCompaniesResponse() {
  var o = new api.GoogleCloudApigeeV1ListCompaniesResponse();
  buildCounterGoogleCloudApigeeV1ListCompaniesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListCompaniesResponse < 3) {
    o.company = buildUnnamed334();
  }
  buildCounterGoogleCloudApigeeV1ListCompaniesResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListCompaniesResponse(
    api.GoogleCloudApigeeV1ListCompaniesResponse o) {
  buildCounterGoogleCloudApigeeV1ListCompaniesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListCompaniesResponse < 3) {
    checkUnnamed334(o.company);
  }
  buildCounterGoogleCloudApigeeV1ListCompaniesResponse--;
}

buildUnnamed335() {
  var o = new core.List<api.GoogleCloudApigeeV1CompanyApp>();
  o.add(buildGoogleCloudApigeeV1CompanyApp());
  o.add(buildGoogleCloudApigeeV1CompanyApp());
  return o;
}

checkUnnamed335(core.List<api.GoogleCloudApigeeV1CompanyApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1CompanyApp(o[0]);
  checkGoogleCloudApigeeV1CompanyApp(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListCompanyAppsResponse = 0;
buildGoogleCloudApigeeV1ListCompanyAppsResponse() {
  var o = new api.GoogleCloudApigeeV1ListCompanyAppsResponse();
  buildCounterGoogleCloudApigeeV1ListCompanyAppsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListCompanyAppsResponse < 3) {
    o.app = buildUnnamed335();
  }
  buildCounterGoogleCloudApigeeV1ListCompanyAppsResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListCompanyAppsResponse(
    api.GoogleCloudApigeeV1ListCompanyAppsResponse o) {
  buildCounterGoogleCloudApigeeV1ListCompanyAppsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListCompanyAppsResponse < 3) {
    checkUnnamed335(o.app);
  }
  buildCounterGoogleCloudApigeeV1ListCompanyAppsResponse--;
}

buildUnnamed336() {
  var o = new core.List<api.GoogleCloudApigeeV1CustomReport>();
  o.add(buildGoogleCloudApigeeV1CustomReport());
  o.add(buildGoogleCloudApigeeV1CustomReport());
  return o;
}

checkUnnamed336(core.List<api.GoogleCloudApigeeV1CustomReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1CustomReport(o[0]);
  checkGoogleCloudApigeeV1CustomReport(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListCustomReportsResponse = 0;
buildGoogleCloudApigeeV1ListCustomReportsResponse() {
  var o = new api.GoogleCloudApigeeV1ListCustomReportsResponse();
  buildCounterGoogleCloudApigeeV1ListCustomReportsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListCustomReportsResponse < 3) {
    o.qualifier = buildUnnamed336();
  }
  buildCounterGoogleCloudApigeeV1ListCustomReportsResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListCustomReportsResponse(
    api.GoogleCloudApigeeV1ListCustomReportsResponse o) {
  buildCounterGoogleCloudApigeeV1ListCustomReportsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListCustomReportsResponse < 3) {
    checkUnnamed336(o.qualifier);
  }
  buildCounterGoogleCloudApigeeV1ListCustomReportsResponse--;
}

buildUnnamed337() {
  var o = new core.List<api.GoogleCloudApigeeV1Session>();
  o.add(buildGoogleCloudApigeeV1Session());
  o.add(buildGoogleCloudApigeeV1Session());
  return o;
}

checkUnnamed337(core.List<api.GoogleCloudApigeeV1Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Session(o[0]);
  checkGoogleCloudApigeeV1Session(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse = 0;
buildGoogleCloudApigeeV1ListDebugSessionsResponse() {
  var o = new api.GoogleCloudApigeeV1ListDebugSessionsResponse();
  buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse < 3) {
    o.sessions = buildUnnamed337();
  }
  buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListDebugSessionsResponse(
    api.GoogleCloudApigeeV1ListDebugSessionsResponse o) {
  buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse < 3) {
    checkUnnamed337(o.sessions);
  }
  buildCounterGoogleCloudApigeeV1ListDebugSessionsResponse--;
}

buildUnnamed338() {
  var o = new core.List<api.GoogleCloudApigeeV1Deployment>();
  o.add(buildGoogleCloudApigeeV1Deployment());
  o.add(buildGoogleCloudApigeeV1Deployment());
  return o;
}

checkUnnamed338(core.List<api.GoogleCloudApigeeV1Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Deployment(o[0]);
  checkGoogleCloudApigeeV1Deployment(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListDeploymentsResponse = 0;
buildGoogleCloudApigeeV1ListDeploymentsResponse() {
  var o = new api.GoogleCloudApigeeV1ListDeploymentsResponse();
  buildCounterGoogleCloudApigeeV1ListDeploymentsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed338();
  }
  buildCounterGoogleCloudApigeeV1ListDeploymentsResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListDeploymentsResponse(
    api.GoogleCloudApigeeV1ListDeploymentsResponse o) {
  buildCounterGoogleCloudApigeeV1ListDeploymentsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDeploymentsResponse < 3) {
    checkUnnamed338(o.deployments);
  }
  buildCounterGoogleCloudApigeeV1ListDeploymentsResponse--;
}

buildUnnamed339() {
  var o = new core.List<api.GoogleCloudApigeeV1DeveloperApp>();
  o.add(buildGoogleCloudApigeeV1DeveloperApp());
  o.add(buildGoogleCloudApigeeV1DeveloperApp());
  return o;
}

checkUnnamed339(core.List<api.GoogleCloudApigeeV1DeveloperApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1DeveloperApp(o[0]);
  checkGoogleCloudApigeeV1DeveloperApp(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse = 0;
buildGoogleCloudApigeeV1ListDeveloperAppsResponse() {
  var o = new api.GoogleCloudApigeeV1ListDeveloperAppsResponse();
  buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse < 3) {
    o.app = buildUnnamed339();
  }
  buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListDeveloperAppsResponse(
    api.GoogleCloudApigeeV1ListDeveloperAppsResponse o) {
  buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse < 3) {
    checkUnnamed339(o.app);
  }
  buildCounterGoogleCloudApigeeV1ListDeveloperAppsResponse--;
}

buildUnnamed340() {
  var o = new core.List<api.GoogleCloudApigeeV1ResourceFile>();
  o.add(buildGoogleCloudApigeeV1ResourceFile());
  o.add(buildGoogleCloudApigeeV1ResourceFile());
  return o;
}

checkUnnamed340(core.List<api.GoogleCloudApigeeV1ResourceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ResourceFile(o[0]);
  checkGoogleCloudApigeeV1ResourceFile(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse = 0;
buildGoogleCloudApigeeV1ListEnvironmentResourcesResponse() {
  var o = new api.GoogleCloudApigeeV1ListEnvironmentResourcesResponse();
  buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse < 3) {
    o.resourceFile = buildUnnamed340();
  }
  buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListEnvironmentResourcesResponse(
    api.GoogleCloudApigeeV1ListEnvironmentResourcesResponse o) {
  buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse++;
  if (buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse < 3) {
    checkUnnamed340(o.resourceFile);
  }
  buildCounterGoogleCloudApigeeV1ListEnvironmentResourcesResponse--;
}

buildUnnamed341() {
  var o = new core.List<api.GoogleCloudApigeeV1ServiceIssuersMapping>();
  o.add(buildGoogleCloudApigeeV1ServiceIssuersMapping());
  o.add(buildGoogleCloudApigeeV1ServiceIssuersMapping());
  return o;
}

checkUnnamed341(core.List<api.GoogleCloudApigeeV1ServiceIssuersMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ServiceIssuersMapping(o[0]);
  checkGoogleCloudApigeeV1ServiceIssuersMapping(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse = 0;
buildGoogleCloudApigeeV1ListHybridIssuersResponse() {
  var o = new api.GoogleCloudApigeeV1ListHybridIssuersResponse();
  buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse++;
  if (buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse < 3) {
    o.issuers = buildUnnamed341();
  }
  buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListHybridIssuersResponse(
    api.GoogleCloudApigeeV1ListHybridIssuersResponse o) {
  buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse++;
  if (buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse < 3) {
    checkUnnamed341(o.issuers);
  }
  buildCounterGoogleCloudApigeeV1ListHybridIssuersResponse--;
}

buildUnnamed342() {
  var o = new core.List<api.GoogleCloudApigeeV1Developer>();
  o.add(buildGoogleCloudApigeeV1Developer());
  o.add(buildGoogleCloudApigeeV1Developer());
  return o;
}

checkUnnamed342(core.List<api.GoogleCloudApigeeV1Developer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Developer(o[0]);
  checkGoogleCloudApigeeV1Developer(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse = 0;
buildGoogleCloudApigeeV1ListOfDevelopersResponse() {
  var o = new api.GoogleCloudApigeeV1ListOfDevelopersResponse();
  buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse++;
  if (buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse < 3) {
    o.developer = buildUnnamed342();
  }
  buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListOfDevelopersResponse(
    api.GoogleCloudApigeeV1ListOfDevelopersResponse o) {
  buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse++;
  if (buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse < 3) {
    checkUnnamed342(o.developer);
  }
  buildCounterGoogleCloudApigeeV1ListOfDevelopersResponse--;
}

buildUnnamed343() {
  var o = new core.List<api.GoogleCloudApigeeV1OrganizationProjectMapping>();
  o.add(buildGoogleCloudApigeeV1OrganizationProjectMapping());
  o.add(buildGoogleCloudApigeeV1OrganizationProjectMapping());
  return o;
}

checkUnnamed343(
    core.List<api.GoogleCloudApigeeV1OrganizationProjectMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1OrganizationProjectMapping(o[0]);
  checkGoogleCloudApigeeV1OrganizationProjectMapping(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListOrganizationsResponse = 0;
buildGoogleCloudApigeeV1ListOrganizationsResponse() {
  var o = new api.GoogleCloudApigeeV1ListOrganizationsResponse();
  buildCounterGoogleCloudApigeeV1ListOrganizationsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListOrganizationsResponse < 3) {
    o.organizations = buildUnnamed343();
  }
  buildCounterGoogleCloudApigeeV1ListOrganizationsResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListOrganizationsResponse(
    api.GoogleCloudApigeeV1ListOrganizationsResponse o) {
  buildCounterGoogleCloudApigeeV1ListOrganizationsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListOrganizationsResponse < 3) {
    checkUnnamed343(o.organizations);
  }
  buildCounterGoogleCloudApigeeV1ListOrganizationsResponse--;
}

buildUnnamed344() {
  var o = new core.List<api.GoogleCloudApigeeV1SharedFlow>();
  o.add(buildGoogleCloudApigeeV1SharedFlow());
  o.add(buildGoogleCloudApigeeV1SharedFlow());
  return o;
}

checkUnnamed344(core.List<api.GoogleCloudApigeeV1SharedFlow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1SharedFlow(o[0]);
  checkGoogleCloudApigeeV1SharedFlow(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse = 0;
buildGoogleCloudApigeeV1ListSharedFlowsResponse() {
  var o = new api.GoogleCloudApigeeV1ListSharedFlowsResponse();
  buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse < 3) {
    o.sharedFlows = buildUnnamed344();
  }
  buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse--;
  return o;
}

checkGoogleCloudApigeeV1ListSharedFlowsResponse(
    api.GoogleCloudApigeeV1ListSharedFlowsResponse o) {
  buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse++;
  if (buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse < 3) {
    checkUnnamed344(o.sharedFlows);
  }
  buildCounterGoogleCloudApigeeV1ListSharedFlowsResponse--;
}

buildUnnamed345() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed345(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed346() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed346(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Metadata = 0;
buildGoogleCloudApigeeV1Metadata() {
  var o = new api.GoogleCloudApigeeV1Metadata();
  buildCounterGoogleCloudApigeeV1Metadata++;
  if (buildCounterGoogleCloudApigeeV1Metadata < 3) {
    o.errors = buildUnnamed345();
    o.notices = buildUnnamed346();
  }
  buildCounterGoogleCloudApigeeV1Metadata--;
  return o;
}

checkGoogleCloudApigeeV1Metadata(api.GoogleCloudApigeeV1Metadata o) {
  buildCounterGoogleCloudApigeeV1Metadata++;
  if (buildCounterGoogleCloudApigeeV1Metadata < 3) {
    checkUnnamed345(o.errors);
    checkUnnamed346(o.notices);
  }
  buildCounterGoogleCloudApigeeV1Metadata--;
}

buildUnnamed347() {
  var o = new core.List<core.Object>();
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

checkUnnamed347(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o[0]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o[1]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Metric = 0;
buildGoogleCloudApigeeV1Metric() {
  var o = new api.GoogleCloudApigeeV1Metric();
  buildCounterGoogleCloudApigeeV1Metric++;
  if (buildCounterGoogleCloudApigeeV1Metric < 3) {
    o.name = "foo";
    o.values = buildUnnamed347();
  }
  buildCounterGoogleCloudApigeeV1Metric--;
  return o;
}

checkGoogleCloudApigeeV1Metric(api.GoogleCloudApigeeV1Metric o) {
  buildCounterGoogleCloudApigeeV1Metric++;
  if (buildCounterGoogleCloudApigeeV1Metric < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed347(o.values);
  }
  buildCounterGoogleCloudApigeeV1Metric--;
}

core.int buildCounterGoogleCloudApigeeV1OperationMetadata = 0;
buildGoogleCloudApigeeV1OperationMetadata() {
  var o = new api.GoogleCloudApigeeV1OperationMetadata();
  buildCounterGoogleCloudApigeeV1OperationMetadata++;
  if (buildCounterGoogleCloudApigeeV1OperationMetadata < 3) {
    o.operationType = "foo";
    o.state = "foo";
    o.targetResourceName = "foo";
  }
  buildCounterGoogleCloudApigeeV1OperationMetadata--;
  return o;
}

checkGoogleCloudApigeeV1OperationMetadata(
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
buildGoogleCloudApigeeV1OptimizedStats() {
  var o = new api.GoogleCloudApigeeV1OptimizedStats();
  buildCounterGoogleCloudApigeeV1OptimizedStats++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStats < 3) {
    o.Response = buildGoogleCloudApigeeV1OptimizedStatsResponse();
  }
  buildCounterGoogleCloudApigeeV1OptimizedStats--;
  return o;
}

checkGoogleCloudApigeeV1OptimizedStats(
    api.GoogleCloudApigeeV1OptimizedStats o) {
  buildCounterGoogleCloudApigeeV1OptimizedStats++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStats < 3) {
    checkGoogleCloudApigeeV1OptimizedStatsResponse(o.Response);
  }
  buildCounterGoogleCloudApigeeV1OptimizedStats--;
}

buildUnnamed348() {
  var o = new core.List<core.Object>();
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

checkUnnamed348(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o[0]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
  var casted12 = (o[1]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1OptimizedStatsNode = 0;
buildGoogleCloudApigeeV1OptimizedStatsNode() {
  var o = new api.GoogleCloudApigeeV1OptimizedStatsNode();
  buildCounterGoogleCloudApigeeV1OptimizedStatsNode++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStatsNode < 3) {
    o.data = buildUnnamed348();
  }
  buildCounterGoogleCloudApigeeV1OptimizedStatsNode--;
  return o;
}

checkGoogleCloudApigeeV1OptimizedStatsNode(
    api.GoogleCloudApigeeV1OptimizedStatsNode o) {
  buildCounterGoogleCloudApigeeV1OptimizedStatsNode++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStatsNode < 3) {
    checkUnnamed348(o.data);
  }
  buildCounterGoogleCloudApigeeV1OptimizedStatsNode--;
}

buildUnnamed349() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed349(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1OptimizedStatsResponse = 0;
buildGoogleCloudApigeeV1OptimizedStatsResponse() {
  var o = new api.GoogleCloudApigeeV1OptimizedStatsResponse();
  buildCounterGoogleCloudApigeeV1OptimizedStatsResponse++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStatsResponse < 3) {
    o.TimeUnit = buildUnnamed349();
    o.metaData = buildGoogleCloudApigeeV1Metadata();
    o.resultTruncated = true;
    o.stats = buildGoogleCloudApigeeV1OptimizedStatsNode();
  }
  buildCounterGoogleCloudApigeeV1OptimizedStatsResponse--;
  return o;
}

checkGoogleCloudApigeeV1OptimizedStatsResponse(
    api.GoogleCloudApigeeV1OptimizedStatsResponse o) {
  buildCounterGoogleCloudApigeeV1OptimizedStatsResponse++;
  if (buildCounterGoogleCloudApigeeV1OptimizedStatsResponse < 3) {
    checkUnnamed349(o.TimeUnit);
    checkGoogleCloudApigeeV1Metadata(o.metaData);
    unittest.expect(o.resultTruncated, unittest.isTrue);
    checkGoogleCloudApigeeV1OptimizedStatsNode(o.stats);
  }
  buildCounterGoogleCloudApigeeV1OptimizedStatsResponse--;
}

buildUnnamed350() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed350(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed351() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed351(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1Organization = 0;
buildGoogleCloudApigeeV1Organization() {
  var o = new api.GoogleCloudApigeeV1Organization();
  buildCounterGoogleCloudApigeeV1Organization++;
  if (buildCounterGoogleCloudApigeeV1Organization < 3) {
    o.analyticsRegion = "foo";
    o.attributes = buildUnnamed350();
    o.createdAt = "foo";
    o.customerName = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.environments = buildUnnamed351();
    o.lastModifiedAt = "foo";
    o.name = "foo";
    o.properties = buildGoogleCloudApigeeV1Properties();
    o.runtimeType_ = "foo";
    o.subscriptionType = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudApigeeV1Organization--;
  return o;
}

checkGoogleCloudApigeeV1Organization(api.GoogleCloudApigeeV1Organization o) {
  buildCounterGoogleCloudApigeeV1Organization++;
  if (buildCounterGoogleCloudApigeeV1Organization < 3) {
    unittest.expect(o.analyticsRegion, unittest.equals('foo'));
    checkUnnamed350(o.attributes);
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.customerName, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed351(o.environments);
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudApigeeV1Properties(o.properties);
    unittest.expect(o.runtimeType_, unittest.equals('foo'));
    unittest.expect(o.subscriptionType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Organization--;
}

buildUnnamed352() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed352(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1OrganizationProjectMapping = 0;
buildGoogleCloudApigeeV1OrganizationProjectMapping() {
  var o = new api.GoogleCloudApigeeV1OrganizationProjectMapping();
  buildCounterGoogleCloudApigeeV1OrganizationProjectMapping++;
  if (buildCounterGoogleCloudApigeeV1OrganizationProjectMapping < 3) {
    o.organization = "foo";
    o.projectIds = buildUnnamed352();
  }
  buildCounterGoogleCloudApigeeV1OrganizationProjectMapping--;
  return o;
}

checkGoogleCloudApigeeV1OrganizationProjectMapping(
    api.GoogleCloudApigeeV1OrganizationProjectMapping o) {
  buildCounterGoogleCloudApigeeV1OrganizationProjectMapping++;
  if (buildCounterGoogleCloudApigeeV1OrganizationProjectMapping < 3) {
    unittest.expect(o.organization, unittest.equals('foo'));
    checkUnnamed352(o.projectIds);
  }
  buildCounterGoogleCloudApigeeV1OrganizationProjectMapping--;
}

core.int buildCounterGoogleCloudApigeeV1PodStatus = 0;
buildGoogleCloudApigeeV1PodStatus() {
  var o = new api.GoogleCloudApigeeV1PodStatus();
  buildCounterGoogleCloudApigeeV1PodStatus++;
  if (buildCounterGoogleCloudApigeeV1PodStatus < 3) {
    o.appVersion = "foo";
    o.deploymentStatus = "foo";
    o.deploymentStatusTime = "foo";
    o.deploymentTime = "foo";
    o.podName = "foo";
    o.podStatus = "foo";
    o.podStatusTime = "foo";
    o.statusCode = "foo";
    o.statusCodeDetails = "foo";
  }
  buildCounterGoogleCloudApigeeV1PodStatus--;
  return o;
}

checkGoogleCloudApigeeV1PodStatus(api.GoogleCloudApigeeV1PodStatus o) {
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

buildUnnamed353() {
  var o = new core.List<api.GoogleCloudApigeeV1Result>();
  o.add(buildGoogleCloudApigeeV1Result());
  o.add(buildGoogleCloudApigeeV1Result());
  return o;
}

checkUnnamed353(core.List<api.GoogleCloudApigeeV1Result> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Result(o[0]);
  checkGoogleCloudApigeeV1Result(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1Point = 0;
buildGoogleCloudApigeeV1Point() {
  var o = new api.GoogleCloudApigeeV1Point();
  buildCounterGoogleCloudApigeeV1Point++;
  if (buildCounterGoogleCloudApigeeV1Point < 3) {
    o.id = "foo";
    o.results = buildUnnamed353();
  }
  buildCounterGoogleCloudApigeeV1Point--;
  return o;
}

checkGoogleCloudApigeeV1Point(api.GoogleCloudApigeeV1Point o) {
  buildCounterGoogleCloudApigeeV1Point++;
  if (buildCounterGoogleCloudApigeeV1Point < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed353(o.results);
  }
  buildCounterGoogleCloudApigeeV1Point--;
}

buildUnnamed354() {
  var o = new core.List<api.GoogleCloudApigeeV1Property>();
  o.add(buildGoogleCloudApigeeV1Property());
  o.add(buildGoogleCloudApigeeV1Property());
  return o;
}

checkUnnamed354(core.List<api.GoogleCloudApigeeV1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Property(o[0]);
  checkGoogleCloudApigeeV1Property(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1Properties = 0;
buildGoogleCloudApigeeV1Properties() {
  var o = new api.GoogleCloudApigeeV1Properties();
  buildCounterGoogleCloudApigeeV1Properties++;
  if (buildCounterGoogleCloudApigeeV1Properties < 3) {
    o.property = buildUnnamed354();
  }
  buildCounterGoogleCloudApigeeV1Properties--;
  return o;
}

checkGoogleCloudApigeeV1Properties(api.GoogleCloudApigeeV1Properties o) {
  buildCounterGoogleCloudApigeeV1Properties++;
  if (buildCounterGoogleCloudApigeeV1Properties < 3) {
    checkUnnamed354(o.property);
  }
  buildCounterGoogleCloudApigeeV1Properties--;
}

core.int buildCounterGoogleCloudApigeeV1Property = 0;
buildGoogleCloudApigeeV1Property() {
  var o = new api.GoogleCloudApigeeV1Property();
  buildCounterGoogleCloudApigeeV1Property++;
  if (buildCounterGoogleCloudApigeeV1Property < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudApigeeV1Property--;
  return o;
}

checkGoogleCloudApigeeV1Property(api.GoogleCloudApigeeV1Property o) {
  buildCounterGoogleCloudApigeeV1Property++;
  if (buildCounterGoogleCloudApigeeV1Property < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Property--;
}

buildUnnamed355() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed355(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed356() {
  var o = new core.List<api.GoogleCloudApigeeV1QueryMetric>();
  o.add(buildGoogleCloudApigeeV1QueryMetric());
  o.add(buildGoogleCloudApigeeV1QueryMetric());
  return o;
}

checkUnnamed356(core.List<api.GoogleCloudApigeeV1QueryMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1QueryMetric(o[0]);
  checkGoogleCloudApigeeV1QueryMetric(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1Query = 0;
buildGoogleCloudApigeeV1Query() {
  var o = new api.GoogleCloudApigeeV1Query();
  buildCounterGoogleCloudApigeeV1Query++;
  if (buildCounterGoogleCloudApigeeV1Query < 3) {
    o.csvDelimiter = "foo";
    o.dimensions = buildUnnamed355();
    o.filter = "foo";
    o.groupByTimeUnit = "foo";
    o.limit = 42;
    o.metrics = buildUnnamed356();
    o.name = "foo";
    o.outputFormat = "foo";
    o.reportDefinitionId = "foo";
    o.timeRange = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudApigeeV1Query--;
  return o;
}

checkGoogleCloudApigeeV1Query(api.GoogleCloudApigeeV1Query o) {
  buildCounterGoogleCloudApigeeV1Query++;
  if (buildCounterGoogleCloudApigeeV1Query < 3) {
    unittest.expect(o.csvDelimiter, unittest.equals('foo'));
    checkUnnamed355(o.dimensions);
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.groupByTimeUnit, unittest.equals('foo'));
    unittest.expect(o.limit, unittest.equals(42));
    checkUnnamed356(o.metrics);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.outputFormat, unittest.equals('foo'));
    unittest.expect(o.reportDefinitionId, unittest.equals('foo'));
    var casted13 = (o.timeRange) as core.Map;
    unittest.expect(casted13, unittest.hasLength(3));
    unittest.expect(casted13["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted13["bool"], unittest.equals(true));
    unittest.expect(casted13["string"], unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Query--;
}

buildUnnamed357() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed357(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed358() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed358(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1QueryMetadata = 0;
buildGoogleCloudApigeeV1QueryMetadata() {
  var o = new api.GoogleCloudApigeeV1QueryMetadata();
  buildCounterGoogleCloudApigeeV1QueryMetadata++;
  if (buildCounterGoogleCloudApigeeV1QueryMetadata < 3) {
    o.dimensions = buildUnnamed357();
    o.endTimestamp = "foo";
    o.metrics = buildUnnamed358();
    o.outputFormat = "foo";
    o.startTimestamp = "foo";
    o.timeUnit = "foo";
  }
  buildCounterGoogleCloudApigeeV1QueryMetadata--;
  return o;
}

checkGoogleCloudApigeeV1QueryMetadata(api.GoogleCloudApigeeV1QueryMetadata o) {
  buildCounterGoogleCloudApigeeV1QueryMetadata++;
  if (buildCounterGoogleCloudApigeeV1QueryMetadata < 3) {
    checkUnnamed357(o.dimensions);
    unittest.expect(o.endTimestamp, unittest.equals('foo'));
    checkUnnamed358(o.metrics);
    unittest.expect(o.outputFormat, unittest.equals('foo'));
    unittest.expect(o.startTimestamp, unittest.equals('foo'));
    unittest.expect(o.timeUnit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1QueryMetadata--;
}

core.int buildCounterGoogleCloudApigeeV1QueryMetric = 0;
buildGoogleCloudApigeeV1QueryMetric() {
  var o = new api.GoogleCloudApigeeV1QueryMetric();
  buildCounterGoogleCloudApigeeV1QueryMetric++;
  if (buildCounterGoogleCloudApigeeV1QueryMetric < 3) {
    o.alias = "foo";
    o.function = "foo";
    o.name = "foo";
    o.operator = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudApigeeV1QueryMetric--;
  return o;
}

checkGoogleCloudApigeeV1QueryMetric(api.GoogleCloudApigeeV1QueryMetric o) {
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

core.int buildCounterGoogleCloudApigeeV1Reference = 0;
buildGoogleCloudApigeeV1Reference() {
  var o = new api.GoogleCloudApigeeV1Reference();
  buildCounterGoogleCloudApigeeV1Reference++;
  if (buildCounterGoogleCloudApigeeV1Reference < 3) {
    o.description = "foo";
    o.name = "foo";
    o.refers = "foo";
    o.resourceType = "foo";
  }
  buildCounterGoogleCloudApigeeV1Reference--;
  return o;
}

checkGoogleCloudApigeeV1Reference(api.GoogleCloudApigeeV1Reference o) {
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
buildGoogleCloudApigeeV1ReferenceConfig() {
  var o = new api.GoogleCloudApigeeV1ReferenceConfig();
  buildCounterGoogleCloudApigeeV1ReferenceConfig++;
  if (buildCounterGoogleCloudApigeeV1ReferenceConfig < 3) {
    o.name = "foo";
    o.resourceName = "foo";
  }
  buildCounterGoogleCloudApigeeV1ReferenceConfig--;
  return o;
}

checkGoogleCloudApigeeV1ReferenceConfig(
    api.GoogleCloudApigeeV1ReferenceConfig o) {
  buildCounterGoogleCloudApigeeV1ReferenceConfig++;
  if (buildCounterGoogleCloudApigeeV1ReferenceConfig < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ReferenceConfig--;
}

buildUnnamed359() {
  var o = new core.List<api.GoogleCloudApigeeV1Attribute>();
  o.add(buildGoogleCloudApigeeV1Attribute());
  o.add(buildGoogleCloudApigeeV1Attribute());
  return o;
}

checkUnnamed359(core.List<api.GoogleCloudApigeeV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Attribute(o[0]);
  checkGoogleCloudApigeeV1Attribute(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ReportProperty = 0;
buildGoogleCloudApigeeV1ReportProperty() {
  var o = new api.GoogleCloudApigeeV1ReportProperty();
  buildCounterGoogleCloudApigeeV1ReportProperty++;
  if (buildCounterGoogleCloudApigeeV1ReportProperty < 3) {
    o.property = "foo";
    o.value = buildUnnamed359();
  }
  buildCounterGoogleCloudApigeeV1ReportProperty--;
  return o;
}

checkGoogleCloudApigeeV1ReportProperty(
    api.GoogleCloudApigeeV1ReportProperty o) {
  buildCounterGoogleCloudApigeeV1ReportProperty++;
  if (buildCounterGoogleCloudApigeeV1ReportProperty < 3) {
    unittest.expect(o.property, unittest.equals('foo'));
    checkUnnamed359(o.value);
  }
  buildCounterGoogleCloudApigeeV1ReportProperty--;
}

core.int buildCounterGoogleCloudApigeeV1ResourceConfig = 0;
buildGoogleCloudApigeeV1ResourceConfig() {
  var o = new api.GoogleCloudApigeeV1ResourceConfig();
  buildCounterGoogleCloudApigeeV1ResourceConfig++;
  if (buildCounterGoogleCloudApigeeV1ResourceConfig < 3) {
    o.location = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudApigeeV1ResourceConfig--;
  return o;
}

checkGoogleCloudApigeeV1ResourceConfig(
    api.GoogleCloudApigeeV1ResourceConfig o) {
  buildCounterGoogleCloudApigeeV1ResourceConfig++;
  if (buildCounterGoogleCloudApigeeV1ResourceConfig < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ResourceConfig--;
}

core.int buildCounterGoogleCloudApigeeV1ResourceFile = 0;
buildGoogleCloudApigeeV1ResourceFile() {
  var o = new api.GoogleCloudApigeeV1ResourceFile();
  buildCounterGoogleCloudApigeeV1ResourceFile++;
  if (buildCounterGoogleCloudApigeeV1ResourceFile < 3) {
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudApigeeV1ResourceFile--;
  return o;
}

checkGoogleCloudApigeeV1ResourceFile(api.GoogleCloudApigeeV1ResourceFile o) {
  buildCounterGoogleCloudApigeeV1ResourceFile++;
  if (buildCounterGoogleCloudApigeeV1ResourceFile < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ResourceFile--;
}

buildUnnamed360() {
  var o = new core.List<api.GoogleCloudApigeeV1ResourceFile>();
  o.add(buildGoogleCloudApigeeV1ResourceFile());
  o.add(buildGoogleCloudApigeeV1ResourceFile());
  return o;
}

checkUnnamed360(core.List<api.GoogleCloudApigeeV1ResourceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1ResourceFile(o[0]);
  checkGoogleCloudApigeeV1ResourceFile(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1ResourceFiles = 0;
buildGoogleCloudApigeeV1ResourceFiles() {
  var o = new api.GoogleCloudApigeeV1ResourceFiles();
  buildCounterGoogleCloudApigeeV1ResourceFiles++;
  if (buildCounterGoogleCloudApigeeV1ResourceFiles < 3) {
    o.resourceFile = buildUnnamed360();
  }
  buildCounterGoogleCloudApigeeV1ResourceFiles--;
  return o;
}

checkGoogleCloudApigeeV1ResourceFiles(api.GoogleCloudApigeeV1ResourceFiles o) {
  buildCounterGoogleCloudApigeeV1ResourceFiles++;
  if (buildCounterGoogleCloudApigeeV1ResourceFiles < 3) {
    checkUnnamed360(o.resourceFile);
  }
  buildCounterGoogleCloudApigeeV1ResourceFiles--;
}

buildUnnamed361() {
  var o = new core.List<api.GoogleCloudApigeeV1Access>();
  o.add(buildGoogleCloudApigeeV1Access());
  o.add(buildGoogleCloudApigeeV1Access());
  return o;
}

checkUnnamed361(core.List<api.GoogleCloudApigeeV1Access> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Access(o[0]);
  checkGoogleCloudApigeeV1Access(o[1]);
}

buildUnnamed362() {
  var o = new core.List<api.GoogleCloudApigeeV1Property>();
  o.add(buildGoogleCloudApigeeV1Property());
  o.add(buildGoogleCloudApigeeV1Property());
  return o;
}

checkUnnamed362(core.List<api.GoogleCloudApigeeV1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Property(o[0]);
  checkGoogleCloudApigeeV1Property(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1Result = 0;
buildGoogleCloudApigeeV1Result() {
  var o = new api.GoogleCloudApigeeV1Result();
  buildCounterGoogleCloudApigeeV1Result++;
  if (buildCounterGoogleCloudApigeeV1Result < 3) {
    o.ActionResult = "foo";
    o.accessList = buildUnnamed361();
    o.content = "foo";
    o.headers = buildUnnamed362();
    o.properties = buildGoogleCloudApigeeV1Properties();
    o.reasonPhrase = "foo";
    o.statusCode = "foo";
    o.timestamp = "foo";
    o.uRI = "foo";
    o.verb = "foo";
  }
  buildCounterGoogleCloudApigeeV1Result--;
  return o;
}

checkGoogleCloudApigeeV1Result(api.GoogleCloudApigeeV1Result o) {
  buildCounterGoogleCloudApigeeV1Result++;
  if (buildCounterGoogleCloudApigeeV1Result < 3) {
    unittest.expect(o.ActionResult, unittest.equals('foo'));
    checkUnnamed361(o.accessList);
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed362(o.headers);
    checkGoogleCloudApigeeV1Properties(o.properties);
    unittest.expect(o.reasonPhrase, unittest.equals('foo'));
    unittest.expect(o.statusCode, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.uRI, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Result--;
}

buildUnnamed363() {
  var o = new core.List<api.GoogleCloudApigeeV1SchemaSchemaElement>();
  o.add(buildGoogleCloudApigeeV1SchemaSchemaElement());
  o.add(buildGoogleCloudApigeeV1SchemaSchemaElement());
  return o;
}

checkUnnamed363(core.List<api.GoogleCloudApigeeV1SchemaSchemaElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1SchemaSchemaElement(o[0]);
  checkGoogleCloudApigeeV1SchemaSchemaElement(o[1]);
}

buildUnnamed364() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed364(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed365() {
  var o = new core.List<api.GoogleCloudApigeeV1SchemaSchemaElement>();
  o.add(buildGoogleCloudApigeeV1SchemaSchemaElement());
  o.add(buildGoogleCloudApigeeV1SchemaSchemaElement());
  return o;
}

checkUnnamed365(core.List<api.GoogleCloudApigeeV1SchemaSchemaElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1SchemaSchemaElement(o[0]);
  checkGoogleCloudApigeeV1SchemaSchemaElement(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1Schema = 0;
buildGoogleCloudApigeeV1Schema() {
  var o = new api.GoogleCloudApigeeV1Schema();
  buildCounterGoogleCloudApigeeV1Schema++;
  if (buildCounterGoogleCloudApigeeV1Schema < 3) {
    o.dimensions = buildUnnamed363();
    o.meta = buildUnnamed364();
    o.metrics = buildUnnamed365();
  }
  buildCounterGoogleCloudApigeeV1Schema--;
  return o;
}

checkGoogleCloudApigeeV1Schema(api.GoogleCloudApigeeV1Schema o) {
  buildCounterGoogleCloudApigeeV1Schema++;
  if (buildCounterGoogleCloudApigeeV1Schema < 3) {
    checkUnnamed363(o.dimensions);
    checkUnnamed364(o.meta);
    checkUnnamed365(o.metrics);
  }
  buildCounterGoogleCloudApigeeV1Schema--;
}

core.int buildCounterGoogleCloudApigeeV1SchemaSchemaElement = 0;
buildGoogleCloudApigeeV1SchemaSchemaElement() {
  var o = new api.GoogleCloudApigeeV1SchemaSchemaElement();
  buildCounterGoogleCloudApigeeV1SchemaSchemaElement++;
  if (buildCounterGoogleCloudApigeeV1SchemaSchemaElement < 3) {
    o.name = "foo";
    o.properties = buildGoogleCloudApigeeV1SchemaSchemaProperty();
  }
  buildCounterGoogleCloudApigeeV1SchemaSchemaElement--;
  return o;
}

checkGoogleCloudApigeeV1SchemaSchemaElement(
    api.GoogleCloudApigeeV1SchemaSchemaElement o) {
  buildCounterGoogleCloudApigeeV1SchemaSchemaElement++;
  if (buildCounterGoogleCloudApigeeV1SchemaSchemaElement < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudApigeeV1SchemaSchemaProperty(o.properties);
  }
  buildCounterGoogleCloudApigeeV1SchemaSchemaElement--;
}

core.int buildCounterGoogleCloudApigeeV1SchemaSchemaProperty = 0;
buildGoogleCloudApigeeV1SchemaSchemaProperty() {
  var o = new api.GoogleCloudApigeeV1SchemaSchemaProperty();
  buildCounterGoogleCloudApigeeV1SchemaSchemaProperty++;
  if (buildCounterGoogleCloudApigeeV1SchemaSchemaProperty < 3) {
    o.createTime = "foo";
    o.custom = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudApigeeV1SchemaSchemaProperty--;
  return o;
}

checkGoogleCloudApigeeV1SchemaSchemaProperty(
    api.GoogleCloudApigeeV1SchemaSchemaProperty o) {
  buildCounterGoogleCloudApigeeV1SchemaSchemaProperty++;
  if (buildCounterGoogleCloudApigeeV1SchemaSchemaProperty < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.custom, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1SchemaSchemaProperty--;
}

buildUnnamed366() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed366(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1ServiceIssuersMapping = 0;
buildGoogleCloudApigeeV1ServiceIssuersMapping() {
  var o = new api.GoogleCloudApigeeV1ServiceIssuersMapping();
  buildCounterGoogleCloudApigeeV1ServiceIssuersMapping++;
  if (buildCounterGoogleCloudApigeeV1ServiceIssuersMapping < 3) {
    o.emailIds = buildUnnamed366();
    o.service = "foo";
  }
  buildCounterGoogleCloudApigeeV1ServiceIssuersMapping--;
  return o;
}

checkGoogleCloudApigeeV1ServiceIssuersMapping(
    api.GoogleCloudApigeeV1ServiceIssuersMapping o) {
  buildCounterGoogleCloudApigeeV1ServiceIssuersMapping++;
  if (buildCounterGoogleCloudApigeeV1ServiceIssuersMapping < 3) {
    checkUnnamed366(o.emailIds);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1ServiceIssuersMapping--;
}

core.int buildCounterGoogleCloudApigeeV1Session = 0;
buildGoogleCloudApigeeV1Session() {
  var o = new api.GoogleCloudApigeeV1Session();
  buildCounterGoogleCloudApigeeV1Session++;
  if (buildCounterGoogleCloudApigeeV1Session < 3) {
    o.id = "foo";
    o.timestampMs = "foo";
  }
  buildCounterGoogleCloudApigeeV1Session--;
  return o;
}

checkGoogleCloudApigeeV1Session(api.GoogleCloudApigeeV1Session o) {
  buildCounterGoogleCloudApigeeV1Session++;
  if (buildCounterGoogleCloudApigeeV1Session < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.timestampMs, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Session--;
}

buildUnnamed367() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed367(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1SharedFlow = 0;
buildGoogleCloudApigeeV1SharedFlow() {
  var o = new api.GoogleCloudApigeeV1SharedFlow();
  buildCounterGoogleCloudApigeeV1SharedFlow++;
  if (buildCounterGoogleCloudApigeeV1SharedFlow < 3) {
    o.latestRevisionId = "foo";
    o.metaData = buildGoogleCloudApigeeV1EntityMetadata();
    o.name = "foo";
    o.revision = buildUnnamed367();
  }
  buildCounterGoogleCloudApigeeV1SharedFlow--;
  return o;
}

checkGoogleCloudApigeeV1SharedFlow(api.GoogleCloudApigeeV1SharedFlow o) {
  buildCounterGoogleCloudApigeeV1SharedFlow++;
  if (buildCounterGoogleCloudApigeeV1SharedFlow < 3) {
    unittest.expect(o.latestRevisionId, unittest.equals('foo'));
    checkGoogleCloudApigeeV1EntityMetadata(o.metaData);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed367(o.revision);
  }
  buildCounterGoogleCloudApigeeV1SharedFlow--;
}

buildUnnamed368() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed368(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed369() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed369(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed370() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed370(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed371() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed371(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1SharedFlowRevision = 0;
buildGoogleCloudApigeeV1SharedFlowRevision() {
  var o = new api.GoogleCloudApigeeV1SharedFlowRevision();
  buildCounterGoogleCloudApigeeV1SharedFlowRevision++;
  if (buildCounterGoogleCloudApigeeV1SharedFlowRevision < 3) {
    o.configurationVersion = buildGoogleCloudApigeeV1ConfigVersion();
    o.contextInfo = "foo";
    o.createdAt = "foo";
    o.displayName = "foo";
    o.entityMetaDataAsProperties = buildUnnamed368();
    o.lastModifiedAt = "foo";
    o.name = "foo";
    o.policies = buildUnnamed369();
    o.resourceFiles = buildGoogleCloudApigeeV1ResourceFiles();
    o.resources = buildUnnamed370();
    o.revision = "foo";
    o.sharedFlows = buildUnnamed371();
    o.type = "foo";
  }
  buildCounterGoogleCloudApigeeV1SharedFlowRevision--;
  return o;
}

checkGoogleCloudApigeeV1SharedFlowRevision(
    api.GoogleCloudApigeeV1SharedFlowRevision o) {
  buildCounterGoogleCloudApigeeV1SharedFlowRevision++;
  if (buildCounterGoogleCloudApigeeV1SharedFlowRevision < 3) {
    checkGoogleCloudApigeeV1ConfigVersion(o.configurationVersion);
    unittest.expect(o.contextInfo, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed368(o.entityMetaDataAsProperties);
    unittest.expect(o.lastModifiedAt, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed369(o.policies);
    checkGoogleCloudApigeeV1ResourceFiles(o.resourceFiles);
    checkUnnamed370(o.resources);
    unittest.expect(o.revision, unittest.equals('foo'));
    checkUnnamed371(o.sharedFlows);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1SharedFlowRevision--;
}

buildUnnamed372() {
  var o = new core.List<api.GoogleCloudApigeeV1StatsEnvironmentStats>();
  o.add(buildGoogleCloudApigeeV1StatsEnvironmentStats());
  o.add(buildGoogleCloudApigeeV1StatsEnvironmentStats());
  return o;
}

checkUnnamed372(core.List<api.GoogleCloudApigeeV1StatsEnvironmentStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1StatsEnvironmentStats(o[0]);
  checkGoogleCloudApigeeV1StatsEnvironmentStats(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1Stats = 0;
buildGoogleCloudApigeeV1Stats() {
  var o = new api.GoogleCloudApigeeV1Stats();
  buildCounterGoogleCloudApigeeV1Stats++;
  if (buildCounterGoogleCloudApigeeV1Stats < 3) {
    o.environments = buildUnnamed372();
    o.metaData = buildGoogleCloudApigeeV1Metadata();
  }
  buildCounterGoogleCloudApigeeV1Stats--;
  return o;
}

checkGoogleCloudApigeeV1Stats(api.GoogleCloudApigeeV1Stats o) {
  buildCounterGoogleCloudApigeeV1Stats++;
  if (buildCounterGoogleCloudApigeeV1Stats < 3) {
    checkUnnamed372(o.environments);
    checkGoogleCloudApigeeV1Metadata(o.metaData);
  }
  buildCounterGoogleCloudApigeeV1Stats--;
}

buildUnnamed373() {
  var o = new core.List<api.GoogleCloudApigeeV1DimensionMetric>();
  o.add(buildGoogleCloudApigeeV1DimensionMetric());
  o.add(buildGoogleCloudApigeeV1DimensionMetric());
  return o;
}

checkUnnamed373(core.List<api.GoogleCloudApigeeV1DimensionMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1DimensionMetric(o[0]);
  checkGoogleCloudApigeeV1DimensionMetric(o[1]);
}

buildUnnamed374() {
  var o = new core.List<api.GoogleCloudApigeeV1Metric>();
  o.add(buildGoogleCloudApigeeV1Metric());
  o.add(buildGoogleCloudApigeeV1Metric());
  return o;
}

checkUnnamed374(core.List<api.GoogleCloudApigeeV1Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApigeeV1Metric(o[0]);
  checkGoogleCloudApigeeV1Metric(o[1]);
}

core.int buildCounterGoogleCloudApigeeV1StatsEnvironmentStats = 0;
buildGoogleCloudApigeeV1StatsEnvironmentStats() {
  var o = new api.GoogleCloudApigeeV1StatsEnvironmentStats();
  buildCounterGoogleCloudApigeeV1StatsEnvironmentStats++;
  if (buildCounterGoogleCloudApigeeV1StatsEnvironmentStats < 3) {
    o.dimensions = buildUnnamed373();
    o.metrics = buildUnnamed374();
    o.name = "foo";
  }
  buildCounterGoogleCloudApigeeV1StatsEnvironmentStats--;
  return o;
}

checkGoogleCloudApigeeV1StatsEnvironmentStats(
    api.GoogleCloudApigeeV1StatsEnvironmentStats o) {
  buildCounterGoogleCloudApigeeV1StatsEnvironmentStats++;
  if (buildCounterGoogleCloudApigeeV1StatsEnvironmentStats < 3) {
    checkUnnamed373(o.dimensions);
    checkUnnamed374(o.metrics);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1StatsEnvironmentStats--;
}

core.int buildCounterGoogleCloudApigeeV1Subscription = 0;
buildGoogleCloudApigeeV1Subscription() {
  var o = new api.GoogleCloudApigeeV1Subscription();
  buildCounterGoogleCloudApigeeV1Subscription++;
  if (buildCounterGoogleCloudApigeeV1Subscription < 3) {
    o.name = "foo";
  }
  buildCounterGoogleCloudApigeeV1Subscription--;
  return o;
}

checkGoogleCloudApigeeV1Subscription(api.GoogleCloudApigeeV1Subscription o) {
  buildCounterGoogleCloudApigeeV1Subscription++;
  if (buildCounterGoogleCloudApigeeV1Subscription < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1Subscription--;
}

buildUnnamed375() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed375(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1SyncAuthorization = 0;
buildGoogleCloudApigeeV1SyncAuthorization() {
  var o = new api.GoogleCloudApigeeV1SyncAuthorization();
  buildCounterGoogleCloudApigeeV1SyncAuthorization++;
  if (buildCounterGoogleCloudApigeeV1SyncAuthorization < 3) {
    o.etag = "foo";
    o.identities = buildUnnamed375();
  }
  buildCounterGoogleCloudApigeeV1SyncAuthorization--;
  return o;
}

checkGoogleCloudApigeeV1SyncAuthorization(
    api.GoogleCloudApigeeV1SyncAuthorization o) {
  buildCounterGoogleCloudApigeeV1SyncAuthorization++;
  if (buildCounterGoogleCloudApigeeV1SyncAuthorization < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed375(o.identities);
  }
  buildCounterGoogleCloudApigeeV1SyncAuthorization--;
}

core.int buildCounterGoogleCloudApigeeV1TargetServer = 0;
buildGoogleCloudApigeeV1TargetServer() {
  var o = new api.GoogleCloudApigeeV1TargetServer();
  buildCounterGoogleCloudApigeeV1TargetServer++;
  if (buildCounterGoogleCloudApigeeV1TargetServer < 3) {
    o.description = "foo";
    o.host = "foo";
    o.isEnabled = true;
    o.name = "foo";
    o.port = 42;
    o.sSLInfo = buildGoogleCloudApigeeV1TlsInfo();
  }
  buildCounterGoogleCloudApigeeV1TargetServer--;
  return o;
}

checkGoogleCloudApigeeV1TargetServer(api.GoogleCloudApigeeV1TargetServer o) {
  buildCounterGoogleCloudApigeeV1TargetServer++;
  if (buildCounterGoogleCloudApigeeV1TargetServer < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.isEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    checkGoogleCloudApigeeV1TlsInfo(o.sSLInfo);
  }
  buildCounterGoogleCloudApigeeV1TargetServer--;
}

core.int buildCounterGoogleCloudApigeeV1TargetServerConfig = 0;
buildGoogleCloudApigeeV1TargetServerConfig() {
  var o = new api.GoogleCloudApigeeV1TargetServerConfig();
  buildCounterGoogleCloudApigeeV1TargetServerConfig++;
  if (buildCounterGoogleCloudApigeeV1TargetServerConfig < 3) {
    o.host = "foo";
    o.name = "foo";
    o.port = 42;
    o.tlsInfo = buildGoogleCloudApigeeV1TlsInfoConfig();
  }
  buildCounterGoogleCloudApigeeV1TargetServerConfig--;
  return o;
}

checkGoogleCloudApigeeV1TargetServerConfig(
    api.GoogleCloudApigeeV1TargetServerConfig o) {
  buildCounterGoogleCloudApigeeV1TargetServerConfig++;
  if (buildCounterGoogleCloudApigeeV1TargetServerConfig < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    checkGoogleCloudApigeeV1TlsInfoConfig(o.tlsInfo);
  }
  buildCounterGoogleCloudApigeeV1TargetServerConfig--;
}

buildUnnamed376() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed376(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed377() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed377(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1TlsInfo = 0;
buildGoogleCloudApigeeV1TlsInfo() {
  var o = new api.GoogleCloudApigeeV1TlsInfo();
  buildCounterGoogleCloudApigeeV1TlsInfo++;
  if (buildCounterGoogleCloudApigeeV1TlsInfo < 3) {
    o.ciphers = buildUnnamed376();
    o.clientAuthEnabled = true;
    o.commonName = buildGoogleCloudApigeeV1TlsInfoCommonName();
    o.enabled = true;
    o.ignoreValidationErrors = true;
    o.keyAlias = "foo";
    o.keyStore = "foo";
    o.protocols = buildUnnamed377();
    o.trustStore = "foo";
  }
  buildCounterGoogleCloudApigeeV1TlsInfo--;
  return o;
}

checkGoogleCloudApigeeV1TlsInfo(api.GoogleCloudApigeeV1TlsInfo o) {
  buildCounterGoogleCloudApigeeV1TlsInfo++;
  if (buildCounterGoogleCloudApigeeV1TlsInfo < 3) {
    checkUnnamed376(o.ciphers);
    unittest.expect(o.clientAuthEnabled, unittest.isTrue);
    checkGoogleCloudApigeeV1TlsInfoCommonName(o.commonName);
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.ignoreValidationErrors, unittest.isTrue);
    unittest.expect(o.keyAlias, unittest.equals('foo'));
    unittest.expect(o.keyStore, unittest.equals('foo'));
    checkUnnamed377(o.protocols);
    unittest.expect(o.trustStore, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1TlsInfo--;
}

core.int buildCounterGoogleCloudApigeeV1TlsInfoCommonName = 0;
buildGoogleCloudApigeeV1TlsInfoCommonName() {
  var o = new api.GoogleCloudApigeeV1TlsInfoCommonName();
  buildCounterGoogleCloudApigeeV1TlsInfoCommonName++;
  if (buildCounterGoogleCloudApigeeV1TlsInfoCommonName < 3) {
    o.value = "foo";
    o.wildcardMatch = true;
  }
  buildCounterGoogleCloudApigeeV1TlsInfoCommonName--;
  return o;
}

checkGoogleCloudApigeeV1TlsInfoCommonName(
    api.GoogleCloudApigeeV1TlsInfoCommonName o) {
  buildCounterGoogleCloudApigeeV1TlsInfoCommonName++;
  if (buildCounterGoogleCloudApigeeV1TlsInfoCommonName < 3) {
    unittest.expect(o.value, unittest.equals('foo'));
    unittest.expect(o.wildcardMatch, unittest.isTrue);
  }
  buildCounterGoogleCloudApigeeV1TlsInfoCommonName--;
}

buildUnnamed378() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed378(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed379() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed379(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApigeeV1TlsInfoConfig = 0;
buildGoogleCloudApigeeV1TlsInfoConfig() {
  var o = new api.GoogleCloudApigeeV1TlsInfoConfig();
  buildCounterGoogleCloudApigeeV1TlsInfoConfig++;
  if (buildCounterGoogleCloudApigeeV1TlsInfoConfig < 3) {
    o.ciphers = buildUnnamed378();
    o.clientAuthEnabled = true;
    o.commonName = buildGoogleCloudApigeeV1CommonNameConfig();
    o.enabled = true;
    o.ignoreValidationErrors = true;
    o.keyAlias = "foo";
    o.keyAliasReference = buildGoogleCloudApigeeV1KeyAliasReference();
    o.protocols = buildUnnamed379();
    o.trustStore = "foo";
  }
  buildCounterGoogleCloudApigeeV1TlsInfoConfig--;
  return o;
}

checkGoogleCloudApigeeV1TlsInfoConfig(api.GoogleCloudApigeeV1TlsInfoConfig o) {
  buildCounterGoogleCloudApigeeV1TlsInfoConfig++;
  if (buildCounterGoogleCloudApigeeV1TlsInfoConfig < 3) {
    checkUnnamed378(o.ciphers);
    unittest.expect(o.clientAuthEnabled, unittest.isTrue);
    checkGoogleCloudApigeeV1CommonNameConfig(o.commonName);
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.ignoreValidationErrors, unittest.isTrue);
    unittest.expect(o.keyAlias, unittest.equals('foo'));
    checkGoogleCloudApigeeV1KeyAliasReference(o.keyAliasReference);
    checkUnnamed379(o.protocols);
    unittest.expect(o.trustStore, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApigeeV1TlsInfoConfig--;
}

buildUnnamed380() {
  var o = new core.List<api.GoogleIamV1AuditLogConfig>();
  o.add(buildGoogleIamV1AuditLogConfig());
  o.add(buildGoogleIamV1AuditLogConfig());
  return o;
}

checkUnnamed380(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
buildGoogleIamV1AuditConfig() {
  var o = new api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed380();
    o.service = "foo";
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed380(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

buildUnnamed381() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed381(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
buildGoogleIamV1AuditLogConfig() {
  var o = new api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed381();
    o.logType = "foo";
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed381(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

buildUnnamed382() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed382(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
buildGoogleIamV1Binding() {
  var o = new api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed382();
    o.role = "foo";
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition);
    checkUnnamed382(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

buildUnnamed383() {
  var o = new core.List<api.GoogleIamV1AuditConfig>();
  o.add(buildGoogleIamV1AuditConfig());
  o.add(buildGoogleIamV1AuditConfig());
  return o;
}

checkUnnamed383(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

buildUnnamed384() {
  var o = new core.List<api.GoogleIamV1Binding>();
  o.add(buildGoogleIamV1Binding());
  o.add(buildGoogleIamV1Binding());
  return o;
}

checkUnnamed384(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
buildGoogleIamV1Policy() {
  var o = new api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed383();
    o.bindings = buildUnnamed384();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed383(o.auditConfigs);
    checkUnnamed384(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleIamV1SetIamPolicyRequest = 0;
buildGoogleIamV1SetIamPolicyRequest() {
  var o = new api.GoogleIamV1SetIamPolicyRequest();
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.updateMask = "foo";
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
  return o;
}

checkGoogleIamV1SetIamPolicyRequest(api.GoogleIamV1SetIamPolicyRequest o) {
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    checkGoogleIamV1Policy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
}

buildUnnamed385() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed385(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
buildGoogleIamV1TestIamPermissionsRequest() {
  var o = new api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed385();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

checkGoogleIamV1TestIamPermissionsRequest(
    api.GoogleIamV1TestIamPermissionsRequest o) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed385(o.permissions);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

buildUnnamed386() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed386(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
buildGoogleIamV1TestIamPermissionsResponse() {
  var o = new api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed386();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

checkGoogleIamV1TestIamPermissionsResponse(
    api.GoogleIamV1TestIamPermissionsResponse o) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed386(o.permissions);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
}

buildUnnamed387() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed387(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed387();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed387(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed388() {
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

checkUnnamed388(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted14 = (o["x"]) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted14["bool"], unittest.equals(true));
  unittest.expect(casted14["string"], unittest.equals('foo'));
  var casted15 = (o["y"]) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted15["bool"], unittest.equals(true));
  unittest.expect(casted15["string"], unittest.equals('foo'));
}

buildUnnamed389() {
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

checkUnnamed389(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted16 = (o["x"]) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted16["bool"], unittest.equals(true));
  unittest.expect(casted16["string"], unittest.equals('foo'));
  var casted17 = (o["y"]) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted17["bool"], unittest.equals(true));
  unittest.expect(casted17["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed388();
    o.name = "foo";
    o.response = buildUnnamed389();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed388(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed389(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

buildUnnamed390() {
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

checkUnnamed390(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted18 = (o["x"]) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted18["bool"], unittest.equals(true));
  unittest.expect(casted18["string"], unittest.equals('foo'));
  var casted19 = (o["y"]) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted19["bool"], unittest.equals(true));
  unittest.expect(casted19["string"], unittest.equals('foo'));
}

buildUnnamed391() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed390());
  o.add(buildUnnamed390());
  return o;
}

checkUnnamed391(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed390(o[0]);
  checkUnnamed390(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed391();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed391(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeExpr = 0;
buildGoogleTypeExpr() {
  var o = new api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

main() {
  unittest.group("obj-schema-GoogleApiHttpBody", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleApiHttpBody();
      var od = new api.GoogleApiHttpBody.fromJson(o.toJson());
      checkGoogleApiHttpBody(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Access", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Access();
      var od = new api.GoogleCloudApigeeV1Access.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Access(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1AccessGet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1AccessGet();
      var od = new api.GoogleCloudApigeeV1AccessGet.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AccessGet(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1AccessRemove", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1AccessRemove();
      var od = new api.GoogleCloudApigeeV1AccessRemove.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AccessRemove(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1AccessSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1AccessSet();
      var od = new api.GoogleCloudApigeeV1AccessSet.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AccessSet(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Alias", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Alias();
      var od = new api.GoogleCloudApigeeV1Alias.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Alias(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1AliasRevisionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1AliasRevisionConfig();
      var od =
          new api.GoogleCloudApigeeV1AliasRevisionConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AliasRevisionConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ApiProduct", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ApiProduct();
      var od = new api.GoogleCloudApigeeV1ApiProduct.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiProduct(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ApiProductRef", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ApiProductRef();
      var od = new api.GoogleCloudApigeeV1ApiProductRef.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiProductRef(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ApiProxy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ApiProxy();
      var od = new api.GoogleCloudApigeeV1ApiProxy.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiProxy(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ApiProxyRevision", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ApiProxyRevision();
      var od = new api.GoogleCloudApigeeV1ApiProxyRevision.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ApiProxyRevision(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1App", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1App();
      var od = new api.GoogleCloudApigeeV1App.fromJson(o.toJson());
      checkGoogleCloudApigeeV1App(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1AsyncQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1AsyncQuery();
      var od = new api.GoogleCloudApigeeV1AsyncQuery.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AsyncQuery(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1AsyncQueryResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1AsyncQueryResult();
      var od = new api.GoogleCloudApigeeV1AsyncQueryResult.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AsyncQueryResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1AsyncQueryResultView", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1AsyncQueryResultView();
      var od =
          new api.GoogleCloudApigeeV1AsyncQueryResultView.fromJson(o.toJson());
      checkGoogleCloudApigeeV1AsyncQueryResultView(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Attribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Attribute();
      var od = new api.GoogleCloudApigeeV1Attribute.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Attribute(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Attributes", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Attributes();
      var od = new api.GoogleCloudApigeeV1Attributes.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Attributes(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1CertInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1CertInfo();
      var od = new api.GoogleCloudApigeeV1CertInfo.fromJson(o.toJson());
      checkGoogleCloudApigeeV1CertInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Certificate", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Certificate();
      var od = new api.GoogleCloudApigeeV1Certificate.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Certificate(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1CommonNameConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1CommonNameConfig();
      var od = new api.GoogleCloudApigeeV1CommonNameConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1CommonNameConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Company", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Company();
      var od = new api.GoogleCloudApigeeV1Company.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Company(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1CompanyApp", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1CompanyApp();
      var od = new api.GoogleCloudApigeeV1CompanyApp.fromJson(o.toJson());
      checkGoogleCloudApigeeV1CompanyApp(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1CompanyAppKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1CompanyAppKey();
      var od = new api.GoogleCloudApigeeV1CompanyAppKey.fromJson(o.toJson());
      checkGoogleCloudApigeeV1CompanyAppKey(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ConfigVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ConfigVersion();
      var od = new api.GoogleCloudApigeeV1ConfigVersion.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ConfigVersion(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Credential", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Credential();
      var od = new api.GoogleCloudApigeeV1Credential.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Credential(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1CustomReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1CustomReport();
      var od = new api.GoogleCloudApigeeV1CustomReport.fromJson(o.toJson());
      checkGoogleCloudApigeeV1CustomReport(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1CustomReportMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1CustomReportMetric();
      var od =
          new api.GoogleCloudApigeeV1CustomReportMetric.fromJson(o.toJson());
      checkGoogleCloudApigeeV1CustomReportMetric(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1DataLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1DataLocation();
      var od = new api.GoogleCloudApigeeV1DataLocation.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DataLocation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1DebugMask", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1DebugMask();
      var od = new api.GoogleCloudApigeeV1DebugMask.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DebugMask(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1DebugSession", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1DebugSession();
      var od = new api.GoogleCloudApigeeV1DebugSession.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DebugSession(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1DebugSessionTransaction", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1DebugSessionTransaction();
      var od = new api.GoogleCloudApigeeV1DebugSessionTransaction.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1DebugSessionTransaction(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1DeleteCustomReportResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1DeleteCustomReportResponse();
      var od = new api.GoogleCloudApigeeV1DeleteCustomReportResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1DeleteCustomReportResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Deployment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Deployment();
      var od = new api.GoogleCloudApigeeV1Deployment.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Deployment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1DeploymentConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1DeploymentConfig();
      var od = new api.GoogleCloudApigeeV1DeploymentConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DeploymentConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Developer", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Developer();
      var od = new api.GoogleCloudApigeeV1Developer.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Developer(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1DeveloperApp", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1DeveloperApp();
      var od = new api.GoogleCloudApigeeV1DeveloperApp.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DeveloperApp(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1DeveloperAppKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1DeveloperAppKey();
      var od = new api.GoogleCloudApigeeV1DeveloperAppKey.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DeveloperAppKey(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1DimensionMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1DimensionMetric();
      var od = new api.GoogleCloudApigeeV1DimensionMetric.fromJson(o.toJson());
      checkGoogleCloudApigeeV1DimensionMetric(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1EntityMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1EntityMetadata();
      var od = new api.GoogleCloudApigeeV1EntityMetadata.fromJson(o.toJson());
      checkGoogleCloudApigeeV1EntityMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Environment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Environment();
      var od = new api.GoogleCloudApigeeV1Environment.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Environment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1EnvironmentConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1EnvironmentConfig();
      var od =
          new api.GoogleCloudApigeeV1EnvironmentConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1EnvironmentConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1FlowHook", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1FlowHook();
      var od = new api.GoogleCloudApigeeV1FlowHook.fromJson(o.toJson());
      checkGoogleCloudApigeeV1FlowHook(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1FlowHookConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1FlowHookConfig();
      var od = new api.GoogleCloudApigeeV1FlowHookConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1FlowHookConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1GetSyncAuthorizationRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1GetSyncAuthorizationRequest();
      var od = new api.GoogleCloudApigeeV1GetSyncAuthorizationRequest.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1GetSyncAuthorizationRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1KeyAliasReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1KeyAliasReference();
      var od =
          new api.GoogleCloudApigeeV1KeyAliasReference.fromJson(o.toJson());
      checkGoogleCloudApigeeV1KeyAliasReference(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1KeyValueMap", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1KeyValueMap();
      var od = new api.GoogleCloudApigeeV1KeyValueMap.fromJson(o.toJson());
      checkGoogleCloudApigeeV1KeyValueMap(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Keystore", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Keystore();
      var od = new api.GoogleCloudApigeeV1Keystore.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Keystore(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1KeystoreConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1KeystoreConfig();
      var od = new api.GoogleCloudApigeeV1KeystoreConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1KeystoreConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListApiProductsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListApiProductsResponse();
      var od = new api.GoogleCloudApigeeV1ListApiProductsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListApiProductsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListApiProxiesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListApiProxiesResponse();
      var od = new api.GoogleCloudApigeeV1ListApiProxiesResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListApiProxiesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListAppsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListAppsResponse();
      var od = new api.GoogleCloudApigeeV1ListAppsResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListAppsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListAsyncQueriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListAsyncQueriesResponse();
      var od = new api.GoogleCloudApigeeV1ListAsyncQueriesResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListAsyncQueriesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListCompaniesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListCompaniesResponse();
      var od =
          new api.GoogleCloudApigeeV1ListCompaniesResponse.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ListCompaniesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListCompanyAppsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListCompanyAppsResponse();
      var od = new api.GoogleCloudApigeeV1ListCompanyAppsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListCompanyAppsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListCustomReportsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListCustomReportsResponse();
      var od = new api.GoogleCloudApigeeV1ListCustomReportsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListCustomReportsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListDebugSessionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListDebugSessionsResponse();
      var od = new api.GoogleCloudApigeeV1ListDebugSessionsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListDebugSessionsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListDeploymentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListDeploymentsResponse();
      var od = new api.GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListDeploymentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListDeveloperAppsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListDeveloperAppsResponse();
      var od = new api.GoogleCloudApigeeV1ListDeveloperAppsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListDeveloperAppsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudApigeeV1ListEnvironmentResourcesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListEnvironmentResourcesResponse();
      var od =
          new api.GoogleCloudApigeeV1ListEnvironmentResourcesResponse.fromJson(
              o.toJson());
      checkGoogleCloudApigeeV1ListEnvironmentResourcesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListHybridIssuersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListHybridIssuersResponse();
      var od = new api.GoogleCloudApigeeV1ListHybridIssuersResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListHybridIssuersResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListOfDevelopersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListOfDevelopersResponse();
      var od = new api.GoogleCloudApigeeV1ListOfDevelopersResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListOfDevelopersResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListOrganizationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListOrganizationsResponse();
      var od = new api.GoogleCloudApigeeV1ListOrganizationsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListOrganizationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ListSharedFlowsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ListSharedFlowsResponse();
      var od = new api.GoogleCloudApigeeV1ListSharedFlowsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1ListSharedFlowsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Metadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Metadata();
      var od = new api.GoogleCloudApigeeV1Metadata.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Metadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Metric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Metric();
      var od = new api.GoogleCloudApigeeV1Metric.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Metric(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1OperationMetadata();
      var od =
          new api.GoogleCloudApigeeV1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudApigeeV1OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1OptimizedStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1OptimizedStats();
      var od = new api.GoogleCloudApigeeV1OptimizedStats.fromJson(o.toJson());
      checkGoogleCloudApigeeV1OptimizedStats(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1OptimizedStatsNode", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1OptimizedStatsNode();
      var od =
          new api.GoogleCloudApigeeV1OptimizedStatsNode.fromJson(o.toJson());
      checkGoogleCloudApigeeV1OptimizedStatsNode(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1OptimizedStatsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1OptimizedStatsResponse();
      var od = new api.GoogleCloudApigeeV1OptimizedStatsResponse.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1OptimizedStatsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Organization", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Organization();
      var od = new api.GoogleCloudApigeeV1Organization.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Organization(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1OrganizationProjectMapping",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1OrganizationProjectMapping();
      var od = new api.GoogleCloudApigeeV1OrganizationProjectMapping.fromJson(
          o.toJson());
      checkGoogleCloudApigeeV1OrganizationProjectMapping(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1PodStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1PodStatus();
      var od = new api.GoogleCloudApigeeV1PodStatus.fromJson(o.toJson());
      checkGoogleCloudApigeeV1PodStatus(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Point", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Point();
      var od = new api.GoogleCloudApigeeV1Point.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Point(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Properties", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Properties();
      var od = new api.GoogleCloudApigeeV1Properties.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Properties(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Property", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Property();
      var od = new api.GoogleCloudApigeeV1Property.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Property(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Query", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Query();
      var od = new api.GoogleCloudApigeeV1Query.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Query(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1QueryMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1QueryMetadata();
      var od = new api.GoogleCloudApigeeV1QueryMetadata.fromJson(o.toJson());
      checkGoogleCloudApigeeV1QueryMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1QueryMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1QueryMetric();
      var od = new api.GoogleCloudApigeeV1QueryMetric.fromJson(o.toJson());
      checkGoogleCloudApigeeV1QueryMetric(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Reference", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Reference();
      var od = new api.GoogleCloudApigeeV1Reference.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Reference(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ReferenceConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ReferenceConfig();
      var od = new api.GoogleCloudApigeeV1ReferenceConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ReferenceConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ReportProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ReportProperty();
      var od = new api.GoogleCloudApigeeV1ReportProperty.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ReportProperty(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ResourceConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ResourceConfig();
      var od = new api.GoogleCloudApigeeV1ResourceConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ResourceConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ResourceFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ResourceFile();
      var od = new api.GoogleCloudApigeeV1ResourceFile.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ResourceFile(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ResourceFiles", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ResourceFiles();
      var od = new api.GoogleCloudApigeeV1ResourceFiles.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ResourceFiles(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Result", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Result();
      var od = new api.GoogleCloudApigeeV1Result.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Result(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Schema", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Schema();
      var od = new api.GoogleCloudApigeeV1Schema.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Schema(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1SchemaSchemaElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1SchemaSchemaElement();
      var od =
          new api.GoogleCloudApigeeV1SchemaSchemaElement.fromJson(o.toJson());
      checkGoogleCloudApigeeV1SchemaSchemaElement(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1SchemaSchemaProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1SchemaSchemaProperty();
      var od =
          new api.GoogleCloudApigeeV1SchemaSchemaProperty.fromJson(o.toJson());
      checkGoogleCloudApigeeV1SchemaSchemaProperty(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1ServiceIssuersMapping", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1ServiceIssuersMapping();
      var od =
          new api.GoogleCloudApigeeV1ServiceIssuersMapping.fromJson(o.toJson());
      checkGoogleCloudApigeeV1ServiceIssuersMapping(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Session", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Session();
      var od = new api.GoogleCloudApigeeV1Session.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Session(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1SharedFlow", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1SharedFlow();
      var od = new api.GoogleCloudApigeeV1SharedFlow.fromJson(o.toJson());
      checkGoogleCloudApigeeV1SharedFlow(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1SharedFlowRevision", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1SharedFlowRevision();
      var od =
          new api.GoogleCloudApigeeV1SharedFlowRevision.fromJson(o.toJson());
      checkGoogleCloudApigeeV1SharedFlowRevision(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Stats", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Stats();
      var od = new api.GoogleCloudApigeeV1Stats.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Stats(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1StatsEnvironmentStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1StatsEnvironmentStats();
      var od =
          new api.GoogleCloudApigeeV1StatsEnvironmentStats.fromJson(o.toJson());
      checkGoogleCloudApigeeV1StatsEnvironmentStats(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1Subscription", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1Subscription();
      var od = new api.GoogleCloudApigeeV1Subscription.fromJson(o.toJson());
      checkGoogleCloudApigeeV1Subscription(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1SyncAuthorization", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1SyncAuthorization();
      var od =
          new api.GoogleCloudApigeeV1SyncAuthorization.fromJson(o.toJson());
      checkGoogleCloudApigeeV1SyncAuthorization(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1TargetServer", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1TargetServer();
      var od = new api.GoogleCloudApigeeV1TargetServer.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TargetServer(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1TargetServerConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1TargetServerConfig();
      var od =
          new api.GoogleCloudApigeeV1TargetServerConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TargetServerConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1TlsInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1TlsInfo();
      var od = new api.GoogleCloudApigeeV1TlsInfo.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TlsInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1TlsInfoCommonName", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1TlsInfoCommonName();
      var od =
          new api.GoogleCloudApigeeV1TlsInfoCommonName.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TlsInfoCommonName(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudApigeeV1TlsInfoConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudApigeeV1TlsInfoConfig();
      var od = new api.GoogleCloudApigeeV1TlsInfoConfig.fromJson(o.toJson());
      checkGoogleCloudApigeeV1TlsInfoConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1AuditConfig();
      var od = new api.GoogleIamV1AuditConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1AuditLogConfig();
      var od = new api.GoogleIamV1AuditLogConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1Binding();
      var od = new api.GoogleIamV1Binding.fromJson(o.toJson());
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1Policy();
      var od = new api.GoogleIamV1Policy.fromJson(o.toJson());
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1SetIamPolicyRequest();
      var od = new api.GoogleIamV1SetIamPolicyRequest.fromJson(o.toJson());
      checkGoogleIamV1SetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1TestIamPermissionsRequest();
      var od =
          new api.GoogleIamV1TestIamPermissionsRequest.fromJson(o.toJson());
      checkGoogleIamV1TestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1TestIamPermissionsResponse();
      var od =
          new api.GoogleIamV1TestIamPermissionsResponse.fromJson(o.toJson());
      checkGoogleIamV1TestIamPermissionsResponse(od);
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

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeExpr", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeExpr();
      var od = new api.GoogleTypeExpr.fromJson(o.toJson());
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group("resource-HybridIssuersResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.HybridIssuersResourceApi res = new api.ApigeeApi(mock).hybrid.issuers;
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListHybridIssuersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListHybridIssuersResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res = new api.ApigeeApi(mock).organizations;
      var arg_request = buildGoogleCloudApigeeV1Organization();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Organization.fromJson(json);
        checkGoogleCloudApigeeV1Organization(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/organizations"));
        pathOffset += 16;

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
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, parent: arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res = new api.ApigeeApi(mock).organizations;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Organization());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Organization(response);
      })));
    });

    unittest.test("method--getSyncAuthorization", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res = new api.ApigeeApi(mock).organizations;
      var arg_request = buildGoogleCloudApigeeV1GetSyncAuthorizationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudApigeeV1GetSyncAuthorizationRequest.fromJson(
                json);
        checkGoogleCloudApigeeV1GetSyncAuthorizationRequest(obj);

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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1SyncAuthorization());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getSyncAuthorization(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SyncAuthorization(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res = new api.ApigeeApi(mock).organizations;
      var arg_parent = "foo";
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListOrganizationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListOrganizationsResponse(response);
      })));
    });

    unittest.test("method--setSyncAuthorization", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res = new api.ApigeeApi(mock).organizations;
      var arg_request = buildGoogleCloudApigeeV1SyncAuthorization();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1SyncAuthorization.fromJson(json);
        checkGoogleCloudApigeeV1SyncAuthorization(obj);

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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1SyncAuthorization());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setSyncAuthorization(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SyncAuthorization(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res = new api.ApigeeApi(mock).organizations;
      var arg_request = buildGoogleCloudApigeeV1Organization();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Organization.fromJson(json);
        checkGoogleCloudApigeeV1Organization(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Organization());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Organization(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsApiproductsResourceApi", () {
    unittest.test("method--attributes", () {
      var mock = new HttpServerMock();
      api.OrganizationsApiproductsResourceApi res =
          new api.ApigeeApi(mock).organizations.apiproducts;
      var arg_request = buildGoogleCloudApigeeV1Attributes();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Attributes.fromJson(json);
        checkGoogleCloudApigeeV1Attributes(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .attributes(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsApiproductsResourceApi res =
          new api.ApigeeApi(mock).organizations.apiproducts;
      var arg_request = buildGoogleCloudApigeeV1ApiProduct();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1ApiProduct.fromJson(json);
        checkGoogleCloudApigeeV1ApiProduct(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProduct(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsApiproductsResourceApi res =
          new api.ApigeeApi(mock).organizations.apiproducts;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProduct(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsApiproductsResourceApi res =
          new api.ApigeeApi(mock).organizations.apiproducts;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProduct(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsApiproductsResourceApi res =
          new api.ApigeeApi(mock).organizations.apiproducts;
      var arg_parent = "foo";
      var arg_startKey = "foo";
      var arg_attributevalue = "foo";
      var arg_expand = true;
      var arg_attributename = "foo";
      var arg_count = "foo";
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
            queryMap["startKey"].first, unittest.equals(arg_startKey));
        unittest.expect(queryMap["attributevalue"].first,
            unittest.equals(arg_attributevalue));
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(queryMap["attributename"].first,
            unittest.equals(arg_attributename));
        unittest.expect(queryMap["count"].first, unittest.equals(arg_count));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListApiProductsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              startKey: arg_startKey,
              attributevalue: arg_attributevalue,
              expand: arg_expand,
              attributename: arg_attributename,
              count: arg_count,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListApiProductsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsApiproductsResourceApi res =
          new api.ApigeeApi(mock).organizations.apiproducts;
      var arg_request = buildGoogleCloudApigeeV1ApiProduct();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1ApiProduct.fromJson(json);
        checkGoogleCloudApigeeV1ApiProduct(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProduct(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsApiproductsAttributesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsApiproductsAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.apiproducts.attributes_1;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsApiproductsAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.apiproducts.attributes_1;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsApiproductsAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.apiproducts.attributes_1;
      var arg_parent = "foo";
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(response);
      })));
    });

    unittest.test("method--updateApiProductAttribute", () {
      var mock = new HttpServerMock();
      api.OrganizationsApiproductsAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.apiproducts.attributes_1;
      var arg_request = buildGoogleCloudApigeeV1Attribute();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Attribute.fromJson(json);
        checkGoogleCloudApigeeV1Attribute(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateApiProductAttribute(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsApisResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisResourceApi res =
          new api.ApigeeApi(mock).organizations.apis;
      var arg_request = buildGoogleApiHttpBody();
      var arg_parent = "foo";
      var arg_action = "foo";
      var arg_name = "foo";
      var arg_validate = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleApiHttpBody.fromJson(json);
        checkGoogleApiHttpBody(obj);

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
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(
            queryMap["validate"].first, unittest.equals("$arg_validate"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1ApiProxyRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              action: arg_action,
              name: arg_name,
              validate: arg_validate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProxyRevision(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisResourceApi res =
          new api.ApigeeApi(mock).organizations.apis;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProxy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProxy(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisResourceApi res =
          new api.ApigeeApi(mock).organizations.apis;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ApiProxy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProxy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisResourceApi res =
          new api.ApigeeApi(mock).organizations.apis;
      var arg_parent = "foo";
      var arg_includeMetaData = true;
      var arg_includeRevisions = true;
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
        unittest.expect(queryMap["includeMetaData"].first,
            unittest.equals("$arg_includeMetaData"));
        unittest.expect(queryMap["includeRevisions"].first,
            unittest.equals("$arg_includeRevisions"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListApiProxiesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              includeMetaData: arg_includeMetaData,
              includeRevisions: arg_includeRevisions,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListApiProxiesResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsApisDeploymentsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisDeploymentsResourceApi res =
          new api.ApigeeApi(mock).organizations.apis.deployments;
      var arg_parent = "foo";
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsApisKeyvaluemapsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisKeyvaluemapsResourceApi res =
          new api.ApigeeApi(mock).organizations.apis.keyvaluemaps;
      var arg_request = buildGoogleCloudApigeeV1KeyValueMap();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1KeyValueMap.fromJson(json);
        checkGoogleCloudApigeeV1KeyValueMap(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisKeyvaluemapsResourceApi res =
          new api.ApigeeApi(mock).organizations.apis.keyvaluemaps;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsApisRevisionsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisRevisionsResourceApi res =
          new api.ApigeeApi(mock).organizations.apis.revisions;
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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1ApiProxyRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProxyRevision(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisRevisionsResourceApi res =
          new api.ApigeeApi(mock).organizations.apis.revisions;
      var arg_name = "foo";
      var arg_format = "foo";
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
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, format: arg_format, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response);
      })));
    });

    unittest.test("method--updateApiProxyRevision", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisRevisionsResourceApi res =
          new api.ApigeeApi(mock).organizations.apis.revisions;
      var arg_request = buildGoogleApiHttpBody();
      var arg_name = "foo";
      var arg_validate = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleApiHttpBody.fromJson(json);
        checkGoogleApiHttpBody(obj);

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
            queryMap["validate"].first, unittest.equals("$arg_validate"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1ApiProxyRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateApiProxyRevision(arg_request, arg_name,
              validate: arg_validate, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ApiProxyRevision(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsApisRevisionsDeploymentsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsApisRevisionsDeploymentsResourceApi res =
          new api.ApigeeApi(mock).organizations.apis.revisions.deployments;
      var arg_parent = "foo";
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsAppsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.apps;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1App());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1App(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.apps;
      var arg_parent = "foo";
      var arg_apiProduct = "foo";
      var arg_status = "foo";
      var arg_startKey = "foo";
      var arg_apptype = "foo";
      var arg_expand = true;
      var arg_keyStatus = "foo";
      var arg_ids = "foo";
      var arg_includeCred = true;
      var arg_rows = "foo";
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
            queryMap["apiProduct"].first, unittest.equals(arg_apiProduct));
        unittest.expect(queryMap["status"].first, unittest.equals(arg_status));
        unittest.expect(
            queryMap["startKey"].first, unittest.equals(arg_startKey));
        unittest.expect(
            queryMap["apptype"].first, unittest.equals(arg_apptype));
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(
            queryMap["keyStatus"].first, unittest.equals(arg_keyStatus));
        unittest.expect(queryMap["ids"].first, unittest.equals(arg_ids));
        unittest.expect(
            queryMap["includeCred"].first, unittest.equals("$arg_includeCred"));
        unittest.expect(queryMap["rows"].first, unittest.equals(arg_rows));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1ListAppsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              apiProduct: arg_apiProduct,
              status: arg_status,
              startKey: arg_startKey,
              apptype: arg_apptype,
              expand: arg_expand,
              keyStatus: arg_keyStatus,
              ids: arg_ids,
              includeCred: arg_includeCred,
              rows: arg_rows,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListAppsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsCompaniesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesResourceApi res =
          new api.ApigeeApi(mock).organizations.companies;
      var arg_request = buildGoogleCloudApigeeV1Company();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Company.fromJson(json);
        checkGoogleCloudApigeeV1Company(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Company());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Company(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesResourceApi res =
          new api.ApigeeApi(mock).organizations.companies;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Company());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Company(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesResourceApi res =
          new api.ApigeeApi(mock).organizations.companies;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Company());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Company(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesResourceApi res =
          new api.ApigeeApi(mock).organizations.companies;
      var arg_parent = "foo";
      var arg_startKey = "foo";
      var arg_count = "foo";
      var arg_expand = true;
      var arg_includeDevelopers = true;
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
            queryMap["startKey"].first, unittest.equals(arg_startKey));
        unittest.expect(queryMap["count"].first, unittest.equals(arg_count));
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(queryMap["includeDevelopers"].first,
            unittest.equals("$arg_includeDevelopers"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListCompaniesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              startKey: arg_startKey,
              count: arg_count,
              expand: arg_expand,
              includeDevelopers: arg_includeDevelopers,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListCompaniesResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesResourceApi res =
          new api.ApigeeApi(mock).organizations.companies;
      var arg_request = buildGoogleCloudApigeeV1Company();
      var arg_name = "foo";
      var arg_action = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Company.fromJson(json);
        checkGoogleCloudApigeeV1Company(obj);

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
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Company());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name,
              action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Company(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsCompaniesAppsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.companies.apps;
      var arg_request = buildGoogleCloudApigeeV1CompanyApp();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1CompanyApp.fromJson(json);
        checkGoogleCloudApigeeV1CompanyApp(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CompanyApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CompanyApp(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.companies.apps;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CompanyApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CompanyApp(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.companies.apps;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CompanyApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CompanyApp(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.companies.apps;
      var arg_parent = "foo";
      var arg_startKey = "foo";
      var arg_count = "foo";
      var arg_expand = true;
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
            queryMap["startKey"].first, unittest.equals(arg_startKey));
        unittest.expect(queryMap["count"].first, unittest.equals(arg_count));
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListCompanyAppsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              startKey: arg_startKey,
              count: arg_count,
              expand: arg_expand,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListCompanyAppsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.companies.apps;
      var arg_request = buildGoogleCloudApigeeV1CompanyApp();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1CompanyApp.fromJson(json);
        checkGoogleCloudApigeeV1CompanyApp(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CompanyApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CompanyApp(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsCompaniesAppsKeysResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesAppsKeysResourceApi res =
          new api.ApigeeApi(mock).organizations.companies.apps.keys;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CompanyAppKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CompanyAppKey(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesAppsKeysResourceApi res =
          new api.ApigeeApi(mock).organizations.companies.apps.keys;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CompanyAppKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CompanyAppKey(response);
      })));
    });

    unittest.test("method--updateCompanyAppKey", () {
      var mock = new HttpServerMock();
      api.OrganizationsCompaniesAppsKeysResourceApi res =
          new api.ApigeeApi(mock).organizations.companies.apps.keys;
      var arg_request = buildGoogleCloudApigeeV1CompanyAppKey();
      var arg_name = "foo";
      var arg_action = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1CompanyAppKey.fromJson(json);
        checkGoogleCloudApigeeV1CompanyAppKey(obj);

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
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CompanyAppKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateCompanyAppKey(arg_request, arg_name,
              action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CompanyAppKey(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsDeploymentsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsDeploymentsResourceApi res =
          new api.ApigeeApi(mock).organizations.deployments;
      var arg_parent = "foo";
      var arg_sharedFlows = true;
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
            queryMap["sharedFlows"].first, unittest.equals("$arg_sharedFlows"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, sharedFlows: arg_sharedFlows, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsDevelopersResourceApi", () {
    unittest.test("method--attributes", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersResourceApi res =
          new api.ApigeeApi(mock).organizations.developers;
      var arg_request = buildGoogleCloudApigeeV1Attributes();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Attributes.fromJson(json);
        checkGoogleCloudApigeeV1Attributes(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .attributes(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersResourceApi res =
          new api.ApigeeApi(mock).organizations.developers;
      var arg_request = buildGoogleCloudApigeeV1Developer();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Developer.fromJson(json);
        checkGoogleCloudApigeeV1Developer(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Developer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Developer(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersResourceApi res =
          new api.ApigeeApi(mock).organizations.developers;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Developer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Developer(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersResourceApi res =
          new api.ApigeeApi(mock).organizations.developers;
      var arg_name = "foo";
      var arg_action = "foo";
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
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Developer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Developer(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersResourceApi res =
          new api.ApigeeApi(mock).organizations.developers;
      var arg_parent = "foo";
      var arg_count = "foo";
      var arg_startKey = "foo";
      var arg_expand = true;
      var arg_ids = "foo";
      var arg_includeCompany = true;
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
        unittest.expect(queryMap["count"].first, unittest.equals(arg_count));
        unittest.expect(
            queryMap["startKey"].first, unittest.equals(arg_startKey));
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(queryMap["ids"].first, unittest.equals(arg_ids));
        unittest.expect(queryMap["includeCompany"].first,
            unittest.equals("$arg_includeCompany"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListOfDevelopersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              count: arg_count,
              startKey: arg_startKey,
              expand: arg_expand,
              ids: arg_ids,
              includeCompany: arg_includeCompany,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListOfDevelopersResponse(response);
      })));
    });

    unittest.test("method--setDeveloperStatus", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersResourceApi res =
          new api.ApigeeApi(mock).organizations.developers;
      var arg_name = "foo";
      var arg_action = "foo";
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
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setDeveloperStatus(arg_name,
              action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersResourceApi res =
          new api.ApigeeApi(mock).organizations.developers;
      var arg_request = buildGoogleCloudApigeeV1Developer();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Developer.fromJson(json);
        checkGoogleCloudApigeeV1Developer(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Developer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Developer(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsDevelopersAppsResourceApi", () {
    unittest.test("method--attributes", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps;
      var arg_request = buildGoogleCloudApigeeV1Attributes();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Attributes.fromJson(json);
        checkGoogleCloudApigeeV1Attributes(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .attributes(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps;
      var arg_request = buildGoogleCloudApigeeV1DeveloperApp();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1DeveloperApp.fromJson(json);
        checkGoogleCloudApigeeV1DeveloperApp(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DeveloperApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperApp(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DeveloperApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperApp(response);
      })));
    });

    unittest.test("method--generateKeyPairOrUpdateDeveloperAppStatus", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps;
      var arg_request = buildGoogleCloudApigeeV1DeveloperApp();
      var arg_name = "foo";
      var arg_action = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1DeveloperApp.fromJson(json);
        checkGoogleCloudApigeeV1DeveloperApp(obj);

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
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DeveloperApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateKeyPairOrUpdateDeveloperAppStatus(arg_request, arg_name,
              action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperApp(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps;
      var arg_name = "foo";
      var arg_query = "foo";
      var arg_entity = "foo";
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["entity"].first, unittest.equals(arg_entity));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DeveloperApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              query: arg_query, entity: arg_entity, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperApp(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps;
      var arg_parent = "foo";
      var arg_count = "foo";
      var arg_expand = true;
      var arg_shallowExpand = true;
      var arg_startKey = "foo";
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
        unittest.expect(queryMap["count"].first, unittest.equals(arg_count));
        unittest.expect(
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(queryMap["shallowExpand"].first,
            unittest.equals("$arg_shallowExpand"));
        unittest.expect(
            queryMap["startKey"].first, unittest.equals(arg_startKey));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeveloperAppsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              count: arg_count,
              expand: arg_expand,
              shallowExpand: arg_shallowExpand,
              startKey: arg_startKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeveloperAppsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps;
      var arg_request = buildGoogleCloudApigeeV1DeveloperApp();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1DeveloperApp.fromJson(json);
        checkGoogleCloudApigeeV1DeveloperApp(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DeveloperApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperApp(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsDevelopersAppsAttributesResourceApi",
      () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps.attributes_1;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps.attributes_1;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps.attributes_1;
      var arg_parent = "foo";
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(response);
      })));
    });

    unittest.test("method--updateDeveloperAppAttribute", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps.attributes_1;
      var arg_request = buildGoogleCloudApigeeV1Attribute();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Attribute.fromJson(json);
        checkGoogleCloudApigeeV1Attribute(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDeveloperAppAttribute(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsDevelopersAppsKeysResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsKeysResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps.keys;
      var arg_request = buildGoogleCloudApigeeV1DeveloperAppKey();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1DeveloperAppKey.fromJson(json);
        checkGoogleCloudApigeeV1DeveloperAppKey(obj);

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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsKeysResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps.keys;
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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsKeysResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps.keys;
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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(response);
      })));
    });

    unittest.test("method--replaceDeveloperAppKey", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsKeysResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps.keys;
      var arg_request = buildGoogleCloudApigeeV1DeveloperAppKey();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1DeveloperAppKey.fromJson(json);
        checkGoogleCloudApigeeV1DeveloperAppKey(obj);

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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .replaceDeveloperAppKey(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(response);
      })));
    });

    unittest.test("method--updateDeveloperAppKey", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsKeysResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps.keys;
      var arg_request = buildGoogleCloudApigeeV1DeveloperAppKey();
      var arg_name = "foo";
      var arg_action = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1DeveloperAppKey.fromJson(json);
        checkGoogleCloudApigeeV1DeveloperAppKey(obj);

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
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDeveloperAppKey(arg_request, arg_name,
              action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(response);
      })));
    });
  });

  unittest.group(
      "resource-OrganizationsDevelopersAppsKeysApiproductsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsKeysApiproductsResourceApi res =
          new api.ApigeeApi(mock)
              .organizations
              .developers
              .apps
              .keys
              .apiproducts;
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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(response);
      })));
    });

    unittest.test("method--updateDeveloperAppKeyApiProduct", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsKeysApiproductsResourceApi res =
          new api.ApigeeApi(mock)
              .organizations
              .developers
              .apps
              .keys
              .apiproducts;
      var arg_name = "foo";
      var arg_action = "foo";
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
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDeveloperAppKeyApiProduct(arg_name,
              action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsDevelopersAppsKeysCreateResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAppsKeysCreateResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.apps.keys.create_1;
      var arg_request = buildGoogleCloudApigeeV1DeveloperAppKey();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1DeveloperAppKey.fromJson(json);
        checkGoogleCloudApigeeV1DeveloperAppKey(obj);

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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1DeveloperAppKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeveloperAppKey(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsDevelopersAttributesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.attributes_1;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.attributes_1;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.attributes_1;
      var arg_parent = "foo";
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attributes());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attributes(response);
      })));
    });

    unittest.test("method--updateDeveloperAttribute", () {
      var mock = new HttpServerMock();
      api.OrganizationsDevelopersAttributesResourceApi res =
          new api.ApigeeApi(mock).organizations.developers.attributes_1;
      var arg_request = buildGoogleCloudApigeeV1Attribute();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Attribute.fromJson(json);
        checkGoogleCloudApigeeV1Attribute(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Attribute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDeveloperAttribute(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Attribute(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleCloudApigeeV1Environment();
      var arg_parent = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Environment.fromJson(json);
        checkGoogleCloudApigeeV1Environment(obj);

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
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
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
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Environment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Environment(response);
      })));
    });

    unittest.test("method--getDatalocation", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
      var arg_name = "foo";
      var arg_relativeFilePath = "foo";
      var arg_contentType = "foo";
      var arg_dataset = "foo";
      var arg_repo = "foo";
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
        unittest.expect(queryMap["relativeFilePath"].first,
            unittest.equals(arg_relativeFilePath));
        unittest.expect(
            queryMap["contentType"].first, unittest.equals(arg_contentType));
        unittest.expect(
            queryMap["dataset"].first, unittest.equals(arg_dataset));
        unittest.expect(queryMap["repo"].first, unittest.equals(arg_repo));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DataLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDatalocation(arg_name,
              relativeFilePath: arg_relativeFilePath,
              contentType: arg_contentType,
              dataset: arg_dataset,
              repo: arg_repo,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DataLocation(response);
      })));
    });

    unittest.test("method--getDebugmask", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DebugMask());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDebugmask(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DebugMask(response);
      })));
    });

    unittest.test("method--getDeployedConfig", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1EnvironmentConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDeployedConfig(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1EnvironmentConfig(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleIamV1Policy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleIamV1SetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleIamV1SetIamPolicyRequest.fromJson(json);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildGoogleIamV1Policy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response);
      })));
    });

    unittest.test("method--subscribe", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
      var arg_parent = "foo";
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Subscription());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .subscribe(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Subscription(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleIamV1TestIamPermissionsRequest.fromJson(json);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        var resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1TestIamPermissionsResponse(response);
      })));
    });

    unittest.test("method--unsubscribe", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleCloudApigeeV1Subscription();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Subscription.fromJson(json);
        checkGoogleCloudApigeeV1Subscription(obj);

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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unsubscribe(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleCloudApigeeV1Environment();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Environment.fromJson(json);
        checkGoogleCloudApigeeV1Environment(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Environment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Environment(response);
      })));
    });

    unittest.test("method--updateDebugmask", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleCloudApigeeV1DebugMask();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_replaceRepeatedFields = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1DebugMask.fromJson(json);
        checkGoogleCloudApigeeV1DebugMask(obj);

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
        unittest.expect(queryMap["replaceRepeatedFields"].first,
            unittest.equals("$arg_replaceRepeatedFields"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DebugMask());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDebugmask(arg_request, arg_name,
              updateMask: arg_updateMask,
              replaceRepeatedFields: arg_replaceRepeatedFields,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DebugMask(response);
      })));
    });

    unittest.test("method--updateEnvironment", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments;
      var arg_request = buildGoogleCloudApigeeV1Environment();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Environment.fromJson(json);
        checkGoogleCloudApigeeV1Environment(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Environment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateEnvironment(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Environment(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsAnalyticsAdminResourceApi",
      () {
    unittest.test("method--getSchemav2", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsAnalyticsAdminResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.analytics.admin;
      var arg_name = "foo";
      var arg_type = "foo";
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
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Schema());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getSchemav2(arg_name, type: arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Schema(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsApisDeploymentsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsApisDeploymentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.apis.deployments;
      var arg_parent = "foo";
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsApisRevisionsResourceApi",
      () {
    unittest.test("method--deployments", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsApisRevisionsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.apis.revisions;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deployments(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--getDeployments", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsApisRevisionsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.apis.revisions;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Deployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDeployments(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Deployment(response);
      })));
    });
  });

  unittest.group(
      "resource-OrganizationsEnvironmentsApisRevisionsDebugsessionsResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsApisRevisionsDebugsessionsResourceApi res =
          new api.ApigeeApi(mock)
              .organizations
              .environments
              .apis
              .revisions
              .debugsessions;
      var arg_request = buildGoogleCloudApigeeV1DebugSession();
      var arg_parent = "foo";
      var arg_timeout = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1DebugSession.fromJson(json);
        checkGoogleCloudApigeeV1DebugSession(obj);

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
            queryMap["timeout"].first, unittest.equals(arg_timeout));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1DebugSession());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              timeout: arg_timeout, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DebugSession(response);
      })));
    });

    unittest.test("method--deleteData", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsApisRevisionsDebugsessionsResourceApi res =
          new api.ApigeeApi(mock)
              .organizations
              .environments
              .apis
              .revisions
              .debugsessions;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteData(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsApisRevisionsDebugsessionsResourceApi res =
          new api.ApigeeApi(mock)
              .organizations
              .environments
              .apis
              .revisions
              .debugsessions;
      var arg_parent = "foo";
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDebugSessionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDebugSessionsResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-OrganizationsEnvironmentsApisRevisionsDebugsessionsDataResourceApi",
      () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsApisRevisionsDebugsessionsDataResourceApi
          res = new api.ApigeeApi(mock)
              .organizations
              .environments
              .apis
              .revisions
              .debugsessions
              .data;
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1DebugSessionTransaction());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DebugSessionTransaction(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsCachesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsCachesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.caches;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsDeploymentsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsDeploymentsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.deployments;
      var arg_parent = "foo";
      var arg_sharedFlows = true;
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
            queryMap["sharedFlows"].first, unittest.equals("$arg_sharedFlows"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, sharedFlows: arg_sharedFlows, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsFlowhooksResourceApi", () {
    unittest.test("method--attachSharedFlowToFlowHook", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsFlowhooksResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.flowhooks;
      var arg_request = buildGoogleCloudApigeeV1FlowHook();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1FlowHook.fromJson(json);
        checkGoogleCloudApigeeV1FlowHook(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1FlowHook());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .attachSharedFlowToFlowHook(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1FlowHook(response);
      })));
    });

    unittest.test("method--detachSharedFlowFromFlowHook", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsFlowhooksResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.flowhooks;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1FlowHook());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detachSharedFlowFromFlowHook(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1FlowHook(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsFlowhooksResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.flowhooks;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1FlowHook());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1FlowHook(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsKeystoresResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeystoresResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keystores;
      var arg_request = buildGoogleCloudApigeeV1Keystore();
      var arg_parent = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Keystore.fromJson(json);
        checkGoogleCloudApigeeV1Keystore(obj);

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
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Keystore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Keystore(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeystoresResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keystores;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Keystore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Keystore(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeystoresResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keystores;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Keystore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Keystore(response);
      })));
    });
  });

  unittest.group(
      "resource-OrganizationsEnvironmentsKeystoresAliasesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeystoresAliasesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keystores.aliases;
      var arg_request = buildGoogleApiHttpBody();
      var arg_parent = "foo";
      var arg_alias = "foo";
      var arg_format = "foo";
      var arg_P_password = "foo";
      var arg_ignoreNewlineValidation = true;
      var arg_ignoreExpiryValidation = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleApiHttpBody.fromJson(json);
        checkGoogleApiHttpBody(obj);

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
        unittest.expect(queryMap["alias"].first, unittest.equals(arg_alias));
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(
            queryMap["_password"].first, unittest.equals(arg_P_password));
        unittest.expect(queryMap["ignoreNewlineValidation"].first,
            unittest.equals("$arg_ignoreNewlineValidation"));
        unittest.expect(queryMap["ignoreExpiryValidation"].first,
            unittest.equals("$arg_ignoreExpiryValidation"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Alias());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              alias: arg_alias,
              format: arg_format,
              P_password: arg_P_password,
              ignoreNewlineValidation: arg_ignoreNewlineValidation,
              ignoreExpiryValidation: arg_ignoreExpiryValidation,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Alias(response);
      })));
    });

    unittest.test("method--csr", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeystoresAliasesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keystores.aliases;
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
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .csr(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeystoresAliasesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keystores.aliases;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Alias());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Alias(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeystoresAliasesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keystores.aliases;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Alias());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Alias(response);
      })));
    });

    unittest.test("method--getCertificate", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeystoresAliasesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keystores.aliases;
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
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getCertificate(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeystoresAliasesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keystores.aliases;
      var arg_request = buildGoogleApiHttpBody();
      var arg_name = "foo";
      var arg_ignoreNewlineValidation = true;
      var arg_ignoreExpiryValidation = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleApiHttpBody.fromJson(json);
        checkGoogleApiHttpBody(obj);

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
        unittest.expect(queryMap["ignoreNewlineValidation"].first,
            unittest.equals("$arg_ignoreNewlineValidation"));
        unittest.expect(queryMap["ignoreExpiryValidation"].first,
            unittest.equals("$arg_ignoreExpiryValidation"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Alias());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name,
              ignoreNewlineValidation: arg_ignoreNewlineValidation,
              ignoreExpiryValidation: arg_ignoreExpiryValidation,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Alias(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsKeyvaluemapsResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeyvaluemapsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keyvaluemaps;
      var arg_request = buildGoogleCloudApigeeV1KeyValueMap();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1KeyValueMap.fromJson(json);
        checkGoogleCloudApigeeV1KeyValueMap(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsKeyvaluemapsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.keyvaluemaps;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsOptimizedStatsResourceApi",
      () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsOptimizedStatsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.optimizedStats;
      var arg_name = "foo";
      var arg_limit = "foo";
      var arg_accuracy = "foo";
      var arg_offset = "foo";
      var arg_sonar = true;
      var arg_realtime = true;
      var arg_tzo = "foo";
      var arg_sortby = "foo";
      var arg_filter = "foo";
      var arg_timeUnit = "foo";
      var arg_aggTable = "foo";
      var arg_sort = "foo";
      var arg_topk = "foo";
      var arg_tsAscending = true;
      var arg_timeRange = "foo";
      var arg_select = "foo";
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
        unittest.expect(queryMap["limit"].first, unittest.equals(arg_limit));
        unittest.expect(
            queryMap["accuracy"].first, unittest.equals(arg_accuracy));
        unittest.expect(queryMap["offset"].first, unittest.equals(arg_offset));
        unittest.expect(queryMap["sonar"].first, unittest.equals("$arg_sonar"));
        unittest.expect(
            queryMap["realtime"].first, unittest.equals("$arg_realtime"));
        unittest.expect(queryMap["tzo"].first, unittest.equals(arg_tzo));
        unittest.expect(queryMap["sortby"].first, unittest.equals(arg_sortby));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["timeUnit"].first, unittest.equals(arg_timeUnit));
        unittest.expect(
            queryMap["aggTable"].first, unittest.equals(arg_aggTable));
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));
        unittest.expect(queryMap["topk"].first, unittest.equals(arg_topk));
        unittest.expect(
            queryMap["tsAscending"].first, unittest.equals("$arg_tsAscending"));
        unittest.expect(
            queryMap["timeRange"].first, unittest.equals(arg_timeRange));
        unittest.expect(queryMap["select"].first, unittest.equals(arg_select));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1OptimizedStats());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              limit: arg_limit,
              accuracy: arg_accuracy,
              offset: arg_offset,
              sonar: arg_sonar,
              realtime: arg_realtime,
              tzo: arg_tzo,
              sortby: arg_sortby,
              filter: arg_filter,
              timeUnit: arg_timeUnit,
              aggTable: arg_aggTable,
              sort: arg_sort,
              topk: arg_topk,
              tsAscending: arg_tsAscending,
              timeRange: arg_timeRange,
              select: arg_select,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1OptimizedStats(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsQueriesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsQueriesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.queries;
      var arg_request = buildGoogleCloudApigeeV1Query();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Query.fromJson(json);
        checkGoogleCloudApigeeV1Query(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1AsyncQuery());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1AsyncQuery(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsQueriesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.queries;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1AsyncQuery());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1AsyncQuery(response);
      })));
    });

    unittest.test("method--getResult", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsQueriesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.queries;
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
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getResult(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response);
      })));
    });

    unittest.test("method--getResultView", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsQueriesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.queries;
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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1AsyncQueryResultView());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getResultView(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1AsyncQueryResultView(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsQueriesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.queries;
      var arg_parent = "foo";
      var arg_submittedBy = "foo";
      var arg_from = "foo";
      var arg_inclQueriesWithoutReport = "foo";
      var arg_to = "foo";
      var arg_status = "foo";
      var arg_dataset = "foo";
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
            queryMap["submittedBy"].first, unittest.equals(arg_submittedBy));
        unittest.expect(queryMap["from"].first, unittest.equals(arg_from));
        unittest.expect(queryMap["inclQueriesWithoutReport"].first,
            unittest.equals(arg_inclQueriesWithoutReport));
        unittest.expect(queryMap["to"].first, unittest.equals(arg_to));
        unittest.expect(queryMap["status"].first, unittest.equals(arg_status));
        unittest.expect(
            queryMap["dataset"].first, unittest.equals(arg_dataset));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListAsyncQueriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              submittedBy: arg_submittedBy,
              from: arg_from,
              inclQueriesWithoutReport: arg_inclQueriesWithoutReport,
              to: arg_to,
              status: arg_status,
              dataset: arg_dataset,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListAsyncQueriesResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsReferencesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsReferencesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.references;
      var arg_request = buildGoogleCloudApigeeV1Reference();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Reference.fromJson(json);
        checkGoogleCloudApigeeV1Reference(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Reference());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Reference(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsReferencesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.references;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Reference());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Reference(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsReferencesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.references;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Reference());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Reference(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsReferencesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.references;
      var arg_request = buildGoogleCloudApigeeV1Reference();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1Reference.fromJson(json);
        checkGoogleCloudApigeeV1Reference(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Reference());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Reference(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsResourcefilesResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourcefilesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_request = buildGoogleApiHttpBody();
      var arg_parent = "foo";
      var arg_name = "foo";
      var arg_type = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleApiHttpBody.fromJson(json);
        checkGoogleApiHttpBody(obj);

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
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ResourceFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              name: arg_name, type: arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ResourceFile(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourcefilesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_parent = "foo";
      var arg_type = "foo";
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ResourceFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_parent, arg_type, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ResourceFile(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourcefilesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_parent = "foo";
      var arg_type = "foo";
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
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_parent, arg_type, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourcefilesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_parent = "foo";
      var arg_type = "foo";
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
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListEnvironmentResourcesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, type: arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListEnvironmentResourcesResponse(response);
      })));
    });

    unittest.test("method--listEnvironmentResources", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourcefilesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_parent = "foo";
      var arg_type = "foo";
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListEnvironmentResourcesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listEnvironmentResources(arg_parent, arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListEnvironmentResourcesResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsResourcefilesResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.resourcefiles;
      var arg_request = buildGoogleApiHttpBody();
      var arg_parent = "foo";
      var arg_type = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleApiHttpBody.fromJson(json);
        checkGoogleApiHttpBody(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1ResourceFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_parent, arg_type, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ResourceFile(response);
      })));
    });
  });

  unittest.group(
      "resource-OrganizationsEnvironmentsSharedflowsDeploymentsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsSharedflowsDeploymentsResourceApi res =
          new api.ApigeeApi(mock)
              .organizations
              .environments
              .sharedflows
              .deployments;
      var arg_parent = "foo";
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-OrganizationsEnvironmentsSharedflowsRevisionsResourceApi", () {
    unittest.test("method--deployments", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsSharedflowsRevisionsResourceApi res =
          new api.ApigeeApi(mock)
              .organizations
              .environments
              .sharedflows
              .revisions;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deployments(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--getDeployments", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsSharedflowsRevisionsResourceApi res =
          new api.ApigeeApi(mock)
              .organizations
              .environments
              .sharedflows
              .revisions;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Deployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDeployments(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Deployment(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsStatsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsStatsResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.stats;
      var arg_name = "foo";
      var arg_sonar = true;
      var arg_realtime = true;
      var arg_tzo = "foo";
      var arg_sortby = "foo";
      var arg_filter = "foo";
      var arg_timeUnit = "foo";
      var arg_aggTable = "foo";
      var arg_sort = "foo";
      var arg_topk = "foo";
      var arg_tsAscending = true;
      var arg_timeRange = "foo";
      var arg_select = "foo";
      var arg_limit = "foo";
      var arg_accuracy = "foo";
      var arg_offset = "foo";
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
        unittest.expect(queryMap["sonar"].first, unittest.equals("$arg_sonar"));
        unittest.expect(
            queryMap["realtime"].first, unittest.equals("$arg_realtime"));
        unittest.expect(queryMap["tzo"].first, unittest.equals(arg_tzo));
        unittest.expect(queryMap["sortby"].first, unittest.equals(arg_sortby));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["timeUnit"].first, unittest.equals(arg_timeUnit));
        unittest.expect(
            queryMap["aggTable"].first, unittest.equals(arg_aggTable));
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));
        unittest.expect(queryMap["topk"].first, unittest.equals(arg_topk));
        unittest.expect(
            queryMap["tsAscending"].first, unittest.equals("$arg_tsAscending"));
        unittest.expect(
            queryMap["timeRange"].first, unittest.equals(arg_timeRange));
        unittest.expect(queryMap["select"].first, unittest.equals(arg_select));
        unittest.expect(queryMap["limit"].first, unittest.equals(arg_limit));
        unittest.expect(
            queryMap["accuracy"].first, unittest.equals(arg_accuracy));
        unittest.expect(queryMap["offset"].first, unittest.equals(arg_offset));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1Stats());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              sonar: arg_sonar,
              realtime: arg_realtime,
              tzo: arg_tzo,
              sortby: arg_sortby,
              filter: arg_filter,
              timeUnit: arg_timeUnit,
              aggTable: arg_aggTable,
              sort: arg_sort,
              topk: arg_topk,
              tsAscending: arg_tsAscending,
              timeRange: arg_timeRange,
              select: arg_select,
              limit: arg_limit,
              accuracy: arg_accuracy,
              offset: arg_offset,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1Stats(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsEnvironmentsTargetserversResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsTargetserversResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.targetservers;
      var arg_request = buildGoogleCloudApigeeV1TargetServer();
      var arg_parent = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1TargetServer.fromJson(json);
        checkGoogleCloudApigeeV1TargetServer(obj);

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
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudApigeeV1TargetServer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1TargetServer(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsTargetserversResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.targetservers;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1TargetServer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1TargetServer(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsTargetserversResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.targetservers;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1TargetServer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1TargetServer(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsEnvironmentsTargetserversResourceApi res =
          new api.ApigeeApi(mock).organizations.environments.targetservers;
      var arg_request = buildGoogleCloudApigeeV1TargetServer();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1TargetServer.fromJson(json);
        checkGoogleCloudApigeeV1TargetServer(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1TargetServer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1TargetServer(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsKeyvaluemapsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsKeyvaluemapsResourceApi res =
          new api.ApigeeApi(mock).organizations.keyvaluemaps;
      var arg_request = buildGoogleCloudApigeeV1KeyValueMap();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1KeyValueMap.fromJson(json);
        checkGoogleCloudApigeeV1KeyValueMap(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsKeyvaluemapsResourceApi res =
          new api.ApigeeApi(mock).organizations.keyvaluemaps;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1KeyValueMap());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1KeyValueMap(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsOperationsResourceApi res =
          new api.ApigeeApi(mock).organizations.operations;
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
      api.OrganizationsOperationsResourceApi res =
          new api.ApigeeApi(mock).organizations.operations;
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

  unittest.group("resource-OrganizationsReportsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsReportsResourceApi res =
          new api.ApigeeApi(mock).organizations.reports;
      var arg_request = buildGoogleCloudApigeeV1CustomReport();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1CustomReport.fromJson(json);
        checkGoogleCloudApigeeV1CustomReport(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CustomReport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CustomReport(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsReportsResourceApi res =
          new api.ApigeeApi(mock).organizations.reports;
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1DeleteCustomReportResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1DeleteCustomReportResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsReportsResourceApi res =
          new api.ApigeeApi(mock).organizations.reports;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CustomReport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CustomReport(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsReportsResourceApi res =
          new api.ApigeeApi(mock).organizations.reports;
      var arg_parent = "foo";
      var arg_expand = true;
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
            queryMap["expand"].first, unittest.equals("$arg_expand"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListCustomReportsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, expand: arg_expand, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListCustomReportsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.OrganizationsReportsResourceApi res =
          new api.ApigeeApi(mock).organizations.reports;
      var arg_request = buildGoogleCloudApigeeV1CustomReport();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudApigeeV1CustomReport.fromJson(json);
        checkGoogleCloudApigeeV1CustomReport(obj);

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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1CustomReport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1CustomReport(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsSharedflowsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsSharedflowsResourceApi res =
          new api.ApigeeApi(mock).organizations.sharedflows;
      var arg_request = buildGoogleApiHttpBody();
      var arg_parent = "foo";
      var arg_name = "foo";
      var arg_action = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleApiHttpBody.fromJson(json);
        checkGoogleApiHttpBody(obj);

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
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1SharedFlowRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              name: arg_name, action: arg_action, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SharedFlowRevision(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsSharedflowsResourceApi res =
          new api.ApigeeApi(mock).organizations.sharedflows;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1SharedFlow());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SharedFlow(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsSharedflowsResourceApi res =
          new api.ApigeeApi(mock).organizations.sharedflows;
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
        var resp = convert.json.encode(buildGoogleCloudApigeeV1SharedFlow());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SharedFlow(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsSharedflowsResourceApi res =
          new api.ApigeeApi(mock).organizations.sharedflows;
      var arg_parent = "foo";
      var arg_includeMetaData = true;
      var arg_includeRevisions = true;
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
        unittest.expect(queryMap["includeMetaData"].first,
            unittest.equals("$arg_includeMetaData"));
        unittest.expect(queryMap["includeRevisions"].first,
            unittest.equals("$arg_includeRevisions"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListSharedFlowsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              includeMetaData: arg_includeMetaData,
              includeRevisions: arg_includeRevisions,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListSharedFlowsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsSharedflowsDeploymentsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsSharedflowsDeploymentsResourceApi res =
          new api.ApigeeApi(mock).organizations.sharedflows.deployments;
      var arg_parent = "foo";
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsSharedflowsRevisionsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsSharedflowsRevisionsResourceApi res =
          new api.ApigeeApi(mock).organizations.sharedflows.revisions;
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
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1SharedFlowRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SharedFlowRevision(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsSharedflowsRevisionsResourceApi res =
          new api.ApigeeApi(mock).organizations.sharedflows.revisions;
      var arg_name = "foo";
      var arg_format = "foo";
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
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, format: arg_format, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response);
      })));
    });

    unittest.test("method--updateSharedFlowRevision", () {
      var mock = new HttpServerMock();
      api.OrganizationsSharedflowsRevisionsResourceApi res =
          new api.ApigeeApi(mock).organizations.sharedflows.revisions;
      var arg_request = buildGoogleApiHttpBody();
      var arg_name = "foo";
      var arg_validate = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleApiHttpBody.fromJson(json);
        checkGoogleApiHttpBody(obj);

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
            queryMap["validate"].first, unittest.equals("$arg_validate"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudApigeeV1SharedFlowRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSharedFlowRevision(arg_request, arg_name,
              validate: arg_validate, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1SharedFlowRevision(response);
      })));
    });
  });

  unittest.group(
      "resource-OrganizationsSharedflowsRevisionsDeploymentsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsSharedflowsRevisionsDeploymentsResourceApi res =
          new api.ApigeeApi(mock)
              .organizations
              .sharedflows
              .revisions
              .deployments;
      var arg_parent = "foo";
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
        var resp = convert.json
            .encode(buildGoogleCloudApigeeV1ListDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudApigeeV1ListDeploymentsResponse(response);
      })));
    });
  });
}
