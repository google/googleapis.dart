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

import 'package:googleapis/chromepolicy/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleChromePolicyV1AdditionalTargetKeyName = 0;
api.GoogleChromePolicyV1AdditionalTargetKeyName
    buildGoogleChromePolicyV1AdditionalTargetKeyName() {
  final o = api.GoogleChromePolicyV1AdditionalTargetKeyName();
  buildCounterGoogleChromePolicyV1AdditionalTargetKeyName++;
  if (buildCounterGoogleChromePolicyV1AdditionalTargetKeyName < 3) {
    o.key = 'foo';
    o.keyDescription = 'foo';
  }
  buildCounterGoogleChromePolicyV1AdditionalTargetKeyName--;
  return o;
}

void checkGoogleChromePolicyV1AdditionalTargetKeyName(
    api.GoogleChromePolicyV1AdditionalTargetKeyName o) {
  buildCounterGoogleChromePolicyV1AdditionalTargetKeyName++;
  if (buildCounterGoogleChromePolicyV1AdditionalTargetKeyName < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyDescription!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyV1AdditionalTargetKeyName--;
}

core.List<api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest>
    buildUnnamed7651() => [
          buildGoogleChromePolicyV1InheritOrgUnitPolicyRequest(),
          buildGoogleChromePolicyV1InheritOrgUnitPolicyRequest(),
        ];

void checkUnnamed7651(
    core.List<api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1InheritOrgUnitPolicyRequest(o[0]);
  checkGoogleChromePolicyV1InheritOrgUnitPolicyRequest(o[1]);
}

core.int buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest = 0;
api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest
    buildGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest() {
  final o = api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest();
  buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest < 3) {
    o.requests = buildUnnamed7651();
  }
  buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest--;
  return o;
}

void checkGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest(
    api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest o) {
  buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest < 3) {
    checkUnnamed7651(o.requests!);
  }
  buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest--;
}

core.List<api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest>
    buildUnnamed7652() => [
          buildGoogleChromePolicyV1ModifyOrgUnitPolicyRequest(),
          buildGoogleChromePolicyV1ModifyOrgUnitPolicyRequest(),
        ];

void checkUnnamed7652(
    core.List<api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1ModifyOrgUnitPolicyRequest(o[0]);
  checkGoogleChromePolicyV1ModifyOrgUnitPolicyRequest(o[1]);
}

core.int buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest = 0;
api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest
    buildGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest() {
  final o = api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest();
  buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest < 3) {
    o.requests = buildUnnamed7652();
  }
  buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest--;
  return o;
}

void checkGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest(
    api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest o) {
  buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest < 3) {
    checkUnnamed7652(o.requests!);
  }
  buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest--;
}

core.int buildCounterGoogleChromePolicyV1InheritOrgUnitPolicyRequest = 0;
api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest
    buildGoogleChromePolicyV1InheritOrgUnitPolicyRequest() {
  final o = api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest();
  buildCounterGoogleChromePolicyV1InheritOrgUnitPolicyRequest++;
  if (buildCounterGoogleChromePolicyV1InheritOrgUnitPolicyRequest < 3) {
    o.policySchema = 'foo';
    o.policyTargetKey = buildGoogleChromePolicyV1PolicyTargetKey();
  }
  buildCounterGoogleChromePolicyV1InheritOrgUnitPolicyRequest--;
  return o;
}

void checkGoogleChromePolicyV1InheritOrgUnitPolicyRequest(
    api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest o) {
  buildCounterGoogleChromePolicyV1InheritOrgUnitPolicyRequest++;
  if (buildCounterGoogleChromePolicyV1InheritOrgUnitPolicyRequest < 3) {
    unittest.expect(
      o.policySchema!,
      unittest.equals('foo'),
    );
    checkGoogleChromePolicyV1PolicyTargetKey(o.policyTargetKey!);
  }
  buildCounterGoogleChromePolicyV1InheritOrgUnitPolicyRequest--;
}

core.List<api.GoogleChromePolicyV1PolicySchema> buildUnnamed7653() => [
      buildGoogleChromePolicyV1PolicySchema(),
      buildGoogleChromePolicyV1PolicySchema(),
    ];

void checkUnnamed7653(core.List<api.GoogleChromePolicyV1PolicySchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchema(o[0]);
  checkGoogleChromePolicyV1PolicySchema(o[1]);
}

