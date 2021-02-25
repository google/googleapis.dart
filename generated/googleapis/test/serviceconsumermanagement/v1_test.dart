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

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/serviceconsumermanagement/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAddTenantProjectRequest = 0;
api.AddTenantProjectRequest buildAddTenantProjectRequest() {
  var o = api.AddTenantProjectRequest();
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
    checkTenantProjectConfig(o.projectConfig! as api.TenantProjectConfig);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddTenantProjectRequest--;
}

core.List<api.Method> buildUnnamed3941() {
  var o = <api.Method>[];
  o.add(buildMethod());
  o.add(buildMethod());
  return o;
}

void checkUnnamed3941(core.List<api.Method> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethod(o[0] as api.Method);
  checkMethod(o[1] as api.Method);
}

core.List<api.Mixin> buildUnnamed3942() {
  var o = <api.Mixin>[];
  o.add(buildMixin());
  o.add(buildMixin());
  return o;
}

void checkUnnamed3942(core.List<api.Mixin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMixin(o[0] as api.Mixin);
  checkMixin(o[1] as api.Mixin);
}

core.List<api.Option> buildUnnamed3943() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3943(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterApi = 0;
api.Api buildApi() {
  var o = api.Api();
  buildCounterApi++;
  if (buildCounterApi < 3) {
    o.methods = buildUnnamed3941();
    o.mixins = buildUnnamed3942();
    o.name = 'foo';
    o.options = buildUnnamed3943();
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
    checkUnnamed3941(o.methods!);
    checkUnnamed3942(o.mixins!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3943(o.options!);
    checkSourceContext(o.sourceContext! as api.SourceContext);
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

core.int buildCounterApplyTenantProjectConfigRequest = 0;
api.ApplyTenantProjectConfigRequest buildApplyTenantProjectConfigRequest() {
  var o = api.ApplyTenantProjectConfigRequest();
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
    checkTenantProjectConfig(o.projectConfig! as api.TenantProjectConfig);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplyTenantProjectConfigRequest--;
}

core.int buildCounterAttachTenantProjectRequest = 0;
api.AttachTenantProjectRequest buildAttachTenantProjectRequest() {
  var o = api.AttachTenantProjectRequest();
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

core.List<api.JwtLocation> buildUnnamed3944() {
  var o = <api.JwtLocation>[];
  o.add(buildJwtLocation());
  o.add(buildJwtLocation());
  return o;
}

void checkUnnamed3944(core.List<api.JwtLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwtLocation(o[0] as api.JwtLocation);
  checkJwtLocation(o[1] as api.JwtLocation);
}

core.int buildCounterAuthProvider = 0;
api.AuthProvider buildAuthProvider() {
  var o = api.AuthProvider();
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    o.audiences = 'foo';
    o.authorizationUrl = 'foo';
    o.id = 'foo';
    o.issuer = 'foo';
    o.jwksUri = 'foo';
    o.jwtLocations = buildUnnamed3944();
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
    checkUnnamed3944(o.jwtLocations!);
  }
  buildCounterAuthProvider--;
}

core.int buildCounterAuthRequirement = 0;
api.AuthRequirement buildAuthRequirement() {
  var o = api.AuthRequirement();
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

core.List<api.AuthProvider> buildUnnamed3945() {
  var o = <api.AuthProvider>[];
  o.add(buildAuthProvider());
  o.add(buildAuthProvider());
  return o;
}

void checkUnnamed3945(core.List<api.AuthProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProvider(o[0] as api.AuthProvider);
  checkAuthProvider(o[1] as api.AuthProvider);
}

core.List<api.AuthenticationRule> buildUnnamed3946() {
  var o = <api.AuthenticationRule>[];
  o.add(buildAuthenticationRule());
  o.add(buildAuthenticationRule());
  return o;
}

void checkUnnamed3946(core.List<api.AuthenticationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthenticationRule(o[0] as api.AuthenticationRule);
  checkAuthenticationRule(o[1] as api.AuthenticationRule);
}

core.int buildCounterAuthentication = 0;
api.Authentication buildAuthentication() {
  var o = api.Authentication();
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    o.providers = buildUnnamed3945();
    o.rules = buildUnnamed3946();
  }
  buildCounterAuthentication--;
  return o;
}

void checkAuthentication(api.Authentication o) {
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    checkUnnamed3945(o.providers!);
    checkUnnamed3946(o.rules!);
  }
  buildCounterAuthentication--;
}

core.List<api.AuthRequirement> buildUnnamed3947() {
  var o = <api.AuthRequirement>[];
  o.add(buildAuthRequirement());
  o.add(buildAuthRequirement());
  return o;
}

void checkUnnamed3947(core.List<api.AuthRequirement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthRequirement(o[0] as api.AuthRequirement);
  checkAuthRequirement(o[1] as api.AuthRequirement);
}

core.int buildCounterAuthenticationRule = 0;
api.AuthenticationRule buildAuthenticationRule() {
  var o = api.AuthenticationRule();
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    o.allowWithoutCredential = true;
    o.oauth = buildOAuthRequirements();
    o.requirements = buildUnnamed3947();
    o.selector = 'foo';
  }
  buildCounterAuthenticationRule--;
  return o;
}

void checkAuthenticationRule(api.AuthenticationRule o) {
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    unittest.expect(o.allowWithoutCredential!, unittest.isTrue);
    checkOAuthRequirements(o.oauth! as api.OAuthRequirements);
    checkUnnamed3947(o.requirements!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthenticationRule--;
}

core.List<api.BackendRule> buildUnnamed3948() {
  var o = <api.BackendRule>[];
  o.add(buildBackendRule());
  o.add(buildBackendRule());
  return o;
}

void checkUnnamed3948(core.List<api.BackendRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendRule(o[0] as api.BackendRule);
  checkBackendRule(o[1] as api.BackendRule);
}

core.int buildCounterBackend = 0;
api.Backend buildBackend() {
  var o = api.Backend();
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    o.rules = buildUnnamed3948();
  }
  buildCounterBackend--;
  return o;
}

void checkBackend(api.Backend o) {
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    checkUnnamed3948(o.rules!);
  }
  buildCounterBackend--;
}

core.int buildCounterBackendRule = 0;
api.BackendRule buildBackendRule() {
  var o = api.BackendRule();
  buildCounterBackendRule++;
  if (buildCounterBackendRule < 3) {
    o.address = 'foo';
    o.deadline = 42.0;
    o.disableAuth = true;
    o.jwtAudience = 'foo';
    o.minDeadline = 42.0;
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
      o.minDeadline!,
      unittest.equals(42.0),
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

core.List<api.BillingDestination> buildUnnamed3949() {
  var o = <api.BillingDestination>[];
  o.add(buildBillingDestination());
  o.add(buildBillingDestination());
  return o;
}

void checkUnnamed3949(core.List<api.BillingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingDestination(o[0] as api.BillingDestination);
  checkBillingDestination(o[1] as api.BillingDestination);
}

core.int buildCounterBilling = 0;
api.Billing buildBilling() {
  var o = api.Billing();
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    o.consumerDestinations = buildUnnamed3949();
  }
  buildCounterBilling--;
  return o;
}

void checkBilling(api.Billing o) {
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    checkUnnamed3949(o.consumerDestinations!);
  }
  buildCounterBilling--;
}

core.int buildCounterBillingConfig = 0;
api.BillingConfig buildBillingConfig() {
  var o = api.BillingConfig();
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

core.List<core.String> buildUnnamed3950() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3950(core.List<core.String> o) {
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
  var o = api.BillingDestination();
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    o.metrics = buildUnnamed3950();
    o.monitoredResource = 'foo';
  }
  buildCounterBillingDestination--;
  return o;
}

void checkBillingDestination(api.BillingDestination o) {
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    checkUnnamed3950(o.metrics!);
    unittest.expect(
      o.monitoredResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingDestination--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
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

core.List<api.ContextRule> buildUnnamed3951() {
  var o = <api.ContextRule>[];
  o.add(buildContextRule());
  o.add(buildContextRule());
  return o;
}

void checkUnnamed3951(core.List<api.ContextRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextRule(o[0] as api.ContextRule);
  checkContextRule(o[1] as api.ContextRule);
}

core.int buildCounterContext = 0;
api.Context buildContext() {
  var o = api.Context();
  buildCounterContext++;
  if (buildCounterContext < 3) {
    o.rules = buildUnnamed3951();
  }
  buildCounterContext--;
  return o;
}

void checkContext(api.Context o) {
  buildCounterContext++;
  if (buildCounterContext < 3) {
    checkUnnamed3951(o.rules!);
  }
  buildCounterContext--;
}

core.List<core.String> buildUnnamed3952() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3952(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3953() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3953(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3954() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3954(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3955() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3955(core.List<core.String> o) {
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
  var o = api.ContextRule();
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    o.allowedRequestExtensions = buildUnnamed3952();
    o.allowedResponseExtensions = buildUnnamed3953();
    o.provided = buildUnnamed3954();
    o.requested = buildUnnamed3955();
    o.selector = 'foo';
  }
  buildCounterContextRule--;
  return o;
}

void checkContextRule(api.ContextRule o) {
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    checkUnnamed3952(o.allowedRequestExtensions!);
    checkUnnamed3953(o.allowedResponseExtensions!);
    checkUnnamed3954(o.provided!);
    checkUnnamed3955(o.requested!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterContextRule--;
}

core.int buildCounterControl = 0;
api.Control buildControl() {
  var o = api.Control();
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

core.int buildCounterCreateTenancyUnitRequest = 0;
api.CreateTenancyUnitRequest buildCreateTenancyUnitRequest() {
  var o = api.CreateTenancyUnitRequest();
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

core.List<api.CustomErrorRule> buildUnnamed3956() {
  var o = <api.CustomErrorRule>[];
  o.add(buildCustomErrorRule());
  o.add(buildCustomErrorRule());
  return o;
}

void checkUnnamed3956(core.List<api.CustomErrorRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomErrorRule(o[0] as api.CustomErrorRule);
  checkCustomErrorRule(o[1] as api.CustomErrorRule);
}

core.List<core.String> buildUnnamed3957() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3957(core.List<core.String> o) {
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
  var o = api.CustomError();
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    o.rules = buildUnnamed3956();
    o.types = buildUnnamed3957();
  }
  buildCounterCustomError--;
  return o;
}

void checkCustomError(api.CustomError o) {
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    checkUnnamed3956(o.rules!);
    checkUnnamed3957(o.types!);
  }
  buildCounterCustomError--;
}

core.int buildCounterCustomErrorRule = 0;
api.CustomErrorRule buildCustomErrorRule() {
  var o = api.CustomErrorRule();
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
  var o = api.CustomHttpPattern();
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

core.int buildCounterDeleteTenantProjectRequest = 0;
api.DeleteTenantProjectRequest buildDeleteTenantProjectRequest() {
  var o = api.DeleteTenantProjectRequest();
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

core.List<api.Page> buildUnnamed3958() {
  var o = <api.Page>[];
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

void checkUnnamed3958(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0] as api.Page);
  checkPage(o[1] as api.Page);
}

core.List<api.DocumentationRule> buildUnnamed3959() {
  var o = <api.DocumentationRule>[];
  o.add(buildDocumentationRule());
  o.add(buildDocumentationRule());
  return o;
}

void checkUnnamed3959(core.List<api.DocumentationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocumentationRule(o[0] as api.DocumentationRule);
  checkDocumentationRule(o[1] as api.DocumentationRule);
}

core.int buildCounterDocumentation = 0;
api.Documentation buildDocumentation() {
  var o = api.Documentation();
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    o.documentationRootUrl = 'foo';
    o.overview = 'foo';
    o.pages = buildUnnamed3958();
    o.rules = buildUnnamed3959();
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
    checkUnnamed3958(o.pages!);
    checkUnnamed3959(o.rules!);
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
  var o = api.DocumentationRule();
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
  var o = api.Empty();
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

core.List<core.String> buildUnnamed3960() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3960(core.List<core.String> o) {
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

core.int buildCounterEndpoint = 0;
api.Endpoint buildEndpoint() {
  var o = api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    o.aliases = buildUnnamed3960();
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
    checkUnnamed3960(o.aliases!);
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

core.List<api.EnumValue> buildUnnamed3961() {
  var o = <api.EnumValue>[];
  o.add(buildEnumValue());
  o.add(buildEnumValue());
  return o;
}

void checkUnnamed3961(core.List<api.EnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnumValue(o[0] as api.EnumValue);
  checkEnumValue(o[1] as api.EnumValue);
}

core.List<api.Option> buildUnnamed3962() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3962(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterEnum = 0;
api.Enum buildEnum() {
  var o = api.Enum();
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    o.enumvalue = buildUnnamed3961();
    o.name = 'foo';
    o.options = buildUnnamed3962();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
  }
  buildCounterEnum--;
  return o;
}

void checkEnum(api.Enum o) {
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    checkUnnamed3961(o.enumvalue!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3962(o.options!);
    checkSourceContext(o.sourceContext! as api.SourceContext);
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnum--;
}

core.List<api.Option> buildUnnamed3963() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3963(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterEnumValue = 0;
api.EnumValue buildEnumValue() {
  var o = api.EnumValue();
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    o.name = 'foo';
    o.number = 42;
    o.options = buildUnnamed3963();
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
    checkUnnamed3963(o.options!);
  }
  buildCounterEnumValue--;
}

core.List<api.Option> buildUnnamed3964() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3964(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterField = 0;
api.Field buildField() {
  var o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.cardinality = 'foo';
    o.defaultValue = 'foo';
    o.jsonName = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.number = 42;
    o.oneofIndex = 42;
    o.options = buildUnnamed3964();
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
    checkUnnamed3964(o.options!);
    unittest.expect(o.packed!, unittest.isTrue);
    unittest.expect(
      o.typeUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterField--;
}

core.List<api.HttpRule> buildUnnamed3965() {
  var o = <api.HttpRule>[];
  o.add(buildHttpRule());
  o.add(buildHttpRule());
  return o;
}

void checkUnnamed3965(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0] as api.HttpRule);
  checkHttpRule(o[1] as api.HttpRule);
}

core.int buildCounterHttp = 0;
api.Http buildHttp() {
  var o = api.Http();
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    o.fullyDecodeReservedExpansion = true;
    o.rules = buildUnnamed3965();
  }
  buildCounterHttp--;
  return o;
}

void checkHttp(api.Http o) {
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    unittest.expect(o.fullyDecodeReservedExpansion!, unittest.isTrue);
    checkUnnamed3965(o.rules!);
  }
  buildCounterHttp--;
}

core.List<api.HttpRule> buildUnnamed3966() {
  var o = <api.HttpRule>[];
  o.add(buildHttpRule());
  o.add(buildHttpRule());
  return o;
}

void checkUnnamed3966(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0] as api.HttpRule);
  checkHttpRule(o[1] as api.HttpRule);
}

core.int buildCounterHttpRule = 0;
api.HttpRule buildHttpRule() {
  var o = api.HttpRule();
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    o.additionalBindings = buildUnnamed3966();
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
    checkUnnamed3966(o.additionalBindings!);
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    checkCustomHttpPattern(o.custom! as api.CustomHttpPattern);
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

core.int buildCounterJwtLocation = 0;
api.JwtLocation buildJwtLocation() {
  var o = api.JwtLocation();
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
  var o = api.LabelDescriptor();
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

core.List<api.Operation> buildUnnamed3967() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed3967(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed3967();
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
    checkUnnamed3967(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.TenancyUnit> buildUnnamed3968() {
  var o = <api.TenancyUnit>[];
  o.add(buildTenancyUnit());
  o.add(buildTenancyUnit());
  return o;
}

void checkUnnamed3968(core.List<api.TenancyUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTenancyUnit(o[0] as api.TenancyUnit);
  checkTenancyUnit(o[1] as api.TenancyUnit);
}

core.int buildCounterListTenancyUnitsResponse = 0;
api.ListTenancyUnitsResponse buildListTenancyUnitsResponse() {
  var o = api.ListTenancyUnitsResponse();
  buildCounterListTenancyUnitsResponse++;
  if (buildCounterListTenancyUnitsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tenancyUnits = buildUnnamed3968();
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
    checkUnnamed3968(o.tenancyUnits!);
  }
  buildCounterListTenancyUnitsResponse--;
}

core.List<api.LabelDescriptor> buildUnnamed3969() {
  var o = <api.LabelDescriptor>[];
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

void checkUnnamed3969(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0] as api.LabelDescriptor);
  checkLabelDescriptor(o[1] as api.LabelDescriptor);
}

core.int buildCounterLogDescriptor = 0;
api.LogDescriptor buildLogDescriptor() {
  var o = api.LogDescriptor();
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed3969();
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
    checkUnnamed3969(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLogDescriptor--;
}

core.List<api.LoggingDestination> buildUnnamed3970() {
  var o = <api.LoggingDestination>[];
  o.add(buildLoggingDestination());
  o.add(buildLoggingDestination());
  return o;
}

void checkUnnamed3970(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0] as api.LoggingDestination);
  checkLoggingDestination(o[1] as api.LoggingDestination);
}

core.List<api.LoggingDestination> buildUnnamed3971() {
  var o = <api.LoggingDestination>[];
  o.add(buildLoggingDestination());
  o.add(buildLoggingDestination());
  return o;
}

void checkUnnamed3971(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0] as api.LoggingDestination);
  checkLoggingDestination(o[1] as api.LoggingDestination);
}

core.int buildCounterLogging = 0;
api.Logging buildLogging() {
  var o = api.Logging();
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    o.consumerDestinations = buildUnnamed3970();
    o.producerDestinations = buildUnnamed3971();
  }
  buildCounterLogging--;
  return o;
}

void checkLogging(api.Logging o) {
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    checkUnnamed3970(o.consumerDestinations!);
    checkUnnamed3971(o.producerDestinations!);
  }
  buildCounterLogging--;
}

core.List<core.String> buildUnnamed3972() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3972(core.List<core.String> o) {
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
  var o = api.LoggingDestination();
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    o.logs = buildUnnamed3972();
    o.monitoredResource = 'foo';
  }
  buildCounterLoggingDestination--;
  return o;
}

void checkLoggingDestination(api.LoggingDestination o) {
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    checkUnnamed3972(o.logs!);
    unittest.expect(
      o.monitoredResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoggingDestination--;
}

core.List<api.Option> buildUnnamed3973() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3973(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterMethod = 0;
api.Method buildMethod() {
  var o = api.Method();
  buildCounterMethod++;
  if (buildCounterMethod < 3) {
    o.name = 'foo';
    o.options = buildUnnamed3973();
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
    checkUnnamed3973(o.options!);
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

core.List<api.LabelDescriptor> buildUnnamed3974() {
  var o = <api.LabelDescriptor>[];
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

void checkUnnamed3974(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0] as api.LabelDescriptor);
  checkLabelDescriptor(o[1] as api.LabelDescriptor);
}

core.List<core.String> buildUnnamed3975() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3975(core.List<core.String> o) {
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
  var o = api.MetricDescriptor();
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed3974();
    o.launchStage = 'foo';
    o.metadata = buildMetricDescriptorMetadata();
    o.metricKind = 'foo';
    o.monitoredResourceTypes = buildUnnamed3975();
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
    checkUnnamed3974(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    checkMetricDescriptorMetadata(o.metadata! as api.MetricDescriptorMetadata);
    unittest.expect(
      o.metricKind!,
      unittest.equals('foo'),
    );
    checkUnnamed3975(o.monitoredResourceTypes!);
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
  var o = api.MetricDescriptorMetadata();
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

core.Map<core.String, core.String> buildUnnamed3976() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3976(core.Map<core.String, core.String> o) {
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
  var o = api.MetricRule();
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    o.metricCosts = buildUnnamed3976();
    o.selector = 'foo';
  }
  buildCounterMetricRule--;
  return o;
}

void checkMetricRule(api.MetricRule o) {
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    checkUnnamed3976(o.metricCosts!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricRule--;
}

core.int buildCounterMixin = 0;
api.Mixin buildMixin() {
  var o = api.Mixin();
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

core.List<api.LabelDescriptor> buildUnnamed3977() {
  var o = <api.LabelDescriptor>[];
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

void checkUnnamed3977(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0] as api.LabelDescriptor);
  checkLabelDescriptor(o[1] as api.LabelDescriptor);
}

core.int buildCounterMonitoredResourceDescriptor = 0;
api.MonitoredResourceDescriptor buildMonitoredResourceDescriptor() {
  var o = api.MonitoredResourceDescriptor();
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed3977();
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
    checkUnnamed3977(o.labels!);
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

core.List<api.MonitoringDestination> buildUnnamed3978() {
  var o = <api.MonitoringDestination>[];
  o.add(buildMonitoringDestination());
  o.add(buildMonitoringDestination());
  return o;
}

void checkUnnamed3978(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0] as api.MonitoringDestination);
  checkMonitoringDestination(o[1] as api.MonitoringDestination);
}

core.List<api.MonitoringDestination> buildUnnamed3979() {
  var o = <api.MonitoringDestination>[];
  o.add(buildMonitoringDestination());
  o.add(buildMonitoringDestination());
  return o;
}

void checkUnnamed3979(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0] as api.MonitoringDestination);
  checkMonitoringDestination(o[1] as api.MonitoringDestination);
}

core.int buildCounterMonitoring = 0;
api.Monitoring buildMonitoring() {
  var o = api.Monitoring();
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    o.consumerDestinations = buildUnnamed3978();
    o.producerDestinations = buildUnnamed3979();
  }
  buildCounterMonitoring--;
  return o;
}

void checkMonitoring(api.Monitoring o) {
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    checkUnnamed3978(o.consumerDestinations!);
    checkUnnamed3979(o.producerDestinations!);
  }
  buildCounterMonitoring--;
}

core.List<core.String> buildUnnamed3980() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3980(core.List<core.String> o) {
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
  var o = api.MonitoringDestination();
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    o.metrics = buildUnnamed3980();
    o.monitoredResource = 'foo';
  }
  buildCounterMonitoringDestination--;
  return o;
}

void checkMonitoringDestination(api.MonitoringDestination o) {
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    checkUnnamed3980(o.metrics!);
    unittest.expect(
      o.monitoredResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterMonitoringDestination--;
}

core.int buildCounterOAuthRequirements = 0;
api.OAuthRequirements buildOAuthRequirements() {
  var o = api.OAuthRequirements();
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

core.Map<core.String, core.Object> buildUnnamed3981() {
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

void checkUnnamed3981(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed3982() {
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

void checkUnnamed3982(core.Map<core.String, core.Object> o) {
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
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed3981();
    o.name = 'foo';
    o.response = buildUnnamed3982();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed3981(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3982(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object> buildUnnamed3983() {
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

void checkUnnamed3983(core.Map<core.String, core.Object> o) {
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
  var o = api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.name = 'foo';
    o.value = buildUnnamed3983();
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
    checkUnnamed3983(o.value!);
  }
  buildCounterOption--;
}

core.List<api.Page> buildUnnamed3984() {
  var o = <api.Page>[];
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

void checkUnnamed3984(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0] as api.Page);
  checkPage(o[1] as api.Page);
}

core.int buildCounterPage = 0;
api.Page buildPage() {
  var o = api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.content = 'foo';
    o.name = 'foo';
    o.subpages = buildUnnamed3984();
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
    checkUnnamed3984(o.subpages!);
  }
  buildCounterPage--;
}

core.List<core.String> buildUnnamed3985() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3985(core.List<core.String> o) {
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
  var o = api.PolicyBinding();
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    o.members = buildUnnamed3985();
    o.role = 'foo';
  }
  buildCounterPolicyBinding--;
  return o;
}

void checkPolicyBinding(api.PolicyBinding o) {
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    checkUnnamed3985(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyBinding--;
}

core.List<api.QuotaLimit> buildUnnamed3986() {
  var o = <api.QuotaLimit>[];
  o.add(buildQuotaLimit());
  o.add(buildQuotaLimit());
  return o;
}

void checkUnnamed3986(core.List<api.QuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaLimit(o[0] as api.QuotaLimit);
  checkQuotaLimit(o[1] as api.QuotaLimit);
}

core.List<api.MetricRule> buildUnnamed3987() {
  var o = <api.MetricRule>[];
  o.add(buildMetricRule());
  o.add(buildMetricRule());
  return o;
}

void checkUnnamed3987(core.List<api.MetricRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricRule(o[0] as api.MetricRule);
  checkMetricRule(o[1] as api.MetricRule);
}

core.int buildCounterQuota = 0;
api.Quota buildQuota() {
  var o = api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.limits = buildUnnamed3986();
    o.metricRules = buildUnnamed3987();
  }
  buildCounterQuota--;
  return o;
}

void checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    checkUnnamed3986(o.limits!);
    checkUnnamed3987(o.metricRules!);
  }
  buildCounterQuota--;
}

core.Map<core.String, core.String> buildUnnamed3988() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3988(core.Map<core.String, core.String> o) {
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
  var o = api.QuotaLimit();
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
    o.values = buildUnnamed3988();
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
    checkUnnamed3988(o.values!);
  }
  buildCounterQuotaLimit--;
}

core.int buildCounterRemoveTenantProjectRequest = 0;
api.RemoveTenantProjectRequest buildRemoveTenantProjectRequest() {
  var o = api.RemoveTenantProjectRequest();
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

core.List<api.TenancyUnit> buildUnnamed3989() {
  var o = <api.TenancyUnit>[];
  o.add(buildTenancyUnit());
  o.add(buildTenancyUnit());
  return o;
}

void checkUnnamed3989(core.List<api.TenancyUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTenancyUnit(o[0] as api.TenancyUnit);
  checkTenancyUnit(o[1] as api.TenancyUnit);
}

core.int buildCounterSearchTenancyUnitsResponse = 0;
api.SearchTenancyUnitsResponse buildSearchTenancyUnitsResponse() {
  var o = api.SearchTenancyUnitsResponse();
  buildCounterSearchTenancyUnitsResponse++;
  if (buildCounterSearchTenancyUnitsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tenancyUnits = buildUnnamed3989();
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
    checkUnnamed3989(o.tenancyUnits!);
  }
  buildCounterSearchTenancyUnitsResponse--;
}

core.List<api.Api> buildUnnamed3990() {
  var o = <api.Api>[];
  o.add(buildApi());
  o.add(buildApi());
  return o;
}

void checkUnnamed3990(core.List<api.Api> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApi(o[0] as api.Api);
  checkApi(o[1] as api.Api);
}

core.List<api.Endpoint> buildUnnamed3991() {
  var o = <api.Endpoint>[];
  o.add(buildEndpoint());
  o.add(buildEndpoint());
  return o;
}

void checkUnnamed3991(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0] as api.Endpoint);
  checkEndpoint(o[1] as api.Endpoint);
}

core.List<api.Enum> buildUnnamed3992() {
  var o = <api.Enum>[];
  o.add(buildEnum());
  o.add(buildEnum());
  return o;
}

void checkUnnamed3992(core.List<api.Enum> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnum(o[0] as api.Enum);
  checkEnum(o[1] as api.Enum);
}

core.List<api.LogDescriptor> buildUnnamed3993() {
  var o = <api.LogDescriptor>[];
  o.add(buildLogDescriptor());
  o.add(buildLogDescriptor());
  return o;
}

void checkUnnamed3993(core.List<api.LogDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogDescriptor(o[0] as api.LogDescriptor);
  checkLogDescriptor(o[1] as api.LogDescriptor);
}

core.List<api.MetricDescriptor> buildUnnamed3994() {
  var o = <api.MetricDescriptor>[];
  o.add(buildMetricDescriptor());
  o.add(buildMetricDescriptor());
  return o;
}

void checkUnnamed3994(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0] as api.MetricDescriptor);
  checkMetricDescriptor(o[1] as api.MetricDescriptor);
}

core.List<api.MonitoredResourceDescriptor> buildUnnamed3995() {
  var o = <api.MonitoredResourceDescriptor>[];
  o.add(buildMonitoredResourceDescriptor());
  o.add(buildMonitoredResourceDescriptor());
  return o;
}

void checkUnnamed3995(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0] as api.MonitoredResourceDescriptor);
  checkMonitoredResourceDescriptor(o[1] as api.MonitoredResourceDescriptor);
}

