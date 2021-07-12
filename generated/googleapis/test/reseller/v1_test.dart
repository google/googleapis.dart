// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/reseller/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddress = 0;
api.Address buildAddress() {
  final o = api.Address();
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    o.addressLine1 = 'foo';
    o.addressLine2 = 'foo';
    o.addressLine3 = 'foo';
    o.contactName = 'foo';
    o.countryCode = 'foo';
    o.kind = 'foo';
    o.locality = 'foo';
    o.organizationName = 'foo';
    o.postalCode = 'foo';
    o.region = 'foo';
  }
  buildCounterAddress--;
  return o;
}

void checkAddress(api.Address o) {
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    unittest.expect(
      o.addressLine1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.addressLine2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.addressLine3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organizationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddress--;
}

core.int buildCounterChangePlanRequest = 0;
api.ChangePlanRequest buildChangePlanRequest() {
  final o = api.ChangePlanRequest();
  buildCounterChangePlanRequest++;
  if (buildCounterChangePlanRequest < 3) {
    o.dealCode = 'foo';
    o.kind = 'foo';
    o.planName = 'foo';
    o.purchaseOrderId = 'foo';
    o.seats = buildSeats();
  }
  buildCounterChangePlanRequest--;
  return o;
}

void checkChangePlanRequest(api.ChangePlanRequest o) {
  buildCounterChangePlanRequest++;
  if (buildCounterChangePlanRequest < 3) {
    unittest.expect(
      o.dealCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.planName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseOrderId!,
      unittest.equals('foo'),
    );
    checkSeats(o.seats!);
  }
  buildCounterChangePlanRequest--;
}

core.int buildCounterCustomer = 0;
api.Customer buildCustomer() {
  final o = api.Customer();
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    o.alternateEmail = 'foo';
    o.customerDomain = 'foo';
    o.customerDomainVerified = true;
    o.customerId = 'foo';
    o.customerType = 'foo';
    o.kind = 'foo';
    o.phoneNumber = 'foo';
    o.postalAddress = buildAddress();
    o.primaryAdmin = buildPrimaryAdmin();
    o.resourceUiUrl = 'foo';
  }
  buildCounterCustomer--;
  return o;
}

