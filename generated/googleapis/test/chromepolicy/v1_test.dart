// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/chromepolicy/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleChromePolicyVersionsV1AdditionalTargetKeyName = 0;
api.GoogleChromePolicyVersionsV1AdditionalTargetKeyName
    buildGoogleChromePolicyVersionsV1AdditionalTargetKeyName() {
  final o = api.GoogleChromePolicyVersionsV1AdditionalTargetKeyName();
  buildCounterGoogleChromePolicyVersionsV1AdditionalTargetKeyName++;
  if (buildCounterGoogleChromePolicyVersionsV1AdditionalTargetKeyName < 3) {
    o.key = 'foo';
    o.keyDescription = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1AdditionalTargetKeyName--;
  return o;
}

void checkGoogleChromePolicyVersionsV1AdditionalTargetKeyName(
    api.GoogleChromePolicyVersionsV1AdditionalTargetKeyName o) {
  buildCounterGoogleChromePolicyVersionsV1AdditionalTargetKeyName++;
  if (buildCounterGoogleChromePolicyVersionsV1AdditionalTargetKeyName < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyDescription!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1AdditionalTargetKeyName--;
}

core.List<api.GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest>
    buildUnnamed0() => [
          buildGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest(),
          buildGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest(),
        ];

void checkUnnamed0(
    core.List<api.GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest(o[0]);
  checkGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest(o[1]);
}

core.int
    buildCounterGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest = 0;
api.GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest
    buildGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest() {
  final o = api.GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest();
  buildCounterGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest <
      3) {
    o.requests = buildUnnamed0();
  }
  buildCounterGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest(
    api.GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest o) {
  buildCounterGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest <
      3) {
    checkUnnamed0(o.requests!);
  }
  buildCounterGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest--;
}

core.List<api.GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest>
    buildUnnamed1() => [
          buildGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest(),
          buildGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest(),
        ];

void checkUnnamed1(
    core.List<api.GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest(o[0]);
  checkGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest(o[1]);
}

core.int
    buildCounterGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest =
    0;
api.GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest
    buildGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest() {
  final o =
      api.GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest();
  buildCounterGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest <
      3) {
    o.requests = buildUnnamed1();
  }
  buildCounterGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest(
    api.GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest o) {
  buildCounterGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest <
      3) {
    checkUnnamed1(o.requests!);
  }
  buildCounterGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest--;
}

core.List<api.GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest>
    buildUnnamed2() => [
          buildGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest(),
          buildGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest(),
        ];

void checkUnnamed2(
    core.List<api.GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest(o[0]);
  checkGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest(o[1]);
}

core.int
    buildCounterGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest = 0;
api.GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest
    buildGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest() {
  final o = api.GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest();
  buildCounterGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest <
      3) {
    o.requests = buildUnnamed2();
  }
  buildCounterGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest(
    api.GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest o) {
  buildCounterGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest <
      3) {
    checkUnnamed2(o.requests!);
  }
  buildCounterGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest--;
}

core.List<api.GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest>
    buildUnnamed3() => [
          buildGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest(),
          buildGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest(),
        ];

void checkUnnamed3(
    core.List<api.GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest(o[0]);
  checkGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest(o[1]);
}

core.int
    buildCounterGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest =
    0;
api.GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest
    buildGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest() {
  final o = api.GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest();
  buildCounterGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest <
      3) {
    o.requests = buildUnnamed3();
  }
  buildCounterGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest(
    api.GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest o) {
  buildCounterGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest <
      3) {
    checkUnnamed3(o.requests!);
  }
  buildCounterGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest--;
}

core.List<api.GoogleChromePolicyVersionsV1NetworkSetting> buildUnnamed4() => [
      buildGoogleChromePolicyVersionsV1NetworkSetting(),
      buildGoogleChromePolicyVersionsV1NetworkSetting(),
    ];

void checkUnnamed4(
    core.List<api.GoogleChromePolicyVersionsV1NetworkSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1NetworkSetting(o[0]);
  checkGoogleChromePolicyVersionsV1NetworkSetting(o[1]);
}

