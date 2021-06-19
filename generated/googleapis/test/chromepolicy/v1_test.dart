// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
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
  var o = api.GoogleChromePolicyV1AdditionalTargetKeyName();
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
    buildUnnamed7502() {
  var o = <api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest>[];
  o.add(buildGoogleChromePolicyV1InheritOrgUnitPolicyRequest());
  o.add(buildGoogleChromePolicyV1InheritOrgUnitPolicyRequest());
  return o;
}

void checkUnnamed7502(
    core.List<api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1InheritOrgUnitPolicyRequest(
      o[0] as api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest);
  checkGoogleChromePolicyV1InheritOrgUnitPolicyRequest(
      o[1] as api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest);
}

core.int buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest = 0;
api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest
    buildGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest() {
  var o = api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest();
  buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest < 3) {
    o.requests = buildUnnamed7502();
  }
  buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest--;
  return o;
}

void checkGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest(
    api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest o) {
  buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest < 3) {
    checkUnnamed7502(o.requests!);
  }
  buildCounterGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest--;
}

core.List<api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest>
    buildUnnamed7503() {
  var o = <api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest>[];
  o.add(buildGoogleChromePolicyV1ModifyOrgUnitPolicyRequest());
  o.add(buildGoogleChromePolicyV1ModifyOrgUnitPolicyRequest());
  return o;
}

void checkUnnamed7503(
    core.List<api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1ModifyOrgUnitPolicyRequest(
      o[0] as api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest);
  checkGoogleChromePolicyV1ModifyOrgUnitPolicyRequest(
      o[1] as api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest);
}

core.int buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest = 0;
api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest
    buildGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest() {
  var o = api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest();
  buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest < 3) {
    o.requests = buildUnnamed7503();
  }
  buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest--;
  return o;
}

void checkGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest(
    api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest o) {
  buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest++;
  if (buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest < 3) {
    checkUnnamed7503(o.requests!);
  }
  buildCounterGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest--;
}

core.int buildCounterGoogleChromePolicyV1InheritOrgUnitPolicyRequest = 0;
api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest
    buildGoogleChromePolicyV1InheritOrgUnitPolicyRequest() {
  var o = api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest();
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
    checkGoogleChromePolicyV1PolicyTargetKey(
        o.policyTargetKey! as api.GoogleChromePolicyV1PolicyTargetKey);
  }
  buildCounterGoogleChromePolicyV1InheritOrgUnitPolicyRequest--;
}

core.List<api.GoogleChromePolicyV1PolicySchema> buildUnnamed7504() {
  var o = <api.GoogleChromePolicyV1PolicySchema>[];
  o.add(buildGoogleChromePolicyV1PolicySchema());
  o.add(buildGoogleChromePolicyV1PolicySchema());
  return o;
}

void checkUnnamed7504(core.List<api.GoogleChromePolicyV1PolicySchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchema(
      o[0] as api.GoogleChromePolicyV1PolicySchema);
  checkGoogleChromePolicyV1PolicySchema(
      o[1] as api.GoogleChromePolicyV1PolicySchema);
}

core.int buildCounterGoogleChromePolicyV1ListPolicySchemasResponse = 0;
api.GoogleChromePolicyV1ListPolicySchemasResponse
    buildGoogleChromePolicyV1ListPolicySchemasResponse() {
  var o = api.GoogleChromePolicyV1ListPolicySchemasResponse();
  buildCounterGoogleChromePolicyV1ListPolicySchemasResponse++;
  if (buildCounterGoogleChromePolicyV1ListPolicySchemasResponse < 3) {
    o.nextPageToken = 'foo';
    o.policySchemas = buildUnnamed7504();
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
    checkUnnamed7504(o.policySchemas!);
  }
  buildCounterGoogleChromePolicyV1ListPolicySchemasResponse--;
}

core.int buildCounterGoogleChromePolicyV1ModifyOrgUnitPolicyRequest = 0;
api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest
    buildGoogleChromePolicyV1ModifyOrgUnitPolicyRequest() {
  var o = api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest();
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
    checkGoogleChromePolicyV1PolicyTargetKey(
        o.policyTargetKey! as api.GoogleChromePolicyV1PolicyTargetKey);
    checkGoogleChromePolicyV1PolicyValue(
        o.policyValue! as api.GoogleChromePolicyV1PolicyValue);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyV1ModifyOrgUnitPolicyRequest--;
}

