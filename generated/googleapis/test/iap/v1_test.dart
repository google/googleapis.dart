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

import 'package:googleapis/iap/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccessDeniedPageSettings = 0;
api.AccessDeniedPageSettings buildAccessDeniedPageSettings() {
  final o = api.AccessDeniedPageSettings();
  buildCounterAccessDeniedPageSettings++;
  if (buildCounterAccessDeniedPageSettings < 3) {
    o.accessDeniedPageUri = 'foo';
    o.generateTroubleshootingUri = true;
    o.remediationTokenGenerationEnabled = true;
  }
  buildCounterAccessDeniedPageSettings--;
  return o;
}

void checkAccessDeniedPageSettings(api.AccessDeniedPageSettings o) {
  buildCounterAccessDeniedPageSettings++;
  if (buildCounterAccessDeniedPageSettings < 3) {
    unittest.expect(o.accessDeniedPageUri!, unittest.equals('foo'));
    unittest.expect(o.generateTroubleshootingUri!, unittest.isTrue);
    unittest.expect(o.remediationTokenGenerationEnabled!, unittest.isTrue);
  }
  buildCounterAccessDeniedPageSettings--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessSettings = 0;
api.AccessSettings buildAccessSettings() {
  final o = api.AccessSettings();
  buildCounterAccessSettings++;
  if (buildCounterAccessSettings < 3) {
    o.allowedDomainsSettings = buildAllowedDomainsSettings();
    o.corsSettings = buildCorsSettings();
    o.gcipSettings = buildGcipSettings();
    o.identitySources = buildUnnamed0();
    o.oauthSettings = buildOAuthSettings();
    o.policyDelegationSettings = buildPolicyDelegationSettings();
    o.reauthSettings = buildReauthSettings();
    o.workforceIdentitySettings = buildWorkforceIdentitySettings();
  }
  buildCounterAccessSettings--;
  return o;
}

void checkAccessSettings(api.AccessSettings o) {
  buildCounterAccessSettings++;
  if (buildCounterAccessSettings < 3) {
    checkAllowedDomainsSettings(o.allowedDomainsSettings!);
    checkCorsSettings(o.corsSettings!);
    checkGcipSettings(o.gcipSettings!);
    checkUnnamed0(o.identitySources!);
    checkOAuthSettings(o.oauthSettings!);
    checkPolicyDelegationSettings(o.policyDelegationSettings!);
    checkReauthSettings(o.reauthSettings!);
    checkWorkforceIdentitySettings(o.workforceIdentitySettings!);
  }
  buildCounterAccessSettings--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAllowedDomainsSettings = 0;
api.AllowedDomainsSettings buildAllowedDomainsSettings() {
  final o = api.AllowedDomainsSettings();
  buildCounterAllowedDomainsSettings++;
  if (buildCounterAllowedDomainsSettings < 3) {
    o.domains = buildUnnamed1();
    o.enable = true;
  }
  buildCounterAllowedDomainsSettings--;
  return o;
}

void checkAllowedDomainsSettings(api.AllowedDomainsSettings o) {
  buildCounterAllowedDomainsSettings++;
  if (buildCounterAllowedDomainsSettings < 3) {
    checkUnnamed1(o.domains!);
    unittest.expect(o.enable!, unittest.isTrue);
  }
  buildCounterAllowedDomainsSettings--;
}

core.int buildCounterApplicationSettings = 0;
api.ApplicationSettings buildApplicationSettings() {
  final o = api.ApplicationSettings();
  buildCounterApplicationSettings++;
  if (buildCounterApplicationSettings < 3) {
    o.accessDeniedPageSettings = buildAccessDeniedPageSettings();
    o.attributePropagationSettings = buildAttributePropagationSettings();
    o.cookieDomain = 'foo';
    o.csmSettings = buildCsmSettings();
  }
  buildCounterApplicationSettings--;
  return o;
}

void checkApplicationSettings(api.ApplicationSettings o) {
  buildCounterApplicationSettings++;
  if (buildCounterApplicationSettings < 3) {
    checkAccessDeniedPageSettings(o.accessDeniedPageSettings!);
    checkAttributePropagationSettings(o.attributePropagationSettings!);
    unittest.expect(o.cookieDomain!, unittest.equals('foo'));
    checkCsmSettings(o.csmSettings!);
  }
  buildCounterApplicationSettings--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAttributePropagationSettings = 0;
api.AttributePropagationSettings buildAttributePropagationSettings() {
  final o = api.AttributePropagationSettings();
  buildCounterAttributePropagationSettings++;
  if (buildCounterAttributePropagationSettings < 3) {
    o.enable = true;
    o.expression = 'foo';
    o.outputCredentials = buildUnnamed2();
  }
  buildCounterAttributePropagationSettings--;
  return o;
}

void checkAttributePropagationSettings(api.AttributePropagationSettings o) {
  buildCounterAttributePropagationSettings++;
  if (buildCounterAttributePropagationSettings < 3) {
    unittest.expect(o.enable!, unittest.isTrue);
    unittest.expect(o.expression!, unittest.equals('foo'));
    checkUnnamed2(o.outputCredentials!);
  }
  buildCounterAttributePropagationSettings--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBrand = 0;
api.Brand buildBrand() {
  final o = api.Brand();
  buildCounterBrand++;
  if (buildCounterBrand < 3) {
    o.applicationTitle = 'foo';
    o.name = 'foo';
    o.orgInternalOnly = true;
    o.supportEmail = 'foo';
  }
  buildCounterBrand--;
  return o;
}

void checkBrand(api.Brand o) {
  buildCounterBrand++;
  if (buildCounterBrand < 3) {
    unittest.expect(o.applicationTitle!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.orgInternalOnly!, unittest.isTrue);
    unittest.expect(o.supportEmail!, unittest.equals('foo'));
  }
  buildCounterBrand--;
}

core.int buildCounterCorsSettings = 0;
api.CorsSettings buildCorsSettings() {
  final o = api.CorsSettings();
  buildCounterCorsSettings++;
  if (buildCounterCorsSettings < 3) {
    o.allowHttpOptions = true;
  }
  buildCounterCorsSettings--;
  return o;
}

void checkCorsSettings(api.CorsSettings o) {
  buildCounterCorsSettings++;
  if (buildCounterCorsSettings < 3) {
    unittest.expect(o.allowHttpOptions!, unittest.isTrue);
  }
  buildCounterCorsSettings--;
}

core.int buildCounterCsmSettings = 0;
api.CsmSettings buildCsmSettings() {
  final o = api.CsmSettings();
  buildCounterCsmSettings++;
  if (buildCounterCsmSettings < 3) {
    o.rctokenAud = 'foo';
  }
  buildCounterCsmSettings--;
  return o;
}

void checkCsmSettings(api.CsmSettings o) {
  buildCounterCsmSettings++;
  if (buildCounterCsmSettings < 3) {
    unittest.expect(o.rctokenAud!, unittest.equals('foo'));
  }
  buildCounterCsmSettings--;
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

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGcipSettings = 0;
api.GcipSettings buildGcipSettings() {
  final o = api.GcipSettings();
  buildCounterGcipSettings++;
  if (buildCounterGcipSettings < 3) {
    o.loginPageUri = 'foo';
    o.tenantIds = buildUnnamed4();
  }
  buildCounterGcipSettings--;
  return o;
}

void checkGcipSettings(api.GcipSettings o) {
  buildCounterGcipSettings++;
  if (buildCounterGcipSettings < 3) {
    unittest.expect(o.loginPageUri!, unittest.equals('foo'));
    checkUnnamed4(o.tenantIds!);
  }
  buildCounterGcipSettings--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  final o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options!);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  final o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(o.requestedPolicyVersion!, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterIapSettings = 0;
api.IapSettings buildIapSettings() {
  final o = api.IapSettings();
  buildCounterIapSettings++;
  if (buildCounterIapSettings < 3) {
    o.accessSettings = buildAccessSettings();
    o.applicationSettings = buildApplicationSettings();
    o.name = 'foo';
  }
  buildCounterIapSettings--;
  return o;
}

void checkIapSettings(api.IapSettings o) {
  buildCounterIapSettings++;
  if (buildCounterIapSettings < 3) {
    checkAccessSettings(o.accessSettings!);
    checkApplicationSettings(o.applicationSettings!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterIapSettings--;
}

core.int buildCounterIdentityAwareProxyClient = 0;
api.IdentityAwareProxyClient buildIdentityAwareProxyClient() {
  final o = api.IdentityAwareProxyClient();
  buildCounterIdentityAwareProxyClient++;
  if (buildCounterIdentityAwareProxyClient < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.secret = 'foo';
  }
  buildCounterIdentityAwareProxyClient--;
  return o;
}

void checkIdentityAwareProxyClient(api.IdentityAwareProxyClient o) {
  buildCounterIdentityAwareProxyClient++;
  if (buildCounterIdentityAwareProxyClient < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.secret!, unittest.equals('foo'));
  }
  buildCounterIdentityAwareProxyClient--;
}

core.List<api.Brand> buildUnnamed5() => [buildBrand(), buildBrand()];

void checkUnnamed5(core.List<api.Brand> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBrand(o[0]);
  checkBrand(o[1]);
}

core.int buildCounterListBrandsResponse = 0;
api.ListBrandsResponse buildListBrandsResponse() {
  final o = api.ListBrandsResponse();
  buildCounterListBrandsResponse++;
  if (buildCounterListBrandsResponse < 3) {
    o.brands = buildUnnamed5();
  }
  buildCounterListBrandsResponse--;
  return o;
}

void checkListBrandsResponse(api.ListBrandsResponse o) {
  buildCounterListBrandsResponse++;
  if (buildCounterListBrandsResponse < 3) {
    checkUnnamed5(o.brands!);
  }
  buildCounterListBrandsResponse--;
}

core.List<api.IdentityAwareProxyClient> buildUnnamed6() => [
      buildIdentityAwareProxyClient(),
      buildIdentityAwareProxyClient(),
    ];

void checkUnnamed6(core.List<api.IdentityAwareProxyClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdentityAwareProxyClient(o[0]);
  checkIdentityAwareProxyClient(o[1]);
}

core.int buildCounterListIdentityAwareProxyClientsResponse = 0;
api.ListIdentityAwareProxyClientsResponse
    buildListIdentityAwareProxyClientsResponse() {
  final o = api.ListIdentityAwareProxyClientsResponse();
  buildCounterListIdentityAwareProxyClientsResponse++;
  if (buildCounterListIdentityAwareProxyClientsResponse < 3) {
    o.identityAwareProxyClients = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterListIdentityAwareProxyClientsResponse--;
  return o;
}

void checkListIdentityAwareProxyClientsResponse(
  api.ListIdentityAwareProxyClientsResponse o,
) {
  buildCounterListIdentityAwareProxyClientsResponse++;
  if (buildCounterListIdentityAwareProxyClientsResponse < 3) {
    checkUnnamed6(o.identityAwareProxyClients!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListIdentityAwareProxyClientsResponse--;
}

core.List<api.TunnelDestGroup> buildUnnamed7() => [
      buildTunnelDestGroup(),
      buildTunnelDestGroup(),
    ];

void checkUnnamed7(core.List<api.TunnelDestGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTunnelDestGroup(o[0]);
  checkTunnelDestGroup(o[1]);
}

core.int buildCounterListTunnelDestGroupsResponse = 0;
api.ListTunnelDestGroupsResponse buildListTunnelDestGroupsResponse() {
  final o = api.ListTunnelDestGroupsResponse();
  buildCounterListTunnelDestGroupsResponse++;
  if (buildCounterListTunnelDestGroupsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tunnelDestGroups = buildUnnamed7();
  }
  buildCounterListTunnelDestGroupsResponse--;
  return o;
}

void checkListTunnelDestGroupsResponse(api.ListTunnelDestGroupsResponse o) {
  buildCounterListTunnelDestGroupsResponse++;
  if (buildCounterListTunnelDestGroupsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed7(o.tunnelDestGroups!);
  }
  buildCounterListTunnelDestGroupsResponse--;
}

core.int buildCounterNextStateOfTags = 0;
api.NextStateOfTags buildNextStateOfTags() {
  final o = api.NextStateOfTags();
  buildCounterNextStateOfTags++;
  if (buildCounterNextStateOfTags < 3) {
    o.tagsFullState = buildTagsFullState();
    o.tagsFullStateForChildResource = buildTagsFullStateForChildResource();
    o.tagsPartialState = buildTagsPartialState();
  }
  buildCounterNextStateOfTags--;
  return o;
}

void checkNextStateOfTags(api.NextStateOfTags o) {
  buildCounterNextStateOfTags++;
  if (buildCounterNextStateOfTags < 3) {
    checkTagsFullState(o.tagsFullState!);
    checkTagsFullStateForChildResource(o.tagsFullStateForChildResource!);
    checkTagsPartialState(o.tagsPartialState!);
  }
  buildCounterNextStateOfTags--;
}

core.int buildCounterOAuth2 = 0;
api.OAuth2 buildOAuth2() {
  final o = api.OAuth2();
  buildCounterOAuth2++;
  if (buildCounterOAuth2 < 3) {
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.clientSecretSha256 = 'foo';
  }
  buildCounterOAuth2--;
  return o;
}

void checkOAuth2(api.OAuth2 o) {
  buildCounterOAuth2++;
  if (buildCounterOAuth2 < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.clientSecretSha256!, unittest.equals('foo'));
  }
  buildCounterOAuth2--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOAuthSettings = 0;
api.OAuthSettings buildOAuthSettings() {
  final o = api.OAuthSettings();
  buildCounterOAuthSettings++;
  if (buildCounterOAuthSettings < 3) {
    o.loginHint = 'foo';
    o.programmaticClients = buildUnnamed8();
  }
  buildCounterOAuthSettings--;
  return o;
}

void checkOAuthSettings(api.OAuthSettings o) {
  buildCounterOAuthSettings++;
  if (buildCounterOAuthSettings < 3) {
    unittest.expect(o.loginHint!, unittest.equals('foo'));
    checkUnnamed8(o.programmaticClients!);
  }
  buildCounterOAuthSettings--;
}

core.List<api.Binding> buildUnnamed9() => [buildBinding(), buildBinding()];

void checkUnnamed9(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed9();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed9(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPolicyDelegationSettings = 0;
api.PolicyDelegationSettings buildPolicyDelegationSettings() {
  final o = api.PolicyDelegationSettings();
  buildCounterPolicyDelegationSettings++;
  if (buildCounterPolicyDelegationSettings < 3) {
    o.iamPermission = 'foo';
    o.iamServiceName = 'foo';
    o.policyName = buildPolicyName();
    o.resource = buildResource();
  }
  buildCounterPolicyDelegationSettings--;
  return o;
}

void checkPolicyDelegationSettings(api.PolicyDelegationSettings o) {
  buildCounterPolicyDelegationSettings++;
  if (buildCounterPolicyDelegationSettings < 3) {
    unittest.expect(o.iamPermission!, unittest.equals('foo'));
    unittest.expect(o.iamServiceName!, unittest.equals('foo'));
    checkPolicyName(o.policyName!);
    checkResource(o.resource!);
  }
  buildCounterPolicyDelegationSettings--;
}

core.int buildCounterPolicyName = 0;
api.PolicyName buildPolicyName() {
  final o = api.PolicyName();
  buildCounterPolicyName++;
  if (buildCounterPolicyName < 3) {
    o.id = 'foo';
    o.region = 'foo';
    o.type = 'foo';
  }
  buildCounterPolicyName--;
  return o;
}

void checkPolicyName(api.PolicyName o) {
  buildCounterPolicyName++;
  if (buildCounterPolicyName < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterPolicyName--;
}

core.int buildCounterReauthSettings = 0;
api.ReauthSettings buildReauthSettings() {
  final o = api.ReauthSettings();
  buildCounterReauthSettings++;
  if (buildCounterReauthSettings < 3) {
    o.maxAge = 'foo';
    o.method = 'foo';
    o.policyType = 'foo';
  }
  buildCounterReauthSettings--;
  return o;
}

void checkReauthSettings(api.ReauthSettings o) {
  buildCounterReauthSettings++;
  if (buildCounterReauthSettings < 3) {
    unittest.expect(o.maxAge!, unittest.equals('foo'));
    unittest.expect(o.method!, unittest.equals('foo'));
    unittest.expect(o.policyType!, unittest.equals('foo'));
  }
  buildCounterReauthSettings--;
}

core.int buildCounterResetIdentityAwareProxyClientSecretRequest = 0;
api.ResetIdentityAwareProxyClientSecretRequest
    buildResetIdentityAwareProxyClientSecretRequest() {
  final o = api.ResetIdentityAwareProxyClientSecretRequest();
  buildCounterResetIdentityAwareProxyClientSecretRequest++;
  if (buildCounterResetIdentityAwareProxyClientSecretRequest < 3) {}
  buildCounterResetIdentityAwareProxyClientSecretRequest--;
  return o;
}

void checkResetIdentityAwareProxyClientSecretRequest(
  api.ResetIdentityAwareProxyClientSecretRequest o,
) {
  buildCounterResetIdentityAwareProxyClientSecretRequest++;
  if (buildCounterResetIdentityAwareProxyClientSecretRequest < 3) {}
  buildCounterResetIdentityAwareProxyClientSecretRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.expectedNextState = buildUnnamed10();
    o.labels = buildUnnamed11();
    o.name = 'foo';
    o.nextStateOfTags = buildNextStateOfTags();
    o.service = 'foo';
    o.type = 'foo';
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkUnnamed10(o.expectedNextState!);
    checkUnnamed11(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNextStateOfTags(o.nextStateOfTags!);
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.String> buildUnnamed12() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTagsFullState = 0;
api.TagsFullState buildTagsFullState() {
  final o = api.TagsFullState();
  buildCounterTagsFullState++;
  if (buildCounterTagsFullState < 3) {
    o.tags = buildUnnamed12();
  }
  buildCounterTagsFullState--;
  return o;
}

void checkTagsFullState(api.TagsFullState o) {
  buildCounterTagsFullState++;
  if (buildCounterTagsFullState < 3) {
    checkUnnamed12(o.tags!);
  }
  buildCounterTagsFullState--;
}

core.Map<core.String, core.String> buildUnnamed13() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed13(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTagsFullStateForChildResource = 0;
api.TagsFullStateForChildResource buildTagsFullStateForChildResource() {
  final o = api.TagsFullStateForChildResource();
  buildCounterTagsFullStateForChildResource++;
  if (buildCounterTagsFullStateForChildResource < 3) {
    o.tags = buildUnnamed13();
  }
  buildCounterTagsFullStateForChildResource--;
  return o;
}

void checkTagsFullStateForChildResource(api.TagsFullStateForChildResource o) {
  buildCounterTagsFullStateForChildResource++;
  if (buildCounterTagsFullStateForChildResource < 3) {
    checkUnnamed13(o.tags!);
  }
  buildCounterTagsFullStateForChildResource--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed15() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed15(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTagsPartialState = 0;
api.TagsPartialState buildTagsPartialState() {
  final o = api.TagsPartialState();
  buildCounterTagsPartialState++;
  if (buildCounterTagsPartialState < 3) {
    o.tagKeysToRemove = buildUnnamed14();
    o.tagsToUpsert = buildUnnamed15();
  }
  buildCounterTagsPartialState--;
  return o;
}

void checkTagsPartialState(api.TagsPartialState o) {
  buildCounterTagsPartialState++;
  if (buildCounterTagsPartialState < 3) {
    checkUnnamed14(o.tagKeysToRemove!);
    checkUnnamed15(o.tagsToUpsert!);
  }
  buildCounterTagsPartialState--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed16();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed16(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed17();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed17(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
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

core.int buildCounterTunnelDestGroup = 0;
api.TunnelDestGroup buildTunnelDestGroup() {
  final o = api.TunnelDestGroup();
  buildCounterTunnelDestGroup++;
  if (buildCounterTunnelDestGroup < 3) {
    o.cidrs = buildUnnamed18();
    o.fqdns = buildUnnamed19();
    o.name = 'foo';
  }
  buildCounterTunnelDestGroup--;
  return o;
}

void checkTunnelDestGroup(api.TunnelDestGroup o) {
  buildCounterTunnelDestGroup++;
  if (buildCounterTunnelDestGroup < 3) {
    checkUnnamed18(o.cidrs!);
    checkUnnamed19(o.fqdns!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterTunnelDestGroup--;
}

core.int buildCounterValidateIapAttributeExpressionResponse = 0;
api.ValidateIapAttributeExpressionResponse
    buildValidateIapAttributeExpressionResponse() {
  final o = api.ValidateIapAttributeExpressionResponse();
  buildCounterValidateIapAttributeExpressionResponse++;
  if (buildCounterValidateIapAttributeExpressionResponse < 3) {}
  buildCounterValidateIapAttributeExpressionResponse--;
  return o;
}

void checkValidateIapAttributeExpressionResponse(
  api.ValidateIapAttributeExpressionResponse o,
) {
  buildCounterValidateIapAttributeExpressionResponse++;
  if (buildCounterValidateIapAttributeExpressionResponse < 3) {}
  buildCounterValidateIapAttributeExpressionResponse--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWorkforceIdentitySettings = 0;
api.WorkforceIdentitySettings buildWorkforceIdentitySettings() {
  final o = api.WorkforceIdentitySettings();
  buildCounterWorkforceIdentitySettings++;
  if (buildCounterWorkforceIdentitySettings < 3) {
    o.oauth2 = buildOAuth2();
    o.workforcePools = buildUnnamed20();
  }
  buildCounterWorkforceIdentitySettings--;
  return o;
}

void checkWorkforceIdentitySettings(api.WorkforceIdentitySettings o) {
  buildCounterWorkforceIdentitySettings++;
  if (buildCounterWorkforceIdentitySettings < 3) {
    checkOAuth2(o.oauth2!);
    checkUnnamed20(o.workforcePools!);
  }
  buildCounterWorkforceIdentitySettings--;
}

void main() {
  unittest.group('obj-schema-AccessDeniedPageSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessDeniedPageSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessDeniedPageSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessDeniedPageSettings(od);
    });
  });

  unittest.group('obj-schema-AccessSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessSettings(od);
    });
  });

  unittest.group('obj-schema-AllowedDomainsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllowedDomainsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllowedDomainsSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAllowedDomainsSettings(od);
    });
  });

  unittest.group('obj-schema-ApplicationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationSettings(od);
    });
  });

  unittest.group('obj-schema-AttributePropagationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributePropagationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttributePropagationSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttributePropagationSettings(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-Brand', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBrand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Brand.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBrand(od);
    });
  });

  unittest.group('obj-schema-CorsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCorsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CorsSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCorsSettings(od);
    });
  });

  unittest.group('obj-schema-CsmSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCsmSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CsmSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCsmSettings(od);
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

  unittest.group('obj-schema-GcipSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcipSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcipSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcipSettings(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-IapSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIapSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IapSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIapSettings(od);
    });
  });

  unittest.group('obj-schema-IdentityAwareProxyClient', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityAwareProxyClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityAwareProxyClient.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIdentityAwareProxyClient(od);
    });
  });

  unittest.group('obj-schema-ListBrandsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBrandsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBrandsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBrandsResponse(od);
    });
  });

  unittest.group('obj-schema-ListIdentityAwareProxyClientsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListIdentityAwareProxyClientsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListIdentityAwareProxyClientsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListIdentityAwareProxyClientsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTunnelDestGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTunnelDestGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTunnelDestGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTunnelDestGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-NextStateOfTags', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNextStateOfTags();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NextStateOfTags.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNextStateOfTags(od);
    });
  });

  unittest.group('obj-schema-OAuth2', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuth2();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuth2.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOAuth2(od);
    });
  });

  unittest.group('obj-schema-OAuthSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuthSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuthSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOAuthSettings(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PolicyDelegationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyDelegationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyDelegationSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicyDelegationSettings(od);
    });
  });

  unittest.group('obj-schema-PolicyName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyName.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicyName(od);
    });
  });

  unittest.group('obj-schema-ReauthSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReauthSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReauthSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReauthSettings(od);
    });
  });

  unittest.group('obj-schema-ResetIdentityAwareProxyClientSecretRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetIdentityAwareProxyClientSecretRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetIdentityAwareProxyClientSecretRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResetIdentityAwareProxyClientSecretRequest(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Resource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResource(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-TagsFullState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTagsFullState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TagsFullState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTagsFullState(od);
    });
  });

  unittest.group('obj-schema-TagsFullStateForChildResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTagsFullStateForChildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TagsFullStateForChildResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTagsFullStateForChildResource(od);
    });
  });

  unittest.group('obj-schema-TagsPartialState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTagsPartialState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TagsPartialState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTagsPartialState(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-TunnelDestGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTunnelDestGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TunnelDestGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTunnelDestGroup(od);
    });
  });

  unittest.group('obj-schema-ValidateIapAttributeExpressionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateIapAttributeExpressionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateIapAttributeExpressionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidateIapAttributeExpressionResponse(od);
    });
  });

  unittest.group('obj-schema-WorkforceIdentitySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkforceIdentitySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkforceIdentitySettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkforceIdentitySettings(od);
    });
  });

  unittest.group('resource-ProjectsBrandsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).projects.brands;
      final arg_request = buildBrand();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Brand.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBrand(obj);

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
          final resp = convert.json.encode(buildBrand());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBrand(response as api.Brand);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).projects.brands;
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
          final resp = convert.json.encode(buildBrand());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBrand(response as api.Brand);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).projects.brands;
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
          final resp = convert.json.encode(buildListBrandsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkListBrandsResponse(response as api.ListBrandsResponse);
    });
  });

  unittest.group('resource-ProjectsBrandsIdentityAwareProxyClientsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIAPApi(mock).projects.brands.identityAwareProxyClients;
      final arg_request = buildIdentityAwareProxyClient();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.IdentityAwareProxyClient.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkIdentityAwareProxyClient(obj);

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
          final resp = convert.json.encode(buildIdentityAwareProxyClient());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkIdentityAwareProxyClient(response as api.IdentityAwareProxyClient);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIAPApi(mock).projects.brands.identityAwareProxyClients;
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
          api.CloudIAPApi(mock).projects.brands.identityAwareProxyClients;
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
          final resp = convert.json.encode(buildIdentityAwareProxyClient());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkIdentityAwareProxyClient(response as api.IdentityAwareProxyClient);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIAPApi(mock).projects.brands.identityAwareProxyClients;
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
            buildListIdentityAwareProxyClientsResponse(),
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
      checkListIdentityAwareProxyClientsResponse(
        response as api.ListIdentityAwareProxyClientsResponse,
      );
    });

    unittest.test('method--resetSecret', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIAPApi(mock).projects.brands.identityAwareProxyClients;
      final arg_request = buildResetIdentityAwareProxyClientSecretRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResetIdentityAwareProxyClientSecretRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResetIdentityAwareProxyClientSecretRequest(obj);

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
          final resp = convert.json.encode(buildIdentityAwareProxyClient());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resetSecret(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkIdentityAwareProxyClient(response as api.IdentityAwareProxyClient);
    });
  });

  unittest.group('resource-ProjectsIapTunnelLocationsDestGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).projects.iapTunnel.locations.destGroups;
      final arg_request = buildTunnelDestGroup();
      final arg_parent = 'foo';
      final arg_tunnelDestGroupId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TunnelDestGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTunnelDestGroup(obj);

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
            queryMap['tunnelDestGroupId']!.first,
            unittest.equals(arg_tunnelDestGroupId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTunnelDestGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        tunnelDestGroupId: arg_tunnelDestGroupId,
        $fields: arg_$fields,
      );
      checkTunnelDestGroup(response as api.TunnelDestGroup);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).projects.iapTunnel.locations.destGroups;
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
      final res = api.CloudIAPApi(mock).projects.iapTunnel.locations.destGroups;
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
          final resp = convert.json.encode(buildTunnelDestGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTunnelDestGroup(response as api.TunnelDestGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).projects.iapTunnel.locations.destGroups;
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
          final resp = convert.json.encode(buildListTunnelDestGroupsResponse());
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
      checkListTunnelDestGroupsResponse(
        response as api.ListTunnelDestGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).projects.iapTunnel.locations.destGroups;
      final arg_request = buildTunnelDestGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TunnelDestGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTunnelDestGroup(obj);

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
          final resp = convert.json.encode(buildTunnelDestGroup());
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
      checkTunnelDestGroup(response as api.TunnelDestGroup);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).v1;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--getIapSettings', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).v1;
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
          final resp = convert.json.encode(buildIapSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIapSettings(arg_name, $fields: arg_$fields);
      checkIapSettings(response as api.IapSettings);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).v1;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).v1;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });

    unittest.test('method--updateIapSettings', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).v1;
      final arg_request = buildIapSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.IapSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkIapSettings(obj);

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
          final resp = convert.json.encode(buildIapSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateIapSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkIapSettings(response as api.IapSettings);
    });

    unittest.test('method--validateAttributeExpression', () async {
      final mock = HttpServerMock();
      final res = api.CloudIAPApi(mock).v1;
      final arg_name = 'foo';
      final arg_expression = 'foo';
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
            queryMap['expression']!.first,
            unittest.equals(arg_expression),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildValidateIapAttributeExpressionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.validateAttributeExpression(
        arg_name,
        expression: arg_expression,
        $fields: arg_$fields,
      );
      checkValidateIapAttributeExpressionResponse(
        response as api.ValidateIapAttributeExpressionResponse,
      );
    });
  });
}
