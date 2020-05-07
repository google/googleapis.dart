library googleapis_beta.billingbudgets.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/billingbudgets/v1beta1.dart' as api;

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

core.int buildCounterGoogleCloudBillingBudgetsV1beta1AllUpdatesRule = 0;
buildGoogleCloudBillingBudgetsV1beta1AllUpdatesRule() {
  var o = new api.GoogleCloudBillingBudgetsV1beta1AllUpdatesRule();
  buildCounterGoogleCloudBillingBudgetsV1beta1AllUpdatesRule++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1AllUpdatesRule < 3) {
    o.pubsubTopic = "foo";
    o.schemaVersion = "foo";
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1AllUpdatesRule--;
  return o;
}

checkGoogleCloudBillingBudgetsV1beta1AllUpdatesRule(
    api.GoogleCloudBillingBudgetsV1beta1AllUpdatesRule o) {
  buildCounterGoogleCloudBillingBudgetsV1beta1AllUpdatesRule++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1AllUpdatesRule < 3) {
    unittest.expect(o.pubsubTopic, unittest.equals('foo'));
    unittest.expect(o.schemaVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1AllUpdatesRule--;
}

buildUnnamed5529() {
  var o = new core.List<api.GoogleCloudBillingBudgetsV1beta1ThresholdRule>();
  o.add(buildGoogleCloudBillingBudgetsV1beta1ThresholdRule());
  o.add(buildGoogleCloudBillingBudgetsV1beta1ThresholdRule());
  return o;
}

checkUnnamed5529(
    core.List<api.GoogleCloudBillingBudgetsV1beta1ThresholdRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBudgetsV1beta1ThresholdRule(o[0]);
  checkGoogleCloudBillingBudgetsV1beta1ThresholdRule(o[1]);
}

core.int buildCounterGoogleCloudBillingBudgetsV1beta1Budget = 0;
buildGoogleCloudBillingBudgetsV1beta1Budget() {
  var o = new api.GoogleCloudBillingBudgetsV1beta1Budget();
  buildCounterGoogleCloudBillingBudgetsV1beta1Budget++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1Budget < 3) {
    o.allUpdatesRule = buildGoogleCloudBillingBudgetsV1beta1AllUpdatesRule();
    o.amount = buildGoogleCloudBillingBudgetsV1beta1BudgetAmount();
    o.budgetFilter = buildGoogleCloudBillingBudgetsV1beta1Filter();
    o.displayName = "foo";
    o.etag = "foo";
    o.name = "foo";
    o.thresholdRules = buildUnnamed5529();
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1Budget--;
  return o;
}

checkGoogleCloudBillingBudgetsV1beta1Budget(
    api.GoogleCloudBillingBudgetsV1beta1Budget o) {
  buildCounterGoogleCloudBillingBudgetsV1beta1Budget++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1Budget < 3) {
    checkGoogleCloudBillingBudgetsV1beta1AllUpdatesRule(o.allUpdatesRule);
    checkGoogleCloudBillingBudgetsV1beta1BudgetAmount(o.amount);
    checkGoogleCloudBillingBudgetsV1beta1Filter(o.budgetFilter);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5529(o.thresholdRules);
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1Budget--;
}

core.int buildCounterGoogleCloudBillingBudgetsV1beta1BudgetAmount = 0;
buildGoogleCloudBillingBudgetsV1beta1BudgetAmount() {
  var o = new api.GoogleCloudBillingBudgetsV1beta1BudgetAmount();
  buildCounterGoogleCloudBillingBudgetsV1beta1BudgetAmount++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1BudgetAmount < 3) {
    o.lastPeriodAmount =
        buildGoogleCloudBillingBudgetsV1beta1LastPeriodAmount();
    o.specifiedAmount = buildGoogleTypeMoney();
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1BudgetAmount--;
  return o;
}

checkGoogleCloudBillingBudgetsV1beta1BudgetAmount(
    api.GoogleCloudBillingBudgetsV1beta1BudgetAmount o) {
  buildCounterGoogleCloudBillingBudgetsV1beta1BudgetAmount++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1BudgetAmount < 3) {
    checkGoogleCloudBillingBudgetsV1beta1LastPeriodAmount(o.lastPeriodAmount);
    checkGoogleTypeMoney(o.specifiedAmount);
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1BudgetAmount--;
}

core.int buildCounterGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest = 0;
buildGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest() {
  var o = new api.GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest();
  buildCounterGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest < 3) {
    o.budget = buildGoogleCloudBillingBudgetsV1beta1Budget();
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest--;
  return o;
}

checkGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest(
    api.GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest o) {
  buildCounterGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest < 3) {
    checkGoogleCloudBillingBudgetsV1beta1Budget(o.budget);
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest--;
}

buildUnnamed5530() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5530(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5531() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5531(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudBillingBudgetsV1beta1Filter = 0;
buildGoogleCloudBillingBudgetsV1beta1Filter() {
  var o = new api.GoogleCloudBillingBudgetsV1beta1Filter();
  buildCounterGoogleCloudBillingBudgetsV1beta1Filter++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1Filter < 3) {
    o.creditTypesTreatment = "foo";
    o.projects = buildUnnamed5530();
    o.services = buildUnnamed5531();
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1Filter--;
  return o;
}

checkGoogleCloudBillingBudgetsV1beta1Filter(
    api.GoogleCloudBillingBudgetsV1beta1Filter o) {
  buildCounterGoogleCloudBillingBudgetsV1beta1Filter++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1Filter < 3) {
    unittest.expect(o.creditTypesTreatment, unittest.equals('foo'));
    checkUnnamed5530(o.projects);
    checkUnnamed5531(o.services);
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1Filter--;
}

core.int buildCounterGoogleCloudBillingBudgetsV1beta1LastPeriodAmount = 0;
buildGoogleCloudBillingBudgetsV1beta1LastPeriodAmount() {
  var o = new api.GoogleCloudBillingBudgetsV1beta1LastPeriodAmount();
  buildCounterGoogleCloudBillingBudgetsV1beta1LastPeriodAmount++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1LastPeriodAmount < 3) {}
  buildCounterGoogleCloudBillingBudgetsV1beta1LastPeriodAmount--;
  return o;
}

checkGoogleCloudBillingBudgetsV1beta1LastPeriodAmount(
    api.GoogleCloudBillingBudgetsV1beta1LastPeriodAmount o) {
  buildCounterGoogleCloudBillingBudgetsV1beta1LastPeriodAmount++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1LastPeriodAmount < 3) {}
  buildCounterGoogleCloudBillingBudgetsV1beta1LastPeriodAmount--;
}

buildUnnamed5532() {
  var o = new core.List<api.GoogleCloudBillingBudgetsV1beta1Budget>();
  o.add(buildGoogleCloudBillingBudgetsV1beta1Budget());
  o.add(buildGoogleCloudBillingBudgetsV1beta1Budget());
  return o;
}

checkUnnamed5532(core.List<api.GoogleCloudBillingBudgetsV1beta1Budget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBudgetsV1beta1Budget(o[0]);
  checkGoogleCloudBillingBudgetsV1beta1Budget(o[1]);
}

core.int buildCounterGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse = 0;
buildGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse() {
  var o = new api.GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse();
  buildCounterGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse < 3) {
    o.budgets = buildUnnamed5532();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse--;
  return o;
}

checkGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse(
    api.GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse o) {
  buildCounterGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse < 3) {
    checkUnnamed5532(o.budgets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse--;
}

core.int buildCounterGoogleCloudBillingBudgetsV1beta1ThresholdRule = 0;
buildGoogleCloudBillingBudgetsV1beta1ThresholdRule() {
  var o = new api.GoogleCloudBillingBudgetsV1beta1ThresholdRule();
  buildCounterGoogleCloudBillingBudgetsV1beta1ThresholdRule++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1ThresholdRule < 3) {
    o.spendBasis = "foo";
    o.thresholdPercent = 42.0;
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1ThresholdRule--;
  return o;
}

checkGoogleCloudBillingBudgetsV1beta1ThresholdRule(
    api.GoogleCloudBillingBudgetsV1beta1ThresholdRule o) {
  buildCounterGoogleCloudBillingBudgetsV1beta1ThresholdRule++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1ThresholdRule < 3) {
    unittest.expect(o.spendBasis, unittest.equals('foo'));
    unittest.expect(o.thresholdPercent, unittest.equals(42.0));
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1ThresholdRule--;
}

core.int buildCounterGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest = 0;
buildGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest() {
  var o = new api.GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest();
  buildCounterGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest < 3) {
    o.budget = buildGoogleCloudBillingBudgetsV1beta1Budget();
    o.updateMask = "foo";
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest--;
  return o;
}

checkGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest(
    api.GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest o) {
  buildCounterGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest++;
  if (buildCounterGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest < 3) {
    checkGoogleCloudBillingBudgetsV1beta1Budget(o.budget);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest--;
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

core.int buildCounterGoogleTypeMoney = 0;
buildGoogleTypeMoney() {
  var o = new api.GoogleTypeMoney();
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    o.currencyCode = "foo";
    o.nanos = 42;
    o.units = "foo";
  }
  buildCounterGoogleTypeMoney--;
  return o;
}

checkGoogleTypeMoney(api.GoogleTypeMoney o) {
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterGoogleTypeMoney--;
}

main() {
  unittest.group("obj-schema-GoogleCloudBillingBudgetsV1beta1AllUpdatesRule",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudBillingBudgetsV1beta1AllUpdatesRule();
      var od = new api.GoogleCloudBillingBudgetsV1beta1AllUpdatesRule.fromJson(
          o.toJson());
      checkGoogleCloudBillingBudgetsV1beta1AllUpdatesRule(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudBillingBudgetsV1beta1Budget", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudBillingBudgetsV1beta1Budget();
      var od =
          new api.GoogleCloudBillingBudgetsV1beta1Budget.fromJson(o.toJson());
      checkGoogleCloudBillingBudgetsV1beta1Budget(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudBillingBudgetsV1beta1BudgetAmount", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudBillingBudgetsV1beta1BudgetAmount();
      var od = new api.GoogleCloudBillingBudgetsV1beta1BudgetAmount.fromJson(
          o.toJson());
      checkGoogleCloudBillingBudgetsV1beta1BudgetAmount(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest();
      var od =
          new api.GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest.fromJson(
              o.toJson());
      checkGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudBillingBudgetsV1beta1Filter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudBillingBudgetsV1beta1Filter();
      var od =
          new api.GoogleCloudBillingBudgetsV1beta1Filter.fromJson(o.toJson());
      checkGoogleCloudBillingBudgetsV1beta1Filter(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudBillingBudgetsV1beta1LastPeriodAmount",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudBillingBudgetsV1beta1LastPeriodAmount();
      var od =
          new api.GoogleCloudBillingBudgetsV1beta1LastPeriodAmount.fromJson(
              o.toJson());
      checkGoogleCloudBillingBudgetsV1beta1LastPeriodAmount(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse();
      var od =
          new api.GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse.fromJson(
              o.toJson());
      checkGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudBillingBudgetsV1beta1ThresholdRule",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudBillingBudgetsV1beta1ThresholdRule();
      var od = new api.GoogleCloudBillingBudgetsV1beta1ThresholdRule.fromJson(
          o.toJson());
      checkGoogleCloudBillingBudgetsV1beta1ThresholdRule(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest();
      var od =
          new api.GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest.fromJson(
              o.toJson());
      checkGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeMoney", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeMoney();
      var od = new api.GoogleTypeMoney.fromJson(o.toJson());
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group("resource-BillingAccountsBudgetsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.BillingAccountsBudgetsResourceApi res =
          new api.BillingbudgetsApi(mock).billingAccounts.budgets;
      var arg_request =
          buildGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
            .GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest.fromJson(json);
        checkGoogleCloudBillingBudgetsV1beta1CreateBudgetRequest(obj);

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
            convert.json.encode(buildGoogleCloudBillingBudgetsV1beta1Budget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudBillingBudgetsV1beta1Budget(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.BillingAccountsBudgetsResourceApi res =
          new api.BillingbudgetsApi(mock).billingAccounts.budgets;
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
      api.BillingAccountsBudgetsResourceApi res =
          new api.BillingbudgetsApi(mock).billingAccounts.budgets;
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
        var resp =
            convert.json.encode(buildGoogleCloudBillingBudgetsV1beta1Budget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudBillingBudgetsV1beta1Budget(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BillingAccountsBudgetsResourceApi res =
          new api.BillingbudgetsApi(mock).billingAccounts.budgets;
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
        var resp = convert.json
            .encode(buildGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudBillingBudgetsV1beta1ListBudgetsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.BillingAccountsBudgetsResourceApi res =
          new api.BillingbudgetsApi(mock).billingAccounts.budgets;
      var arg_request =
          buildGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
            .GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest.fromJson(json);
        checkGoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest(obj);

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
            convert.json.encode(buildGoogleCloudBillingBudgetsV1beta1Budget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudBillingBudgetsV1beta1Budget(response);
      })));
    });
  });
}