core.List<api.Type> buildUnnamed3996() {
  var o = <api.Type>[];
  o.add(buildType());
  o.add(buildType());
  return o;
}

void checkUnnamed3996(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0] as api.Type);
  checkType(o[1] as api.Type);
}

core.List<api.Type> buildUnnamed3997() {
  var o = <api.Type>[];
  o.add(buildType());
  o.add(buildType());
  return o;
}

void checkUnnamed3997(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0] as api.Type);
  checkType(o[1] as api.Type);
}

core.int buildCounterService = 0;
api.Service buildService() {
  var o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.apis = buildUnnamed3990();
    o.authentication = buildAuthentication();
    o.backend = buildBackend();
    o.billing = buildBilling();
    o.configVersion = 42;
    o.context = buildContext();
    o.control = buildControl();
    o.customError = buildCustomError();
    o.documentation = buildDocumentation();
    o.endpoints = buildUnnamed3991();
    o.enums = buildUnnamed3992();
    o.http = buildHttp();
    o.id = 'foo';
    o.logging = buildLogging();
    o.logs = buildUnnamed3993();
    o.metrics = buildUnnamed3994();
    o.monitoredResources = buildUnnamed3995();
    o.monitoring = buildMonitoring();
    o.name = 'foo';
    o.producerProjectId = 'foo';
    o.quota = buildQuota();
    o.sourceInfo = buildSourceInfo();
    o.systemParameters = buildSystemParameters();
    o.systemTypes = buildUnnamed3996();
    o.title = 'foo';
    o.types = buildUnnamed3997();
    o.usage = buildUsage();
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkUnnamed3990(o.apis!);
    checkAuthentication(o.authentication! as api.Authentication);
    checkBackend(o.backend! as api.Backend);
    checkBilling(o.billing! as api.Billing);
    unittest.expect(
      o.configVersion!,
      unittest.equals(42),
    );
    checkContext(o.context! as api.Context);
    checkControl(o.control! as api.Control);
    checkCustomError(o.customError! as api.CustomError);
    checkDocumentation(o.documentation! as api.Documentation);
    checkUnnamed3991(o.endpoints!);
    checkUnnamed3992(o.enums!);
    checkHttp(o.http! as api.Http);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkLogging(o.logging! as api.Logging);
    checkUnnamed3993(o.logs!);
    checkUnnamed3994(o.metrics!);
    checkUnnamed3995(o.monitoredResources!);
    checkMonitoring(o.monitoring! as api.Monitoring);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.producerProjectId!,
      unittest.equals('foo'),
    );
    checkQuota(o.quota! as api.Quota);
    checkSourceInfo(o.sourceInfo! as api.SourceInfo);
    checkSystemParameters(o.systemParameters! as api.SystemParameters);
    checkUnnamed3996(o.systemTypes!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkUnnamed3997(o.types!);
    checkUsage(o.usage! as api.Usage);
  }
  buildCounterService--;
}

