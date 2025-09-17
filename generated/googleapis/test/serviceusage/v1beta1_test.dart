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

import 'package:googleapis/serviceusage/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Method> buildUnnamed0() => [buildMethod(), buildMethod()];

void checkUnnamed0(core.List<api.Method> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethod(o[0]);
  checkMethod(o[1]);
}

core.List<api.Mixin> buildUnnamed1() => [buildMixin(), buildMixin()];

void checkUnnamed1(core.List<api.Mixin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMixin(o[0]);
  checkMixin(o[1]);
}

core.List<api.Option> buildUnnamed2() => [buildOption(), buildOption()];

void checkUnnamed2(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterApi = 0;
api.Api buildApi() {
  final o = api.Api();
  buildCounterApi++;
  if (buildCounterApi < 3) {
    o.methods = buildUnnamed0();
    o.mixins = buildUnnamed1();
    o.name = 'foo';
    o.options = buildUnnamed2();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
    o.version = 'foo';
  }
  buildCounterApi--;
  return o;
}

void checkApi(api.Api o) {
  buildCounterApi++;
  if (buildCounterApi < 3) {
    checkUnnamed0(o.methods!);
    checkUnnamed1(o.mixins!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed2(o.options!);
    checkSourceContext(o.sourceContext!);
    unittest.expect(o.syntax!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterApi--;
}

core.List<api.JwtLocation> buildUnnamed3() => [
  buildJwtLocation(),
  buildJwtLocation(),
];

void checkUnnamed3(core.List<api.JwtLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwtLocation(o[0]);
  checkJwtLocation(o[1]);
}

core.int buildCounterAuthProvider = 0;
api.AuthProvider buildAuthProvider() {
  final o = api.AuthProvider();
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    o.audiences = 'foo';
    o.authorizationUrl = 'foo';
    o.id = 'foo';
    o.issuer = 'foo';
    o.jwksUri = 'foo';
    o.jwtLocations = buildUnnamed3();
  }
  buildCounterAuthProvider--;
  return o;
}

void checkAuthProvider(api.AuthProvider o) {
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    unittest.expect(o.audiences!, unittest.equals('foo'));
    unittest.expect(o.authorizationUrl!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.issuer!, unittest.equals('foo'));
    unittest.expect(o.jwksUri!, unittest.equals('foo'));
    checkUnnamed3(o.jwtLocations!);
  }
  buildCounterAuthProvider--;
}

core.int buildCounterAuthRequirement = 0;
api.AuthRequirement buildAuthRequirement() {
  final o = api.AuthRequirement();
  buildCounterAuthRequirement++;
  if (buildCounterAuthRequirement < 3) {
    o.audiences = 'foo';
    o.providerId = 'foo';
  }
  buildCounterAuthRequirement--;
  return o;
}

void checkAuthRequirement(api.AuthRequirement o) {
  buildCounterAuthRequirement++;
  if (buildCounterAuthRequirement < 3) {
    unittest.expect(o.audiences!, unittest.equals('foo'));
    unittest.expect(o.providerId!, unittest.equals('foo'));
  }
  buildCounterAuthRequirement--;
}

core.List<api.AuthProvider> buildUnnamed4() => [
  buildAuthProvider(),
  buildAuthProvider(),
];

void checkUnnamed4(core.List<api.AuthProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProvider(o[0]);
  checkAuthProvider(o[1]);
}

core.List<api.AuthenticationRule> buildUnnamed5() => [
  buildAuthenticationRule(),
  buildAuthenticationRule(),
];

void checkUnnamed5(core.List<api.AuthenticationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthenticationRule(o[0]);
  checkAuthenticationRule(o[1]);
}

core.int buildCounterAuthentication = 0;
api.Authentication buildAuthentication() {
  final o = api.Authentication();
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    o.providers = buildUnnamed4();
    o.rules = buildUnnamed5();
  }
  buildCounterAuthentication--;
  return o;
}

void checkAuthentication(api.Authentication o) {
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    checkUnnamed4(o.providers!);
    checkUnnamed5(o.rules!);
  }
  buildCounterAuthentication--;
}

core.List<api.AuthRequirement> buildUnnamed6() => [
  buildAuthRequirement(),
  buildAuthRequirement(),
];

void checkUnnamed6(core.List<api.AuthRequirement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthRequirement(o[0]);
  checkAuthRequirement(o[1]);
}

core.int buildCounterAuthenticationRule = 0;
api.AuthenticationRule buildAuthenticationRule() {
  final o = api.AuthenticationRule();
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    o.allowWithoutCredential = true;
    o.oauth = buildOAuthRequirements();
    o.requirements = buildUnnamed6();
    o.selector = 'foo';
  }
  buildCounterAuthenticationRule--;
  return o;
}

void checkAuthenticationRule(api.AuthenticationRule o) {
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    unittest.expect(o.allowWithoutCredential!, unittest.isTrue);
    checkOAuthRequirements(o.oauth!);
    checkUnnamed6(o.requirements!);
    unittest.expect(o.selector!, unittest.equals('foo'));
  }
  buildCounterAuthenticationRule--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchEnableServicesRequest = 0;
api.BatchEnableServicesRequest buildBatchEnableServicesRequest() {
  final o = api.BatchEnableServicesRequest();
  buildCounterBatchEnableServicesRequest++;
  if (buildCounterBatchEnableServicesRequest < 3) {
    o.serviceIds = buildUnnamed7();
  }
  buildCounterBatchEnableServicesRequest--;
  return o;
}

void checkBatchEnableServicesRequest(api.BatchEnableServicesRequest o) {
  buildCounterBatchEnableServicesRequest++;
  if (buildCounterBatchEnableServicesRequest < 3) {
    checkUnnamed7(o.serviceIds!);
  }
  buildCounterBatchEnableServicesRequest--;
}

