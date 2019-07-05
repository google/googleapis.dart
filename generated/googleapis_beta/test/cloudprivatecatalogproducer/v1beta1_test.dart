library googleapis_beta.cloudprivatecatalogproducer.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/cloudprivatecatalogproducer/v1beta1.dart'
    as api;

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

core.int buildCounterGoogleCloudPrivatecatalogproducerV1beta1Association = 0;
buildGoogleCloudPrivatecatalogproducerV1beta1Association() {
  var o = new api.GoogleCloudPrivatecatalogproducerV1beta1Association();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Association++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1Association < 3) {
    o.createTime = "foo";
    o.name = "foo";
    o.resource = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Association--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1Association(
    api.GoogleCloudPrivatecatalogproducerV1beta1Association o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Association++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1Association < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Association--;
}

core.int buildCounterGoogleCloudPrivatecatalogproducerV1beta1Catalog = 0;
buildGoogleCloudPrivatecatalogproducerV1beta1Catalog() {
  var o = new api.GoogleCloudPrivatecatalogproducerV1beta1Catalog();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Catalog++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1Catalog < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.parent = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Catalog--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1Catalog(
    api.GoogleCloudPrivatecatalogproducerV1beta1Catalog o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Catalog++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1Catalog < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Catalog--;
}

core.int
    buildCounterGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest = 0;
buildGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest() {
  var o = new api.GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest <
      3) {
    o.destinationProductName = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest(
    api.GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest <
      3) {
    unittest.expect(o.destinationProductName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest--;
}

core.int
    buildCounterGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest =
    0;
buildGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest() {
  var o = new api
      .GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest <
      3) {
    o.association = buildGoogleCloudPrivatecatalogproducerV1beta1Association();
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest(
    api.GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest <
      3) {
    checkGoogleCloudPrivatecatalogproducerV1beta1Association(o.association);
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest--;
}

buildUnnamed5074() {
  var o =
      new core.List<api.GoogleCloudPrivatecatalogproducerV1beta1Association>();
  o.add(buildGoogleCloudPrivatecatalogproducerV1beta1Association());
  o.add(buildGoogleCloudPrivatecatalogproducerV1beta1Association());
  return o;
}

checkUnnamed5074(
    core.List<api.GoogleCloudPrivatecatalogproducerV1beta1Association> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPrivatecatalogproducerV1beta1Association(o[0]);
  checkGoogleCloudPrivatecatalogproducerV1beta1Association(o[1]);
}

core.int
    buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse =
    0;
buildGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse() {
  var o = new api
      .GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse <
      3) {
    o.associations = buildUnnamed5074();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse(
    api.GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse <
      3) {
    checkUnnamed5074(o.associations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse--;
}

buildUnnamed5075() {
  var o = new core.List<api.GoogleCloudPrivatecatalogproducerV1beta1Catalog>();
  o.add(buildGoogleCloudPrivatecatalogproducerV1beta1Catalog());
  o.add(buildGoogleCloudPrivatecatalogproducerV1beta1Catalog());
  return o;
}

checkUnnamed5075(
    core.List<api.GoogleCloudPrivatecatalogproducerV1beta1Catalog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPrivatecatalogproducerV1beta1Catalog(o[0]);
  checkGoogleCloudPrivatecatalogproducerV1beta1Catalog(o[1]);
}

core.int
    buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse =
    0;
buildGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse() {
  var o =
      new api.GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse <
      3) {
    o.catalogs = buildUnnamed5075();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse(
    api.GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse <
      3) {
    checkUnnamed5075(o.catalogs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse--;
}

buildUnnamed5076() {
  var o = new core.List<api.GoogleCloudPrivatecatalogproducerV1beta1Product>();
  o.add(buildGoogleCloudPrivatecatalogproducerV1beta1Product());
  o.add(buildGoogleCloudPrivatecatalogproducerV1beta1Product());
  return o;
}

checkUnnamed5076(
    core.List<api.GoogleCloudPrivatecatalogproducerV1beta1Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPrivatecatalogproducerV1beta1Product(o[0]);
  checkGoogleCloudPrivatecatalogproducerV1beta1Product(o[1]);
}

core.int
    buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse =
    0;
buildGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse() {
  var o =
      new api.GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse <
      3) {
    o.nextPageToken = "foo";
    o.products = buildUnnamed5076();
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse(
    api.GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse <
      3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5076(o.products);
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse--;
}

buildUnnamed5077() {
  var o = new core.List<api.GoogleCloudPrivatecatalogproducerV1beta1Version>();
  o.add(buildGoogleCloudPrivatecatalogproducerV1beta1Version());
  o.add(buildGoogleCloudPrivatecatalogproducerV1beta1Version());
  return o;
}

checkUnnamed5077(
    core.List<api.GoogleCloudPrivatecatalogproducerV1beta1Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPrivatecatalogproducerV1beta1Version(o[0]);
  checkGoogleCloudPrivatecatalogproducerV1beta1Version(o[1]);
}

core.int
    buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse =
    0;
buildGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse() {
  var o =
      new api.GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse <
      3) {
    o.nextPageToken = "foo";
    o.versions = buildUnnamed5077();
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse(
    api.GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse <
      3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5077(o.versions);
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse--;
}

buildUnnamed5078() {
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

checkUnnamed5078(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudPrivatecatalogproducerV1beta1Product = 0;
buildGoogleCloudPrivatecatalogproducerV1beta1Product() {
  var o = new api.GoogleCloudPrivatecatalogproducerV1beta1Product();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Product++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1Product < 3) {
    o.assetType = "foo";
    o.createTime = "foo";
    o.displayMetadata = buildUnnamed5078();
    o.iconUri = "foo";
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Product--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1Product(
    api.GoogleCloudPrivatecatalogproducerV1beta1Product o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Product++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1Product < 3) {
    unittest.expect(o.assetType, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed5078(o.displayMetadata);
    unittest.expect(o.iconUri, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Product--;
}

core.int
    buildCounterGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest =
    0;
buildGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest() {
  var o =
      new api.GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest <
      3) {}
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest(
    api.GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest <
      3) {}
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest--;
}

core.int buildCounterGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest =
    0;
buildGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest() {
  var o = new api.GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest <
      3) {
    o.icon = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest(
    api.GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest <
      3) {
    unittest.expect(o.icon, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest--;
}

buildUnnamed5079() {
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

checkUnnamed5079(core.Map<core.String, core.Object> o) {
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

buildUnnamed5080() {
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

checkUnnamed5080(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudPrivatecatalogproducerV1beta1Version = 0;
buildGoogleCloudPrivatecatalogproducerV1beta1Version() {
  var o = new api.GoogleCloudPrivatecatalogproducerV1beta1Version();
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Version++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1Version < 3) {
    o.asset = buildUnnamed5079();
    o.createTime = "foo";
    o.description = "foo";
    o.name = "foo";
    o.originalAsset = buildUnnamed5080();
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Version--;
  return o;
}

checkGoogleCloudPrivatecatalogproducerV1beta1Version(
    api.GoogleCloudPrivatecatalogproducerV1beta1Version o) {
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Version++;
  if (buildCounterGoogleCloudPrivatecatalogproducerV1beta1Version < 3) {
    checkUnnamed5079(o.asset);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5080(o.originalAsset);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogproducerV1beta1Version--;
}

buildUnnamed5081() {
  var o = new core.List<api.GoogleIamV1AuditLogConfig>();
  o.add(buildGoogleIamV1AuditLogConfig());
  o.add(buildGoogleIamV1AuditLogConfig());
  return o;
}

checkUnnamed5081(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
buildGoogleIamV1AuditConfig() {
  var o = new api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed5081();
    o.service = "foo";
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed5081(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

buildUnnamed5082() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5082(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
buildGoogleIamV1AuditLogConfig() {
  var o = new api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed5082();
    o.logType = "foo";
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed5082(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

buildUnnamed5083() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5083(core.List<core.String> o) {
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
    o.members = buildUnnamed5083();
    o.role = "foo";
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition);
    checkUnnamed5083(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

buildUnnamed5084() {
  var o = new core.List<api.GoogleIamV1AuditConfig>();
  o.add(buildGoogleIamV1AuditConfig());
  o.add(buildGoogleIamV1AuditConfig());
  return o;
}

checkUnnamed5084(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

buildUnnamed5085() {
  var o = new core.List<api.GoogleIamV1Binding>();
  o.add(buildGoogleIamV1Binding());
  o.add(buildGoogleIamV1Binding());
  return o;
}

checkUnnamed5085(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
buildGoogleIamV1Policy() {
  var o = new api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed5084();
    o.bindings = buildUnnamed5085();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed5084(o.auditConfigs);
    checkUnnamed5085(o.bindings);
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

buildUnnamed5086() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5086(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
buildGoogleIamV1TestIamPermissionsRequest() {
  var o = new api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed5086();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

checkGoogleIamV1TestIamPermissionsRequest(
    api.GoogleIamV1TestIamPermissionsRequest o) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed5086(o.permissions);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

buildUnnamed5087() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5087(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
buildGoogleIamV1TestIamPermissionsResponse() {
  var o = new api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed5087();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

checkGoogleIamV1TestIamPermissionsResponse(
    api.GoogleIamV1TestIamPermissionsResponse o) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed5087(o.permissions);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
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

buildUnnamed5088() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed5088(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed5088();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5088(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed5089() {
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

checkUnnamed5089(core.Map<core.String, core.Object> o) {
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

buildUnnamed5090() {
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

checkUnnamed5090(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed5089();
    o.name = "foo";
    o.response = buildUnnamed5090();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed5089(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5090(o.response);
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

buildUnnamed5091() {
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

checkUnnamed5091(core.Map<core.String, core.Object> o) {
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

buildUnnamed5092() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed5091());
  o.add(buildUnnamed5091());
  return o;
}

checkUnnamed5092(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5091(o[0]);
  checkUnnamed5091(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5092();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5092(o.details);
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
  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogproducerV1beta1Association", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogproducerV1beta1Association();
      var od =
          new api.GoogleCloudPrivatecatalogproducerV1beta1Association.fromJson(
              o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1Association(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudPrivatecatalogproducerV1beta1Catalog",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogproducerV1beta1Catalog();
      var od = new api.GoogleCloudPrivatecatalogproducerV1beta1Catalog.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1Catalog(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest();
      var od = new api
              .GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest();
      var od = new api
              .GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse();
      var od = new api
              .GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse();
      var od = new api
              .GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse();
      var od = new api
              .GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse();
      var od = new api
              .GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudPrivatecatalogproducerV1beta1Product",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogproducerV1beta1Product();
      var od = new api.GoogleCloudPrivatecatalogproducerV1beta1Product.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1Product(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest();
      var od = new api
              .GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest();
      var od = new api
              .GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudPrivatecatalogproducerV1beta1Version",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogproducerV1beta1Version();
      var od = new api.GoogleCloudPrivatecatalogproducerV1beta1Version.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogproducerV1beta1Version(od);
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

  unittest.group("resource-CatalogsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CatalogsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs;
      var arg_request = buildGoogleCloudPrivatecatalogproducerV1beta1Catalog();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudPrivatecatalogproducerV1beta1Catalog.fromJson(
                json);
        checkGoogleCloudPrivatecatalogproducerV1beta1Catalog(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1beta1/catalogs"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CatalogsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs;
      var arg_name = "foo";
      var arg_force = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Catalog());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Catalog(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CatalogsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Catalog());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Catalog(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.CatalogsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs;
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .getIamPolicy(arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CatalogsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1beta1/catalogs"));
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              parent: arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse(
            response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CatalogsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs;
      var arg_request = buildGoogleCloudPrivatecatalogproducerV1beta1Catalog();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudPrivatecatalogproducerV1beta1Catalog.fromJson(
                json);
        checkGoogleCloudPrivatecatalogproducerV1beta1Catalog(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Catalog());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Catalog(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.CatalogsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.CatalogsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--undelete", () {
      var mock = new HttpServerMock();
      api.CatalogsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs;
      var arg_request =
          buildGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest.fromJson(
            json);
        checkGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest(
            obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Catalog());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undelete(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Catalog(response);
      })));
    });
  });

  unittest.group("resource-CatalogsAssociationsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CatalogsAssociationsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.associations;
      var arg_request =
          buildGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest.fromJson(
            json);
        checkGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest(
            obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Association());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Association(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CatalogsAssociationsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.associations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CatalogsAssociationsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.associations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Association());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Association(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CatalogsAssociationsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.associations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse(
            response);
      })));
    });
  });

  unittest.group("resource-CatalogsProductsResourceApi", () {
    unittest.test("method--copy", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.products;
      var arg_request =
          buildGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest.fromJson(
            json);
        checkGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .copy(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.products;
      var arg_request = buildGoogleCloudPrivatecatalogproducerV1beta1Product();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudPrivatecatalogproducerV1beta1Product.fromJson(
                json);
        checkGoogleCloudPrivatecatalogproducerV1beta1Product(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Product());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Product(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.products;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.products;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Product());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Product(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.products;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse(
            response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.products;
      var arg_request = buildGoogleCloudPrivatecatalogproducerV1beta1Product();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudPrivatecatalogproducerV1beta1Product.fromJson(
                json);
        checkGoogleCloudPrivatecatalogproducerV1beta1Product(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Product());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Product(response);
      })));
    });
  });

  unittest.group("resource-CatalogsProductsIconsResourceApi", () {
    unittest.test("method--upload", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsIconsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).catalogs.products.icons;
      var arg_request =
          buildGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest();
      var arg_product = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest.fromJson(
            json);
        checkGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .upload(arg_request, arg_product, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });
  });

  unittest.group("resource-CatalogsProductsVersionsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsVersionsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock)
              .catalogs
              .products
              .versions;
      var arg_request = buildGoogleCloudPrivatecatalogproducerV1beta1Version();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudPrivatecatalogproducerV1beta1Version.fromJson(
                json);
        checkGoogleCloudPrivatecatalogproducerV1beta1Version(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      api.CatalogsProductsVersionsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock)
              .catalogs
              .products
              .versions;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsVersionsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock)
              .catalogs
              .products
              .versions;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Version());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Version(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsVersionsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock)
              .catalogs
              .products
              .versions;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse(
            response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CatalogsProductsVersionsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock)
              .catalogs
              .products
              .versions;
      var arg_request = buildGoogleCloudPrivatecatalogproducerV1beta1Version();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudPrivatecatalogproducerV1beta1Version.fromJson(
                json);
        checkGoogleCloudPrivatecatalogproducerV1beta1Version(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json
            .encode(buildGoogleCloudPrivatecatalogproducerV1beta1Version());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogproducerV1beta1Version(response);
      })));
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      api.OperationsResourceApi res =
          new api.CloudprivatecatalogproducerApi(mock).operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1beta1/operations"));
        pathOffset += 18;

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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              name: arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });
}