core.List<core.String> buildUnnamed3998() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3998(core.List<core.String> o) {
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
  var o = api.ServiceAccountConfig();
  buildCounterServiceAccountConfig++;
  if (buildCounterServiceAccountConfig < 3) {
    o.accountId = 'foo';
    o.tenantProjectRoles = buildUnnamed3998();
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
    checkUnnamed3998(o.tenantProjectRoles!);
  }
  buildCounterServiceAccountConfig--;
}

core.int buildCounterSourceContext = 0;
api.SourceContext buildSourceContext() {
  var o = api.SourceContext();
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

core.Map<core.String, core.Object> buildUnnamed3999() {
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

void checkUnnamed3999(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed4000() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed3999());
  o.add(buildUnnamed3999());
  return o;
}

void checkUnnamed4000(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3999(o[0]);
  checkUnnamed3999(o[1]);
}

core.int buildCounterSourceInfo = 0;
api.SourceInfo buildSourceInfo() {
  var o = api.SourceInfo();
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    o.sourceFiles = buildUnnamed4000();
  }
  buildCounterSourceInfo--;
  return o;
}

void checkSourceInfo(api.SourceInfo o) {
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    checkUnnamed4000(o.sourceFiles!);
  }
  buildCounterSourceInfo--;
}

core.Map<core.String, core.Object> buildUnnamed4001() {
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

void checkUnnamed4001(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed4002() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed4001());
  o.add(buildUnnamed4001());
  return o;
}