core.int buildCounterGoogleChromePolicyV1ListPolicySchemasResponse = 0;
api.GoogleChromePolicyV1ListPolicySchemasResponse
    buildGoogleChromePolicyV1ListPolicySchemasResponse() {
  final o = api.GoogleChromePolicyV1ListPolicySchemasResponse();
  buildCounterGoogleChromePolicyV1ListPolicySchemasResponse++;
  if (buildCounterGoogleChromePolicyV1ListPolicySchemasResponse < 3) {
    o.nextPageToken = 'foo';
    o.policySchemas = buildUnnamed7653();
  }
  buildCounterGoogleChromePolicyV1ListPolicySchemasResponse--;
  return o;
}

void checkGoogleChromePolicyV1ListPolicySchemasResponse(
    api.GoogleChromePolicyV1ListPolicySchemasResponse o) {
  buildCounterGoogleChromePolicyV1ListPolicySchemasResponse++;
  if (buildCounterGoogleChromePolicyV1ListPolicySchemasResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7653(o.policySchemas!);
  }
  buildCounterGoogleChromePolicyV1ListPolicySchemasResponse--;
}

core.int buildCounterGoogleChromePolicyV1ModifyOrgUnitPolicyRequest = 0;
api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest
    buildGoogleChromePolicyV1ModifyOrgUnitPolicyRequest() {
  final o = api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest();
  buildCounterGoogleChromePolicyV1ModifyOrgUnitPolicyRequest++;
  if (buildCounterGoogleChromePolicyV1ModifyOrgUnitPolicyRequest < 3) {
    o.policyTargetKey = buildGoogleChromePolicyV1PolicyTargetKey();
    o.policyValue = buildGoogleChromePolicyV1PolicyValue();
    o.updateMask = 'foo';
  }
  buildCounterGoogleChromePolicyV1ModifyOrgUnitPolicyRequest--;
  return o;
}