core.List<api.QuotaBucket> buildUnnamed8() => [
  buildQuotaBucket(),
  buildQuotaBucket(),
];

void checkUnnamed8(core.List<api.QuotaBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaBucket(o[0]);
  checkQuotaBucket(o[1]);
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConsumerQuotaLimit = 0;
api.ConsumerQuotaLimit buildConsumerQuotaLimit() {
  final o = api.ConsumerQuotaLimit();
  buildCounterConsumerQuotaLimit++;
  if (buildCounterConsumerQuotaLimit < 3) {
    o.allowsAdminOverrides = true;
    o.isPrecise = true;
    o.metric = 'foo';
    o.name = 'foo';
    o.quotaBuckets = buildUnnamed8();
    o.supportedLocations = buildUnnamed9();
    o.unit = 'foo';
  }
  buildCounterConsumerQuotaLimit--;
  return o;
}

void checkConsumerQuotaLimit(api.ConsumerQuotaLimit o) {
  buildCounterConsumerQuotaLimit++;
  if (buildCounterConsumerQuotaLimit < 3) {
    unittest.expect(o.allowsAdminOverrides!, unittest.isTrue);
    unittest.expect(o.isPrecise!, unittest.isTrue);
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed8(o.quotaBuckets!);
    checkUnnamed9(o.supportedLocations!);
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterConsumerQuotaLimit--;
}

core.List<api.ConsumerQuotaLimit> buildUnnamed10() => [
  buildConsumerQuotaLimit(),
  buildConsumerQuotaLimit(),
];

void checkUnnamed10(core.List<api.ConsumerQuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsumerQuotaLimit(o[0]);
  checkConsumerQuotaLimit(o[1]);
}

core.List<api.ConsumerQuotaLimit> buildUnnamed11() => [
  buildConsumerQuotaLimit(),
  buildConsumerQuotaLimit(),
];

void checkUnnamed11(core.List<api.ConsumerQuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsumerQuotaLimit(o[0]);
  checkConsumerQuotaLimit(o[1]);
}

core.int buildCounterConsumerQuotaMetric = 0;
api.ConsumerQuotaMetric buildConsumerQuotaMetric() {
  final o = api.ConsumerQuotaMetric();
  buildCounterConsumerQuotaMetric++;
  if (buildCounterConsumerQuotaMetric < 3) {
    o.consumerQuotaLimits = buildUnnamed10();
    o.descendantConsumerQuotaLimits = buildUnnamed11();
    o.displayName = 'foo';
    o.metric = 'foo';
    o.name = 'foo';
    o.unit = 'foo';
  }
  buildCounterConsumerQuotaMetric--;
  return o;
}

void checkConsumerQuotaMetric(api.ConsumerQuotaMetric o) {
  buildCounterConsumerQuotaMetric++;
  if (buildCounterConsumerQuotaMetric < 3) {
    checkUnnamed10(o.consumerQuotaLimits!);
    checkUnnamed11(o.descendantConsumerQuotaLimits!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterConsumerQuotaMetric--;
}

core.int buildCounterDisableServiceRequest = 0;
api.DisableServiceRequest buildDisableServiceRequest() {
  final o = api.DisableServiceRequest();
  buildCounterDisableServiceRequest++;
  if (buildCounterDisableServiceRequest < 3) {}
  buildCounterDisableServiceRequest--;
  return o;
}

void checkDisableServiceRequest(api.DisableServiceRequest o) {
  buildCounterDisableServiceRequest++;
  if (buildCounterDisableServiceRequest < 3) {}
  buildCounterDisableServiceRequest--;
}

core.List<api.Page> buildUnnamed12() => [buildPage(), buildPage()];

void checkUnnamed12(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.List<api.DocumentationRule> buildUnnamed13() => [
  buildDocumentationRule(),
  buildDocumentationRule(),
];

void checkUnnamed13(core.List<api.DocumentationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocumentationRule(o[0]);
  checkDocumentationRule(o[1]);
}

core.List<api.Page> buildUnnamed14() => [buildPage(), buildPage()];

void checkUnnamed14(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterDocumentation = 0;
api.Documentation buildDocumentation() {
  final o = api.Documentation();
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    o.additionalIamInfo = 'foo';
    o.documentationRootUrl = 'foo';
    o.overview = 'foo';
    o.pages = buildUnnamed12();
    o.rules = buildUnnamed13();
    o.sectionOverrides = buildUnnamed14();
    o.serviceRootUrl = 'foo';
    o.summary = 'foo';
  }
  buildCounterDocumentation--;
  return o;
}

void checkDocumentation(api.Documentation o) {
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    unittest.expect(o.additionalIamInfo!, unittest.equals('foo'));
    unittest.expect(o.documentationRootUrl!, unittest.equals('foo'));
    unittest.expect(o.overview!, unittest.equals('foo'));
    checkUnnamed12(o.pages!);
    checkUnnamed13(o.rules!);
    checkUnnamed14(o.sectionOverrides!);
    unittest.expect(o.serviceRootUrl!, unittest.equals('foo'));
    unittest.expect(o.summary!, unittest.equals('foo'));
  }
  buildCounterDocumentation--;
}

core.int buildCounterDocumentationRule = 0;
api.DocumentationRule buildDocumentationRule() {
  final o = api.DocumentationRule();
  buildCounterDocumentationRule++;
  if (buildCounterDocumentationRule < 3) {
    o.deprecationDescription = 'foo';
    o.description = 'foo';
    o.disableReplacementWords = 'foo';
    o.selector = 'foo';
  }
  buildCounterDocumentationRule--;
  return o;
}

void checkDocumentationRule(api.DocumentationRule o) {
  buildCounterDocumentationRule++;
  if (buildCounterDocumentationRule < 3) {
    unittest.expect(o.deprecationDescription!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.disableReplacementWords!, unittest.equals('foo'));
    unittest.expect(o.selector!, unittest.equals('foo'));
  }
  buildCounterDocumentationRule--;
}

core.int buildCounterEnableServiceRequest = 0;
api.EnableServiceRequest buildEnableServiceRequest() {
  final o = api.EnableServiceRequest();
  buildCounterEnableServiceRequest++;
  if (buildCounterEnableServiceRequest < 3) {}
  buildCounterEnableServiceRequest--;
  return o;
}

void checkEnableServiceRequest(api.EnableServiceRequest o) {
  buildCounterEnableServiceRequest++;
  if (buildCounterEnableServiceRequest < 3) {}
  buildCounterEnableServiceRequest--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEndpoint = 0;
api.Endpoint buildEndpoint() {
  final o = api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    o.aliases = buildUnnamed15();
    o.allowCors = true;
    o.name = 'foo';
    o.target = 'foo';
  }
  buildCounterEndpoint--;
  return o;
}

void checkEndpoint(api.Endpoint o) {
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    checkUnnamed15(o.aliases!);
    unittest.expect(o.allowCors!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.target!, unittest.equals('foo'));
  }
  buildCounterEndpoint--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterImportAdminOverridesRequest = 0;
api.ImportAdminOverridesRequest buildImportAdminOverridesRequest() {
  final o = api.ImportAdminOverridesRequest();
  buildCounterImportAdminOverridesRequest++;
  if (buildCounterImportAdminOverridesRequest < 3) {
    o.force = true;
    o.forceOnly = buildUnnamed16();
    o.inlineSource = buildOverrideInlineSource();
  }
  buildCounterImportAdminOverridesRequest--;
  return o;
}

void checkImportAdminOverridesRequest(api.ImportAdminOverridesRequest o) {
  buildCounterImportAdminOverridesRequest++;
  if (buildCounterImportAdminOverridesRequest < 3) {
    unittest.expect(o.force!, unittest.isTrue);
    checkUnnamed16(o.forceOnly!);
    checkOverrideInlineSource(o.inlineSource!);
  }
  buildCounterImportAdminOverridesRequest--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterImportConsumerOverridesRequest = 0;
api.ImportConsumerOverridesRequest buildImportConsumerOverridesRequest() {
  final o = api.ImportConsumerOverridesRequest();
  buildCounterImportConsumerOverridesRequest++;
  if (buildCounterImportConsumerOverridesRequest < 3) {
    o.force = true;
    o.forceOnly = buildUnnamed17();
    o.inlineSource = buildOverrideInlineSource();
  }
  buildCounterImportConsumerOverridesRequest--;
  return o;
}

void checkImportConsumerOverridesRequest(api.ImportConsumerOverridesRequest o) {
  buildCounterImportConsumerOverridesRequest++;
  if (buildCounterImportConsumerOverridesRequest < 3) {
    unittest.expect(o.force!, unittest.isTrue);
    checkUnnamed17(o.forceOnly!);
    checkOverrideInlineSource(o.inlineSource!);
  }
  buildCounterImportConsumerOverridesRequest--;
}

core.int buildCounterJwtLocation = 0;
api.JwtLocation buildJwtLocation() {
  final o = api.JwtLocation();
  buildCounterJwtLocation++;
  if (buildCounterJwtLocation < 3) {
    o.cookie = 'foo';
    o.header = 'foo';
    o.query = 'foo';
    o.valuePrefix = 'foo';
  }
  buildCounterJwtLocation--;
  return o;
}

void checkJwtLocation(api.JwtLocation o) {
  buildCounterJwtLocation++;
  if (buildCounterJwtLocation < 3) {
    unittest.expect(o.cookie!, unittest.equals('foo'));
    unittest.expect(o.header!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.valuePrefix!, unittest.equals('foo'));
  }
  buildCounterJwtLocation--;
}

core.int buildCounterLabelDescriptor = 0;
api.LabelDescriptor buildLabelDescriptor() {
  final o = api.LabelDescriptor();
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    o.description = 'foo';
    o.key = 'foo';
    o.valueType = 'foo';
  }
  buildCounterLabelDescriptor--;
  return o;
}

void checkLabelDescriptor(api.LabelDescriptor o) {
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.valueType!, unittest.equals('foo'));
  }
  buildCounterLabelDescriptor--;
}

core.List<api.QuotaOverride> buildUnnamed18() => [
  buildQuotaOverride(),
  buildQuotaOverride(),
];

void checkUnnamed18(core.List<api.QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaOverride(o[0]);
  checkQuotaOverride(o[1]);
}

core.int buildCounterListAdminOverridesResponse = 0;
api.ListAdminOverridesResponse buildListAdminOverridesResponse() {
  final o = api.ListAdminOverridesResponse();
  buildCounterListAdminOverridesResponse++;
  if (buildCounterListAdminOverridesResponse < 3) {
    o.nextPageToken = 'foo';
    o.overrides = buildUnnamed18();
  }
  buildCounterListAdminOverridesResponse--;
  return o;
}

void checkListAdminOverridesResponse(api.ListAdminOverridesResponse o) {
  buildCounterListAdminOverridesResponse++;
  if (buildCounterListAdminOverridesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed18(o.overrides!);
  }
  buildCounterListAdminOverridesResponse--;
}

core.List<api.QuotaOverride> buildUnnamed19() => [
  buildQuotaOverride(),
  buildQuotaOverride(),
];

void checkUnnamed19(core.List<api.QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaOverride(o[0]);
  checkQuotaOverride(o[1]);
}

core.int buildCounterListConsumerOverridesResponse = 0;
api.ListConsumerOverridesResponse buildListConsumerOverridesResponse() {
  final o = api.ListConsumerOverridesResponse();
  buildCounterListConsumerOverridesResponse++;
  if (buildCounterListConsumerOverridesResponse < 3) {
    o.nextPageToken = 'foo';
    o.overrides = buildUnnamed19();
  }
  buildCounterListConsumerOverridesResponse--;
  return o;
}

void checkListConsumerOverridesResponse(api.ListConsumerOverridesResponse o) {
  buildCounterListConsumerOverridesResponse++;
  if (buildCounterListConsumerOverridesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed19(o.overrides!);
  }
  buildCounterListConsumerOverridesResponse--;
}

core.List<api.ConsumerQuotaMetric> buildUnnamed20() => [
  buildConsumerQuotaMetric(),
  buildConsumerQuotaMetric(),
];

void checkUnnamed20(core.List<api.ConsumerQuotaMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsumerQuotaMetric(o[0]);
  checkConsumerQuotaMetric(o[1]);
}

core.int buildCounterListConsumerQuotaMetricsResponse = 0;
api.ListConsumerQuotaMetricsResponse buildListConsumerQuotaMetricsResponse() {
  final o = api.ListConsumerQuotaMetricsResponse();
  buildCounterListConsumerQuotaMetricsResponse++;
  if (buildCounterListConsumerQuotaMetricsResponse < 3) {
    o.metrics = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterListConsumerQuotaMetricsResponse--;
  return o;
}

void checkListConsumerQuotaMetricsResponse(
  api.ListConsumerQuotaMetricsResponse o,
) {
  buildCounterListConsumerQuotaMetricsResponse++;
  if (buildCounterListConsumerQuotaMetricsResponse < 3) {
    checkUnnamed20(o.metrics!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListConsumerQuotaMetricsResponse--;
}

core.List<api.Operation> buildUnnamed21() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed21(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed21();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed21(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Service> buildUnnamed22() => [buildService(), buildService()];

void checkUnnamed22(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterListServicesResponse = 0;
api.ListServicesResponse buildListServicesResponse() {
  final o = api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed22();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.services!);
  }
  buildCounterListServicesResponse--;
}

core.List<api.Option> buildUnnamed23() => [buildOption(), buildOption()];

void checkUnnamed23(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterMethod = 0;
api.Method buildMethod() {
  final o = api.Method();
  buildCounterMethod++;
  if (buildCounterMethod < 3) {
    o.name = 'foo';
    o.options = buildUnnamed23();
    o.requestStreaming = true;
    o.requestTypeUrl = 'foo';
    o.responseStreaming = true;
    o.responseTypeUrl = 'foo';
    o.syntax = 'foo';
  }
  buildCounterMethod--;
  return o;
}

void checkMethod(api.Method o) {
  buildCounterMethod++;
  if (buildCounterMethod < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed23(o.options!);
    unittest.expect(o.requestStreaming!, unittest.isTrue);
    unittest.expect(o.requestTypeUrl!, unittest.equals('foo'));
    unittest.expect(o.responseStreaming!, unittest.isTrue);
    unittest.expect(o.responseTypeUrl!, unittest.equals('foo'));
    unittest.expect(o.syntax!, unittest.equals('foo'));
  }
  buildCounterMethod--;
}

core.Map<core.String, core.String> buildUnnamed24() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed24(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMetricRule = 0;
api.MetricRule buildMetricRule() {
  final o = api.MetricRule();
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    o.metricCosts = buildUnnamed24();
    o.selector = 'foo';
  }
  buildCounterMetricRule--;
  return o;
}

void checkMetricRule(api.MetricRule o) {
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    checkUnnamed24(o.metricCosts!);
    unittest.expect(o.selector!, unittest.equals('foo'));
  }
  buildCounterMetricRule--;
}

core.int buildCounterMixin = 0;
api.Mixin buildMixin() {
  final o = api.Mixin();
  buildCounterMixin++;
  if (buildCounterMixin < 3) {
    o.name = 'foo';
    o.root = 'foo';
  }
  buildCounterMixin--;
  return o;
}

void checkMixin(api.Mixin o) {
  buildCounterMixin++;
  if (buildCounterMixin < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.root!, unittest.equals('foo'));
  }
  buildCounterMixin--;
}

core.List<api.LabelDescriptor> buildUnnamed25() => [
  buildLabelDescriptor(),
  buildLabelDescriptor(),
];

void checkUnnamed25(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterMonitoredResourceDescriptor = 0;
api.MonitoredResourceDescriptor buildMonitoredResourceDescriptor() {
  final o = api.MonitoredResourceDescriptor();
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed25();
    o.launchStage = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterMonitoredResourceDescriptor--;
  return o;
}

void checkMonitoredResourceDescriptor(api.MonitoredResourceDescriptor o) {
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed25(o.labels!);
    unittest.expect(o.launchStage!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterMonitoredResourceDescriptor--;
}

core.List<api.MonitoringDestination> buildUnnamed26() => [
  buildMonitoringDestination(),
  buildMonitoringDestination(),
];

void checkUnnamed26(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

core.List<api.MonitoringDestination> buildUnnamed27() => [
  buildMonitoringDestination(),
  buildMonitoringDestination(),
];

void checkUnnamed27(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

core.int buildCounterMonitoring = 0;
api.Monitoring buildMonitoring() {
  final o = api.Monitoring();
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    o.consumerDestinations = buildUnnamed26();
    o.producerDestinations = buildUnnamed27();
  }
  buildCounterMonitoring--;
  return o;
}

void checkMonitoring(api.Monitoring o) {
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    checkUnnamed26(o.consumerDestinations!);
    checkUnnamed27(o.producerDestinations!);
  }
  buildCounterMonitoring--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMonitoringDestination = 0;
api.MonitoringDestination buildMonitoringDestination() {
  final o = api.MonitoringDestination();
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    o.metrics = buildUnnamed28();
    o.monitoredResource = 'foo';
  }
  buildCounterMonitoringDestination--;
  return o;
}

void checkMonitoringDestination(api.MonitoringDestination o) {
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    checkUnnamed28(o.metrics!);
    unittest.expect(o.monitoredResource!, unittest.equals('foo'));
  }
  buildCounterMonitoringDestination--;
}

core.int buildCounterOAuthRequirements = 0;
api.OAuthRequirements buildOAuthRequirements() {
  final o = api.OAuthRequirements();
  buildCounterOAuthRequirements++;
  if (buildCounterOAuthRequirements < 3) {
    o.canonicalScopes = 'foo';
  }
  buildCounterOAuthRequirements--;
  return o;
}

void checkOAuthRequirements(api.OAuthRequirements o) {
  buildCounterOAuthRequirements++;
  if (buildCounterOAuthRequirements < 3) {
    unittest.expect(o.canonicalScopes!, unittest.equals('foo'));
  }
  buildCounterOAuthRequirements--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed29();
    o.name = 'foo';
    o.response = buildUnnamed30();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed29(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed30(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOption = 0;
api.Option buildOption() {
  final o = api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.name = 'foo';
    o.value = buildUnnamed31();
  }
  buildCounterOption--;
  return o;
}

void checkOption(api.Option o) {
  buildCounterOption++;
  if (buildCounterOption < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed31(o.value!);
  }
  buildCounterOption--;
}

core.List<api.QuotaOverride> buildUnnamed32() => [
  buildQuotaOverride(),
  buildQuotaOverride(),
];

void checkUnnamed32(core.List<api.QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaOverride(o[0]);
  checkQuotaOverride(o[1]);
}

core.int buildCounterOverrideInlineSource = 0;
api.OverrideInlineSource buildOverrideInlineSource() {
  final o = api.OverrideInlineSource();
  buildCounterOverrideInlineSource++;
  if (buildCounterOverrideInlineSource < 3) {
    o.overrides = buildUnnamed32();
  }
  buildCounterOverrideInlineSource--;
  return o;
}

void checkOverrideInlineSource(api.OverrideInlineSource o) {
  buildCounterOverrideInlineSource++;
  if (buildCounterOverrideInlineSource < 3) {
    checkUnnamed32(o.overrides!);
  }
  buildCounterOverrideInlineSource--;
}

core.List<api.Page> buildUnnamed33() => [buildPage(), buildPage()];

void checkUnnamed33(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterPage = 0;
api.Page buildPage() {
  final o = api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.content = 'foo';
    o.name = 'foo';
    o.subpages = buildUnnamed33();
  }
  buildCounterPage--;
  return o;
}

void checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed33(o.subpages!);
  }
  buildCounterPage--;
}

core.Map<core.String, core.String> buildUnnamed34() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed34(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterProducerQuotaPolicy = 0;
api.ProducerQuotaPolicy buildProducerQuotaPolicy() {
  final o = api.ProducerQuotaPolicy();
  buildCounterProducerQuotaPolicy++;
  if (buildCounterProducerQuotaPolicy < 3) {
    o.container = 'foo';
    o.dimensions = buildUnnamed34();
    o.metric = 'foo';
    o.name = 'foo';
    o.policyValue = 'foo';
    o.unit = 'foo';
  }
  buildCounterProducerQuotaPolicy--;
  return o;
}

void checkProducerQuotaPolicy(api.ProducerQuotaPolicy o) {
  buildCounterProducerQuotaPolicy++;
  if (buildCounterProducerQuotaPolicy < 3) {
    unittest.expect(o.container!, unittest.equals('foo'));
    checkUnnamed34(o.dimensions!);
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.policyValue!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterProducerQuotaPolicy--;
}

core.List<api.QuotaLimit> buildUnnamed35() => [
  buildQuotaLimit(),
  buildQuotaLimit(),
];

void checkUnnamed35(core.List<api.QuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaLimit(o[0]);
  checkQuotaLimit(o[1]);
}

core.List<api.MetricRule> buildUnnamed36() => [
  buildMetricRule(),
  buildMetricRule(),
];

void checkUnnamed36(core.List<api.MetricRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricRule(o[0]);
  checkMetricRule(o[1]);
}

core.int buildCounterQuota = 0;
api.Quota buildQuota() {
  final o = api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.limits = buildUnnamed35();
    o.metricRules = buildUnnamed36();
  }
  buildCounterQuota--;
  return o;
}

void checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    checkUnnamed35(o.limits!);
    checkUnnamed36(o.metricRules!);
  }
  buildCounterQuota--;
}

core.Map<core.String, core.String> buildUnnamed37() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed37(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterQuotaBucket = 0;
api.QuotaBucket buildQuotaBucket() {
  final o = api.QuotaBucket();
  buildCounterQuotaBucket++;
  if (buildCounterQuotaBucket < 3) {
    o.adminOverride = buildQuotaOverride();
    o.consumerOverride = buildQuotaOverride();
    o.defaultLimit = 'foo';
    o.dimensions = buildUnnamed37();
    o.effectiveLimit = 'foo';
    o.producerOverride = buildQuotaOverride();
    o.producerQuotaPolicy = buildProducerQuotaPolicy();
    o.rolloutInfo = buildRolloutInfo();
  }
  buildCounterQuotaBucket--;
  return o;
}

void checkQuotaBucket(api.QuotaBucket o) {
  buildCounterQuotaBucket++;
  if (buildCounterQuotaBucket < 3) {
    checkQuotaOverride(o.adminOverride!);
    checkQuotaOverride(o.consumerOverride!);
    unittest.expect(o.defaultLimit!, unittest.equals('foo'));
    checkUnnamed37(o.dimensions!);
    unittest.expect(o.effectiveLimit!, unittest.equals('foo'));
    checkQuotaOverride(o.producerOverride!);
    checkProducerQuotaPolicy(o.producerQuotaPolicy!);
    checkRolloutInfo(o.rolloutInfo!);
  }
  buildCounterQuotaBucket--;
}

core.Map<core.String, core.String> buildUnnamed38() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed38(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterQuotaLimit = 0;
api.QuotaLimit buildQuotaLimit() {
  final o = api.QuotaLimit();
  buildCounterQuotaLimit++;
  if (buildCounterQuotaLimit < 3) {
    o.defaultLimit = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.duration = 'foo';
    o.freeTier = 'foo';
    o.maxLimit = 'foo';
    o.metric = 'foo';
    o.name = 'foo';
    o.unit = 'foo';
    o.values = buildUnnamed38();
  }
  buildCounterQuotaLimit--;
  return o;
}

void checkQuotaLimit(api.QuotaLimit o) {
  buildCounterQuotaLimit++;
  if (buildCounterQuotaLimit < 3) {
    unittest.expect(o.defaultLimit!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.freeTier!, unittest.equals('foo'));
    unittest.expect(o.maxLimit!, unittest.equals('foo'));
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
    checkUnnamed38(o.values!);
  }
  buildCounterQuotaLimit--;
}

core.Map<core.String, core.String> buildUnnamed39() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed39(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterQuotaOverride = 0;
api.QuotaOverride buildQuotaOverride() {
  final o = api.QuotaOverride();
  buildCounterQuotaOverride++;
  if (buildCounterQuotaOverride < 3) {
    o.adminOverrideAncestor = 'foo';
    o.dimensions = buildUnnamed39();
    o.metric = 'foo';
    o.name = 'foo';
    o.overrideValue = 'foo';
    o.unit = 'foo';
  }
  buildCounterQuotaOverride--;
  return o;
}

void checkQuotaOverride(api.QuotaOverride o) {
  buildCounterQuotaOverride++;
  if (buildCounterQuotaOverride < 3) {
    unittest.expect(o.adminOverrideAncestor!, unittest.equals('foo'));
    checkUnnamed39(o.dimensions!);
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.overrideValue!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterQuotaOverride--;
}

core.int buildCounterRolloutInfo = 0;
api.RolloutInfo buildRolloutInfo() {
  final o = api.RolloutInfo();
  buildCounterRolloutInfo++;
  if (buildCounterRolloutInfo < 3) {
    o.defaultLimitOngoingRollout = true;
  }
  buildCounterRolloutInfo--;
  return o;
}

void checkRolloutInfo(api.RolloutInfo o) {
  buildCounterRolloutInfo++;
  if (buildCounterRolloutInfo < 3) {
    unittest.expect(o.defaultLimitOngoingRollout!, unittest.isTrue);
  }
  buildCounterRolloutInfo--;
}

core.int buildCounterService = 0;
api.Service buildService() {
  final o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.config = buildServiceConfig();
    o.name = 'foo';
    o.parent = 'foo';
    o.state = 'foo';
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkServiceConfig(o.config!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterService--;
}

core.List<api.Api> buildUnnamed40() => [buildApi(), buildApi()];

void checkUnnamed40(core.List<api.Api> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApi(o[0]);
  checkApi(o[1]);
}

core.List<api.Endpoint> buildUnnamed41() => [buildEndpoint(), buildEndpoint()];

void checkUnnamed41(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0]);
  checkEndpoint(o[1]);
}

core.List<api.MonitoredResourceDescriptor> buildUnnamed42() => [
  buildMonitoredResourceDescriptor(),
  buildMonitoredResourceDescriptor(),
];

void checkUnnamed42(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0]);
  checkMonitoredResourceDescriptor(o[1]);
}

core.int buildCounterServiceConfig = 0;
api.ServiceConfig buildServiceConfig() {
  final o = api.ServiceConfig();
  buildCounterServiceConfig++;
  if (buildCounterServiceConfig < 3) {
    o.apis = buildUnnamed40();
    o.authentication = buildAuthentication();
    o.documentation = buildDocumentation();
    o.endpoints = buildUnnamed41();
    o.monitoredResources = buildUnnamed42();
    o.monitoring = buildMonitoring();
    o.name = 'foo';
    o.quota = buildQuota();
    o.title = 'foo';
    o.usage = buildUsage();
  }
  buildCounterServiceConfig--;
  return o;
}

void checkServiceConfig(api.ServiceConfig o) {
  buildCounterServiceConfig++;
  if (buildCounterServiceConfig < 3) {
    checkUnnamed40(o.apis!);
    checkAuthentication(o.authentication!);
    checkDocumentation(o.documentation!);
    checkUnnamed41(o.endpoints!);
    checkUnnamed42(o.monitoredResources!);
    checkMonitoring(o.monitoring!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkQuota(o.quota!);
    unittest.expect(o.title!, unittest.equals('foo'));
    checkUsage(o.usage!);
  }
  buildCounterServiceConfig--;
}

core.int buildCounterSourceContext = 0;
api.SourceContext buildSourceContext() {
  final o = api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.fileName = 'foo';
  }
  buildCounterSourceContext--;
  return o;
}

void checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    unittest.expect(o.fileName!, unittest.equals('foo'));
  }
  buildCounterSourceContext--;
}

core.Map<core.String, core.Object?> buildUnnamed43() => {
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

void checkUnnamed43(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed44() => [
  buildUnnamed43(),
  buildUnnamed43(),
];

void checkUnnamed44(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed43(o[0]);
  checkUnnamed43(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed44();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed44(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.UsageRule> buildUnnamed46() => [
  buildUsageRule(),
  buildUsageRule(),
];

void checkUnnamed46(core.List<api.UsageRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageRule(o[0]);
  checkUsageRule(o[1]);
}

core.int buildCounterUsage = 0;
api.Usage buildUsage() {
  final o = api.Usage();
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    o.producerNotificationChannel = 'foo';
    o.requirements = buildUnnamed45();
    o.rules = buildUnnamed46();
  }
  buildCounterUsage--;
  return o;
}

void checkUsage(api.Usage o) {
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    unittest.expect(o.producerNotificationChannel!, unittest.equals('foo'));
    checkUnnamed45(o.requirements!);
    checkUnnamed46(o.rules!);
  }
  buildCounterUsage--;
}

core.int buildCounterUsageRule = 0;
api.UsageRule buildUsageRule() {
  final o = api.UsageRule();
  buildCounterUsageRule++;
  if (buildCounterUsageRule < 3) {
    o.allowUnregisteredCalls = true;
    o.selector = 'foo';
    o.skipServiceControl = true;
  }
  buildCounterUsageRule--;
  return o;
}

void checkUsageRule(api.UsageRule o) {
  buildCounterUsageRule++;
  if (buildCounterUsageRule < 3) {
    unittest.expect(o.allowUnregisteredCalls!, unittest.isTrue);
    unittest.expect(o.selector!, unittest.equals('foo'));
    unittest.expect(o.skipServiceControl!, unittest.isTrue);
  }
  buildCounterUsageRule--;
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed48() => ['foo', 'foo'];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed50() => ['foo', 'foo'];

void checkUnnamed50(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Api', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Api.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApi(od);
    });
  });

  unittest.group('obj-schema-AuthProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthProvider(od);
    });
  });

  unittest.group('obj-schema-AuthRequirement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthRequirement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthRequirement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthRequirement(od);
    });
  });

  unittest.group('obj-schema-Authentication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthentication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Authentication.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthentication(od);
    });
  });

  unittest.group('obj-schema-AuthenticationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthenticationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthenticationRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthenticationRule(od);
    });
  });

  unittest.group('obj-schema-BatchEnableServicesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchEnableServicesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchEnableServicesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchEnableServicesRequest(od);
    });
  });

  unittest.group('obj-schema-ConsumerQuotaLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerQuotaLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerQuotaLimit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsumerQuotaLimit(od);
    });
  });

  unittest.group('obj-schema-ConsumerQuotaMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerQuotaMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerQuotaMetric.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsumerQuotaMetric(od);
    });
  });

  unittest.group('obj-schema-DisableServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableServiceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDisableServiceRequest(od);
    });
  });

  unittest.group('obj-schema-Documentation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Documentation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentation(od);
    });
  });

  unittest.group('obj-schema-DocumentationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentationRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentationRule(od);
    });
  });

  unittest.group('obj-schema-EnableServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableServiceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnableServiceRequest(od);
    });
  });

  unittest.group('obj-schema-Endpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Endpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndpoint(od);
    });
  });

  unittest.group('obj-schema-ImportAdminOverridesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAdminOverridesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAdminOverridesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportAdminOverridesRequest(od);
    });
  });

  unittest.group('obj-schema-ImportConsumerOverridesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportConsumerOverridesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportConsumerOverridesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportConsumerOverridesRequest(od);
    });
  });

  unittest.group('obj-schema-JwtLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwtLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JwtLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJwtLocation(od);
    });
  });

  unittest.group('obj-schema-LabelDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabelDescriptor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLabelDescriptor(od);
    });
  });

  unittest.group('obj-schema-ListAdminOverridesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdminOverridesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdminOverridesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAdminOverridesResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsumerOverridesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsumerOverridesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsumerOverridesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConsumerOverridesResponse(od);
    });
  });

  unittest.group('obj-schema-ListConsumerQuotaMetricsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConsumerQuotaMetricsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConsumerQuotaMetricsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConsumerQuotaMetricsResponse(od);
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

  unittest.group('obj-schema-ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServicesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-Method', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMethod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Method.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMethod(od);
    });
  });

  unittest.group('obj-schema-MetricRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetricRule(od);
    });
  });

  unittest.group('obj-schema-Mixin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMixin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Mixin.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMixin(od);
    });
  });

  unittest.group('obj-schema-MonitoredResourceDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoredResourceDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoredResourceDescriptor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMonitoredResourceDescriptor(od);
    });
  });

  unittest.group('obj-schema-Monitoring', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoring();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Monitoring.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMonitoring(od);
    });
  });

  unittest.group('obj-schema-MonitoringDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoringDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoringDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMonitoringDestination(od);
    });
  });

  unittest.group('obj-schema-OAuthRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuthRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuthRequirements.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOAuthRequirements(od);
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

  unittest.group('obj-schema-Option', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Option.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOption(od);
    });
  });

  unittest.group('obj-schema-OverrideInlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOverrideInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OverrideInlineSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOverrideInlineSource(od);
    });
  });

  unittest.group('obj-schema-Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Page.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPage(od);
    });
  });

  unittest.group('obj-schema-ProducerQuotaPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProducerQuotaPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProducerQuotaPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProducerQuotaPolicy(od);
    });
  });

  unittest.group('obj-schema-Quota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Quota.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuota(od);
    });
  });

  unittest.group('obj-schema-QuotaBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuotaBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuotaBucket.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuotaBucket(od);
    });
  });

  unittest.group('obj-schema-QuotaLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuotaLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuotaLimit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuotaLimit(od);
    });
  });

  unittest.group('obj-schema-QuotaOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuotaOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuotaOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuotaOverride(od);
    });
  });

  unittest.group('obj-schema-RolloutInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRolloutInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RolloutInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRolloutInfo(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Service.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkService(od);
    });
  });

  unittest.group('obj-schema-ServiceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceConfig(od);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSourceContext(od);
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

  unittest.group('obj-schema-Usage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Usage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsage(od);
    });
  });

  unittest.group('obj-schema-UsageRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsageRule(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).operations;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).operations;
      final arg_filter = 'foo';
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v1beta1/operations'),
          );
          pathOffset += 18;

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
          unittest.expect(queryMap['name']!.first, unittest.equals(arg_name));
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
        filter: arg_filter,
        name: arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ServicesResource', () {
    unittest.test('method--batchEnable', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
      final arg_request = buildBatchEnableServicesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchEnableServicesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchEnableServicesRequest(obj);

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
      final response = await res.batchEnable(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
      final arg_request = buildDisableServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DisableServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDisableServiceRequest(obj);

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
      final response = await res.disable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
      final arg_request = buildEnableServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EnableServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnableServiceRequest(obj);

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
      final response = await res.enable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--generateServiceIdentity', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
      final arg_parent = 'foo';
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
      final response = await res.generateServiceIdentity(
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
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
          final resp = convert.json.encode(buildService());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListServicesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListServicesResponse(response as api.ListServicesResponse);
    });
  });

  unittest.group('resource-ServicesConsumerQuotaMetricsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services.consumerQuotaMetrics;
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
          final resp = convert.json.encode(buildConsumerQuotaMetric());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkConsumerQuotaMetric(response as api.ConsumerQuotaMetric);
    });

    unittest.test('method--importAdminOverrides', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services.consumerQuotaMetrics;
      final arg_request = buildImportAdminOverridesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportAdminOverridesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportAdminOverridesRequest(obj);

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
      final response = await res.importAdminOverrides(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--importConsumerOverrides', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services.consumerQuotaMetrics;
      final arg_request = buildImportConsumerOverridesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportConsumerOverridesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportConsumerOverridesRequest(obj);

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
      final response = await res.importConsumerOverrides(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services.consumerQuotaMetrics;
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
            buildListConsumerQuotaMetricsResponse(),
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
      checkListConsumerQuotaMetricsResponse(
        response as api.ListConsumerQuotaMetricsResponse,
      );
    });
  });

  unittest.group('resource-ServicesConsumerQuotaMetricsLimitsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ServiceUsageApi(mock).services.consumerQuotaMetrics.limits;
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
          final resp = convert.json.encode(buildConsumerQuotaLimit());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkConsumerQuotaLimit(response as api.ConsumerQuotaLimit);
    });
  });

  unittest.group(
    'resource-ServicesConsumerQuotaMetricsLimitsAdminOverridesResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceUsageApi(
              mock,
            ).services.consumerQuotaMetrics.limits.adminOverrides;
        final arg_request = buildQuotaOverride();
        final arg_parent = 'foo';
        final arg_force = true;
        final arg_forceOnly = buildUnnamed47();
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.QuotaOverride.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkQuotaOverride(obj);

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
          forceOnly: arg_forceOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceUsageApi(
              mock,
            ).services.consumerQuotaMetrics.limits.adminOverrides;
        final arg_name = 'foo';
        final arg_force = true;
        final arg_forceOnly = buildUnnamed48();
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
          forceOnly: arg_forceOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceUsageApi(
              mock,
            ).services.consumerQuotaMetrics.limits.adminOverrides;
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
            final resp = convert.json.encode(buildListAdminOverridesResponse());
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
        checkListAdminOverridesResponse(
          response as api.ListAdminOverridesResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceUsageApi(
              mock,
            ).services.consumerQuotaMetrics.limits.adminOverrides;
        final arg_request = buildQuotaOverride();
        final arg_name = 'foo';
        final arg_force = true;
        final arg_forceOnly = buildUnnamed49();
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.QuotaOverride.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkQuotaOverride(obj);

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
          forceOnly: arg_forceOnly,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });
    },
  );

  unittest.group(
    'resource-ServicesConsumerQuotaMetricsLimitsConsumerOverridesResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceUsageApi(
              mock,
            ).services.consumerQuotaMetrics.limits.consumerOverrides;
        final arg_request = buildQuotaOverride();
        final arg_parent = 'foo';
        final arg_force = true;
        final arg_forceOnly = buildUnnamed50();
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.QuotaOverride.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkQuotaOverride(obj);

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
          forceOnly: arg_forceOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceUsageApi(
              mock,
            ).services.consumerQuotaMetrics.limits.consumerOverrides;
        final arg_name = 'foo';
        final arg_force = true;
        final arg_forceOnly = buildUnnamed51();
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
          forceOnly: arg_forceOnly,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceUsageApi(
              mock,
            ).services.consumerQuotaMetrics.limits.consumerOverrides;
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
              buildListConsumerOverridesResponse(),
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
        checkListConsumerOverridesResponse(
          response as api.ListConsumerOverridesResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.ServiceUsageApi(
              mock,
            ).services.consumerQuotaMetrics.limits.consumerOverrides;
        final arg_request = buildQuotaOverride();
        final arg_name = 'foo';
        final arg_force = true;
        final arg_forceOnly = buildUnnamed52();
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.QuotaOverride.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkQuotaOverride(obj);

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
          forceOnly: arg_forceOnly,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });
    },
  );
}
