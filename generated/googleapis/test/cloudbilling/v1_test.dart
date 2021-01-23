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

core.int buildCounterAggregationInfo = 0;
api.AggregationInfo buildAggregationInfo() {
  var o = api.AggregationInfo();
  buildCounterAggregationInfo++;
  if (buildCounterAggregationInfo < 3) {
    o.aggregationCount = 42;
    o.aggregationInterval = 'foo';
    o.aggregationLevel = 'foo';
  }
  buildCounterAggregationInfo--;
  return o;
}

void checkAggregationInfo(api.AggregationInfo o) {
  buildCounterAggregationInfo++;
  if (buildCounterAggregationInfo < 3) {
    unittest.expect(o.aggregationCount, unittest.equals(42));
    unittest.expect(o.aggregationInterval, unittest.equals('foo'));
    unittest.expect(o.aggregationLevel, unittest.equals('foo'));
  }
  buildCounterAggregationInfo--;
}

core.List<api.AuditLogConfig> buildUnnamed2315() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed2315(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed2315();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed2315(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed2316() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2316(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2316();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2316(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterBillingAccount = 0;
api.BillingAccount buildBillingAccount() {
  var o = api.BillingAccount();
  buildCounterBillingAccount++;
  if (buildCounterBillingAccount < 3) {
    o.displayName = 'foo';
    o.masterBillingAccount = 'foo';
    o.name = 'foo';
    o.open = true;
  }
  buildCounterBillingAccount--;
  return o;
}

void checkBillingAccount(api.BillingAccount o) {
  buildCounterBillingAccount++;
  if (buildCounterBillingAccount < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.masterBillingAccount, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.open, unittest.isTrue);
  }
  buildCounterBillingAccount--;
}

core.List<core.String> buildUnnamed2317() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2317(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2317();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed2317(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCategory = 0;
api.Category buildCategory() {
  var o = api.Category();
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    o.resourceFamily = 'foo';
    o.resourceGroup = 'foo';
    o.serviceDisplayName = 'foo';
    o.usageType = 'foo';
  }
  buildCounterCategory--;
  return o;
}

void checkCategory(api.Category o) {
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
api.Expr buildExpr() {
  var o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.List<core.String> buildUnnamed2318() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2318(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGeoTaxonomy = 0;
api.GeoTaxonomy buildGeoTaxonomy() {
  var o = api.GeoTaxonomy();
  buildCounterGeoTaxonomy++;
  if (buildCounterGeoTaxonomy < 3) {
    o.regions = buildUnnamed2318();
    o.type = 'foo';
  }
  buildCounterGeoTaxonomy--;
  return o;
}

void checkGeoTaxonomy(api.GeoTaxonomy o) {
  buildCounterGeoTaxonomy++;
  if (buildCounterGeoTaxonomy < 3) {
    checkUnnamed2318(o.regions);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGeoTaxonomy--;
}

core.List<api.BillingAccount> buildUnnamed2319() {
  var o = <api.BillingAccount>[];
  o.add(buildBillingAccount());
  o.add(buildBillingAccount());
  return o;
}

void checkUnnamed2319(core.List<api.BillingAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingAccount(o[0]);
  checkBillingAccount(o[1]);
}

core.int buildCounterListBillingAccountsResponse = 0;
api.ListBillingAccountsResponse buildListBillingAccountsResponse() {
  var o = api.ListBillingAccountsResponse();
  buildCounterListBillingAccountsResponse++;
  if (buildCounterListBillingAccountsResponse < 3) {
    o.billingAccounts = buildUnnamed2319();
    o.nextPageToken = 'foo';
  }
  buildCounterListBillingAccountsResponse--;
  return o;
}

void checkListBillingAccountsResponse(api.ListBillingAccountsResponse o) {
  buildCounterListBillingAccountsResponse++;
  if (buildCounterListBillingAccountsResponse < 3) {
    checkUnnamed2319(o.billingAccounts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListBillingAccountsResponse--;
}

core.List<api.ProjectBillingInfo> buildUnnamed2320() {
  var o = <api.ProjectBillingInfo>[];
  o.add(buildProjectBillingInfo());
  o.add(buildProjectBillingInfo());
  return o;
}

void checkUnnamed2320(core.List<api.ProjectBillingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjectBillingInfo(o[0]);
  checkProjectBillingInfo(o[1]);
}

core.int buildCounterListProjectBillingInfoResponse = 0;
api.ListProjectBillingInfoResponse buildListProjectBillingInfoResponse() {
  var o = api.ListProjectBillingInfoResponse();
  buildCounterListProjectBillingInfoResponse++;
  if (buildCounterListProjectBillingInfoResponse < 3) {
    o.nextPageToken = 'foo';
    o.projectBillingInfo = buildUnnamed2320();
  }
  buildCounterListProjectBillingInfoResponse--;
  return o;
}

void checkListProjectBillingInfoResponse(api.ListProjectBillingInfoResponse o) {
  buildCounterListProjectBillingInfoResponse++;
  if (buildCounterListProjectBillingInfoResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2320(o.projectBillingInfo);
  }
  buildCounterListProjectBillingInfoResponse--;
}

core.List<api.Service> buildUnnamed2321() {
  var o = <api.Service>[];
  o.add(buildService());
  o.add(buildService());
  return o;
}

void checkUnnamed2321(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterListServicesResponse = 0;
api.ListServicesResponse buildListServicesResponse() {
  var o = api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed2321();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2321(o.services);
  }
  buildCounterListServicesResponse--;
}

core.List<api.Sku> buildUnnamed2322() {
  var o = <api.Sku>[];
  o.add(buildSku());
  o.add(buildSku());
  return o;
}

void checkUnnamed2322(core.List<api.Sku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSku(o[0]);
  checkSku(o[1]);
}

core.int buildCounterListSkusResponse = 0;
api.ListSkusResponse buildListSkusResponse() {
  var o = api.ListSkusResponse();
  buildCounterListSkusResponse++;
  if (buildCounterListSkusResponse < 3) {
    o.nextPageToken = 'foo';
    o.skus = buildUnnamed2322();
  }
  buildCounterListSkusResponse--;
  return o;
}

void checkListSkusResponse(api.ListSkusResponse o) {
  buildCounterListSkusResponse++;
  if (buildCounterListSkusResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2322(o.skus);
  }
  buildCounterListSkusResponse--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  var o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.List<api.AuditConfig> buildUnnamed2323() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed2323(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed2324() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed2324(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed2323();
    o.bindings = buildUnnamed2324();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2323(o.auditConfigs);
    checkUnnamed2324(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<api.TierRate> buildUnnamed2325() {
  var o = <api.TierRate>[];
  o.add(buildTierRate());
  o.add(buildTierRate());
  return o;
}

void checkUnnamed2325(core.List<api.TierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTierRate(o[0]);
  checkTierRate(o[1]);
}

core.int buildCounterPricingExpression = 0;
api.PricingExpression buildPricingExpression() {
  var o = api.PricingExpression();
  buildCounterPricingExpression++;
  if (buildCounterPricingExpression < 3) {
    o.baseUnit = 'foo';
    o.baseUnitConversionFactor = 42.0;
    o.baseUnitDescription = 'foo';
    o.displayQuantity = 42.0;
    o.tieredRates = buildUnnamed2325();
    o.usageUnit = 'foo';
    o.usageUnitDescription = 'foo';
  }
  buildCounterPricingExpression--;
  return o;
}

void checkPricingExpression(api.PricingExpression o) {
  buildCounterPricingExpression++;
  if (buildCounterPricingExpression < 3) {
    unittest.expect(o.baseUnit, unittest.equals('foo'));
    unittest.expect(o.baseUnitConversionFactor, unittest.equals(42.0));
    unittest.expect(o.baseUnitDescription, unittest.equals('foo'));
    unittest.expect(o.displayQuantity, unittest.equals(42.0));
    checkUnnamed2325(o.tieredRates);
    unittest.expect(o.usageUnit, unittest.equals('foo'));
    unittest.expect(o.usageUnitDescription, unittest.equals('foo'));
  }
  buildCounterPricingExpression--;
}

core.int buildCounterPricingInfo = 0;
api.PricingInfo buildPricingInfo() {
  var o = api.PricingInfo();
  buildCounterPricingInfo++;
  if (buildCounterPricingInfo < 3) {
    o.aggregationInfo = buildAggregationInfo();
    o.currencyConversionRate = 42.0;
    o.effectiveTime = 'foo';
    o.pricingExpression = buildPricingExpression();
    o.summary = 'foo';
  }
  buildCounterPricingInfo--;
  return o;
}

void checkPricingInfo(api.PricingInfo o) {
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
api.ProjectBillingInfo buildProjectBillingInfo() {
  var o = api.ProjectBillingInfo();
  buildCounterProjectBillingInfo++;
  if (buildCounterProjectBillingInfo < 3) {
    o.billingAccountName = 'foo';
    o.billingEnabled = true;
    o.name = 'foo';
    o.projectId = 'foo';
  }
  buildCounterProjectBillingInfo--;
  return o;
}

void checkProjectBillingInfo(api.ProjectBillingInfo o) {
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
api.Service buildService() {
  var o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.businessEntityName = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.serviceId = 'foo';
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
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
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<api.PricingInfo> buildUnnamed2326() {
  var o = <api.PricingInfo>[];
  o.add(buildPricingInfo());
  o.add(buildPricingInfo());
  return o;
}

void checkUnnamed2326(core.List<api.PricingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricingInfo(o[0]);
  checkPricingInfo(o[1]);
}

core.List<core.String> buildUnnamed2327() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2327(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSku = 0;
api.Sku buildSku() {
  var o = api.Sku();
  buildCounterSku++;
  if (buildCounterSku < 3) {
    o.category = buildCategory();
    o.description = 'foo';
    o.geoTaxonomy = buildGeoTaxonomy();
    o.name = 'foo';
    o.pricingInfo = buildUnnamed2326();
    o.serviceProviderName = 'foo';
    o.serviceRegions = buildUnnamed2327();
    o.skuId = 'foo';
  }
  buildCounterSku--;
  return o;
}

void checkSku(api.Sku o) {
  buildCounterSku++;
  if (buildCounterSku < 3) {
    checkCategory(o.category);
    unittest.expect(o.description, unittest.equals('foo'));
    checkGeoTaxonomy(o.geoTaxonomy);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2326(o.pricingInfo);
    unittest.expect(o.serviceProviderName, unittest.equals('foo'));
    checkUnnamed2327(o.serviceRegions);
    unittest.expect(o.skuId, unittest.equals('foo'));
  }
  buildCounterSku--;
}

core.List<core.String> buildUnnamed2328() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2328(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed2328();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed2328(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed2329() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2329(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed2329();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed2329(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTierRate = 0;
api.TierRate buildTierRate() {
  var o = api.TierRate();
  buildCounterTierRate++;
  if (buildCounterTierRate < 3) {
    o.startUsageAmount = 42.0;
    o.unitPrice = buildMoney();
  }
  buildCounterTierRate--;
  return o;
}

void checkTierRate(api.TierRate o) {
  buildCounterTierRate++;
  if (buildCounterTierRate < 3) {
    unittest.expect(o.startUsageAmount, unittest.equals(42.0));
    checkMoney(o.unitPrice);
  }
  buildCounterTierRate--;
}

void main() {
  unittest.group('obj-schema-AggregationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildAggregationInfo();
      var od = api.AggregationInfo.fromJson(o.toJson());
      checkAggregationInfo(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditConfig();
      var od = api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditLogConfig();
      var od = api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-BillingAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildBillingAccount();
      var od = api.BillingAccount.fromJson(o.toJson());
      checkBillingAccount(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-Category', () {
    unittest.test('to-json--from-json', () {
      var o = buildCategory();
      var od = api.Category.fromJson(o.toJson());
      checkCategory(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GeoTaxonomy', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeoTaxonomy();
      var od = api.GeoTaxonomy.fromJson(o.toJson());
      checkGeoTaxonomy(od);
    });
  });

  unittest.group('obj-schema-ListBillingAccountsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListBillingAccountsResponse();
      var od = api.ListBillingAccountsResponse.fromJson(o.toJson());
      checkListBillingAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListProjectBillingInfoResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListProjectBillingInfoResponse();
      var od = api.ListProjectBillingInfoResponse.fromJson(o.toJson());
      checkListProjectBillingInfoResponse(od);
    });
  });

  unittest.group('obj-schema-ListServicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListServicesResponse();
      var od = api.ListServicesResponse.fromJson(o.toJson());
      checkListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-ListSkusResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListSkusResponse();
      var od = api.ListSkusResponse.fromJson(o.toJson());
      checkListSkusResponse(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () {
      var o = buildMoney();
      var od = api.Money.fromJson(o.toJson());
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PricingExpression', () {
    unittest.test('to-json--from-json', () {
      var o = buildPricingExpression();
      var od = api.PricingExpression.fromJson(o.toJson());
      checkPricingExpression(od);
    });
  });

  unittest.group('obj-schema-PricingInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildPricingInfo();
      var od = api.PricingInfo.fromJson(o.toJson());
      checkPricingInfo(od);
    });
  });

  unittest.group('obj-schema-ProjectBillingInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildProjectBillingInfo();
      var od = api.ProjectBillingInfo.fromJson(o.toJson());
      checkProjectBillingInfo(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () {
      var o = buildService();
      var od = api.Service.fromJson(o.toJson());
      checkService(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-Sku', () {
    unittest.test('to-json--from-json', () {
      var o = buildSku();
      var od = api.Sku.fromJson(o.toJson());
      checkSku(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-TierRate', () {
    unittest.test('to-json--from-json', () {
      var o = buildTierRate();
      var od = api.TierRate.fromJson(o.toJson());
      checkTierRate(od);
    });
  });

  unittest.group('resource-BillingAccountsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).billingAccounts;
      var arg_request = buildBillingAccount();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BillingAccount.fromJson(json);
        checkBillingAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/billingAccounts"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildBillingAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingAccount(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).billingAccounts;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildBillingAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingAccount(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).billingAccounts;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).billingAccounts;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/billingAccounts"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildListBillingAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBillingAccountsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).billingAccounts;
      var arg_request = buildBillingAccount();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BillingAccount.fromJson(json);
        checkBillingAccount(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildBillingAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingAccount(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).billingAccounts;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).billingAccounts;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group('resource-BillingAccountsProjectsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).billingAccounts.projects;
      var arg_name = 'foo';
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildListProjectBillingInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListProjectBillingInfoResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsResourceApi', () {
    unittest.test('method--getBillingInfo', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).projects;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildProjectBillingInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getBillingInfo(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProjectBillingInfo(response);
      })));
    });

    unittest.test('method--updateBillingInfo', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).projects;
      var arg_request = buildProjectBillingInfo();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ProjectBillingInfo.fromJson(json);
        checkProjectBillingInfo(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildProjectBillingInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateBillingInfo(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProjectBillingInfo(response);
      })));
    });
  });

  unittest.group('resource-ServicesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).services;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/services"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServicesResponse(response);
      })));
    });
  });

  unittest.group('resource-ServicesSkusResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudbillingApi(mock).services.skus;
      var arg_parent = 'foo';
      var arg_currencyCode = 'foo';
      var arg_endTime = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_startTime = 'foo';
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["currencyCode"].first, unittest.equals(arg_currencyCode));
        unittest.expect(
            queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListSkusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              currencyCode: arg_currencyCode,
              endTime: arg_endTime,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              startTime: arg_startTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSkusResponse(response);
      })));
    });
  });
}