core.int buildCounterGoogleChromePolicyVersionsV1DefineCertificateRequest = 0;
api.GoogleChromePolicyVersionsV1DefineCertificateRequest
    buildGoogleChromePolicyVersionsV1DefineCertificateRequest() {
  final o = api.GoogleChromePolicyVersionsV1DefineCertificateRequest();
  buildCounterGoogleChromePolicyVersionsV1DefineCertificateRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1DefineCertificateRequest < 3) {
    o.ceritificateName = 'foo';
    o.certificate = 'foo';
    o.settings = buildUnnamed4();
    o.targetResource = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1DefineCertificateRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1DefineCertificateRequest(
    api.GoogleChromePolicyVersionsV1DefineCertificateRequest o) {
  buildCounterGoogleChromePolicyVersionsV1DefineCertificateRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1DefineCertificateRequest < 3) {
    unittest.expect(
      o.ceritificateName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.certificate!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.settings!);
    unittest.expect(
      o.targetResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1DefineCertificateRequest--;
}

core.List<api.GoogleChromePolicyVersionsV1NetworkSetting> buildUnnamed5() => [
      buildGoogleChromePolicyVersionsV1NetworkSetting(),
      buildGoogleChromePolicyVersionsV1NetworkSetting(),
    ];

void checkUnnamed5(
    core.List<api.GoogleChromePolicyVersionsV1NetworkSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1NetworkSetting(o[0]);
  checkGoogleChromePolicyVersionsV1NetworkSetting(o[1]);
}

core.int buildCounterGoogleChromePolicyVersionsV1DefineCertificateResponse = 0;
api.GoogleChromePolicyVersionsV1DefineCertificateResponse
    buildGoogleChromePolicyVersionsV1DefineCertificateResponse() {
  final o = api.GoogleChromePolicyVersionsV1DefineCertificateResponse();
  buildCounterGoogleChromePolicyVersionsV1DefineCertificateResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1DefineCertificateResponse < 3) {
    o.networkId = 'foo';
    o.settings = buildUnnamed5();
    o.targetResource = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1DefineCertificateResponse--;
  return o;
}

void checkGoogleChromePolicyVersionsV1DefineCertificateResponse(
    api.GoogleChromePolicyVersionsV1DefineCertificateResponse o) {
  buildCounterGoogleChromePolicyVersionsV1DefineCertificateResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1DefineCertificateResponse < 3) {
    unittest.expect(
      o.networkId!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.settings!);
    unittest.expect(
      o.targetResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1DefineCertificateResponse--;
}

core.List<api.GoogleChromePolicyVersionsV1NetworkSetting> buildUnnamed6() => [
      buildGoogleChromePolicyVersionsV1NetworkSetting(),
      buildGoogleChromePolicyVersionsV1NetworkSetting(),
    ];

void checkUnnamed6(
    core.List<api.GoogleChromePolicyVersionsV1NetworkSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1NetworkSetting(o[0]);
  checkGoogleChromePolicyVersionsV1NetworkSetting(o[1]);
}

core.int buildCounterGoogleChromePolicyVersionsV1DefineNetworkRequest = 0;
api.GoogleChromePolicyVersionsV1DefineNetworkRequest
    buildGoogleChromePolicyVersionsV1DefineNetworkRequest() {
  final o = api.GoogleChromePolicyVersionsV1DefineNetworkRequest();
  buildCounterGoogleChromePolicyVersionsV1DefineNetworkRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1DefineNetworkRequest < 3) {
    o.name = 'foo';
    o.settings = buildUnnamed6();
    o.targetResource = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1DefineNetworkRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1DefineNetworkRequest(
    api.GoogleChromePolicyVersionsV1DefineNetworkRequest o) {
  buildCounterGoogleChromePolicyVersionsV1DefineNetworkRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1DefineNetworkRequest < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.settings!);
    unittest.expect(
      o.targetResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1DefineNetworkRequest--;
}

core.List<api.GoogleChromePolicyVersionsV1NetworkSetting> buildUnnamed7() => [
      buildGoogleChromePolicyVersionsV1NetworkSetting(),
      buildGoogleChromePolicyVersionsV1NetworkSetting(),
    ];

void checkUnnamed7(
    core.List<api.GoogleChromePolicyVersionsV1NetworkSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1NetworkSetting(o[0]);
  checkGoogleChromePolicyVersionsV1NetworkSetting(o[1]);
}

core.int buildCounterGoogleChromePolicyVersionsV1DefineNetworkResponse = 0;
api.GoogleChromePolicyVersionsV1DefineNetworkResponse
    buildGoogleChromePolicyVersionsV1DefineNetworkResponse() {
  final o = api.GoogleChromePolicyVersionsV1DefineNetworkResponse();
  buildCounterGoogleChromePolicyVersionsV1DefineNetworkResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1DefineNetworkResponse < 3) {
    o.networkId = 'foo';
    o.settings = buildUnnamed7();
    o.targetResource = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1DefineNetworkResponse--;
  return o;
}

void checkGoogleChromePolicyVersionsV1DefineNetworkResponse(
    api.GoogleChromePolicyVersionsV1DefineNetworkResponse o) {
  buildCounterGoogleChromePolicyVersionsV1DefineNetworkResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1DefineNetworkResponse < 3) {
    unittest.expect(
      o.networkId!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.settings!);
    unittest.expect(
      o.targetResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1DefineNetworkResponse--;
}

core.int buildCounterGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest = 0;
api.GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest
    buildGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest() {
  final o = api.GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest();
  buildCounterGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest < 3) {
    o.policySchema = 'foo';
    o.policyTargetKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
  }
  buildCounterGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest(
    api.GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest o) {
  buildCounterGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest < 3) {
    unittest.expect(
      o.policySchema!,
      unittest.equals('foo'),
    );
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.policyTargetKey!);
  }
  buildCounterGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest--;
}

core.int buildCounterGoogleChromePolicyVersionsV1FieldConstraints = 0;
api.GoogleChromePolicyVersionsV1FieldConstraints
    buildGoogleChromePolicyVersionsV1FieldConstraints() {
  final o = api.GoogleChromePolicyVersionsV1FieldConstraints();
  buildCounterGoogleChromePolicyVersionsV1FieldConstraints++;
  if (buildCounterGoogleChromePolicyVersionsV1FieldConstraints < 3) {
    o.numericRangeConstraint =
        buildGoogleChromePolicyVersionsV1NumericRangeConstraint();
  }
  buildCounterGoogleChromePolicyVersionsV1FieldConstraints--;
  return o;
}

void checkGoogleChromePolicyVersionsV1FieldConstraints(
    api.GoogleChromePolicyVersionsV1FieldConstraints o) {
  buildCounterGoogleChromePolicyVersionsV1FieldConstraints++;
  if (buildCounterGoogleChromePolicyVersionsV1FieldConstraints < 3) {
    checkGoogleChromePolicyVersionsV1NumericRangeConstraint(
        o.numericRangeConstraint!);
  }
  buildCounterGoogleChromePolicyVersionsV1FieldConstraints--;
}

core.int buildCounterGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest =
    0;
api.GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest
    buildGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest() {
  final o = api.GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest();
  buildCounterGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest < 3) {
    o.policySchema = 'foo';
    o.policyTargetKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
  }
  buildCounterGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest(
    api.GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest o) {
  buildCounterGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest < 3) {
    unittest.expect(
      o.policySchema!,
      unittest.equals('foo'),
    );
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.policyTargetKey!);
  }
  buildCounterGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest--;
}

core.int
    buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest =
    0;
api.GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest
    buildGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest() {
  final o = api.GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest();
  buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest <
      3) {
    o.policyNamespace = 'foo';
    o.policySchema = 'foo';
    o.policyTargetKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
  }
  buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest(
    api.GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest o) {
  buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest <
      3) {
    unittest.expect(
      o.policyNamespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policySchema!,
      unittest.equals('foo'),
    );
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.policyTargetKey!);
  }
  buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.int
    buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse =
    0;
api.GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse
    buildGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse() {
  final o = api.GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse();
  buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse <
      3) {
    o.groupIds = buildUnnamed8();
    o.policyNamespace = 'foo';
    o.policySchema = 'foo';
    o.policyTargetKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
  }
  buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse--;
  return o;
}

void checkGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse(
    api.GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse o) {
  buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse <
      3) {
    checkUnnamed8(o.groupIds!);
    unittest.expect(
      o.policyNamespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policySchema!,
      unittest.equals('foo'),
    );
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.policyTargetKey!);
  }
  buildCounterGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse--;
}

core.List<api.GoogleChromePolicyVersionsV1PolicySchema> buildUnnamed9() => [
      buildGoogleChromePolicyVersionsV1PolicySchema(),
      buildGoogleChromePolicyVersionsV1PolicySchema(),
    ];

void checkUnnamed9(core.List<api.GoogleChromePolicyVersionsV1PolicySchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1PolicySchema(o[0]);
  checkGoogleChromePolicyVersionsV1PolicySchema(o[1]);
}

core.int buildCounterGoogleChromePolicyVersionsV1ListPolicySchemasResponse = 0;
api.GoogleChromePolicyVersionsV1ListPolicySchemasResponse
    buildGoogleChromePolicyVersionsV1ListPolicySchemasResponse() {
  final o = api.GoogleChromePolicyVersionsV1ListPolicySchemasResponse();
  buildCounterGoogleChromePolicyVersionsV1ListPolicySchemasResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1ListPolicySchemasResponse < 3) {
    o.nextPageToken = 'foo';
    o.policySchemas = buildUnnamed9();
  }
  buildCounterGoogleChromePolicyVersionsV1ListPolicySchemasResponse--;
  return o;
}

