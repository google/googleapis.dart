// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/cloudcommerceprocurement/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Approval> buildUnnamed0() => [
      buildApproval(),
      buildApproval(),
    ];

void checkUnnamed0(core.List<api.Approval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApproval(o[0]);
  checkApproval(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed1() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed1(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.approvals = buildUnnamed0();
    o.createTime = 'foo';
    o.inputProperties = buildUnnamed1();
    o.name = 'foo';
    o.provider = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkUnnamed0(o.approvals!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.inputProperties!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provider!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccount--;
}

core.int buildCounterApproval = 0;
api.Approval buildApproval() {
  final o = api.Approval();
  buildCounterApproval++;
  if (buildCounterApproval < 3) {
    o.name = 'foo';
    o.reason = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterApproval--;
  return o;
}

void checkApproval(api.Approval o) {
  buildCounterApproval++;
  if (buildCounterApproval < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterApproval--;
}

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterApproveAccountRequest = 0;
api.ApproveAccountRequest buildApproveAccountRequest() {
  final o = api.ApproveAccountRequest();
  buildCounterApproveAccountRequest++;
  if (buildCounterApproveAccountRequest < 3) {
    o.approvalName = 'foo';
    o.properties = buildUnnamed2();
    o.reason = 'foo';
  }
  buildCounterApproveAccountRequest--;
  return o;
}

void checkApproveAccountRequest(api.ApproveAccountRequest o) {
  buildCounterApproveAccountRequest++;
  if (buildCounterApproveAccountRequest < 3) {
    unittest.expect(
      o.approvalName!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.properties!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterApproveAccountRequest--;
}

core.int buildCounterApproveEntitlementPlanChangeRequest = 0;
api.ApproveEntitlementPlanChangeRequest
    buildApproveEntitlementPlanChangeRequest() {
  final o = api.ApproveEntitlementPlanChangeRequest();
  buildCounterApproveEntitlementPlanChangeRequest++;
  if (buildCounterApproveEntitlementPlanChangeRequest < 3) {
    o.pendingPlanName = 'foo';
  }
  buildCounterApproveEntitlementPlanChangeRequest--;
  return o;
}

void checkApproveEntitlementPlanChangeRequest(
    api.ApproveEntitlementPlanChangeRequest o) {
  buildCounterApproveEntitlementPlanChangeRequest++;
  if (buildCounterApproveEntitlementPlanChangeRequest < 3) {
    unittest.expect(
      o.pendingPlanName!,
      unittest.equals('foo'),
    );
  }
  buildCounterApproveEntitlementPlanChangeRequest--;
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterApproveEntitlementRequest = 0;
api.ApproveEntitlementRequest buildApproveEntitlementRequest() {
  final o = api.ApproveEntitlementRequest();
  buildCounterApproveEntitlementRequest++;
  if (buildCounterApproveEntitlementRequest < 3) {
    o.entitlementMigrated = 'foo';
    o.properties = buildUnnamed3();
  }
  buildCounterApproveEntitlementRequest--;
  return o;
}

void checkApproveEntitlementRequest(api.ApproveEntitlementRequest o) {
  buildCounterApproveEntitlementRequest++;
  if (buildCounterApproveEntitlementRequest < 3) {
    unittest.expect(
      o.entitlementMigrated!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.properties!);
  }
  buildCounterApproveEntitlementRequest--;
}

core.int buildCounterConsumer = 0;
api.Consumer buildConsumer() {
  final o = api.Consumer();
  buildCounterConsumer++;
  if (buildCounterConsumer < 3) {
    o.project = 'foo';
  }
  buildCounterConsumer--;
  return o;
}

void checkConsumer(api.Consumer o) {
  buildCounterConsumer++;
  if (buildCounterConsumer < 3) {
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterConsumer--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.List<api.Consumer> buildUnnamed4() => [
      buildConsumer(),
      buildConsumer(),
    ];

void checkUnnamed4(core.List<api.Consumer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsumer(o[0]);
  checkConsumer(o[1]);
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed6() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterEntitlement = 0;
api.Entitlement buildEntitlement() {
  final o = api.Entitlement();
  buildCounterEntitlement++;
  if (buildCounterEntitlement < 3) {
    o.account = 'foo';
    o.cancellationReason = 'foo';
    o.consumers = buildUnnamed4();
    o.createTime = 'foo';
    o.entitlementBenefitIds = buildUnnamed5();
    o.inputProperties = buildUnnamed6();
    o.messageToUser = 'foo';
    o.name = 'foo';
    o.newOfferEndTime = 'foo';
    o.newOfferStartTime = 'foo';
    o.newPendingOffer = 'foo';
    o.newPendingOfferDuration = 'foo';
    o.newPendingPlan = 'foo';
    o.offer = 'foo';
    o.offerDuration = 'foo';
    o.offerEndTime = 'foo';
    o.orderId = 'foo';
    o.plan = 'foo';
    o.product = 'foo';
    o.productExternalName = 'foo';
    o.provider = 'foo';
    o.quoteExternalName = 'foo';
    o.state = 'foo';
    o.subscriptionEndTime = 'foo';
    o.updateTime = 'foo';
    o.usageReportingId = 'foo';
  }
  buildCounterEntitlement--;
  return o;
}

void checkEntitlement(api.Entitlement o) {
  buildCounterEntitlement++;
  if (buildCounterEntitlement < 3) {
    unittest.expect(
      o.account!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cancellationReason!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.consumers!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.entitlementBenefitIds!);
    checkUnnamed6(o.inputProperties!);
    unittest.expect(
      o.messageToUser!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newOfferEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newOfferStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newPendingOffer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newPendingOfferDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newPendingPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.plan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.product!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productExternalName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provider!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quoteExternalName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscriptionEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.usageReportingId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntitlement--;
}

core.List<api.Account> buildUnnamed7() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed7(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterListAccountsResponse = 0;
api.ListAccountsResponse buildListAccountsResponse() {
  final o = api.ListAccountsResponse();
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    o.accounts = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountsResponse--;
  return o;
}

void checkListAccountsResponse(api.ListAccountsResponse o) {
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    checkUnnamed7(o.accounts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAccountsResponse--;
}

core.List<api.Entitlement> buildUnnamed8() => [
      buildEntitlement(),
      buildEntitlement(),
    ];

void checkUnnamed8(core.List<api.Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntitlement(o[0]);
  checkEntitlement(o[1]);
}

core.int buildCounterListEntitlementsResponse = 0;
api.ListEntitlementsResponse buildListEntitlementsResponse() {
  final o = api.ListEntitlementsResponse();
  buildCounterListEntitlementsResponse++;
  if (buildCounterListEntitlementsResponse < 3) {
    o.entitlements = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterListEntitlementsResponse--;
  return o;
}

void checkListEntitlementsResponse(api.ListEntitlementsResponse o) {
  buildCounterListEntitlementsResponse++;
  if (buildCounterListEntitlementsResponse < 3) {
    checkUnnamed8(o.entitlements!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEntitlementsResponse--;
}

core.int buildCounterRejectAccountRequest = 0;
api.RejectAccountRequest buildRejectAccountRequest() {
  final o = api.RejectAccountRequest();
  buildCounterRejectAccountRequest++;
  if (buildCounterRejectAccountRequest < 3) {
    o.approvalName = 'foo';
    o.reason = 'foo';
  }
  buildCounterRejectAccountRequest--;
  return o;
}

void checkRejectAccountRequest(api.RejectAccountRequest o) {
  buildCounterRejectAccountRequest++;
  if (buildCounterRejectAccountRequest < 3) {
    unittest.expect(
      o.approvalName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterRejectAccountRequest--;
}

core.int buildCounterRejectEntitlementPlanChangeRequest = 0;
api.RejectEntitlementPlanChangeRequest
    buildRejectEntitlementPlanChangeRequest() {
  final o = api.RejectEntitlementPlanChangeRequest();
  buildCounterRejectEntitlementPlanChangeRequest++;
  if (buildCounterRejectEntitlementPlanChangeRequest < 3) {
    o.pendingPlanName = 'foo';
    o.reason = 'foo';
  }
  buildCounterRejectEntitlementPlanChangeRequest--;
  return o;
}

void checkRejectEntitlementPlanChangeRequest(
    api.RejectEntitlementPlanChangeRequest o) {
  buildCounterRejectEntitlementPlanChangeRequest++;
  if (buildCounterRejectEntitlementPlanChangeRequest < 3) {
    unittest.expect(
      o.pendingPlanName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterRejectEntitlementPlanChangeRequest--;
}

core.int buildCounterRejectEntitlementRequest = 0;
api.RejectEntitlementRequest buildRejectEntitlementRequest() {
  final o = api.RejectEntitlementRequest();
  buildCounterRejectEntitlementRequest++;
  if (buildCounterRejectEntitlementRequest < 3) {
    o.reason = 'foo';
  }
  buildCounterRejectEntitlementRequest--;
  return o;
}

void checkRejectEntitlementRequest(api.RejectEntitlementRequest o) {
  buildCounterRejectEntitlementRequest++;
  if (buildCounterRejectEntitlementRequest < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterRejectEntitlementRequest--;
}

core.int buildCounterResetAccountRequest = 0;
api.ResetAccountRequest buildResetAccountRequest() {
  final o = api.ResetAccountRequest();
  buildCounterResetAccountRequest++;
  if (buildCounterResetAccountRequest < 3) {}
  buildCounterResetAccountRequest--;
  return o;
}

void checkResetAccountRequest(api.ResetAccountRequest o) {
  buildCounterResetAccountRequest++;
  if (buildCounterResetAccountRequest < 3) {}
  buildCounterResetAccountRequest--;
}

core.int buildCounterSuspendEntitlementRequest = 0;
api.SuspendEntitlementRequest buildSuspendEntitlementRequest() {
  final o = api.SuspendEntitlementRequest();
  buildCounterSuspendEntitlementRequest++;
  if (buildCounterSuspendEntitlementRequest < 3) {
    o.reason = 'foo';
  }
  buildCounterSuspendEntitlementRequest--;
  return o;
}

void checkSuspendEntitlementRequest(api.SuspendEntitlementRequest o) {
  buildCounterSuspendEntitlementRequest++;
  if (buildCounterSuspendEntitlementRequest < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterSuspendEntitlementRequest--;
}

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Account.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-Approval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Approval.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApproval(od);
    });
  });

  unittest.group('obj-schema-ApproveAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproveAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproveAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApproveAccountRequest(od);
    });
  });

  unittest.group('obj-schema-ApproveEntitlementPlanChangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproveEntitlementPlanChangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproveEntitlementPlanChangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApproveEntitlementPlanChangeRequest(od);
    });
  });

  unittest.group('obj-schema-ApproveEntitlementRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproveEntitlementRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproveEntitlementRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApproveEntitlementRequest(od);
    });
  });

  unittest.group('obj-schema-Consumer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Consumer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConsumer(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Entitlement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntitlement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Entitlement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntitlement(od);
    });
  });

  unittest.group('obj-schema-ListAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListEntitlementsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEntitlementsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEntitlementsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEntitlementsResponse(od);
    });
  });

  unittest.group('obj-schema-RejectAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRejectAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RejectAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRejectAccountRequest(od);
    });
  });

  unittest.group('obj-schema-RejectEntitlementPlanChangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRejectEntitlementPlanChangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RejectEntitlementPlanChangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRejectEntitlementPlanChangeRequest(od);
    });
  });

  unittest.group('obj-schema-RejectEntitlementRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRejectEntitlementRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RejectEntitlementRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRejectEntitlementRequest(od);
    });
  });

  unittest.group('obj-schema-ResetAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetAccountRequest(od);
    });
  });

  unittest.group('obj-schema-SuspendEntitlementRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuspendEntitlementRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuspendEntitlementRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuspendEntitlementRequest(od);
    });
  });

  unittest.group('resource-ProvidersAccountsResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .accounts;
      final arg_request = buildApproveAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApproveAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApproveAccountRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.approve(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .accounts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .accounts;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAccountsResponse(response as api.ListAccountsResponse);
    });

    unittest.test('method--reject', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .accounts;
      final arg_request = buildRejectAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RejectAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRejectAccountRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reject(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .accounts;
      final arg_request = buildResetAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResetAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetAccountRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reset(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-ProvidersEntitlementsResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .entitlements;
      final arg_request = buildApproveEntitlementRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApproveEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApproveEntitlementRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.approve(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--approvePlanChange', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .entitlements;
      final arg_request = buildApproveEntitlementPlanChangeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApproveEntitlementPlanChangeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApproveEntitlementPlanChangeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.approvePlanChange(arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .entitlements;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEntitlement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEntitlement(response as api.Entitlement);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .entitlements;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListEntitlementsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListEntitlementsResponse(response as api.ListEntitlementsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .entitlements;
      final arg_request = buildEntitlement();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Entitlement.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntitlement(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEntitlement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkEntitlement(response as api.Entitlement);
    });

    unittest.test('method--reject', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .entitlements;
      final arg_request = buildRejectEntitlementRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RejectEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRejectEntitlementRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reject(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--rejectPlanChange', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .entitlements;
      final arg_request = buildRejectEntitlementPlanChangeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RejectEntitlementPlanChangeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRejectEntitlementPlanChangeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.rejectPlanChange(arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--suspend', () async {
      final mock = HttpServerMock();
      final res = api.CloudCommercePartnerProcurementServiceApi(mock)
          .providers
          .entitlements;
      final arg_request = buildSuspendEntitlementRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SuspendEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSuspendEntitlementRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.suspend(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });
}
