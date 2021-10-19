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

import 'package:googleapis/serviceconsumermanagement/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddTenantProjectRequest = 0;
api.AddTenantProjectRequest buildAddTenantProjectRequest() {
  final o = api.AddTenantProjectRequest();
  buildCounterAddTenantProjectRequest++;
  if (buildCounterAddTenantProjectRequest < 3) {
    o.projectConfig = buildTenantProjectConfig();
    o.tag = 'foo';
  }
  buildCounterAddTenantProjectRequest--;
  return o;
}

void checkAddTenantProjectRequest(api.AddTenantProjectRequest o) {
  buildCounterAddTenantProjectRequest++;
  if (buildCounterAddTenantProjectRequest < 3) {
    checkTenantProjectConfig(o.projectConfig!);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddTenantProjectRequest--;
}

core.int buildCounterApplyTenantProjectConfigRequest = 0;
api.ApplyTenantProjectConfigRequest buildApplyTenantProjectConfigRequest() {
  final o = api.ApplyTenantProjectConfigRequest();
  buildCounterApplyTenantProjectConfigRequest++;
  if (buildCounterApplyTenantProjectConfigRequest < 3) {
    o.projectConfig = buildTenantProjectConfig();
    o.tag = 'foo';
  }
  buildCounterApplyTenantProjectConfigRequest--;
  return o;
}

void checkApplyTenantProjectConfigRequest(
    api.ApplyTenantProjectConfigRequest o) {
  buildCounterApplyTenantProjectConfigRequest++;
  if (buildCounterApplyTenantProjectConfigRequest < 3) {
    checkTenantProjectConfig(o.projectConfig!);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplyTenantProjectConfigRequest--;
}

core.int buildCounterAttachTenantProjectRequest = 0;
api.AttachTenantProjectRequest buildAttachTenantProjectRequest() {
  final o = api.AttachTenantProjectRequest();
  buildCounterAttachTenantProjectRequest++;
  if (buildCounterAttachTenantProjectRequest < 3) {
    o.externalResource = 'foo';
    o.reservedResource = 'foo';
    o.tag = 'foo';
  }
  buildCounterAttachTenantProjectRequest--;
  return o;
}

void checkAttachTenantProjectRequest(api.AttachTenantProjectRequest o) {
  buildCounterAttachTenantProjectRequest++;
  if (buildCounterAttachTenantProjectRequest < 3) {
    unittest.expect(
      o.externalResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttachTenantProjectRequest--;
}

core.int buildCounterBillingConfig = 0;
api.BillingConfig buildBillingConfig() {
  final o = api.BillingConfig();
  buildCounterBillingConfig++;
  if (buildCounterBillingConfig < 3) {
    o.billingAccount = 'foo';
  }
  buildCounterBillingConfig--;
  return o;
}

void checkBillingConfig(api.BillingConfig o) {
  buildCounterBillingConfig++;
  if (buildCounterBillingConfig < 3) {
    unittest.expect(
      o.billingAccount!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingConfig--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCreateTenancyUnitRequest = 0;
api.CreateTenancyUnitRequest buildCreateTenancyUnitRequest() {
  final o = api.CreateTenancyUnitRequest();
  buildCounterCreateTenancyUnitRequest++;
  if (buildCounterCreateTenancyUnitRequest < 3) {
    o.tenancyUnitId = 'foo';
  }
  buildCounterCreateTenancyUnitRequest--;
  return o;
}

void checkCreateTenancyUnitRequest(api.CreateTenancyUnitRequest o) {
  buildCounterCreateTenancyUnitRequest++;
  if (buildCounterCreateTenancyUnitRequest < 3) {
    unittest.expect(
      o.tenancyUnitId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateTenancyUnitRequest--;
}

core.int buildCounterDeleteTenantProjectRequest = 0;
api.DeleteTenantProjectRequest buildDeleteTenantProjectRequest() {
  final o = api.DeleteTenantProjectRequest();
  buildCounterDeleteTenantProjectRequest++;
  if (buildCounterDeleteTenantProjectRequest < 3) {
    o.tag = 'foo';
  }
  buildCounterDeleteTenantProjectRequest--;
  return o;
}

void checkDeleteTenantProjectRequest(api.DeleteTenantProjectRequest o) {
  buildCounterDeleteTenantProjectRequest++;
  if (buildCounterDeleteTenantProjectRequest < 3) {
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteTenantProjectRequest--;
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

core.List<api.Operation> buildUnnamed0() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed0(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed0();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.TenancyUnit> buildUnnamed1() => [
      buildTenancyUnit(),
      buildTenancyUnit(),
    ];

void checkUnnamed1(core.List<api.TenancyUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTenancyUnit(o[0]);
  checkTenancyUnit(o[1]);
}

core.int buildCounterListTenancyUnitsResponse = 0;
api.ListTenancyUnitsResponse buildListTenancyUnitsResponse() {
  final o = api.ListTenancyUnitsResponse();
  buildCounterListTenancyUnitsResponse++;
  if (buildCounterListTenancyUnitsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tenancyUnits = buildUnnamed1();
  }
  buildCounterListTenancyUnitsResponse--;
  return o;
}

void checkListTenancyUnitsResponse(api.ListTenancyUnitsResponse o) {
  buildCounterListTenancyUnitsResponse++;
  if (buildCounterListTenancyUnitsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.tenancyUnits!);
  }
  buildCounterListTenancyUnitsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
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

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed3() => {
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

void checkUnnamed3(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2();
    o.name = 'foo';
    o.response = buildUnnamed3();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed2(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterPolicyBinding = 0;
api.PolicyBinding buildPolicyBinding() {
  final o = api.PolicyBinding();
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    o.members = buildUnnamed4();
    o.role = 'foo';
  }
  buildCounterPolicyBinding--;
  return o;
}

void checkPolicyBinding(api.PolicyBinding o) {
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    checkUnnamed4(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyBinding--;
}

core.int buildCounterRemoveTenantProjectRequest = 0;
api.RemoveTenantProjectRequest buildRemoveTenantProjectRequest() {
  final o = api.RemoveTenantProjectRequest();
  buildCounterRemoveTenantProjectRequest++;
  if (buildCounterRemoveTenantProjectRequest < 3) {
    o.tag = 'foo';
  }
  buildCounterRemoveTenantProjectRequest--;
  return o;
}

void checkRemoveTenantProjectRequest(api.RemoveTenantProjectRequest o) {
  buildCounterRemoveTenantProjectRequest++;
  if (buildCounterRemoveTenantProjectRequest < 3) {
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoveTenantProjectRequest--;
}

core.List<api.TenancyUnit> buildUnnamed5() => [
      buildTenancyUnit(),
      buildTenancyUnit(),
    ];

void checkUnnamed5(core.List<api.TenancyUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTenancyUnit(o[0]);
  checkTenancyUnit(o[1]);
}

core.int buildCounterSearchTenancyUnitsResponse = 0;
api.SearchTenancyUnitsResponse buildSearchTenancyUnitsResponse() {
  final o = api.SearchTenancyUnitsResponse();
  buildCounterSearchTenancyUnitsResponse++;
  if (buildCounterSearchTenancyUnitsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tenancyUnits = buildUnnamed5();
  }
  buildCounterSearchTenancyUnitsResponse--;
  return o;
}

void checkSearchTenancyUnitsResponse(api.SearchTenancyUnitsResponse o) {
  buildCounterSearchTenancyUnitsResponse++;
  if (buildCounterSearchTenancyUnitsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.tenancyUnits!);
  }
  buildCounterSearchTenancyUnitsResponse--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterServiceAccountConfig = 0;
api.ServiceAccountConfig buildServiceAccountConfig() {
  final o = api.ServiceAccountConfig();
  buildCounterServiceAccountConfig++;
  if (buildCounterServiceAccountConfig < 3) {
    o.accountId = 'foo';
    o.tenantProjectRoles = buildUnnamed6();
  }
  buildCounterServiceAccountConfig--;
  return o;
}

void checkServiceAccountConfig(api.ServiceAccountConfig o) {
  buildCounterServiceAccountConfig++;
  if (buildCounterServiceAccountConfig < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.tenantProjectRoles!);
  }
  buildCounterServiceAccountConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed7() => {
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

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed8() => [
      buildUnnamed7(),
      buildUnnamed7(),
    ];

void checkUnnamed8(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7(o[0]);
  checkUnnamed7(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed8(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.TenantResource> buildUnnamed9() => [
      buildTenantResource(),
      buildTenantResource(),
    ];

void checkUnnamed9(core.List<api.TenantResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTenantResource(o[0]);
  checkTenantResource(o[1]);
}

core.int buildCounterTenancyUnit = 0;
api.TenancyUnit buildTenancyUnit() {
  final o = api.TenancyUnit();
  buildCounterTenancyUnit++;
  if (buildCounterTenancyUnit < 3) {
    o.consumer = 'foo';
    o.createTime = 'foo';
    o.name = 'foo';
    o.service = 'foo';
    o.tenantResources = buildUnnamed9();
  }
  buildCounterTenancyUnit--;
  return o;
}

void checkTenancyUnit(api.TenancyUnit o) {
  buildCounterTenancyUnit++;
  if (buildCounterTenancyUnit < 3) {
    unittest.expect(
      o.consumer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.tenantResources!);
  }
  buildCounterTenancyUnit--;
}

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.int buildCounterTenantProjectConfig = 0;
api.TenantProjectConfig buildTenantProjectConfig() {
  final o = api.TenantProjectConfig();
  buildCounterTenantProjectConfig++;
  if (buildCounterTenantProjectConfig < 3) {
    o.billingConfig = buildBillingConfig();
    o.folder = 'foo';
    o.labels = buildUnnamed10();
    o.serviceAccountConfig = buildServiceAccountConfig();
    o.services = buildUnnamed11();
    o.tenantProjectPolicy = buildTenantProjectPolicy();
  }
  buildCounterTenantProjectConfig--;
  return o;
}

void checkTenantProjectConfig(api.TenantProjectConfig o) {
  buildCounterTenantProjectConfig++;
  if (buildCounterTenantProjectConfig < 3) {
    checkBillingConfig(o.billingConfig!);
    unittest.expect(
      o.folder!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.labels!);
    checkServiceAccountConfig(o.serviceAccountConfig!);
    checkUnnamed11(o.services!);
    checkTenantProjectPolicy(o.tenantProjectPolicy!);
  }
  buildCounterTenantProjectConfig--;
}

core.List<api.PolicyBinding> buildUnnamed12() => [
      buildPolicyBinding(),
      buildPolicyBinding(),
    ];

void checkUnnamed12(core.List<api.PolicyBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBinding(o[0]);
  checkPolicyBinding(o[1]);
}

core.int buildCounterTenantProjectPolicy = 0;
api.TenantProjectPolicy buildTenantProjectPolicy() {
  final o = api.TenantProjectPolicy();
  buildCounterTenantProjectPolicy++;
  if (buildCounterTenantProjectPolicy < 3) {
    o.policyBindings = buildUnnamed12();
  }
  buildCounterTenantProjectPolicy--;
  return o;
}

void checkTenantProjectPolicy(api.TenantProjectPolicy o) {
  buildCounterTenantProjectPolicy++;
  if (buildCounterTenantProjectPolicy < 3) {
    checkUnnamed12(o.policyBindings!);
  }
  buildCounterTenantProjectPolicy--;
}

core.int buildCounterTenantResource = 0;
api.TenantResource buildTenantResource() {
  final o = api.TenantResource();
  buildCounterTenantResource++;
  if (buildCounterTenantResource < 3) {
    o.resource = 'foo';
    o.status = 'foo';
    o.tag = 'foo';
  }
  buildCounterTenantResource--;
  return o;
}

void checkTenantResource(api.TenantResource o) {
  buildCounterTenantResource++;
  if (buildCounterTenantResource < 3) {
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterTenantResource--;
}

core.int buildCounterUndeleteTenantProjectRequest = 0;
api.UndeleteTenantProjectRequest buildUndeleteTenantProjectRequest() {
  final o = api.UndeleteTenantProjectRequest();
  buildCounterUndeleteTenantProjectRequest++;
  if (buildCounterUndeleteTenantProjectRequest < 3) {
    o.tag = 'foo';
  }
  buildCounterUndeleteTenantProjectRequest--;
  return o;
}

void checkUndeleteTenantProjectRequest(api.UndeleteTenantProjectRequest o) {
  buildCounterUndeleteTenantProjectRequest++;
  if (buildCounterUndeleteTenantProjectRequest < 3) {
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterUndeleteTenantProjectRequest--;
}

void main() {
  unittest.group('obj-schema-AddTenantProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddTenantProjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddTenantProjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddTenantProjectRequest(od);
    });
  });

  unittest.group('obj-schema-ApplyTenantProjectConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplyTenantProjectConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplyTenantProjectConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplyTenantProjectConfigRequest(od);
    });
  });

  unittest.group('obj-schema-AttachTenantProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttachTenantProjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttachTenantProjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttachTenantProjectRequest(od);
    });
  });

  unittest.group('obj-schema-BillingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingConfig(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-CreateTenancyUnitRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateTenancyUnitRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateTenancyUnitRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateTenancyUnitRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteTenantProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteTenantProjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteTenantProjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteTenantProjectRequest(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTenancyUnitsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTenancyUnitsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTenancyUnitsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTenancyUnitsResponse(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PolicyBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyBinding(od);
    });
  });

  unittest.group('obj-schema-RemoveTenantProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveTenantProjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveTenantProjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveTenantProjectRequest(od);
    });
  });

  unittest.group('obj-schema-SearchTenancyUnitsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchTenancyUnitsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchTenancyUnitsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchTenancyUnitsResponse(od);
    });
  });

  unittest.group('obj-schema-ServiceAccountConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccountConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccountConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAccountConfig(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TenancyUnit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTenancyUnit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TenancyUnit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTenancyUnit(od);
    });
  });

  unittest.group('obj-schema-TenantProjectConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTenantProjectConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TenantProjectConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTenantProjectConfig(od);
    });
  });

  unittest.group('obj-schema-TenantProjectPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTenantProjectPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TenantProjectPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTenantProjectPolicy(od);
    });
  });

  unittest.group('obj-schema-TenantResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTenantResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TenantResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTenantResource(od);
    });
  });

  unittest.group('obj-schema-UndeleteTenantProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteTenantProjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteTenantProjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteTenantProjectRequest(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ServicesResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).services;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchTenancyUnitsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkSearchTenancyUnitsResponse(
          response as api.SearchTenancyUnitsResponse);
    });
  });

  unittest.group('resource-ServicesTenancyUnitsResource', () {
    unittest.test('method--addProject', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      final arg_request = buildAddTenantProjectRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddTenantProjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddTenantProjectRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.addProject(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--applyProjectConfig', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      final arg_request = buildApplyTenantProjectConfigRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApplyTenantProjectConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApplyTenantProjectConfigRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.applyProjectConfig(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--attachProject', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      final arg_request = buildAttachTenantProjectRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AttachTenantProjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAttachTenantProjectRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.attachProject(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      final arg_request = buildCreateTenancyUnitRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateTenancyUnitRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateTenancyUnitRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildTenancyUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkTenancyUnit(response as api.TenancyUnit);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deleteProject', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      final arg_request = buildDeleteTenantProjectRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeleteTenantProjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeleteTenantProjectRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deleteProject(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildListTenancyUnitsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTenancyUnitsResponse(response as api.ListTenancyUnitsResponse);
    });

    unittest.test('method--removeProject', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      final arg_request = buildRemoveTenantProjectRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveTenantProjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveTenantProjectRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.removeProject(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--undeleteProject', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      final arg_request = buildUndeleteTenantProjectRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteTenantProjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteTenantProjectRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.undeleteProject(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