void checkCustomer(api.Customer o) {
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    unittest.expect(
      o.alternateEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(o.customerDomainVerified!, unittest.isTrue);
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    checkAddress(o.postalAddress!);
    checkPrimaryAdmin(o.primaryAdmin!);
    unittest.expect(
      o.resourceUiUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomer--;
}

core.int buildCounterPrimaryAdmin = 0;
api.PrimaryAdmin buildPrimaryAdmin() {
  final o = api.PrimaryAdmin();
  buildCounterPrimaryAdmin++;
  if (buildCounterPrimaryAdmin < 3) {
    o.primaryEmail = 'foo';
  }
  buildCounterPrimaryAdmin--;
  return o;
}

void checkPrimaryAdmin(api.PrimaryAdmin o) {
  buildCounterPrimaryAdmin++;
  if (buildCounterPrimaryAdmin < 3) {
    unittest.expect(
      o.primaryEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrimaryAdmin--;
}

core.int buildCounterRenewalSettings = 0;
api.RenewalSettings buildRenewalSettings() {
  final o = api.RenewalSettings();
  buildCounterRenewalSettings++;
  if (buildCounterRenewalSettings < 3) {
    o.kind = 'foo';
    o.renewalType = 'foo';
  }
  buildCounterRenewalSettings--;
  return o;
}

void checkRenewalSettings(api.RenewalSettings o) {
  buildCounterRenewalSettings++;
  if (buildCounterRenewalSettings < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renewalType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRenewalSettings--;
}

core.List<core.String> buildUnnamed4672() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4672(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterResellernotifyGetwatchdetailsResponse = 0;
api.ResellernotifyGetwatchdetailsResponse
    buildResellernotifyGetwatchdetailsResponse() {
  final o = api.ResellernotifyGetwatchdetailsResponse();
  buildCounterResellernotifyGetwatchdetailsResponse++;
  if (buildCounterResellernotifyGetwatchdetailsResponse < 3) {
    o.serviceAccountEmailAddresses = buildUnnamed4672();
    o.topicName = 'foo';
  }
  buildCounterResellernotifyGetwatchdetailsResponse--;
  return o;
}

void checkResellernotifyGetwatchdetailsResponse(
    api.ResellernotifyGetwatchdetailsResponse o) {
  buildCounterResellernotifyGetwatchdetailsResponse++;
  if (buildCounterResellernotifyGetwatchdetailsResponse < 3) {
    checkUnnamed4672(o.serviceAccountEmailAddresses!);
    unittest.expect(
      o.topicName!,
      unittest.equals('foo'),
    );
  }
  buildCounterResellernotifyGetwatchdetailsResponse--;
}

core.int buildCounterResellernotifyResource = 0;
api.ResellernotifyResource buildResellernotifyResource() {
  final o = api.ResellernotifyResource();
  buildCounterResellernotifyResource++;
  if (buildCounterResellernotifyResource < 3) {
    o.topicName = 'foo';
  }
  buildCounterResellernotifyResource--;
  return o;
}

void checkResellernotifyResource(api.ResellernotifyResource o) {
  buildCounterResellernotifyResource++;
  if (buildCounterResellernotifyResource < 3) {
    unittest.expect(
      o.topicName!,
      unittest.equals('foo'),
    );
  }
  buildCounterResellernotifyResource--;
}

core.int buildCounterSeats = 0;
api.Seats buildSeats() {
  final o = api.Seats();
  buildCounterSeats++;
  if (buildCounterSeats < 3) {
    o.kind = 'foo';
    o.licensedNumberOfSeats = 42;
    o.maximumNumberOfSeats = 42;
    o.numberOfSeats = 42;
  }
  buildCounterSeats--;
  return o;
}

void checkSeats(api.Seats o) {
  buildCounterSeats++;
  if (buildCounterSeats < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.licensedNumberOfSeats!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maximumNumberOfSeats!,
      unittest.equals(42),
    );
    unittest.expect(
      o.numberOfSeats!,
      unittest.equals(42),
    );
  }
  buildCounterSeats--;
}

core.int buildCounterSubscriptionPlanCommitmentInterval = 0;
api.SubscriptionPlanCommitmentInterval
    buildSubscriptionPlanCommitmentInterval() {
  final o = api.SubscriptionPlanCommitmentInterval();
  buildCounterSubscriptionPlanCommitmentInterval++;
  if (buildCounterSubscriptionPlanCommitmentInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterSubscriptionPlanCommitmentInterval--;
  return o;
}

void checkSubscriptionPlanCommitmentInterval(
    api.SubscriptionPlanCommitmentInterval o) {
  buildCounterSubscriptionPlanCommitmentInterval++;
  if (buildCounterSubscriptionPlanCommitmentInterval < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionPlanCommitmentInterval--;
}

core.int buildCounterSubscriptionPlan = 0;
api.SubscriptionPlan buildSubscriptionPlan() {
  final o = api.SubscriptionPlan();
  buildCounterSubscriptionPlan++;
  if (buildCounterSubscriptionPlan < 3) {
    o.commitmentInterval = buildSubscriptionPlanCommitmentInterval();
    o.isCommitmentPlan = true;
    o.planName = 'foo';
  }
  buildCounterSubscriptionPlan--;
  return o;
}

void checkSubscriptionPlan(api.SubscriptionPlan o) {
  buildCounterSubscriptionPlan++;
  if (buildCounterSubscriptionPlan < 3) {
    checkSubscriptionPlanCommitmentInterval(o.commitmentInterval!);
    unittest.expect(o.isCommitmentPlan!, unittest.isTrue);
    unittest.expect(
      o.planName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionPlan--;
}

core.List<core.String> buildUnnamed4673() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4673(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterSubscriptionTransferInfo = 0;
api.SubscriptionTransferInfo buildSubscriptionTransferInfo() {
  final o = api.SubscriptionTransferInfo();
  buildCounterSubscriptionTransferInfo++;
  if (buildCounterSubscriptionTransferInfo < 3) {
    o.currentLegacySkuId = 'foo';
    o.minimumTransferableSeats = 42;
    o.transferabilityExpirationTime = 'foo';
  }
  buildCounterSubscriptionTransferInfo--;
  return o;
}

void checkSubscriptionTransferInfo(api.SubscriptionTransferInfo o) {
  buildCounterSubscriptionTransferInfo++;
  if (buildCounterSubscriptionTransferInfo < 3) {
    unittest.expect(
      o.currentLegacySkuId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumTransferableSeats!,
      unittest.equals(42),
    );
    unittest.expect(
      o.transferabilityExpirationTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionTransferInfo--;
}

core.int buildCounterSubscriptionTrialSettings = 0;
api.SubscriptionTrialSettings buildSubscriptionTrialSettings() {
  final o = api.SubscriptionTrialSettings();
  buildCounterSubscriptionTrialSettings++;
  if (buildCounterSubscriptionTrialSettings < 3) {
    o.isInTrial = true;
    o.trialEndTime = 'foo';
  }
  buildCounterSubscriptionTrialSettings--;
  return o;
}

void checkSubscriptionTrialSettings(api.SubscriptionTrialSettings o) {
  buildCounterSubscriptionTrialSettings++;
  if (buildCounterSubscriptionTrialSettings < 3) {
    unittest.expect(o.isInTrial!, unittest.isTrue);
    unittest.expect(
      o.trialEndTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionTrialSettings--;
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  final o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.billingMethod = 'foo';
    o.creationTime = 'foo';
    o.customerDomain = 'foo';
    o.customerId = 'foo';
    o.dealCode = 'foo';
    o.kind = 'foo';
    o.plan = buildSubscriptionPlan();
    o.purchaseOrderId = 'foo';
    o.renewalSettings = buildRenewalSettings();
    o.resourceUiUrl = 'foo';
    o.seats = buildSeats();
    o.skuId = 'foo';
    o.skuName = 'foo';
    o.status = 'foo';
    o.subscriptionId = 'foo';
    o.suspensionReasons = buildUnnamed4673();
    o.transferInfo = buildSubscriptionTransferInfo();
    o.trialSettings = buildSubscriptionTrialSettings();
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    unittest.expect(
      o.billingMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkSubscriptionPlan(o.plan!);
    unittest.expect(
      o.purchaseOrderId!,
      unittest.equals('foo'),
    );
    checkRenewalSettings(o.renewalSettings!);
    unittest.expect(
      o.resourceUiUrl!,
      unittest.equals('foo'),
    );
    checkSeats(o.seats!);
    unittest.expect(
      o.skuId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skuName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscriptionId!,
      unittest.equals('foo'),
    );
    checkUnnamed4673(o.suspensionReasons!);
    checkSubscriptionTransferInfo(o.transferInfo!);
    checkSubscriptionTrialSettings(o.trialSettings!);
  }
  buildCounterSubscription--;
}

core.List<api.Subscription> buildUnnamed4674() {
  final o = <api.Subscription>[];
  o.add(buildSubscription());
  o.add(buildSubscription());
  return o;
}

void checkUnnamed4674(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterSubscriptions = 0;
api.Subscriptions buildSubscriptions() {
  final o = api.Subscriptions();
  buildCounterSubscriptions++;
  if (buildCounterSubscriptions < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.subscriptions = buildUnnamed4674();
  }
  buildCounterSubscriptions--;
  return o;
}

void checkSubscriptions(api.Subscriptions o) {
  buildCounterSubscriptions++;
  if (buildCounterSubscriptions < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4674(o.subscriptions!);
  }
  buildCounterSubscriptions--;
}

void main() {
  unittest.group('obj-schema-Address', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Address.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAddress(od);
    });
  });

  unittest.group('obj-schema-ChangePlanRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChangePlanRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChangePlanRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChangePlanRequest(od);
    });
  });

  unittest.group('obj-schema-Customer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Customer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCustomer(od);
    });
  });

  unittest.group('obj-schema-PrimaryAdmin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrimaryAdmin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrimaryAdmin.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrimaryAdmin(od);
    });
  });

  unittest.group('obj-schema-RenewalSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenewalSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenewalSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenewalSettings(od);
    });
  });

  unittest.group('obj-schema-ResellernotifyGetwatchdetailsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResellernotifyGetwatchdetailsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResellernotifyGetwatchdetailsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResellernotifyGetwatchdetailsResponse(od);
    });
  });

  unittest.group('obj-schema-ResellernotifyResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResellernotifyResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResellernotifyResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResellernotifyResource(od);
    });
  });

  unittest.group('obj-schema-Seats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Seats.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSeats(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPlanCommitmentInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPlanCommitmentInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPlanCommitmentInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPlanCommitmentInterval(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPlan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPlan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPlan.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPlan(od);
    });
  });

  unittest.group('obj-schema-SubscriptionTransferInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionTransferInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionTransferInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionTransferInfo(od);
    });
  });

  unittest.group('obj-schema-SubscriptionTrialSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionTrialSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionTrialSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionTrialSettings(od);
    });
  });

  unittest.group('obj-schema-Subscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscription(od);
    });
  });

  unittest.group('obj-schema-Subscriptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subscriptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptions(od);
    });
  });

  unittest.group('resource-CustomersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).customers;
      final arg_customerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_customerId, $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).customers;
      final arg_request = buildCustomer();
      final arg_customerAuthToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Customer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCustomer(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('apps/reseller/v1/customers'),
        );
        pathOffset += 26;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['customerAuthToken']!.first,
          unittest.equals(arg_customerAuthToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request,
          customerAuthToken: arg_customerAuthToken, $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).customers;
      final arg_request = buildCustomer();
      final arg_customerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Customer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCustomer(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_customerId, $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).customers;
      final arg_request = buildCustomer();
      final arg_customerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Customer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCustomer(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_customerId, $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });
  });

  unittest.group('resource-ResellernotifyResource_1', () {
    unittest.test('method--getwatchdetails', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).resellernotify;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 47),
          unittest.equals('apps/reseller/v1/resellernotify/getwatchdetails'),
        );
        pathOffset += 47;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildResellernotifyGetwatchdetailsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getwatchdetails($fields: arg_$fields);
      checkResellernotifyGetwatchdetailsResponse(
          response as api.ResellernotifyGetwatchdetailsResponse);
    });

    unittest.test('method--register', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).resellernotify;
      final arg_serviceAccountEmailAddress = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 40),
          unittest.equals('apps/reseller/v1/resellernotify/register'),
        );
        pathOffset += 40;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['serviceAccountEmailAddress']!.first,
          unittest.equals(arg_serviceAccountEmailAddress),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResellernotifyResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.register(
          serviceAccountEmailAddress: arg_serviceAccountEmailAddress,
          $fields: arg_$fields);
      checkResellernotifyResource(response as api.ResellernotifyResource);
    });

    unittest.test('method--unregister', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).resellernotify;
      final arg_serviceAccountEmailAddress = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 42),
          unittest.equals('apps/reseller/v1/resellernotify/unregister'),
        );
        pathOffset += 42;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['serviceAccountEmailAddress']!.first,
          unittest.equals(arg_serviceAccountEmailAddress),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResellernotifyResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.unregister(
          serviceAccountEmailAddress: arg_serviceAccountEmailAddress,
          $fields: arg_$fields);
      checkResellernotifyResource(response as api.ResellernotifyResource);
    });
  });

  unittest.group('resource-SubscriptionsResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).subscriptions;
      final arg_customerId = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/activate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/activate'),
        );
        pathOffset += 9;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.activate(arg_customerId, arg_subscriptionId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--changePlan', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).subscriptions;
      final arg_request = buildChangePlanRequest();
      final arg_customerId = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ChangePlanRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChangePlanRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/changePlan', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/changePlan'),
        );
        pathOffset += 11;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.changePlan(
          arg_request, arg_customerId, arg_subscriptionId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--changeRenewalSettings', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).subscriptions;
      final arg_request = buildRenewalSettings();
      final arg_customerId = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RenewalSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRenewalSettings(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/changeRenewalSettings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/changeRenewalSettings'),
        );
        pathOffset += 22;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.changeRenewalSettings(
          arg_request, arg_customerId, arg_subscriptionId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--changeSeats', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).subscriptions;
      final arg_request = buildSeats();
      final arg_customerId = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Seats.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSeats(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/changeSeats', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/changeSeats'),
        );
        pathOffset += 12;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.changeSeats(
          arg_request, arg_customerId, arg_subscriptionId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).subscriptions;
      final arg_customerId = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_deletionType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['deletionType']!.first,
          unittest.equals(arg_deletionType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_customerId, arg_subscriptionId, arg_deletionType,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).subscriptions;
      final arg_customerId = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_customerId, arg_subscriptionId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).subscriptions;
      final arg_request = buildSubscription();
      final arg_customerId = 'foo';
      final arg_customerAuthToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscription(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        index = path.indexOf('/subscriptions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/subscriptions'),
        );
        pathOffset += 14;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['customerAuthToken']!.first,
          unittest.equals(arg_customerAuthToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_customerId,
          customerAuthToken: arg_customerAuthToken, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).subscriptions;
      final arg_customerAuthToken = 'foo';
      final arg_customerId = 'foo';
      final arg_customerNamePrefix = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('apps/reseller/v1/subscriptions'),
        );
        pathOffset += 30;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['customerAuthToken']!.first,
          unittest.equals(arg_customerAuthToken),
        );
        unittest.expect(
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap['customerNamePrefix']!.first,
          unittest.equals(arg_customerNamePrefix),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscriptions());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          customerAuthToken: arg_customerAuthToken,
          customerId: arg_customerId,
          customerNamePrefix: arg_customerNamePrefix,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSubscriptions(response as api.Subscriptions);
    });

    unittest.test('method--startPaidService', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).subscriptions;
      final arg_customerId = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/startPaidService', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/startPaidService'),
        );
        pathOffset += 17;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.startPaidService(
          arg_customerId, arg_subscriptionId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--suspend', () async {
      final mock = HttpServerMock();
      final res = api.ResellerApi(mock).subscriptions;
      final arg_customerId = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apps/reseller/v1/customers/'),
        );
        pathOffset += 27;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/suspend', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/suspend'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.suspend(arg_customerId, arg_subscriptionId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });
  });
}
