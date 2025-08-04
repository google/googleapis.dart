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

import 'package:googleapis/networksecurity/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAddAddressGroupItemsRequest = 0;
api.AddAddressGroupItemsRequest buildAddAddressGroupItemsRequest() {
  final o = api.AddAddressGroupItemsRequest();
  buildCounterAddAddressGroupItemsRequest++;
  if (buildCounterAddAddressGroupItemsRequest < 3) {
    o.items = buildUnnamed0();
    o.requestId = 'foo';
  }
  buildCounterAddAddressGroupItemsRequest--;
  return o;
}

void checkAddAddressGroupItemsRequest(api.AddAddressGroupItemsRequest o) {
  buildCounterAddAddressGroupItemsRequest++;
  if (buildCounterAddAddressGroupItemsRequest < 3) {
    checkUnnamed0(o.items!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterAddAddressGroupItemsRequest--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAddressGroup = 0;
api.AddressGroup buildAddressGroup() {
  final o = api.AddressGroup();
  buildCounterAddressGroup++;
  if (buildCounterAddressGroup < 3) {
    o.capacity = 42;
    o.createTime = 'foo';
    o.description = 'foo';
    o.items = buildUnnamed1();
    o.labels = buildUnnamed2();
    o.name = 'foo';
    o.purpose = buildUnnamed3();
    o.selfLink = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAddressGroup--;
  return o;
}

void checkAddressGroup(api.AddressGroup o) {
  buildCounterAddressGroup++;
  if (buildCounterAddressGroup < 3) {
    unittest.expect(o.capacity!, unittest.equals(42));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed1(o.items!);
    checkUnnamed2(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed3(o.purpose!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAddressGroup--;
}

core.int buildCounterAntivirusOverride = 0;
api.AntivirusOverride buildAntivirusOverride() {
  final o = api.AntivirusOverride();
  buildCounterAntivirusOverride++;
  if (buildCounterAntivirusOverride < 3) {
    o.action = 'foo';
    o.protocol = 'foo';
  }
  buildCounterAntivirusOverride--;
  return o;
}

void checkAntivirusOverride(api.AntivirusOverride o) {
  buildCounterAntivirusOverride++;
  if (buildCounterAntivirusOverride < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.protocol!, unittest.equals('foo'));
  }
  buildCounterAntivirusOverride--;
}

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Rule> buildUnnamed5() => [buildRule(), buildRule()];

void checkUnnamed5(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterAuthorizationPolicy = 0;
api.AuthorizationPolicy buildAuthorizationPolicy() {
  final o = api.AuthorizationPolicy();
  buildCounterAuthorizationPolicy++;
  if (buildCounterAuthorizationPolicy < 3) {
    o.action = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed4();
    o.name = 'foo';
    o.rules = buildUnnamed5();
    o.updateTime = 'foo';
  }
  buildCounterAuthorizationPolicy--;
  return o;
}

void checkAuthorizationPolicy(api.AuthorizationPolicy o) {
  buildCounterAuthorizationPolicy++;
  if (buildCounterAuthorizationPolicy < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed4(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed5(o.rules!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAuthorizationPolicy--;
}

core.List<api.AuthzPolicyAuthzRule> buildUnnamed6() => [
  buildAuthzPolicyAuthzRule(),
  buildAuthzPolicyAuthzRule(),
];

void checkUnnamed6(core.List<api.AuthzPolicyAuthzRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRule(o[0]);
  checkAuthzPolicyAuthzRule(o[1]);
}

core.Map<core.String, core.String> buildUnnamed7() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAuthzPolicy = 0;
api.AuthzPolicy buildAuthzPolicy() {
  final o = api.AuthzPolicy();
  buildCounterAuthzPolicy++;
  if (buildCounterAuthzPolicy < 3) {
    o.action = 'foo';
    o.createTime = 'foo';
    o.customProvider = buildAuthzPolicyCustomProvider();
    o.description = 'foo';
    o.httpRules = buildUnnamed6();
    o.labels = buildUnnamed7();
    o.name = 'foo';
    o.target = buildAuthzPolicyTarget();
    o.updateTime = 'foo';
  }
  buildCounterAuthzPolicy--;
  return o;
}

void checkAuthzPolicy(api.AuthzPolicy o) {
  buildCounterAuthzPolicy++;
  if (buildCounterAuthzPolicy < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkAuthzPolicyCustomProvider(o.customProvider!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed6(o.httpRules!);
    checkUnnamed7(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAuthzPolicyTarget(o.target!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAuthzPolicy--;
}

core.int buildCounterAuthzPolicyAuthzRule = 0;
api.AuthzPolicyAuthzRule buildAuthzPolicyAuthzRule() {
  final o = api.AuthzPolicyAuthzRule();
  buildCounterAuthzPolicyAuthzRule++;
  if (buildCounterAuthzPolicyAuthzRule < 3) {
    o.from = buildAuthzPolicyAuthzRuleFrom();
    o.to = buildAuthzPolicyAuthzRuleTo();
    o.when = 'foo';
  }
  buildCounterAuthzPolicyAuthzRule--;
  return o;
}

void checkAuthzPolicyAuthzRule(api.AuthzPolicyAuthzRule o) {
  buildCounterAuthzPolicyAuthzRule++;
  if (buildCounterAuthzPolicyAuthzRule < 3) {
    checkAuthzPolicyAuthzRuleFrom(o.from!);
    checkAuthzPolicyAuthzRuleTo(o.to!);
    unittest.expect(o.when!, unittest.equals('foo'));
  }
  buildCounterAuthzPolicyAuthzRule--;
}

core.List<api.AuthzPolicyAuthzRuleFromRequestSource> buildUnnamed8() => [
  buildAuthzPolicyAuthzRuleFromRequestSource(),
  buildAuthzPolicyAuthzRuleFromRequestSource(),
];

void checkUnnamed8(core.List<api.AuthzPolicyAuthzRuleFromRequestSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRuleFromRequestSource(o[0]);
  checkAuthzPolicyAuthzRuleFromRequestSource(o[1]);
}

core.List<api.AuthzPolicyAuthzRuleFromRequestSource> buildUnnamed9() => [
  buildAuthzPolicyAuthzRuleFromRequestSource(),
  buildAuthzPolicyAuthzRuleFromRequestSource(),
];

void checkUnnamed9(core.List<api.AuthzPolicyAuthzRuleFromRequestSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRuleFromRequestSource(o[0]);
  checkAuthzPolicyAuthzRuleFromRequestSource(o[1]);
}

core.int buildCounterAuthzPolicyAuthzRuleFrom = 0;
api.AuthzPolicyAuthzRuleFrom buildAuthzPolicyAuthzRuleFrom() {
  final o = api.AuthzPolicyAuthzRuleFrom();
  buildCounterAuthzPolicyAuthzRuleFrom++;
  if (buildCounterAuthzPolicyAuthzRuleFrom < 3) {
    o.notSources = buildUnnamed8();
    o.sources = buildUnnamed9();
  }
  buildCounterAuthzPolicyAuthzRuleFrom--;
  return o;
}

void checkAuthzPolicyAuthzRuleFrom(api.AuthzPolicyAuthzRuleFrom o) {
  buildCounterAuthzPolicyAuthzRuleFrom++;
  if (buildCounterAuthzPolicyAuthzRuleFrom < 3) {
    checkUnnamed8(o.notSources!);
    checkUnnamed9(o.sources!);
  }
  buildCounterAuthzPolicyAuthzRuleFrom--;
}

core.List<api.AuthzPolicyAuthzRuleIpBlock> buildUnnamed10() => [
  buildAuthzPolicyAuthzRuleIpBlock(),
  buildAuthzPolicyAuthzRuleIpBlock(),
];

void checkUnnamed10(core.List<api.AuthzPolicyAuthzRuleIpBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRuleIpBlock(o[0]);
  checkAuthzPolicyAuthzRuleIpBlock(o[1]);
}

core.List<api.AuthzPolicyAuthzRulePrincipal> buildUnnamed11() => [
  buildAuthzPolicyAuthzRulePrincipal(),
  buildAuthzPolicyAuthzRulePrincipal(),
];

void checkUnnamed11(core.List<api.AuthzPolicyAuthzRulePrincipal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRulePrincipal(o[0]);
  checkAuthzPolicyAuthzRulePrincipal(o[1]);
}

core.List<api.AuthzPolicyAuthzRuleRequestResource> buildUnnamed12() => [
  buildAuthzPolicyAuthzRuleRequestResource(),
  buildAuthzPolicyAuthzRuleRequestResource(),
];

void checkUnnamed12(core.List<api.AuthzPolicyAuthzRuleRequestResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRuleRequestResource(o[0]);
  checkAuthzPolicyAuthzRuleRequestResource(o[1]);
}

core.int buildCounterAuthzPolicyAuthzRuleFromRequestSource = 0;
api.AuthzPolicyAuthzRuleFromRequestSource
buildAuthzPolicyAuthzRuleFromRequestSource() {
  final o = api.AuthzPolicyAuthzRuleFromRequestSource();
  buildCounterAuthzPolicyAuthzRuleFromRequestSource++;
  if (buildCounterAuthzPolicyAuthzRuleFromRequestSource < 3) {
    o.ipBlocks = buildUnnamed10();
    o.principals = buildUnnamed11();
    o.resources = buildUnnamed12();
  }
  buildCounterAuthzPolicyAuthzRuleFromRequestSource--;
  return o;
}

void checkAuthzPolicyAuthzRuleFromRequestSource(
  api.AuthzPolicyAuthzRuleFromRequestSource o,
) {
  buildCounterAuthzPolicyAuthzRuleFromRequestSource++;
  if (buildCounterAuthzPolicyAuthzRuleFromRequestSource < 3) {
    checkUnnamed10(o.ipBlocks!);
    checkUnnamed11(o.principals!);
    checkUnnamed12(o.resources!);
  }
  buildCounterAuthzPolicyAuthzRuleFromRequestSource--;
}

core.int buildCounterAuthzPolicyAuthzRuleHeaderMatch = 0;
api.AuthzPolicyAuthzRuleHeaderMatch buildAuthzPolicyAuthzRuleHeaderMatch() {
  final o = api.AuthzPolicyAuthzRuleHeaderMatch();
  buildCounterAuthzPolicyAuthzRuleHeaderMatch++;
  if (buildCounterAuthzPolicyAuthzRuleHeaderMatch < 3) {
    o.name = 'foo';
    o.value = buildAuthzPolicyAuthzRuleStringMatch();
  }
  buildCounterAuthzPolicyAuthzRuleHeaderMatch--;
  return o;
}

void checkAuthzPolicyAuthzRuleHeaderMatch(
  api.AuthzPolicyAuthzRuleHeaderMatch o,
) {
  buildCounterAuthzPolicyAuthzRuleHeaderMatch++;
  if (buildCounterAuthzPolicyAuthzRuleHeaderMatch < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAuthzPolicyAuthzRuleStringMatch(o.value!);
  }
  buildCounterAuthzPolicyAuthzRuleHeaderMatch--;
}

core.int buildCounterAuthzPolicyAuthzRuleIpBlock = 0;
api.AuthzPolicyAuthzRuleIpBlock buildAuthzPolicyAuthzRuleIpBlock() {
  final o = api.AuthzPolicyAuthzRuleIpBlock();
  buildCounterAuthzPolicyAuthzRuleIpBlock++;
  if (buildCounterAuthzPolicyAuthzRuleIpBlock < 3) {
    o.length = 42;
    o.prefix = 'foo';
  }
  buildCounterAuthzPolicyAuthzRuleIpBlock--;
  return o;
}

void checkAuthzPolicyAuthzRuleIpBlock(api.AuthzPolicyAuthzRuleIpBlock o) {
  buildCounterAuthzPolicyAuthzRuleIpBlock++;
  if (buildCounterAuthzPolicyAuthzRuleIpBlock < 3) {
    unittest.expect(o.length!, unittest.equals(42));
    unittest.expect(o.prefix!, unittest.equals('foo'));
  }
  buildCounterAuthzPolicyAuthzRuleIpBlock--;
}

core.int buildCounterAuthzPolicyAuthzRulePrincipal = 0;
api.AuthzPolicyAuthzRulePrincipal buildAuthzPolicyAuthzRulePrincipal() {
  final o = api.AuthzPolicyAuthzRulePrincipal();
  buildCounterAuthzPolicyAuthzRulePrincipal++;
  if (buildCounterAuthzPolicyAuthzRulePrincipal < 3) {
    o.principal = buildAuthzPolicyAuthzRuleStringMatch();
    o.principalSelector = 'foo';
  }
  buildCounterAuthzPolicyAuthzRulePrincipal--;
  return o;
}

void checkAuthzPolicyAuthzRulePrincipal(api.AuthzPolicyAuthzRulePrincipal o) {
  buildCounterAuthzPolicyAuthzRulePrincipal++;
  if (buildCounterAuthzPolicyAuthzRulePrincipal < 3) {
    checkAuthzPolicyAuthzRuleStringMatch(o.principal!);
    unittest.expect(o.principalSelector!, unittest.equals('foo'));
  }
  buildCounterAuthzPolicyAuthzRulePrincipal--;
}

core.int buildCounterAuthzPolicyAuthzRuleRequestResource = 0;
api.AuthzPolicyAuthzRuleRequestResource
buildAuthzPolicyAuthzRuleRequestResource() {
  final o = api.AuthzPolicyAuthzRuleRequestResource();
  buildCounterAuthzPolicyAuthzRuleRequestResource++;
  if (buildCounterAuthzPolicyAuthzRuleRequestResource < 3) {
    o.iamServiceAccount = buildAuthzPolicyAuthzRuleStringMatch();
    o.tagValueIdSet = buildAuthzPolicyAuthzRuleRequestResourceTagValueIdSet();
  }
  buildCounterAuthzPolicyAuthzRuleRequestResource--;
  return o;
}

void checkAuthzPolicyAuthzRuleRequestResource(
  api.AuthzPolicyAuthzRuleRequestResource o,
) {
  buildCounterAuthzPolicyAuthzRuleRequestResource++;
  if (buildCounterAuthzPolicyAuthzRuleRequestResource < 3) {
    checkAuthzPolicyAuthzRuleStringMatch(o.iamServiceAccount!);
    checkAuthzPolicyAuthzRuleRequestResourceTagValueIdSet(o.tagValueIdSet!);
  }
  buildCounterAuthzPolicyAuthzRuleRequestResource--;
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthzPolicyAuthzRuleRequestResourceTagValueIdSet = 0;
api.AuthzPolicyAuthzRuleRequestResourceTagValueIdSet
buildAuthzPolicyAuthzRuleRequestResourceTagValueIdSet() {
  final o = api.AuthzPolicyAuthzRuleRequestResourceTagValueIdSet();
  buildCounterAuthzPolicyAuthzRuleRequestResourceTagValueIdSet++;
  if (buildCounterAuthzPolicyAuthzRuleRequestResourceTagValueIdSet < 3) {
    o.ids = buildUnnamed13();
  }
  buildCounterAuthzPolicyAuthzRuleRequestResourceTagValueIdSet--;
  return o;
}

void checkAuthzPolicyAuthzRuleRequestResourceTagValueIdSet(
  api.AuthzPolicyAuthzRuleRequestResourceTagValueIdSet o,
) {
  buildCounterAuthzPolicyAuthzRuleRequestResourceTagValueIdSet++;
  if (buildCounterAuthzPolicyAuthzRuleRequestResourceTagValueIdSet < 3) {
    checkUnnamed13(o.ids!);
  }
  buildCounterAuthzPolicyAuthzRuleRequestResourceTagValueIdSet--;
}

core.int buildCounterAuthzPolicyAuthzRuleStringMatch = 0;
api.AuthzPolicyAuthzRuleStringMatch buildAuthzPolicyAuthzRuleStringMatch() {
  final o = api.AuthzPolicyAuthzRuleStringMatch();
  buildCounterAuthzPolicyAuthzRuleStringMatch++;
  if (buildCounterAuthzPolicyAuthzRuleStringMatch < 3) {
    o.contains = 'foo';
    o.exact = 'foo';
    o.ignoreCase = true;
    o.prefix = 'foo';
    o.suffix = 'foo';
  }
  buildCounterAuthzPolicyAuthzRuleStringMatch--;
  return o;
}

void checkAuthzPolicyAuthzRuleStringMatch(
  api.AuthzPolicyAuthzRuleStringMatch o,
) {
  buildCounterAuthzPolicyAuthzRuleStringMatch++;
  if (buildCounterAuthzPolicyAuthzRuleStringMatch < 3) {
    unittest.expect(o.contains!, unittest.equals('foo'));
    unittest.expect(o.exact!, unittest.equals('foo'));
    unittest.expect(o.ignoreCase!, unittest.isTrue);
    unittest.expect(o.prefix!, unittest.equals('foo'));
    unittest.expect(o.suffix!, unittest.equals('foo'));
  }
  buildCounterAuthzPolicyAuthzRuleStringMatch--;
}

core.List<api.AuthzPolicyAuthzRuleToRequestOperation> buildUnnamed14() => [
  buildAuthzPolicyAuthzRuleToRequestOperation(),
  buildAuthzPolicyAuthzRuleToRequestOperation(),
];

void checkUnnamed14(core.List<api.AuthzPolicyAuthzRuleToRequestOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRuleToRequestOperation(o[0]);
  checkAuthzPolicyAuthzRuleToRequestOperation(o[1]);
}

core.List<api.AuthzPolicyAuthzRuleToRequestOperation> buildUnnamed15() => [
  buildAuthzPolicyAuthzRuleToRequestOperation(),
  buildAuthzPolicyAuthzRuleToRequestOperation(),
];

void checkUnnamed15(core.List<api.AuthzPolicyAuthzRuleToRequestOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRuleToRequestOperation(o[0]);
  checkAuthzPolicyAuthzRuleToRequestOperation(o[1]);
}

core.int buildCounterAuthzPolicyAuthzRuleTo = 0;
api.AuthzPolicyAuthzRuleTo buildAuthzPolicyAuthzRuleTo() {
  final o = api.AuthzPolicyAuthzRuleTo();
  buildCounterAuthzPolicyAuthzRuleTo++;
  if (buildCounterAuthzPolicyAuthzRuleTo < 3) {
    o.notOperations = buildUnnamed14();
    o.operations = buildUnnamed15();
  }
  buildCounterAuthzPolicyAuthzRuleTo--;
  return o;
}

void checkAuthzPolicyAuthzRuleTo(api.AuthzPolicyAuthzRuleTo o) {
  buildCounterAuthzPolicyAuthzRuleTo++;
  if (buildCounterAuthzPolicyAuthzRuleTo < 3) {
    checkUnnamed14(o.notOperations!);
    checkUnnamed15(o.operations!);
  }
  buildCounterAuthzPolicyAuthzRuleTo--;
}

core.List<api.AuthzPolicyAuthzRuleStringMatch> buildUnnamed16() => [
  buildAuthzPolicyAuthzRuleStringMatch(),
  buildAuthzPolicyAuthzRuleStringMatch(),
];

void checkUnnamed16(core.List<api.AuthzPolicyAuthzRuleStringMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRuleStringMatch(o[0]);
  checkAuthzPolicyAuthzRuleStringMatch(o[1]);
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.AuthzPolicyAuthzRuleStringMatch> buildUnnamed18() => [
  buildAuthzPolicyAuthzRuleStringMatch(),
  buildAuthzPolicyAuthzRuleStringMatch(),
];

void checkUnnamed18(core.List<api.AuthzPolicyAuthzRuleStringMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRuleStringMatch(o[0]);
  checkAuthzPolicyAuthzRuleStringMatch(o[1]);
}

core.int buildCounterAuthzPolicyAuthzRuleToRequestOperation = 0;
api.AuthzPolicyAuthzRuleToRequestOperation
buildAuthzPolicyAuthzRuleToRequestOperation() {
  final o = api.AuthzPolicyAuthzRuleToRequestOperation();
  buildCounterAuthzPolicyAuthzRuleToRequestOperation++;
  if (buildCounterAuthzPolicyAuthzRuleToRequestOperation < 3) {
    o.headerSet = buildAuthzPolicyAuthzRuleToRequestOperationHeaderSet();
    o.hosts = buildUnnamed16();
    o.methods = buildUnnamed17();
    o.paths = buildUnnamed18();
  }
  buildCounterAuthzPolicyAuthzRuleToRequestOperation--;
  return o;
}

void checkAuthzPolicyAuthzRuleToRequestOperation(
  api.AuthzPolicyAuthzRuleToRequestOperation o,
) {
  buildCounterAuthzPolicyAuthzRuleToRequestOperation++;
  if (buildCounterAuthzPolicyAuthzRuleToRequestOperation < 3) {
    checkAuthzPolicyAuthzRuleToRequestOperationHeaderSet(o.headerSet!);
    checkUnnamed16(o.hosts!);
    checkUnnamed17(o.methods!);
    checkUnnamed18(o.paths!);
  }
  buildCounterAuthzPolicyAuthzRuleToRequestOperation--;
}

core.List<api.AuthzPolicyAuthzRuleHeaderMatch> buildUnnamed19() => [
  buildAuthzPolicyAuthzRuleHeaderMatch(),
  buildAuthzPolicyAuthzRuleHeaderMatch(),
];

void checkUnnamed19(core.List<api.AuthzPolicyAuthzRuleHeaderMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicyAuthzRuleHeaderMatch(o[0]);
  checkAuthzPolicyAuthzRuleHeaderMatch(o[1]);
}

core.int buildCounterAuthzPolicyAuthzRuleToRequestOperationHeaderSet = 0;
api.AuthzPolicyAuthzRuleToRequestOperationHeaderSet
buildAuthzPolicyAuthzRuleToRequestOperationHeaderSet() {
  final o = api.AuthzPolicyAuthzRuleToRequestOperationHeaderSet();
  buildCounterAuthzPolicyAuthzRuleToRequestOperationHeaderSet++;
  if (buildCounterAuthzPolicyAuthzRuleToRequestOperationHeaderSet < 3) {
    o.headers = buildUnnamed19();
  }
  buildCounterAuthzPolicyAuthzRuleToRequestOperationHeaderSet--;
  return o;
}

void checkAuthzPolicyAuthzRuleToRequestOperationHeaderSet(
  api.AuthzPolicyAuthzRuleToRequestOperationHeaderSet o,
) {
  buildCounterAuthzPolicyAuthzRuleToRequestOperationHeaderSet++;
  if (buildCounterAuthzPolicyAuthzRuleToRequestOperationHeaderSet < 3) {
    checkUnnamed19(o.headers!);
  }
  buildCounterAuthzPolicyAuthzRuleToRequestOperationHeaderSet--;
}

core.int buildCounterAuthzPolicyCustomProvider = 0;
api.AuthzPolicyCustomProvider buildAuthzPolicyCustomProvider() {
  final o = api.AuthzPolicyCustomProvider();
  buildCounterAuthzPolicyCustomProvider++;
  if (buildCounterAuthzPolicyCustomProvider < 3) {
    o.authzExtension = buildAuthzPolicyCustomProviderAuthzExtension();
    o.cloudIap = buildAuthzPolicyCustomProviderCloudIap();
  }
  buildCounterAuthzPolicyCustomProvider--;
  return o;
}

void checkAuthzPolicyCustomProvider(api.AuthzPolicyCustomProvider o) {
  buildCounterAuthzPolicyCustomProvider++;
  if (buildCounterAuthzPolicyCustomProvider < 3) {
    checkAuthzPolicyCustomProviderAuthzExtension(o.authzExtension!);
    checkAuthzPolicyCustomProviderCloudIap(o.cloudIap!);
  }
  buildCounterAuthzPolicyCustomProvider--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthzPolicyCustomProviderAuthzExtension = 0;
api.AuthzPolicyCustomProviderAuthzExtension
buildAuthzPolicyCustomProviderAuthzExtension() {
  final o = api.AuthzPolicyCustomProviderAuthzExtension();
  buildCounterAuthzPolicyCustomProviderAuthzExtension++;
  if (buildCounterAuthzPolicyCustomProviderAuthzExtension < 3) {
    o.resources = buildUnnamed20();
  }
  buildCounterAuthzPolicyCustomProviderAuthzExtension--;
  return o;
}

void checkAuthzPolicyCustomProviderAuthzExtension(
  api.AuthzPolicyCustomProviderAuthzExtension o,
) {
  buildCounterAuthzPolicyCustomProviderAuthzExtension++;
  if (buildCounterAuthzPolicyCustomProviderAuthzExtension < 3) {
    checkUnnamed20(o.resources!);
  }
  buildCounterAuthzPolicyCustomProviderAuthzExtension--;
}

core.int buildCounterAuthzPolicyCustomProviderCloudIap = 0;
api.AuthzPolicyCustomProviderCloudIap buildAuthzPolicyCustomProviderCloudIap() {
  final o = api.AuthzPolicyCustomProviderCloudIap();
  buildCounterAuthzPolicyCustomProviderCloudIap++;
  if (buildCounterAuthzPolicyCustomProviderCloudIap < 3) {}
  buildCounterAuthzPolicyCustomProviderCloudIap--;
  return o;
}

void checkAuthzPolicyCustomProviderCloudIap(
  api.AuthzPolicyCustomProviderCloudIap o,
) {
  buildCounterAuthzPolicyCustomProviderCloudIap++;
  if (buildCounterAuthzPolicyCustomProviderCloudIap < 3) {}
  buildCounterAuthzPolicyCustomProviderCloudIap--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthzPolicyTarget = 0;
api.AuthzPolicyTarget buildAuthzPolicyTarget() {
  final o = api.AuthzPolicyTarget();
  buildCounterAuthzPolicyTarget++;
  if (buildCounterAuthzPolicyTarget < 3) {
    o.loadBalancingScheme = 'foo';
    o.resources = buildUnnamed21();
  }
  buildCounterAuthzPolicyTarget--;
  return o;
}

void checkAuthzPolicyTarget(api.AuthzPolicyTarget o) {
  buildCounterAuthzPolicyTarget++;
  if (buildCounterAuthzPolicyTarget < 3) {
    unittest.expect(o.loadBalancingScheme!, unittest.equals('foo'));
    checkUnnamed21(o.resources!);
  }
  buildCounterAuthzPolicyTarget--;
}

core.Map<core.String, core.String> buildUnnamed22() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed22(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterBackendAuthenticationConfig = 0;
api.BackendAuthenticationConfig buildBackendAuthenticationConfig() {
  final o = api.BackendAuthenticationConfig();
  buildCounterBackendAuthenticationConfig++;
  if (buildCounterBackendAuthenticationConfig < 3) {
    o.clientCertificate = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed22();
    o.name = 'foo';
    o.trustConfig = 'foo';
    o.updateTime = 'foo';
    o.wellKnownRoots = 'foo';
  }
  buildCounterBackendAuthenticationConfig--;
  return o;
}

void checkBackendAuthenticationConfig(api.BackendAuthenticationConfig o) {
  buildCounterBackendAuthenticationConfig++;
  if (buildCounterBackendAuthenticationConfig < 3) {
    unittest.expect(o.clientCertificate!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed22(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.trustConfig!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.wellKnownRoots!, unittest.equals('foo'));
  }
  buildCounterBackendAuthenticationConfig--;
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

core.int buildCounterCertificateProviderInstance = 0;
api.CertificateProviderInstance buildCertificateProviderInstance() {
  final o = api.CertificateProviderInstance();
  buildCounterCertificateProviderInstance++;
  if (buildCounterCertificateProviderInstance < 3) {
    o.pluginInstance = 'foo';
  }
  buildCounterCertificateProviderInstance--;
  return o;
}

void checkCertificateProviderInstance(api.CertificateProviderInstance o) {
  buildCounterCertificateProviderInstance++;
  if (buildCounterCertificateProviderInstance < 3) {
    unittest.expect(o.pluginInstance!, unittest.equals('foo'));
  }
  buildCounterCertificateProviderInstance--;
}

core.Map<core.String, core.String> buildUnnamed23() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed23(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.ValidationCA> buildUnnamed24() => [
  buildValidationCA(),
  buildValidationCA(),
];

void checkUnnamed24(core.List<api.ValidationCA> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValidationCA(o[0]);
  checkValidationCA(o[1]);
}

core.int buildCounterClientTlsPolicy = 0;
api.ClientTlsPolicy buildClientTlsPolicy() {
  final o = api.ClientTlsPolicy();
  buildCounterClientTlsPolicy++;
  if (buildCounterClientTlsPolicy < 3) {
    o.clientCertificate =
        buildGoogleCloudNetworksecurityV1CertificateProvider();
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed23();
    o.name = 'foo';
    o.serverValidationCa = buildUnnamed24();
    o.sni = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterClientTlsPolicy--;
  return o;
}

void checkClientTlsPolicy(api.ClientTlsPolicy o) {
  buildCounterClientTlsPolicy++;
  if (buildCounterClientTlsPolicy < 3) {
    checkGoogleCloudNetworksecurityV1CertificateProvider(o.clientCertificate!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed23(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed24(o.serverValidationCa!);
    unittest.expect(o.sni!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterClientTlsPolicy--;
}

core.int buildCounterCloneAddressGroupItemsRequest = 0;
api.CloneAddressGroupItemsRequest buildCloneAddressGroupItemsRequest() {
  final o = api.CloneAddressGroupItemsRequest();
  buildCounterCloneAddressGroupItemsRequest++;
  if (buildCounterCloneAddressGroupItemsRequest < 3) {
    o.requestId = 'foo';
    o.sourceAddressGroup = 'foo';
  }
  buildCounterCloneAddressGroupItemsRequest--;
  return o;
}

void checkCloneAddressGroupItemsRequest(api.CloneAddressGroupItemsRequest o) {
  buildCounterCloneAddressGroupItemsRequest++;
  if (buildCounterCloneAddressGroupItemsRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.sourceAddressGroup!, unittest.equals('foo'));
  }
  buildCounterCloneAddressGroupItemsRequest--;
}

core.int buildCounterCustomInterceptProfile = 0;
api.CustomInterceptProfile buildCustomInterceptProfile() {
  final o = api.CustomInterceptProfile();
  buildCounterCustomInterceptProfile++;
  if (buildCounterCustomInterceptProfile < 3) {
    o.interceptEndpointGroup = 'foo';
  }
  buildCounterCustomInterceptProfile--;
  return o;
}

void checkCustomInterceptProfile(api.CustomInterceptProfile o) {
  buildCounterCustomInterceptProfile++;
  if (buildCounterCustomInterceptProfile < 3) {
    unittest.expect(o.interceptEndpointGroup!, unittest.equals('foo'));
  }
  buildCounterCustomInterceptProfile--;
}

core.int buildCounterCustomMirroringProfile = 0;
api.CustomMirroringProfile buildCustomMirroringProfile() {
  final o = api.CustomMirroringProfile();
  buildCounterCustomMirroringProfile++;
  if (buildCounterCustomMirroringProfile < 3) {
    o.mirroringEndpointGroup = 'foo';
  }
  buildCounterCustomMirroringProfile--;
  return o;
}

void checkCustomMirroringProfile(api.CustomMirroringProfile o) {
  buildCounterCustomMirroringProfile++;
  if (buildCounterCustomMirroringProfile < 3) {
    unittest.expect(o.mirroringEndpointGroup!, unittest.equals('foo'));
  }
  buildCounterCustomMirroringProfile--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed27() => [42, 42];

void checkUnnamed27(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterDestination = 0;
api.Destination buildDestination() {
  final o = api.Destination();
  buildCounterDestination++;
  if (buildCounterDestination < 3) {
    o.hosts = buildUnnamed25();
    o.httpHeaderMatch = buildHttpHeaderMatch();
    o.methods = buildUnnamed26();
    o.ports = buildUnnamed27();
  }
  buildCounterDestination--;
  return o;
}

void checkDestination(api.Destination o) {
  buildCounterDestination++;
  if (buildCounterDestination < 3) {
    checkUnnamed25(o.hosts!);
    checkHttpHeaderMatch(o.httpHeaderMatch!);
    checkUnnamed26(o.methods!);
    checkUnnamed27(o.ports!);
  }
  buildCounterDestination--;
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

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.FirewallEndpointAssociationReference> buildUnnamed29() => [
  buildFirewallEndpointAssociationReference(),
  buildFirewallEndpointAssociationReference(),
];

void checkUnnamed29(core.List<api.FirewallEndpointAssociationReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirewallEndpointAssociationReference(o[0]);
  checkFirewallEndpointAssociationReference(o[1]);
}

core.Map<core.String, core.String> buildUnnamed30() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed30(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterFirewallEndpoint = 0;
api.FirewallEndpoint buildFirewallEndpoint() {
  final o = api.FirewallEndpoint();
  buildCounterFirewallEndpoint++;
  if (buildCounterFirewallEndpoint < 3) {
    o.associatedNetworks = buildUnnamed28();
    o.associations = buildUnnamed29();
    o.billingProjectId = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed30();
    o.name = 'foo';
    o.reconciling = true;
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterFirewallEndpoint--;
  return o;
}

void checkFirewallEndpoint(api.FirewallEndpoint o) {
  buildCounterFirewallEndpoint++;
  if (buildCounterFirewallEndpoint < 3) {
    checkUnnamed28(o.associatedNetworks!);
    checkUnnamed29(o.associations!);
    unittest.expect(o.billingProjectId!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed30(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterFirewallEndpoint--;
}

core.Map<core.String, core.String> buildUnnamed31() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed31(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterFirewallEndpointAssociation = 0;
api.FirewallEndpointAssociation buildFirewallEndpointAssociation() {
  final o = api.FirewallEndpointAssociation();
  buildCounterFirewallEndpointAssociation++;
  if (buildCounterFirewallEndpointAssociation < 3) {
    o.createTime = 'foo';
    o.disabled = true;
    o.firewallEndpoint = 'foo';
    o.labels = buildUnnamed31();
    o.name = 'foo';
    o.network = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.tlsInspectionPolicy = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterFirewallEndpointAssociation--;
  return o;
}

void checkFirewallEndpointAssociation(api.FirewallEndpointAssociation o) {
  buildCounterFirewallEndpointAssociation++;
  if (buildCounterFirewallEndpointAssociation < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.firewallEndpoint!, unittest.equals('foo'));
    checkUnnamed31(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.tlsInspectionPolicy!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterFirewallEndpointAssociation--;
}

core.int buildCounterFirewallEndpointAssociationReference = 0;
api.FirewallEndpointAssociationReference
buildFirewallEndpointAssociationReference() {
  final o = api.FirewallEndpointAssociationReference();
  buildCounterFirewallEndpointAssociationReference++;
  if (buildCounterFirewallEndpointAssociationReference < 3) {
    o.name = 'foo';
    o.network = 'foo';
  }
  buildCounterFirewallEndpointAssociationReference--;
  return o;
}

void checkFirewallEndpointAssociationReference(
  api.FirewallEndpointAssociationReference o,
) {
  buildCounterFirewallEndpointAssociationReference++;
  if (buildCounterFirewallEndpointAssociationReference < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
  }
  buildCounterFirewallEndpointAssociationReference--;
}

core.int buildCounterGatewaySecurityPolicy = 0;
api.GatewaySecurityPolicy buildGatewaySecurityPolicy() {
  final o = api.GatewaySecurityPolicy();
  buildCounterGatewaySecurityPolicy++;
  if (buildCounterGatewaySecurityPolicy < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.tlsInspectionPolicy = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGatewaySecurityPolicy--;
  return o;
}

void checkGatewaySecurityPolicy(api.GatewaySecurityPolicy o) {
  buildCounterGatewaySecurityPolicy++;
  if (buildCounterGatewaySecurityPolicy < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.tlsInspectionPolicy!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGatewaySecurityPolicy--;
}

core.int buildCounterGatewaySecurityPolicyRule = 0;
api.GatewaySecurityPolicyRule buildGatewaySecurityPolicyRule() {
  final o = api.GatewaySecurityPolicyRule();
  buildCounterGatewaySecurityPolicyRule++;
  if (buildCounterGatewaySecurityPolicyRule < 3) {
    o.applicationMatcher = 'foo';
    o.basicProfile = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.enabled = true;
    o.name = 'foo';
    o.priority = 42;
    o.sessionMatcher = 'foo';
    o.tlsInspectionEnabled = true;
    o.updateTime = 'foo';
  }
  buildCounterGatewaySecurityPolicyRule--;
  return o;
}

void checkGatewaySecurityPolicyRule(api.GatewaySecurityPolicyRule o) {
  buildCounterGatewaySecurityPolicyRule++;
  if (buildCounterGatewaySecurityPolicyRule < 3) {
    unittest.expect(o.applicationMatcher!, unittest.equals('foo'));
    unittest.expect(o.basicProfile!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.priority!, unittest.equals(42));
    unittest.expect(o.sessionMatcher!, unittest.equals('foo'));
    unittest.expect(o.tlsInspectionEnabled!, unittest.isTrue);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGatewaySecurityPolicyRule--;
}

core.int buildCounterGoogleCloudNetworksecurityV1CertificateProvider = 0;
api.GoogleCloudNetworksecurityV1CertificateProvider
buildGoogleCloudNetworksecurityV1CertificateProvider() {
  final o = api.GoogleCloudNetworksecurityV1CertificateProvider();
  buildCounterGoogleCloudNetworksecurityV1CertificateProvider++;
  if (buildCounterGoogleCloudNetworksecurityV1CertificateProvider < 3) {
    o.certificateProviderInstance = buildCertificateProviderInstance();
    o.grpcEndpoint = buildGoogleCloudNetworksecurityV1GrpcEndpoint();
  }
  buildCounterGoogleCloudNetworksecurityV1CertificateProvider--;
  return o;
}

void checkGoogleCloudNetworksecurityV1CertificateProvider(
  api.GoogleCloudNetworksecurityV1CertificateProvider o,
) {
  buildCounterGoogleCloudNetworksecurityV1CertificateProvider++;
  if (buildCounterGoogleCloudNetworksecurityV1CertificateProvider < 3) {
    checkCertificateProviderInstance(o.certificateProviderInstance!);
    checkGoogleCloudNetworksecurityV1GrpcEndpoint(o.grpcEndpoint!);
  }
  buildCounterGoogleCloudNetworksecurityV1CertificateProvider--;
}

core.int buildCounterGoogleCloudNetworksecurityV1GrpcEndpoint = 0;
api.GoogleCloudNetworksecurityV1GrpcEndpoint
buildGoogleCloudNetworksecurityV1GrpcEndpoint() {
  final o = api.GoogleCloudNetworksecurityV1GrpcEndpoint();
  buildCounterGoogleCloudNetworksecurityV1GrpcEndpoint++;
  if (buildCounterGoogleCloudNetworksecurityV1GrpcEndpoint < 3) {
    o.targetUri = 'foo';
  }
  buildCounterGoogleCloudNetworksecurityV1GrpcEndpoint--;
  return o;
}

void checkGoogleCloudNetworksecurityV1GrpcEndpoint(
  api.GoogleCloudNetworksecurityV1GrpcEndpoint o,
) {
  buildCounterGoogleCloudNetworksecurityV1GrpcEndpoint++;
  if (buildCounterGoogleCloudNetworksecurityV1GrpcEndpoint < 3) {
    unittest.expect(o.targetUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudNetworksecurityV1GrpcEndpoint--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed32() => [
  buildGoogleIamV1AuditLogConfig(),
  buildGoogleIamV1AuditLogConfig(),
];

void checkUnnamed32(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed32();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed32(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed33();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed33(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed34();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkExpr(o.condition!);
    checkUnnamed34(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed35() => [
  buildGoogleIamV1AuditConfig(),
  buildGoogleIamV1AuditConfig(),
];

void checkUnnamed35(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed36() => [
  buildGoogleIamV1Binding(),
  buildGoogleIamV1Binding(),
];

void checkUnnamed36(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed35();
    o.bindings = buildUnnamed36();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed35(o.auditConfigs!);
    checkUnnamed36(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleIamV1SetIamPolicyRequest = 0;
api.GoogleIamV1SetIamPolicyRequest buildGoogleIamV1SetIamPolicyRequest() {
  final o = api.GoogleIamV1SetIamPolicyRequest();
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.updateMask = 'foo';
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
  return o;
}

void checkGoogleIamV1SetIamPolicyRequest(api.GoogleIamV1SetIamPolicyRequest o) {
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
api.GoogleIamV1TestIamPermissionsRequest
buildGoogleIamV1TestIamPermissionsRequest() {
  final o = api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed37();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
  api.GoogleIamV1TestIamPermissionsRequest o,
) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed37(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
api.GoogleIamV1TestIamPermissionsResponse
buildGoogleIamV1TestIamPermissionsResponse() {
  final o = api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed38();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
  api.GoogleIamV1TestIamPermissionsResponse o,
) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed38(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
}

core.int buildCounterHttpHeaderMatch = 0;
api.HttpHeaderMatch buildHttpHeaderMatch() {
  final o = api.HttpHeaderMatch();
  buildCounterHttpHeaderMatch++;
  if (buildCounterHttpHeaderMatch < 3) {
    o.headerName = 'foo';
    o.regexMatch = 'foo';
  }
  buildCounterHttpHeaderMatch--;
  return o;
}

void checkHttpHeaderMatch(api.HttpHeaderMatch o) {
  buildCounterHttpHeaderMatch++;
  if (buildCounterHttpHeaderMatch < 3) {
    unittest.expect(o.headerName!, unittest.equals('foo'));
    unittest.expect(o.regexMatch!, unittest.equals('foo'));
  }
  buildCounterHttpHeaderMatch--;
}

core.Map<core.String, core.String> buildUnnamed39() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed39(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterInterceptDeployment = 0;
api.InterceptDeployment buildInterceptDeployment() {
  final o = api.InterceptDeployment();
  buildCounterInterceptDeployment++;
  if (buildCounterInterceptDeployment < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.forwardingRule = 'foo';
    o.interceptDeploymentGroup = 'foo';
    o.labels = buildUnnamed39();
    o.name = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInterceptDeployment--;
  return o;
}

void checkInterceptDeployment(api.InterceptDeployment o) {
  buildCounterInterceptDeployment++;
  if (buildCounterInterceptDeployment < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.forwardingRule!, unittest.equals('foo'));
    unittest.expect(o.interceptDeploymentGroup!, unittest.equals('foo'));
    checkUnnamed39(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterInterceptDeployment--;
}

core.List<api.InterceptDeploymentGroupConnectedEndpointGroup>
buildUnnamed40() => [
  buildInterceptDeploymentGroupConnectedEndpointGroup(),
  buildInterceptDeploymentGroupConnectedEndpointGroup(),
];

void checkUnnamed40(
  core.List<api.InterceptDeploymentGroupConnectedEndpointGroup> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptDeploymentGroupConnectedEndpointGroup(o[0]);
  checkInterceptDeploymentGroupConnectedEndpointGroup(o[1]);
}

core.Map<core.String, core.String> buildUnnamed41() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed41(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.InterceptLocation> buildUnnamed42() => [
  buildInterceptLocation(),
  buildInterceptLocation(),
];

void checkUnnamed42(core.List<api.InterceptLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptLocation(o[0]);
  checkInterceptLocation(o[1]);
}

core.List<api.InterceptDeploymentGroupDeployment> buildUnnamed43() => [
  buildInterceptDeploymentGroupDeployment(),
  buildInterceptDeploymentGroupDeployment(),
];

void checkUnnamed43(core.List<api.InterceptDeploymentGroupDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptDeploymentGroupDeployment(o[0]);
  checkInterceptDeploymentGroupDeployment(o[1]);
}

core.int buildCounterInterceptDeploymentGroup = 0;
api.InterceptDeploymentGroup buildInterceptDeploymentGroup() {
  final o = api.InterceptDeploymentGroup();
  buildCounterInterceptDeploymentGroup++;
  if (buildCounterInterceptDeploymentGroup < 3) {
    o.connectedEndpointGroups = buildUnnamed40();
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed41();
    o.locations = buildUnnamed42();
    o.name = 'foo';
    o.nestedDeployments = buildUnnamed43();
    o.network = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInterceptDeploymentGroup--;
  return o;
}

void checkInterceptDeploymentGroup(api.InterceptDeploymentGroup o) {
  buildCounterInterceptDeploymentGroup++;
  if (buildCounterInterceptDeploymentGroup < 3) {
    checkUnnamed40(o.connectedEndpointGroups!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed41(o.labels!);
    checkUnnamed42(o.locations!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed43(o.nestedDeployments!);
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterInterceptDeploymentGroup--;
}

core.int buildCounterInterceptDeploymentGroupConnectedEndpointGroup = 0;
api.InterceptDeploymentGroupConnectedEndpointGroup
buildInterceptDeploymentGroupConnectedEndpointGroup() {
  final o = api.InterceptDeploymentGroupConnectedEndpointGroup();
  buildCounterInterceptDeploymentGroupConnectedEndpointGroup++;
  if (buildCounterInterceptDeploymentGroupConnectedEndpointGroup < 3) {
    o.name = 'foo';
  }
  buildCounterInterceptDeploymentGroupConnectedEndpointGroup--;
  return o;
}

void checkInterceptDeploymentGroupConnectedEndpointGroup(
  api.InterceptDeploymentGroupConnectedEndpointGroup o,
) {
  buildCounterInterceptDeploymentGroupConnectedEndpointGroup++;
  if (buildCounterInterceptDeploymentGroupConnectedEndpointGroup < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterInterceptDeploymentGroupConnectedEndpointGroup--;
}

core.int buildCounterInterceptDeploymentGroupDeployment = 0;
api.InterceptDeploymentGroupDeployment
buildInterceptDeploymentGroupDeployment() {
  final o = api.InterceptDeploymentGroupDeployment();
  buildCounterInterceptDeploymentGroupDeployment++;
  if (buildCounterInterceptDeploymentGroupDeployment < 3) {
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterInterceptDeploymentGroupDeployment--;
  return o;
}

void checkInterceptDeploymentGroupDeployment(
  api.InterceptDeploymentGroupDeployment o,
) {
  buildCounterInterceptDeploymentGroupDeployment++;
  if (buildCounterInterceptDeploymentGroupDeployment < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterInterceptDeploymentGroupDeployment--;
}

core.List<api.InterceptEndpointGroupAssociationDetails> buildUnnamed44() => [
  buildInterceptEndpointGroupAssociationDetails(),
  buildInterceptEndpointGroupAssociationDetails(),
];

void checkUnnamed44(core.List<api.InterceptEndpointGroupAssociationDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptEndpointGroupAssociationDetails(o[0]);
  checkInterceptEndpointGroupAssociationDetails(o[1]);
}

core.Map<core.String, core.String> buildUnnamed45() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed45(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterInterceptEndpointGroup = 0;
api.InterceptEndpointGroup buildInterceptEndpointGroup() {
  final o = api.InterceptEndpointGroup();
  buildCounterInterceptEndpointGroup++;
  if (buildCounterInterceptEndpointGroup < 3) {
    o.associations = buildUnnamed44();
    o.connectedDeploymentGroup =
        buildInterceptEndpointGroupConnectedDeploymentGroup();
    o.createTime = 'foo';
    o.description = 'foo';
    o.interceptDeploymentGroup = 'foo';
    o.labels = buildUnnamed45();
    o.name = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInterceptEndpointGroup--;
  return o;
}

void checkInterceptEndpointGroup(api.InterceptEndpointGroup o) {
  buildCounterInterceptEndpointGroup++;
  if (buildCounterInterceptEndpointGroup < 3) {
    checkUnnamed44(o.associations!);
    checkInterceptEndpointGroupConnectedDeploymentGroup(
      o.connectedDeploymentGroup!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.interceptDeploymentGroup!, unittest.equals('foo'));
    checkUnnamed45(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterInterceptEndpointGroup--;
}

core.Map<core.String, core.String> buildUnnamed46() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.InterceptLocation> buildUnnamed47() => [
  buildInterceptLocation(),
  buildInterceptLocation(),
];

void checkUnnamed47(core.List<api.InterceptLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptLocation(o[0]);
  checkInterceptLocation(o[1]);
}

core.List<api.InterceptEndpointGroupAssociationLocationDetails>
buildUnnamed48() => [
  buildInterceptEndpointGroupAssociationLocationDetails(),
  buildInterceptEndpointGroupAssociationLocationDetails(),
];

void checkUnnamed48(
  core.List<api.InterceptEndpointGroupAssociationLocationDetails> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptEndpointGroupAssociationLocationDetails(o[0]);
  checkInterceptEndpointGroupAssociationLocationDetails(o[1]);
}

core.int buildCounterInterceptEndpointGroupAssociation = 0;
api.InterceptEndpointGroupAssociation buildInterceptEndpointGroupAssociation() {
  final o = api.InterceptEndpointGroupAssociation();
  buildCounterInterceptEndpointGroupAssociation++;
  if (buildCounterInterceptEndpointGroupAssociation < 3) {
    o.createTime = 'foo';
    o.interceptEndpointGroup = 'foo';
    o.labels = buildUnnamed46();
    o.locations = buildUnnamed47();
    o.locationsDetails = buildUnnamed48();
    o.name = 'foo';
    o.network = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInterceptEndpointGroupAssociation--;
  return o;
}

void checkInterceptEndpointGroupAssociation(
  api.InterceptEndpointGroupAssociation o,
) {
  buildCounterInterceptEndpointGroupAssociation++;
  if (buildCounterInterceptEndpointGroupAssociation < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.interceptEndpointGroup!, unittest.equals('foo'));
    checkUnnamed46(o.labels!);
    checkUnnamed47(o.locations!);
    checkUnnamed48(o.locationsDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterInterceptEndpointGroupAssociation--;
}

core.int buildCounterInterceptEndpointGroupAssociationDetails = 0;
api.InterceptEndpointGroupAssociationDetails
buildInterceptEndpointGroupAssociationDetails() {
  final o = api.InterceptEndpointGroupAssociationDetails();
  buildCounterInterceptEndpointGroupAssociationDetails++;
  if (buildCounterInterceptEndpointGroupAssociationDetails < 3) {
    o.name = 'foo';
    o.network = 'foo';
    o.state = 'foo';
  }
  buildCounterInterceptEndpointGroupAssociationDetails--;
  return o;
}

void checkInterceptEndpointGroupAssociationDetails(
  api.InterceptEndpointGroupAssociationDetails o,
) {
  buildCounterInterceptEndpointGroupAssociationDetails++;
  if (buildCounterInterceptEndpointGroupAssociationDetails < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterInterceptEndpointGroupAssociationDetails--;
}

core.int buildCounterInterceptEndpointGroupAssociationLocationDetails = 0;
api.InterceptEndpointGroupAssociationLocationDetails
buildInterceptEndpointGroupAssociationLocationDetails() {
  final o = api.InterceptEndpointGroupAssociationLocationDetails();
  buildCounterInterceptEndpointGroupAssociationLocationDetails++;
  if (buildCounterInterceptEndpointGroupAssociationLocationDetails < 3) {
    o.location = 'foo';
    o.state = 'foo';
  }
  buildCounterInterceptEndpointGroupAssociationLocationDetails--;
  return o;
}

void checkInterceptEndpointGroupAssociationLocationDetails(
  api.InterceptEndpointGroupAssociationLocationDetails o,
) {
  buildCounterInterceptEndpointGroupAssociationLocationDetails++;
  if (buildCounterInterceptEndpointGroupAssociationLocationDetails < 3) {
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterInterceptEndpointGroupAssociationLocationDetails--;
}

core.List<api.InterceptLocation> buildUnnamed49() => [
  buildInterceptLocation(),
  buildInterceptLocation(),
];

void checkUnnamed49(core.List<api.InterceptLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptLocation(o[0]);
  checkInterceptLocation(o[1]);
}

core.int buildCounterInterceptEndpointGroupConnectedDeploymentGroup = 0;
api.InterceptEndpointGroupConnectedDeploymentGroup
buildInterceptEndpointGroupConnectedDeploymentGroup() {
  final o = api.InterceptEndpointGroupConnectedDeploymentGroup();
  buildCounterInterceptEndpointGroupConnectedDeploymentGroup++;
  if (buildCounterInterceptEndpointGroupConnectedDeploymentGroup < 3) {
    o.locations = buildUnnamed49();
    o.name = 'foo';
  }
  buildCounterInterceptEndpointGroupConnectedDeploymentGroup--;
  return o;
}

void checkInterceptEndpointGroupConnectedDeploymentGroup(
  api.InterceptEndpointGroupConnectedDeploymentGroup o,
) {
  buildCounterInterceptEndpointGroupConnectedDeploymentGroup++;
  if (buildCounterInterceptEndpointGroupConnectedDeploymentGroup < 3) {
    checkUnnamed49(o.locations!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterInterceptEndpointGroupConnectedDeploymentGroup--;
}

core.int buildCounterInterceptLocation = 0;
api.InterceptLocation buildInterceptLocation() {
  final o = api.InterceptLocation();
  buildCounterInterceptLocation++;
  if (buildCounterInterceptLocation < 3) {
    o.location = 'foo';
    o.state = 'foo';
  }
  buildCounterInterceptLocation--;
  return o;
}

void checkInterceptLocation(api.InterceptLocation o) {
  buildCounterInterceptLocation++;
  if (buildCounterInterceptLocation < 3) {
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterInterceptLocation--;
}

core.List<api.ListAddressGroupReferencesResponseAddressGroupReference>
buildUnnamed50() => [
  buildListAddressGroupReferencesResponseAddressGroupReference(),
  buildListAddressGroupReferencesResponseAddressGroupReference(),
];

void checkUnnamed50(
  core.List<api.ListAddressGroupReferencesResponseAddressGroupReference> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkListAddressGroupReferencesResponseAddressGroupReference(o[0]);
  checkListAddressGroupReferencesResponseAddressGroupReference(o[1]);
}

core.int buildCounterListAddressGroupReferencesResponse = 0;
api.ListAddressGroupReferencesResponse
buildListAddressGroupReferencesResponse() {
  final o = api.ListAddressGroupReferencesResponse();
  buildCounterListAddressGroupReferencesResponse++;
  if (buildCounterListAddressGroupReferencesResponse < 3) {
    o.addressGroupReferences = buildUnnamed50();
    o.nextPageToken = 'foo';
  }
  buildCounterListAddressGroupReferencesResponse--;
  return o;
}

void checkListAddressGroupReferencesResponse(
  api.ListAddressGroupReferencesResponse o,
) {
  buildCounterListAddressGroupReferencesResponse++;
  if (buildCounterListAddressGroupReferencesResponse < 3) {
    checkUnnamed50(o.addressGroupReferences!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAddressGroupReferencesResponse--;
}

core.int buildCounterListAddressGroupReferencesResponseAddressGroupReference =
    0;
api.ListAddressGroupReferencesResponseAddressGroupReference
buildListAddressGroupReferencesResponseAddressGroupReference() {
  final o = api.ListAddressGroupReferencesResponseAddressGroupReference();
  buildCounterListAddressGroupReferencesResponseAddressGroupReference++;
  if (buildCounterListAddressGroupReferencesResponseAddressGroupReference < 3) {
    o.firewallPolicy = 'foo';
    o.rulePriority = 42;
    o.securityPolicy = 'foo';
  }
  buildCounterListAddressGroupReferencesResponseAddressGroupReference--;
  return o;
}

void checkListAddressGroupReferencesResponseAddressGroupReference(
  api.ListAddressGroupReferencesResponseAddressGroupReference o,
) {
  buildCounterListAddressGroupReferencesResponseAddressGroupReference++;
  if (buildCounterListAddressGroupReferencesResponseAddressGroupReference < 3) {
    unittest.expect(o.firewallPolicy!, unittest.equals('foo'));
    unittest.expect(o.rulePriority!, unittest.equals(42));
    unittest.expect(o.securityPolicy!, unittest.equals('foo'));
  }
  buildCounterListAddressGroupReferencesResponseAddressGroupReference--;
}

core.List<api.AddressGroup> buildUnnamed51() => [
  buildAddressGroup(),
  buildAddressGroup(),
];

void checkUnnamed51(core.List<api.AddressGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddressGroup(o[0]);
  checkAddressGroup(o[1]);
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAddressGroupsResponse = 0;
api.ListAddressGroupsResponse buildListAddressGroupsResponse() {
  final o = api.ListAddressGroupsResponse();
  buildCounterListAddressGroupsResponse++;
  if (buildCounterListAddressGroupsResponse < 3) {
    o.addressGroups = buildUnnamed51();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed52();
  }
  buildCounterListAddressGroupsResponse--;
  return o;
}

void checkListAddressGroupsResponse(api.ListAddressGroupsResponse o) {
  buildCounterListAddressGroupsResponse++;
  if (buildCounterListAddressGroupsResponse < 3) {
    checkUnnamed51(o.addressGroups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed52(o.unreachable!);
  }
  buildCounterListAddressGroupsResponse--;
}

core.List<api.AuthorizationPolicy> buildUnnamed53() => [
  buildAuthorizationPolicy(),
  buildAuthorizationPolicy(),
];

void checkUnnamed53(core.List<api.AuthorizationPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizationPolicy(o[0]);
  checkAuthorizationPolicy(o[1]);
}

core.int buildCounterListAuthorizationPoliciesResponse = 0;
api.ListAuthorizationPoliciesResponse buildListAuthorizationPoliciesResponse() {
  final o = api.ListAuthorizationPoliciesResponse();
  buildCounterListAuthorizationPoliciesResponse++;
  if (buildCounterListAuthorizationPoliciesResponse < 3) {
    o.authorizationPolicies = buildUnnamed53();
    o.nextPageToken = 'foo';
  }
  buildCounterListAuthorizationPoliciesResponse--;
  return o;
}

void checkListAuthorizationPoliciesResponse(
  api.ListAuthorizationPoliciesResponse o,
) {
  buildCounterListAuthorizationPoliciesResponse++;
  if (buildCounterListAuthorizationPoliciesResponse < 3) {
    checkUnnamed53(o.authorizationPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAuthorizationPoliciesResponse--;
}

core.List<api.AuthzPolicy> buildUnnamed54() => [
  buildAuthzPolicy(),
  buildAuthzPolicy(),
];

void checkUnnamed54(core.List<api.AuthzPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthzPolicy(o[0]);
  checkAuthzPolicy(o[1]);
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAuthzPoliciesResponse = 0;
api.ListAuthzPoliciesResponse buildListAuthzPoliciesResponse() {
  final o = api.ListAuthzPoliciesResponse();
  buildCounterListAuthzPoliciesResponse++;
  if (buildCounterListAuthzPoliciesResponse < 3) {
    o.authzPolicies = buildUnnamed54();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed55();
  }
  buildCounterListAuthzPoliciesResponse--;
  return o;
}

void checkListAuthzPoliciesResponse(api.ListAuthzPoliciesResponse o) {
  buildCounterListAuthzPoliciesResponse++;
  if (buildCounterListAuthzPoliciesResponse < 3) {
    checkUnnamed54(o.authzPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed55(o.unreachable!);
  }
  buildCounterListAuthzPoliciesResponse--;
}

core.List<api.BackendAuthenticationConfig> buildUnnamed56() => [
  buildBackendAuthenticationConfig(),
  buildBackendAuthenticationConfig(),
];

void checkUnnamed56(core.List<api.BackendAuthenticationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendAuthenticationConfig(o[0]);
  checkBackendAuthenticationConfig(o[1]);
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListBackendAuthenticationConfigsResponse = 0;
api.ListBackendAuthenticationConfigsResponse
buildListBackendAuthenticationConfigsResponse() {
  final o = api.ListBackendAuthenticationConfigsResponse();
  buildCounterListBackendAuthenticationConfigsResponse++;
  if (buildCounterListBackendAuthenticationConfigsResponse < 3) {
    o.backendAuthenticationConfigs = buildUnnamed56();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed57();
  }
  buildCounterListBackendAuthenticationConfigsResponse--;
  return o;
}

void checkListBackendAuthenticationConfigsResponse(
  api.ListBackendAuthenticationConfigsResponse o,
) {
  buildCounterListBackendAuthenticationConfigsResponse++;
  if (buildCounterListBackendAuthenticationConfigsResponse < 3) {
    checkUnnamed56(o.backendAuthenticationConfigs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed57(o.unreachable!);
  }
  buildCounterListBackendAuthenticationConfigsResponse--;
}

core.List<api.ClientTlsPolicy> buildUnnamed58() => [
  buildClientTlsPolicy(),
  buildClientTlsPolicy(),
];

void checkUnnamed58(core.List<api.ClientTlsPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientTlsPolicy(o[0]);
  checkClientTlsPolicy(o[1]);
}

core.int buildCounterListClientTlsPoliciesResponse = 0;
api.ListClientTlsPoliciesResponse buildListClientTlsPoliciesResponse() {
  final o = api.ListClientTlsPoliciesResponse();
  buildCounterListClientTlsPoliciesResponse++;
  if (buildCounterListClientTlsPoliciesResponse < 3) {
    o.clientTlsPolicies = buildUnnamed58();
    o.nextPageToken = 'foo';
  }
  buildCounterListClientTlsPoliciesResponse--;
  return o;
}

void checkListClientTlsPoliciesResponse(api.ListClientTlsPoliciesResponse o) {
  buildCounterListClientTlsPoliciesResponse++;
  if (buildCounterListClientTlsPoliciesResponse < 3) {
    checkUnnamed58(o.clientTlsPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListClientTlsPoliciesResponse--;
}

core.List<api.FirewallEndpointAssociation> buildUnnamed59() => [
  buildFirewallEndpointAssociation(),
  buildFirewallEndpointAssociation(),
];

void checkUnnamed59(core.List<api.FirewallEndpointAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirewallEndpointAssociation(o[0]);
  checkFirewallEndpointAssociation(o[1]);
}

core.List<core.String> buildUnnamed60() => ['foo', 'foo'];

void checkUnnamed60(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListFirewallEndpointAssociationsResponse = 0;
api.ListFirewallEndpointAssociationsResponse
buildListFirewallEndpointAssociationsResponse() {
  final o = api.ListFirewallEndpointAssociationsResponse();
  buildCounterListFirewallEndpointAssociationsResponse++;
  if (buildCounterListFirewallEndpointAssociationsResponse < 3) {
    o.firewallEndpointAssociations = buildUnnamed59();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed60();
  }
  buildCounterListFirewallEndpointAssociationsResponse--;
  return o;
}

void checkListFirewallEndpointAssociationsResponse(
  api.ListFirewallEndpointAssociationsResponse o,
) {
  buildCounterListFirewallEndpointAssociationsResponse++;
  if (buildCounterListFirewallEndpointAssociationsResponse < 3) {
    checkUnnamed59(o.firewallEndpointAssociations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed60(o.unreachable!);
  }
  buildCounterListFirewallEndpointAssociationsResponse--;
}

core.List<api.FirewallEndpoint> buildUnnamed61() => [
  buildFirewallEndpoint(),
  buildFirewallEndpoint(),
];

void checkUnnamed61(core.List<api.FirewallEndpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirewallEndpoint(o[0]);
  checkFirewallEndpoint(o[1]);
}

core.List<core.String> buildUnnamed62() => ['foo', 'foo'];

void checkUnnamed62(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListFirewallEndpointsResponse = 0;
api.ListFirewallEndpointsResponse buildListFirewallEndpointsResponse() {
  final o = api.ListFirewallEndpointsResponse();
  buildCounterListFirewallEndpointsResponse++;
  if (buildCounterListFirewallEndpointsResponse < 3) {
    o.firewallEndpoints = buildUnnamed61();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed62();
  }
  buildCounterListFirewallEndpointsResponse--;
  return o;
}

void checkListFirewallEndpointsResponse(api.ListFirewallEndpointsResponse o) {
  buildCounterListFirewallEndpointsResponse++;
  if (buildCounterListFirewallEndpointsResponse < 3) {
    checkUnnamed61(o.firewallEndpoints!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed62(o.unreachable!);
  }
  buildCounterListFirewallEndpointsResponse--;
}

core.List<api.GatewaySecurityPolicy> buildUnnamed63() => [
  buildGatewaySecurityPolicy(),
  buildGatewaySecurityPolicy(),
];

void checkUnnamed63(core.List<api.GatewaySecurityPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGatewaySecurityPolicy(o[0]);
  checkGatewaySecurityPolicy(o[1]);
}

core.List<core.String> buildUnnamed64() => ['foo', 'foo'];

void checkUnnamed64(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGatewaySecurityPoliciesResponse = 0;
api.ListGatewaySecurityPoliciesResponse
buildListGatewaySecurityPoliciesResponse() {
  final o = api.ListGatewaySecurityPoliciesResponse();
  buildCounterListGatewaySecurityPoliciesResponse++;
  if (buildCounterListGatewaySecurityPoliciesResponse < 3) {
    o.gatewaySecurityPolicies = buildUnnamed63();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed64();
  }
  buildCounterListGatewaySecurityPoliciesResponse--;
  return o;
}

void checkListGatewaySecurityPoliciesResponse(
  api.ListGatewaySecurityPoliciesResponse o,
) {
  buildCounterListGatewaySecurityPoliciesResponse++;
  if (buildCounterListGatewaySecurityPoliciesResponse < 3) {
    checkUnnamed63(o.gatewaySecurityPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed64(o.unreachable!);
  }
  buildCounterListGatewaySecurityPoliciesResponse--;
}

core.List<api.GatewaySecurityPolicyRule> buildUnnamed65() => [
  buildGatewaySecurityPolicyRule(),
  buildGatewaySecurityPolicyRule(),
];

void checkUnnamed65(core.List<api.GatewaySecurityPolicyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGatewaySecurityPolicyRule(o[0]);
  checkGatewaySecurityPolicyRule(o[1]);
}

core.List<core.String> buildUnnamed66() => ['foo', 'foo'];

void checkUnnamed66(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGatewaySecurityPolicyRulesResponse = 0;
api.ListGatewaySecurityPolicyRulesResponse
buildListGatewaySecurityPolicyRulesResponse() {
  final o = api.ListGatewaySecurityPolicyRulesResponse();
  buildCounterListGatewaySecurityPolicyRulesResponse++;
  if (buildCounterListGatewaySecurityPolicyRulesResponse < 3) {
    o.gatewaySecurityPolicyRules = buildUnnamed65();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed66();
  }
  buildCounterListGatewaySecurityPolicyRulesResponse--;
  return o;
}

void checkListGatewaySecurityPolicyRulesResponse(
  api.ListGatewaySecurityPolicyRulesResponse o,
) {
  buildCounterListGatewaySecurityPolicyRulesResponse++;
  if (buildCounterListGatewaySecurityPolicyRulesResponse < 3) {
    checkUnnamed65(o.gatewaySecurityPolicyRules!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed66(o.unreachable!);
  }
  buildCounterListGatewaySecurityPolicyRulesResponse--;
}

core.List<api.InterceptDeploymentGroup> buildUnnamed67() => [
  buildInterceptDeploymentGroup(),
  buildInterceptDeploymentGroup(),
];

void checkUnnamed67(core.List<api.InterceptDeploymentGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptDeploymentGroup(o[0]);
  checkInterceptDeploymentGroup(o[1]);
}

core.int buildCounterListInterceptDeploymentGroupsResponse = 0;
api.ListInterceptDeploymentGroupsResponse
buildListInterceptDeploymentGroupsResponse() {
  final o = api.ListInterceptDeploymentGroupsResponse();
  buildCounterListInterceptDeploymentGroupsResponse++;
  if (buildCounterListInterceptDeploymentGroupsResponse < 3) {
    o.interceptDeploymentGroups = buildUnnamed67();
    o.nextPageToken = 'foo';
  }
  buildCounterListInterceptDeploymentGroupsResponse--;
  return o;
}

void checkListInterceptDeploymentGroupsResponse(
  api.ListInterceptDeploymentGroupsResponse o,
) {
  buildCounterListInterceptDeploymentGroupsResponse++;
  if (buildCounterListInterceptDeploymentGroupsResponse < 3) {
    checkUnnamed67(o.interceptDeploymentGroups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListInterceptDeploymentGroupsResponse--;
}

core.List<api.InterceptDeployment> buildUnnamed68() => [
  buildInterceptDeployment(),
  buildInterceptDeployment(),
];

void checkUnnamed68(core.List<api.InterceptDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptDeployment(o[0]);
  checkInterceptDeployment(o[1]);
}

core.List<core.String> buildUnnamed69() => ['foo', 'foo'];

void checkUnnamed69(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListInterceptDeploymentsResponse = 0;
api.ListInterceptDeploymentsResponse buildListInterceptDeploymentsResponse() {
  final o = api.ListInterceptDeploymentsResponse();
  buildCounterListInterceptDeploymentsResponse++;
  if (buildCounterListInterceptDeploymentsResponse < 3) {
    o.interceptDeployments = buildUnnamed68();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed69();
  }
  buildCounterListInterceptDeploymentsResponse--;
  return o;
}

void checkListInterceptDeploymentsResponse(
  api.ListInterceptDeploymentsResponse o,
) {
  buildCounterListInterceptDeploymentsResponse++;
  if (buildCounterListInterceptDeploymentsResponse < 3) {
    checkUnnamed68(o.interceptDeployments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed69(o.unreachable!);
  }
  buildCounterListInterceptDeploymentsResponse--;
}

core.List<api.InterceptEndpointGroupAssociation> buildUnnamed70() => [
  buildInterceptEndpointGroupAssociation(),
  buildInterceptEndpointGroupAssociation(),
];

void checkUnnamed70(core.List<api.InterceptEndpointGroupAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptEndpointGroupAssociation(o[0]);
  checkInterceptEndpointGroupAssociation(o[1]);
}

core.int buildCounterListInterceptEndpointGroupAssociationsResponse = 0;
api.ListInterceptEndpointGroupAssociationsResponse
buildListInterceptEndpointGroupAssociationsResponse() {
  final o = api.ListInterceptEndpointGroupAssociationsResponse();
  buildCounterListInterceptEndpointGroupAssociationsResponse++;
  if (buildCounterListInterceptEndpointGroupAssociationsResponse < 3) {
    o.interceptEndpointGroupAssociations = buildUnnamed70();
    o.nextPageToken = 'foo';
  }
  buildCounterListInterceptEndpointGroupAssociationsResponse--;
  return o;
}

void checkListInterceptEndpointGroupAssociationsResponse(
  api.ListInterceptEndpointGroupAssociationsResponse o,
) {
  buildCounterListInterceptEndpointGroupAssociationsResponse++;
  if (buildCounterListInterceptEndpointGroupAssociationsResponse < 3) {
    checkUnnamed70(o.interceptEndpointGroupAssociations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListInterceptEndpointGroupAssociationsResponse--;
}

core.List<api.InterceptEndpointGroup> buildUnnamed71() => [
  buildInterceptEndpointGroup(),
  buildInterceptEndpointGroup(),
];

void checkUnnamed71(core.List<api.InterceptEndpointGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterceptEndpointGroup(o[0]);
  checkInterceptEndpointGroup(o[1]);
}

core.int buildCounterListInterceptEndpointGroupsResponse = 0;
api.ListInterceptEndpointGroupsResponse
buildListInterceptEndpointGroupsResponse() {
  final o = api.ListInterceptEndpointGroupsResponse();
  buildCounterListInterceptEndpointGroupsResponse++;
  if (buildCounterListInterceptEndpointGroupsResponse < 3) {
    o.interceptEndpointGroups = buildUnnamed71();
    o.nextPageToken = 'foo';
  }
  buildCounterListInterceptEndpointGroupsResponse--;
  return o;
}

void checkListInterceptEndpointGroupsResponse(
  api.ListInterceptEndpointGroupsResponse o,
) {
  buildCounterListInterceptEndpointGroupsResponse++;
  if (buildCounterListInterceptEndpointGroupsResponse < 3) {
    checkUnnamed71(o.interceptEndpointGroups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListInterceptEndpointGroupsResponse--;
}

core.List<api.Location> buildUnnamed72() => [buildLocation(), buildLocation()];

void checkUnnamed72(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed72();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed72(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MirroringDeploymentGroup> buildUnnamed73() => [
  buildMirroringDeploymentGroup(),
  buildMirroringDeploymentGroup(),
];

void checkUnnamed73(core.List<api.MirroringDeploymentGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringDeploymentGroup(o[0]);
  checkMirroringDeploymentGroup(o[1]);
}

core.int buildCounterListMirroringDeploymentGroupsResponse = 0;
api.ListMirroringDeploymentGroupsResponse
buildListMirroringDeploymentGroupsResponse() {
  final o = api.ListMirroringDeploymentGroupsResponse();
  buildCounterListMirroringDeploymentGroupsResponse++;
  if (buildCounterListMirroringDeploymentGroupsResponse < 3) {
    o.mirroringDeploymentGroups = buildUnnamed73();
    o.nextPageToken = 'foo';
  }
  buildCounterListMirroringDeploymentGroupsResponse--;
  return o;
}

void checkListMirroringDeploymentGroupsResponse(
  api.ListMirroringDeploymentGroupsResponse o,
) {
  buildCounterListMirroringDeploymentGroupsResponse++;
  if (buildCounterListMirroringDeploymentGroupsResponse < 3) {
    checkUnnamed73(o.mirroringDeploymentGroups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMirroringDeploymentGroupsResponse--;
}

core.List<api.MirroringDeployment> buildUnnamed74() => [
  buildMirroringDeployment(),
  buildMirroringDeployment(),
];

void checkUnnamed74(core.List<api.MirroringDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringDeployment(o[0]);
  checkMirroringDeployment(o[1]);
}

core.List<core.String> buildUnnamed75() => ['foo', 'foo'];

void checkUnnamed75(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMirroringDeploymentsResponse = 0;
api.ListMirroringDeploymentsResponse buildListMirroringDeploymentsResponse() {
  final o = api.ListMirroringDeploymentsResponse();
  buildCounterListMirroringDeploymentsResponse++;
  if (buildCounterListMirroringDeploymentsResponse < 3) {
    o.mirroringDeployments = buildUnnamed74();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed75();
  }
  buildCounterListMirroringDeploymentsResponse--;
  return o;
}

void checkListMirroringDeploymentsResponse(
  api.ListMirroringDeploymentsResponse o,
) {
  buildCounterListMirroringDeploymentsResponse++;
  if (buildCounterListMirroringDeploymentsResponse < 3) {
    checkUnnamed74(o.mirroringDeployments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed75(o.unreachable!);
  }
  buildCounterListMirroringDeploymentsResponse--;
}

core.List<api.MirroringEndpointGroupAssociation> buildUnnamed76() => [
  buildMirroringEndpointGroupAssociation(),
  buildMirroringEndpointGroupAssociation(),
];

void checkUnnamed76(core.List<api.MirroringEndpointGroupAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringEndpointGroupAssociation(o[0]);
  checkMirroringEndpointGroupAssociation(o[1]);
}

core.int buildCounterListMirroringEndpointGroupAssociationsResponse = 0;
api.ListMirroringEndpointGroupAssociationsResponse
buildListMirroringEndpointGroupAssociationsResponse() {
  final o = api.ListMirroringEndpointGroupAssociationsResponse();
  buildCounterListMirroringEndpointGroupAssociationsResponse++;
  if (buildCounterListMirroringEndpointGroupAssociationsResponse < 3) {
    o.mirroringEndpointGroupAssociations = buildUnnamed76();
    o.nextPageToken = 'foo';
  }
  buildCounterListMirroringEndpointGroupAssociationsResponse--;
  return o;
}

void checkListMirroringEndpointGroupAssociationsResponse(
  api.ListMirroringEndpointGroupAssociationsResponse o,
) {
  buildCounterListMirroringEndpointGroupAssociationsResponse++;
  if (buildCounterListMirroringEndpointGroupAssociationsResponse < 3) {
    checkUnnamed76(o.mirroringEndpointGroupAssociations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMirroringEndpointGroupAssociationsResponse--;
}

core.List<api.MirroringEndpointGroup> buildUnnamed77() => [
  buildMirroringEndpointGroup(),
  buildMirroringEndpointGroup(),
];

void checkUnnamed77(core.List<api.MirroringEndpointGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringEndpointGroup(o[0]);
  checkMirroringEndpointGroup(o[1]);
}

core.int buildCounterListMirroringEndpointGroupsResponse = 0;
api.ListMirroringEndpointGroupsResponse
buildListMirroringEndpointGroupsResponse() {
  final o = api.ListMirroringEndpointGroupsResponse();
  buildCounterListMirroringEndpointGroupsResponse++;
  if (buildCounterListMirroringEndpointGroupsResponse < 3) {
    o.mirroringEndpointGroups = buildUnnamed77();
    o.nextPageToken = 'foo';
  }
  buildCounterListMirroringEndpointGroupsResponse--;
  return o;
}

void checkListMirroringEndpointGroupsResponse(
  api.ListMirroringEndpointGroupsResponse o,
) {
  buildCounterListMirroringEndpointGroupsResponse++;
  if (buildCounterListMirroringEndpointGroupsResponse < 3) {
    checkUnnamed77(o.mirroringEndpointGroups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMirroringEndpointGroupsResponse--;
}

core.List<api.Operation> buildUnnamed78() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed78(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed78();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed78(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.SecurityProfileGroup> buildUnnamed79() => [
  buildSecurityProfileGroup(),
  buildSecurityProfileGroup(),
];

void checkUnnamed79(core.List<api.SecurityProfileGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecurityProfileGroup(o[0]);
  checkSecurityProfileGroup(o[1]);
}

core.int buildCounterListSecurityProfileGroupsResponse = 0;
api.ListSecurityProfileGroupsResponse buildListSecurityProfileGroupsResponse() {
  final o = api.ListSecurityProfileGroupsResponse();
  buildCounterListSecurityProfileGroupsResponse++;
  if (buildCounterListSecurityProfileGroupsResponse < 3) {
    o.nextPageToken = 'foo';
    o.securityProfileGroups = buildUnnamed79();
  }
  buildCounterListSecurityProfileGroupsResponse--;
  return o;
}

void checkListSecurityProfileGroupsResponse(
  api.ListSecurityProfileGroupsResponse o,
) {
  buildCounterListSecurityProfileGroupsResponse++;
  if (buildCounterListSecurityProfileGroupsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed79(o.securityProfileGroups!);
  }
  buildCounterListSecurityProfileGroupsResponse--;
}

core.List<api.SecurityProfile> buildUnnamed80() => [
  buildSecurityProfile(),
  buildSecurityProfile(),
];

void checkUnnamed80(core.List<api.SecurityProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecurityProfile(o[0]);
  checkSecurityProfile(o[1]);
}

core.int buildCounterListSecurityProfilesResponse = 0;
api.ListSecurityProfilesResponse buildListSecurityProfilesResponse() {
  final o = api.ListSecurityProfilesResponse();
  buildCounterListSecurityProfilesResponse++;
  if (buildCounterListSecurityProfilesResponse < 3) {
    o.nextPageToken = 'foo';
    o.securityProfiles = buildUnnamed80();
  }
  buildCounterListSecurityProfilesResponse--;
  return o;
}

void checkListSecurityProfilesResponse(api.ListSecurityProfilesResponse o) {
  buildCounterListSecurityProfilesResponse++;
  if (buildCounterListSecurityProfilesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed80(o.securityProfiles!);
  }
  buildCounterListSecurityProfilesResponse--;
}

core.List<api.ServerTlsPolicy> buildUnnamed81() => [
  buildServerTlsPolicy(),
  buildServerTlsPolicy(),
];

void checkUnnamed81(core.List<api.ServerTlsPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServerTlsPolicy(o[0]);
  checkServerTlsPolicy(o[1]);
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListServerTlsPoliciesResponse = 0;
api.ListServerTlsPoliciesResponse buildListServerTlsPoliciesResponse() {
  final o = api.ListServerTlsPoliciesResponse();
  buildCounterListServerTlsPoliciesResponse++;
  if (buildCounterListServerTlsPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.serverTlsPolicies = buildUnnamed81();
    o.unreachable = buildUnnamed82();
  }
  buildCounterListServerTlsPoliciesResponse--;
  return o;
}

void checkListServerTlsPoliciesResponse(api.ListServerTlsPoliciesResponse o) {
  buildCounterListServerTlsPoliciesResponse++;
  if (buildCounterListServerTlsPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed81(o.serverTlsPolicies!);
    checkUnnamed82(o.unreachable!);
  }
  buildCounterListServerTlsPoliciesResponse--;
}

core.List<api.TlsInspectionPolicy> buildUnnamed83() => [
  buildTlsInspectionPolicy(),
  buildTlsInspectionPolicy(),
];

void checkUnnamed83(core.List<api.TlsInspectionPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsInspectionPolicy(o[0]);
  checkTlsInspectionPolicy(o[1]);
}

core.List<core.String> buildUnnamed84() => ['foo', 'foo'];

void checkUnnamed84(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTlsInspectionPoliciesResponse = 0;
api.ListTlsInspectionPoliciesResponse buildListTlsInspectionPoliciesResponse() {
  final o = api.ListTlsInspectionPoliciesResponse();
  buildCounterListTlsInspectionPoliciesResponse++;
  if (buildCounterListTlsInspectionPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.tlsInspectionPolicies = buildUnnamed83();
    o.unreachable = buildUnnamed84();
  }
  buildCounterListTlsInspectionPoliciesResponse--;
  return o;
}

void checkListTlsInspectionPoliciesResponse(
  api.ListTlsInspectionPoliciesResponse o,
) {
  buildCounterListTlsInspectionPoliciesResponse++;
  if (buildCounterListTlsInspectionPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed83(o.tlsInspectionPolicies!);
    checkUnnamed84(o.unreachable!);
  }
  buildCounterListTlsInspectionPoliciesResponse--;
}

core.List<core.String> buildUnnamed85() => ['foo', 'foo'];

void checkUnnamed85(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.UrlList> buildUnnamed86() => [buildUrlList(), buildUrlList()];

void checkUnnamed86(core.List<api.UrlList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlList(o[0]);
  checkUrlList(o[1]);
}

core.int buildCounterListUrlListsResponse = 0;
api.ListUrlListsResponse buildListUrlListsResponse() {
  final o = api.ListUrlListsResponse();
  buildCounterListUrlListsResponse++;
  if (buildCounterListUrlListsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed85();
    o.urlLists = buildUnnamed86();
  }
  buildCounterListUrlListsResponse--;
  return o;
}

void checkListUrlListsResponse(api.ListUrlListsResponse o) {
  buildCounterListUrlListsResponse++;
  if (buildCounterListUrlListsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed85(o.unreachable!);
    checkUnnamed86(o.urlLists!);
  }
  buildCounterListUrlListsResponse--;
}

core.Map<core.String, core.String> buildUnnamed87() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed87(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed88() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed88(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed87();
    o.locationId = 'foo';
    o.metadata = buildUnnamed88();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed87(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed88(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<api.ValidationCA> buildUnnamed89() => [
  buildValidationCA(),
  buildValidationCA(),
];

void checkUnnamed89(core.List<api.ValidationCA> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValidationCA(o[0]);
  checkValidationCA(o[1]);
}

core.int buildCounterMTLSPolicy = 0;
api.MTLSPolicy buildMTLSPolicy() {
  final o = api.MTLSPolicy();
  buildCounterMTLSPolicy++;
  if (buildCounterMTLSPolicy < 3) {
    o.clientValidationCa = buildUnnamed89();
    o.clientValidationMode = 'foo';
    o.clientValidationTrustConfig = 'foo';
  }
  buildCounterMTLSPolicy--;
  return o;
}

void checkMTLSPolicy(api.MTLSPolicy o) {
  buildCounterMTLSPolicy++;
  if (buildCounterMTLSPolicy < 3) {
    checkUnnamed89(o.clientValidationCa!);
    unittest.expect(o.clientValidationMode!, unittest.equals('foo'));
    unittest.expect(o.clientValidationTrustConfig!, unittest.equals('foo'));
  }
  buildCounterMTLSPolicy--;
}

core.Map<core.String, core.String> buildUnnamed90() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed90(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMirroringDeployment = 0;
api.MirroringDeployment buildMirroringDeployment() {
  final o = api.MirroringDeployment();
  buildCounterMirroringDeployment++;
  if (buildCounterMirroringDeployment < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.forwardingRule = 'foo';
    o.labels = buildUnnamed90();
    o.mirroringDeploymentGroup = 'foo';
    o.name = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMirroringDeployment--;
  return o;
}

void checkMirroringDeployment(api.MirroringDeployment o) {
  buildCounterMirroringDeployment++;
  if (buildCounterMirroringDeployment < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.forwardingRule!, unittest.equals('foo'));
    checkUnnamed90(o.labels!);
    unittest.expect(o.mirroringDeploymentGroup!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMirroringDeployment--;
}

core.List<api.MirroringDeploymentGroupConnectedEndpointGroup>
buildUnnamed91() => [
  buildMirroringDeploymentGroupConnectedEndpointGroup(),
  buildMirroringDeploymentGroupConnectedEndpointGroup(),
];

void checkUnnamed91(
  core.List<api.MirroringDeploymentGroupConnectedEndpointGroup> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringDeploymentGroupConnectedEndpointGroup(o[0]);
  checkMirroringDeploymentGroupConnectedEndpointGroup(o[1]);
}

core.Map<core.String, core.String> buildUnnamed92() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed92(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.MirroringLocation> buildUnnamed93() => [
  buildMirroringLocation(),
  buildMirroringLocation(),
];

void checkUnnamed93(core.List<api.MirroringLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringLocation(o[0]);
  checkMirroringLocation(o[1]);
}

core.List<api.MirroringDeploymentGroupDeployment> buildUnnamed94() => [
  buildMirroringDeploymentGroupDeployment(),
  buildMirroringDeploymentGroupDeployment(),
];

void checkUnnamed94(core.List<api.MirroringDeploymentGroupDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringDeploymentGroupDeployment(o[0]);
  checkMirroringDeploymentGroupDeployment(o[1]);
}

core.int buildCounterMirroringDeploymentGroup = 0;
api.MirroringDeploymentGroup buildMirroringDeploymentGroup() {
  final o = api.MirroringDeploymentGroup();
  buildCounterMirroringDeploymentGroup++;
  if (buildCounterMirroringDeploymentGroup < 3) {
    o.connectedEndpointGroups = buildUnnamed91();
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed92();
    o.locations = buildUnnamed93();
    o.name = 'foo';
    o.nestedDeployments = buildUnnamed94();
    o.network = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMirroringDeploymentGroup--;
  return o;
}

void checkMirroringDeploymentGroup(api.MirroringDeploymentGroup o) {
  buildCounterMirroringDeploymentGroup++;
  if (buildCounterMirroringDeploymentGroup < 3) {
    checkUnnamed91(o.connectedEndpointGroups!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed92(o.labels!);
    checkUnnamed93(o.locations!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed94(o.nestedDeployments!);
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMirroringDeploymentGroup--;
}

core.int buildCounterMirroringDeploymentGroupConnectedEndpointGroup = 0;
api.MirroringDeploymentGroupConnectedEndpointGroup
buildMirroringDeploymentGroupConnectedEndpointGroup() {
  final o = api.MirroringDeploymentGroupConnectedEndpointGroup();
  buildCounterMirroringDeploymentGroupConnectedEndpointGroup++;
  if (buildCounterMirroringDeploymentGroupConnectedEndpointGroup < 3) {
    o.name = 'foo';
  }
  buildCounterMirroringDeploymentGroupConnectedEndpointGroup--;
  return o;
}

void checkMirroringDeploymentGroupConnectedEndpointGroup(
  api.MirroringDeploymentGroupConnectedEndpointGroup o,
) {
  buildCounterMirroringDeploymentGroupConnectedEndpointGroup++;
  if (buildCounterMirroringDeploymentGroupConnectedEndpointGroup < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterMirroringDeploymentGroupConnectedEndpointGroup--;
}

core.int buildCounterMirroringDeploymentGroupDeployment = 0;
api.MirroringDeploymentGroupDeployment
buildMirroringDeploymentGroupDeployment() {
  final o = api.MirroringDeploymentGroupDeployment();
  buildCounterMirroringDeploymentGroupDeployment++;
  if (buildCounterMirroringDeploymentGroupDeployment < 3) {
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterMirroringDeploymentGroupDeployment--;
  return o;
}

void checkMirroringDeploymentGroupDeployment(
  api.MirroringDeploymentGroupDeployment o,
) {
  buildCounterMirroringDeploymentGroupDeployment++;
  if (buildCounterMirroringDeploymentGroupDeployment < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterMirroringDeploymentGroupDeployment--;
}

core.List<api.MirroringEndpointGroupAssociationDetails> buildUnnamed95() => [
  buildMirroringEndpointGroupAssociationDetails(),
  buildMirroringEndpointGroupAssociationDetails(),
];

void checkUnnamed95(core.List<api.MirroringEndpointGroupAssociationDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringEndpointGroupAssociationDetails(o[0]);
  checkMirroringEndpointGroupAssociationDetails(o[1]);
}

core.List<api.MirroringEndpointGroupConnectedDeploymentGroup>
buildUnnamed96() => [
  buildMirroringEndpointGroupConnectedDeploymentGroup(),
  buildMirroringEndpointGroupConnectedDeploymentGroup(),
];

void checkUnnamed96(
  core.List<api.MirroringEndpointGroupConnectedDeploymentGroup> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringEndpointGroupConnectedDeploymentGroup(o[0]);
  checkMirroringEndpointGroupConnectedDeploymentGroup(o[1]);
}

core.Map<core.String, core.String> buildUnnamed97() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed97(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMirroringEndpointGroup = 0;
api.MirroringEndpointGroup buildMirroringEndpointGroup() {
  final o = api.MirroringEndpointGroup();
  buildCounterMirroringEndpointGroup++;
  if (buildCounterMirroringEndpointGroup < 3) {
    o.associations = buildUnnamed95();
    o.connectedDeploymentGroups = buildUnnamed96();
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed97();
    o.mirroringDeploymentGroup = 'foo';
    o.name = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMirroringEndpointGroup--;
  return o;
}

void checkMirroringEndpointGroup(api.MirroringEndpointGroup o) {
  buildCounterMirroringEndpointGroup++;
  if (buildCounterMirroringEndpointGroup < 3) {
    checkUnnamed95(o.associations!);
    checkUnnamed96(o.connectedDeploymentGroups!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed97(o.labels!);
    unittest.expect(o.mirroringDeploymentGroup!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMirroringEndpointGroup--;
}

core.Map<core.String, core.String> buildUnnamed98() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed98(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.MirroringLocation> buildUnnamed99() => [
  buildMirroringLocation(),
  buildMirroringLocation(),
];

void checkUnnamed99(core.List<api.MirroringLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringLocation(o[0]);
  checkMirroringLocation(o[1]);
}

core.List<api.MirroringEndpointGroupAssociationLocationDetails>
buildUnnamed100() => [
  buildMirroringEndpointGroupAssociationLocationDetails(),
  buildMirroringEndpointGroupAssociationLocationDetails(),
];

void checkUnnamed100(
  core.List<api.MirroringEndpointGroupAssociationLocationDetails> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringEndpointGroupAssociationLocationDetails(o[0]);
  checkMirroringEndpointGroupAssociationLocationDetails(o[1]);
}

core.int buildCounterMirroringEndpointGroupAssociation = 0;
api.MirroringEndpointGroupAssociation buildMirroringEndpointGroupAssociation() {
  final o = api.MirroringEndpointGroupAssociation();
  buildCounterMirroringEndpointGroupAssociation++;
  if (buildCounterMirroringEndpointGroupAssociation < 3) {
    o.createTime = 'foo';
    o.labels = buildUnnamed98();
    o.locations = buildUnnamed99();
    o.locationsDetails = buildUnnamed100();
    o.mirroringEndpointGroup = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMirroringEndpointGroupAssociation--;
  return o;
}

void checkMirroringEndpointGroupAssociation(
  api.MirroringEndpointGroupAssociation o,
) {
  buildCounterMirroringEndpointGroupAssociation++;
  if (buildCounterMirroringEndpointGroupAssociation < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed98(o.labels!);
    checkUnnamed99(o.locations!);
    checkUnnamed100(o.locationsDetails!);
    unittest.expect(o.mirroringEndpointGroup!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMirroringEndpointGroupAssociation--;
}

core.int buildCounterMirroringEndpointGroupAssociationDetails = 0;
api.MirroringEndpointGroupAssociationDetails
buildMirroringEndpointGroupAssociationDetails() {
  final o = api.MirroringEndpointGroupAssociationDetails();
  buildCounterMirroringEndpointGroupAssociationDetails++;
  if (buildCounterMirroringEndpointGroupAssociationDetails < 3) {
    o.name = 'foo';
    o.network = 'foo';
    o.state = 'foo';
  }
  buildCounterMirroringEndpointGroupAssociationDetails--;
  return o;
}

void checkMirroringEndpointGroupAssociationDetails(
  api.MirroringEndpointGroupAssociationDetails o,
) {
  buildCounterMirroringEndpointGroupAssociationDetails++;
  if (buildCounterMirroringEndpointGroupAssociationDetails < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterMirroringEndpointGroupAssociationDetails--;
}

core.int buildCounterMirroringEndpointGroupAssociationLocationDetails = 0;
api.MirroringEndpointGroupAssociationLocationDetails
buildMirroringEndpointGroupAssociationLocationDetails() {
  final o = api.MirroringEndpointGroupAssociationLocationDetails();
  buildCounterMirroringEndpointGroupAssociationLocationDetails++;
  if (buildCounterMirroringEndpointGroupAssociationLocationDetails < 3) {
    o.location = 'foo';
    o.state = 'foo';
  }
  buildCounterMirroringEndpointGroupAssociationLocationDetails--;
  return o;
}

void checkMirroringEndpointGroupAssociationLocationDetails(
  api.MirroringEndpointGroupAssociationLocationDetails o,
) {
  buildCounterMirroringEndpointGroupAssociationLocationDetails++;
  if (buildCounterMirroringEndpointGroupAssociationLocationDetails < 3) {
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterMirroringEndpointGroupAssociationLocationDetails--;
}

core.List<api.MirroringLocation> buildUnnamed101() => [
  buildMirroringLocation(),
  buildMirroringLocation(),
];

void checkUnnamed101(core.List<api.MirroringLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMirroringLocation(o[0]);
  checkMirroringLocation(o[1]);
}

core.int buildCounterMirroringEndpointGroupConnectedDeploymentGroup = 0;
api.MirroringEndpointGroupConnectedDeploymentGroup
buildMirroringEndpointGroupConnectedDeploymentGroup() {
  final o = api.MirroringEndpointGroupConnectedDeploymentGroup();
  buildCounterMirroringEndpointGroupConnectedDeploymentGroup++;
  if (buildCounterMirroringEndpointGroupConnectedDeploymentGroup < 3) {
    o.locations = buildUnnamed101();
    o.name = 'foo';
  }
  buildCounterMirroringEndpointGroupConnectedDeploymentGroup--;
  return o;
}

void checkMirroringEndpointGroupConnectedDeploymentGroup(
  api.MirroringEndpointGroupConnectedDeploymentGroup o,
) {
  buildCounterMirroringEndpointGroupConnectedDeploymentGroup++;
  if (buildCounterMirroringEndpointGroupConnectedDeploymentGroup < 3) {
    checkUnnamed101(o.locations!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterMirroringEndpointGroupConnectedDeploymentGroup--;
}

core.int buildCounterMirroringLocation = 0;
api.MirroringLocation buildMirroringLocation() {
  final o = api.MirroringLocation();
  buildCounterMirroringLocation++;
  if (buildCounterMirroringLocation < 3) {
    o.location = 'foo';
    o.state = 'foo';
  }
  buildCounterMirroringLocation--;
  return o;
}

void checkMirroringLocation(api.MirroringLocation o) {
  buildCounterMirroringLocation++;
  if (buildCounterMirroringLocation < 3) {
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterMirroringLocation--;
}

core.Map<core.String, core.Object?> buildUnnamed102() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed102(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed103() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed103(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed102();
    o.name = 'foo';
    o.response = buildUnnamed103();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed102(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed103(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed104() => ['foo', 'foo'];

void checkUnnamed104(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRemoveAddressGroupItemsRequest = 0;
api.RemoveAddressGroupItemsRequest buildRemoveAddressGroupItemsRequest() {
  final o = api.RemoveAddressGroupItemsRequest();
  buildCounterRemoveAddressGroupItemsRequest++;
  if (buildCounterRemoveAddressGroupItemsRequest < 3) {
    o.items = buildUnnamed104();
    o.requestId = 'foo';
  }
  buildCounterRemoveAddressGroupItemsRequest--;
  return o;
}

void checkRemoveAddressGroupItemsRequest(api.RemoveAddressGroupItemsRequest o) {
  buildCounterRemoveAddressGroupItemsRequest++;
  if (buildCounterRemoveAddressGroupItemsRequest < 3) {
    checkUnnamed104(o.items!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRemoveAddressGroupItemsRequest--;
}

core.List<api.Destination> buildUnnamed105() => [
  buildDestination(),
  buildDestination(),
];

void checkUnnamed105(core.List<api.Destination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestination(o[0]);
  checkDestination(o[1]);
}

core.List<api.Source> buildUnnamed106() => [buildSource(), buildSource()];

void checkUnnamed106(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterRule = 0;
api.Rule buildRule() {
  final o = api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.destinations = buildUnnamed105();
    o.sources = buildUnnamed106();
  }
  buildCounterRule--;
  return o;
}

void checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    checkUnnamed105(o.destinations!);
    checkUnnamed106(o.sources!);
  }
  buildCounterRule--;
}

core.Map<core.String, core.String> buildUnnamed107() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed107(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSecurityProfile = 0;
api.SecurityProfile buildSecurityProfile() {
  final o = api.SecurityProfile();
  buildCounterSecurityProfile++;
  if (buildCounterSecurityProfile < 3) {
    o.createTime = 'foo';
    o.customInterceptProfile = buildCustomInterceptProfile();
    o.customMirroringProfile = buildCustomMirroringProfile();
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed107();
    o.name = 'foo';
    o.threatPreventionProfile = buildThreatPreventionProfile();
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSecurityProfile--;
  return o;
}

void checkSecurityProfile(api.SecurityProfile o) {
  buildCounterSecurityProfile++;
  if (buildCounterSecurityProfile < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkCustomInterceptProfile(o.customInterceptProfile!);
    checkCustomMirroringProfile(o.customMirroringProfile!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed107(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkThreatPreventionProfile(o.threatPreventionProfile!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSecurityProfile--;
}

core.Map<core.String, core.String> buildUnnamed108() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed108(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSecurityProfileGroup = 0;
api.SecurityProfileGroup buildSecurityProfileGroup() {
  final o = api.SecurityProfileGroup();
  buildCounterSecurityProfileGroup++;
  if (buildCounterSecurityProfileGroup < 3) {
    o.createTime = 'foo';
    o.customInterceptProfile = 'foo';
    o.customMirroringProfile = 'foo';
    o.dataPathId = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed108();
    o.name = 'foo';
    o.threatPreventionProfile = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSecurityProfileGroup--;
  return o;
}

void checkSecurityProfileGroup(api.SecurityProfileGroup o) {
  buildCounterSecurityProfileGroup++;
  if (buildCounterSecurityProfileGroup < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.customInterceptProfile!, unittest.equals('foo'));
    unittest.expect(o.customMirroringProfile!, unittest.equals('foo'));
    unittest.expect(o.dataPathId!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed108(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.threatPreventionProfile!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSecurityProfileGroup--;
}

core.Map<core.String, core.String> buildUnnamed109() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed109(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterServerTlsPolicy = 0;
api.ServerTlsPolicy buildServerTlsPolicy() {
  final o = api.ServerTlsPolicy();
  buildCounterServerTlsPolicy++;
  if (buildCounterServerTlsPolicy < 3) {
    o.allowOpen = true;
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed109();
    o.mtlsPolicy = buildMTLSPolicy();
    o.name = 'foo';
    o.serverCertificate =
        buildGoogleCloudNetworksecurityV1CertificateProvider();
    o.updateTime = 'foo';
  }
  buildCounterServerTlsPolicy--;
  return o;
}

void checkServerTlsPolicy(api.ServerTlsPolicy o) {
  buildCounterServerTlsPolicy++;
  if (buildCounterServerTlsPolicy < 3) {
    unittest.expect(o.allowOpen!, unittest.isTrue);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed109(o.labels!);
    checkMTLSPolicy(o.mtlsPolicy!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudNetworksecurityV1CertificateProvider(o.serverCertificate!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterServerTlsPolicy--;
}

core.int buildCounterSeverityOverride = 0;
api.SeverityOverride buildSeverityOverride() {
  final o = api.SeverityOverride();
  buildCounterSeverityOverride++;
  if (buildCounterSeverityOverride < 3) {
    o.action = 'foo';
    o.severity = 'foo';
  }
  buildCounterSeverityOverride--;
  return o;
}

void checkSeverityOverride(api.SeverityOverride o) {
  buildCounterSeverityOverride++;
  if (buildCounterSeverityOverride < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterSeverityOverride--;
}

core.List<core.String> buildUnnamed110() => ['foo', 'foo'];

void checkUnnamed110(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed111() => ['foo', 'foo'];

void checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.ipBlocks = buildUnnamed110();
    o.principals = buildUnnamed111();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed110(o.ipBlocks!);
    checkUnnamed111(o.principals!);
  }
  buildCounterSource--;
}

core.Map<core.String, core.Object?> buildUnnamed112() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed112(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed113() => [
  buildUnnamed112(),
  buildUnnamed112(),
];

void checkUnnamed113(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed112(o[0]);
  checkUnnamed112(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed113();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed113(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterThreatOverride = 0;
api.ThreatOverride buildThreatOverride() {
  final o = api.ThreatOverride();
  buildCounterThreatOverride++;
  if (buildCounterThreatOverride < 3) {
    o.action = 'foo';
    o.threatId = 'foo';
    o.type = 'foo';
  }
  buildCounterThreatOverride--;
  return o;
}

void checkThreatOverride(api.ThreatOverride o) {
  buildCounterThreatOverride++;
  if (buildCounterThreatOverride < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.threatId!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterThreatOverride--;
}

core.List<api.AntivirusOverride> buildUnnamed114() => [
  buildAntivirusOverride(),
  buildAntivirusOverride(),
];

void checkUnnamed114(core.List<api.AntivirusOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAntivirusOverride(o[0]);
  checkAntivirusOverride(o[1]);
}

core.List<api.SeverityOverride> buildUnnamed115() => [
  buildSeverityOverride(),
  buildSeverityOverride(),
];

void checkUnnamed115(core.List<api.SeverityOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeverityOverride(o[0]);
  checkSeverityOverride(o[1]);
}

core.List<api.ThreatOverride> buildUnnamed116() => [
  buildThreatOverride(),
  buildThreatOverride(),
];

void checkUnnamed116(core.List<api.ThreatOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatOverride(o[0]);
  checkThreatOverride(o[1]);
}

core.int buildCounterThreatPreventionProfile = 0;
api.ThreatPreventionProfile buildThreatPreventionProfile() {
  final o = api.ThreatPreventionProfile();
  buildCounterThreatPreventionProfile++;
  if (buildCounterThreatPreventionProfile < 3) {
    o.antivirusOverrides = buildUnnamed114();
    o.severityOverrides = buildUnnamed115();
    o.threatOverrides = buildUnnamed116();
  }
  buildCounterThreatPreventionProfile--;
  return o;
}

void checkThreatPreventionProfile(api.ThreatPreventionProfile o) {
  buildCounterThreatPreventionProfile++;
  if (buildCounterThreatPreventionProfile < 3) {
    checkUnnamed114(o.antivirusOverrides!);
    checkUnnamed115(o.severityOverrides!);
    checkUnnamed116(o.threatOverrides!);
  }
  buildCounterThreatPreventionProfile--;
}

core.List<core.String> buildUnnamed117() => ['foo', 'foo'];

void checkUnnamed117(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTlsInspectionPolicy = 0;
api.TlsInspectionPolicy buildTlsInspectionPolicy() {
  final o = api.TlsInspectionPolicy();
  buildCounterTlsInspectionPolicy++;
  if (buildCounterTlsInspectionPolicy < 3) {
    o.caPool = 'foo';
    o.createTime = 'foo';
    o.customTlsFeatures = buildUnnamed117();
    o.description = 'foo';
    o.excludePublicCaSet = true;
    o.minTlsVersion = 'foo';
    o.name = 'foo';
    o.tlsFeatureProfile = 'foo';
    o.trustConfig = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTlsInspectionPolicy--;
  return o;
}

void checkTlsInspectionPolicy(api.TlsInspectionPolicy o) {
  buildCounterTlsInspectionPolicy++;
  if (buildCounterTlsInspectionPolicy < 3) {
    unittest.expect(o.caPool!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed117(o.customTlsFeatures!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.excludePublicCaSet!, unittest.isTrue);
    unittest.expect(o.minTlsVersion!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.tlsFeatureProfile!, unittest.equals('foo'));
    unittest.expect(o.trustConfig!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTlsInspectionPolicy--;
}

core.List<core.String> buildUnnamed118() => ['foo', 'foo'];

void checkUnnamed118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUrlList = 0;
api.UrlList buildUrlList() {
  final o = api.UrlList();
  buildCounterUrlList++;
  if (buildCounterUrlList < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.values = buildUnnamed118();
  }
  buildCounterUrlList--;
  return o;
}

void checkUrlList(api.UrlList o) {
  buildCounterUrlList++;
  if (buildCounterUrlList < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed118(o.values!);
  }
  buildCounterUrlList--;
}

core.int buildCounterValidationCA = 0;
api.ValidationCA buildValidationCA() {
  final o = api.ValidationCA();
  buildCounterValidationCA++;
  if (buildCounterValidationCA < 3) {
    o.certificateProviderInstance = buildCertificateProviderInstance();
    o.grpcEndpoint = buildGoogleCloudNetworksecurityV1GrpcEndpoint();
  }
  buildCounterValidationCA--;
  return o;
}

void checkValidationCA(api.ValidationCA o) {
  buildCounterValidationCA++;
  if (buildCounterValidationCA < 3) {
    checkCertificateProviderInstance(o.certificateProviderInstance!);
    checkGoogleCloudNetworksecurityV1GrpcEndpoint(o.grpcEndpoint!);
  }
  buildCounterValidationCA--;
}

core.List<core.String> buildUnnamed119() => ['foo', 'foo'];

void checkUnnamed119(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AddAddressGroupItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddAddressGroupItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddAddressGroupItemsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddAddressGroupItemsRequest(od);
    });
  });

  unittest.group('obj-schema-AddressGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddressGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddressGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddressGroup(od);
    });
  });

  unittest.group('obj-schema-AntivirusOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAntivirusOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AntivirusOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAntivirusOverride(od);
    });
  });

  unittest.group('obj-schema-AuthorizationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizationPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthorizationPolicy(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicy(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyAuthzRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyAuthzRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyAuthzRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyAuthzRule(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyAuthzRuleFrom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyAuthzRuleFrom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyAuthzRuleFrom.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyAuthzRuleFrom(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyAuthzRuleFromRequestSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyAuthzRuleFromRequestSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyAuthzRuleFromRequestSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyAuthzRuleFromRequestSource(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyAuthzRuleHeaderMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyAuthzRuleHeaderMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyAuthzRuleHeaderMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyAuthzRuleHeaderMatch(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyAuthzRuleIpBlock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyAuthzRuleIpBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyAuthzRuleIpBlock.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyAuthzRuleIpBlock(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyAuthzRulePrincipal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyAuthzRulePrincipal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyAuthzRulePrincipal.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyAuthzRulePrincipal(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyAuthzRuleRequestResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyAuthzRuleRequestResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyAuthzRuleRequestResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyAuthzRuleRequestResource(od);
    });
  });

  unittest.group(
    'obj-schema-AuthzPolicyAuthzRuleRequestResourceTagValueIdSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAuthzPolicyAuthzRuleRequestResourceTagValueIdSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .AuthzPolicyAuthzRuleRequestResourceTagValueIdSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAuthzPolicyAuthzRuleRequestResourceTagValueIdSet(od);
      });
    },
  );

  unittest.group('obj-schema-AuthzPolicyAuthzRuleStringMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyAuthzRuleStringMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyAuthzRuleStringMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyAuthzRuleStringMatch(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyAuthzRuleTo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyAuthzRuleTo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyAuthzRuleTo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyAuthzRuleTo(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyAuthzRuleToRequestOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyAuthzRuleToRequestOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyAuthzRuleToRequestOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyAuthzRuleToRequestOperation(od);
    });
  });

  unittest.group(
    'obj-schema-AuthzPolicyAuthzRuleToRequestOperationHeaderSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAuthzPolicyAuthzRuleToRequestOperationHeaderSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.AuthzPolicyAuthzRuleToRequestOperationHeaderSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAuthzPolicyAuthzRuleToRequestOperationHeaderSet(od);
      });
    },
  );

  unittest.group('obj-schema-AuthzPolicyCustomProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyCustomProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyCustomProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyCustomProvider(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyCustomProviderAuthzExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyCustomProviderAuthzExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyCustomProviderAuthzExtension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyCustomProviderAuthzExtension(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyCustomProviderCloudIap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyCustomProviderCloudIap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyCustomProviderCloudIap.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyCustomProviderCloudIap(od);
    });
  });

  unittest.group('obj-schema-AuthzPolicyTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthzPolicyTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthzPolicyTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthzPolicyTarget(od);
    });
  });

  unittest.group('obj-schema-BackendAuthenticationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackendAuthenticationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackendAuthenticationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackendAuthenticationConfig(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-CertificateProviderInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateProviderInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateProviderInstance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCertificateProviderInstance(od);
    });
  });

  unittest.group('obj-schema-ClientTlsPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientTlsPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientTlsPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientTlsPolicy(od);
    });
  });

  unittest.group('obj-schema-CloneAddressGroupItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloneAddressGroupItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloneAddressGroupItemsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloneAddressGroupItemsRequest(od);
    });
  });

  unittest.group('obj-schema-CustomInterceptProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomInterceptProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomInterceptProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomInterceptProfile(od);
    });
  });

  unittest.group('obj-schema-CustomMirroringProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomMirroringProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomMirroringProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomMirroringProfile(od);
    });
  });

  unittest.group('obj-schema-Destination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Destination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDestination(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-FirewallEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFirewallEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FirewallEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFirewallEndpoint(od);
    });
  });

  unittest.group('obj-schema-FirewallEndpointAssociation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFirewallEndpointAssociation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FirewallEndpointAssociation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFirewallEndpointAssociation(od);
    });
  });

  unittest.group('obj-schema-FirewallEndpointAssociationReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFirewallEndpointAssociationReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FirewallEndpointAssociationReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFirewallEndpointAssociationReference(od);
    });
  });

  unittest.group('obj-schema-GatewaySecurityPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGatewaySecurityPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GatewaySecurityPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGatewaySecurityPolicy(od);
    });
  });

  unittest.group('obj-schema-GatewaySecurityPolicyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGatewaySecurityPolicyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GatewaySecurityPolicyRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGatewaySecurityPolicyRule(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudNetworksecurityV1CertificateProvider',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudNetworksecurityV1CertificateProvider();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudNetworksecurityV1CertificateProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudNetworksecurityV1CertificateProvider(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudNetworksecurityV1GrpcEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudNetworksecurityV1GrpcEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudNetworksecurityV1GrpcEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudNetworksecurityV1GrpcEndpoint(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1SetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1SetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1TestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1TestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-HttpHeaderMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpHeaderMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpHeaderMatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpHeaderMatch(od);
    });
  });

  unittest.group('obj-schema-InterceptDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterceptDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InterceptDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterceptDeployment(od);
    });
  });

  unittest.group('obj-schema-InterceptDeploymentGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterceptDeploymentGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InterceptDeploymentGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterceptDeploymentGroup(od);
    });
  });

  unittest.group(
    'obj-schema-InterceptDeploymentGroupConnectedEndpointGroup',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildInterceptDeploymentGroupConnectedEndpointGroup();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.InterceptDeploymentGroupConnectedEndpointGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkInterceptDeploymentGroupConnectedEndpointGroup(od);
      });
    },
  );

  unittest.group('obj-schema-InterceptDeploymentGroupDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterceptDeploymentGroupDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InterceptDeploymentGroupDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterceptDeploymentGroupDeployment(od);
    });
  });

  unittest.group('obj-schema-InterceptEndpointGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterceptEndpointGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InterceptEndpointGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterceptEndpointGroup(od);
    });
  });

  unittest.group('obj-schema-InterceptEndpointGroupAssociation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterceptEndpointGroupAssociation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InterceptEndpointGroupAssociation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterceptEndpointGroupAssociation(od);
    });
  });

  unittest.group('obj-schema-InterceptEndpointGroupAssociationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterceptEndpointGroupAssociationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InterceptEndpointGroupAssociationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterceptEndpointGroupAssociationDetails(od);
    });
  });

  unittest.group(
    'obj-schema-InterceptEndpointGroupAssociationLocationDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildInterceptEndpointGroupAssociationLocationDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .InterceptEndpointGroupAssociationLocationDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkInterceptEndpointGroupAssociationLocationDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-InterceptEndpointGroupConnectedDeploymentGroup',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildInterceptEndpointGroupConnectedDeploymentGroup();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.InterceptEndpointGroupConnectedDeploymentGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkInterceptEndpointGroupConnectedDeploymentGroup(od);
      });
    },
  );

  unittest.group('obj-schema-InterceptLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterceptLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InterceptLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterceptLocation(od);
    });
  });

  unittest.group('obj-schema-ListAddressGroupReferencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAddressGroupReferencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAddressGroupReferencesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAddressGroupReferencesResponse(od);
    });
  });

  unittest.group(
    'obj-schema-ListAddressGroupReferencesResponseAddressGroupReference',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildListAddressGroupReferencesResponseAddressGroupReference();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ListAddressGroupReferencesResponseAddressGroupReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListAddressGroupReferencesResponseAddressGroupReference(od);
      });
    },
  );

  unittest.group('obj-schema-ListAddressGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAddressGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAddressGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAddressGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAuthorizationPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuthorizationPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuthorizationPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuthorizationPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAuthzPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuthzPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuthzPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuthzPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListBackendAuthenticationConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackendAuthenticationConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackendAuthenticationConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBackendAuthenticationConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListClientTlsPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClientTlsPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClientTlsPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListClientTlsPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListFirewallEndpointAssociationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFirewallEndpointAssociationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFirewallEndpointAssociationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListFirewallEndpointAssociationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFirewallEndpointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFirewallEndpointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFirewallEndpointsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListFirewallEndpointsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGatewaySecurityPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGatewaySecurityPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGatewaySecurityPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGatewaySecurityPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGatewaySecurityPolicyRulesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGatewaySecurityPolicyRulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGatewaySecurityPolicyRulesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGatewaySecurityPolicyRulesResponse(od);
    });
  });

  unittest.group('obj-schema-ListInterceptDeploymentGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInterceptDeploymentGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInterceptDeploymentGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInterceptDeploymentGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInterceptDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInterceptDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInterceptDeploymentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInterceptDeploymentsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-ListInterceptEndpointGroupAssociationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildListInterceptEndpointGroupAssociationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ListInterceptEndpointGroupAssociationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListInterceptEndpointGroupAssociationsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-ListInterceptEndpointGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInterceptEndpointGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInterceptEndpointGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInterceptEndpointGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMirroringDeploymentGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMirroringDeploymentGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMirroringDeploymentGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMirroringDeploymentGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMirroringDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMirroringDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMirroringDeploymentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMirroringDeploymentsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-ListMirroringEndpointGroupAssociationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildListMirroringEndpointGroupAssociationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ListMirroringEndpointGroupAssociationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListMirroringEndpointGroupAssociationsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-ListMirroringEndpointGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMirroringEndpointGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMirroringEndpointGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMirroringEndpointGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSecurityProfileGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSecurityProfileGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSecurityProfileGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSecurityProfileGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSecurityProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSecurityProfilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSecurityProfilesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSecurityProfilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListServerTlsPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServerTlsPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServerTlsPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListServerTlsPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTlsInspectionPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTlsInspectionPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTlsInspectionPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTlsInspectionPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListUrlListsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUrlListsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUrlListsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUrlListsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-MTLSPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMTLSPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MTLSPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMTLSPolicy(od);
    });
  });

  unittest.group('obj-schema-MirroringDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMirroringDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MirroringDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMirroringDeployment(od);
    });
  });

  unittest.group('obj-schema-MirroringDeploymentGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMirroringDeploymentGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MirroringDeploymentGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMirroringDeploymentGroup(od);
    });
  });

  unittest.group(
    'obj-schema-MirroringDeploymentGroupConnectedEndpointGroup',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildMirroringDeploymentGroupConnectedEndpointGroup();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.MirroringDeploymentGroupConnectedEndpointGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkMirroringDeploymentGroupConnectedEndpointGroup(od);
      });
    },
  );

  unittest.group('obj-schema-MirroringDeploymentGroupDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMirroringDeploymentGroupDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MirroringDeploymentGroupDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMirroringDeploymentGroupDeployment(od);
    });
  });

  unittest.group('obj-schema-MirroringEndpointGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMirroringEndpointGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MirroringEndpointGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMirroringEndpointGroup(od);
    });
  });

  unittest.group('obj-schema-MirroringEndpointGroupAssociation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMirroringEndpointGroupAssociation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MirroringEndpointGroupAssociation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMirroringEndpointGroupAssociation(od);
    });
  });

  unittest.group('obj-schema-MirroringEndpointGroupAssociationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMirroringEndpointGroupAssociationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MirroringEndpointGroupAssociationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMirroringEndpointGroupAssociationDetails(od);
    });
  });

  unittest.group(
    'obj-schema-MirroringEndpointGroupAssociationLocationDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildMirroringEndpointGroupAssociationLocationDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .MirroringEndpointGroupAssociationLocationDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkMirroringEndpointGroupAssociationLocationDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-MirroringEndpointGroupConnectedDeploymentGroup',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildMirroringEndpointGroupConnectedDeploymentGroup();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.MirroringEndpointGroupConnectedDeploymentGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkMirroringEndpointGroupConnectedDeploymentGroup(od);
      });
    },
  );

  unittest.group('obj-schema-MirroringLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMirroringLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MirroringLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMirroringLocation(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-RemoveAddressGroupItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveAddressGroupItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveAddressGroupItemsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveAddressGroupItemsRequest(od);
    });
  });

  unittest.group('obj-schema-Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Rule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRule(od);
    });
  });

  unittest.group('obj-schema-SecurityProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityProfile(od);
    });
  });

  unittest.group('obj-schema-SecurityProfileGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityProfileGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityProfileGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityProfileGroup(od);
    });
  });

  unittest.group('obj-schema-ServerTlsPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServerTlsPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServerTlsPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServerTlsPolicy(od);
    });
  });

  unittest.group('obj-schema-SeverityOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeverityOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeverityOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSeverityOverride(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Source.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSource(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-ThreatOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreatOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThreatOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkThreatOverride(od);
    });
  });

  unittest.group('obj-schema-ThreatPreventionProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreatPreventionProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThreatPreventionProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkThreatPreventionProfile(od);
    });
  });

  unittest.group('obj-schema-TlsInspectionPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsInspectionPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsInspectionPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTlsInspectionPolicy(od);
    });
  });

  unittest.group('obj-schema-UrlList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UrlList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUrlList(od);
    });
  });

  unittest.group('obj-schema-ValidationCA', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidationCA();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidationCA.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidationCA(od);
    });
  });

  unittest.group('resource-OrganizationsLocationsAddressGroupsResource', () {
    unittest.test('method--addItems', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.addressGroups;
      final arg_request = buildAddAddressGroupItemsRequest();
      final arg_addressGroup = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddAddressGroupItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddAddressGroupItemsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addItems(
        arg_request,
        arg_addressGroup,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--cloneItems', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.addressGroups;
      final arg_request = buildCloneAddressGroupItemsRequest();
      final arg_addressGroup = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CloneAddressGroupItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCloneAddressGroupItemsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cloneItems(
        arg_request,
        arg_addressGroup,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.addressGroups;
      final arg_request = buildAddressGroup();
      final arg_parent = 'foo';
      final arg_addressGroupId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddressGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddressGroup(obj);

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
            queryMap['addressGroupId']!.first,
            unittest.equals(arg_addressGroupId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        addressGroupId: arg_addressGroupId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.addressGroups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.addressGroups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAddressGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAddressGroup(response as api.AddressGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.addressGroups;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAddressGroupsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListAddressGroupsResponse(response as api.ListAddressGroupsResponse);
    });

    unittest.test('method--listReferences', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.addressGroups;
      final arg_addressGroup = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAddressGroupReferencesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listReferences(
        arg_addressGroup,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAddressGroupReferencesResponse(
        response as api.ListAddressGroupReferencesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.addressGroups;
      final arg_request = buildAddressGroup();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddressGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddressGroup(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--removeItems', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.addressGroups;
      final arg_request = buildRemoveAddressGroupItemsRequest();
      final arg_addressGroup = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RemoveAddressGroupItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRemoveAddressGroupItemsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removeItems(
        arg_request,
        arg_addressGroup,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrganizationsLocationsFirewallEndpointsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).organizations.locations.firewallEndpoints;
      final arg_request = buildFirewallEndpoint();
      final arg_parent = 'foo';
      final arg_firewallEndpointId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FirewallEndpoint.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFirewallEndpoint(obj);

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
            queryMap['firewallEndpointId']!.first,
            unittest.equals(arg_firewallEndpointId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        firewallEndpointId: arg_firewallEndpointId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).organizations.locations.firewallEndpoints;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).organizations.locations.firewallEndpoints;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFirewallEndpoint());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFirewallEndpoint(response as api.FirewallEndpoint);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).organizations.locations.firewallEndpoints;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListFirewallEndpointsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListFirewallEndpointsResponse(
        response as api.ListFirewallEndpointsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).organizations.locations.firewallEndpoints;
      final arg_request = buildFirewallEndpoint();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FirewallEndpoint.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFirewallEndpoint(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrganizationsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-OrganizationsLocationsSecurityProfileGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).organizations.locations.securityProfileGroups;
      final arg_request = buildSecurityProfileGroup();
      final arg_parent = 'foo';
      final arg_securityProfileGroupId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityProfileGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityProfileGroup(obj);

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
            queryMap['securityProfileGroupId']!.first,
            unittest.equals(arg_securityProfileGroupId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        securityProfileGroupId: arg_securityProfileGroupId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).organizations.locations.securityProfileGroups;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).organizations.locations.securityProfileGroups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSecurityProfileGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSecurityProfileGroup(response as api.SecurityProfileGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).organizations.locations.securityProfileGroups;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListSecurityProfileGroupsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSecurityProfileGroupsResponse(
        response as api.ListSecurityProfileGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).organizations.locations.securityProfileGroups;
      final arg_request = buildSecurityProfileGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityProfileGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityProfileGroup(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrganizationsLocationsSecurityProfilesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.securityProfiles;
      final arg_request = buildSecurityProfile();
      final arg_parent = 'foo';
      final arg_securityProfileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityProfile.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityProfile(obj);

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
            queryMap['securityProfileId']!.first,
            unittest.equals(arg_securityProfileId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        securityProfileId: arg_securityProfileId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.securityProfiles;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.securityProfiles;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSecurityProfile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSecurityProfile(response as api.SecurityProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.securityProfiles;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSecurityProfilesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSecurityProfilesResponse(
        response as api.ListSecurityProfilesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).organizations.locations.securityProfiles;
      final arg_request = buildSecurityProfile();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityProfile.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityProfile(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed119();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAddressGroupsResource', () {
    unittest.test('method--addItems', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_request = buildAddAddressGroupItemsRequest();
      final arg_addressGroup = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddAddressGroupItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddAddressGroupItemsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addItems(
        arg_request,
        arg_addressGroup,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--cloneItems', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_request = buildCloneAddressGroupItemsRequest();
      final arg_addressGroup = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CloneAddressGroupItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCloneAddressGroupItemsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cloneItems(
        arg_request,
        arg_addressGroup,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_request = buildAddressGroup();
      final arg_parent = 'foo';
      final arg_addressGroupId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddressGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddressGroup(obj);

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
            queryMap['addressGroupId']!.first,
            unittest.equals(arg_addressGroupId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        addressGroupId: arg_addressGroupId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAddressGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAddressGroup(response as api.AddressGroup);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAddressGroupsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListAddressGroupsResponse(response as api.ListAddressGroupsResponse);
    });

    unittest.test('method--listReferences', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_addressGroup = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAddressGroupReferencesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listReferences(
        arg_addressGroup,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAddressGroupReferencesResponse(
        response as api.ListAddressGroupReferencesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_request = buildAddressGroup();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddressGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddressGroup(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--removeItems', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_request = buildRemoveAddressGroupItemsRequest();
      final arg_addressGroup = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RemoveAddressGroupItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRemoveAddressGroupItemsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removeItems(
        arg_request,
        arg_addressGroup,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.addressGroups;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAuthorizationPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.authorizationPolicies;
      final arg_request = buildAuthorizationPolicy();
      final arg_parent = 'foo';
      final arg_authorizationPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthorizationPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthorizationPolicy(obj);

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
            queryMap['authorizationPolicyId']!.first,
            unittest.equals(arg_authorizationPolicyId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        authorizationPolicyId: arg_authorizationPolicyId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.authorizationPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.authorizationPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuthorizationPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuthorizationPolicy(response as api.AuthorizationPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.authorizationPolicies;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.authorizationPolicies;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAuthorizationPoliciesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAuthorizationPoliciesResponse(
        response as api.ListAuthorizationPoliciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.authorizationPolicies;
      final arg_request = buildAuthorizationPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthorizationPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthorizationPolicy(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.authorizationPolicies;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.authorizationPolicies;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAuthzPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.authzPolicies;
      final arg_request = buildAuthzPolicy();
      final arg_parent = 'foo';
      final arg_authzPolicyId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthzPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthzPolicy(obj);

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
            queryMap['authzPolicyId']!.first,
            unittest.equals(arg_authzPolicyId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        authzPolicyId: arg_authzPolicyId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.authzPolicies;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.authzPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuthzPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuthzPolicy(response as api.AuthzPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.authzPolicies;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.authzPolicies;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAuthzPoliciesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAuthzPoliciesResponse(response as api.ListAuthzPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.authzPolicies;
      final arg_request = buildAuthzPolicy();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthzPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthzPolicy(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.authzPolicies;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.authzPolicies;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsBackendAuthenticationConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.backendAuthenticationConfigs;
      final arg_request = buildBackendAuthenticationConfig();
      final arg_parent = 'foo';
      final arg_backendAuthenticationConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BackendAuthenticationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBackendAuthenticationConfig(obj);

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
            queryMap['backendAuthenticationConfigId']!.first,
            unittest.equals(arg_backendAuthenticationConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        backendAuthenticationConfigId: arg_backendAuthenticationConfigId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.backendAuthenticationConfigs;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.backendAuthenticationConfigs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBackendAuthenticationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBackendAuthenticationConfig(
        response as api.BackendAuthenticationConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.backendAuthenticationConfigs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListBackendAuthenticationConfigsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListBackendAuthenticationConfigsResponse(
        response as api.ListBackendAuthenticationConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.backendAuthenticationConfigs;
      final arg_request = buildBackendAuthenticationConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BackendAuthenticationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBackendAuthenticationConfig(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsClientTlsPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.clientTlsPolicies;
      final arg_request = buildClientTlsPolicy();
      final arg_parent = 'foo';
      final arg_clientTlsPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ClientTlsPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkClientTlsPolicy(obj);

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
            queryMap['clientTlsPolicyId']!.first,
            unittest.equals(arg_clientTlsPolicyId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        clientTlsPolicyId: arg_clientTlsPolicyId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.clientTlsPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.clientTlsPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildClientTlsPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkClientTlsPolicy(response as api.ClientTlsPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.clientTlsPolicies;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.clientTlsPolicies;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListClientTlsPoliciesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListClientTlsPoliciesResponse(
        response as api.ListClientTlsPoliciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.clientTlsPolicies;
      final arg_request = buildClientTlsPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ClientTlsPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkClientTlsPolicy(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.clientTlsPolicies;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.clientTlsPolicies;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsFirewallEndpointAssociationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.firewallEndpointAssociations;
      final arg_request = buildFirewallEndpointAssociation();
      final arg_parent = 'foo';
      final arg_firewallEndpointAssociationId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FirewallEndpointAssociation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFirewallEndpointAssociation(obj);

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
            queryMap['firewallEndpointAssociationId']!.first,
            unittest.equals(arg_firewallEndpointAssociationId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        firewallEndpointAssociationId: arg_firewallEndpointAssociationId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.firewallEndpointAssociations;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.firewallEndpointAssociations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFirewallEndpointAssociation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFirewallEndpointAssociation(
        response as api.FirewallEndpointAssociation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.firewallEndpointAssociations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListFirewallEndpointAssociationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListFirewallEndpointAssociationsResponse(
        response as api.ListFirewallEndpointAssociationsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.firewallEndpointAssociations;
      final arg_request = buildFirewallEndpointAssociation();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FirewallEndpointAssociation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFirewallEndpointAssociation(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsGatewaySecurityPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.gatewaySecurityPolicies;
      final arg_request = buildGatewaySecurityPolicy();
      final arg_parent = 'foo';
      final arg_gatewaySecurityPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GatewaySecurityPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGatewaySecurityPolicy(obj);

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
            queryMap['gatewaySecurityPolicyId']!.first,
            unittest.equals(arg_gatewaySecurityPolicyId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        gatewaySecurityPolicyId: arg_gatewaySecurityPolicyId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.gatewaySecurityPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.gatewaySecurityPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGatewaySecurityPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGatewaySecurityPolicy(response as api.GatewaySecurityPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.gatewaySecurityPolicies;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListGatewaySecurityPoliciesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListGatewaySecurityPoliciesResponse(
        response as api.ListGatewaySecurityPoliciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.gatewaySecurityPolicies;
      final arg_request = buildGatewaySecurityPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GatewaySecurityPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGatewaySecurityPolicy(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsGatewaySecurityPoliciesRulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.gatewaySecurityPolicies.rules;
      final arg_request = buildGatewaySecurityPolicyRule();
      final arg_parent = 'foo';
      final arg_gatewaySecurityPolicyRuleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GatewaySecurityPolicyRule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGatewaySecurityPolicyRule(obj);

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
            queryMap['gatewaySecurityPolicyRuleId']!.first,
            unittest.equals(arg_gatewaySecurityPolicyRuleId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        gatewaySecurityPolicyRuleId: arg_gatewaySecurityPolicyRuleId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.gatewaySecurityPolicies.rules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.gatewaySecurityPolicies.rules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGatewaySecurityPolicyRule());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGatewaySecurityPolicyRule(response as api.GatewaySecurityPolicyRule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.gatewaySecurityPolicies.rules;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListGatewaySecurityPolicyRulesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListGatewaySecurityPolicyRulesResponse(
        response as api.ListGatewaySecurityPolicyRulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.gatewaySecurityPolicies.rules;
      final arg_request = buildGatewaySecurityPolicyRule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GatewaySecurityPolicyRule.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGatewaySecurityPolicyRule(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsInterceptDeploymentGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.interceptDeploymentGroups;
      final arg_request = buildInterceptDeploymentGroup();
      final arg_parent = 'foo';
      final arg_interceptDeploymentGroupId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InterceptDeploymentGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInterceptDeploymentGroup(obj);

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
            queryMap['interceptDeploymentGroupId']!.first,
            unittest.equals(arg_interceptDeploymentGroupId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        interceptDeploymentGroupId: arg_interceptDeploymentGroupId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.interceptDeploymentGroups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.interceptDeploymentGroups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInterceptDeploymentGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInterceptDeploymentGroup(response as api.InterceptDeploymentGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.interceptDeploymentGroups;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListInterceptDeploymentGroupsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListInterceptDeploymentGroupsResponse(
        response as api.ListInterceptDeploymentGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.interceptDeploymentGroups;
      final arg_request = buildInterceptDeploymentGroup();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InterceptDeploymentGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInterceptDeploymentGroup(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsInterceptDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.interceptDeployments;
      final arg_request = buildInterceptDeployment();
      final arg_parent = 'foo';
      final arg_interceptDeploymentId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InterceptDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInterceptDeployment(obj);

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
            queryMap['interceptDeploymentId']!.first,
            unittest.equals(arg_interceptDeploymentId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        interceptDeploymentId: arg_interceptDeploymentId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.interceptDeployments;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.interceptDeployments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInterceptDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInterceptDeployment(response as api.InterceptDeployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.interceptDeployments;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListInterceptDeploymentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListInterceptDeploymentsResponse(
        response as api.ListInterceptDeploymentsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.interceptDeployments;
      final arg_request = buildInterceptDeployment();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InterceptDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInterceptDeployment(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsInterceptEndpointGroupAssociationsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkSecurityApi(
              mock,
            ).projects.locations.interceptEndpointGroupAssociations;
        final arg_request = buildInterceptEndpointGroupAssociation();
        final arg_parent = 'foo';
        final arg_interceptEndpointGroupAssociationId = 'foo';
        final arg_requestId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.InterceptEndpointGroupAssociation.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkInterceptEndpointGroupAssociation(obj);

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
              queryMap['interceptEndpointGroupAssociationId']!.first,
              unittest.equals(arg_interceptEndpointGroupAssociationId),
            );
            unittest.expect(
              queryMap['requestId']!.first,
              unittest.equals(arg_requestId),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          interceptEndpointGroupAssociationId:
              arg_interceptEndpointGroupAssociationId,
          requestId: arg_requestId,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkSecurityApi(
              mock,
            ).projects.locations.interceptEndpointGroupAssociations;
        final arg_name = 'foo';
        final arg_requestId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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
              queryMap['requestId']!.first,
              unittest.equals(arg_requestId),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(
          arg_name,
          requestId: arg_requestId,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkSecurityApi(
              mock,
            ).projects.locations.interceptEndpointGroupAssociations;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildInterceptEndpointGroupAssociation(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkInterceptEndpointGroupAssociation(
          response as api.InterceptEndpointGroupAssociation,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkSecurityApi(
              mock,
            ).projects.locations.interceptEndpointGroupAssociations;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_orderBy = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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
              queryMap['orderBy']!.first,
              unittest.equals(arg_orderBy),
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListInterceptEndpointGroupAssociationsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListInterceptEndpointGroupAssociationsResponse(
          response as api.ListInterceptEndpointGroupAssociationsResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkSecurityApi(
              mock,
            ).projects.locations.interceptEndpointGroupAssociations;
        final arg_request = buildInterceptEndpointGroupAssociation();
        final arg_name = 'foo';
        final arg_requestId = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.InterceptEndpointGroupAssociation.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkInterceptEndpointGroupAssociation(obj);

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
              queryMap['requestId']!.first,
              unittest.equals(arg_requestId),
            );
            unittest.expect(
              queryMap['updateMask']!.first,
              unittest.equals(arg_updateMask),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.patch(
          arg_request,
          arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsInterceptEndpointGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.interceptEndpointGroups;
      final arg_request = buildInterceptEndpointGroup();
      final arg_parent = 'foo';
      final arg_interceptEndpointGroupId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InterceptEndpointGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInterceptEndpointGroup(obj);

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
            queryMap['interceptEndpointGroupId']!.first,
            unittest.equals(arg_interceptEndpointGroupId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        interceptEndpointGroupId: arg_interceptEndpointGroupId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.interceptEndpointGroups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.interceptEndpointGroups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInterceptEndpointGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInterceptEndpointGroup(response as api.InterceptEndpointGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.interceptEndpointGroups;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListInterceptEndpointGroupsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListInterceptEndpointGroupsResponse(
        response as api.ListInterceptEndpointGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.interceptEndpointGroups;
      final arg_request = buildInterceptEndpointGroup();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InterceptEndpointGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInterceptEndpointGroup(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsMirroringDeploymentGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.mirroringDeploymentGroups;
      final arg_request = buildMirroringDeploymentGroup();
      final arg_parent = 'foo';
      final arg_mirroringDeploymentGroupId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MirroringDeploymentGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMirroringDeploymentGroup(obj);

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
            queryMap['mirroringDeploymentGroupId']!.first,
            unittest.equals(arg_mirroringDeploymentGroupId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        mirroringDeploymentGroupId: arg_mirroringDeploymentGroupId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.mirroringDeploymentGroups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.mirroringDeploymentGroups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildMirroringDeploymentGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMirroringDeploymentGroup(response as api.MirroringDeploymentGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.mirroringDeploymentGroups;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListMirroringDeploymentGroupsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListMirroringDeploymentGroupsResponse(
        response as api.ListMirroringDeploymentGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.mirroringDeploymentGroups;
      final arg_request = buildMirroringDeploymentGroup();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MirroringDeploymentGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMirroringDeploymentGroup(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsMirroringDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.mirroringDeployments;
      final arg_request = buildMirroringDeployment();
      final arg_parent = 'foo';
      final arg_mirroringDeploymentId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MirroringDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMirroringDeployment(obj);

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
            queryMap['mirroringDeploymentId']!.first,
            unittest.equals(arg_mirroringDeploymentId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        mirroringDeploymentId: arg_mirroringDeploymentId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.mirroringDeployments;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.mirroringDeployments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildMirroringDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMirroringDeployment(response as api.MirroringDeployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.mirroringDeployments;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListMirroringDeploymentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListMirroringDeploymentsResponse(
        response as api.ListMirroringDeploymentsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.mirroringDeployments;
      final arg_request = buildMirroringDeployment();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MirroringDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMirroringDeployment(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsMirroringEndpointGroupAssociationsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkSecurityApi(
              mock,
            ).projects.locations.mirroringEndpointGroupAssociations;
        final arg_request = buildMirroringEndpointGroupAssociation();
        final arg_parent = 'foo';
        final arg_mirroringEndpointGroupAssociationId = 'foo';
        final arg_requestId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.MirroringEndpointGroupAssociation.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkMirroringEndpointGroupAssociation(obj);

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
              queryMap['mirroringEndpointGroupAssociationId']!.first,
              unittest.equals(arg_mirroringEndpointGroupAssociationId),
            );
            unittest.expect(
              queryMap['requestId']!.first,
              unittest.equals(arg_requestId),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          mirroringEndpointGroupAssociationId:
              arg_mirroringEndpointGroupAssociationId,
          requestId: arg_requestId,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkSecurityApi(
              mock,
            ).projects.locations.mirroringEndpointGroupAssociations;
        final arg_name = 'foo';
        final arg_requestId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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
              queryMap['requestId']!.first,
              unittest.equals(arg_requestId),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(
          arg_name,
          requestId: arg_requestId,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkSecurityApi(
              mock,
            ).projects.locations.mirroringEndpointGroupAssociations;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildMirroringEndpointGroupAssociation(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkMirroringEndpointGroupAssociation(
          response as api.MirroringEndpointGroupAssociation,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkSecurityApi(
              mock,
            ).projects.locations.mirroringEndpointGroupAssociations;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_orderBy = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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
              queryMap['orderBy']!.first,
              unittest.equals(arg_orderBy),
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListMirroringEndpointGroupAssociationsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListMirroringEndpointGroupAssociationsResponse(
          response as api.ListMirroringEndpointGroupAssociationsResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.NetworkSecurityApi(
              mock,
            ).projects.locations.mirroringEndpointGroupAssociations;
        final arg_request = buildMirroringEndpointGroupAssociation();
        final arg_name = 'foo';
        final arg_requestId = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.MirroringEndpointGroupAssociation.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkMirroringEndpointGroupAssociation(obj);

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
              queryMap['requestId']!.first,
              unittest.equals(arg_requestId),
            );
            unittest.expect(
              queryMap['updateMask']!.first,
              unittest.equals(arg_updateMask),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.patch(
          arg_request,
          arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsMirroringEndpointGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.mirroringEndpointGroups;
      final arg_request = buildMirroringEndpointGroup();
      final arg_parent = 'foo';
      final arg_mirroringEndpointGroupId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MirroringEndpointGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMirroringEndpointGroup(obj);

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
            queryMap['mirroringEndpointGroupId']!.first,
            unittest.equals(arg_mirroringEndpointGroupId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        mirroringEndpointGroupId: arg_mirroringEndpointGroupId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.mirroringEndpointGroups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.mirroringEndpointGroups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildMirroringEndpointGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMirroringEndpointGroup(response as api.MirroringEndpointGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.mirroringEndpointGroups;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListMirroringEndpointGroupsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListMirroringEndpointGroupsResponse(
        response as api.ListMirroringEndpointGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(
            mock,
          ).projects.locations.mirroringEndpointGroups;
      final arg_request = buildMirroringEndpointGroup();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MirroringEndpointGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMirroringEndpointGroup(obj);

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServerTlsPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.serverTlsPolicies;
      final arg_request = buildServerTlsPolicy();
      final arg_parent = 'foo';
      final arg_serverTlsPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ServerTlsPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkServerTlsPolicy(obj);

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
            queryMap['serverTlsPolicyId']!.first,
            unittest.equals(arg_serverTlsPolicyId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        serverTlsPolicyId: arg_serverTlsPolicyId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.serverTlsPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.serverTlsPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildServerTlsPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkServerTlsPolicy(response as api.ServerTlsPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.serverTlsPolicies;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.serverTlsPolicies;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListServerTlsPoliciesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListServerTlsPoliciesResponse(
        response as api.ListServerTlsPoliciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.serverTlsPolicies;
      final arg_request = buildServerTlsPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ServerTlsPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkServerTlsPolicy(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.serverTlsPolicies;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.serverTlsPolicies;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsTlsInspectionPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.tlsInspectionPolicies;
      final arg_request = buildTlsInspectionPolicy();
      final arg_parent = 'foo';
      final arg_tlsInspectionPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TlsInspectionPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTlsInspectionPolicy(obj);

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
            queryMap['tlsInspectionPolicyId']!.first,
            unittest.equals(arg_tlsInspectionPolicyId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        tlsInspectionPolicyId: arg_tlsInspectionPolicyId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.tlsInspectionPolicies;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.tlsInspectionPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTlsInspectionPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTlsInspectionPolicy(response as api.TlsInspectionPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.tlsInspectionPolicies;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListTlsInspectionPoliciesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListTlsInspectionPoliciesResponse(
        response as api.ListTlsInspectionPoliciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkSecurityApi(mock).projects.locations.tlsInspectionPolicies;
      final arg_request = buildTlsInspectionPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TlsInspectionPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTlsInspectionPolicy(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsUrlListsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.urlLists;
      final arg_request = buildUrlList();
      final arg_parent = 'foo';
      final arg_urlListId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UrlList.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUrlList(obj);

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
            queryMap['urlListId']!.first,
            unittest.equals(arg_urlListId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        urlListId: arg_urlListId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.urlLists;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.urlLists;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildUrlList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUrlList(response as api.UrlList);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.urlLists;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListUrlListsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListUrlListsResponse(response as api.ListUrlListsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkSecurityApi(mock).projects.locations.urlLists;
      final arg_request = buildUrlList();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UrlList.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUrlList(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });
}
