library googleapis.manufacturers.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/manufacturers/v1.dart' as api;

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

buildUnnamed3648() {
  var o = new core.List<api.Image>();
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

checkUnnamed3648(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

buildUnnamed3649() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3649(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3650() {
  var o = new core.List<api.FeatureDescription>();
  o.add(buildFeatureDescription());
  o.add(buildFeatureDescription());
  return o;
}

checkUnnamed3650(core.List<api.FeatureDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeatureDescription(o[0]);
  checkFeatureDescription(o[1]);
}

buildUnnamed3651() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3651(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3652() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3652(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3653() {
  var o = new core.List<api.ProductDetail>();
  o.add(buildProductDetail());
  o.add(buildProductDetail());
  return o;
}

checkUnnamed3653(core.List<api.ProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductDetail(o[0]);
  checkProductDetail(o[1]);
}

buildUnnamed3654() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3654(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3655() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3655(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAttributes = 0;
buildAttributes() {
  var o = new api.Attributes();
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    o.additionalImageLink = buildUnnamed3648();
    o.ageGroup = "foo";
    o.brand = "foo";
    o.capacity = buildCapacity();
    o.color = "foo";
    o.count = buildCount();
    o.description = "foo";
    o.disclosureDate = "foo";
    o.excludedDestination = buildUnnamed3649();
    o.featureDescription = buildUnnamed3650();
    o.flavor = "foo";
    o.format = "foo";
    o.gender = "foo";
    o.gtin = buildUnnamed3651();
    o.imageLink = buildImage();
    o.includedDestination = buildUnnamed3652();
    o.itemGroupId = "foo";
    o.material = "foo";
    o.mpn = "foo";
    o.pattern = "foo";
    o.productDetail = buildUnnamed3653();
    o.productLine = "foo";
    o.productName = "foo";
    o.productPageUrl = "foo";
    o.productType = buildUnnamed3654();
    o.releaseDate = "foo";
    o.scent = "foo";
    o.size = "foo";
    o.sizeSystem = "foo";
    o.sizeType = "foo";
    o.suggestedRetailPrice = buildPrice();
    o.targetClientId = "foo";
    o.theme = "foo";
    o.title = "foo";
    o.videoLink = buildUnnamed3655();
  }
  buildCounterAttributes--;
  return o;
}

checkAttributes(api.Attributes o) {
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    checkUnnamed3648(o.additionalImageLink);
    unittest.expect(o.ageGroup, unittest.equals('foo'));
    unittest.expect(o.brand, unittest.equals('foo'));
    checkCapacity(o.capacity);
    unittest.expect(o.color, unittest.equals('foo'));
    checkCount(o.count);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.disclosureDate, unittest.equals('foo'));
    checkUnnamed3649(o.excludedDestination);
    checkUnnamed3650(o.featureDescription);
    unittest.expect(o.flavor, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.gender, unittest.equals('foo'));
    checkUnnamed3651(o.gtin);
    checkImage(o.imageLink);
    checkUnnamed3652(o.includedDestination);
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.material, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.pattern, unittest.equals('foo'));
    checkUnnamed3653(o.productDetail);
    unittest.expect(o.productLine, unittest.equals('foo'));
    unittest.expect(o.productName, unittest.equals('foo'));
    unittest.expect(o.productPageUrl, unittest.equals('foo'));
    checkUnnamed3654(o.productType);
    unittest.expect(o.releaseDate, unittest.equals('foo'));
    unittest.expect(o.scent, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.sizeSystem, unittest.equals('foo'));
    unittest.expect(o.sizeType, unittest.equals('foo'));
    checkPrice(o.suggestedRetailPrice);
    unittest.expect(o.targetClientId, unittest.equals('foo'));
    unittest.expect(o.theme, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed3655(o.videoLink);
  }
  buildCounterAttributes--;
}

core.int buildCounterCapacity = 0;
buildCapacity() {
  var o = new api.Capacity();
  buildCounterCapacity++;
  if (buildCounterCapacity < 3) {
    o.unit = "foo";
    o.value = "foo";
  }
  buildCounterCapacity--;
  return o;
}

checkCapacity(api.Capacity o) {
  buildCounterCapacity++;
  if (buildCounterCapacity < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCapacity--;
}

core.int buildCounterCount = 0;
buildCount() {
  var o = new api.Count();
  buildCounterCount++;
  if (buildCounterCount < 3) {
    o.unit = "foo";
    o.value = "foo";
  }
  buildCounterCount--;
  return o;
}

checkCount(api.Count o) {
  buildCounterCount++;
  if (buildCounterCount < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCount--;
}

core.int buildCounterDestinationStatus = 0;
buildDestinationStatus() {
  var o = new api.DestinationStatus();
  buildCounterDestinationStatus++;
  if (buildCounterDestinationStatus < 3) {
    o.destination = "foo";
    o.status = "foo";
  }
  buildCounterDestinationStatus--;
  return o;
}

checkDestinationStatus(api.DestinationStatus o) {
  buildCounterDestinationStatus++;
  if (buildCounterDestinationStatus < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterDestinationStatus--;
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

core.int buildCounterFeatureDescription = 0;
buildFeatureDescription() {
  var o = new api.FeatureDescription();
  buildCounterFeatureDescription++;
  if (buildCounterFeatureDescription < 3) {
    o.headline = "foo";
    o.image = buildImage();
    o.text = "foo";
  }
  buildCounterFeatureDescription--;
  return o;
}

checkFeatureDescription(api.FeatureDescription o) {
  buildCounterFeatureDescription++;
  if (buildCounterFeatureDescription < 3) {
    unittest.expect(o.headline, unittest.equals('foo'));
    checkImage(o.image);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterFeatureDescription--;
}

core.int buildCounterImage = 0;
buildImage() {
  var o = new api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.imageUrl = "foo";
    o.status = "foo";
    o.type = "foo";
  }
  buildCounterImage--;
  return o;
}

checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterImage--;
}

core.int buildCounterIssue = 0;
buildIssue() {
  var o = new api.Issue();
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    o.attribute = "foo";
    o.description = "foo";
    o.destination = "foo";
    o.resolution = "foo";
    o.severity = "foo";
    o.timestamp = "foo";
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterIssue--;
  return o;
}

checkIssue(api.Issue o) {
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    unittest.expect(o.attribute, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.resolution, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterIssue--;
}

buildUnnamed3656() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed3656(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterListProductsResponse = 0;
buildListProductsResponse() {
  var o = new api.ListProductsResponse();
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    o.nextPageToken = "foo";
    o.products = buildUnnamed3656();
  }
  buildCounterListProductsResponse--;
  return o;
}

checkListProductsResponse(api.ListProductsResponse o) {
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3656(o.products);
  }
  buildCounterListProductsResponse--;
}

core.int buildCounterPrice = 0;
buildPrice() {
  var o = new api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amount = "foo";
    o.currency = "foo";
  }
  buildCounterPrice--;
  return o;
}

checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.amount, unittest.equals('foo'));
    unittest.expect(o.currency, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

buildUnnamed3657() {
  var o = new core.List<api.DestinationStatus>();
  o.add(buildDestinationStatus());
  o.add(buildDestinationStatus());
  return o;
}

checkUnnamed3657(core.List<api.DestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestinationStatus(o[0]);
  checkDestinationStatus(o[1]);
}

buildUnnamed3658() {
  var o = new core.List<api.Issue>();
  o.add(buildIssue());
  o.add(buildIssue());
  return o;
}

checkUnnamed3658(core.List<api.Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssue(o[0]);
  checkIssue(o[1]);
}

core.int buildCounterProduct = 0;
buildProduct() {
  var o = new api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.attributes = buildAttributes();
    o.contentLanguage = "foo";
    o.destinationStatuses = buildUnnamed3657();
    o.issues = buildUnnamed3658();
    o.name = "foo";
    o.parent = "foo";
    o.productId = "foo";
    o.targetCountry = "foo";
  }
  buildCounterProduct--;
  return o;
}

checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkAttributes(o.attributes);
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    checkUnnamed3657(o.destinationStatuses);
    checkUnnamed3658(o.issues);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
  }
  buildCounterProduct--;
}

core.int buildCounterProductDetail = 0;
buildProductDetail() {
  var o = new api.ProductDetail();
  buildCounterProductDetail++;
  if (buildCounterProductDetail < 3) {
    o.attributeName = "foo";
    o.attributeValue = "foo";
    o.sectionName = "foo";
  }
  buildCounterProductDetail--;
  return o;
}

checkProductDetail(api.ProductDetail o) {
  buildCounterProductDetail++;
  if (buildCounterProductDetail < 3) {
    unittest.expect(o.attributeName, unittest.equals('foo'));
    unittest.expect(o.attributeValue, unittest.equals('foo'));
    unittest.expect(o.sectionName, unittest.equals('foo'));
  }
  buildCounterProductDetail--;
}

buildUnnamed3659() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3659(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3660() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3660(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Attributes", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttributes();
      var od = new api.Attributes.fromJson(o.toJson());
      checkAttributes(od);
    });
  });

  unittest.group("obj-schema-Capacity", () {
    unittest.test("to-json--from-json", () {
      var o = buildCapacity();
      var od = new api.Capacity.fromJson(o.toJson());
      checkCapacity(od);
    });
  });

  unittest.group("obj-schema-Count", () {
    unittest.test("to-json--from-json", () {
      var o = buildCount();
      var od = new api.Count.fromJson(o.toJson());
      checkCount(od);
    });
  });

  unittest.group("obj-schema-DestinationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildDestinationStatus();
      var od = new api.DestinationStatus.fromJson(o.toJson());
      checkDestinationStatus(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-FeatureDescription", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeatureDescription();
      var od = new api.FeatureDescription.fromJson(o.toJson());
      checkFeatureDescription(od);
    });
  });

  unittest.group("obj-schema-Image", () {
    unittest.test("to-json--from-json", () {
      var o = buildImage();
      var od = new api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });

  unittest.group("obj-schema-Issue", () {
    unittest.test("to-json--from-json", () {
      var o = buildIssue();
      var od = new api.Issue.fromJson(o.toJson());
      checkIssue(od);
    });
  });

  unittest.group("obj-schema-ListProductsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListProductsResponse();
      var od = new api.ListProductsResponse.fromJson(o.toJson());
      checkListProductsResponse(od);
    });
  });

  unittest.group("obj-schema-Price", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrice();
      var od = new api.Price.fromJson(o.toJson());
      checkPrice(od);
    });
  });

  unittest.group("obj-schema-Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildProduct();
      var od = new api.Product.fromJson(o.toJson());
      checkProduct(od);
    });
  });

  unittest.group("obj-schema-ProductDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductDetail();
      var od = new api.ProductDetail.fromJson(o.toJson());
      checkProductDetail(od);
    });
  });

  unittest.group("resource-AccountsProductsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AccountsProductsResourceApi res =
          new api.ManufacturersApi(mock).accounts.products;
      var arg_parent = "foo";
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
          .delete(arg_parent, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsProductsResourceApi res =
          new api.ManufacturersApi(mock).accounts.products;
      var arg_parent = "foo";
      var arg_name = "foo";
      var arg_include = buildUnnamed3659();
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
        unittest.expect(queryMap["include"], unittest.equals(arg_include));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_parent, arg_name, include: arg_include, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsProductsResourceApi res =
          new api.ManufacturersApi(mock).accounts.products;
      var arg_parent = "foo";
      var arg_include = buildUnnamed3660();
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
        unittest.expect(queryMap["include"], unittest.equals(arg_include));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListProductsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              include: arg_include,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListProductsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccountsProductsResourceApi res =
          new api.ManufacturersApi(mock).accounts.products;
      var arg_request = buildAttributes();
      var arg_parent = "foo";
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Attributes.fromJson(json);
        checkAttributes(obj);

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
          .update(arg_request, arg_parent, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });
}