void checkGoogleChromePolicyV1ModifyOrgUnitPolicyRequest(
    api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest o) {
  buildCounterGoogleChromePolicyV1ModifyOrgUnitPolicyRequest++;
  if (buildCounterGoogleChromePolicyV1ModifyOrgUnitPolicyRequest < 3) {
    checkGoogleChromePolicyV1PolicyTargetKey(o.policyTargetKey!);
    checkGoogleChromePolicyV1PolicyValue(o.policyValue!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyV1ModifyOrgUnitPolicyRequest--;
}

core.List<core.String> buildUnnamed7654() => [
      'foo',
      'foo',
    ];

void checkUnnamed7654(core.List<core.String> o) {
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

core.List<api.GoogleChromePolicyV1AdditionalTargetKeyName> buildUnnamed7655() =>
    [
      buildGoogleChromePolicyV1AdditionalTargetKeyName(),
      buildGoogleChromePolicyV1AdditionalTargetKeyName(),
    ];

void checkUnnamed7655(
    core.List<api.GoogleChromePolicyV1AdditionalTargetKeyName> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1AdditionalTargetKeyName(o[0]);
  checkGoogleChromePolicyV1AdditionalTargetKeyName(o[1]);
}

core.List<api.GoogleChromePolicyV1PolicySchemaFieldDescription>
    buildUnnamed7656() => [
          buildGoogleChromePolicyV1PolicySchemaFieldDescription(),
          buildGoogleChromePolicyV1PolicySchemaFieldDescription(),
        ];

void checkUnnamed7656(
    core.List<api.GoogleChromePolicyV1PolicySchemaFieldDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchemaFieldDescription(o[0]);
  checkGoogleChromePolicyV1PolicySchemaFieldDescription(o[1]);
}

core.List<api.GoogleChromePolicyV1PolicySchemaNoticeDescription>
    buildUnnamed7657() => [
          buildGoogleChromePolicyV1PolicySchemaNoticeDescription(),
          buildGoogleChromePolicyV1PolicySchemaNoticeDescription(),
        ];

void checkUnnamed7657(
    core.List<api.GoogleChromePolicyV1PolicySchemaNoticeDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchemaNoticeDescription(o[0]);
  checkGoogleChromePolicyV1PolicySchemaNoticeDescription(o[1]);
}

core.int buildCounterGoogleChromePolicyV1PolicySchema = 0;
api.GoogleChromePolicyV1PolicySchema buildGoogleChromePolicyV1PolicySchema() {
  final o = api.GoogleChromePolicyV1PolicySchema();
  buildCounterGoogleChromePolicyV1PolicySchema++;
  if (buildCounterGoogleChromePolicyV1PolicySchema < 3) {
    o.accessRestrictions = buildUnnamed7654();
    o.additionalTargetKeyNames = buildUnnamed7655();
    o.definition = buildProto2FileDescriptorProto();
    o.fieldDescriptions = buildUnnamed7656();
    o.name = 'foo';
    o.notices = buildUnnamed7657();
    o.policyDescription = 'foo';
    o.schemaName = 'foo';
    o.supportUri = 'foo';
  }
  buildCounterGoogleChromePolicyV1PolicySchema--;
  return o;
}

void checkGoogleChromePolicyV1PolicySchema(
    api.GoogleChromePolicyV1PolicySchema o) {
  buildCounterGoogleChromePolicyV1PolicySchema++;
  if (buildCounterGoogleChromePolicyV1PolicySchema < 3) {
    checkUnnamed7654(o.accessRestrictions!);
    checkUnnamed7655(o.additionalTargetKeyNames!);
    checkProto2FileDescriptorProto(o.definition!);
    checkUnnamed7656(o.fieldDescriptions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7657(o.notices!);
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
  }
  buildCounterGoogleChromePolicyV1PolicySchema--;
}

core.int buildCounterGoogleChromePolicyV1PolicySchemaFieldDependencies = 0;
api.GoogleChromePolicyV1PolicySchemaFieldDependencies
    buildGoogleChromePolicyV1PolicySchemaFieldDependencies() {
  final o = api.GoogleChromePolicyV1PolicySchemaFieldDependencies();
  buildCounterGoogleChromePolicyV1PolicySchemaFieldDependencies++;
  if (buildCounterGoogleChromePolicyV1PolicySchemaFieldDependencies < 3) {
    o.sourceField = 'foo';
    o.sourceFieldValue = 'foo';
  }
  buildCounterGoogleChromePolicyV1PolicySchemaFieldDependencies--;
  return o;
}

void checkGoogleChromePolicyV1PolicySchemaFieldDependencies(
    api.GoogleChromePolicyV1PolicySchemaFieldDependencies o) {
  buildCounterGoogleChromePolicyV1PolicySchemaFieldDependencies++;
  if (buildCounterGoogleChromePolicyV1PolicySchemaFieldDependencies < 3) {
    unittest.expect(
      o.sourceField!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceFieldValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyV1PolicySchemaFieldDependencies--;
}

core.List<api.GoogleChromePolicyV1PolicySchemaFieldDependencies>
    buildUnnamed7658() => [
          buildGoogleChromePolicyV1PolicySchemaFieldDependencies(),
          buildGoogleChromePolicyV1PolicySchemaFieldDependencies(),
        ];

void checkUnnamed7658(
    core.List<api.GoogleChromePolicyV1PolicySchemaFieldDependencies> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchemaFieldDependencies(o[0]);
  checkGoogleChromePolicyV1PolicySchemaFieldDependencies(o[1]);
}

core.List<api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription>
    buildUnnamed7659() => [
          buildGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription(),
          buildGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription(),
        ];

void checkUnnamed7659(
    core.List<api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription(o[0]);
  checkGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription(o[1]);
}

core.List<api.GoogleChromePolicyV1PolicySchemaFieldDescription>
    buildUnnamed7660() => [
          buildGoogleChromePolicyV1PolicySchemaFieldDescription(),
          buildGoogleChromePolicyV1PolicySchemaFieldDescription(),
        ];

void checkUnnamed7660(
    core.List<api.GoogleChromePolicyV1PolicySchemaFieldDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchemaFieldDescription(o[0]);
  checkGoogleChromePolicyV1PolicySchemaFieldDescription(o[1]);
}

core.int buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription = 0;
api.GoogleChromePolicyV1PolicySchemaFieldDescription
    buildGoogleChromePolicyV1PolicySchemaFieldDescription() {
  final o = api.GoogleChromePolicyV1PolicySchemaFieldDescription();
  buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription++;
  if (buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription < 3) {
    o.description = 'foo';
    o.field = 'foo';
    o.fieldDependencies = buildUnnamed7658();
    o.inputConstraint = 'foo';
    o.knownValueDescriptions = buildUnnamed7659();
    o.nestedFieldDescriptions = buildUnnamed7660();
  }
  buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription--;
  return o;
}

void checkGoogleChromePolicyV1PolicySchemaFieldDescription(
    api.GoogleChromePolicyV1PolicySchemaFieldDescription o) {
  buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription++;
  if (buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    checkUnnamed7658(o.fieldDependencies!);
    unittest.expect(
      o.inputConstraint!,
      unittest.equals('foo'),
    );
    checkUnnamed7659(o.knownValueDescriptions!);
    checkUnnamed7660(o.nestedFieldDescriptions!);
  }
  buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription--;
}

core.int
    buildCounterGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription = 0;
api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription
    buildGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription() {
  final o = api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription();
  buildCounterGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription++;
  if (buildCounterGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription <
      3) {
    o.description = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription--;
  return o;
}

void checkGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription(
    api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription o) {
  buildCounterGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription++;
  if (buildCounterGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription <
      3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription--;
}

core.int buildCounterGoogleChromePolicyV1PolicySchemaNoticeDescription = 0;
api.GoogleChromePolicyV1PolicySchemaNoticeDescription
    buildGoogleChromePolicyV1PolicySchemaNoticeDescription() {
  final o = api.GoogleChromePolicyV1PolicySchemaNoticeDescription();
  buildCounterGoogleChromePolicyV1PolicySchemaNoticeDescription++;
  if (buildCounterGoogleChromePolicyV1PolicySchemaNoticeDescription < 3) {
    o.acknowledgementRequired = true;
    o.field = 'foo';
    o.noticeMessage = 'foo';
    o.noticeValue = 'foo';
  }
  buildCounterGoogleChromePolicyV1PolicySchemaNoticeDescription--;
  return o;
}

void checkGoogleChromePolicyV1PolicySchemaNoticeDescription(
    api.GoogleChromePolicyV1PolicySchemaNoticeDescription o) {
  buildCounterGoogleChromePolicyV1PolicySchemaNoticeDescription++;
  if (buildCounterGoogleChromePolicyV1PolicySchemaNoticeDescription < 3) {
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
  buildCounterGoogleChromePolicyV1PolicySchemaNoticeDescription--;
}

core.Map<core.String, core.String> buildUnnamed7661() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7661(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleChromePolicyV1PolicyTargetKey = 0;
api.GoogleChromePolicyV1PolicyTargetKey
    buildGoogleChromePolicyV1PolicyTargetKey() {
  final o = api.GoogleChromePolicyV1PolicyTargetKey();
  buildCounterGoogleChromePolicyV1PolicyTargetKey++;
  if (buildCounterGoogleChromePolicyV1PolicyTargetKey < 3) {
    o.additionalTargetKeys = buildUnnamed7661();
    o.targetResource = 'foo';
  }
  buildCounterGoogleChromePolicyV1PolicyTargetKey--;
  return o;
}

void checkGoogleChromePolicyV1PolicyTargetKey(
    api.GoogleChromePolicyV1PolicyTargetKey o) {
  buildCounterGoogleChromePolicyV1PolicyTargetKey++;
  if (buildCounterGoogleChromePolicyV1PolicyTargetKey < 3) {
    checkUnnamed7661(o.additionalTargetKeys!);
    unittest.expect(
      o.targetResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyV1PolicyTargetKey--;
}

core.Map<core.String, core.Object> buildUnnamed7662() => {
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

void checkUnnamed7662(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleChromePolicyV1PolicyValue = 0;
api.GoogleChromePolicyV1PolicyValue buildGoogleChromePolicyV1PolicyValue() {
  final o = api.GoogleChromePolicyV1PolicyValue();
  buildCounterGoogleChromePolicyV1PolicyValue++;
  if (buildCounterGoogleChromePolicyV1PolicyValue < 3) {
    o.policySchema = 'foo';
    o.value = buildUnnamed7662();
  }
  buildCounterGoogleChromePolicyV1PolicyValue--;
  return o;
}

void checkGoogleChromePolicyV1PolicyValue(
    api.GoogleChromePolicyV1PolicyValue o) {
  buildCounterGoogleChromePolicyV1PolicyValue++;
  if (buildCounterGoogleChromePolicyV1PolicyValue < 3) {
    unittest.expect(
      o.policySchema!,
      unittest.equals('foo'),
    );
    checkUnnamed7662(o.value!);
  }
  buildCounterGoogleChromePolicyV1PolicyValue--;
}

core.int buildCounterGoogleChromePolicyV1ResolveRequest = 0;
api.GoogleChromePolicyV1ResolveRequest
    buildGoogleChromePolicyV1ResolveRequest() {
  final o = api.GoogleChromePolicyV1ResolveRequest();
  buildCounterGoogleChromePolicyV1ResolveRequest++;
  if (buildCounterGoogleChromePolicyV1ResolveRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.policySchemaFilter = 'foo';
    o.policyTargetKey = buildGoogleChromePolicyV1PolicyTargetKey();
  }
  buildCounterGoogleChromePolicyV1ResolveRequest--;
  return o;
}

void checkGoogleChromePolicyV1ResolveRequest(
    api.GoogleChromePolicyV1ResolveRequest o) {
  buildCounterGoogleChromePolicyV1ResolveRequest++;
  if (buildCounterGoogleChromePolicyV1ResolveRequest < 3) {
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
    checkGoogleChromePolicyV1PolicyTargetKey(o.policyTargetKey!);
  }
  buildCounterGoogleChromePolicyV1ResolveRequest--;
}

core.List<api.GoogleChromePolicyV1ResolvedPolicy> buildUnnamed7663() => [
      buildGoogleChromePolicyV1ResolvedPolicy(),
      buildGoogleChromePolicyV1ResolvedPolicy(),
    ];

void checkUnnamed7663(core.List<api.GoogleChromePolicyV1ResolvedPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1ResolvedPolicy(o[0]);
  checkGoogleChromePolicyV1ResolvedPolicy(o[1]);
}

core.int buildCounterGoogleChromePolicyV1ResolveResponse = 0;
api.GoogleChromePolicyV1ResolveResponse
    buildGoogleChromePolicyV1ResolveResponse() {
  final o = api.GoogleChromePolicyV1ResolveResponse();
  buildCounterGoogleChromePolicyV1ResolveResponse++;
  if (buildCounterGoogleChromePolicyV1ResolveResponse < 3) {
    o.nextPageToken = 'foo';
    o.resolvedPolicies = buildUnnamed7663();
  }
  buildCounterGoogleChromePolicyV1ResolveResponse--;
  return o;
}

void checkGoogleChromePolicyV1ResolveResponse(
    api.GoogleChromePolicyV1ResolveResponse o) {
  buildCounterGoogleChromePolicyV1ResolveResponse++;
  if (buildCounterGoogleChromePolicyV1ResolveResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7663(o.resolvedPolicies!);
  }
  buildCounterGoogleChromePolicyV1ResolveResponse--;
}

core.int buildCounterGoogleChromePolicyV1ResolvedPolicy = 0;
api.GoogleChromePolicyV1ResolvedPolicy
    buildGoogleChromePolicyV1ResolvedPolicy() {
  final o = api.GoogleChromePolicyV1ResolvedPolicy();
  buildCounterGoogleChromePolicyV1ResolvedPolicy++;
  if (buildCounterGoogleChromePolicyV1ResolvedPolicy < 3) {
    o.sourceKey = buildGoogleChromePolicyV1PolicyTargetKey();
    o.targetKey = buildGoogleChromePolicyV1PolicyTargetKey();
    o.value = buildGoogleChromePolicyV1PolicyValue();
  }
  buildCounterGoogleChromePolicyV1ResolvedPolicy--;
  return o;
}

void checkGoogleChromePolicyV1ResolvedPolicy(
    api.GoogleChromePolicyV1ResolvedPolicy o) {
  buildCounterGoogleChromePolicyV1ResolvedPolicy++;
  if (buildCounterGoogleChromePolicyV1ResolvedPolicy < 3) {
    checkGoogleChromePolicyV1PolicyTargetKey(o.sourceKey!);
    checkGoogleChromePolicyV1PolicyTargetKey(o.targetKey!);
    checkGoogleChromePolicyV1PolicyValue(o.value!);
  }
  buildCounterGoogleChromePolicyV1ResolvedPolicy--;
}

core.int buildCounterGoogleChromePolicyV1UploadPolicyFileRequest = 0;
api.GoogleChromePolicyV1UploadPolicyFileRequest
    buildGoogleChromePolicyV1UploadPolicyFileRequest() {
  final o = api.GoogleChromePolicyV1UploadPolicyFileRequest();
  buildCounterGoogleChromePolicyV1UploadPolicyFileRequest++;
  if (buildCounterGoogleChromePolicyV1UploadPolicyFileRequest < 3) {
    o.policyField = 'foo';
  }
  buildCounterGoogleChromePolicyV1UploadPolicyFileRequest--;
  return o;
}

void checkGoogleChromePolicyV1UploadPolicyFileRequest(
    api.GoogleChromePolicyV1UploadPolicyFileRequest o) {
  buildCounterGoogleChromePolicyV1UploadPolicyFileRequest++;
  if (buildCounterGoogleChromePolicyV1UploadPolicyFileRequest < 3) {
    unittest.expect(
      o.policyField!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyV1UploadPolicyFileRequest--;
}

core.int buildCounterGoogleChromePolicyV1UploadPolicyFileResponse = 0;
api.GoogleChromePolicyV1UploadPolicyFileResponse
    buildGoogleChromePolicyV1UploadPolicyFileResponse() {
  final o = api.GoogleChromePolicyV1UploadPolicyFileResponse();
  buildCounterGoogleChromePolicyV1UploadPolicyFileResponse++;
  if (buildCounterGoogleChromePolicyV1UploadPolicyFileResponse < 3) {
    o.downloadUri = 'foo';
  }
  buildCounterGoogleChromePolicyV1UploadPolicyFileResponse--;
  return o;
}

void checkGoogleChromePolicyV1UploadPolicyFileResponse(
    api.GoogleChromePolicyV1UploadPolicyFileResponse o) {
  buildCounterGoogleChromePolicyV1UploadPolicyFileResponse++;
  if (buildCounterGoogleChromePolicyV1UploadPolicyFileResponse < 3) {
    unittest.expect(
      o.downloadUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyV1UploadPolicyFileResponse--;
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

core.List<api.Proto2EnumDescriptorProto> buildUnnamed7664() => [
      buildProto2EnumDescriptorProto(),
      buildProto2EnumDescriptorProto(),
    ];

void checkUnnamed7664(core.List<api.Proto2EnumDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2EnumDescriptorProto(o[0]);
  checkProto2EnumDescriptorProto(o[1]);
}

core.List<api.Proto2FieldDescriptorProto> buildUnnamed7665() => [
      buildProto2FieldDescriptorProto(),
      buildProto2FieldDescriptorProto(),
    ];

void checkUnnamed7665(core.List<api.Proto2FieldDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2FieldDescriptorProto(o[0]);
  checkProto2FieldDescriptorProto(o[1]);
}

core.List<api.Proto2DescriptorProto> buildUnnamed7666() => [
      buildProto2DescriptorProto(),
      buildProto2DescriptorProto(),
    ];

void checkUnnamed7666(core.List<api.Proto2DescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2DescriptorProto(o[0]);
  checkProto2DescriptorProto(o[1]);
}

core.List<api.Proto2OneofDescriptorProto> buildUnnamed7667() => [
      buildProto2OneofDescriptorProto(),
      buildProto2OneofDescriptorProto(),
    ];

void checkUnnamed7667(core.List<api.Proto2OneofDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2OneofDescriptorProto(o[0]);
  checkProto2OneofDescriptorProto(o[1]);
}

core.int buildCounterProto2DescriptorProto = 0;
api.Proto2DescriptorProto buildProto2DescriptorProto() {
  final o = api.Proto2DescriptorProto();
  buildCounterProto2DescriptorProto++;
  if (buildCounterProto2DescriptorProto < 3) {
    o.enumType = buildUnnamed7664();
    o.field = buildUnnamed7665();
    o.name = 'foo';
    o.nestedType = buildUnnamed7666();
    o.oneofDecl = buildUnnamed7667();
  }
  buildCounterProto2DescriptorProto--;
  return o;
}

void checkProto2DescriptorProto(api.Proto2DescriptorProto o) {
  buildCounterProto2DescriptorProto++;
  if (buildCounterProto2DescriptorProto < 3) {
    checkUnnamed7664(o.enumType!);
    checkUnnamed7665(o.field!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7666(o.nestedType!);
    checkUnnamed7667(o.oneofDecl!);
  }
  buildCounterProto2DescriptorProto--;
}

core.List<api.Proto2EnumValueDescriptorProto> buildUnnamed7668() => [
      buildProto2EnumValueDescriptorProto(),
      buildProto2EnumValueDescriptorProto(),
    ];

void checkUnnamed7668(core.List<api.Proto2EnumValueDescriptorProto> o) {
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
    o.value = buildUnnamed7668();
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
    checkUnnamed7668(o.value!);
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

core.List<api.Proto2EnumDescriptorProto> buildUnnamed7669() => [
      buildProto2EnumDescriptorProto(),
      buildProto2EnumDescriptorProto(),
    ];

void checkUnnamed7669(core.List<api.Proto2EnumDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2EnumDescriptorProto(o[0]);
  checkProto2EnumDescriptorProto(o[1]);
}

core.List<api.Proto2DescriptorProto> buildUnnamed7670() => [
      buildProto2DescriptorProto(),
      buildProto2DescriptorProto(),
    ];

void checkUnnamed7670(core.List<api.Proto2DescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2DescriptorProto(o[0]);
  checkProto2DescriptorProto(o[1]);
}

core.int buildCounterProto2FileDescriptorProto = 0;
api.Proto2FileDescriptorProto buildProto2FileDescriptorProto() {
  final o = api.Proto2FileDescriptorProto();
  buildCounterProto2FileDescriptorProto++;
  if (buildCounterProto2FileDescriptorProto < 3) {
    o.enumType = buildUnnamed7669();
    o.messageType = buildUnnamed7670();
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
    checkUnnamed7669(o.enumType!);
    checkUnnamed7670(o.messageType!);
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
  unittest.group('obj-schema-GoogleChromePolicyV1AdditionalTargetKeyName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1AdditionalTargetKeyName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1AdditionalTargetKeyName.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1AdditionalTargetKeyName(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1InheritOrgUnitPolicyRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1InheritOrgUnitPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1InheritOrgUnitPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1ListPolicySchemasResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1ListPolicySchemasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1ListPolicySchemasResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1ListPolicySchemasResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1ModifyOrgUnitPolicyRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1ModifyOrgUnitPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1ModifyOrgUnitPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicySchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1PolicySchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1PolicySchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicySchema(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicySchemaFieldDependencies',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1PolicySchemaFieldDependencies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1PolicySchemaFieldDependencies.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicySchemaFieldDependencies(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicySchemaFieldDescription',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1PolicySchemaFieldDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1PolicySchemaFieldDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicySchemaFieldDescription(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicySchemaNoticeDescription',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1PolicySchemaNoticeDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1PolicySchemaNoticeDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicySchemaNoticeDescription(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicyTargetKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1PolicyTargetKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1PolicyTargetKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicyTargetKey(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicyValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1PolicyValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1PolicyValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicyValue(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1ResolveRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1ResolveRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1ResolveRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1ResolveRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1ResolveResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1ResolveResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1ResolveResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1ResolveResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1ResolvedPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1ResolvedPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1ResolvedPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1ResolvedPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1UploadPolicyFileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1UploadPolicyFileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1UploadPolicyFileRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1UploadPolicyFileRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1UploadPolicyFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromePolicyV1UploadPolicyFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromePolicyV1UploadPolicyFileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1UploadPolicyFileResponse(od);
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
      final arg_request = buildGoogleChromePolicyV1ResolveRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleChromePolicyV1ResolveRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyV1ResolveRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleChromePolicyV1ResolveResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.resolve(arg_request, arg_customer, $fields: arg_$fields);
      checkGoogleChromePolicyV1ResolveResponse(
          response as api.GoogleChromePolicyV1ResolveResponse);
    });
  });

  unittest.group('resource-CustomersPoliciesOrgunitsResource', () {
    unittest.test('method--batchInherit', () async {
      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).customers.policies.orgunits;
      final arg_request =
          buildGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest(obj);

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
          buildGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleChromePolicyV1PolicySchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromePolicyV1PolicySchema(
          response as api.GoogleChromePolicyV1PolicySchema);
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
        final resp = convert.json
            .encode(buildGoogleChromePolicyV1ListPolicySchemasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleChromePolicyV1ListPolicySchemasResponse(
          response as api.GoogleChromePolicyV1ListPolicySchemasResponse);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ChromePolicyApi(mock).media;
      final arg_request = buildGoogleChromePolicyV1UploadPolicyFileRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleChromePolicyV1UploadPolicyFileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyV1UploadPolicyFileRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleChromePolicyV1UploadPolicyFileResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_customer, $fields: arg_$fields);
      checkGoogleChromePolicyV1UploadPolicyFileResponse(
          response as api.GoogleChromePolicyV1UploadPolicyFileResponse);
    });
  });
}