void checkGoogleChromePolicyVersionsV1ListPolicySchemasResponse(
    api.GoogleChromePolicyVersionsV1ListPolicySchemasResponse o) {
  buildCounterGoogleChromePolicyVersionsV1ListPolicySchemasResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1ListPolicySchemasResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.policySchemas!);
  }
  buildCounterGoogleChromePolicyVersionsV1ListPolicySchemasResponse--;
}

core.int buildCounterGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest = 0;
api.GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest
    buildGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest() {
  final o = api.GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest();
  buildCounterGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest < 3) {
    o.policyTargetKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
    o.policyValue = buildGoogleChromePolicyVersionsV1PolicyValue();
    o.updateMask = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest(
    api.GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest o) {
  buildCounterGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest < 3) {
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.policyTargetKey!);
    checkGoogleChromePolicyVersionsV1PolicyValue(o.policyValue!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest--;
}

core.int buildCounterGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest = 0;
api.GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest
    buildGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest() {
  final o = api.GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest();
  buildCounterGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest < 3) {
    o.policyTargetKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
    o.policyValue = buildGoogleChromePolicyVersionsV1PolicyValue();
    o.updateMask = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest(
    api.GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest o) {
  buildCounterGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest < 3) {
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.policyTargetKey!);
    checkGoogleChromePolicyVersionsV1PolicyValue(o.policyValue!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleChromePolicyVersionsV1NetworkSetting = 0;
api.GoogleChromePolicyVersionsV1NetworkSetting
    buildGoogleChromePolicyVersionsV1NetworkSetting() {
  final o = api.GoogleChromePolicyVersionsV1NetworkSetting();
  buildCounterGoogleChromePolicyVersionsV1NetworkSetting++;
  if (buildCounterGoogleChromePolicyVersionsV1NetworkSetting < 3) {
    o.policySchema = 'foo';
    o.value = buildUnnamed10();
  }
  buildCounterGoogleChromePolicyVersionsV1NetworkSetting--;
  return o;
}

void checkGoogleChromePolicyVersionsV1NetworkSetting(
    api.GoogleChromePolicyVersionsV1NetworkSetting o) {
  buildCounterGoogleChromePolicyVersionsV1NetworkSetting++;
  if (buildCounterGoogleChromePolicyVersionsV1NetworkSetting < 3) {
    unittest.expect(
      o.policySchema!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.value!);
  }
  buildCounterGoogleChromePolicyVersionsV1NetworkSetting--;
}

core.int buildCounterGoogleChromePolicyVersionsV1NumericRangeConstraint = 0;
api.GoogleChromePolicyVersionsV1NumericRangeConstraint
    buildGoogleChromePolicyVersionsV1NumericRangeConstraint() {
  final o = api.GoogleChromePolicyVersionsV1NumericRangeConstraint();
  buildCounterGoogleChromePolicyVersionsV1NumericRangeConstraint++;
  if (buildCounterGoogleChromePolicyVersionsV1NumericRangeConstraint < 3) {
    o.maximum = 'foo';
    o.minimum = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1NumericRangeConstraint--;
  return o;
}

void checkGoogleChromePolicyVersionsV1NumericRangeConstraint(
    api.GoogleChromePolicyVersionsV1NumericRangeConstraint o) {
  buildCounterGoogleChromePolicyVersionsV1NumericRangeConstraint++;
  if (buildCounterGoogleChromePolicyVersionsV1NumericRangeConstraint < 3) {
    unittest.expect(
      o.maximum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimum!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1NumericRangeConstraint--;
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

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.int buildCounterGoogleChromePolicyVersionsV1PolicyApiLifecycle = 0;
api.GoogleChromePolicyVersionsV1PolicyApiLifecycle
    buildGoogleChromePolicyVersionsV1PolicyApiLifecycle() {
  final o = api.GoogleChromePolicyVersionsV1PolicyApiLifecycle();
  buildCounterGoogleChromePolicyVersionsV1PolicyApiLifecycle++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicyApiLifecycle < 3) {
    o.deprecatedInFavorOf = buildUnnamed11();
    o.description = 'foo';
    o.endSupport = buildGoogleTypeDate();
    o.policyApiLifecycleStage = 'foo';
    o.scheduledToDeprecatePolicies = buildUnnamed12();
  }
  buildCounterGoogleChromePolicyVersionsV1PolicyApiLifecycle--;
  return o;
}

void checkGoogleChromePolicyVersionsV1PolicyApiLifecycle(
    api.GoogleChromePolicyVersionsV1PolicyApiLifecycle o) {
  buildCounterGoogleChromePolicyVersionsV1PolicyApiLifecycle++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicyApiLifecycle < 3) {
    checkUnnamed11(o.deprecatedInFavorOf!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGoogleTypeDate(o.endSupport!);
    unittest.expect(
      o.policyApiLifecycleStage!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.scheduledToDeprecatePolicies!);
  }
  buildCounterGoogleChromePolicyVersionsV1PolicyApiLifecycle--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.List<api.GoogleChromePolicyVersionsV1AdditionalTargetKeyName>
    buildUnnamed14() => [
          buildGoogleChromePolicyVersionsV1AdditionalTargetKeyName(),
          buildGoogleChromePolicyVersionsV1AdditionalTargetKeyName(),
        ];

void checkUnnamed14(
    core.List<api.GoogleChromePolicyVersionsV1AdditionalTargetKeyName> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1AdditionalTargetKeyName(o[0]);
  checkGoogleChromePolicyVersionsV1AdditionalTargetKeyName(o[1]);
}

core.List<api.GoogleChromePolicyVersionsV1PolicySchemaFieldDescription>
    buildUnnamed15() => [
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldDescription(),
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldDescription(),
        ];

void checkUnnamed15(
    core.List<api.GoogleChromePolicyVersionsV1PolicySchemaFieldDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1PolicySchemaFieldDescription(o[0]);
  checkGoogleChromePolicyVersionsV1PolicySchemaFieldDescription(o[1]);
}

core.List<api.GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription>
    buildUnnamed16() => [
          buildGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription(),
          buildGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription(),
        ];

void checkUnnamed16(
    core.List<api.GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription(o[0]);
  checkGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription(o[1]);
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.int buildCounterGoogleChromePolicyVersionsV1PolicySchema = 0;
api.GoogleChromePolicyVersionsV1PolicySchema
    buildGoogleChromePolicyVersionsV1PolicySchema() {
  final o = api.GoogleChromePolicyVersionsV1PolicySchema();
  buildCounterGoogleChromePolicyVersionsV1PolicySchema++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchema < 3) {
    o.accessRestrictions = buildUnnamed13();
    o.additionalTargetKeyNames = buildUnnamed14();
    o.categoryTitle = 'foo';
    o.definition = buildProto2FileDescriptorProto();
    o.fieldDescriptions = buildUnnamed15();
    o.name = 'foo';
    o.notices = buildUnnamed16();
    o.policyApiLifecycle =
        buildGoogleChromePolicyVersionsV1PolicyApiLifecycle();
    o.policyDescription = 'foo';
    o.schemaName = 'foo';
    o.supportUri = 'foo';
    o.validTargetResources = buildUnnamed17();
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchema--;
  return o;
}

void checkGoogleChromePolicyVersionsV1PolicySchema(
    api.GoogleChromePolicyVersionsV1PolicySchema o) {
  buildCounterGoogleChromePolicyVersionsV1PolicySchema++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchema < 3) {
    checkUnnamed13(o.accessRestrictions!);
    checkUnnamed14(o.additionalTargetKeyNames!);
    unittest.expect(
      o.categoryTitle!,
      unittest.equals('foo'),
    );
    checkProto2FileDescriptorProto(o.definition!);
    checkUnnamed15(o.fieldDescriptions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.notices!);
    checkGoogleChromePolicyVersionsV1PolicyApiLifecycle(o.policyApiLifecycle!);
    unittest.expect(
      o.policyDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schemaName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.supportUri!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.validTargetResources!);
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchema--;
}

core.int buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies =
    0;
api.GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies
    buildGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies() {
  final o = api.GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies();
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies <
      3) {
    o.sourceField = 'foo';
    o.sourceFieldValue = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies--;
  return o;
}

void checkGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies(
    api.GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies o) {
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies <
      3) {
    unittest.expect(
      o.sourceField!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceFieldValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies--;
}

core.List<api.GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies>
    buildUnnamed18() => [
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies(),
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies(),
        ];

void checkUnnamed18(
    core.List<api.GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies(o[0]);
  checkGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies(o[1]);
}

core.List<
        api.GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription>
    buildUnnamed19() => [
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription(),
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription(),
        ];

void checkUnnamed19(
    core.List<
            api
            .GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription(o[0]);
  checkGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription(o[1]);
}

core.List<api.GoogleChromePolicyVersionsV1PolicySchemaFieldDescription>
    buildUnnamed20() => [
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldDescription(),
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldDescription(),
        ];

void checkUnnamed20(
    core.List<api.GoogleChromePolicyVersionsV1PolicySchemaFieldDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1PolicySchemaFieldDescription(o[0]);
  checkGoogleChromePolicyVersionsV1PolicySchemaFieldDescription(o[1]);
}

core.List<api.GoogleChromePolicyVersionsV1PolicySchemaRequiredItems>
    buildUnnamed21() => [
          buildGoogleChromePolicyVersionsV1PolicySchemaRequiredItems(),
          buildGoogleChromePolicyVersionsV1PolicySchemaRequiredItems(),
        ];

void checkUnnamed21(
    core.List<api.GoogleChromePolicyVersionsV1PolicySchemaRequiredItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1PolicySchemaRequiredItems(o[0]);
  checkGoogleChromePolicyVersionsV1PolicySchemaRequiredItems(o[1]);
}

core.int buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDescription =
    0;
api.GoogleChromePolicyVersionsV1PolicySchemaFieldDescription
    buildGoogleChromePolicyVersionsV1PolicySchemaFieldDescription() {
  final o = api.GoogleChromePolicyVersionsV1PolicySchemaFieldDescription();
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDescription++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDescription <
      3) {
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.description = 'foo';
    o.field = 'foo';
    o.fieldConstraints = buildGoogleChromePolicyVersionsV1FieldConstraints();
    o.fieldDependencies = buildUnnamed18();
    o.fieldDescription = 'foo';
    o.inputConstraint = 'foo';
    o.knownValueDescriptions = buildUnnamed19();
    o.name = 'foo';
    o.nestedFieldDescriptions = buildUnnamed20();
    o.requiredItems = buildUnnamed21();
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDescription--;
  return o;
}

void checkGoogleChromePolicyVersionsV1PolicySchemaFieldDescription(
    api.GoogleChromePolicyVersionsV1PolicySchemaFieldDescription o) {
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDescription++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDescription <
      3) {
    var casted3 = (o.defaultValue!) as core.Map;
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    checkGoogleChromePolicyVersionsV1FieldConstraints(o.fieldConstraints!);
    checkUnnamed18(o.fieldDependencies!);
    unittest.expect(
      o.fieldDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputConstraint!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.knownValueDescriptions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.nestedFieldDescriptions!);
    checkUnnamed21(o.requiredItems!);
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldDescription--;
}

core.List<api.GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies>
    buildUnnamed22() => [
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies(),
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies(),
        ];

void checkUnnamed22(
    core.List<api.GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies(o[0]);
  checkGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies(o[1]);
}

core.int
    buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription =
    0;
api.GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription
    buildGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription() {
  final o =
      api.GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription();
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription <
      3) {
    o.description = 'foo';
    o.fieldDependencies = buildUnnamed22();
    o.value = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription--;
  return o;
}

void checkGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription(
    api.GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription o) {
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription <
      3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.fieldDependencies!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription--;
}

core.int buildCounterGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription =
    0;
api.GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription
    buildGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription() {
  final o = api.GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription();
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription <
      3) {
    o.acknowledgementRequired = true;
    o.field = 'foo';
    o.noticeMessage = 'foo';
    o.noticeValue = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription--;
  return o;
}

void checkGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription(
    api.GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription o) {
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription <
      3) {
    unittest.expect(o.acknowledgementRequired!, unittest.isTrue);
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.noticeMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.noticeValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterGoogleChromePolicyVersionsV1PolicySchemaRequiredItems = 0;
api.GoogleChromePolicyVersionsV1PolicySchemaRequiredItems
    buildGoogleChromePolicyVersionsV1PolicySchemaRequiredItems() {
  final o = api.GoogleChromePolicyVersionsV1PolicySchemaRequiredItems();
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaRequiredItems++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchemaRequiredItems < 3) {
    o.fieldConditions = buildUnnamed23();
    o.requiredFields = buildUnnamed24();
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaRequiredItems--;
  return o;
}

void checkGoogleChromePolicyVersionsV1PolicySchemaRequiredItems(
    api.GoogleChromePolicyVersionsV1PolicySchemaRequiredItems o) {
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaRequiredItems++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicySchemaRequiredItems < 3) {
    checkUnnamed23(o.fieldConditions!);
    checkUnnamed24(o.requiredFields!);
  }
  buildCounterGoogleChromePolicyVersionsV1PolicySchemaRequiredItems--;
}

core.Map<core.String, core.String> buildUnnamed25() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed25(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleChromePolicyVersionsV1PolicyTargetKey = 0;
api.GoogleChromePolicyVersionsV1PolicyTargetKey
    buildGoogleChromePolicyVersionsV1PolicyTargetKey() {
  final o = api.GoogleChromePolicyVersionsV1PolicyTargetKey();
  buildCounterGoogleChromePolicyVersionsV1PolicyTargetKey++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicyTargetKey < 3) {
    o.additionalTargetKeys = buildUnnamed25();
    o.targetResource = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1PolicyTargetKey--;
  return o;
}

void checkGoogleChromePolicyVersionsV1PolicyTargetKey(
    api.GoogleChromePolicyVersionsV1PolicyTargetKey o) {
  buildCounterGoogleChromePolicyVersionsV1PolicyTargetKey++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicyTargetKey < 3) {
    checkUnnamed25(o.additionalTargetKeys!);
    unittest.expect(
      o.targetResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1PolicyTargetKey--;
}

core.Map<core.String, core.Object?> buildUnnamed26() => {
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

void checkUnnamed26(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted4 = (o['x']!) as core.Map;
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
  var casted5 = (o['y']!) as core.Map;
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
}

core.int buildCounterGoogleChromePolicyVersionsV1PolicyValue = 0;
api.GoogleChromePolicyVersionsV1PolicyValue
    buildGoogleChromePolicyVersionsV1PolicyValue() {
  final o = api.GoogleChromePolicyVersionsV1PolicyValue();
  buildCounterGoogleChromePolicyVersionsV1PolicyValue++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicyValue < 3) {
    o.policySchema = 'foo';
    o.value = buildUnnamed26();
  }
  buildCounterGoogleChromePolicyVersionsV1PolicyValue--;
  return o;
}

void checkGoogleChromePolicyVersionsV1PolicyValue(
    api.GoogleChromePolicyVersionsV1PolicyValue o) {
  buildCounterGoogleChromePolicyVersionsV1PolicyValue++;
  if (buildCounterGoogleChromePolicyVersionsV1PolicyValue < 3) {
    unittest.expect(
      o.policySchema!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.value!);
  }
  buildCounterGoogleChromePolicyVersionsV1PolicyValue--;
}

core.int buildCounterGoogleChromePolicyVersionsV1RemoveCertificateRequest = 0;
api.GoogleChromePolicyVersionsV1RemoveCertificateRequest
    buildGoogleChromePolicyVersionsV1RemoveCertificateRequest() {
  final o = api.GoogleChromePolicyVersionsV1RemoveCertificateRequest();
  buildCounterGoogleChromePolicyVersionsV1RemoveCertificateRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1RemoveCertificateRequest < 3) {
    o.networkId = 'foo';
    o.targetResource = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1RemoveCertificateRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1RemoveCertificateRequest(
    api.GoogleChromePolicyVersionsV1RemoveCertificateRequest o) {
  buildCounterGoogleChromePolicyVersionsV1RemoveCertificateRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1RemoveCertificateRequest < 3) {
    unittest.expect(
      o.networkId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1RemoveCertificateRequest--;
}

core.int buildCounterGoogleChromePolicyVersionsV1RemoveCertificateResponse = 0;
api.GoogleChromePolicyVersionsV1RemoveCertificateResponse
    buildGoogleChromePolicyVersionsV1RemoveCertificateResponse() {
  final o = api.GoogleChromePolicyVersionsV1RemoveCertificateResponse();
  buildCounterGoogleChromePolicyVersionsV1RemoveCertificateResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1RemoveCertificateResponse < 3) {}
  buildCounterGoogleChromePolicyVersionsV1RemoveCertificateResponse--;
  return o;
}

void checkGoogleChromePolicyVersionsV1RemoveCertificateResponse(
    api.GoogleChromePolicyVersionsV1RemoveCertificateResponse o) {
  buildCounterGoogleChromePolicyVersionsV1RemoveCertificateResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1RemoveCertificateResponse < 3) {}
  buildCounterGoogleChromePolicyVersionsV1RemoveCertificateResponse--;
}

core.int buildCounterGoogleChromePolicyVersionsV1RemoveNetworkRequest = 0;
api.GoogleChromePolicyVersionsV1RemoveNetworkRequest
    buildGoogleChromePolicyVersionsV1RemoveNetworkRequest() {
  final o = api.GoogleChromePolicyVersionsV1RemoveNetworkRequest();
  buildCounterGoogleChromePolicyVersionsV1RemoveNetworkRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1RemoveNetworkRequest < 3) {
    o.networkId = 'foo';
    o.targetResource = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1RemoveNetworkRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1RemoveNetworkRequest(
    api.GoogleChromePolicyVersionsV1RemoveNetworkRequest o) {
  buildCounterGoogleChromePolicyVersionsV1RemoveNetworkRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1RemoveNetworkRequest < 3) {
    unittest.expect(
      o.networkId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1RemoveNetworkRequest--;
}

core.int buildCounterGoogleChromePolicyVersionsV1RemoveNetworkResponse = 0;
api.GoogleChromePolicyVersionsV1RemoveNetworkResponse
    buildGoogleChromePolicyVersionsV1RemoveNetworkResponse() {
  final o = api.GoogleChromePolicyVersionsV1RemoveNetworkResponse();
  buildCounterGoogleChromePolicyVersionsV1RemoveNetworkResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1RemoveNetworkResponse < 3) {}
  buildCounterGoogleChromePolicyVersionsV1RemoveNetworkResponse--;
  return o;
}

void checkGoogleChromePolicyVersionsV1RemoveNetworkResponse(
    api.GoogleChromePolicyVersionsV1RemoveNetworkResponse o) {
  buildCounterGoogleChromePolicyVersionsV1RemoveNetworkResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1RemoveNetworkResponse < 3) {}
  buildCounterGoogleChromePolicyVersionsV1RemoveNetworkResponse--;
}

core.int buildCounterGoogleChromePolicyVersionsV1ResolveRequest = 0;
api.GoogleChromePolicyVersionsV1ResolveRequest
    buildGoogleChromePolicyVersionsV1ResolveRequest() {
  final o = api.GoogleChromePolicyVersionsV1ResolveRequest();
  buildCounterGoogleChromePolicyVersionsV1ResolveRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1ResolveRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.policySchemaFilter = 'foo';
    o.policyTargetKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
  }
  buildCounterGoogleChromePolicyVersionsV1ResolveRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1ResolveRequest(
    api.GoogleChromePolicyVersionsV1ResolveRequest o) {
  buildCounterGoogleChromePolicyVersionsV1ResolveRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1ResolveRequest < 3) {
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policySchemaFilter!,
      unittest.equals('foo'),
    );
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.policyTargetKey!);
  }
  buildCounterGoogleChromePolicyVersionsV1ResolveRequest--;
}

core.List<api.GoogleChromePolicyVersionsV1ResolvedPolicy> buildUnnamed27() => [
      buildGoogleChromePolicyVersionsV1ResolvedPolicy(),
      buildGoogleChromePolicyVersionsV1ResolvedPolicy(),
    ];

void checkUnnamed27(
    core.List<api.GoogleChromePolicyVersionsV1ResolvedPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyVersionsV1ResolvedPolicy(o[0]);
  checkGoogleChromePolicyVersionsV1ResolvedPolicy(o[1]);
}

core.int buildCounterGoogleChromePolicyVersionsV1ResolveResponse = 0;
api.GoogleChromePolicyVersionsV1ResolveResponse
    buildGoogleChromePolicyVersionsV1ResolveResponse() {
  final o = api.GoogleChromePolicyVersionsV1ResolveResponse();
  buildCounterGoogleChromePolicyVersionsV1ResolveResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1ResolveResponse < 3) {
    o.nextPageToken = 'foo';
    o.resolvedPolicies = buildUnnamed27();
  }
  buildCounterGoogleChromePolicyVersionsV1ResolveResponse--;
  return o;
}

void checkGoogleChromePolicyVersionsV1ResolveResponse(
    api.GoogleChromePolicyVersionsV1ResolveResponse o) {
  buildCounterGoogleChromePolicyVersionsV1ResolveResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1ResolveResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.resolvedPolicies!);
  }
  buildCounterGoogleChromePolicyVersionsV1ResolveResponse--;
}

core.int buildCounterGoogleChromePolicyVersionsV1ResolvedPolicy = 0;
api.GoogleChromePolicyVersionsV1ResolvedPolicy
    buildGoogleChromePolicyVersionsV1ResolvedPolicy() {
  final o = api.GoogleChromePolicyVersionsV1ResolvedPolicy();
  buildCounterGoogleChromePolicyVersionsV1ResolvedPolicy++;
  if (buildCounterGoogleChromePolicyVersionsV1ResolvedPolicy < 3) {
    o.addedSourceKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
    o.sourceKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
    o.targetKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
    o.value = buildGoogleChromePolicyVersionsV1PolicyValue();
  }
  buildCounterGoogleChromePolicyVersionsV1ResolvedPolicy--;
  return o;
}

void checkGoogleChromePolicyVersionsV1ResolvedPolicy(
    api.GoogleChromePolicyVersionsV1ResolvedPolicy o) {
  buildCounterGoogleChromePolicyVersionsV1ResolvedPolicy++;
  if (buildCounterGoogleChromePolicyVersionsV1ResolvedPolicy < 3) {
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.addedSourceKey!);
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.sourceKey!);
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.targetKey!);
    checkGoogleChromePolicyVersionsV1PolicyValue(o.value!);
  }
  buildCounterGoogleChromePolicyVersionsV1ResolvedPolicy--;
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.int
    buildCounterGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest =
    0;
api.GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest
    buildGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest() {
  final o =
      api.GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest();
  buildCounterGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest <
      3) {
    o.groupIds = buildUnnamed28();
    o.policyNamespace = 'foo';
    o.policySchema = 'foo';
    o.policyTargetKey = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
  }
  buildCounterGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest(
    api.GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest o) {
  buildCounterGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest <
      3) {
    checkUnnamed28(o.groupIds!);
    unittest.expect(
      o.policyNamespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policySchema!,
      unittest.equals('foo'),
    );
    checkGoogleChromePolicyVersionsV1PolicyTargetKey(o.policyTargetKey!);
  }
  buildCounterGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest--;
}

core.int buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileRequest = 0;
api.GoogleChromePolicyVersionsV1UploadPolicyFileRequest
    buildGoogleChromePolicyVersionsV1UploadPolicyFileRequest() {
  final o = api.GoogleChromePolicyVersionsV1UploadPolicyFileRequest();
  buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileRequest < 3) {
    o.policyField = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileRequest--;
  return o;
}

void checkGoogleChromePolicyVersionsV1UploadPolicyFileRequest(
    api.GoogleChromePolicyVersionsV1UploadPolicyFileRequest o) {
  buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileRequest++;
  if (buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileRequest < 3) {
    unittest.expect(
      o.policyField!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileRequest--;
}

core.int buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileResponse = 0;
api.GoogleChromePolicyVersionsV1UploadPolicyFileResponse
    buildGoogleChromePolicyVersionsV1UploadPolicyFileResponse() {
  final o = api.GoogleChromePolicyVersionsV1UploadPolicyFileResponse();
  buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileResponse < 3) {
    o.downloadUri = 'foo';
  }
  buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileResponse--;
  return o;
}

void checkGoogleChromePolicyVersionsV1UploadPolicyFileResponse(
    api.GoogleChromePolicyVersionsV1UploadPolicyFileResponse o) {
  buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileResponse++;
  if (buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileResponse < 3) {
    unittest.expect(
      o.downloadUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyVersionsV1UploadPolicyFileResponse--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
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

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
}

core.List<api.Proto2EnumDescriptorProto> buildUnnamed29() => [
      buildProto2EnumDescriptorProto(),
      buildProto2EnumDescriptorProto(),
    ];

void checkUnnamed29(core.List<api.Proto2EnumDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2EnumDescriptorProto(o[0]);
  checkProto2EnumDescriptorProto(o[1]);
}

core.List<api.Proto2FieldDescriptorProto> buildUnnamed30() => [
      buildProto2FieldDescriptorProto(),
      buildProto2FieldDescriptorProto(),
    ];

void checkUnnamed30(core.List<api.Proto2FieldDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2FieldDescriptorProto(o[0]);
  checkProto2FieldDescriptorProto(o[1]);
}

core.List<api.Proto2DescriptorProto> buildUnnamed31() => [
      buildProto2DescriptorProto(),
      buildProto2DescriptorProto(),
    ];

void checkUnnamed31(core.List<api.Proto2DescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2DescriptorProto(o[0]);
  checkProto2DescriptorProto(o[1]);
}

core.List<api.Proto2OneofDescriptorProto> buildUnnamed32() => [
      buildProto2OneofDescriptorProto(),
      buildProto2OneofDescriptorProto(),
    ];

void checkUnnamed32(core.List<api.Proto2OneofDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2OneofDescriptorProto(o[0]);
  checkProto2OneofDescriptorProto(o[1]);
}

core.int buildCounterProto2DescriptorProto = 0;
api.Proto2DescriptorProto buildProto2DescriptorProto() {
  final o = api.Proto2DescriptorProto();
  buildCounterProto2DescriptorProto++;
  if (buildCounterProto2DescriptorProto < 3) {
    o.enumType = buildUnnamed29();
    o.field = buildUnnamed30();
    o.name = 'foo';
    o.nestedType = buildUnnamed31();
    o.oneofDecl = buildUnnamed32();
  }
  buildCounterProto2DescriptorProto--;
  return o;
}

void checkProto2DescriptorProto(api.Proto2DescriptorProto o) {
  buildCounterProto2DescriptorProto++;
  if (buildCounterProto2DescriptorProto < 3) {
    checkUnnamed29(o.enumType!);
    checkUnnamed30(o.field!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.nestedType!);
    checkUnnamed32(o.oneofDecl!);
  }
  buildCounterProto2DescriptorProto--;
}

core.List<api.Proto2EnumValueDescriptorProto> buildUnnamed33() => [
      buildProto2EnumValueDescriptorProto(),
      buildProto2EnumValueDescriptorProto(),
    ];

void checkUnnamed33(core.List<api.Proto2EnumValueDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2EnumValueDescriptorProto(o[0]);
  checkProto2EnumValueDescriptorProto(o[1]);
}

core.int buildCounterProto2EnumDescriptorProto = 0;
api.Proto2EnumDescriptorProto buildProto2EnumDescriptorProto() {
  final o = api.Proto2EnumDescriptorProto();
  buildCounterProto2EnumDescriptorProto++;
  if (buildCounterProto2EnumDescriptorProto < 3) {
    o.name = 'foo';
    o.value = buildUnnamed33();
  }
  buildCounterProto2EnumDescriptorProto--;
  return o;
}

void checkProto2EnumDescriptorProto(api.Proto2EnumDescriptorProto o) {
  buildCounterProto2EnumDescriptorProto++;
  if (buildCounterProto2EnumDescriptorProto < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.value!);
  }
  buildCounterProto2EnumDescriptorProto--;
}

core.int buildCounterProto2EnumValueDescriptorProto = 0;
api.Proto2EnumValueDescriptorProto buildProto2EnumValueDescriptorProto() {
  final o = api.Proto2EnumValueDescriptorProto();
  buildCounterProto2EnumValueDescriptorProto++;
  if (buildCounterProto2EnumValueDescriptorProto < 3) {
    o.name = 'foo';
    o.number = 42;
  }
  buildCounterProto2EnumValueDescriptorProto--;
  return o;
}

void checkProto2EnumValueDescriptorProto(api.Proto2EnumValueDescriptorProto o) {
  buildCounterProto2EnumValueDescriptorProto++;
  if (buildCounterProto2EnumValueDescriptorProto < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals(42),
    );
  }
  buildCounterProto2EnumValueDescriptorProto--;
}

core.int buildCounterProto2FieldDescriptorProto = 0;
api.Proto2FieldDescriptorProto buildProto2FieldDescriptorProto() {
  final o = api.Proto2FieldDescriptorProto();
  buildCounterProto2FieldDescriptorProto++;
  if (buildCounterProto2FieldDescriptorProto < 3) {
    o.defaultValue = 'foo';
    o.jsonName = 'foo';
    o.label = 'foo';
    o.name = 'foo';
    o.number = 42;
    o.oneofIndex = 42;
    o.proto3Optional = true;
    o.type = 'foo';
    o.typeName = 'foo';
  }
  buildCounterProto2FieldDescriptorProto--;
  return o;
}

void checkProto2FieldDescriptorProto(api.Proto2FieldDescriptorProto o) {
  buildCounterProto2FieldDescriptorProto++;
  if (buildCounterProto2FieldDescriptorProto < 3) {
    unittest.expect(
      o.defaultValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jsonName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals(42),
    );
    unittest.expect(
      o.oneofIndex!,
      unittest.equals(42),
    );
    unittest.expect(o.proto3Optional!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.typeName!,
      unittest.equals('foo'),
    );
  }
  buildCounterProto2FieldDescriptorProto--;
}

core.List<api.Proto2EnumDescriptorProto> buildUnnamed34() => [
      buildProto2EnumDescriptorProto(),
      buildProto2EnumDescriptorProto(),
    ];

void checkUnnamed34(core.List<api.Proto2EnumDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2EnumDescriptorProto(o[0]);
  checkProto2EnumDescriptorProto(o[1]);
}

core.List<api.Proto2DescriptorProto> buildUnnamed35() => [
      buildProto2DescriptorProto(),
      buildProto2DescriptorProto(),
    ];

void checkUnnamed35(core.List<api.Proto2DescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2DescriptorProto(o[0]);
  checkProto2DescriptorProto(o[1]);
}

core.int buildCounterProto2FileDescriptorProto = 0;
api.Proto2FileDescriptorProto buildProto2FileDescriptorProto() {
  final o = api.Proto2FileDescriptorProto();
  buildCounterProto2FileDescriptorProto++;
  if (buildCounterProto2FileDescriptorProto < 3) {
    o.editionDeprecated = 'foo';
    o.enumType = buildUnnamed34();
    o.messageType = buildUnnamed35();
    o.name = 'foo';
    o.package = 'foo';
    o.syntax = 'foo';
  }
  buildCounterProto2FileDescriptorProto--;
  return o;
}

void checkProto2FileDescriptorProto(api.Proto2FileDescriptorProto o) {
  buildCounterProto2FileDescriptorProto++;
  if (buildCounterProto2FileDescriptorProto < 3) {
    unittest.expect(
      o.editionDeprecated!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.enumType!);
    checkUnnamed35(o.messageType!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.package!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
  }
  buildCounterProto2FileDescriptorProto--;
}

core.int buildCounterProto2OneofDescriptorProto = 0;
api.Proto2OneofDescriptorProto buildProto2OneofDescriptorProto() {
  final o = api.Proto2OneofDescriptorProto();
  buildCounterProto2OneofDescriptorProto++;
  if (buildCounterProto2OneofDescriptorProto < 3) {
    o.name = 'foo';
  }
  buildCounterProto2OneofDescriptorProto--;
  return o;
}

void checkProto2OneofDescriptorProto(api.Proto2OneofDescriptorProto o) {
  buildCounterProto2OneofDescriptorProto++;
  if (buildCounterProto2OneofDescriptorProto < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterProto2OneofDescriptorProto--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1AdditionalTargetKeyName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1AdditionalTargetKeyName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1AdditionalTargetKeyName.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1AdditionalTargetKeyName(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1DefineCertificateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1DefineCertificateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1DefineCertificateRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1DefineCertificateRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1DefineCertificateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1DefineCertificateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1DefineCertificateResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1DefineCertificateResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1DefineNetworkRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1DefineNetworkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1DefineNetworkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1DefineNetworkRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1DefineNetworkResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1DefineNetworkResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1DefineNetworkResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1DefineNetworkResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1DeleteGroupPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1FieldConstraints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1FieldConstraints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1FieldConstraints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1FieldConstraints(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1ListPolicySchemasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1ListPolicySchemasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1ListPolicySchemasResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1ListPolicySchemasResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1ModifyGroupPolicyRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1NetworkSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1NetworkSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1NetworkSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1NetworkSetting(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1NumericRangeConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1NumericRangeConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1NumericRangeConstraint.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1NumericRangeConstraint(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1PolicyApiLifecycle',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1PolicyApiLifecycle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1PolicyApiLifecycle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1PolicyApiLifecycle(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1PolicySchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1PolicySchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1PolicySchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1PolicySchema(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1PolicySchemaFieldDependencies(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1PolicySchemaFieldDescription',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1PolicySchemaFieldDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1PolicySchemaFieldDescription.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1PolicySchemaFieldDescription(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1PolicySchemaNoticeDescription(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1PolicySchemaRequiredItems', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1PolicySchemaRequiredItems();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1PolicySchemaRequiredItems.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1PolicySchemaRequiredItems(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1PolicyTargetKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1PolicyTargetKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1PolicyTargetKey(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1PolicyValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1PolicyValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1PolicyValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1PolicyValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1RemoveCertificateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1RemoveCertificateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1RemoveCertificateRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1RemoveCertificateRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1RemoveCertificateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1RemoveCertificateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1RemoveCertificateResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1RemoveCertificateResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1RemoveNetworkRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1RemoveNetworkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1RemoveNetworkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1RemoveNetworkRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1RemoveNetworkResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1RemoveNetworkResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1RemoveNetworkResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1RemoveNetworkResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1ResolveRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1ResolveRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1ResolveRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1ResolveRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1ResolveResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1ResolveResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1ResolveResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1ResolveResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyVersionsV1ResolvedPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1ResolvedPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyVersionsV1ResolvedPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1ResolvedPolicy(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1UploadPolicyFileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1UploadPolicyFileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1UploadPolicyFileRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1UploadPolicyFileRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyVersionsV1UploadPolicyFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyVersionsV1UploadPolicyFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyVersionsV1UploadPolicyFileResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyVersionsV1UploadPolicyFileResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('obj-schema-Proto2DescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProto2DescriptorProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Proto2DescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2DescriptorProto(od);
    });
  });

  unittest.group('obj-schema-Proto2EnumDescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProto2EnumDescriptorProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Proto2EnumDescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2EnumDescriptorProto(od);
    });
  });

  unittest.group('obj-schema-Proto2EnumValueDescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProto2EnumValueDescriptorProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Proto2EnumValueDescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2EnumValueDescriptorProto(od);
    });
  });

  unittest.group('obj-schema-Proto2FieldDescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProto2FieldDescriptorProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Proto2FieldDescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2FieldDescriptorProto(od);
    });
  });

  unittest.group('obj-schema-Proto2FileDescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProto2FileDescriptorProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Proto2FileDescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2FileDescriptorProto(od);
    });
  });

  unittest.group('obj-schema-Proto2OneofDescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProto2OneofDescriptorProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Proto2OneofDescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2OneofDescriptorProto(od);
    });
  });

  unittest.group('resource-CustomersPoliciesResource', () {
    unittest.test('method--resolve', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies;
      final arg_request = buildGoogleChromePolicyVersionsV1ResolveRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleChromePolicyVersionsV1ResolveRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1ResolveRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleChromePolicyVersionsV1ResolveResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.resolve(arg_request, arg_customer, $fields: arg_$fields);
      checkGoogleChromePolicyVersionsV1ResolveResponse(
          response as api.GoogleChromePolicyVersionsV1ResolveResponse);
    });
  });

  unittest.group('resource-CustomersPoliciesGroupsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.groups;
      final arg_request =
          buildGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchDelete(arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchModify', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.groups;
      final arg_request =
          buildGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchModify(arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--listGroupPriorityOrdering', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.groups;
      final arg_request =
          buildGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listGroupPriorityOrdering(
          arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse(
          response as api
              .GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse);
    });

    unittest.test('method--updateGroupPriorityOrdering', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.groups;
      final arg_request =
          buildGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest(
            obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateGroupPriorityOrdering(
          arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-CustomersPoliciesNetworksResource', () {
    unittest.test('method--defineCertificate', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.networks;
      final arg_request =
          buildGoogleChromePolicyVersionsV1DefineCertificateRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1DefineCertificateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1DefineCertificateRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleChromePolicyVersionsV1DefineCertificateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.defineCertificate(arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleChromePolicyVersionsV1DefineCertificateResponse(response
          as api.GoogleChromePolicyVersionsV1DefineCertificateResponse);
    });

    unittest.test('method--defineNetwork', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.networks;
      final arg_request =
          buildGoogleChromePolicyVersionsV1DefineNetworkRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1DefineNetworkRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1DefineNetworkRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleChromePolicyVersionsV1DefineNetworkResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.defineNetwork(arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleChromePolicyVersionsV1DefineNetworkResponse(
          response as api.GoogleChromePolicyVersionsV1DefineNetworkResponse);
    });

    unittest.test('method--removeCertificate', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.networks;
      final arg_request =
          buildGoogleChromePolicyVersionsV1RemoveCertificateRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1RemoveCertificateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1RemoveCertificateRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleChromePolicyVersionsV1RemoveCertificateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeCertificate(arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleChromePolicyVersionsV1RemoveCertificateResponse(response
          as api.GoogleChromePolicyVersionsV1RemoveCertificateResponse);
    });

    unittest.test('method--removeNetwork', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.networks;
      final arg_request =
          buildGoogleChromePolicyVersionsV1RemoveNetworkRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1RemoveNetworkRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1RemoveNetworkRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleChromePolicyVersionsV1RemoveNetworkResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeNetwork(arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleChromePolicyVersionsV1RemoveNetworkResponse(
          response as api.GoogleChromePolicyVersionsV1RemoveNetworkResponse);
    });
  });

  unittest.group('resource-CustomersPoliciesOrgunitsResource', () {
    unittest.test('method--batchInherit', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.orgunits;
      final arg_request =
          buildGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest(
            obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchInherit(arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchModify', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.orgunits;
      final arg_request =
          buildGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchModify(arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-CustomersPolicySchemasResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policySchemas;
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
        final resp = convert.json
            .encode(buildGoogleChromePolicyVersionsV1PolicySchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromePolicyVersionsV1PolicySchema(
          response as api.GoogleChromePolicyVersionsV1PolicySchema);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policySchemas;
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
        final resp = convert.json.encode(
            buildGoogleChromePolicyVersionsV1ListPolicySchemasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleChromePolicyVersionsV1ListPolicySchemasResponse(response
          as api.GoogleChromePolicyVersionsV1ListPolicySchemasResponse);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).media;
      final arg_request =
          buildGoogleChromePolicyVersionsV1UploadPolicyFileRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyVersionsV1UploadPolicyFileRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyVersionsV1UploadPolicyFileRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleChromePolicyVersionsV1UploadPolicyFileResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_customer, $fields: arg_$fields);
      checkGoogleChromePolicyVersionsV1UploadPolicyFileResponse(
          response as api.GoogleChromePolicyVersionsV1UploadPolicyFileResponse);
    });
  });
}
