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

import 'package:googleapis/serviceconsumermanagement/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.Object?> buildUnnamed0() => {
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

void checkUnnamed0(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed1() => {
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

void checkUnnamed1(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed0();
    o.name = 'foo';
    o.response = buildUnnamed1();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed0(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed1(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
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

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed3() => [
  buildUnnamed2(),
  buildUnnamed2(),
];

void checkUnnamed3(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2(o[0]);
  checkUnnamed2(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed3(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<api.V1Beta1QuotaBucket> buildUnnamed4() => [
  buildV1Beta1QuotaBucket(),
  buildV1Beta1QuotaBucket(),
];

void checkUnnamed4(core.List<api.V1Beta1QuotaBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1QuotaBucket(o[0]);
  checkV1Beta1QuotaBucket(o[1]);
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterV1Beta1ConsumerQuotaLimit = 0;
api.V1Beta1ConsumerQuotaLimit buildV1Beta1ConsumerQuotaLimit() {
  final o = api.V1Beta1ConsumerQuotaLimit();
  buildCounterV1Beta1ConsumerQuotaLimit++;
  if (buildCounterV1Beta1ConsumerQuotaLimit < 3) {
    o.isPrecise = true;
    o.metric = 'foo';
    o.name = 'foo';
    o.quotaBuckets = buildUnnamed4();
    o.supportedLocations = buildUnnamed5();
    o.unit = 'foo';
  }
  buildCounterV1Beta1ConsumerQuotaLimit--;
  return o;
}

void checkV1Beta1ConsumerQuotaLimit(api.V1Beta1ConsumerQuotaLimit o) {
  buildCounterV1Beta1ConsumerQuotaLimit++;
  if (buildCounterV1Beta1ConsumerQuotaLimit < 3) {
    unittest.expect(o.isPrecise!, unittest.isTrue);
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed4(o.quotaBuckets!);
    checkUnnamed5(o.supportedLocations!);
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterV1Beta1ConsumerQuotaLimit--;
}

core.List<api.V1Beta1ConsumerQuotaLimit> buildUnnamed6() => [
  buildV1Beta1ConsumerQuotaLimit(),
  buildV1Beta1ConsumerQuotaLimit(),
];

void checkUnnamed6(core.List<api.V1Beta1ConsumerQuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1ConsumerQuotaLimit(o[0]);
  checkV1Beta1ConsumerQuotaLimit(o[1]);
}

core.List<api.V1Beta1ConsumerQuotaLimit> buildUnnamed7() => [
  buildV1Beta1ConsumerQuotaLimit(),
  buildV1Beta1ConsumerQuotaLimit(),
];

void checkUnnamed7(core.List<api.V1Beta1ConsumerQuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1ConsumerQuotaLimit(o[0]);
  checkV1Beta1ConsumerQuotaLimit(o[1]);
}

core.int buildCounterV1Beta1ConsumerQuotaMetric = 0;
api.V1Beta1ConsumerQuotaMetric buildV1Beta1ConsumerQuotaMetric() {
  final o = api.V1Beta1ConsumerQuotaMetric();
  buildCounterV1Beta1ConsumerQuotaMetric++;
  if (buildCounterV1Beta1ConsumerQuotaMetric < 3) {
    o.consumerQuotaLimits = buildUnnamed6();
    o.descendantConsumerQuotaLimits = buildUnnamed7();
    o.displayName = 'foo';
    o.metric = 'foo';
    o.name = 'foo';
    o.unit = 'foo';
  }
  buildCounterV1Beta1ConsumerQuotaMetric--;
  return o;
}

void checkV1Beta1ConsumerQuotaMetric(api.V1Beta1ConsumerQuotaMetric o) {
  buildCounterV1Beta1ConsumerQuotaMetric++;
  if (buildCounterV1Beta1ConsumerQuotaMetric < 3) {
    checkUnnamed6(o.consumerQuotaLimits!);
    checkUnnamed7(o.descendantConsumerQuotaLimits!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterV1Beta1ConsumerQuotaMetric--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterV1Beta1ImportProducerOverridesRequest = 0;
api.V1Beta1ImportProducerOverridesRequest
buildV1Beta1ImportProducerOverridesRequest() {
  final o = api.V1Beta1ImportProducerOverridesRequest();
  buildCounterV1Beta1ImportProducerOverridesRequest++;
  if (buildCounterV1Beta1ImportProducerOverridesRequest < 3) {
    o.force = true;
    o.forceJustification = 'foo';
    o.forceOnly = buildUnnamed8();
    o.inlineSource = buildV1Beta1OverrideInlineSource();
  }
  buildCounterV1Beta1ImportProducerOverridesRequest--;
  return o;
}

void checkV1Beta1ImportProducerOverridesRequest(
  api.V1Beta1ImportProducerOverridesRequest o,
) {
  buildCounterV1Beta1ImportProducerOverridesRequest++;
  if (buildCounterV1Beta1ImportProducerOverridesRequest < 3) {
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(o.forceJustification!, unittest.equals('foo'));
    checkUnnamed8(o.forceOnly!);
    checkV1Beta1OverrideInlineSource(o.inlineSource!);
  }
  buildCounterV1Beta1ImportProducerOverridesRequest--;
}

core.int buildCounterV1Beta1ImportProducerQuotaPoliciesRequest = 0;
api.V1Beta1ImportProducerQuotaPoliciesRequest
buildV1Beta1ImportProducerQuotaPoliciesRequest() {
  final o = api.V1Beta1ImportProducerQuotaPoliciesRequest();
  buildCounterV1Beta1ImportProducerQuotaPoliciesRequest++;
  if (buildCounterV1Beta1ImportProducerQuotaPoliciesRequest < 3) {
    o.force = true;
    o.forceJustification = 'foo';
    o.forceSkipQuotaUsageCheck = true;
    o.inlineSource = buildV1Beta1PolicyInlineSource();
    o.validateOnly = true;
  }
  buildCounterV1Beta1ImportProducerQuotaPoliciesRequest--;
  return o;
}

void checkV1Beta1ImportProducerQuotaPoliciesRequest(
  api.V1Beta1ImportProducerQuotaPoliciesRequest o,
) {
  buildCounterV1Beta1ImportProducerQuotaPoliciesRequest++;
  if (buildCounterV1Beta1ImportProducerQuotaPoliciesRequest < 3) {
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(o.forceJustification!, unittest.equals('foo'));
    unittest.expect(o.forceSkipQuotaUsageCheck!, unittest.isTrue);
    checkV1Beta1PolicyInlineSource(o.inlineSource!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterV1Beta1ImportProducerQuotaPoliciesRequest--;
}

core.List<api.V1Beta1ConsumerQuotaMetric> buildUnnamed9() => [
  buildV1Beta1ConsumerQuotaMetric(),
  buildV1Beta1ConsumerQuotaMetric(),
];

void checkUnnamed9(core.List<api.V1Beta1ConsumerQuotaMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1ConsumerQuotaMetric(o[0]);
  checkV1Beta1ConsumerQuotaMetric(o[1]);
}

core.int buildCounterV1Beta1ListConsumerQuotaMetricsResponse = 0;
api.V1Beta1ListConsumerQuotaMetricsResponse
buildV1Beta1ListConsumerQuotaMetricsResponse() {
  final o = api.V1Beta1ListConsumerQuotaMetricsResponse();
  buildCounterV1Beta1ListConsumerQuotaMetricsResponse++;
  if (buildCounterV1Beta1ListConsumerQuotaMetricsResponse < 3) {
    o.metrics = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterV1Beta1ListConsumerQuotaMetricsResponse--;
  return o;
}

void checkV1Beta1ListConsumerQuotaMetricsResponse(
  api.V1Beta1ListConsumerQuotaMetricsResponse o,
) {
  buildCounterV1Beta1ListConsumerQuotaMetricsResponse++;
  if (buildCounterV1Beta1ListConsumerQuotaMetricsResponse < 3) {
    checkUnnamed9(o.metrics!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterV1Beta1ListConsumerQuotaMetricsResponse--;
}

core.List<api.V1Beta1QuotaOverride> buildUnnamed10() => [
  buildV1Beta1QuotaOverride(),
  buildV1Beta1QuotaOverride(),
];

void checkUnnamed10(core.List<api.V1Beta1QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1QuotaOverride(o[0]);
  checkV1Beta1QuotaOverride(o[1]);
}

core.int buildCounterV1Beta1ListProducerOverridesResponse = 0;
api.V1Beta1ListProducerOverridesResponse
buildV1Beta1ListProducerOverridesResponse() {
  final o = api.V1Beta1ListProducerOverridesResponse();
  buildCounterV1Beta1ListProducerOverridesResponse++;
  if (buildCounterV1Beta1ListProducerOverridesResponse < 3) {
    o.nextPageToken = 'foo';
    o.overrides = buildUnnamed10();
  }
  buildCounterV1Beta1ListProducerOverridesResponse--;
  return o;
}

void checkV1Beta1ListProducerOverridesResponse(
  api.V1Beta1ListProducerOverridesResponse o,
) {
  buildCounterV1Beta1ListProducerOverridesResponse++;
  if (buildCounterV1Beta1ListProducerOverridesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.overrides!);
  }
  buildCounterV1Beta1ListProducerOverridesResponse--;
}

core.List<api.V1Beta1ProducerQuotaPolicy> buildUnnamed11() => [
  buildV1Beta1ProducerQuotaPolicy(),
  buildV1Beta1ProducerQuotaPolicy(),
];

void checkUnnamed11(core.List<api.V1Beta1ProducerQuotaPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1ProducerQuotaPolicy(o[0]);
  checkV1Beta1ProducerQuotaPolicy(o[1]);
}

core.int buildCounterV1Beta1ListProducerQuotaPoliciesResponse = 0;
api.V1Beta1ListProducerQuotaPoliciesResponse
buildV1Beta1ListProducerQuotaPoliciesResponse() {
  final o = api.V1Beta1ListProducerQuotaPoliciesResponse();
  buildCounterV1Beta1ListProducerQuotaPoliciesResponse++;
  if (buildCounterV1Beta1ListProducerQuotaPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.producerQuotaPolicies = buildUnnamed11();
  }
  buildCounterV1Beta1ListProducerQuotaPoliciesResponse--;
  return o;
}

void checkV1Beta1ListProducerQuotaPoliciesResponse(
  api.V1Beta1ListProducerQuotaPoliciesResponse o,
) {
  buildCounterV1Beta1ListProducerQuotaPoliciesResponse++;
  if (buildCounterV1Beta1ListProducerQuotaPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed11(o.producerQuotaPolicies!);
  }
  buildCounterV1Beta1ListProducerQuotaPoliciesResponse--;
}

core.List<api.V1Beta1QuotaOverride> buildUnnamed12() => [
  buildV1Beta1QuotaOverride(),
  buildV1Beta1QuotaOverride(),
];

void checkUnnamed12(core.List<api.V1Beta1QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1QuotaOverride(o[0]);
  checkV1Beta1QuotaOverride(o[1]);
}

core.int buildCounterV1Beta1OverrideInlineSource = 0;
api.V1Beta1OverrideInlineSource buildV1Beta1OverrideInlineSource() {
  final o = api.V1Beta1OverrideInlineSource();
  buildCounterV1Beta1OverrideInlineSource++;
  if (buildCounterV1Beta1OverrideInlineSource < 3) {
    o.overrides = buildUnnamed12();
  }
  buildCounterV1Beta1OverrideInlineSource--;
  return o;
}

void checkV1Beta1OverrideInlineSource(api.V1Beta1OverrideInlineSource o) {
  buildCounterV1Beta1OverrideInlineSource++;
  if (buildCounterV1Beta1OverrideInlineSource < 3) {
    checkUnnamed12(o.overrides!);
  }
  buildCounterV1Beta1OverrideInlineSource--;
}

core.List<api.V1Beta1ProducerQuotaPolicy> buildUnnamed13() => [
  buildV1Beta1ProducerQuotaPolicy(),
  buildV1Beta1ProducerQuotaPolicy(),
];

void checkUnnamed13(core.List<api.V1Beta1ProducerQuotaPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1ProducerQuotaPolicy(o[0]);
  checkV1Beta1ProducerQuotaPolicy(o[1]);
}

core.int buildCounterV1Beta1PolicyInlineSource = 0;
api.V1Beta1PolicyInlineSource buildV1Beta1PolicyInlineSource() {
  final o = api.V1Beta1PolicyInlineSource();
  buildCounterV1Beta1PolicyInlineSource++;
  if (buildCounterV1Beta1PolicyInlineSource < 3) {
    o.policies = buildUnnamed13();
  }
  buildCounterV1Beta1PolicyInlineSource--;
  return o;
}

void checkV1Beta1PolicyInlineSource(api.V1Beta1PolicyInlineSource o) {
  buildCounterV1Beta1PolicyInlineSource++;
  if (buildCounterV1Beta1PolicyInlineSource < 3) {
    checkUnnamed13(o.policies!);
  }
  buildCounterV1Beta1PolicyInlineSource--;
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterV1Beta1ProducerQuotaPolicy = 0;
api.V1Beta1ProducerQuotaPolicy buildV1Beta1ProducerQuotaPolicy() {
  final o = api.V1Beta1ProducerQuotaPolicy();
  buildCounterV1Beta1ProducerQuotaPolicy++;
  if (buildCounterV1Beta1ProducerQuotaPolicy < 3) {
    o.container = 'foo';
    o.dimensions = buildUnnamed14();
    o.metric = 'foo';
    o.name = 'foo';
    o.policyValue = 'foo';
    o.unit = 'foo';
  }
  buildCounterV1Beta1ProducerQuotaPolicy--;
  return o;
}

void checkV1Beta1ProducerQuotaPolicy(api.V1Beta1ProducerQuotaPolicy o) {
  buildCounterV1Beta1ProducerQuotaPolicy++;
  if (buildCounterV1Beta1ProducerQuotaPolicy < 3) {
    unittest.expect(o.container!, unittest.equals('foo'));
    checkUnnamed14(o.dimensions!);
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.policyValue!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterV1Beta1ProducerQuotaPolicy--;
}

core.Map<core.String, core.String> buildUnnamed15() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed15(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterV1Beta1QuotaBucket = 0;
api.V1Beta1QuotaBucket buildV1Beta1QuotaBucket() {
  final o = api.V1Beta1QuotaBucket();
  buildCounterV1Beta1QuotaBucket++;
  if (buildCounterV1Beta1QuotaBucket < 3) {
    o.adminOverride = buildV1Beta1QuotaOverride();
    o.consumerOverride = buildV1Beta1QuotaOverride();
    o.defaultLimit = 'foo';
    o.dimensions = buildUnnamed15();
    o.effectiveLimit = 'foo';
    o.producerOverride = buildV1Beta1QuotaOverride();
    o.producerQuotaPolicy = buildV1Beta1ProducerQuotaPolicy();
    o.rolloutInfo = buildV1Beta1RolloutInfo();
  }
  buildCounterV1Beta1QuotaBucket--;
  return o;
}

void checkV1Beta1QuotaBucket(api.V1Beta1QuotaBucket o) {
  buildCounterV1Beta1QuotaBucket++;
  if (buildCounterV1Beta1QuotaBucket < 3) {
    checkV1Beta1QuotaOverride(o.adminOverride!);
    checkV1Beta1QuotaOverride(o.consumerOverride!);
    unittest.expect(o.defaultLimit!, unittest.equals('foo'));
    checkUnnamed15(o.dimensions!);
    unittest.expect(o.effectiveLimit!, unittest.equals('foo'));
    checkV1Beta1QuotaOverride(o.producerOverride!);
    checkV1Beta1ProducerQuotaPolicy(o.producerQuotaPolicy!);
    checkV1Beta1RolloutInfo(o.rolloutInfo!);
  }
  buildCounterV1Beta1QuotaBucket--;
}

core.Map<core.String, core.String> buildUnnamed16() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed16(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterV1Beta1QuotaOverride = 0;
api.V1Beta1QuotaOverride buildV1Beta1QuotaOverride() {
  final o = api.V1Beta1QuotaOverride();
  buildCounterV1Beta1QuotaOverride++;
  if (buildCounterV1Beta1QuotaOverride < 3) {
    o.adminOverrideAncestor = 'foo';
    o.dimensions = buildUnnamed16();
    o.metric = 'foo';
    o.name = 'foo';
    o.overrideValue = 'foo';
    o.unit = 'foo';
  }
  buildCounterV1Beta1QuotaOverride--;
  return o;
}

void checkV1Beta1QuotaOverride(api.V1Beta1QuotaOverride o) {
  buildCounterV1Beta1QuotaOverride++;
  if (buildCounterV1Beta1QuotaOverride < 3) {
    unittest.expect(o.adminOverrideAncestor!, unittest.equals('foo'));
    checkUnnamed16(o.dimensions!);
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.overrideValue!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterV1Beta1QuotaOverride--;
}

core.int buildCounterV1Beta1RolloutInfo = 0;
api.V1Beta1RolloutInfo buildV1Beta1RolloutInfo() {
  final o = api.V1Beta1RolloutInfo();
  buildCounterV1Beta1RolloutInfo++;
  if (buildCounterV1Beta1RolloutInfo < 3) {
    o.defaultLimitOngoingRollout = true;
  }
  buildCounterV1Beta1RolloutInfo--;
  return o;
}

void checkV1Beta1RolloutInfo(api.V1Beta1RolloutInfo o) {
  buildCounterV1Beta1RolloutInfo++;
  if (buildCounterV1Beta1RolloutInfo < 3) {
    unittest.expect(o.defaultLimitOngoingRollout!, unittest.isTrue);
  }
  buildCounterV1Beta1RolloutInfo--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
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

  unittest.group('obj-schema-V1Beta1ConsumerQuotaLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1ConsumerQuotaLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1ConsumerQuotaLimit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1ConsumerQuotaLimit(od);
    });
  });

  unittest.group('obj-schema-V1Beta1ConsumerQuotaMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1ConsumerQuotaMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1ConsumerQuotaMetric.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1ConsumerQuotaMetric(od);
    });
  });

  unittest.group('obj-schema-V1Beta1ImportProducerOverridesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1ImportProducerOverridesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1ImportProducerOverridesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1ImportProducerOverridesRequest(od);
    });
  });

  unittest.group('obj-schema-V1Beta1ImportProducerQuotaPoliciesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1ImportProducerQuotaPoliciesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1ImportProducerQuotaPoliciesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1ImportProducerQuotaPoliciesRequest(od);
    });
  });

  unittest.group('obj-schema-V1Beta1ListConsumerQuotaMetricsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1ListConsumerQuotaMetricsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1ListConsumerQuotaMetricsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1ListConsumerQuotaMetricsResponse(od);
    });
  });

  unittest.group('obj-schema-V1Beta1ListProducerOverridesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1ListProducerOverridesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1ListProducerOverridesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1ListProducerOverridesResponse(od);
    });
  });

  unittest.group('obj-schema-V1Beta1ListProducerQuotaPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1ListProducerQuotaPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1ListProducerQuotaPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1ListProducerQuotaPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-V1Beta1OverrideInlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1OverrideInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1OverrideInlineSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1OverrideInlineSource(od);
    });
  });

  unittest.group('obj-schema-V1Beta1PolicyInlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1PolicyInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1PolicyInlineSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1PolicyInlineSource(od);
    });
  });

  unittest.group('obj-schema-V1Beta1ProducerQuotaPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1ProducerQuotaPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1ProducerQuotaPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1ProducerQuotaPolicy(od);
    });
  });

  unittest.group('obj-schema-V1Beta1QuotaBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1QuotaBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1QuotaBucket.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1QuotaBucket(od);
    });
  });

  unittest.group('obj-schema-V1Beta1QuotaOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1QuotaOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1QuotaOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1QuotaOverride(od);
    });
  });

  unittest.group('obj-schema-V1Beta1RolloutInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Beta1RolloutInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V1Beta1RolloutInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkV1Beta1RolloutInfo(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ServiceConsumerManagementApi(mock).operations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
  });

  unittest.group('resource-ServicesConsumerQuotaMetricsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ServiceConsumerManagementApi(mock).services.consumerQuotaMetrics;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildV1Beta1ConsumerQuotaMetric());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkV1Beta1ConsumerQuotaMetric(
        response as api.V1Beta1ConsumerQuotaMetric,
      );
    });

    unittest.test('method--importProducerOverrides', () async {
      final mock = HttpServerMock();
      final res =
          api.ServiceConsumerManagementApi(mock).services.consumerQuotaMetrics;
      final arg_request = buildV1Beta1ImportProducerOverridesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.V1Beta1ImportProducerOverridesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkV1Beta1ImportProducerOverridesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.importProducerOverrides(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--importProducerQuotaPolicies', () async {
      final mock = HttpServerMock();
      final res =
          api.ServiceConsumerManagementApi(mock).services.consumerQuotaMetrics;
      final arg_request = buildV1Beta1ImportProducerQuotaPoliciesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.V1Beta1ImportProducerQuotaPoliciesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkV1Beta1ImportProducerQuotaPoliciesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.importProducerQuotaPolicies(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ServiceConsumerManagementApi(mock).services.consumerQuotaMetrics;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildV1Beta1ListConsumerQuotaMetricsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkV1Beta1ListConsumerQuotaMetricsResponse(
        response as api.V1Beta1ListConsumerQuotaMetricsResponse,
      );
    });
  });

  unittest.group('resource-ServicesConsumerQuotaMetricsLimitsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ServiceConsumerManagementApi(
            mock,
          ).services.consumerQuotaMetrics.limits;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildV1Beta1ConsumerQuotaLimit());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkV1Beta1ConsumerQuotaLimit(response as api.V1Beta1ConsumerQuotaLimit);
    });
  });

  unittest.group(
    'resource-ServicesConsumerQuotaMetricsLimitsProducerOverridesResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceConsumerManagementApi(
              mock,
            ).services.consumerQuotaMetrics.limits.producerOverrides;
        final arg_request = buildV1Beta1QuotaOverride();
        final arg_parent = 'foo';
        final arg_force = true;
        final arg_forceJustification = 'foo';
        final arg_forceOnly = buildUnnamed17();
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.V1Beta1QuotaOverride.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkV1Beta1QuotaOverride(obj);

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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
            );
            pathOffset += 8;
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
              queryMap['forceJustification']!.first,
              unittest.equals(arg_forceJustification),
            );
            unittest.expect(
              queryMap['forceOnly']!,
              unittest.equals(arg_forceOnly),
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
          force: arg_force,
          forceJustification: arg_forceJustification,
          forceOnly: arg_forceOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceConsumerManagementApi(
              mock,
            ).services.consumerQuotaMetrics.limits.producerOverrides;
        final arg_name = 'foo';
        final arg_force = true;
        final arg_forceJustification = 'foo';
        final arg_forceOnly = buildUnnamed18();
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
            );
            pathOffset += 8;
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
              queryMap['forceJustification']!.first,
              unittest.equals(arg_forceJustification),
            );
            unittest.expect(
              queryMap['forceOnly']!,
              unittest.equals(arg_forceOnly),
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
          forceJustification: arg_forceJustification,
          forceOnly: arg_forceOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceConsumerManagementApi(
              mock,
            ).services.consumerQuotaMetrics.limits.producerOverrides;
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
            );
            pathOffset += 8;
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
              buildV1Beta1ListProducerOverridesResponse(),
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
        checkV1Beta1ListProducerOverridesResponse(
          response as api.V1Beta1ListProducerOverridesResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceConsumerManagementApi(
              mock,
            ).services.consumerQuotaMetrics.limits.producerOverrides;
        final arg_request = buildV1Beta1QuotaOverride();
        final arg_name = 'foo';
        final arg_force = true;
        final arg_forceJustification = 'foo';
        final arg_forceOnly = buildUnnamed19();
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.V1Beta1QuotaOverride.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkV1Beta1QuotaOverride(obj);

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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
            );
            pathOffset += 8;
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
              queryMap['forceJustification']!.first,
              unittest.equals(arg_forceJustification),
            );
            unittest.expect(
              queryMap['forceOnly']!,
              unittest.equals(arg_forceOnly),
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
          force: arg_force,
          forceJustification: arg_forceJustification,
          forceOnly: arg_forceOnly,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });
    },
  );

  unittest.group(
    'resource-ServicesConsumerQuotaMetricsLimitsProducerQuotaPoliciesResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceConsumerManagementApi(
              mock,
            ).services.consumerQuotaMetrics.limits.producerQuotaPolicies;
        final arg_request = buildV1Beta1ProducerQuotaPolicy();
        final arg_parent = 'foo';
        final arg_force = true;
        final arg_forceJustification = 'foo';
        final arg_validateOnly = true;
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.V1Beta1ProducerQuotaPolicy.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkV1Beta1ProducerQuotaPolicy(obj);

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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
            );
            pathOffset += 8;
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
              queryMap['forceJustification']!.first,
              unittest.equals(arg_forceJustification),
            );
            unittest.expect(
              queryMap['validateOnly']!.first,
              unittest.equals('$arg_validateOnly'),
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
          force: arg_force,
          forceJustification: arg_forceJustification,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceConsumerManagementApi(
              mock,
            ).services.consumerQuotaMetrics.limits.producerQuotaPolicies;
        final arg_name = 'foo';
        final arg_force = true;
        final arg_forceJustification = 'foo';
        final arg_validateOnly = true;
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
            );
            pathOffset += 8;
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
              queryMap['forceJustification']!.first,
              unittest.equals(arg_forceJustification),
            );
            unittest.expect(
              queryMap['validateOnly']!.first,
              unittest.equals('$arg_validateOnly'),
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
          forceJustification: arg_forceJustification,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceConsumerManagementApi(
              mock,
            ).services.consumerQuotaMetrics.limits.producerQuotaPolicies;
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
            );
            pathOffset += 8;
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
              buildV1Beta1ListProducerQuotaPoliciesResponse(),
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
        checkV1Beta1ListProducerQuotaPoliciesResponse(
          response as api.V1Beta1ListProducerQuotaPoliciesResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceConsumerManagementApi(
              mock,
            ).services.consumerQuotaMetrics.limits.producerQuotaPolicies;
        final arg_request = buildV1Beta1ProducerQuotaPolicy();
        final arg_name = 'foo';
        final arg_force = true;
        final arg_forceJustification = 'foo';
        final arg_updateMask = 'foo';
        final arg_validateOnly = true;
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.V1Beta1ProducerQuotaPolicy.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkV1Beta1ProducerQuotaPolicy(obj);

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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta1/'),
            );
            pathOffset += 8;
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
              queryMap['forceJustification']!.first,
              unittest.equals(arg_forceJustification),
            );
            unittest.expect(
              queryMap['updateMask']!.first,
              unittest.equals(arg_updateMask),
            );
            unittest.expect(
              queryMap['validateOnly']!.first,
              unittest.equals('$arg_validateOnly'),
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
          force: arg_force,
          forceJustification: arg_forceJustification,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });
    },
  );
}