void checkUnnamed4002(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4001(o[0]);
  checkUnnamed4001(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4002();
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
    checkUnnamed4002(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterSystemParameter = 0;
api.SystemParameter buildSystemParameter() {
  var o = api.SystemParameter();
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

core.List<api.SystemParameter> buildUnnamed4003() {
  var o = <api.SystemParameter>[];
  o.add(buildSystemParameter());
  o.add(buildSystemParameter());
  return o;
}

void checkUnnamed4003(core.List<api.SystemParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameter(o[0] as api.SystemParameter);
  checkSystemParameter(o[1] as api.SystemParameter);
}

core.int buildCounterSystemParameterRule = 0;
api.SystemParameterRule buildSystemParameterRule() {
  var o = api.SystemParameterRule();
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    o.parameters = buildUnnamed4003();
    o.selector = 'foo';
  }
  buildCounterSystemParameterRule--;
  return o;
}

void checkSystemParameterRule(api.SystemParameterRule o) {
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    checkUnnamed4003(o.parameters!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterSystemParameterRule--;
}

core.List<api.SystemParameterRule> buildUnnamed4004() {
  var o = <api.SystemParameterRule>[];
  o.add(buildSystemParameterRule());
  o.add(buildSystemParameterRule());
  return o;
}

void checkUnnamed4004(core.List<api.SystemParameterRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameterRule(o[0] as api.SystemParameterRule);
  checkSystemParameterRule(o[1] as api.SystemParameterRule);
}

core.int buildCounterSystemParameters = 0;
api.SystemParameters buildSystemParameters() {
  var o = api.SystemParameters();
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    o.rules = buildUnnamed4004();
  }
  buildCounterSystemParameters--;
  return o;
}

void checkSystemParameters(api.SystemParameters o) {
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    checkUnnamed4004(o.rules!);
  }
  buildCounterSystemParameters--;
}

core.List<api.TenantResource> buildUnnamed4005() {
  var o = <api.TenantResource>[];
  o.add(buildTenantResource());
  o.add(buildTenantResource());
  return o;
}

void checkUnnamed4005(core.List<api.TenantResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTenantResource(o[0] as api.TenantResource);
  checkTenantResource(o[1] as api.TenantResource);
}

core.int buildCounterTenancyUnit = 0;
api.TenancyUnit buildTenancyUnit() {
  var o = api.TenancyUnit();
  buildCounterTenancyUnit++;
  if (buildCounterTenancyUnit < 3) {
    o.consumer = 'foo';
    o.createTime = 'foo';
    o.name = 'foo';
    o.service = 'foo';
    o.tenantResources = buildUnnamed4005();
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
    checkUnnamed4005(o.tenantResources!);
  }
  buildCounterTenancyUnit--;
}

core.Map<core.String, core.String> buildUnnamed4006() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4006(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed4007() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4007(core.List<core.String> o) {
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
  var o = api.TenantProjectConfig();
  buildCounterTenantProjectConfig++;
  if (buildCounterTenantProjectConfig < 3) {
    o.billingConfig = buildBillingConfig();
    o.folder = 'foo';
    o.labels = buildUnnamed4006();
    o.serviceAccountConfig = buildServiceAccountConfig();
    o.services = buildUnnamed4007();
    o.tenantProjectPolicy = buildTenantProjectPolicy();
  }
  buildCounterTenantProjectConfig--;
  return o;
}

void checkTenantProjectConfig(api.TenantProjectConfig o) {
  buildCounterTenantProjectConfig++;
  if (buildCounterTenantProjectConfig < 3) {
    checkBillingConfig(o.billingConfig! as api.BillingConfig);
    unittest.expect(
      o.folder!,
      unittest.equals('foo'),
    );
    checkUnnamed4006(o.labels!);
    checkServiceAccountConfig(
        o.serviceAccountConfig! as api.ServiceAccountConfig);
    checkUnnamed4007(o.services!);
    checkTenantProjectPolicy(o.tenantProjectPolicy! as api.TenantProjectPolicy);
  }
  buildCounterTenantProjectConfig--;
}

core.List<api.PolicyBinding> buildUnnamed4008() {
  var o = <api.PolicyBinding>[];
  o.add(buildPolicyBinding());
  o.add(buildPolicyBinding());
  return o;
}

void checkUnnamed4008(core.List<api.PolicyBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBinding(o[0] as api.PolicyBinding);
  checkPolicyBinding(o[1] as api.PolicyBinding);
}

core.int buildCounterTenantProjectPolicy = 0;
api.TenantProjectPolicy buildTenantProjectPolicy() {
  var o = api.TenantProjectPolicy();
  buildCounterTenantProjectPolicy++;
  if (buildCounterTenantProjectPolicy < 3) {
    o.policyBindings = buildUnnamed4008();
  }
  buildCounterTenantProjectPolicy--;
  return o;
}

void checkTenantProjectPolicy(api.TenantProjectPolicy o) {
  buildCounterTenantProjectPolicy++;
  if (buildCounterTenantProjectPolicy < 3) {
    checkUnnamed4008(o.policyBindings!);
  }
  buildCounterTenantProjectPolicy--;
}

core.int buildCounterTenantResource = 0;
api.TenantResource buildTenantResource() {
  var o = api.TenantResource();
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

core.List<api.Field> buildUnnamed4009() {
  var o = <api.Field>[];
  o.add(buildField());
  o.add(buildField());
  return o;
}

void checkUnnamed4009(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0] as api.Field);
  checkField(o[1] as api.Field);
}

core.List<core.String> buildUnnamed4010() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4010(core.List<core.String> o) {
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

core.List<api.Option> buildUnnamed4011() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed4011(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterType = 0;
api.Type buildType() {
  var o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed4009();
    o.name = 'foo';
    o.oneofs = buildUnnamed4010();
    o.options = buildUnnamed4011();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
  }
  buildCounterType--;
  return o;
}

void checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed4009(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4010(o.oneofs!);
    checkUnnamed4011(o.options!);
    checkSourceContext(o.sourceContext! as api.SourceContext);
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
  }
  buildCounterType--;
}

core.int buildCounterUndeleteTenantProjectRequest = 0;
api.UndeleteTenantProjectRequest buildUndeleteTenantProjectRequest() {
  var o = api.UndeleteTenantProjectRequest();
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

core.List<core.String> buildUnnamed4012() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4012(core.List<core.String> o) {
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

core.List<api.UsageRule> buildUnnamed4013() {
  var o = <api.UsageRule>[];
  o.add(buildUsageRule());
  o.add(buildUsageRule());
  return o;
}

void checkUnnamed4013(core.List<api.UsageRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageRule(o[0] as api.UsageRule);
  checkUsageRule(o[1] as api.UsageRule);
}

core.int buildCounterUsage = 0;
api.Usage buildUsage() {
  var o = api.Usage();
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    o.producerNotificationChannel = 'foo';
    o.requirements = buildUnnamed4012();
    o.rules = buildUnnamed4013();
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
    checkUnnamed4012(o.requirements!);
    checkUnnamed4013(o.rules!);
  }
  buildCounterUsage--;
}

core.int buildCounterUsageRule = 0;
api.UsageRule buildUsageRule() {
  var o = api.UsageRule();
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

core.List<core.String> buildUnnamed4014() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4014(core.List<core.String> o) {
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

core.int buildCounterV1AddVisibilityLabelsResponse = 0;
api.V1AddVisibilityLabelsResponse buildV1AddVisibilityLabelsResponse() {
  var o = api.V1AddVisibilityLabelsResponse();
  buildCounterV1AddVisibilityLabelsResponse++;
  if (buildCounterV1AddVisibilityLabelsResponse < 3) {
    o.labels = buildUnnamed4014();
  }
  buildCounterV1AddVisibilityLabelsResponse--;
  return o;
}

void checkV1AddVisibilityLabelsResponse(api.V1AddVisibilityLabelsResponse o) {
  buildCounterV1AddVisibilityLabelsResponse++;
  if (buildCounterV1AddVisibilityLabelsResponse < 3) {
    checkUnnamed4014(o.labels!);
  }
  buildCounterV1AddVisibilityLabelsResponse--;
}

core.List<api.V1Beta1QuotaOverride> buildUnnamed4015() {
  var o = <api.V1Beta1QuotaOverride>[];
  o.add(buildV1Beta1QuotaOverride());
  o.add(buildV1Beta1QuotaOverride());
  return o;
}

void checkUnnamed4015(core.List<api.V1Beta1QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1QuotaOverride(o[0] as api.V1Beta1QuotaOverride);
  checkV1Beta1QuotaOverride(o[1] as api.V1Beta1QuotaOverride);
}

core.int buildCounterV1Beta1BatchCreateProducerOverridesResponse = 0;
api.V1Beta1BatchCreateProducerOverridesResponse
    buildV1Beta1BatchCreateProducerOverridesResponse() {
  var o = api.V1Beta1BatchCreateProducerOverridesResponse();
  buildCounterV1Beta1BatchCreateProducerOverridesResponse++;
  if (buildCounterV1Beta1BatchCreateProducerOverridesResponse < 3) {
    o.overrides = buildUnnamed4015();
  }
  buildCounterV1Beta1BatchCreateProducerOverridesResponse--;
  return o;
}

void checkV1Beta1BatchCreateProducerOverridesResponse(
    api.V1Beta1BatchCreateProducerOverridesResponse o) {
  buildCounterV1Beta1BatchCreateProducerOverridesResponse++;
  if (buildCounterV1Beta1BatchCreateProducerOverridesResponse < 3) {
    checkUnnamed4015(o.overrides!);
  }
  buildCounterV1Beta1BatchCreateProducerOverridesResponse--;
}

core.int buildCounterV1Beta1DisableConsumerResponse = 0;
api.V1Beta1DisableConsumerResponse buildV1Beta1DisableConsumerResponse() {
  var o = api.V1Beta1DisableConsumerResponse();
  buildCounterV1Beta1DisableConsumerResponse++;
  if (buildCounterV1Beta1DisableConsumerResponse < 3) {}
  buildCounterV1Beta1DisableConsumerResponse--;
  return o;
}

void checkV1Beta1DisableConsumerResponse(api.V1Beta1DisableConsumerResponse o) {
  buildCounterV1Beta1DisableConsumerResponse++;
  if (buildCounterV1Beta1DisableConsumerResponse < 3) {}
  buildCounterV1Beta1DisableConsumerResponse--;
}

core.int buildCounterV1Beta1EnableConsumerResponse = 0;
api.V1Beta1EnableConsumerResponse buildV1Beta1EnableConsumerResponse() {
  var o = api.V1Beta1EnableConsumerResponse();
  buildCounterV1Beta1EnableConsumerResponse++;
  if (buildCounterV1Beta1EnableConsumerResponse < 3) {}
  buildCounterV1Beta1EnableConsumerResponse--;
  return o;
}

void checkV1Beta1EnableConsumerResponse(api.V1Beta1EnableConsumerResponse o) {
  buildCounterV1Beta1EnableConsumerResponse++;
  if (buildCounterV1Beta1EnableConsumerResponse < 3) {}
  buildCounterV1Beta1EnableConsumerResponse--;
}

core.int buildCounterV1Beta1GenerateServiceIdentityResponse = 0;
api.V1Beta1GenerateServiceIdentityResponse
    buildV1Beta1GenerateServiceIdentityResponse() {
  var o = api.V1Beta1GenerateServiceIdentityResponse();
  buildCounterV1Beta1GenerateServiceIdentityResponse++;
  if (buildCounterV1Beta1GenerateServiceIdentityResponse < 3) {
    o.identity = buildV1Beta1ServiceIdentity();
  }
  buildCounterV1Beta1GenerateServiceIdentityResponse--;
  return o;
}

void checkV1Beta1GenerateServiceIdentityResponse(
    api.V1Beta1GenerateServiceIdentityResponse o) {
  buildCounterV1Beta1GenerateServiceIdentityResponse++;
  if (buildCounterV1Beta1GenerateServiceIdentityResponse < 3) {
    checkV1Beta1ServiceIdentity(o.identity! as api.V1Beta1ServiceIdentity);
  }
  buildCounterV1Beta1GenerateServiceIdentityResponse--;
}

core.List<api.V1Beta1QuotaOverride> buildUnnamed4016() {
  var o = <api.V1Beta1QuotaOverride>[];
  o.add(buildV1Beta1QuotaOverride());
  o.add(buildV1Beta1QuotaOverride());
  return o;
}

void checkUnnamed4016(core.List<api.V1Beta1QuotaOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1QuotaOverride(o[0] as api.V1Beta1QuotaOverride);
  checkV1Beta1QuotaOverride(o[1] as api.V1Beta1QuotaOverride);
}

core.int buildCounterV1Beta1ImportProducerOverridesResponse = 0;
api.V1Beta1ImportProducerOverridesResponse
    buildV1Beta1ImportProducerOverridesResponse() {
  var o = api.V1Beta1ImportProducerOverridesResponse();
  buildCounterV1Beta1ImportProducerOverridesResponse++;
  if (buildCounterV1Beta1ImportProducerOverridesResponse < 3) {
    o.overrides = buildUnnamed4016();
  }
  buildCounterV1Beta1ImportProducerOverridesResponse--;
  return o;
}

void checkV1Beta1ImportProducerOverridesResponse(
    api.V1Beta1ImportProducerOverridesResponse o) {
  buildCounterV1Beta1ImportProducerOverridesResponse++;
  if (buildCounterV1Beta1ImportProducerOverridesResponse < 3) {
    checkUnnamed4016(o.overrides!);
  }
  buildCounterV1Beta1ImportProducerOverridesResponse--;
}

core.List<api.V1Beta1ProducerQuotaPolicy> buildUnnamed4017() {
  var o = <api.V1Beta1ProducerQuotaPolicy>[];
  o.add(buildV1Beta1ProducerQuotaPolicy());
  o.add(buildV1Beta1ProducerQuotaPolicy());
  return o;
}

void checkUnnamed4017(core.List<api.V1Beta1ProducerQuotaPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV1Beta1ProducerQuotaPolicy(o[0] as api.V1Beta1ProducerQuotaPolicy);
  checkV1Beta1ProducerQuotaPolicy(o[1] as api.V1Beta1ProducerQuotaPolicy);
}

core.int buildCounterV1Beta1ImportProducerQuotaPoliciesResponse = 0;
api.V1Beta1ImportProducerQuotaPoliciesResponse
    buildV1Beta1ImportProducerQuotaPoliciesResponse() {
  var o = api.V1Beta1ImportProducerQuotaPoliciesResponse();
  buildCounterV1Beta1ImportProducerQuotaPoliciesResponse++;
  if (buildCounterV1Beta1ImportProducerQuotaPoliciesResponse < 3) {
    o.policies = buildUnnamed4017();
  }
  buildCounterV1Beta1ImportProducerQuotaPoliciesResponse--;
  return o;
}

void checkV1Beta1ImportProducerQuotaPoliciesResponse(
    api.V1Beta1ImportProducerQuotaPoliciesResponse o) {
  buildCounterV1Beta1ImportProducerQuotaPoliciesResponse++;
  if (buildCounterV1Beta1ImportProducerQuotaPoliciesResponse < 3) {
    checkUnnamed4017(o.policies!);
  }
  buildCounterV1Beta1ImportProducerQuotaPoliciesResponse--;
}

core.Map<core.String, core.String> buildUnnamed4018() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4018(core.Map<core.String, core.String> o) {
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

core.int buildCounterV1Beta1ProducerQuotaPolicy = 0;
api.V1Beta1ProducerQuotaPolicy buildV1Beta1ProducerQuotaPolicy() {
  var o = api.V1Beta1ProducerQuotaPolicy();
  buildCounterV1Beta1ProducerQuotaPolicy++;
  if (buildCounterV1Beta1ProducerQuotaPolicy < 3) {
    o.container = 'foo';
    o.dimensions = buildUnnamed4018();
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
    unittest.expect(
      o.container!,
      unittest.equals('foo'),
    );
    checkUnnamed4018(o.dimensions!);
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
  buildCounterV1Beta1ProducerQuotaPolicy--;
}

core.Map<core.String, core.String> buildUnnamed4019() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4019(core.Map<core.String, core.String> o) {
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

core.int buildCounterV1Beta1QuotaOverride = 0;
api.V1Beta1QuotaOverride buildV1Beta1QuotaOverride() {
  var o = api.V1Beta1QuotaOverride();
  buildCounterV1Beta1QuotaOverride++;
  if (buildCounterV1Beta1QuotaOverride < 3) {
    o.adminOverrideAncestor = 'foo';
    o.dimensions = buildUnnamed4019();
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
    unittest.expect(
      o.adminOverrideAncestor!,
      unittest.equals('foo'),
    );
    checkUnnamed4019(o.dimensions!);
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
  buildCounterV1Beta1QuotaOverride--;
}

core.int buildCounterV1Beta1RefreshConsumerResponse = 0;
api.V1Beta1RefreshConsumerResponse buildV1Beta1RefreshConsumerResponse() {
  var o = api.V1Beta1RefreshConsumerResponse();
  buildCounterV1Beta1RefreshConsumerResponse++;
  if (buildCounterV1Beta1RefreshConsumerResponse < 3) {}
  buildCounterV1Beta1RefreshConsumerResponse--;
  return o;
}

void checkV1Beta1RefreshConsumerResponse(api.V1Beta1RefreshConsumerResponse o) {
  buildCounterV1Beta1RefreshConsumerResponse++;
  if (buildCounterV1Beta1RefreshConsumerResponse < 3) {}
  buildCounterV1Beta1RefreshConsumerResponse--;
}

core.int buildCounterV1Beta1ServiceIdentity = 0;
api.V1Beta1ServiceIdentity buildV1Beta1ServiceIdentity() {
  var o = api.V1Beta1ServiceIdentity();
  buildCounterV1Beta1ServiceIdentity++;
  if (buildCounterV1Beta1ServiceIdentity < 3) {
    o.email = 'foo';
    o.name = 'foo';
    o.tag = 'foo';
    o.uniqueId = 'foo';
  }
  buildCounterV1Beta1ServiceIdentity--;
  return o;
}

void checkV1Beta1ServiceIdentity(api.V1Beta1ServiceIdentity o) {
  buildCounterV1Beta1ServiceIdentity++;
  if (buildCounterV1Beta1ServiceIdentity < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uniqueId!,
      unittest.equals('foo'),
    );
  }
  buildCounterV1Beta1ServiceIdentity--;
}

core.int buildCounterV1DefaultIdentity = 0;
api.V1DefaultIdentity buildV1DefaultIdentity() {
  var o = api.V1DefaultIdentity();
  buildCounterV1DefaultIdentity++;
  if (buildCounterV1DefaultIdentity < 3) {
    o.email = 'foo';
    o.name = 'foo';
    o.tag = 'foo';
    o.uniqueId = 'foo';
  }
  buildCounterV1DefaultIdentity--;
  return o;
}

void checkV1DefaultIdentity(api.V1DefaultIdentity o) {
  buildCounterV1DefaultIdentity++;
  if (buildCounterV1DefaultIdentity < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uniqueId!,
      unittest.equals('foo'),
    );
  }
  buildCounterV1DefaultIdentity--;
}

core.int buildCounterV1DisableConsumerResponse = 0;
api.V1DisableConsumerResponse buildV1DisableConsumerResponse() {
  var o = api.V1DisableConsumerResponse();
  buildCounterV1DisableConsumerResponse++;
  if (buildCounterV1DisableConsumerResponse < 3) {}
  buildCounterV1DisableConsumerResponse--;
  return o;
}

void checkV1DisableConsumerResponse(api.V1DisableConsumerResponse o) {
  buildCounterV1DisableConsumerResponse++;
  if (buildCounterV1DisableConsumerResponse < 3) {}
  buildCounterV1DisableConsumerResponse--;
}

core.int buildCounterV1EnableConsumerResponse = 0;
api.V1EnableConsumerResponse buildV1EnableConsumerResponse() {
  var o = api.V1EnableConsumerResponse();
  buildCounterV1EnableConsumerResponse++;
  if (buildCounterV1EnableConsumerResponse < 3) {}
  buildCounterV1EnableConsumerResponse--;
  return o;
}

void checkV1EnableConsumerResponse(api.V1EnableConsumerResponse o) {
  buildCounterV1EnableConsumerResponse++;
  if (buildCounterV1EnableConsumerResponse < 3) {}
  buildCounterV1EnableConsumerResponse--;
}

core.int buildCounterV1GenerateDefaultIdentityResponse = 0;
api.V1GenerateDefaultIdentityResponse buildV1GenerateDefaultIdentityResponse() {
  var o = api.V1GenerateDefaultIdentityResponse();
  buildCounterV1GenerateDefaultIdentityResponse++;
  if (buildCounterV1GenerateDefaultIdentityResponse < 3) {
    o.attachStatus = 'foo';
    o.identity = buildV1DefaultIdentity();
    o.role = 'foo';
  }
  buildCounterV1GenerateDefaultIdentityResponse--;
  return o;
}

void checkV1GenerateDefaultIdentityResponse(
    api.V1GenerateDefaultIdentityResponse o) {
  buildCounterV1GenerateDefaultIdentityResponse++;
  if (buildCounterV1GenerateDefaultIdentityResponse < 3) {
    unittest.expect(
      o.attachStatus!,
      unittest.equals('foo'),
    );
    checkV1DefaultIdentity(o.identity! as api.V1DefaultIdentity);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterV1GenerateDefaultIdentityResponse--;
}

core.int buildCounterV1GenerateServiceAccountResponse = 0;
api.V1GenerateServiceAccountResponse buildV1GenerateServiceAccountResponse() {
  var o = api.V1GenerateServiceAccountResponse();
  buildCounterV1GenerateServiceAccountResponse++;
  if (buildCounterV1GenerateServiceAccountResponse < 3) {
    o.account = buildV1ServiceAccount();
  }
  buildCounterV1GenerateServiceAccountResponse--;
  return o;
}

void checkV1GenerateServiceAccountResponse(
    api.V1GenerateServiceAccountResponse o) {
  buildCounterV1GenerateServiceAccountResponse++;
  if (buildCounterV1GenerateServiceAccountResponse < 3) {
    checkV1ServiceAccount(o.account! as api.V1ServiceAccount);
  }
  buildCounterV1GenerateServiceAccountResponse--;
}

core.int buildCounterV1RefreshConsumerResponse = 0;
api.V1RefreshConsumerResponse buildV1RefreshConsumerResponse() {
  var o = api.V1RefreshConsumerResponse();
  buildCounterV1RefreshConsumerResponse++;
  if (buildCounterV1RefreshConsumerResponse < 3) {}
  buildCounterV1RefreshConsumerResponse--;
  return o;
}

void checkV1RefreshConsumerResponse(api.V1RefreshConsumerResponse o) {
  buildCounterV1RefreshConsumerResponse++;
  if (buildCounterV1RefreshConsumerResponse < 3) {}
  buildCounterV1RefreshConsumerResponse--;
}

core.List<core.String> buildUnnamed4020() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4020(core.List<core.String> o) {
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

core.int buildCounterV1RemoveVisibilityLabelsResponse = 0;
api.V1RemoveVisibilityLabelsResponse buildV1RemoveVisibilityLabelsResponse() {
  var o = api.V1RemoveVisibilityLabelsResponse();
  buildCounterV1RemoveVisibilityLabelsResponse++;
  if (buildCounterV1RemoveVisibilityLabelsResponse < 3) {
    o.labels = buildUnnamed4020();
  }
  buildCounterV1RemoveVisibilityLabelsResponse--;
  return o;
}

void checkV1RemoveVisibilityLabelsResponse(
    api.V1RemoveVisibilityLabelsResponse o) {
  buildCounterV1RemoveVisibilityLabelsResponse++;
  if (buildCounterV1RemoveVisibilityLabelsResponse < 3) {
    checkUnnamed4020(o.labels!);
  }
  buildCounterV1RemoveVisibilityLabelsResponse--;
}

core.int buildCounterV1ServiceAccount = 0;
api.V1ServiceAccount buildV1ServiceAccount() {
  var o = api.V1ServiceAccount();
  buildCounterV1ServiceAccount++;
  if (buildCounterV1ServiceAccount < 3) {
    o.email = 'foo';
    o.iamAccountName = 'foo';
    o.name = 'foo';
    o.tag = 'foo';
    o.uniqueId = 'foo';
  }
  buildCounterV1ServiceAccount--;
  return o;
}

void checkV1ServiceAccount(api.V1ServiceAccount o) {
  buildCounterV1ServiceAccount++;
  if (buildCounterV1ServiceAccount < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iamAccountName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uniqueId!,
      unittest.equals('foo'),
    );
  }
  buildCounterV1ServiceAccount--;
}

void main() {
  unittest.group('obj-schema-AddTenantProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAddTenantProjectRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AddTenantProjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddTenantProjectRequest(od as api.AddTenantProjectRequest);
    });
  });

  unittest.group('obj-schema-Api', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApi();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Api.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApi(od as api.Api);
    });
  });

  unittest.group('obj-schema-ApplyTenantProjectConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApplyTenantProjectConfigRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ApplyTenantProjectConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplyTenantProjectConfigRequest(
          od as api.ApplyTenantProjectConfigRequest);
    });
  });

  unittest.group('obj-schema-AttachTenantProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAttachTenantProjectRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AttachTenantProjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttachTenantProjectRequest(od as api.AttachTenantProjectRequest);
    });
  });

  unittest.group('obj-schema-AuthProvider', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuthProvider();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuthProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthProvider(od as api.AuthProvider);
    });
  });

  unittest.group('obj-schema-AuthRequirement', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuthRequirement();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuthRequirement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthRequirement(od as api.AuthRequirement);
    });
  });

  unittest.group('obj-schema-Authentication', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuthentication();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Authentication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthentication(od as api.Authentication);
    });
  });

  unittest.group('obj-schema-AuthenticationRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuthenticationRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuthenticationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthenticationRule(od as api.AuthenticationRule);
    });
  });

  unittest.group('obj-schema-Backend', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBackend();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Backend.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackend(od as api.Backend);
    });
  });

  unittest.group('obj-schema-BackendRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBackendRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BackendRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackendRule(od as api.BackendRule);
    });
  });

  unittest.group('obj-schema-Billing', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBilling();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Billing.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBilling(od as api.Billing);
    });
  });

  unittest.group('obj-schema-BillingConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingConfig(od as api.BillingConfig);
    });
  });

  unittest.group('obj-schema-BillingDestination', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingDestination();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingDestination(od as api.BillingDestination);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCancelOperationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-Context', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Context.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContext(od as api.Context);
    });
  });

  unittest.group('obj-schema-ContextRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContextRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ContextRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContextRule(od as api.ContextRule);
    });
  });

  unittest.group('obj-schema-Control', () {
    unittest.test('to-json--from-json', () async {
      var o = buildControl();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Control.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkControl(od as api.Control);
    });
  });

  unittest.group('obj-schema-CreateTenancyUnitRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCreateTenancyUnitRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CreateTenancyUnitRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateTenancyUnitRequest(od as api.CreateTenancyUnitRequest);
    });
  });

  unittest.group('obj-schema-CustomError', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomError();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CustomError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomError(od as api.CustomError);
    });
  });

  unittest.group('obj-schema-CustomErrorRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomErrorRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CustomErrorRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomErrorRule(od as api.CustomErrorRule);
    });
  });

  unittest.group('obj-schema-CustomHttpPattern', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomHttpPattern();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CustomHttpPattern.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomHttpPattern(od as api.CustomHttpPattern);
    });
  });

  unittest.group('obj-schema-DeleteTenantProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeleteTenantProjectRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DeleteTenantProjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteTenantProjectRequest(od as api.DeleteTenantProjectRequest);
    });
  });

  unittest.group('obj-schema-Documentation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDocumentation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Documentation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentation(od as api.Documentation);
    });
  });

  unittest.group('obj-schema-DocumentationRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDocumentationRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DocumentationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentationRule(od as api.DocumentationRule);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Endpoint', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEndpoint();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Endpoint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEndpoint(od as api.Endpoint);
    });
  });

  unittest.group('obj-schema-Enum', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEnum();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Enum.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnum(od as api.Enum);
    });
  });

  unittest.group('obj-schema-EnumValue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEnumValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.EnumValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnumValue(od as api.EnumValue);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () async {
      var o = buildField();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Field.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkField(od as api.Field);
    });
  });

  unittest.group('obj-schema-Http', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHttp();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Http.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttp(od as api.Http);
    });
  });

  unittest.group('obj-schema-HttpRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHttpRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.HttpRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpRule(od as api.HttpRule);
    });
  });

  unittest.group('obj-schema-JwtLocation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildJwtLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.JwtLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJwtLocation(od as api.JwtLocation);
    });
  });

  unittest.group('obj-schema-LabelDescriptor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLabelDescriptor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LabelDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLabelDescriptor(od as api.LabelDescriptor);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListOperationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-ListTenancyUnitsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListTenancyUnitsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListTenancyUnitsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTenancyUnitsResponse(od as api.ListTenancyUnitsResponse);
    });
  });

  unittest.group('obj-schema-LogDescriptor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLogDescriptor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LogDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLogDescriptor(od as api.LogDescriptor);
    });
  });

  unittest.group('obj-schema-Logging', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLogging();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Logging.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLogging(od as api.Logging);
    });
  });

  unittest.group('obj-schema-LoggingDestination', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLoggingDestination();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LoggingDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoggingDestination(od as api.LoggingDestination);
    });
  });

  unittest.group('obj-schema-Method', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMethod();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Method.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMethod(od as api.Method);
    });
  });

  unittest.group('obj-schema-MetricDescriptor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMetricDescriptor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MetricDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricDescriptor(od as api.MetricDescriptor);
    });
  });

  unittest.group('obj-schema-MetricDescriptorMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMetricDescriptorMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MetricDescriptorMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricDescriptorMetadata(od as api.MetricDescriptorMetadata);
    });
  });

  unittest.group('obj-schema-MetricRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMetricRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.MetricRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetricRule(od as api.MetricRule);
    });
  });

  unittest.group('obj-schema-Mixin', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMixin();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Mixin.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMixin(od as api.Mixin);
    });
  });

  unittest.group('obj-schema-MonitoredResourceDescriptor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMonitoredResourceDescriptor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MonitoredResourceDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoredResourceDescriptor(od as api.MonitoredResourceDescriptor);
    });
  });

  unittest.group('obj-schema-Monitoring', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMonitoring();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Monitoring.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMonitoring(od as api.Monitoring);
    });
  });

  unittest.group('obj-schema-MonitoringDestination', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMonitoringDestination();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MonitoringDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoringDestination(od as api.MonitoringDestination);
    });
  });

  unittest.group('obj-schema-OAuthRequirements', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOAuthRequirements();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OAuthRequirements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOAuthRequirements(od as api.OAuthRequirements);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-Option', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOption();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Option.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOption(od as api.Option);
    });
  });

  unittest.group('obj-schema-Page', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Page.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPage(od as api.Page);
    });
  });

  unittest.group('obj-schema-PolicyBinding', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPolicyBinding();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PolicyBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyBinding(od as api.PolicyBinding);
    });
  });

  unittest.group('obj-schema-Quota', () {
    unittest.test('to-json--from-json', () async {
      var o = buildQuota();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Quota.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuota(od as api.Quota);
    });
  });

  unittest.group('obj-schema-QuotaLimit', () {
    unittest.test('to-json--from-json', () async {
      var o = buildQuotaLimit();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.QuotaLimit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuotaLimit(od as api.QuotaLimit);
    });
  });

  unittest.group('obj-schema-RemoveTenantProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRemoveTenantProjectRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RemoveTenantProjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveTenantProjectRequest(od as api.RemoveTenantProjectRequest);
    });
  });

  unittest.group('obj-schema-SearchTenancyUnitsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSearchTenancyUnitsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SearchTenancyUnitsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchTenancyUnitsResponse(od as api.SearchTenancyUnitsResponse);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      var o = buildService();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Service.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkService(od as api.Service);
    });
  });

  unittest.group('obj-schema-ServiceAccountConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServiceAccountConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServiceAccountConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAccountConfig(od as api.ServiceAccountConfig);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSourceContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceContext(od as api.SourceContext);
    });
  });

  unittest.group('obj-schema-SourceInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSourceInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.SourceInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSourceInfo(od as api.SourceInfo);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-SystemParameter', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSystemParameter();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SystemParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemParameter(od as api.SystemParameter);
    });
  });

  unittest.group('obj-schema-SystemParameterRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSystemParameterRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SystemParameterRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemParameterRule(od as api.SystemParameterRule);
    });
  });

  unittest.group('obj-schema-SystemParameters', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSystemParameters();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SystemParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemParameters(od as api.SystemParameters);
    });
  });

  unittest.group('obj-schema-TenancyUnit', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTenancyUnit();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TenancyUnit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTenancyUnit(od as api.TenancyUnit);
    });
  });

  unittest.group('obj-schema-TenantProjectConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTenantProjectConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TenantProjectConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTenantProjectConfig(od as api.TenantProjectConfig);
    });
  });

  unittest.group('obj-schema-TenantProjectPolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTenantProjectPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TenantProjectPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTenantProjectPolicy(od as api.TenantProjectPolicy);
    });
  });

  unittest.group('obj-schema-TenantResource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTenantResource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TenantResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTenantResource(od as api.TenantResource);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () async {
      var o = buildType();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Type.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkType(od as api.Type);
    });
  });

  unittest.group('obj-schema-UndeleteTenantProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUndeleteTenantProjectRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UndeleteTenantProjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteTenantProjectRequest(od as api.UndeleteTenantProjectRequest);
    });
  });

  unittest.group('obj-schema-Usage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUsage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Usage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUsage(od as api.Usage);
    });
  });

  unittest.group('obj-schema-UsageRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUsageRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.UsageRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUsageRule(od as api.UsageRule);
    });
  });

  unittest.group('obj-schema-V1AddVisibilityLabelsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1AddVisibilityLabelsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1AddVisibilityLabelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1AddVisibilityLabelsResponse(
          od as api.V1AddVisibilityLabelsResponse);
    });
  });

  unittest.group('obj-schema-V1Beta1BatchCreateProducerOverridesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1Beta1BatchCreateProducerOverridesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1Beta1BatchCreateProducerOverridesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1Beta1BatchCreateProducerOverridesResponse(
          od as api.V1Beta1BatchCreateProducerOverridesResponse);
    });
  });

  unittest.group('obj-schema-V1Beta1DisableConsumerResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1Beta1DisableConsumerResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1Beta1DisableConsumerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1Beta1DisableConsumerResponse(
          od as api.V1Beta1DisableConsumerResponse);
    });
  });

  unittest.group('obj-schema-V1Beta1EnableConsumerResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1Beta1EnableConsumerResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1Beta1EnableConsumerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1Beta1EnableConsumerResponse(
          od as api.V1Beta1EnableConsumerResponse);
    });
  });

  unittest.group('obj-schema-V1Beta1GenerateServiceIdentityResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1Beta1GenerateServiceIdentityResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1Beta1GenerateServiceIdentityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1Beta1GenerateServiceIdentityResponse(
          od as api.V1Beta1GenerateServiceIdentityResponse);
    });
  });

  unittest.group('obj-schema-V1Beta1ImportProducerOverridesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1Beta1ImportProducerOverridesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1Beta1ImportProducerOverridesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1Beta1ImportProducerOverridesResponse(
          od as api.V1Beta1ImportProducerOverridesResponse);
    });
  });

  unittest.group('obj-schema-V1Beta1ImportProducerQuotaPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1Beta1ImportProducerQuotaPoliciesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1Beta1ImportProducerQuotaPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1Beta1ImportProducerQuotaPoliciesResponse(
          od as api.V1Beta1ImportProducerQuotaPoliciesResponse);
    });
  });

  unittest.group('obj-schema-V1Beta1ProducerQuotaPolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1Beta1ProducerQuotaPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1Beta1ProducerQuotaPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1Beta1ProducerQuotaPolicy(od as api.V1Beta1ProducerQuotaPolicy);
    });
  });

  unittest.group('obj-schema-V1Beta1QuotaOverride', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1Beta1QuotaOverride();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1Beta1QuotaOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1Beta1QuotaOverride(od as api.V1Beta1QuotaOverride);
    });
  });

  unittest.group('obj-schema-V1Beta1RefreshConsumerResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1Beta1RefreshConsumerResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1Beta1RefreshConsumerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1Beta1RefreshConsumerResponse(
          od as api.V1Beta1RefreshConsumerResponse);
    });
  });

  unittest.group('obj-schema-V1Beta1ServiceIdentity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1Beta1ServiceIdentity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1Beta1ServiceIdentity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1Beta1ServiceIdentity(od as api.V1Beta1ServiceIdentity);
    });
  });

  unittest.group('obj-schema-V1DefaultIdentity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1DefaultIdentity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1DefaultIdentity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1DefaultIdentity(od as api.V1DefaultIdentity);
    });
  });

  unittest.group('obj-schema-V1DisableConsumerResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1DisableConsumerResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1DisableConsumerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1DisableConsumerResponse(od as api.V1DisableConsumerResponse);
    });
  });

  unittest.group('obj-schema-V1EnableConsumerResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1EnableConsumerResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1EnableConsumerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1EnableConsumerResponse(od as api.V1EnableConsumerResponse);
    });
  });

  unittest.group('obj-schema-V1GenerateDefaultIdentityResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1GenerateDefaultIdentityResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1GenerateDefaultIdentityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1GenerateDefaultIdentityResponse(
          od as api.V1GenerateDefaultIdentityResponse);
    });
  });

  unittest.group('obj-schema-V1GenerateServiceAccountResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1GenerateServiceAccountResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1GenerateServiceAccountResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1GenerateServiceAccountResponse(
          od as api.V1GenerateServiceAccountResponse);
    });
  });

  unittest.group('obj-schema-V1RefreshConsumerResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1RefreshConsumerResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1RefreshConsumerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1RefreshConsumerResponse(od as api.V1RefreshConsumerResponse);
    });
  });

  unittest.group('obj-schema-V1RemoveVisibilityLabelsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1RemoveVisibilityLabelsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1RemoveVisibilityLabelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1RemoveVisibilityLabelsResponse(
          od as api.V1RemoveVisibilityLabelsResponse);
    });
  });

  unittest.group('obj-schema-V1ServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      var o = buildV1ServiceAccount();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.V1ServiceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV1ServiceAccount(od as api.V1ServiceAccount);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).operations;
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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).operations;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).operations;
      var arg_name = 'foo';
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
        var resp = convert.json.encode(buildListOperationsResponse());
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
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).services;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_query = 'foo';
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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["query"]!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchTenancyUnitsResponse());
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
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      var arg_request = buildAddTenantProjectRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddTenantProjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddTenantProjectRequest(obj as api.AddTenantProjectRequest);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.addProject(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--applyProjectConfig', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      var arg_request = buildApplyTenantProjectConfigRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApplyTenantProjectConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApplyTenantProjectConfigRequest(
            obj as api.ApplyTenantProjectConfigRequest);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.applyProjectConfig(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--attachProject', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      var arg_request = buildAttachTenantProjectRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AttachTenantProjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAttachTenantProjectRequest(obj as api.AttachTenantProjectRequest);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.attachProject(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      var arg_request = buildCreateTenancyUnitRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateTenancyUnitRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateTenancyUnitRequest(obj as api.CreateTenancyUnitRequest);

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
        var resp = convert.json.encode(buildTenancyUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkTenancyUnit(response as api.TenancyUnit);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deleteProject', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      var arg_request = buildDeleteTenantProjectRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DeleteTenantProjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeleteTenantProjectRequest(obj as api.DeleteTenantProjectRequest);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deleteProject(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
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
        var resp = convert.json.encode(buildListTenancyUnitsResponse());
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
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      var arg_request = buildRemoveTenantProjectRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemoveTenantProjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveTenantProjectRequest(obj as api.RemoveTenantProjectRequest);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.removeProject(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--undeleteProject', () async {
      var mock = HttpServerMock();
      var res = api.ServiceConsumerManagementApi(mock).services.tenancyUnits;
      var arg_request = buildUndeleteTenantProjectRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UndeleteTenantProjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteTenantProjectRequest(
            obj as api.UndeleteTenantProjectRequest);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.undeleteProject(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