core.List<core.String> buildUnnamed7505() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7505(core.List<core.String> o) {
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

core.List<api.GoogleChromePolicyV1AdditionalTargetKeyName> buildUnnamed7506() {
  var o = <api.GoogleChromePolicyV1AdditionalTargetKeyName>[];
  o.add(buildGoogleChromePolicyV1AdditionalTargetKeyName());
  o.add(buildGoogleChromePolicyV1AdditionalTargetKeyName());
  return o;
}

void checkUnnamed7506(
    core.List<api.GoogleChromePolicyV1AdditionalTargetKeyName> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1AdditionalTargetKeyName(
      o[0] as api.GoogleChromePolicyV1AdditionalTargetKeyName);
  checkGoogleChromePolicyV1AdditionalTargetKeyName(
      o[1] as api.GoogleChromePolicyV1AdditionalTargetKeyName);
}

core.List<api.GoogleChromePolicyV1PolicySchemaFieldDescription>
    buildUnnamed7507() {
  var o = <api.GoogleChromePolicyV1PolicySchemaFieldDescription>[];
  o.add(buildGoogleChromePolicyV1PolicySchemaFieldDescription());
  o.add(buildGoogleChromePolicyV1PolicySchemaFieldDescription());
  return o;
}

void checkUnnamed7507(
    core.List<api.GoogleChromePolicyV1PolicySchemaFieldDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchemaFieldDescription(
      o[0] as api.GoogleChromePolicyV1PolicySchemaFieldDescription);
  checkGoogleChromePolicyV1PolicySchemaFieldDescription(
      o[1] as api.GoogleChromePolicyV1PolicySchemaFieldDescription);
}

core.List<api.GoogleChromePolicyV1PolicySchemaNoticeDescription>
    buildUnnamed7508() {
  var o = <api.GoogleChromePolicyV1PolicySchemaNoticeDescription>[];
  o.add(buildGoogleChromePolicyV1PolicySchemaNoticeDescription());
  o.add(buildGoogleChromePolicyV1PolicySchemaNoticeDescription());
  return o;
}

void checkUnnamed7508(
    core.List<api.GoogleChromePolicyV1PolicySchemaNoticeDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchemaNoticeDescription(
      o[0] as api.GoogleChromePolicyV1PolicySchemaNoticeDescription);
  checkGoogleChromePolicyV1PolicySchemaNoticeDescription(
      o[1] as api.GoogleChromePolicyV1PolicySchemaNoticeDescription);
}

core.int buildCounterGoogleChromePolicyV1PolicySchema = 0;
api.GoogleChromePolicyV1PolicySchema buildGoogleChromePolicyV1PolicySchema() {
  var o = api.GoogleChromePolicyV1PolicySchema();
  buildCounterGoogleChromePolicyV1PolicySchema++;
  if (buildCounterGoogleChromePolicyV1PolicySchema < 3) {
    o.accessRestrictions = buildUnnamed7505();
    o.additionalTargetKeyNames = buildUnnamed7506();
    o.definition = buildProto2FileDescriptorProto();
    o.fieldDescriptions = buildUnnamed7507();
    o.name = 'foo';
    o.notices = buildUnnamed7508();
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
    checkUnnamed7505(o.accessRestrictions!);
    checkUnnamed7506(o.additionalTargetKeyNames!);
    checkProto2FileDescriptorProto(
        o.definition! as api.Proto2FileDescriptorProto);
    checkUnnamed7507(o.fieldDescriptions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7508(o.notices!);
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

core.List<api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription>
    buildUnnamed7509() {
  var o = <api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription>[];
  o.add(buildGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription());
  o.add(buildGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription());
  return o;
}

void checkUnnamed7509(
    core.List<api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription(
      o[0] as api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription);
  checkGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription(
      o[1] as api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription);
}

core.List<api.GoogleChromePolicyV1PolicySchemaFieldDescription>
    buildUnnamed7510() {
  var o = <api.GoogleChromePolicyV1PolicySchemaFieldDescription>[];
  o.add(buildGoogleChromePolicyV1PolicySchemaFieldDescription());
  o.add(buildGoogleChromePolicyV1PolicySchemaFieldDescription());
  return o;
}

void checkUnnamed7510(
    core.List<api.GoogleChromePolicyV1PolicySchemaFieldDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1PolicySchemaFieldDescription(
      o[0] as api.GoogleChromePolicyV1PolicySchemaFieldDescription);
  checkGoogleChromePolicyV1PolicySchemaFieldDescription(
      o[1] as api.GoogleChromePolicyV1PolicySchemaFieldDescription);
}

core.int buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription = 0;
api.GoogleChromePolicyV1PolicySchemaFieldDescription
    buildGoogleChromePolicyV1PolicySchemaFieldDescription() {
  var o = api.GoogleChromePolicyV1PolicySchemaFieldDescription();
  buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription++;
  if (buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription < 3) {
    o.description = 'foo';
    o.field = 'foo';
    o.inputConstraint = 'foo';
    o.knownValueDescriptions = buildUnnamed7509();
    o.nestedFieldDescriptions = buildUnnamed7510();
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
    unittest.expect(
      o.inputConstraint!,
      unittest.equals('foo'),
    );
    checkUnnamed7509(o.knownValueDescriptions!);
    checkUnnamed7510(o.nestedFieldDescriptions!);
  }
  buildCounterGoogleChromePolicyV1PolicySchemaFieldDescription--;
}

core.int
    buildCounterGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription = 0;
api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription
    buildGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription() {
  var o = api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription();
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
  var o = api.GoogleChromePolicyV1PolicySchemaNoticeDescription();
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

core.Map<core.String, core.String> buildUnnamed7511() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7511(core.Map<core.String, core.String> o) {
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
  var o = api.GoogleChromePolicyV1PolicyTargetKey();
  buildCounterGoogleChromePolicyV1PolicyTargetKey++;
  if (buildCounterGoogleChromePolicyV1PolicyTargetKey < 3) {
    o.additionalTargetKeys = buildUnnamed7511();
    o.targetResource = 'foo';
  }
  buildCounterGoogleChromePolicyV1PolicyTargetKey--;
  return o;
}

void checkGoogleChromePolicyV1PolicyTargetKey(
    api.GoogleChromePolicyV1PolicyTargetKey o) {
  buildCounterGoogleChromePolicyV1PolicyTargetKey++;
  if (buildCounterGoogleChromePolicyV1PolicyTargetKey < 3) {
    checkUnnamed7511(o.additionalTargetKeys!);
    unittest.expect(
      o.targetResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromePolicyV1PolicyTargetKey--;
}

core.Map<core.String, core.Object> buildUnnamed7512() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7512(core.Map<core.String, core.Object> o) {
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
  var o = api.GoogleChromePolicyV1PolicyValue();
  buildCounterGoogleChromePolicyV1PolicyValue++;
  if (buildCounterGoogleChromePolicyV1PolicyValue < 3) {
    o.policySchema = 'foo';
    o.value = buildUnnamed7512();
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
    checkUnnamed7512(o.value!);
  }
  buildCounterGoogleChromePolicyV1PolicyValue--;
}

core.int buildCounterGoogleChromePolicyV1ResolveRequest = 0;
api.GoogleChromePolicyV1ResolveRequest
    buildGoogleChromePolicyV1ResolveRequest() {
  var o = api.GoogleChromePolicyV1ResolveRequest();
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
    checkGoogleChromePolicyV1PolicyTargetKey(
        o.policyTargetKey! as api.GoogleChromePolicyV1PolicyTargetKey);
  }
  buildCounterGoogleChromePolicyV1ResolveRequest--;
}

core.List<api.GoogleChromePolicyV1ResolvedPolicy> buildUnnamed7513() {
  var o = <api.GoogleChromePolicyV1ResolvedPolicy>[];
  o.add(buildGoogleChromePolicyV1ResolvedPolicy());
  o.add(buildGoogleChromePolicyV1ResolvedPolicy());
  return o;
}

void checkUnnamed7513(core.List<api.GoogleChromePolicyV1ResolvedPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromePolicyV1ResolvedPolicy(
      o[0] as api.GoogleChromePolicyV1ResolvedPolicy);
  checkGoogleChromePolicyV1ResolvedPolicy(
      o[1] as api.GoogleChromePolicyV1ResolvedPolicy);
}

core.int buildCounterGoogleChromePolicyV1ResolveResponse = 0;
api.GoogleChromePolicyV1ResolveResponse
    buildGoogleChromePolicyV1ResolveResponse() {
  var o = api.GoogleChromePolicyV1ResolveResponse();
  buildCounterGoogleChromePolicyV1ResolveResponse++;
  if (buildCounterGoogleChromePolicyV1ResolveResponse < 3) {
    o.nextPageToken = 'foo';
    o.resolvedPolicies = buildUnnamed7513();
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
    checkUnnamed7513(o.resolvedPolicies!);
  }
  buildCounterGoogleChromePolicyV1ResolveResponse--;
}

core.int buildCounterGoogleChromePolicyV1ResolvedPolicy = 0;
api.GoogleChromePolicyV1ResolvedPolicy
    buildGoogleChromePolicyV1ResolvedPolicy() {
  var o = api.GoogleChromePolicyV1ResolvedPolicy();
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
    checkGoogleChromePolicyV1PolicyTargetKey(
        o.sourceKey! as api.GoogleChromePolicyV1PolicyTargetKey);
    checkGoogleChromePolicyV1PolicyTargetKey(
        o.targetKey! as api.GoogleChromePolicyV1PolicyTargetKey);
    checkGoogleChromePolicyV1PolicyValue(
        o.value! as api.GoogleChromePolicyV1PolicyValue);
  }
  buildCounterGoogleChromePolicyV1ResolvedPolicy--;
}

core.int buildCounterGoogleChromePolicyV1UploadPolicyFileRequest = 0;
api.GoogleChromePolicyV1UploadPolicyFileRequest
    buildGoogleChromePolicyV1UploadPolicyFileRequest() {
  var o = api.GoogleChromePolicyV1UploadPolicyFileRequest();
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
  var o = api.GoogleChromePolicyV1UploadPolicyFileResponse();
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
  var o = api.GoogleProtobufEmpty();
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

core.List<api.Proto2EnumDescriptorProto> buildUnnamed7514() {
  var o = <api.Proto2EnumDescriptorProto>[];
  o.add(buildProto2EnumDescriptorProto());
  o.add(buildProto2EnumDescriptorProto());
  return o;
}

void checkUnnamed7514(core.List<api.Proto2EnumDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2EnumDescriptorProto(o[0] as api.Proto2EnumDescriptorProto);
  checkProto2EnumDescriptorProto(o[1] as api.Proto2EnumDescriptorProto);
}

core.List<api.Proto2FieldDescriptorProto> buildUnnamed7515() {
  var o = <api.Proto2FieldDescriptorProto>[];
  o.add(buildProto2FieldDescriptorProto());
  o.add(buildProto2FieldDescriptorProto());
  return o;
}

void checkUnnamed7515(core.List<api.Proto2FieldDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2FieldDescriptorProto(o[0] as api.Proto2FieldDescriptorProto);
  checkProto2FieldDescriptorProto(o[1] as api.Proto2FieldDescriptorProto);
}

core.List<api.Proto2DescriptorProto> buildUnnamed7516() {
  var o = <api.Proto2DescriptorProto>[];
  o.add(buildProto2DescriptorProto());
  o.add(buildProto2DescriptorProto());
  return o;
}

void checkUnnamed7516(core.List<api.Proto2DescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2DescriptorProto(o[0] as api.Proto2DescriptorProto);
  checkProto2DescriptorProto(o[1] as api.Proto2DescriptorProto);
}

core.List<api.Proto2OneofDescriptorProto> buildUnnamed7517() {
  var o = <api.Proto2OneofDescriptorProto>[];
  o.add(buildProto2OneofDescriptorProto());
  o.add(buildProto2OneofDescriptorProto());
  return o;
}

void checkUnnamed7517(core.List<api.Proto2OneofDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2OneofDescriptorProto(o[0] as api.Proto2OneofDescriptorProto);
  checkProto2OneofDescriptorProto(o[1] as api.Proto2OneofDescriptorProto);
}

core.int buildCounterProto2DescriptorProto = 0;
api.Proto2DescriptorProto buildProto2DescriptorProto() {
  var o = api.Proto2DescriptorProto();
  buildCounterProto2DescriptorProto++;
  if (buildCounterProto2DescriptorProto < 3) {
    o.enumType = buildUnnamed7514();
    o.field = buildUnnamed7515();
    o.name = 'foo';
    o.nestedType = buildUnnamed7516();
    o.oneofDecl = buildUnnamed7517();
  }
  buildCounterProto2DescriptorProto--;
  return o;
}

void checkProto2DescriptorProto(api.Proto2DescriptorProto o) {
  buildCounterProto2DescriptorProto++;
  if (buildCounterProto2DescriptorProto < 3) {
    checkUnnamed7514(o.enumType!);
    checkUnnamed7515(o.field!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7516(o.nestedType!);
    checkUnnamed7517(o.oneofDecl!);
  }
  buildCounterProto2DescriptorProto--;
}

core.List<api.Proto2EnumValueDescriptorProto> buildUnnamed7518() {
  var o = <api.Proto2EnumValueDescriptorProto>[];
  o.add(buildProto2EnumValueDescriptorProto());
  o.add(buildProto2EnumValueDescriptorProto());
  return o;
}

void checkUnnamed7518(core.List<api.Proto2EnumValueDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2EnumValueDescriptorProto(
      o[0] as api.Proto2EnumValueDescriptorProto);
  checkProto2EnumValueDescriptorProto(
      o[1] as api.Proto2EnumValueDescriptorProto);
}

core.int buildCounterProto2EnumDescriptorProto = 0;
api.Proto2EnumDescriptorProto buildProto2EnumDescriptorProto() {
  var o = api.Proto2EnumDescriptorProto();
  buildCounterProto2EnumDescriptorProto++;
  if (buildCounterProto2EnumDescriptorProto < 3) {
    o.name = 'foo';
    o.value = buildUnnamed7518();
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
    checkUnnamed7518(o.value!);
  }
  buildCounterProto2EnumDescriptorProto--;
}

core.int buildCounterProto2EnumValueDescriptorProto = 0;
api.Proto2EnumValueDescriptorProto buildProto2EnumValueDescriptorProto() {
  var o = api.Proto2EnumValueDescriptorProto();
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
  var o = api.Proto2FieldDescriptorProto();
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

core.List<api.Proto2EnumDescriptorProto> buildUnnamed7519() {
  var o = <api.Proto2EnumDescriptorProto>[];
  o.add(buildProto2EnumDescriptorProto());
  o.add(buildProto2EnumDescriptorProto());
  return o;
}

void checkUnnamed7519(core.List<api.Proto2EnumDescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2EnumDescriptorProto(o[0] as api.Proto2EnumDescriptorProto);
  checkProto2EnumDescriptorProto(o[1] as api.Proto2EnumDescriptorProto);
}

core.List<api.Proto2DescriptorProto> buildUnnamed7520() {
  var o = <api.Proto2DescriptorProto>[];
  o.add(buildProto2DescriptorProto());
  o.add(buildProto2DescriptorProto());
  return o;
}

void checkUnnamed7520(core.List<api.Proto2DescriptorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProto2DescriptorProto(o[0] as api.Proto2DescriptorProto);
  checkProto2DescriptorProto(o[1] as api.Proto2DescriptorProto);
}

core.int buildCounterProto2FileDescriptorProto = 0;
api.Proto2FileDescriptorProto buildProto2FileDescriptorProto() {
  var o = api.Proto2FileDescriptorProto();
  buildCounterProto2FileDescriptorProto++;
  if (buildCounterProto2FileDescriptorProto < 3) {
    o.enumType = buildUnnamed7519();
    o.messageType = buildUnnamed7520();
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
    checkUnnamed7519(o.enumType!);
    checkUnnamed7520(o.messageType!);
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
  var o = api.Proto2OneofDescriptorProto();
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
      var o = buildGoogleChromePolicyV1AdditionalTargetKeyName();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1AdditionalTargetKeyName.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1AdditionalTargetKeyName(
          od as api.GoogleChromePolicyV1AdditionalTargetKeyName);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest(
          od as api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest(
          od as api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1InheritOrgUnitPolicyRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1InheritOrgUnitPolicyRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1InheritOrgUnitPolicyRequest(
          od as api.GoogleChromePolicyV1InheritOrgUnitPolicyRequest);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1ListPolicySchemasResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1ListPolicySchemasResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1ListPolicySchemasResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1ListPolicySchemasResponse(
          od as api.GoogleChromePolicyV1ListPolicySchemasResponse);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1ModifyOrgUnitPolicyRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1ModifyOrgUnitPolicyRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1ModifyOrgUnitPolicyRequest(
          od as api.GoogleChromePolicyV1ModifyOrgUnitPolicyRequest);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicySchema', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1PolicySchema();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1PolicySchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicySchema(
          od as api.GoogleChromePolicyV1PolicySchema);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicySchemaFieldDescription',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1PolicySchemaFieldDescription();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1PolicySchemaFieldDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicySchemaFieldDescription(
          od as api.GoogleChromePolicyV1PolicySchemaFieldDescription);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicySchemaFieldKnownValueDescription(
          od as api.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicySchemaNoticeDescription',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1PolicySchemaNoticeDescription();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1PolicySchemaNoticeDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicySchemaNoticeDescription(
          od as api.GoogleChromePolicyV1PolicySchemaNoticeDescription);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicyTargetKey', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1PolicyTargetKey();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1PolicyTargetKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicyTargetKey(
          od as api.GoogleChromePolicyV1PolicyTargetKey);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1PolicyValue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1PolicyValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1PolicyValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1PolicyValue(
          od as api.GoogleChromePolicyV1PolicyValue);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1ResolveRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1ResolveRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1ResolveRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1ResolveRequest(
          od as api.GoogleChromePolicyV1ResolveRequest);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1ResolveResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1ResolveResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1ResolveResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1ResolveResponse(
          od as api.GoogleChromePolicyV1ResolveResponse);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1ResolvedPolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1ResolvedPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1ResolvedPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1ResolvedPolicy(
          od as api.GoogleChromePolicyV1ResolvedPolicy);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1UploadPolicyFileRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1UploadPolicyFileRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1UploadPolicyFileRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1UploadPolicyFileRequest(
          od as api.GoogleChromePolicyV1UploadPolicyFileRequest);
    });
  });

  unittest.group('obj-schema-GoogleChromePolicyV1UploadPolicyFileResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleChromePolicyV1UploadPolicyFileResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleChromePolicyV1UploadPolicyFileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromePolicyV1UploadPolicyFileResponse(
          od as api.GoogleChromePolicyV1UploadPolicyFileResponse);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleProtobufEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-Proto2DescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProto2DescriptorProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Proto2DescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2DescriptorProto(od as api.Proto2DescriptorProto);
    });
  });

  unittest.group('obj-schema-Proto2EnumDescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProto2EnumDescriptorProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Proto2EnumDescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2EnumDescriptorProto(od as api.Proto2EnumDescriptorProto);
    });
  });

  unittest.group('obj-schema-Proto2EnumValueDescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProto2EnumValueDescriptorProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Proto2EnumValueDescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2EnumValueDescriptorProto(
          od as api.Proto2EnumValueDescriptorProto);
    });
  });

  unittest.group('obj-schema-Proto2FieldDescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProto2FieldDescriptorProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Proto2FieldDescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2FieldDescriptorProto(od as api.Proto2FieldDescriptorProto);
    });
  });

  unittest.group('obj-schema-Proto2FileDescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProto2FileDescriptorProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Proto2FileDescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2FileDescriptorProto(od as api.Proto2FileDescriptorProto);
    });
  });

  unittest.group('obj-schema-Proto2OneofDescriptorProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProto2OneofDescriptorProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Proto2OneofDescriptorProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2OneofDescriptorProto(od as api.Proto2OneofDescriptorProto);
    });
  });

  unittest.group('resource-CustomersPoliciesResource', () {
    unittest.test('method--resolve', () async {
      var mock = HttpServerMock();
      var res = api.ChromePolicyApi(mock).customers.policies;
      var arg_request = buildGoogleChromePolicyV1ResolveRequest();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleChromePolicyV1ResolveRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyV1ResolveRequest(
            obj as api.GoogleChromePolicyV1ResolveRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
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
      var mock = HttpServerMock();
      var res = api.ChromePolicyApi(mock).customers.policies.orgunits;
      var arg_request =
          buildGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest(
            obj as api.GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchInherit(arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchModify', () async {
      var mock = HttpServerMock();
      var res = api.ChromePolicyApi(mock).customers.policies.orgunits;
      var arg_request =
          buildGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest(
            obj as api.GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchModify(arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-CustomersPolicySchemasResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ChromePolicyApi(mock).customers.policySchemas;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleChromePolicyV1PolicySchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromePolicyV1PolicySchema(
          response as api.GoogleChromePolicyV1PolicySchema);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ChromePolicyApi(mock).customers.policySchemas;
      var arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
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

      var mock = HttpServerMock();
      var res = api.ChromePolicyApi(mock).media;
      var arg_request = buildGoogleChromePolicyV1UploadPolicyFileRequest();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleChromePolicyV1UploadPolicyFileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleChromePolicyV1UploadPolicyFileRequest(
            obj as api.GoogleChromePolicyV1UploadPolicyFileRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
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
