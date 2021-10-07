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

import 'package:googleapis/serviceusage/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.String> buildUnnamed0() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed0(core.Map<core.String, core.String> o) {
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

core.int buildCounterAdminQuotaPolicy = 0;
api.AdminQuotaPolicy buildAdminQuotaPolicy() {
  final o = api.AdminQuotaPolicy();
  buildCounterAdminQuotaPolicy++;
  if (buildCounterAdminQuotaPolicy < 3) {
    o.container = 'foo';
    o.dimensions = buildUnnamed0();
    o.metric = 'foo';
    o.name = 'foo';
    o.policyValue = 'foo';
    o.unit = 'foo';
  }
  buildCounterAdminQuotaPolicy--;
  return o;
}

void checkAdminQuotaPolicy(api.AdminQuotaPolicy o) {
  buildCounterAdminQuotaPolicy++;
  if (buildCounterAdminQuotaPolicy < 3) {
    unittest.expect(
      o.container!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.dimensions!);
    unittest.expect(
      o.metric!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policyValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdminQuotaPolicy--;
}

core.List<api.Method> buildUnnamed1() => [
      buildMethod(),
      buildMethod(),
    ];

void checkUnnamed1(core.List<api.Method> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethod(o[0]);
  checkMethod(o[1]);
}

core.List<api.Mixin> buildUnnamed2() => [
      buildMixin(),
      buildMixin(),
    ];

void checkUnnamed2(core.List<api.Mixin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMixin(o[0]);
  checkMixin(o[1]);
}

core.List<api.Option> buildUnnamed3() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed3(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterApi = 0;
api.Api buildApi() {
  final o = api.Api();
  buildCounterApi++;
  if (buildCounterApi < 3) {
    o.methods = buildUnnamed1();
    o.mixins = buildUnnamed2();
    o.name = 'foo';
    o.options = buildUnnamed3();
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
    checkUnnamed1(o.methods!);
    checkUnnamed2(o.mixins!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.options!);
    checkSourceContext(o.sourceContext!);
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterApi--;
}

core.List<api.JwtLocation> buildUnnamed4() => [
      buildJwtLocation(),
      buildJwtLocation(),
    ];

void checkUnnamed4(core.List<api.JwtLocation> o) {
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
    o.jwtLocations = buildUnnamed4();
  }
  buildCounterAuthProvider--;
  return o;
}

void checkAuthProvider(api.AuthProvider o) {
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    unittest.expect(
      o.audiences!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authorizationUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issuer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jwksUri!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.jwtLocations!);
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
    unittest.expect(
      o.audiences!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.providerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthRequirement--;
}

core.List<api.AuthProvider> buildUnnamed5() => [
      buildAuthProvider(),
      buildAuthProvider(),
    ];

void checkUnnamed5(core.List<api.AuthProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProvider(o[0]);
  checkAuthProvider(o[1]);
}

core.List<api.AuthenticationRule> buildUnnamed6() => [
      buildAuthenticationRule(),
      buildAuthenticationRule(),
    ];

void checkUnnamed6(core.List<api.AuthenticationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthenticationRule(o[0]);
  checkAuthenticationRule(o[1]);
}

core.int buildCounterAuthentication = 0;
api.Authentication buildAuthentication() {
  final o = api.Authentication();
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    o.providers = buildUnnamed5();
    o.rules = buildUnnamed6();
  }
  buildCounterAuthentication--;
  return o;
}

void checkAuthentication(api.Authentication o) {
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    checkUnnamed5(o.providers!);
    checkUnnamed6(o.rules!);
  }
  buildCounterAuthentication--;
}

core.List<api.AuthRequirement> buildUnnamed7() => [
      buildAuthRequirement(),
      buildAuthRequirement(),
    ];

void checkUnnamed7(core.List<api.AuthRequirement> o) {
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
    o.requirements = buildUnnamed7();
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
    checkUnnamed7(o.requirements!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthenticationRule--;
}

core.List<api.BackendRule> buildUnnamed8() => [
      buildBackendRule(),
      buildBackendRule(),
    ];

void checkUnnamed8(core.List<api.BackendRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendRule(o[0]);
  checkBackendRule(o[1]);
}

core.int buildCounterBackend = 0;
api.Backend buildBackend() {
  final o = api.Backend();
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    o.rules = buildUnnamed8();
  }
  buildCounterBackend--;
  return o;
}

void checkBackend(api.Backend o) {
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    checkUnnamed8(o.rules!);
  }
  buildCounterBackend--;
}

core.int buildCounterBackendRule = 0;
api.BackendRule buildBackendRule() {
  final o = api.BackendRule();
  buildCounterBackendRule++;
  if (buildCounterBackendRule < 3) {
    o.address = 'foo';
    o.deadline = 42.0;
    o.disableAuth = true;
    o.jwtAudience = 'foo';
    o.operationDeadline = 42.0;
    o.pathTranslation = 'foo';
    o.protocol = 'foo';
    o.selector = 'foo';
  }
  buildCounterBackendRule--;
  return o;
}

void checkBackendRule(api.BackendRule o) {
  buildCounterBackendRule++;
  if (buildCounterBackendRule < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deadline!,
      unittest.equals(42.0),
    );
    unittest.expect(o.disableAuth!, unittest.isTrue);
    unittest.expect(
      o.jwtAudience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationDeadline!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pathTranslation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackendRule--;
}

core.List<api.QuotaOverride> buildUnnamed9() => [
      buildQuotaOverride(),
      buildQuotaOverride(),
    ];

void checkUnnamed9(core.List<api.QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaOverride(o[0]);
  checkQuotaOverride(o[1]);
}

core.int buildCounterBatchCreateAdminOverridesResponse = 0;
api.BatchCreateAdminOverridesResponse buildBatchCreateAdminOverridesResponse() {
  final o = api.BatchCreateAdminOverridesResponse();
  buildCounterBatchCreateAdminOverridesResponse++;
  if (buildCounterBatchCreateAdminOverridesResponse < 3) {
    o.overrides = buildUnnamed9();
  }
  buildCounterBatchCreateAdminOverridesResponse--;
  return o;
}

void checkBatchCreateAdminOverridesResponse(
    api.BatchCreateAdminOverridesResponse o) {
  buildCounterBatchCreateAdminOverridesResponse++;
  if (buildCounterBatchCreateAdminOverridesResponse < 3) {
    checkUnnamed9(o.overrides!);
  }
  buildCounterBatchCreateAdminOverridesResponse--;
}

core.List<api.QuotaOverride> buildUnnamed10() => [
      buildQuotaOverride(),
      buildQuotaOverride(),
    ];

void checkUnnamed10(core.List<api.QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaOverride(o[0]);
  checkQuotaOverride(o[1]);
}

core.int buildCounterBatchCreateConsumerOverridesResponse = 0;
api.BatchCreateConsumerOverridesResponse
    buildBatchCreateConsumerOverridesResponse() {
  final o = api.BatchCreateConsumerOverridesResponse();
  buildCounterBatchCreateConsumerOverridesResponse++;
  if (buildCounterBatchCreateConsumerOverridesResponse < 3) {
    o.overrides = buildUnnamed10();
  }
  buildCounterBatchCreateConsumerOverridesResponse--;
  return o;
}

void checkBatchCreateConsumerOverridesResponse(
    api.BatchCreateConsumerOverridesResponse o) {
  buildCounterBatchCreateConsumerOverridesResponse++;
  if (buildCounterBatchCreateConsumerOverridesResponse < 3) {
    checkUnnamed10(o.overrides!);
  }
  buildCounterBatchCreateConsumerOverridesResponse--;
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

core.int buildCounterBatchEnableServicesRequest = 0;
api.BatchEnableServicesRequest buildBatchEnableServicesRequest() {
  final o = api.BatchEnableServicesRequest();
  buildCounterBatchEnableServicesRequest++;
  if (buildCounterBatchEnableServicesRequest < 3) {
    o.serviceIds = buildUnnamed11();
  }
  buildCounterBatchEnableServicesRequest--;
  return o;
}

void checkBatchEnableServicesRequest(api.BatchEnableServicesRequest o) {
  buildCounterBatchEnableServicesRequest++;
  if (buildCounterBatchEnableServicesRequest < 3) {
    checkUnnamed11(o.serviceIds!);
  }
  buildCounterBatchEnableServicesRequest--;
}

core.List<api.EnableFailure> buildUnnamed12() => [
      buildEnableFailure(),
      buildEnableFailure(),
    ];

void checkUnnamed12(core.List<api.EnableFailure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnableFailure(o[0]);
  checkEnableFailure(o[1]);
}

core.List<api.GoogleApiServiceusageV1Service> buildUnnamed13() => [
      buildGoogleApiServiceusageV1Service(),
      buildGoogleApiServiceusageV1Service(),
    ];

void checkUnnamed13(core.List<api.GoogleApiServiceusageV1Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServiceusageV1Service(o[0]);
  checkGoogleApiServiceusageV1Service(o[1]);
}

core.int buildCounterBatchEnableServicesResponse = 0;
api.BatchEnableServicesResponse buildBatchEnableServicesResponse() {
  final o = api.BatchEnableServicesResponse();
  buildCounterBatchEnableServicesResponse++;
  if (buildCounterBatchEnableServicesResponse < 3) {
    o.failures = buildUnnamed12();
    o.services = buildUnnamed13();
  }
  buildCounterBatchEnableServicesResponse--;
  return o;
}

void checkBatchEnableServicesResponse(api.BatchEnableServicesResponse o) {
  buildCounterBatchEnableServicesResponse++;
  if (buildCounterBatchEnableServicesResponse < 3) {
    checkUnnamed12(o.failures!);
    checkUnnamed13(o.services!);
  }
  buildCounterBatchEnableServicesResponse--;
}

core.List<api.GoogleApiServiceusageV1Service> buildUnnamed14() => [
      buildGoogleApiServiceusageV1Service(),
      buildGoogleApiServiceusageV1Service(),
    ];

void checkUnnamed14(core.List<api.GoogleApiServiceusageV1Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServiceusageV1Service(o[0]);
  checkGoogleApiServiceusageV1Service(o[1]);
}

core.int buildCounterBatchGetServicesResponse = 0;
api.BatchGetServicesResponse buildBatchGetServicesResponse() {
  final o = api.BatchGetServicesResponse();
  buildCounterBatchGetServicesResponse++;
  if (buildCounterBatchGetServicesResponse < 3) {
    o.services = buildUnnamed14();
  }
  buildCounterBatchGetServicesResponse--;
  return o;
}

void checkBatchGetServicesResponse(api.BatchGetServicesResponse o) {
  buildCounterBatchGetServicesResponse++;
  if (buildCounterBatchGetServicesResponse < 3) {
    checkUnnamed14(o.services!);
  }
  buildCounterBatchGetServicesResponse--;
}

core.List<api.BillingDestination> buildUnnamed15() => [
      buildBillingDestination(),
      buildBillingDestination(),
    ];

void checkUnnamed15(core.List<api.BillingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingDestination(o[0]);
  checkBillingDestination(o[1]);
}

core.int buildCounterBilling = 0;
api.Billing buildBilling() {
  final o = api.Billing();
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    o.consumerDestinations = buildUnnamed15();
  }
  buildCounterBilling--;
  return o;
}

void checkBilling(api.Billing o) {
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    checkUnnamed15(o.consumerDestinations!);
  }
  buildCounterBilling--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterBillingDestination = 0;
api.BillingDestination buildBillingDestination() {
  final o = api.BillingDestination();
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    o.metrics = buildUnnamed16();
    o.monitoredResource = 'foo';
  }
  buildCounterBillingDestination--;
  return o;
}

void checkBillingDestination(api.BillingDestination o) {
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    checkUnnamed16(o.metrics!);
    unittest.expect(
      o.monitoredResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingDestination--;
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

core.List<api.ContextRule> buildUnnamed17() => [
      buildContextRule(),
      buildContextRule(),
    ];

void checkUnnamed17(core.List<api.ContextRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextRule(o[0]);
  checkContextRule(o[1]);
}

core.int buildCounterContext = 0;
api.Context buildContext() {
  final o = api.Context();
  buildCounterContext++;
  if (buildCounterContext < 3) {
    o.rules = buildUnnamed17();
  }
  buildCounterContext--;
  return o;
}

void checkContext(api.Context o) {
  buildCounterContext++;
  if (buildCounterContext < 3) {
    checkUnnamed17(o.rules!);
  }
  buildCounterContext--;
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.int buildCounterContextRule = 0;
api.ContextRule buildContextRule() {
  final o = api.ContextRule();
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    o.allowedRequestExtensions = buildUnnamed18();
    o.allowedResponseExtensions = buildUnnamed19();
    o.provided = buildUnnamed20();
    o.requested = buildUnnamed21();
    o.selector = 'foo';
  }
  buildCounterContextRule--;
  return o;
}

void checkContextRule(api.ContextRule o) {
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    checkUnnamed18(o.allowedRequestExtensions!);
    checkUnnamed19(o.allowedResponseExtensions!);
    checkUnnamed20(o.provided!);
    checkUnnamed21(o.requested!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterContextRule--;
}

core.int buildCounterControl = 0;
api.Control buildControl() {
  final o = api.Control();
  buildCounterControl++;
  if (buildCounterControl < 3) {
    o.environment = 'foo';
  }
  buildCounterControl--;
  return o;
}

void checkControl(api.Control o) {
  buildCounterControl++;
  if (buildCounterControl < 3) {
    unittest.expect(
      o.environment!,
      unittest.equals('foo'),
    );
  }
  buildCounterControl--;
}

core.int buildCounterCreateAdminQuotaPolicyMetadata = 0;
api.CreateAdminQuotaPolicyMetadata buildCreateAdminQuotaPolicyMetadata() {
  final o = api.CreateAdminQuotaPolicyMetadata();
  buildCounterCreateAdminQuotaPolicyMetadata++;
  if (buildCounterCreateAdminQuotaPolicyMetadata < 3) {}
  buildCounterCreateAdminQuotaPolicyMetadata--;
  return o;
}

void checkCreateAdminQuotaPolicyMetadata(api.CreateAdminQuotaPolicyMetadata o) {
  buildCounterCreateAdminQuotaPolicyMetadata++;
  if (buildCounterCreateAdminQuotaPolicyMetadata < 3) {}
  buildCounterCreateAdminQuotaPolicyMetadata--;
}

core.List<api.CustomErrorRule> buildUnnamed22() => [
      buildCustomErrorRule(),
      buildCustomErrorRule(),
    ];

void checkUnnamed22(core.List<api.CustomErrorRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomErrorRule(o[0]);
  checkCustomErrorRule(o[1]);
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

core.int buildCounterCustomError = 0;
api.CustomError buildCustomError() {
  final o = api.CustomError();
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    o.rules = buildUnnamed22();
    o.types = buildUnnamed23();
  }
  buildCounterCustomError--;
  return o;
}

void checkCustomError(api.CustomError o) {
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    checkUnnamed22(o.rules!);
    checkUnnamed23(o.types!);
  }
  buildCounterCustomError--;
}

core.int buildCounterCustomErrorRule = 0;
api.CustomErrorRule buildCustomErrorRule() {
  final o = api.CustomErrorRule();
  buildCounterCustomErrorRule++;
  if (buildCounterCustomErrorRule < 3) {
    o.isErrorType = true;
    o.selector = 'foo';
  }
  buildCounterCustomErrorRule--;
  return o;
}

void checkCustomErrorRule(api.CustomErrorRule o) {
  buildCounterCustomErrorRule++;
  if (buildCounterCustomErrorRule < 3) {
    unittest.expect(o.isErrorType!, unittest.isTrue);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomErrorRule--;
}

core.int buildCounterCustomHttpPattern = 0;
api.CustomHttpPattern buildCustomHttpPattern() {
  final o = api.CustomHttpPattern();
  buildCounterCustomHttpPattern++;
  if (buildCounterCustomHttpPattern < 3) {
    o.kind = 'foo';
    o.path = 'foo';
  }
  buildCounterCustomHttpPattern--;
  return o;
}

void checkCustomHttpPattern(api.CustomHttpPattern o) {
  buildCounterCustomHttpPattern++;
  if (buildCounterCustomHttpPattern < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomHttpPattern--;
}

core.int buildCounterDeleteAdminQuotaPolicyMetadata = 0;
api.DeleteAdminQuotaPolicyMetadata buildDeleteAdminQuotaPolicyMetadata() {
  final o = api.DeleteAdminQuotaPolicyMetadata();
  buildCounterDeleteAdminQuotaPolicyMetadata++;
  if (buildCounterDeleteAdminQuotaPolicyMetadata < 3) {}
  buildCounterDeleteAdminQuotaPolicyMetadata--;
  return o;
}

void checkDeleteAdminQuotaPolicyMetadata(api.DeleteAdminQuotaPolicyMetadata o) {
  buildCounterDeleteAdminQuotaPolicyMetadata++;
  if (buildCounterDeleteAdminQuotaPolicyMetadata < 3) {}
  buildCounterDeleteAdminQuotaPolicyMetadata--;
}

core.int buildCounterDisableServiceRequest = 0;
api.DisableServiceRequest buildDisableServiceRequest() {
  final o = api.DisableServiceRequest();
  buildCounterDisableServiceRequest++;
  if (buildCounterDisableServiceRequest < 3) {
    o.checkIfServiceHasUsage = 'foo';
    o.disableDependentServices = true;
  }
  buildCounterDisableServiceRequest--;
  return o;
}

void checkDisableServiceRequest(api.DisableServiceRequest o) {
  buildCounterDisableServiceRequest++;
  if (buildCounterDisableServiceRequest < 3) {
    unittest.expect(
      o.checkIfServiceHasUsage!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableDependentServices!, unittest.isTrue);
  }
  buildCounterDisableServiceRequest--;
}

core.int buildCounterDisableServiceResponse = 0;
api.DisableServiceResponse buildDisableServiceResponse() {
  final o = api.DisableServiceResponse();
  buildCounterDisableServiceResponse++;
  if (buildCounterDisableServiceResponse < 3) {
    o.service = buildGoogleApiServiceusageV1Service();
  }
  buildCounterDisableServiceResponse--;
  return o;
}

void checkDisableServiceResponse(api.DisableServiceResponse o) {
  buildCounterDisableServiceResponse++;
  if (buildCounterDisableServiceResponse < 3) {
    checkGoogleApiServiceusageV1Service(o.service!);
  }
  buildCounterDisableServiceResponse--;
}

core.List<api.Page> buildUnnamed24() => [
      buildPage(),
      buildPage(),
    ];

void checkUnnamed24(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.List<api.DocumentationRule> buildUnnamed25() => [
      buildDocumentationRule(),
      buildDocumentationRule(),
    ];

void checkUnnamed25(core.List<api.DocumentationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocumentationRule(o[0]);
  checkDocumentationRule(o[1]);
}

core.int buildCounterDocumentation = 0;
api.Documentation buildDocumentation() {
  final o = api.Documentation();
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    o.documentationRootUrl = 'foo';
    o.overview = 'foo';
    o.pages = buildUnnamed24();
    o.rules = buildUnnamed25();
    o.serviceRootUrl = 'foo';
    o.summary = 'foo';
  }
  buildCounterDocumentation--;
  return o;
}

void checkDocumentation(api.Documentation o) {
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    unittest.expect(
      o.documentationRootUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overview!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.pages!);
    checkUnnamed25(o.rules!);
    unittest.expect(
      o.serviceRootUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.summary!,
      unittest.equals('foo'),
    );
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
    o.selector = 'foo';
  }
  buildCounterDocumentationRule--;
  return o;
}

void checkDocumentationRule(api.DocumentationRule o) {
  buildCounterDocumentationRule++;
  if (buildCounterDocumentationRule < 3) {
    unittest.expect(
      o.deprecationDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocumentationRule--;
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

core.int buildCounterEnableFailure = 0;
api.EnableFailure buildEnableFailure() {
  final o = api.EnableFailure();
  buildCounterEnableFailure++;
  if (buildCounterEnableFailure < 3) {
    o.errorMessage = 'foo';
    o.serviceId = 'foo';
  }
  buildCounterEnableFailure--;
  return o;
}

void checkEnableFailure(api.EnableFailure o) {
  buildCounterEnableFailure++;
  if (buildCounterEnableFailure < 3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnableFailure--;
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

core.int buildCounterEnableServiceResponse = 0;
api.EnableServiceResponse buildEnableServiceResponse() {
  final o = api.EnableServiceResponse();
  buildCounterEnableServiceResponse++;
  if (buildCounterEnableServiceResponse < 3) {
    o.service = buildGoogleApiServiceusageV1Service();
  }
  buildCounterEnableServiceResponse--;
  return o;
}

void checkEnableServiceResponse(api.EnableServiceResponse o) {
  buildCounterEnableServiceResponse++;
  if (buildCounterEnableServiceResponse < 3) {
    checkGoogleApiServiceusageV1Service(o.service!);
  }
  buildCounterEnableServiceResponse--;
}

core.int buildCounterEndpoint = 0;
api.Endpoint buildEndpoint() {
  final o = api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
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
    unittest.expect(o.allowCors!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
  }
  buildCounterEndpoint--;
}

core.List<api.EnumValue> buildUnnamed26() => [
      buildEnumValue(),
      buildEnumValue(),
    ];

void checkUnnamed26(core.List<api.EnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnumValue(o[0]);
  checkEnumValue(o[1]);
}

core.List<api.Option> buildUnnamed27() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed27(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterEnum = 0;
api.Enum buildEnum() {
  final o = api.Enum();
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    o.enumvalue = buildUnnamed26();
    o.name = 'foo';
    o.options = buildUnnamed27();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
  }
  buildCounterEnum--;
  return o;
}

void checkEnum(api.Enum o) {
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    checkUnnamed26(o.enumvalue!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.options!);
    checkSourceContext(o.sourceContext!);
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnum--;
}

core.List<api.Option> buildUnnamed28() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed28(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterEnumValue = 0;
api.EnumValue buildEnumValue() {
  final o = api.EnumValue();
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    o.name = 'foo';
    o.number = 42;
    o.options = buildUnnamed28();
  }
  buildCounterEnumValue--;
  return o;
}

void checkEnumValue(api.EnumValue o) {
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals(42),
    );
    checkUnnamed28(o.options!);
  }
  buildCounterEnumValue--;
}

core.List<api.Option> buildUnnamed29() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed29(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterField = 0;
api.Field buildField() {
  final o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.cardinality = 'foo';
    o.defaultValue = 'foo';
    o.jsonName = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.number = 42;
    o.oneofIndex = 42;
    o.options = buildUnnamed29();
    o.packed = true;
    o.typeUrl = 'foo';
  }
  buildCounterField--;
  return o;
}

void checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(
      o.cardinality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jsonName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
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
    checkUnnamed29(o.options!);
    unittest.expect(o.packed!, unittest.isTrue);
    unittest.expect(
      o.typeUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterField--;
}

core.int buildCounterGetServiceIdentityMetadata = 0;
api.GetServiceIdentityMetadata buildGetServiceIdentityMetadata() {
  final o = api.GetServiceIdentityMetadata();
  buildCounterGetServiceIdentityMetadata++;
  if (buildCounterGetServiceIdentityMetadata < 3) {}
  buildCounterGetServiceIdentityMetadata--;
  return o;
}

void checkGetServiceIdentityMetadata(api.GetServiceIdentityMetadata o) {
  buildCounterGetServiceIdentityMetadata++;
  if (buildCounterGetServiceIdentityMetadata < 3) {}
  buildCounterGetServiceIdentityMetadata--;
}

core.int buildCounterGetServiceIdentityResponse = 0;
api.GetServiceIdentityResponse buildGetServiceIdentityResponse() {
  final o = api.GetServiceIdentityResponse();
  buildCounterGetServiceIdentityResponse++;
  if (buildCounterGetServiceIdentityResponse < 3) {
    o.identity = buildServiceIdentity();
    o.state = 'foo';
  }
  buildCounterGetServiceIdentityResponse--;
  return o;
}

void checkGetServiceIdentityResponse(api.GetServiceIdentityResponse o) {
  buildCounterGetServiceIdentityResponse++;
  if (buildCounterGetServiceIdentityResponse < 3) {
    checkServiceIdentity(o.identity!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetServiceIdentityResponse--;
}

core.List<api.Api> buildUnnamed30() => [
      buildApi(),
      buildApi(),
    ];

void checkUnnamed30(core.List<api.Api> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApi(o[0]);
  checkApi(o[1]);
}

core.List<api.Endpoint> buildUnnamed31() => [
      buildEndpoint(),
      buildEndpoint(),
    ];

void checkUnnamed31(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0]);
  checkEndpoint(o[1]);
}

core.List<api.Enum> buildUnnamed32() => [
      buildEnum(),
      buildEnum(),
    ];

void checkUnnamed32(core.List<api.Enum> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnum(o[0]);
  checkEnum(o[1]);
}

core.List<api.LogDescriptor> buildUnnamed33() => [
      buildLogDescriptor(),
      buildLogDescriptor(),
    ];

void checkUnnamed33(core.List<api.LogDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogDescriptor(o[0]);
  checkLogDescriptor(o[1]);
}

core.List<api.MetricDescriptor> buildUnnamed34() => [
      buildMetricDescriptor(),
      buildMetricDescriptor(),
    ];

void checkUnnamed34(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0]);
  checkMetricDescriptor(o[1]);
}

core.List<api.MonitoredResourceDescriptor> buildUnnamed35() => [
      buildMonitoredResourceDescriptor(),
      buildMonitoredResourceDescriptor(),
    ];

void checkUnnamed35(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0]);
  checkMonitoredResourceDescriptor(o[1]);
}

core.List<api.Type> buildUnnamed36() => [
      buildType(),
      buildType(),
    ];

void checkUnnamed36(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.List<api.Type> buildUnnamed37() => [
      buildType(),
      buildType(),
    ];

void checkUnnamed37(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.int buildCounterGoogleApiService = 0;
api.GoogleApiService buildGoogleApiService() {
  final o = api.GoogleApiService();
  buildCounterGoogleApiService++;
  if (buildCounterGoogleApiService < 3) {
    o.apis = buildUnnamed30();
    o.authentication = buildAuthentication();
    o.backend = buildBackend();
    o.billing = buildBilling();
    o.configVersion = 42;
    o.context = buildContext();
    o.control = buildControl();
    o.customError = buildCustomError();
    o.documentation = buildDocumentation();
    o.endpoints = buildUnnamed31();
    o.enums = buildUnnamed32();
    o.http = buildHttp();
    o.id = 'foo';
    o.logging = buildLogging();
    o.logs = buildUnnamed33();
    o.metrics = buildUnnamed34();
    o.monitoredResources = buildUnnamed35();
    o.monitoring = buildMonitoring();
    o.name = 'foo';
    o.producerProjectId = 'foo';
    o.quota = buildQuota();
    o.sourceInfo = buildSourceInfo();
    o.systemParameters = buildSystemParameters();
    o.systemTypes = buildUnnamed36();
    o.title = 'foo';
    o.types = buildUnnamed37();
    o.usage = buildUsage();
  }
  buildCounterGoogleApiService--;
  return o;
}

void checkGoogleApiService(api.GoogleApiService o) {
  buildCounterGoogleApiService++;
  if (buildCounterGoogleApiService < 3) {
    checkUnnamed30(o.apis!);
    checkAuthentication(o.authentication!);
    checkBackend(o.backend!);
    checkBilling(o.billing!);
    unittest.expect(
      o.configVersion!,
      unittest.equals(42),
    );
    checkContext(o.context!);
    checkControl(o.control!);
    checkCustomError(o.customError!);
    checkDocumentation(o.documentation!);
    checkUnnamed31(o.endpoints!);
    checkUnnamed32(o.enums!);
    checkHttp(o.http!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkLogging(o.logging!);
    checkUnnamed33(o.logs!);
    checkUnnamed34(o.metrics!);
    checkUnnamed35(o.monitoredResources!);
    checkMonitoring(o.monitoring!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.producerProjectId!,
      unittest.equals('foo'),
    );
    checkQuota(o.quota!);
    checkSourceInfo(o.sourceInfo!);
    checkSystemParameters(o.systemParameters!);
    checkUnnamed36(o.systemTypes!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.types!);
    checkUsage(o.usage!);
  }
  buildCounterGoogleApiService--;
}

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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

core.int buildCounterGoogleApiServiceusageV1OperationMetadata = 0;
api.GoogleApiServiceusageV1OperationMetadata
    buildGoogleApiServiceusageV1OperationMetadata() {
  final o = api.GoogleApiServiceusageV1OperationMetadata();
  buildCounterGoogleApiServiceusageV1OperationMetadata++;
  if (buildCounterGoogleApiServiceusageV1OperationMetadata < 3) {
    o.resourceNames = buildUnnamed38();
  }
  buildCounterGoogleApiServiceusageV1OperationMetadata--;
  return o;
}

void checkGoogleApiServiceusageV1OperationMetadata(
    api.GoogleApiServiceusageV1OperationMetadata o) {
  buildCounterGoogleApiServiceusageV1OperationMetadata++;
  if (buildCounterGoogleApiServiceusageV1OperationMetadata < 3) {
    checkUnnamed38(o.resourceNames!);
  }
  buildCounterGoogleApiServiceusageV1OperationMetadata--;
}

core.int buildCounterGoogleApiServiceusageV1Service = 0;
api.GoogleApiServiceusageV1Service buildGoogleApiServiceusageV1Service() {
  final o = api.GoogleApiServiceusageV1Service();
  buildCounterGoogleApiServiceusageV1Service++;
  if (buildCounterGoogleApiServiceusageV1Service < 3) {
    o.config = buildGoogleApiServiceusageV1ServiceConfig();
    o.name = 'foo';
    o.parent = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleApiServiceusageV1Service--;
  return o;
}

void checkGoogleApiServiceusageV1Service(api.GoogleApiServiceusageV1Service o) {
  buildCounterGoogleApiServiceusageV1Service++;
  if (buildCounterGoogleApiServiceusageV1Service < 3) {
    checkGoogleApiServiceusageV1ServiceConfig(o.config!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServiceusageV1Service--;
}

core.List<api.Api> buildUnnamed39() => [
      buildApi(),
      buildApi(),
    ];

void checkUnnamed39(core.List<api.Api> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApi(o[0]);
  checkApi(o[1]);
}

core.List<api.Endpoint> buildUnnamed40() => [
      buildEndpoint(),
      buildEndpoint(),
    ];

void checkUnnamed40(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0]);
  checkEndpoint(o[1]);
}

core.List<api.MonitoredResourceDescriptor> buildUnnamed41() => [
      buildMonitoredResourceDescriptor(),
      buildMonitoredResourceDescriptor(),
    ];

void checkUnnamed41(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0]);
  checkMonitoredResourceDescriptor(o[1]);
}

core.int buildCounterGoogleApiServiceusageV1ServiceConfig = 0;
api.GoogleApiServiceusageV1ServiceConfig
    buildGoogleApiServiceusageV1ServiceConfig() {
  final o = api.GoogleApiServiceusageV1ServiceConfig();
  buildCounterGoogleApiServiceusageV1ServiceConfig++;
  if (buildCounterGoogleApiServiceusageV1ServiceConfig < 3) {
    o.apis = buildUnnamed39();
    o.authentication = buildAuthentication();
    o.documentation = buildDocumentation();
    o.endpoints = buildUnnamed40();
    o.monitoredResources = buildUnnamed41();
    o.monitoring = buildMonitoring();
    o.name = 'foo';
    o.quota = buildQuota();
    o.title = 'foo';
    o.usage = buildUsage();
  }
  buildCounterGoogleApiServiceusageV1ServiceConfig--;
  return o;
}

void checkGoogleApiServiceusageV1ServiceConfig(
    api.GoogleApiServiceusageV1ServiceConfig o) {
  buildCounterGoogleApiServiceusageV1ServiceConfig++;
  if (buildCounterGoogleApiServiceusageV1ServiceConfig < 3) {
    checkUnnamed39(o.apis!);
    checkAuthentication(o.authentication!);
    checkDocumentation(o.documentation!);
    checkUnnamed40(o.endpoints!);
    checkUnnamed41(o.monitoredResources!);
    checkMonitoring(o.monitoring!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkQuota(o.quota!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkUsage(o.usage!);
  }
  buildCounterGoogleApiServiceusageV1ServiceConfig--;
}

core.int buildCounterGoogleApiServiceusageV1beta1GetServiceIdentityResponse = 0;
api.GoogleApiServiceusageV1beta1GetServiceIdentityResponse
    buildGoogleApiServiceusageV1beta1GetServiceIdentityResponse() {
  final o = api.GoogleApiServiceusageV1beta1GetServiceIdentityResponse();
  buildCounterGoogleApiServiceusageV1beta1GetServiceIdentityResponse++;
  if (buildCounterGoogleApiServiceusageV1beta1GetServiceIdentityResponse < 3) {
    o.identity = buildGoogleApiServiceusageV1beta1ServiceIdentity();
    o.state = 'foo';
  }
  buildCounterGoogleApiServiceusageV1beta1GetServiceIdentityResponse--;
  return o;
}

void checkGoogleApiServiceusageV1beta1GetServiceIdentityResponse(
    api.GoogleApiServiceusageV1beta1GetServiceIdentityResponse o) {
  buildCounterGoogleApiServiceusageV1beta1GetServiceIdentityResponse++;
  if (buildCounterGoogleApiServiceusageV1beta1GetServiceIdentityResponse < 3) {
    checkGoogleApiServiceusageV1beta1ServiceIdentity(o.identity!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServiceusageV1beta1GetServiceIdentityResponse--;
}

core.int buildCounterGoogleApiServiceusageV1beta1ServiceIdentity = 0;
api.GoogleApiServiceusageV1beta1ServiceIdentity
    buildGoogleApiServiceusageV1beta1ServiceIdentity() {
  final o = api.GoogleApiServiceusageV1beta1ServiceIdentity();
  buildCounterGoogleApiServiceusageV1beta1ServiceIdentity++;
  if (buildCounterGoogleApiServiceusageV1beta1ServiceIdentity < 3) {
    o.email = 'foo';
    o.uniqueId = 'foo';
  }
  buildCounterGoogleApiServiceusageV1beta1ServiceIdentity--;
  return o;
}

void checkGoogleApiServiceusageV1beta1ServiceIdentity(
    api.GoogleApiServiceusageV1beta1ServiceIdentity o) {
  buildCounterGoogleApiServiceusageV1beta1ServiceIdentity++;
  if (buildCounterGoogleApiServiceusageV1beta1ServiceIdentity < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uniqueId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServiceusageV1beta1ServiceIdentity--;
}

core.List<api.HttpRule> buildUnnamed42() => [
      buildHttpRule(),
      buildHttpRule(),
    ];

void checkUnnamed42(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0]);
  checkHttpRule(o[1]);
}

core.int buildCounterHttp = 0;
api.Http buildHttp() {
  final o = api.Http();
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    o.fullyDecodeReservedExpansion = true;
    o.rules = buildUnnamed42();
  }
  buildCounterHttp--;
  return o;
}

void checkHttp(api.Http o) {
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    unittest.expect(o.fullyDecodeReservedExpansion!, unittest.isTrue);
    checkUnnamed42(o.rules!);
  }
  buildCounterHttp--;
}

core.List<api.HttpRule> buildUnnamed43() => [
      buildHttpRule(),
      buildHttpRule(),
    ];

void checkUnnamed43(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0]);
  checkHttpRule(o[1]);
}

core.int buildCounterHttpRule = 0;
api.HttpRule buildHttpRule() {
  final o = api.HttpRule();
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    o.additionalBindings = buildUnnamed43();
    o.body = 'foo';
    o.custom = buildCustomHttpPattern();
    o.delete = 'foo';
    o.get = 'foo';
    o.patch = 'foo';
    o.post = 'foo';
    o.put = 'foo';
    o.responseBody = 'foo';
    o.selector = 'foo';
  }
  buildCounterHttpRule--;
  return o;
}

void checkHttpRule(api.HttpRule o) {
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    checkUnnamed43(o.additionalBindings!);
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    checkCustomHttpPattern(o.custom!);
    unittest.expect(
      o.delete!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.get!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.patch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.post!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.put!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseBody!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpRule--;
}

core.int buildCounterImportAdminOverridesMetadata = 0;
api.ImportAdminOverridesMetadata buildImportAdminOverridesMetadata() {
  final o = api.ImportAdminOverridesMetadata();
  buildCounterImportAdminOverridesMetadata++;
  if (buildCounterImportAdminOverridesMetadata < 3) {}
  buildCounterImportAdminOverridesMetadata--;
  return o;
}

void checkImportAdminOverridesMetadata(api.ImportAdminOverridesMetadata o) {
  buildCounterImportAdminOverridesMetadata++;
  if (buildCounterImportAdminOverridesMetadata < 3) {}
  buildCounterImportAdminOverridesMetadata--;
}

core.List<api.QuotaOverride> buildUnnamed44() => [
      buildQuotaOverride(),
      buildQuotaOverride(),
    ];

void checkUnnamed44(core.List<api.QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaOverride(o[0]);
  checkQuotaOverride(o[1]);
}

core.int buildCounterImportAdminOverridesResponse = 0;
api.ImportAdminOverridesResponse buildImportAdminOverridesResponse() {
  final o = api.ImportAdminOverridesResponse();
  buildCounterImportAdminOverridesResponse++;
  if (buildCounterImportAdminOverridesResponse < 3) {
    o.overrides = buildUnnamed44();
  }
  buildCounterImportAdminOverridesResponse--;
  return o;
}

void checkImportAdminOverridesResponse(api.ImportAdminOverridesResponse o) {
  buildCounterImportAdminOverridesResponse++;
  if (buildCounterImportAdminOverridesResponse < 3) {
    checkUnnamed44(o.overrides!);
  }
  buildCounterImportAdminOverridesResponse--;
}

core.int buildCounterImportAdminQuotaPoliciesMetadata = 0;
api.ImportAdminQuotaPoliciesMetadata buildImportAdminQuotaPoliciesMetadata() {
  final o = api.ImportAdminQuotaPoliciesMetadata();
  buildCounterImportAdminQuotaPoliciesMetadata++;
  if (buildCounterImportAdminQuotaPoliciesMetadata < 3) {}
  buildCounterImportAdminQuotaPoliciesMetadata--;
  return o;
}

void checkImportAdminQuotaPoliciesMetadata(
    api.ImportAdminQuotaPoliciesMetadata o) {
  buildCounterImportAdminQuotaPoliciesMetadata++;
  if (buildCounterImportAdminQuotaPoliciesMetadata < 3) {}
  buildCounterImportAdminQuotaPoliciesMetadata--;
}

core.List<api.AdminQuotaPolicy> buildUnnamed45() => [
      buildAdminQuotaPolicy(),
      buildAdminQuotaPolicy(),
    ];

void checkUnnamed45(core.List<api.AdminQuotaPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdminQuotaPolicy(o[0]);
  checkAdminQuotaPolicy(o[1]);
}

core.int buildCounterImportAdminQuotaPoliciesResponse = 0;
api.ImportAdminQuotaPoliciesResponse buildImportAdminQuotaPoliciesResponse() {
  final o = api.ImportAdminQuotaPoliciesResponse();
  buildCounterImportAdminQuotaPoliciesResponse++;
  if (buildCounterImportAdminQuotaPoliciesResponse < 3) {
    o.policies = buildUnnamed45();
  }
  buildCounterImportAdminQuotaPoliciesResponse--;
  return o;
}

void checkImportAdminQuotaPoliciesResponse(
    api.ImportAdminQuotaPoliciesResponse o) {
  buildCounterImportAdminQuotaPoliciesResponse++;
  if (buildCounterImportAdminQuotaPoliciesResponse < 3) {
    checkUnnamed45(o.policies!);
  }
  buildCounterImportAdminQuotaPoliciesResponse--;
}

core.int buildCounterImportConsumerOverridesMetadata = 0;
api.ImportConsumerOverridesMetadata buildImportConsumerOverridesMetadata() {
  final o = api.ImportConsumerOverridesMetadata();
  buildCounterImportConsumerOverridesMetadata++;
  if (buildCounterImportConsumerOverridesMetadata < 3) {}
  buildCounterImportConsumerOverridesMetadata--;
  return o;
}

void checkImportConsumerOverridesMetadata(
    api.ImportConsumerOverridesMetadata o) {
  buildCounterImportConsumerOverridesMetadata++;
  if (buildCounterImportConsumerOverridesMetadata < 3) {}
  buildCounterImportConsumerOverridesMetadata--;
}

core.List<api.QuotaOverride> buildUnnamed46() => [
      buildQuotaOverride(),
      buildQuotaOverride(),
    ];

void checkUnnamed46(core.List<api.QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaOverride(o[0]);
  checkQuotaOverride(o[1]);
}

core.int buildCounterImportConsumerOverridesResponse = 0;
api.ImportConsumerOverridesResponse buildImportConsumerOverridesResponse() {
  final o = api.ImportConsumerOverridesResponse();
  buildCounterImportConsumerOverridesResponse++;
  if (buildCounterImportConsumerOverridesResponse < 3) {
    o.overrides = buildUnnamed46();
  }
  buildCounterImportConsumerOverridesResponse--;
  return o;
}

void checkImportConsumerOverridesResponse(
    api.ImportConsumerOverridesResponse o) {
  buildCounterImportConsumerOverridesResponse++;
  if (buildCounterImportConsumerOverridesResponse < 3) {
    checkUnnamed46(o.overrides!);
  }
  buildCounterImportConsumerOverridesResponse--;
}

core.int buildCounterJwtLocation = 0;
api.JwtLocation buildJwtLocation() {
  final o = api.JwtLocation();
  buildCounterJwtLocation++;
  if (buildCounterJwtLocation < 3) {
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
    unittest.expect(
      o.header!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valuePrefix!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabelDescriptor--;
}

core.List<api.Operation> buildUnnamed47() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed47(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed47();
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
    checkUnnamed47(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.GoogleApiServiceusageV1Service> buildUnnamed48() => [
      buildGoogleApiServiceusageV1Service(),
      buildGoogleApiServiceusageV1Service(),
    ];

void checkUnnamed48(core.List<api.GoogleApiServiceusageV1Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServiceusageV1Service(o[0]);
  checkGoogleApiServiceusageV1Service(o[1]);
}

core.int buildCounterListServicesResponse = 0;
api.ListServicesResponse buildListServicesResponse() {
  final o = api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed48();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.services!);
  }
  buildCounterListServicesResponse--;
}

core.List<api.LabelDescriptor> buildUnnamed49() => [
      buildLabelDescriptor(),
      buildLabelDescriptor(),
    ];

void checkUnnamed49(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterLogDescriptor = 0;
api.LogDescriptor buildLogDescriptor() {
  final o = api.LogDescriptor();
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed49();
    o.name = 'foo';
  }
  buildCounterLogDescriptor--;
  return o;
}

void checkLogDescriptor(api.LogDescriptor o) {
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLogDescriptor--;
}

core.List<api.LoggingDestination> buildUnnamed50() => [
      buildLoggingDestination(),
      buildLoggingDestination(),
    ];

void checkUnnamed50(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0]);
  checkLoggingDestination(o[1]);
}

core.List<api.LoggingDestination> buildUnnamed51() => [
      buildLoggingDestination(),
      buildLoggingDestination(),
    ];

void checkUnnamed51(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0]);
  checkLoggingDestination(o[1]);
}

core.int buildCounterLogging = 0;
api.Logging buildLogging() {
  final o = api.Logging();
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    o.consumerDestinations = buildUnnamed50();
    o.producerDestinations = buildUnnamed51();
  }
  buildCounterLogging--;
  return o;
}

void checkLogging(api.Logging o) {
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    checkUnnamed50(o.consumerDestinations!);
    checkUnnamed51(o.producerDestinations!);
  }
  buildCounterLogging--;
}

core.List<core.String> buildUnnamed52() => [
      'foo',
      'foo',
    ];

void checkUnnamed52(core.List<core.String> o) {
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

core.int buildCounterLoggingDestination = 0;
api.LoggingDestination buildLoggingDestination() {
  final o = api.LoggingDestination();
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    o.logs = buildUnnamed52();
    o.monitoredResource = 'foo';
  }
  buildCounterLoggingDestination--;
  return o;
}

void checkLoggingDestination(api.LoggingDestination o) {
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    checkUnnamed52(o.logs!);
    unittest.expect(
      o.monitoredResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoggingDestination--;
}

core.List<api.Option> buildUnnamed53() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed53(core.List<api.Option> o) {
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
    o.options = buildUnnamed53();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.options!);
    unittest.expect(o.requestStreaming!, unittest.isTrue);
    unittest.expect(
      o.requestTypeUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.responseStreaming!, unittest.isTrue);
    unittest.expect(
      o.responseTypeUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
  }
  buildCounterMethod--;
}

core.List<api.LabelDescriptor> buildUnnamed54() => [
      buildLabelDescriptor(),
      buildLabelDescriptor(),
    ];

void checkUnnamed54(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.List<core.String> buildUnnamed55() => [
      'foo',
      'foo',
    ];

void checkUnnamed55(core.List<core.String> o) {
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

core.int buildCounterMetricDescriptor = 0;
api.MetricDescriptor buildMetricDescriptor() {
  final o = api.MetricDescriptor();
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed54();
    o.launchStage = 'foo';
    o.metadata = buildMetricDescriptorMetadata();
    o.metricKind = 'foo';
    o.monitoredResourceTypes = buildUnnamed55();
    o.name = 'foo';
    o.type = 'foo';
    o.unit = 'foo';
    o.valueType = 'foo';
  }
  buildCounterMetricDescriptor--;
  return o;
}

void checkMetricDescriptor(api.MetricDescriptor o) {
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    checkMetricDescriptorMetadata(o.metadata!);
    unittest.expect(
      o.metricKind!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.monitoredResourceTypes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricDescriptor--;
}

core.int buildCounterMetricDescriptorMetadata = 0;
api.MetricDescriptorMetadata buildMetricDescriptorMetadata() {
  final o = api.MetricDescriptorMetadata();
  buildCounterMetricDescriptorMetadata++;
  if (buildCounterMetricDescriptorMetadata < 3) {
    o.ingestDelay = 'foo';
    o.launchStage = 'foo';
    o.samplePeriod = 'foo';
  }
  buildCounterMetricDescriptorMetadata--;
  return o;
}

void checkMetricDescriptorMetadata(api.MetricDescriptorMetadata o) {
  buildCounterMetricDescriptorMetadata++;
  if (buildCounterMetricDescriptorMetadata < 3) {
    unittest.expect(
      o.ingestDelay!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.samplePeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricDescriptorMetadata--;
}

core.Map<core.String, core.String> buildUnnamed56() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed56(core.Map<core.String, core.String> o) {
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

core.int buildCounterMetricRule = 0;
api.MetricRule buildMetricRule() {
  final o = api.MetricRule();
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    o.metricCosts = buildUnnamed56();
    o.selector = 'foo';
  }
  buildCounterMetricRule--;
  return o;
}

void checkMetricRule(api.MetricRule o) {
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    checkUnnamed56(o.metricCosts!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.root!,
      unittest.equals('foo'),
    );
  }
  buildCounterMixin--;
}

core.List<api.LabelDescriptor> buildUnnamed57() => [
      buildLabelDescriptor(),
      buildLabelDescriptor(),
    ];

void checkUnnamed57(core.List<api.LabelDescriptor> o) {
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
    o.labels = buildUnnamed57();
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed57(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterMonitoredResourceDescriptor--;
}

core.List<api.MonitoringDestination> buildUnnamed58() => [
      buildMonitoringDestination(),
      buildMonitoringDestination(),
    ];

void checkUnnamed58(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

core.List<api.MonitoringDestination> buildUnnamed59() => [
      buildMonitoringDestination(),
      buildMonitoringDestination(),
    ];

void checkUnnamed59(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

core.int buildCounterMonitoring = 0;
api.Monitoring buildMonitoring() {
  final o = api.Monitoring();
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    o.consumerDestinations = buildUnnamed58();
    o.producerDestinations = buildUnnamed59();
  }
  buildCounterMonitoring--;
  return o;
}

void checkMonitoring(api.Monitoring o) {
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    checkUnnamed58(o.consumerDestinations!);
    checkUnnamed59(o.producerDestinations!);
  }
  buildCounterMonitoring--;
}

core.List<core.String> buildUnnamed60() => [
      'foo',
      'foo',
    ];

void checkUnnamed60(core.List<core.String> o) {
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

core.int buildCounterMonitoringDestination = 0;
api.MonitoringDestination buildMonitoringDestination() {
  final o = api.MonitoringDestination();
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    o.metrics = buildUnnamed60();
    o.monitoredResource = 'foo';
  }
  buildCounterMonitoringDestination--;
  return o;
}

void checkMonitoringDestination(api.MonitoringDestination o) {
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    checkUnnamed60(o.metrics!);
    unittest.expect(
      o.monitoredResource!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.canonicalScopes!,
      unittest.equals('foo'),
    );
  }
  buildCounterOAuthRequirements--;
}

core.Map<core.String, core.Object?> buildUnnamed61() => {
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

void checkUnnamed61(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed62() => {
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

void checkUnnamed62(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed61();
    o.name = 'foo';
    o.response = buildUnnamed62();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed61(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed63() => [
      'foo',
      'foo',
    ];

void checkUnnamed63(core.List<core.String> o) {
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

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  final o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.resourceNames = buildUnnamed63();
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    checkUnnamed63(o.resourceNames!);
  }
  buildCounterOperationMetadata--;
}

core.Map<core.String, core.Object?> buildUnnamed64() => {
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

void checkUnnamed64(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOption = 0;
api.Option buildOption() {
  final o = api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.name = 'foo';
    o.value = buildUnnamed64();
  }
  buildCounterOption--;
  return o;
}

void checkOption(api.Option o) {
  buildCounterOption++;
  if (buildCounterOption < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.value!);
  }
  buildCounterOption--;
}

core.List<api.Page> buildUnnamed65() => [
      buildPage(),
      buildPage(),
    ];

void checkUnnamed65(core.List<api.Page> o) {
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
    o.subpages = buildUnnamed65();
  }
  buildCounterPage--;
  return o;
}

void checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed65(o.subpages!);
  }
  buildCounterPage--;
}

core.List<api.QuotaLimit> buildUnnamed66() => [
      buildQuotaLimit(),
      buildQuotaLimit(),
    ];

void checkUnnamed66(core.List<api.QuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaLimit(o[0]);
  checkQuotaLimit(o[1]);
}

core.List<api.MetricRule> buildUnnamed67() => [
      buildMetricRule(),
      buildMetricRule(),
    ];

void checkUnnamed67(core.List<api.MetricRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricRule(o[0]);
  checkMetricRule(o[1]);
}

core.int buildCounterQuota = 0;
api.Quota buildQuota() {
  final o = api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.limits = buildUnnamed66();
    o.metricRules = buildUnnamed67();
  }
  buildCounterQuota--;
  return o;
}

void checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    checkUnnamed66(o.limits!);
    checkUnnamed67(o.metricRules!);
  }
  buildCounterQuota--;
}

core.Map<core.String, core.String> buildUnnamed68() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed68(core.Map<core.String, core.String> o) {
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
    o.values = buildUnnamed68();
  }
  buildCounterQuotaLimit--;
  return o;
}

void checkQuotaLimit(api.QuotaLimit o) {
  buildCounterQuotaLimit++;
  if (buildCounterQuotaLimit < 3) {
    unittest.expect(
      o.defaultLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.freeTier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metric!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    checkUnnamed68(o.values!);
  }
  buildCounterQuotaLimit--;
}

core.Map<core.String, core.String> buildUnnamed69() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed69(core.Map<core.String, core.String> o) {
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

core.int buildCounterQuotaOverride = 0;
api.QuotaOverride buildQuotaOverride() {
  final o = api.QuotaOverride();
  buildCounterQuotaOverride++;
  if (buildCounterQuotaOverride < 3) {
    o.adminOverrideAncestor = 'foo';
    o.dimensions = buildUnnamed69();
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
    unittest.expect(
      o.adminOverrideAncestor!,
      unittest.equals('foo'),
    );
    checkUnnamed69(o.dimensions!);
    unittest.expect(
      o.metric!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overrideValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterQuotaOverride--;
}

core.int buildCounterServiceIdentity = 0;
api.ServiceIdentity buildServiceIdentity() {
  final o = api.ServiceIdentity();
  buildCounterServiceIdentity++;
  if (buildCounterServiceIdentity < 3) {
    o.email = 'foo';
    o.uniqueId = 'foo';
  }
  buildCounterServiceIdentity--;
  return o;
}

void checkServiceIdentity(api.ServiceIdentity o) {
  buildCounterServiceIdentity++;
  if (buildCounterServiceIdentity < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uniqueId!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceIdentity--;
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
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceContext--;
}

core.Map<core.String, core.Object?> buildUnnamed70() => {
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

void checkUnnamed70(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed71() => [
      buildUnnamed70(),
      buildUnnamed70(),
    ];

void checkUnnamed71(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed70(o[0]);
  checkUnnamed70(o[1]);
}

core.int buildCounterSourceInfo = 0;
api.SourceInfo buildSourceInfo() {
  final o = api.SourceInfo();
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    o.sourceFiles = buildUnnamed71();
  }
  buildCounterSourceInfo--;
  return o;
}

void checkSourceInfo(api.SourceInfo o) {
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    checkUnnamed71(o.sourceFiles!);
  }
  buildCounterSourceInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed72() => {
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

void checkUnnamed72(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed73() => [
      buildUnnamed72(),
      buildUnnamed72(),
    ];

void checkUnnamed73(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed72(o[0]);
  checkUnnamed72(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed73();
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
    checkUnnamed73(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterSystemParameter = 0;
api.SystemParameter buildSystemParameter() {
  final o = api.SystemParameter();
  buildCounterSystemParameter++;
  if (buildCounterSystemParameter < 3) {
    o.httpHeader = 'foo';
    o.name = 'foo';
    o.urlQueryParameter = 'foo';
  }
  buildCounterSystemParameter--;
  return o;
}

void checkSystemParameter(api.SystemParameter o) {
  buildCounterSystemParameter++;
  if (buildCounterSystemParameter < 3) {
    unittest.expect(
      o.httpHeader!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.urlQueryParameter!,
      unittest.equals('foo'),
    );
  }
  buildCounterSystemParameter--;
}

core.List<api.SystemParameter> buildUnnamed74() => [
      buildSystemParameter(),
      buildSystemParameter(),
    ];

void checkUnnamed74(core.List<api.SystemParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameter(o[0]);
  checkSystemParameter(o[1]);
}

core.int buildCounterSystemParameterRule = 0;
api.SystemParameterRule buildSystemParameterRule() {
  final o = api.SystemParameterRule();
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    o.parameters = buildUnnamed74();
    o.selector = 'foo';
  }
  buildCounterSystemParameterRule--;
  return o;
}

void checkSystemParameterRule(api.SystemParameterRule o) {
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    checkUnnamed74(o.parameters!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterSystemParameterRule--;
}

core.List<api.SystemParameterRule> buildUnnamed75() => [
      buildSystemParameterRule(),
      buildSystemParameterRule(),
    ];

void checkUnnamed75(core.List<api.SystemParameterRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameterRule(o[0]);
  checkSystemParameterRule(o[1]);
}

core.int buildCounterSystemParameters = 0;
api.SystemParameters buildSystemParameters() {
  final o = api.SystemParameters();
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    o.rules = buildUnnamed75();
  }
  buildCounterSystemParameters--;
  return o;
}

void checkSystemParameters(api.SystemParameters o) {
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    checkUnnamed75(o.rules!);
  }
  buildCounterSystemParameters--;
}

core.List<api.Field> buildUnnamed76() => [
      buildField(),
      buildField(),
    ];

void checkUnnamed76(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

core.List<core.String> buildUnnamed77() => [
      'foo',
      'foo',
    ];

void checkUnnamed77(core.List<core.String> o) {
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

core.List<api.Option> buildUnnamed78() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed78(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterType = 0;
api.Type buildType() {
  final o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed76();
    o.name = 'foo';
    o.oneofs = buildUnnamed77();
    o.options = buildUnnamed78();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
  }
  buildCounterType--;
  return o;
}

void checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed76(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed77(o.oneofs!);
    checkUnnamed78(o.options!);
    checkSourceContext(o.sourceContext!);
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
  }
  buildCounterType--;
}

core.int buildCounterUpdateAdminQuotaPolicyMetadata = 0;
api.UpdateAdminQuotaPolicyMetadata buildUpdateAdminQuotaPolicyMetadata() {
  final o = api.UpdateAdminQuotaPolicyMetadata();
  buildCounterUpdateAdminQuotaPolicyMetadata++;
  if (buildCounterUpdateAdminQuotaPolicyMetadata < 3) {}
  buildCounterUpdateAdminQuotaPolicyMetadata--;
  return o;
}

void checkUpdateAdminQuotaPolicyMetadata(api.UpdateAdminQuotaPolicyMetadata o) {
  buildCounterUpdateAdminQuotaPolicyMetadata++;
  if (buildCounterUpdateAdminQuotaPolicyMetadata < 3) {}
  buildCounterUpdateAdminQuotaPolicyMetadata--;
}

core.List<core.String> buildUnnamed79() => [
      'foo',
      'foo',
    ];

void checkUnnamed79(core.List<core.String> o) {
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

core.List<api.UsageRule> buildUnnamed80() => [
      buildUsageRule(),
      buildUsageRule(),
    ];

void checkUnnamed80(core.List<api.UsageRule> o) {
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
    o.requirements = buildUnnamed79();
    o.rules = buildUnnamed80();
  }
  buildCounterUsage--;
  return o;
}

void checkUsage(api.Usage o) {
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    unittest.expect(
      o.producerNotificationChannel!,
      unittest.equals('foo'),
    );
    checkUnnamed79(o.requirements!);
    checkUnnamed80(o.rules!);
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
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
    unittest.expect(o.skipServiceControl!, unittest.isTrue);
  }
  buildCounterUsageRule--;
}

core.List<core.String> buildUnnamed81() => [
      'foo',
      'foo',
    ];

void checkUnnamed81(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-AdminQuotaPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdminQuotaPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdminQuotaPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdminQuotaPolicy(od);
    });
  });

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
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthProvider(od);
    });
  });

  unittest.group('obj-schema-AuthRequirement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthRequirement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthRequirement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthRequirement(od);
    });
  });

  unittest.group('obj-schema-Authentication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthentication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Authentication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthentication(od);
    });
  });

  unittest.group('obj-schema-AuthenticationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthenticationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthenticationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthenticationRule(od);
    });
  });

  unittest.group('obj-schema-Backend', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackend();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Backend.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackend(od);
    });
  });

  unittest.group('obj-schema-BackendRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackendRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackendRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackendRule(od);
    });
  });

  unittest.group('obj-schema-BatchCreateAdminOverridesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateAdminOverridesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateAdminOverridesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateAdminOverridesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchCreateConsumerOverridesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateConsumerOverridesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateConsumerOverridesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateConsumerOverridesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchEnableServicesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchEnableServicesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchEnableServicesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchEnableServicesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchEnableServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchEnableServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchEnableServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchEnableServicesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchGetServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetServicesResponse(od);
    });
  });

  unittest.group('obj-schema-Billing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBilling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Billing.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBilling(od);
    });
  });

  unittest.group('obj-schema-BillingDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingDestination(od);
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

  unittest.group('obj-schema-Context', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Context.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContext(od);
    });
  });

  unittest.group('obj-schema-ContextRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContextRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContextRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContextRule(od);
    });
  });

  unittest.group('obj-schema-Control', () {
    unittest.test('to-json--from-json', () async {
      final o = buildControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Control.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkControl(od);
    });
  });

  unittest.group('obj-schema-CreateAdminQuotaPolicyMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateAdminQuotaPolicyMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateAdminQuotaPolicyMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateAdminQuotaPolicyMetadata(od);
    });
  });

  unittest.group('obj-schema-CustomError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomError(od);
    });
  });

  unittest.group('obj-schema-CustomErrorRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomErrorRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomErrorRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomErrorRule(od);
    });
  });

  unittest.group('obj-schema-CustomHttpPattern', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomHttpPattern();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomHttpPattern.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomHttpPattern(od);
    });
  });

  unittest.group('obj-schema-DeleteAdminQuotaPolicyMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteAdminQuotaPolicyMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteAdminQuotaPolicyMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteAdminQuotaPolicyMetadata(od);
    });
  });

  unittest.group('obj-schema-DisableServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableServiceRequest(od);
    });
  });

  unittest.group('obj-schema-DisableServiceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableServiceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableServiceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableServiceResponse(od);
    });
  });

  unittest.group('obj-schema-Documentation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Documentation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentation(od);
    });
  });

  unittest.group('obj-schema-DocumentationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentationRule(od);
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

  unittest.group('obj-schema-EnableFailure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableFailure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableFailure.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableFailure(od);
    });
  });

  unittest.group('obj-schema-EnableServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableServiceRequest(od);
    });
  });

  unittest.group('obj-schema-EnableServiceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableServiceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableServiceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableServiceResponse(od);
    });
  });

  unittest.group('obj-schema-Endpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Endpoint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEndpoint(od);
    });
  });

  unittest.group('obj-schema-Enum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Enum.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnum(od);
    });
  });

  unittest.group('obj-schema-EnumValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnumValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnumValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnumValue(od);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Field.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkField(od);
    });
  });

  unittest.group('obj-schema-GetServiceIdentityMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetServiceIdentityMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetServiceIdentityMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetServiceIdentityMetadata(od);
    });
  });

  unittest.group('obj-schema-GetServiceIdentityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetServiceIdentityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetServiceIdentityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetServiceIdentityResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleApiService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiService(od);
    });
  });

  unittest.group('obj-schema-GoogleApiServiceusageV1OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiServiceusageV1OperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiServiceusageV1OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServiceusageV1OperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleApiServiceusageV1Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiServiceusageV1Service();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiServiceusageV1Service.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServiceusageV1Service(od);
    });
  });

  unittest.group('obj-schema-GoogleApiServiceusageV1ServiceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiServiceusageV1ServiceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiServiceusageV1ServiceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServiceusageV1ServiceConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleApiServiceusageV1beta1GetServiceIdentityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiServiceusageV1beta1GetServiceIdentityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleApiServiceusageV1beta1GetServiceIdentityResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServiceusageV1beta1GetServiceIdentityResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleApiServiceusageV1beta1ServiceIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiServiceusageV1beta1ServiceIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiServiceusageV1beta1ServiceIdentity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServiceusageV1beta1ServiceIdentity(od);
    });
  });

  unittest.group('obj-schema-Http', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Http.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttp(od);
    });
  });

  unittest.group('obj-schema-HttpRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpRule(od);
    });
  });

  unittest.group('obj-schema-ImportAdminOverridesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAdminOverridesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAdminOverridesMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAdminOverridesMetadata(od);
    });
  });

  unittest.group('obj-schema-ImportAdminOverridesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAdminOverridesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAdminOverridesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAdminOverridesResponse(od);
    });
  });

  unittest.group('obj-schema-ImportAdminQuotaPoliciesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAdminQuotaPoliciesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAdminQuotaPoliciesMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAdminQuotaPoliciesMetadata(od);
    });
  });

  unittest.group('obj-schema-ImportAdminQuotaPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAdminQuotaPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAdminQuotaPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAdminQuotaPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ImportConsumerOverridesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportConsumerOverridesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportConsumerOverridesMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportConsumerOverridesMetadata(od);
    });
  });

  unittest.group('obj-schema-ImportConsumerOverridesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportConsumerOverridesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportConsumerOverridesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportConsumerOverridesResponse(od);
    });
  });

  unittest.group('obj-schema-JwtLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwtLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JwtLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJwtLocation(od);
    });
  });

  unittest.group('obj-schema-LabelDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabelDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLabelDescriptor(od);
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

  unittest.group('obj-schema-ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-LogDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLogDescriptor(od);
    });
  });

  unittest.group('obj-schema-Logging', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogging();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Logging.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLogging(od);
    });
  });

  unittest.group('obj-schema-LoggingDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoggingDestination(od);
    });
  });

  unittest.group('obj-schema-Method', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMethod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Method.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMethod(od);
    });
  });

  unittest.group('obj-schema-MetricDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricDescriptor(od);
    });
  });

  unittest.group('obj-schema-MetricDescriptorMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricDescriptorMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricDescriptorMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricDescriptorMetadata(od);
    });
  });

  unittest.group('obj-schema-MetricRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MetricRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetricRule(od);
    });
  });

  unittest.group('obj-schema-Mixin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMixin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Mixin.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMixin(od);
    });
  });

  unittest.group('obj-schema-MonitoredResourceDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoredResourceDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoredResourceDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoredResourceDescriptor(od);
    });
  });

  unittest.group('obj-schema-Monitoring', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoring();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Monitoring.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMonitoring(od);
    });
  });

  unittest.group('obj-schema-MonitoringDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoringDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoringDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoringDestination(od);
    });
  });

  unittest.group('obj-schema-OAuthRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuthRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuthRequirements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOAuthRequirements(od);
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

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-Option', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Option.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOption(od);
    });
  });

  unittest.group('obj-schema-Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Page.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPage(od);
    });
  });

  unittest.group('obj-schema-Quota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Quota.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuota(od);
    });
  });

  unittest.group('obj-schema-QuotaLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuotaLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.QuotaLimit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuotaLimit(od);
    });
  });

  unittest.group('obj-schema-QuotaOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuotaOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuotaOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQuotaOverride(od);
    });
  });

  unittest.group('obj-schema-ServiceIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceIdentity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceIdentity(od);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceContext(od);
    });
  });

  unittest.group('obj-schema-SourceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SourceInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSourceInfo(od);
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

  unittest.group('obj-schema-SystemParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemParameter(od);
    });
  });

  unittest.group('obj-schema-SystemParameterRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemParameterRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemParameterRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemParameterRule(od);
    });
  });

  unittest.group('obj-schema-SystemParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemParameters(od);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () async {
      final o = buildType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Type.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkType(od);
    });
  });

  unittest.group('obj-schema-UpdateAdminQuotaPolicyMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateAdminQuotaPolicyMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateAdminQuotaPolicyMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateAdminQuotaPolicyMetadata(od);
    });
  });

  unittest.group('obj-schema-Usage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Usage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUsage(od);
    });
  });

  unittest.group('obj-schema-UsageRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UsageRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUsageRule(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).operations;
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
      final res = api.ServiceUsageApi(mock).operations;
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
      final res = api.ServiceUsageApi(mock).operations;
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
      final res = api.ServiceUsageApi(mock).operations;
      final arg_filter = 'foo';
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/operations'),
        );
        pathOffset += 13;

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.list(
          filter: arg_filter,
          name: arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchEnableServicesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchEnableServicesRequest(obj);

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
          await res.batchEnable(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed81();
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
          queryMap['names']!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchGetServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkBatchGetServicesResponse(response as api.BatchGetServicesResponse);
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
      final arg_request = buildDisableServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DisableServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableServiceRequest(obj);

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
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
      final arg_request = buildEnableServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnableServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableServiceRequest(obj);

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
          await res.enable(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
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
        final resp = convert.json.encode(buildGoogleApiServiceusageV1Service());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleApiServiceusageV1Service(
          response as api.GoogleApiServiceusageV1Service);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ServiceUsageApi(mock).services;
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
        final resp = convert.json.encode(buildListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListServicesResponse(response as api.ListServicesResponse);
    });
  });
}
