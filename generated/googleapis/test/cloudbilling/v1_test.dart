library googleapis.cloudbilling.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudbilling/v1.dart' as api;

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

core.int buildCounterAggregationInfo = 0;
buildAggregationInfo() {
  var o = new api.AggregationInfo();
  buildCounterAggregationInfo++;
  if (buildCounterAggregationInfo < 3) {
    o.aggregationCount = 42;
    o.aggregationInterval = "foo";
    o.aggregationLevel = "foo";
  }
  buildCounterAggregationInfo--;
  return o;
}

checkAggregationInfo(api.AggregationInfo o) {
  buildCounterAggregationInfo++;
  if (buildCounterAggregationInfo < 3) {
    unittest.expect(o.aggregationCount, unittest.equals(42));
    unittest.expect(o.aggregationInterval, unittest.equals('foo'));
    unittest.expect(o.aggregationLevel, unittest.equals('foo'));
  }
  buildCounterAggregationInfo--;
}

buildUnnamed876() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed876(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed876();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed876(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed877() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed877(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed877();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed877(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterBillingAccount = 0;
buildBillingAccount() {
  var o = new api.BillingAccount();
  buildCounterBillingAccount++;
  if (buildCounterBillingAccount < 3) {
    o.displayName = "foo";
    o.masterBillingAccount = "foo";
    o.name = "foo";
    o.open = true;
  }
  buildCounterBillingAccount--;
  return o;
}

checkBillingAccount(api.BillingAccount o) {
  buildCounterBillingAccount++;
  if (buildCounterBillingAccount < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.masterBillingAccount, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.open, unittest.isTrue);
  }
  buildCounterBillingAccount--;
}

buildUnnamed878() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed878(core.List<core.String> o) {
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
    o.members = buildUnnamed878();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed878(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCategory = 0;
buildCategory() {
  var o = new api.Category();
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    o.resourceFamily = "foo";
    o.resourceGroup = "foo";
    o.serviceDisplayName = "foo";
    o.usageType = "foo";
  }
  buildCounterCategory--;
  return o;
}

checkCategory(api.Category o) {
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    unittest.expect(o.resourceFamily, unittest.equals('foo'));
    unittest.expect(o.resourceGroup, unittest.equals('foo'));
    unittest.expect(o.serviceDisplayName, unittest.equals('foo'));
    unittest.expect(o.usageType, unittest.equals('foo'));
  }
  buildCounterCategory--;
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

buildUnnamed879() {
  var o = new core.List<api.BillingAccount>();
  o.add(buildBillingAccount());
  o.add(buildBillingAccount());
  return o;
}

checkUnnamed879(core.List<api.BillingAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingAccount(o[0]);
  checkBillingAccount(o[1]);
}

core.int buildCounterListBillingAccountsResponse = 0;
buildListBillingAccountsResponse() {
  var o = new api.ListBillingAccountsResponse();
  buildCounterListBillingAccountsResponse++;
  if (buildCounterListBillingAccountsResponse < 3) {
    o.billingAccounts = buildUnnamed879();
    o.nextPageToken = "foo";
  }
  buildCounterListBillingAccountsResponse--;
  return o;
}

checkListBillingAccountsResponse(api.ListBillingAccountsResponse o) {
  buildCounterListBillingAccountsResponse++;
  if (buildCounterListBillingAccountsResponse < 3) {
    checkUnnamed879(o.billingAccounts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListBillingAccountsResponse--;
}

buildUnnamed880() {
  var o = new core.List<api.ProjectBillingInfo>();
  o.add(buildProjectBillingInfo());
  o.add(buildProjectBillingInfo());
  return o;
}

checkUnnamed880(core.List<api.ProjectBillingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjectBillingInfo(o[0]);
  checkProjectBillingInfo(o[1]);
}

core.int buildCounterListProjectBillingInfoResponse = 0;
buildListProjectBillingInfoResponse() {
  var o = new api.ListProjectBillingInfoResponse();
  buildCounterListProjectBillingInfoResponse++;
  if (buildCounterListProjectBillingInfoResponse < 3) {
    o.nextPageToken = "foo";
    o.projectBillingInfo = buildUnnamed880();
  }
  buildCounterListProjectBillingInfoResponse--;
  return o;
}

checkListProjectBillingInfoResponse(api.ListProjectBillingInfoResponse o) {
  buildCounterListProjectBillingInfoResponse++;
  if (buildCounterListProjectBillingInfoResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed880(o.projectBillingInfo);
  }
  buildCounterListProjectBillingInfoResponse--;
}

buildUnnamed881() {
  var o = new core.List<api.Service>();
  o.add(buildService());
  o.add(buildService());
  return o;
}

checkUnnamed881(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterListServicesResponse = 0;
buildListServicesResponse() {
  var o = new api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = "foo";
    o.services = buildUnnamed881();
  }
  buildCounterListServicesResponse--;
  return o;
}

checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed881(o.services);
  }
  buildCounterListServicesResponse--;
}

buildUnnamed882() {
  var o = new core.List<api.Sku>();
  o.add(buildSku());
  o.add(buildSku());
  return o;
}

checkUnnamed882(core.List<api.Sku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSku(o[0]);
  checkSku(o[1]);
}

core.int buildCounterListSkusResponse = 0;
buildListSkusResponse() {
  var o = new api.ListSkusResponse();
  buildCounterListSkusResponse++;
  if (buildCounterListSkusResponse < 3) {
    o.nextPageToken = "foo";
    o.skus = buildUnnamed882();
  }
  buildCounterListSkusResponse--;
  return o;
}

checkListSkusResponse(api.ListSkusResponse o) {
  buildCounterListSkusResponse++;
  if (buildCounterListSkusResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed882(o.skus);
  }
  buildCounterListSkusResponse--;
}

core.int buildCounterMoney = 0;
buildMoney() {
  var o = new api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = "foo";
    o.nanos = 42;
    o.units = "foo";
  }
  buildCounterMoney--;
  return o;
}

checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

buildUnnamed883() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed883(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed884() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed884(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed883();
    o.bindings = buildUnnamed884();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed883(o.auditConfigs);
    checkUnnamed884(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

buildUnnamed885() {
  var o = new core.List<api.TierRate>();
  o.add(buildTierRate());
  o.add(buildTierRate());
  return o;
}

checkUnnamed885(core.List<api.TierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTierRate(o[0]);
  checkTierRate(o[1]);
}

core.int buildCounterPricingExpression = 0;
buildPricingExpression() {
  var o = new api.PricingExpression();
  buildCounterPricingExpression++;
  if (buildCounterPricingExpression < 3) {
    o.baseUnit = "foo";
    o.baseUnitConversionFactor = 42.0;
    o.baseUnitDescription = "foo";
    o.displayQuantity = 42.0;
    o.tieredRates = buildUnnamed885();
    o.usageUnit = "foo";
    o.usageUnitDescription = "foo";
  }
  buildCounterPricingExpression--;
  return o;
}

checkPricingExpression(api.PricingExpression o) {
  buildCounterPricingExpression++;
  if (buildCounterPricingExpression < 3) {
    unittest.expect(o.baseUnit, unittest.equals('foo'));
    unittest.expect(o.baseUnitConversionFactor, unittest.equals(42.0));
    unittest.expect(o.baseUnitDescription, unittest.equals('foo'));
    unittest.expect(o.displayQuantity, unittest.equals(42.0));
    checkUnnamed885(o.tieredRates);
    unittest.expect(o.usageUnit, unittest.equals('foo'));
    unittest.expect(o.usageUnitDescription, unittest.equals('foo'));
  }
  buildCounterPricingExpression--;
}

core.int buildCounterPricingInfo = 0;
buildPricingInfo() {
  var o = new api.PricingInfo();
  buildCounterPricingInfo++;
  if (buildCounterPricingInfo < 3) {
    o.aggregationInfo = buildAggregationInfo();
    o.currencyConversionRate = 42.0;
    o.effectiveTime = "foo";
    o.pricingExpression = buildPricingExpression();
    o.summary = "foo";
  }
  buildCounterPricingInfo--;
  return o;
}

checkPricingInfo(api.PricingInfo o) {
  buildCounterPricingInfo++;
  if (buildCounterPricingInfo < 3) {
    checkAggregationInfo(o.aggregationInfo);
    unittest.expect(o.currencyConversionRate, unittest.equals(42.0));
    unittest.expect(o.effectiveTime, unittest.equals('foo'));
    checkPricingExpression(o.pricingExpression);
    unittest.expect(o.summary, unittest.equals('foo'));
  }
  buildCounterPricingInfo--;
}

core.int buildCounterProjectBillingInfo = 0;
buildProjectBillingInfo() {
  var o = new api.ProjectBillingInfo();
  buildCounterProjectBillingInfo++;
  if (buildCounterProjectBillingInfo < 3) {
    o.billingAccountName = "foo";
    o.billingEnabled = true;
    o.name = "foo";
    o.projectId = "foo";
  }
  buildCounterProjectBillingInfo--;
  return o;
}

checkProjectBillingInfo(api.ProjectBillingInfo o) {
  buildCounterProjectBillingInfo++;
  if (buildCounterProjectBillingInfo < 3) {
    unittest.expect(o.billingAccountName, unittest.equals('foo'));
    unittest.expect(o.billingEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterProjectBillingInfo--;
}

core.int buildCounterService = 0;
buildService() {
  var o = new api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.businessEntityName = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.serviceId = "foo";
  }
  buildCounterService--;
  return o;
}

checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.businessEntityName, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.serviceId, unittest.equals('foo'));
  }
  buildCounterService--;
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

buildUnnamed886() {
  var o = new core.List<api.PricingInfo>();
  o.add(buildPricingInfo());
  o.add(buildPricingInfo());
  return o;
}

checkUnnamed886(core.List<api.PricingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricingInfo(o[0]);
  checkPricingInfo(o[1]);
}

buildUnnamed887() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed887(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSku = 0;
buildSku() {
  var o = new api.Sku();
  buildCounterSku++;
  if (buildCounterSku < 3) {
    o.category = buildCategory();
    o.description = "foo";
    o.name = "foo";
    o.pricingInfo = buildUnnamed886();
    o.serviceProviderName = "foo";
    o.serviceRegions = buildUnnamed887();
    o.skuId = "foo";
  }
  buildCounterSku--;
  return o;
}

checkSku(api.Sku o) {
  buildCounterSku++;
  if (buildCounterSku < 3) {
    checkCategory(o.category);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed886(o.pricingInfo);
    unittest.expect(o.serviceProviderName, unittest.equals('foo'));
    checkUnnamed887(o.serviceRegions);
    unittest.expect(o.skuId, unittest.equals('foo'));
  }
  buildCounterSku--;
}

buildUnnamed888() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed888(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed888();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed888(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed889() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed889(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed889();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed889(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTierRate = 0;
buildTierRate() {
  var o = new api.TierRate();
  buildCounterTierRate++;
  if (buildCounterTierRate < 3) {
    o.startUsageAmount = 42.0;
    o.unitPrice = buildMoney();
  }
  buildCounterTierRate--;
  return o;
}

checkTierRate(api.TierRate o) {
  buildCounterTierRate++;
  if (buildCounterTierRate < 3) {
    unittest.expect(o.startUsageAmount, unittest.equals(42.0));
    checkMoney(o.unitPrice);
  }
  buildCounterTierRate--;
}

main() {
  unittest.group("obj-schema-AggregationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAggregationInfo();
      var od = new api.AggregationInfo.fromJson(o.toJson());
      checkAggregationInfo(od);
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

  unittest.group("obj-schema-BillingAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingAccount();
      var od = new api.BillingAccount.fromJson(o.toJson());
      checkBillingAccount(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-Category", () {
    unittest.test("to-json--from-json", () {
      var o = buildCategory();
      var od = new api.Category.fromJson(o.toJson());
      checkCategory(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-ListBillingAccountsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBillingAccountsResponse();
      var od = new api.ListBillingAccountsResponse.fromJson(o.toJson());
      checkListBillingAccountsResponse(od);
    });
  });

  unittest.group("obj-schema-ListProjectBillingInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListProjectBillingInfoResponse();
      var od = new api.ListProjectBillingInfoResponse.fromJson(o.toJson());
      checkListProjectBillingInfoResponse(od);
    });
  });

  unittest.group("obj-schema-ListServicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListServicesResponse();
      var od = new api.ListServicesResponse.fromJson(o.toJson());
      checkListServicesResponse(od);
    });
  });

  unittest.group("obj-schema-ListSkusResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSkusResponse();
      var od = new api.ListSkusResponse.fromJson(o.toJson());
      checkListSkusResponse(od);
    });
  });

  unittest.group("obj-schema-Money", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoney();
      var od = new api.Money.fromJson(o.toJson());
      checkMoney(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PricingExpression", () {
    unittest.test("to-json--from-json", () {
      var o = buildPricingExpression();
      var od = new api.PricingExpression.fromJson(o.toJson());
      checkPricingExpression(od);
    });
  });

  unittest.group("obj-schema-PricingInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildPricingInfo();
      var od = new api.PricingInfo.fromJson(o.toJson());
      checkPricingInfo(od);
    });
  });

  unittest.group("obj-schema-ProjectBillingInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectBillingInfo();
      var od = new api.ProjectBillingInfo.fromJson(o.toJson());
      checkProjectBillingInfo(od);
    });
  });

  unittest.group("obj-schema-Service", () {
    unittest.test("to-json--from-json", () {
      var o = buildService();
      var od = new api.Service.fromJson(o.toJson());
      checkService(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-Sku", () {
    unittest.test("to-json--from-json", () {
      var o = buildSku();
      var od = new api.Sku.fromJson(o.toJson());
      checkSku(od);
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

  unittest.group("obj-schema-TierRate", () {
    unittest.test("to-json--from-json", () {
      var o = buildTierRate();
      var od = new api.TierRate.fromJson(o.toJson());
      checkTierRate(od);
    });
  });

  unittest.group("resource-BillingAccountsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.BillingAccountsResourceApi res =
          new api.CloudbillingApi(mock).billingAccounts;
      var arg_request = buildBillingAccount();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BillingAccount.fromJson(json);
        checkBillingAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/billingAccounts"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingAccount(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BillingAccountsResourceApi res =
          new api.CloudbillingApi(mock).billingAccounts;
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
        var resp = convert.json.encode(buildBillingAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingAccount(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.BillingAccountsResourceApi res =
          new api.CloudbillingApi(mock).billingAccounts;
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
          .getIamPolicy(arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BillingAccountsResourceApi res =
          new api.CloudbillingApi(mock).billingAccounts;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/billingAccounts"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListBillingAccountsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBillingAccountsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.BillingAccountsResourceApi res =
          new api.CloudbillingApi(mock).billingAccounts;
      var arg_request = buildBillingAccount();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BillingAccount.fromJson(json);
        checkBillingAccount(obj);

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
        var resp = convert.json.encode(buildBillingAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingAccount(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.BillingAccountsResourceApi res =
          new api.CloudbillingApi(mock).billingAccounts;
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
      api.BillingAccountsResourceApi res =
          new api.CloudbillingApi(mock).billingAccounts;
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

  unittest.group("resource-BillingAccountsProjectsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BillingAccountsProjectsResourceApi res =
          new api.CloudbillingApi(mock).billingAccounts.projects;
      var arg_name = "foo";
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
        var resp = convert.json.encode(buildListProjectBillingInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListProjectBillingInfoResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--getBillingInfo", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.CloudbillingApi(mock).projects;
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
        var resp = convert.json.encode(buildProjectBillingInfo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getBillingInfo(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProjectBillingInfo(response);
      })));
    });

    unittest.test("method--updateBillingInfo", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.CloudbillingApi(mock).projects;
      var arg_request = buildProjectBillingInfo();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProjectBillingInfo.fromJson(json);
        checkProjectBillingInfo(obj);

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
        var resp = convert.json.encode(buildProjectBillingInfo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateBillingInfo(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProjectBillingInfo(response);
      })));
    });
  });

  unittest.group("resource-ServicesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.CloudbillingApi(mock).services;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/services"));
        pathOffset += 11;

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
        var resp = convert.json.encode(buildListServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServicesResponse(response);
      })));
    });
  });

  unittest.group("resource-ServicesSkusResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ServicesSkusResourceApi res =
          new api.CloudbillingApi(mock).services.skus;
      var arg_parent = "foo";
      var arg_endTime = "foo";
      var arg_pageToken = "foo";
      var arg_startTime = "foo";
      var arg_pageSize = 42;
      var arg_currencyCode = "foo";
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
            queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["currencyCode"].first, unittest.equals(arg_currencyCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSkusResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              endTime: arg_endTime,
              pageToken: arg_pageToken,
              startTime: arg_startTime,
              pageSize: arg_pageSize,
              currencyCode: arg_currencyCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSkusResponse(response);
      })));
    });
  });
}
