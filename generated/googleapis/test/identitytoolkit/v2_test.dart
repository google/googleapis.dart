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

import 'package:googleapis/identitytoolkit/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2AllowByDefault = 0;
api.GoogleCloudIdentitytoolkitAdminV2AllowByDefault
    buildGoogleCloudIdentitytoolkitAdminV2AllowByDefault() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2AllowByDefault();
  buildCounterGoogleCloudIdentitytoolkitAdminV2AllowByDefault++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2AllowByDefault < 3) {
    o.disallowedRegions = buildUnnamed0();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2AllowByDefault--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2AllowByDefault(
  api.GoogleCloudIdentitytoolkitAdminV2AllowByDefault o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2AllowByDefault++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2AllowByDefault < 3) {
    checkUnnamed0(o.disallowedRegions!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2AllowByDefault--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2AllowlistOnly = 0;
api.GoogleCloudIdentitytoolkitAdminV2AllowlistOnly
    buildGoogleCloudIdentitytoolkitAdminV2AllowlistOnly() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2AllowlistOnly();
  buildCounterGoogleCloudIdentitytoolkitAdminV2AllowlistOnly++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2AllowlistOnly < 3) {
    o.allowedRegions = buildUnnamed1();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2AllowlistOnly--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2AllowlistOnly(
  api.GoogleCloudIdentitytoolkitAdminV2AllowlistOnly o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2AllowlistOnly++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2AllowlistOnly < 3) {
    checkUnnamed1(o.allowedRegions!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2AllowlistOnly--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2Anonymous = 0;
api.GoogleCloudIdentitytoolkitAdminV2Anonymous
    buildGoogleCloudIdentitytoolkitAdminV2Anonymous() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2Anonymous();
  buildCounterGoogleCloudIdentitytoolkitAdminV2Anonymous++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Anonymous < 3) {
    o.enabled = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Anonymous--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2Anonymous(
  api.GoogleCloudIdentitytoolkitAdminV2Anonymous o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2Anonymous++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Anonymous < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Anonymous--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig
    buildGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig < 3) {
    o.bundleIds = buildUnnamed2();
    o.codeFlowConfig = buildGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig(
  api.GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig < 3) {
    checkUnnamed2(o.bundleIds!);
    checkGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig(o.codeFlowConfig!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig--;
}

core.Map<core.String, api.GoogleCloudIdentitytoolkitAdminV2Trigger>
    buildUnnamed3() => {
          'x': buildGoogleCloudIdentitytoolkitAdminV2Trigger(),
          'y': buildGoogleCloudIdentitytoolkitAdminV2Trigger(),
        };

void checkUnnamed3(
  core.Map<core.String, api.GoogleCloudIdentitytoolkitAdminV2Trigger> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2Trigger(o['x']!);
  checkGoogleCloudIdentitytoolkitAdminV2Trigger(o['y']!);
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig =
    0;
api.GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig
    buildGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig <
      3) {
    o.forwardInboundCredentials =
        buildGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials();
    o.triggers = buildUnnamed3();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig(
  api.GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig <
      3) {
    checkGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials(
      o.forwardInboundCredentials!,
    );
    checkUnnamed3(o.triggers!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2ClientConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2ClientConfig
    buildGoogleCloudIdentitytoolkitAdminV2ClientConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2ClientConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ClientConfig < 3) {
    o.apiKey = 'foo';
    o.firebaseSubdomain = 'foo';
    o.permissions = buildGoogleCloudIdentitytoolkitAdminV2Permissions();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2ClientConfig(
  api.GoogleCloudIdentitytoolkitAdminV2ClientConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ClientConfig < 3) {
    unittest.expect(o.apiKey!, unittest.equals('foo'));
    unittest.expect(o.firebaseSubdomain!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitAdminV2Permissions(o.permissions!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig =
    0;
api.GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig
    buildGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig < 3) {
    o.permissions = buildGoogleCloudIdentitytoolkitAdminV2ClientPermissions();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig(
  api.GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig < 3) {
    checkGoogleCloudIdentitytoolkitAdminV2ClientPermissions(o.permissions!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissions = 0;
api.GoogleCloudIdentitytoolkitAdminV2ClientPermissions
    buildGoogleCloudIdentitytoolkitAdminV2ClientPermissions() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2ClientPermissions();
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissions++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissions < 3) {
    o.disabledUserDeletion = true;
    o.disabledUserSignup = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissions--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2ClientPermissions(
  api.GoogleCloudIdentitytoolkitAdminV2ClientPermissions o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissions++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissions < 3) {
    unittest.expect(o.disabledUserDeletion!, unittest.isTrue);
    unittest.expect(o.disabledUserSignup!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ClientPermissions--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig
    buildGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig < 3) {
    o.keyId = 'foo';
    o.privateKey = 'foo';
    o.teamId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig(
  api.GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig < 3) {
    unittest.expect(o.keyId!, unittest.equals('foo'));
    unittest.expect(o.privateKey!, unittest.equals('foo'));
    unittest.expect(o.teamId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2Config = 0;
api.GoogleCloudIdentitytoolkitAdminV2Config
    buildGoogleCloudIdentitytoolkitAdminV2Config() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2Config();
  buildCounterGoogleCloudIdentitytoolkitAdminV2Config++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Config < 3) {
    o.authorizedDomains = buildUnnamed4();
    o.autodeleteAnonymousUsers = true;
    o.blockingFunctions =
        buildGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig();
    o.client = buildGoogleCloudIdentitytoolkitAdminV2ClientConfig();
    o.emailPrivacyConfig =
        buildGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig();
    o.mfa = buildGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig();
    o.monitoring = buildGoogleCloudIdentitytoolkitAdminV2MonitoringConfig();
    o.multiTenant = buildGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig();
    o.name = 'foo';
    o.notification = buildGoogleCloudIdentitytoolkitAdminV2NotificationConfig();
    o.passwordPolicyConfig =
        buildGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig();
    o.quota = buildGoogleCloudIdentitytoolkitAdminV2QuotaConfig();
    o.recaptchaConfig = buildGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig();
    o.signIn = buildGoogleCloudIdentitytoolkitAdminV2SignInConfig();
    o.smsRegionConfig = buildGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig();
    o.subtype = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Config--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2Config(
  api.GoogleCloudIdentitytoolkitAdminV2Config o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2Config++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Config < 3) {
    checkUnnamed4(o.authorizedDomains!);
    unittest.expect(o.autodeleteAnonymousUsers!, unittest.isTrue);
    checkGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig(
      o.blockingFunctions!,
    );
    checkGoogleCloudIdentitytoolkitAdminV2ClientConfig(o.client!);
    checkGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig(
      o.emailPrivacyConfig!,
    );
    checkGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig(o.mfa!);
    checkGoogleCloudIdentitytoolkitAdminV2MonitoringConfig(o.monitoring!);
    checkGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig(o.multiTenant!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitAdminV2NotificationConfig(o.notification!);
    checkGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig(
      o.passwordPolicyConfig!,
    );
    checkGoogleCloudIdentitytoolkitAdminV2QuotaConfig(o.quota!);
    checkGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig(o.recaptchaConfig!);
    checkGoogleCloudIdentitytoolkitAdminV2SignInConfig(o.signIn!);
    checkGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig(o.smsRegionConfig!);
    unittest.expect(o.subtype!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Config--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions = 0;
api.GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions
    buildGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions();
  buildCounterGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions < 3) {
    o.containsLowercaseCharacter = true;
    o.containsNonAlphanumericCharacter = true;
    o.containsNumericCharacter = true;
    o.containsUppercaseCharacter = true;
    o.maxPasswordLength = 42;
    o.minPasswordLength = 42;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions(
  api.GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions < 3) {
    unittest.expect(o.containsLowercaseCharacter!, unittest.isTrue);
    unittest.expect(o.containsNonAlphanumericCharacter!, unittest.isTrue);
    unittest.expect(o.containsNumericCharacter!, unittest.isTrue);
    unittest.expect(o.containsUppercaseCharacter!, unittest.isTrue);
    unittest.expect(o.maxPasswordLength!, unittest.equals(42));
    unittest.expect(o.minPasswordLength!, unittest.equals(42));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp = 0;
api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp
    buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp();
  buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp < 3) {
    o.description = 'foo';
    o.idpId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp(
  api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.idpId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp--;
}

core.int
    buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
    buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig <
      3) {
    o.appleSignInConfig =
        buildGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig();
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.enabled = true;
    o.name = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(
  api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig <
      3) {
    checkGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig(
      o.appleSignInConfig!,
    );
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2DnsInfo = 0;
api.GoogleCloudIdentitytoolkitAdminV2DnsInfo
    buildGoogleCloudIdentitytoolkitAdminV2DnsInfo() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2DnsInfo();
  buildCounterGoogleCloudIdentitytoolkitAdminV2DnsInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2DnsInfo < 3) {
    o.customDomain = 'foo';
    o.customDomainState = 'foo';
    o.domainVerificationRequestTime = 'foo';
    o.pendingCustomDomain = 'foo';
    o.useCustomDomain = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2DnsInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2DnsInfo(
  api.GoogleCloudIdentitytoolkitAdminV2DnsInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2DnsInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2DnsInfo < 3) {
    unittest.expect(o.customDomain!, unittest.equals('foo'));
    unittest.expect(o.customDomainState!, unittest.equals('foo'));
    unittest.expect(o.domainVerificationRequestTime!, unittest.equals('foo'));
    unittest.expect(o.pendingCustomDomain!, unittest.equals('foo'));
    unittest.expect(o.useCustomDomain!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2DnsInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2Email = 0;
api.GoogleCloudIdentitytoolkitAdminV2Email
    buildGoogleCloudIdentitytoolkitAdminV2Email() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2Email();
  buildCounterGoogleCloudIdentitytoolkitAdminV2Email++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Email < 3) {
    o.enabled = true;
    o.passwordRequired = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Email--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2Email(
  api.GoogleCloudIdentitytoolkitAdminV2Email o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2Email++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Email < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.passwordRequired!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Email--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig
    buildGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig < 3) {
    o.enableImprovedEmailPrivacy = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig(
  api.GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig < 3) {
    unittest.expect(o.enableImprovedEmailPrivacy!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2EmailTemplate = 0;
api.GoogleCloudIdentitytoolkitAdminV2EmailTemplate
    buildGoogleCloudIdentitytoolkitAdminV2EmailTemplate() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2EmailTemplate();
  buildCounterGoogleCloudIdentitytoolkitAdminV2EmailTemplate++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2EmailTemplate < 3) {
    o.body = 'foo';
    o.bodyFormat = 'foo';
    o.customized = true;
    o.replyTo = 'foo';
    o.senderDisplayName = 'foo';
    o.senderLocalPart = 'foo';
    o.subject = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2EmailTemplate--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2EmailTemplate(
  api.GoogleCloudIdentitytoolkitAdminV2EmailTemplate o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2EmailTemplate++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2EmailTemplate < 3) {
    unittest.expect(o.body!, unittest.equals('foo'));
    unittest.expect(o.bodyFormat!, unittest.equals('foo'));
    unittest.expect(o.customized!, unittest.isTrue);
    unittest.expect(o.replyTo!, unittest.equals('foo'));
    unittest.expect(o.senderDisplayName!, unittest.equals('foo'));
    unittest.expect(o.senderLocalPart!, unittest.equals('foo'));
    unittest.expect(o.subject!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2EmailTemplate--;
}

core.int
    buildCounterGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials = 0;
api.GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials
    buildGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials();
  buildCounterGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials <
      3) {
    o.accessToken = true;
    o.idToken = true;
    o.refreshToken = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials(
  api.GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials <
      3) {
    unittest.expect(o.accessToken!, unittest.isTrue);
    unittest.expect(o.idToken!, unittest.isTrue);
    unittest.expect(o.refreshToken!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2HashConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2HashConfig
    buildGoogleCloudIdentitytoolkitAdminV2HashConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2HashConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2HashConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2HashConfig < 3) {
    o.algorithm = 'foo';
    o.memoryCost = 42;
    o.rounds = 42;
    o.saltSeparator = 'foo';
    o.signerKey = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2HashConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2HashConfig(
  api.GoogleCloudIdentitytoolkitAdminV2HashConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2HashConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2HashConfig < 3) {
    unittest.expect(o.algorithm!, unittest.equals('foo'));
    unittest.expect(o.memoryCost!, unittest.equals(42));
    unittest.expect(o.rounds!, unittest.equals(42));
    unittest.expect(o.saltSeparator!, unittest.equals('foo'));
    unittest.expect(o.signerKey!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2HashConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2IdpCertificate = 0;
api.GoogleCloudIdentitytoolkitAdminV2IdpCertificate
    buildGoogleCloudIdentitytoolkitAdminV2IdpCertificate() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2IdpCertificate();
  buildCounterGoogleCloudIdentitytoolkitAdminV2IdpCertificate++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2IdpCertificate < 3) {
    o.x509Certificate = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2IdpCertificate--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2IdpCertificate(
  api.GoogleCloudIdentitytoolkitAdminV2IdpCertificate o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2IdpCertificate++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2IdpCertificate < 3) {
    unittest.expect(o.x509Certificate!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2IdpCertificate--;
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2IdpCertificate>
    buildUnnamed5() => [
          buildGoogleCloudIdentitytoolkitAdminV2IdpCertificate(),
          buildGoogleCloudIdentitytoolkitAdminV2IdpCertificate(),
        ];

void checkUnnamed5(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2IdpCertificate> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2IdpCertificate(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2IdpCertificate(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2IdpConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2IdpConfig
    buildGoogleCloudIdentitytoolkitAdminV2IdpConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2IdpConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2IdpConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2IdpConfig < 3) {
    o.idpCertificates = buildUnnamed5();
    o.idpEntityId = 'foo';
    o.signRequest = true;
    o.ssoUrl = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2IdpConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2IdpConfig(
  api.GoogleCloudIdentitytoolkitAdminV2IdpConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2IdpConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2IdpConfig < 3) {
    checkUnnamed5(o.idpCertificates!);
    unittest.expect(o.idpEntityId!, unittest.equals('foo'));
    unittest.expect(o.signRequest!, unittest.isTrue);
    unittest.expect(o.ssoUrl!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2IdpConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
    buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig < 3) {
    o.displayName = 'foo';
    o.enabled = true;
    o.idpConfig = buildGoogleCloudIdentitytoolkitAdminV2IdpConfig();
    o.name = 'foo';
    o.spConfig = buildGoogleCloudIdentitytoolkitAdminV2SpConfig();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(
  api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    checkGoogleCloudIdentitytoolkitAdminV2IdpConfig(o.idpConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitAdminV2SpConfig(o.spConfig!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2Inheritance = 0;
api.GoogleCloudIdentitytoolkitAdminV2Inheritance
    buildGoogleCloudIdentitytoolkitAdminV2Inheritance() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2Inheritance();
  buildCounterGoogleCloudIdentitytoolkitAdminV2Inheritance++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Inheritance < 3) {
    o.emailSendingConfig = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Inheritance--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2Inheritance(
  api.GoogleCloudIdentitytoolkitAdminV2Inheritance o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2Inheritance++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Inheritance < 3) {
    unittest.expect(o.emailSendingConfig!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Inheritance--;
}

core.int
    buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest =
    0;
api.GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest
    buildGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest() {
  final o =
      api.GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest();
  buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest <
      3) {}
  buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest(
  api.GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest <
      3) {}
  buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest--;
}

core.int
    buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse =
    0;
api.GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse
    buildGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse() {
  final o =
      api.GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse();
  buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse <
      3) {}
  buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse(
  api.GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse <
      3) {}
  buildCounterGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse--;
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
    buildUnnamed6() => [
          buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(),
          buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(),
        ];

void checkUnnamed6(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(o[1]);
}

core.int
    buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse =
    0;
api.GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
    buildGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse() {
  final o = api
      .GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse();
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse <
      3) {
    o.defaultSupportedIdpConfigs = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse--;
  return o;
}

void
    checkGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse(
  api.GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse <
      3) {
    checkUnnamed6(o.defaultSupportedIdpConfigs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse--;
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp>
    buildUnnamed7() => [
          buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp(),
          buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp(),
        ];

void checkUnnamed7(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp(o[1]);
}

core.int
    buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse =
    0;
api.GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse
    buildGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse() {
  final o =
      api.GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse();
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse <
      3) {
    o.defaultSupportedIdps = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse(
  api.GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse <
      3) {
    checkUnnamed7(o.defaultSupportedIdps!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse--;
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig>
    buildUnnamed8() => [
          buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(),
          buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(),
        ];

void checkUnnamed8(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(o[1]);
}

core.int
    buildCounterGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse =
    0;
api.GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
    buildGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse() {
  final o =
      api.GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse();
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse <
      3) {
    o.inboundSamlConfigs = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse(
  api.GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse <
      3) {
    checkUnnamed8(o.inboundSamlConfigs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse--;
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig>
    buildUnnamed9() => [
          buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(),
          buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(),
        ];

void checkUnnamed9(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(o[1]);
}

core.int
    buildCounterGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse =
    0;
api.GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
    buildGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse();
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.oauthIdpConfigs = buildUnnamed9();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse(
  api.GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed9(o.oauthIdpConfigs!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse--;
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2Tenant> buildUnnamed10() => [
      buildGoogleCloudIdentitytoolkitAdminV2Tenant(),
      buildGoogleCloudIdentitytoolkitAdminV2Tenant(),
    ];

void checkUnnamed10(core.List<api.GoogleCloudIdentitytoolkitAdminV2Tenant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2Tenant(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2Tenant(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse = 0;
api.GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse
    buildGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse();
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tenants = buildUnnamed10();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse(
  api.GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.tenants!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2MonitoringConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2MonitoringConfig
    buildGoogleCloudIdentitytoolkitAdminV2MonitoringConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2MonitoringConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2MonitoringConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2MonitoringConfig < 3) {
    o.requestLogging = buildGoogleCloudIdentitytoolkitAdminV2RequestLogging();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2MonitoringConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2MonitoringConfig(
  api.GoogleCloudIdentitytoolkitAdminV2MonitoringConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2MonitoringConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2MonitoringConfig < 3) {
    checkGoogleCloudIdentitytoolkitAdminV2RequestLogging(o.requestLogging!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2MonitoringConfig--;
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2ProviderConfig>
    buildUnnamed12() => [
          buildGoogleCloudIdentitytoolkitAdminV2ProviderConfig(),
          buildGoogleCloudIdentitytoolkitAdminV2ProviderConfig(),
        ];

void checkUnnamed12(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2ProviderConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2ProviderConfig(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2ProviderConfig(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig
    buildGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig < 3) {
    o.enabledProviders = buildUnnamed11();
    o.providerConfigs = buildUnnamed12();
    o.state = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig(
  api.GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig < 3) {
    checkUnnamed11(o.enabledProviders!);
    checkUnnamed12(o.providerConfigs!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig
    buildGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig < 3) {
    o.allowTenants = true;
    o.defaultTenantLocation = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig(
  api.GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig < 3) {
    unittest.expect(o.allowTenants!, unittest.isTrue);
    unittest.expect(o.defaultTenantLocation!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2NotificationConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2NotificationConfig
    buildGoogleCloudIdentitytoolkitAdminV2NotificationConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2NotificationConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2NotificationConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2NotificationConfig < 3) {
    o.defaultLocale = 'foo';
    o.sendEmail = buildGoogleCloudIdentitytoolkitAdminV2SendEmail();
    o.sendSms = buildGoogleCloudIdentitytoolkitAdminV2SendSms();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2NotificationConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2NotificationConfig(
  api.GoogleCloudIdentitytoolkitAdminV2NotificationConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2NotificationConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2NotificationConfig < 3) {
    unittest.expect(o.defaultLocale!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitAdminV2SendEmail(o.sendEmail!);
    checkGoogleCloudIdentitytoolkitAdminV2SendSms(o.sendSms!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2NotificationConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig
    buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig < 3) {
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.displayName = 'foo';
    o.enabled = true;
    o.issuer = 'foo';
    o.name = 'foo';
    o.responseType = buildGoogleCloudIdentitytoolkitAdminV2OAuthResponseType();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(
  api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.issuer!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitAdminV2OAuthResponseType(o.responseType!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthResponseType = 0;
api.GoogleCloudIdentitytoolkitAdminV2OAuthResponseType
    buildGoogleCloudIdentitytoolkitAdminV2OAuthResponseType() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2OAuthResponseType();
  buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthResponseType++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthResponseType < 3) {
    o.code = true;
    o.idToken = true;
    o.token = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthResponseType--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2OAuthResponseType(
  api.GoogleCloudIdentitytoolkitAdminV2OAuthResponseType o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthResponseType++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthResponseType < 3) {
    unittest.expect(o.code!, unittest.isTrue);
    unittest.expect(o.idToken!, unittest.isTrue);
    unittest.expect(o.token!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2OAuthResponseType--;
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion>
    buildUnnamed13() => [
          buildGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion(),
          buildGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion(),
        ];

void checkUnnamed13(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig
    buildGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig < 3) {
    o.forceUpgradeOnSignin = true;
    o.lastUpdateTime = 'foo';
    o.passwordPolicyEnforcementState = 'foo';
    o.passwordPolicyVersions = buildUnnamed13();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig(
  api.GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig < 3) {
    unittest.expect(o.forceUpgradeOnSignin!, unittest.isTrue);
    unittest.expect(o.lastUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.passwordPolicyEnforcementState!, unittest.equals('foo'));
    checkUnnamed13(o.passwordPolicyVersions!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion = 0;
api.GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion
    buildGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion();
  buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion < 3) {
    o.customStrengthOptions =
        buildGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions();
    o.schemaVersion = 42;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion(
  api.GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion < 3) {
    checkGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions(
      o.customStrengthOptions!,
    );
    unittest.expect(o.schemaVersion!, unittest.equals(42));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2Permissions = 0;
api.GoogleCloudIdentitytoolkitAdminV2Permissions
    buildGoogleCloudIdentitytoolkitAdminV2Permissions() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2Permissions();
  buildCounterGoogleCloudIdentitytoolkitAdminV2Permissions++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Permissions < 3) {
    o.disabledUserDeletion = true;
    o.disabledUserSignup = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Permissions--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2Permissions(
  api.GoogleCloudIdentitytoolkitAdminV2Permissions o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2Permissions++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Permissions < 3) {
    unittest.expect(o.disabledUserDeletion!, unittest.isTrue);
    unittest.expect(o.disabledUserSignup!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Permissions--;
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2PhoneNumber = 0;
api.GoogleCloudIdentitytoolkitAdminV2PhoneNumber
    buildGoogleCloudIdentitytoolkitAdminV2PhoneNumber() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2PhoneNumber();
  buildCounterGoogleCloudIdentitytoolkitAdminV2PhoneNumber++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2PhoneNumber < 3) {
    o.enabled = true;
    o.testPhoneNumbers = buildUnnamed14();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2PhoneNumber--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2PhoneNumber(
  api.GoogleCloudIdentitytoolkitAdminV2PhoneNumber o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2PhoneNumber++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2PhoneNumber < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    checkUnnamed14(o.testPhoneNumbers!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2PhoneNumber--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2ProviderConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2ProviderConfig
    buildGoogleCloudIdentitytoolkitAdminV2ProviderConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2ProviderConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2ProviderConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ProviderConfig < 3) {
    o.state = 'foo';
    o.totpProviderConfig =
        buildGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ProviderConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2ProviderConfig(
  api.GoogleCloudIdentitytoolkitAdminV2ProviderConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2ProviderConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2ProviderConfig < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig(
      o.totpProviderConfig!,
    );
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2ProviderConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2QuotaConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2QuotaConfig
    buildGoogleCloudIdentitytoolkitAdminV2QuotaConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2QuotaConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2QuotaConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2QuotaConfig < 3) {
    o.signUpQuotaConfig =
        buildGoogleCloudIdentitytoolkitAdminV2TemporaryQuota();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2QuotaConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2QuotaConfig(
  api.GoogleCloudIdentitytoolkitAdminV2QuotaConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2QuotaConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2QuotaConfig < 3) {
    checkGoogleCloudIdentitytoolkitAdminV2TemporaryQuota(o.signUpQuotaConfig!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2QuotaConfig--;
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule>
    buildUnnamed15() => [
          buildGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule(),
          buildGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule(),
        ];

void checkUnnamed15(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule(o[1]);
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2RecaptchaKey> buildUnnamed16() =>
    [
      buildGoogleCloudIdentitytoolkitAdminV2RecaptchaKey(),
      buildGoogleCloudIdentitytoolkitAdminV2RecaptchaKey(),
    ];

void checkUnnamed16(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2RecaptchaKey> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2RecaptchaKey(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2RecaptchaKey(o[1]);
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule>
    buildUnnamed17() => [
          buildGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule(),
          buildGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule(),
        ];

void checkUnnamed17(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule>
      o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig
    buildGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig < 3) {
    o.emailPasswordEnforcementState = 'foo';
    o.managedRules = buildUnnamed15();
    o.phoneEnforcementState = 'foo';
    o.recaptchaKeys = buildUnnamed16();
    o.tollFraudManagedRules = buildUnnamed17();
    o.useAccountDefender = true;
    o.useSmsBotScore = true;
    o.useSmsTollFraudProtection = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig(
  api.GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig < 3) {
    unittest.expect(o.emailPasswordEnforcementState!, unittest.equals('foo'));
    checkUnnamed15(o.managedRules!);
    unittest.expect(o.phoneEnforcementState!, unittest.equals('foo'));
    checkUnnamed16(o.recaptchaKeys!);
    checkUnnamed17(o.tollFraudManagedRules!);
    unittest.expect(o.useAccountDefender!, unittest.isTrue);
    unittest.expect(o.useSmsBotScore!, unittest.isTrue);
    unittest.expect(o.useSmsTollFraudProtection!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaKey = 0;
api.GoogleCloudIdentitytoolkitAdminV2RecaptchaKey
    buildGoogleCloudIdentitytoolkitAdminV2RecaptchaKey() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2RecaptchaKey();
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaKey++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaKey < 3) {
    o.key = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaKey--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2RecaptchaKey(
  api.GoogleCloudIdentitytoolkitAdminV2RecaptchaKey o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaKey++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaKey < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaKey--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule = 0;
api.GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule
    buildGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule();
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule < 3) {
    o.action = 'foo';
    o.endScore = 42.0;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule(
  api.GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.endScore!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule--;
}

core.int
    buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule =
    0;
api.GoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule
    buildGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule() {
  final o =
      api.GoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule();
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule <
      3) {
    o.action = 'foo';
    o.startScore = 42.0;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule(
  api.GoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule <
      3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.startScore!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2RequestLogging = 0;
api.GoogleCloudIdentitytoolkitAdminV2RequestLogging
    buildGoogleCloudIdentitytoolkitAdminV2RequestLogging() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2RequestLogging();
  buildCounterGoogleCloudIdentitytoolkitAdminV2RequestLogging++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2RequestLogging < 3) {
    o.enabled = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2RequestLogging--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2RequestLogging(
  api.GoogleCloudIdentitytoolkitAdminV2RequestLogging o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2RequestLogging++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2RequestLogging < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2RequestLogging--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2SendEmail = 0;
api.GoogleCloudIdentitytoolkitAdminV2SendEmail
    buildGoogleCloudIdentitytoolkitAdminV2SendEmail() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2SendEmail();
  buildCounterGoogleCloudIdentitytoolkitAdminV2SendEmail++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SendEmail < 3) {
    o.callbackUri = 'foo';
    o.changeEmailTemplate =
        buildGoogleCloudIdentitytoolkitAdminV2EmailTemplate();
    o.dnsInfo = buildGoogleCloudIdentitytoolkitAdminV2DnsInfo();
    o.legacyResetPasswordTemplate =
        buildGoogleCloudIdentitytoolkitAdminV2EmailTemplate();
    o.method = 'foo';
    o.resetPasswordTemplate =
        buildGoogleCloudIdentitytoolkitAdminV2EmailTemplate();
    o.revertSecondFactorAdditionTemplate =
        buildGoogleCloudIdentitytoolkitAdminV2EmailTemplate();
    o.smtp = buildGoogleCloudIdentitytoolkitAdminV2Smtp();
    o.verifyEmailTemplate =
        buildGoogleCloudIdentitytoolkitAdminV2EmailTemplate();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SendEmail--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2SendEmail(
  api.GoogleCloudIdentitytoolkitAdminV2SendEmail o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2SendEmail++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SendEmail < 3) {
    unittest.expect(o.callbackUri!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitAdminV2EmailTemplate(o.changeEmailTemplate!);
    checkGoogleCloudIdentitytoolkitAdminV2DnsInfo(o.dnsInfo!);
    checkGoogleCloudIdentitytoolkitAdminV2EmailTemplate(
      o.legacyResetPasswordTemplate!,
    );
    unittest.expect(o.method!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitAdminV2EmailTemplate(
      o.resetPasswordTemplate!,
    );
    checkGoogleCloudIdentitytoolkitAdminV2EmailTemplate(
      o.revertSecondFactorAdditionTemplate!,
    );
    checkGoogleCloudIdentitytoolkitAdminV2Smtp(o.smtp!);
    checkGoogleCloudIdentitytoolkitAdminV2EmailTemplate(o.verifyEmailTemplate!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SendEmail--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2SendSms = 0;
api.GoogleCloudIdentitytoolkitAdminV2SendSms
    buildGoogleCloudIdentitytoolkitAdminV2SendSms() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2SendSms();
  buildCounterGoogleCloudIdentitytoolkitAdminV2SendSms++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SendSms < 3) {
    o.smsTemplate = buildGoogleCloudIdentitytoolkitAdminV2SmsTemplate();
    o.useDeviceLocale = true;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SendSms--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2SendSms(
  api.GoogleCloudIdentitytoolkitAdminV2SendSms o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2SendSms++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SendSms < 3) {
    checkGoogleCloudIdentitytoolkitAdminV2SmsTemplate(o.smsTemplate!);
    unittest.expect(o.useDeviceLocale!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SendSms--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2SignInConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2SignInConfig
    buildGoogleCloudIdentitytoolkitAdminV2SignInConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2SignInConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2SignInConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SignInConfig < 3) {
    o.allowDuplicateEmails = true;
    o.anonymous = buildGoogleCloudIdentitytoolkitAdminV2Anonymous();
    o.email = buildGoogleCloudIdentitytoolkitAdminV2Email();
    o.hashConfig = buildGoogleCloudIdentitytoolkitAdminV2HashConfig();
    o.phoneNumber = buildGoogleCloudIdentitytoolkitAdminV2PhoneNumber();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SignInConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2SignInConfig(
  api.GoogleCloudIdentitytoolkitAdminV2SignInConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2SignInConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SignInConfig < 3) {
    unittest.expect(o.allowDuplicateEmails!, unittest.isTrue);
    checkGoogleCloudIdentitytoolkitAdminV2Anonymous(o.anonymous!);
    checkGoogleCloudIdentitytoolkitAdminV2Email(o.email!);
    checkGoogleCloudIdentitytoolkitAdminV2HashConfig(o.hashConfig!);
    checkGoogleCloudIdentitytoolkitAdminV2PhoneNumber(o.phoneNumber!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SignInConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig
    buildGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig < 3) {
    o.allowByDefault = buildGoogleCloudIdentitytoolkitAdminV2AllowByDefault();
    o.allowlistOnly = buildGoogleCloudIdentitytoolkitAdminV2AllowlistOnly();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig(
  api.GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig < 3) {
    checkGoogleCloudIdentitytoolkitAdminV2AllowByDefault(o.allowByDefault!);
    checkGoogleCloudIdentitytoolkitAdminV2AllowlistOnly(o.allowlistOnly!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2SmsTemplate = 0;
api.GoogleCloudIdentitytoolkitAdminV2SmsTemplate
    buildGoogleCloudIdentitytoolkitAdminV2SmsTemplate() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2SmsTemplate();
  buildCounterGoogleCloudIdentitytoolkitAdminV2SmsTemplate++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SmsTemplate < 3) {
    o.content = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SmsTemplate--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2SmsTemplate(
  api.GoogleCloudIdentitytoolkitAdminV2SmsTemplate o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2SmsTemplate++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SmsTemplate < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SmsTemplate--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2Smtp = 0;
api.GoogleCloudIdentitytoolkitAdminV2Smtp
    buildGoogleCloudIdentitytoolkitAdminV2Smtp() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2Smtp();
  buildCounterGoogleCloudIdentitytoolkitAdminV2Smtp++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Smtp < 3) {
    o.host = 'foo';
    o.password = 'foo';
    o.port = 42;
    o.securityMode = 'foo';
    o.senderEmail = 'foo';
    o.username = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Smtp--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2Smtp(
  api.GoogleCloudIdentitytoolkitAdminV2Smtp o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2Smtp++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Smtp < 3) {
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.securityMode!, unittest.equals('foo'));
    unittest.expect(o.senderEmail!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Smtp--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2SpCertificate = 0;
api.GoogleCloudIdentitytoolkitAdminV2SpCertificate
    buildGoogleCloudIdentitytoolkitAdminV2SpCertificate() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2SpCertificate();
  buildCounterGoogleCloudIdentitytoolkitAdminV2SpCertificate++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SpCertificate < 3) {
    o.expiresAt = 'foo';
    o.x509Certificate = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SpCertificate--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2SpCertificate(
  api.GoogleCloudIdentitytoolkitAdminV2SpCertificate o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2SpCertificate++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SpCertificate < 3) {
    unittest.expect(o.expiresAt!, unittest.equals('foo'));
    unittest.expect(o.x509Certificate!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SpCertificate--;
}

core.List<api.GoogleCloudIdentitytoolkitAdminV2SpCertificate>
    buildUnnamed18() => [
          buildGoogleCloudIdentitytoolkitAdminV2SpCertificate(),
          buildGoogleCloudIdentitytoolkitAdminV2SpCertificate(),
        ];

void checkUnnamed18(
  core.List<api.GoogleCloudIdentitytoolkitAdminV2SpCertificate> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitAdminV2SpCertificate(o[0]);
  checkGoogleCloudIdentitytoolkitAdminV2SpCertificate(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2SpConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2SpConfig
    buildGoogleCloudIdentitytoolkitAdminV2SpConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2SpConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2SpConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SpConfig < 3) {
    o.callbackUri = 'foo';
    o.spCertificates = buildUnnamed18();
    o.spEntityId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SpConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2SpConfig(
  api.GoogleCloudIdentitytoolkitAdminV2SpConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2SpConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2SpConfig < 3) {
    unittest.expect(o.callbackUri!, unittest.equals('foo'));
    checkUnnamed18(o.spCertificates!);
    unittest.expect(o.spEntityId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2SpConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2TemporaryQuota = 0;
api.GoogleCloudIdentitytoolkitAdminV2TemporaryQuota
    buildGoogleCloudIdentitytoolkitAdminV2TemporaryQuota() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2TemporaryQuota();
  buildCounterGoogleCloudIdentitytoolkitAdminV2TemporaryQuota++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2TemporaryQuota < 3) {
    o.quota = 'foo';
    o.quotaDuration = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2TemporaryQuota--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2TemporaryQuota(
  api.GoogleCloudIdentitytoolkitAdminV2TemporaryQuota o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2TemporaryQuota++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2TemporaryQuota < 3) {
    unittest.expect(o.quota!, unittest.equals('foo'));
    unittest.expect(o.quotaDuration!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2TemporaryQuota--;
}

core.Map<core.String, core.String> buildUnnamed19() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2Tenant = 0;
api.GoogleCloudIdentitytoolkitAdminV2Tenant
    buildGoogleCloudIdentitytoolkitAdminV2Tenant() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2Tenant();
  buildCounterGoogleCloudIdentitytoolkitAdminV2Tenant++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Tenant < 3) {
    o.allowPasswordSignup = true;
    o.autodeleteAnonymousUsers = true;
    o.client = buildGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig();
    o.disableAuth = true;
    o.displayName = 'foo';
    o.emailPrivacyConfig =
        buildGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig();
    o.enableAnonymousUser = true;
    o.enableEmailLinkSignin = true;
    o.hashConfig = buildGoogleCloudIdentitytoolkitAdminV2HashConfig();
    o.inheritance = buildGoogleCloudIdentitytoolkitAdminV2Inheritance();
    o.mfaConfig = buildGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig();
    o.monitoring = buildGoogleCloudIdentitytoolkitAdminV2MonitoringConfig();
    o.name = 'foo';
    o.passwordPolicyConfig =
        buildGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig();
    o.recaptchaConfig = buildGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig();
    o.smsRegionConfig = buildGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig();
    o.testPhoneNumbers = buildUnnamed19();
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Tenant--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2Tenant(
  api.GoogleCloudIdentitytoolkitAdminV2Tenant o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2Tenant++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Tenant < 3) {
    unittest.expect(o.allowPasswordSignup!, unittest.isTrue);
    unittest.expect(o.autodeleteAnonymousUsers!, unittest.isTrue);
    checkGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig(o.client!);
    unittest.expect(o.disableAuth!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig(
      o.emailPrivacyConfig!,
    );
    unittest.expect(o.enableAnonymousUser!, unittest.isTrue);
    unittest.expect(o.enableEmailLinkSignin!, unittest.isTrue);
    checkGoogleCloudIdentitytoolkitAdminV2HashConfig(o.hashConfig!);
    checkGoogleCloudIdentitytoolkitAdminV2Inheritance(o.inheritance!);
    checkGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig(o.mfaConfig!);
    checkGoogleCloudIdentitytoolkitAdminV2MonitoringConfig(o.monitoring!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig(
      o.passwordPolicyConfig!,
    );
    checkGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig(o.recaptchaConfig!);
    checkGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig(o.smsRegionConfig!);
    checkUnnamed19(o.testPhoneNumbers!);
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Tenant--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig = 0;
api.GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig
    buildGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig();
  buildCounterGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig < 3) {
    o.adjacentIntervals = 42;
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig(
  api.GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig < 3) {
    unittest.expect(o.adjacentIntervals!, unittest.equals(42));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitAdminV2Trigger = 0;
api.GoogleCloudIdentitytoolkitAdminV2Trigger
    buildGoogleCloudIdentitytoolkitAdminV2Trigger() {
  final o = api.GoogleCloudIdentitytoolkitAdminV2Trigger();
  buildCounterGoogleCloudIdentitytoolkitAdminV2Trigger++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Trigger < 3) {
    o.functionUri = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Trigger--;
  return o;
}

void checkGoogleCloudIdentitytoolkitAdminV2Trigger(
  api.GoogleCloudIdentitytoolkitAdminV2Trigger o,
) {
  buildCounterGoogleCloudIdentitytoolkitAdminV2Trigger++;
  if (buildCounterGoogleCloudIdentitytoolkitAdminV2Trigger < 3) {
    unittest.expect(o.functionUri!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitAdminV2Trigger--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2AutoRetrievalInfo = 0;
api.GoogleCloudIdentitytoolkitV2AutoRetrievalInfo
    buildGoogleCloudIdentitytoolkitV2AutoRetrievalInfo() {
  final o = api.GoogleCloudIdentitytoolkitV2AutoRetrievalInfo();
  buildCounterGoogleCloudIdentitytoolkitV2AutoRetrievalInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2AutoRetrievalInfo < 3) {
    o.appSignatureHash = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2AutoRetrievalInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2AutoRetrievalInfo(
  api.GoogleCloudIdentitytoolkitV2AutoRetrievalInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2AutoRetrievalInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2AutoRetrievalInfo < 3) {
    unittest.expect(o.appSignatureHash!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2AutoRetrievalInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2CustomStrengthOptions = 0;
api.GoogleCloudIdentitytoolkitV2CustomStrengthOptions
    buildGoogleCloudIdentitytoolkitV2CustomStrengthOptions() {
  final o = api.GoogleCloudIdentitytoolkitV2CustomStrengthOptions();
  buildCounterGoogleCloudIdentitytoolkitV2CustomStrengthOptions++;
  if (buildCounterGoogleCloudIdentitytoolkitV2CustomStrengthOptions < 3) {
    o.containsLowercaseCharacter = true;
    o.containsNonAlphanumericCharacter = true;
    o.containsNumericCharacter = true;
    o.containsUppercaseCharacter = true;
    o.maxPasswordLength = 42;
    o.minPasswordLength = 42;
  }
  buildCounterGoogleCloudIdentitytoolkitV2CustomStrengthOptions--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2CustomStrengthOptions(
  api.GoogleCloudIdentitytoolkitV2CustomStrengthOptions o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2CustomStrengthOptions++;
  if (buildCounterGoogleCloudIdentitytoolkitV2CustomStrengthOptions < 3) {
    unittest.expect(o.containsLowercaseCharacter!, unittest.isTrue);
    unittest.expect(o.containsNonAlphanumericCharacter!, unittest.isTrue);
    unittest.expect(o.containsNumericCharacter!, unittest.isTrue);
    unittest.expect(o.containsUppercaseCharacter!, unittest.isTrue);
    unittest.expect(o.maxPasswordLength!, unittest.equals(42));
    unittest.expect(o.minPasswordLength!, unittest.equals(42));
  }
  buildCounterGoogleCloudIdentitytoolkitV2CustomStrengthOptions--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest =
    0;
api.GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest
    buildGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest() {
  final o = api.GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest();
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest <
      3) {
    o.displayName = 'foo';
    o.idToken = 'foo';
    o.phoneVerificationInfo =
        buildGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo();
    o.tenantId = 'foo';
    o.totpVerificationInfo =
        buildGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo();
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest(
  api.GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo(
      o.phoneVerificationInfo!,
    );
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo(
      o.totpVerificationInfo!,
    );
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse =
    0;
api.GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse
    buildGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse() {
  final o = api.GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse();
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse <
      3) {
    o.idToken = 'foo';
    o.phoneAuthInfo =
        buildGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo();
    o.refreshToken = 'foo';
    o.totpAuthInfo =
        buildGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo();
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse(
  api.GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse <
      3) {
    unittest.expect(o.idToken!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo(
      o.phoneAuthInfo!,
    );
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo(
      o.totpAuthInfo!,
    );
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo =
    0;
api.GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo
    buildGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo() {
  final o = api.GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo();
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo < 3) {
    o.androidVerificationProof = 'foo';
    o.code = 'foo';
    o.phoneNumber = 'foo';
    o.sessionInfo = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo(
  api.GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo < 3) {
    unittest.expect(o.androidVerificationProof!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.sessionInfo!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo =
    0;
api.GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo
    buildGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo() {
  final o = api.GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo();
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo <
      3) {
    o.androidVerificationProof = 'foo';
    o.androidVerificationProofExpireTime = 'foo';
    o.phoneNumber = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo(
  api.GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo <
      3) {
    unittest.expect(o.androidVerificationProof!, unittest.equals('foo'));
    unittest.expect(
      o.androidVerificationProofExpireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest = 0;
api.GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest
    buildGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest() {
  final o = api.GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest();
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest < 3) {
    o.mfaEnrollmentId = 'foo';
    o.mfaPendingCredential = 'foo';
    o.phoneVerificationInfo =
        buildGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo();
    o.tenantId = 'foo';
    o.totpVerificationInfo =
        buildGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo();
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest(
  api.GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest < 3) {
    unittest.expect(o.mfaEnrollmentId!, unittest.equals('foo'));
    unittest.expect(o.mfaPendingCredential!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo(
      o.phoneVerificationInfo!,
    );
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo(
      o.totpVerificationInfo!,
    );
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse = 0;
api.GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse
    buildGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse() {
  final o = api.GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse();
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse < 3) {
    o.idToken = 'foo';
    o.phoneAuthInfo =
        buildGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo();
    o.refreshToken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse(
  api.GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse < 3) {
    unittest.expect(o.idToken!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo(
      o.phoneAuthInfo!,
    );
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse--;
}

core.int
    buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo =
    0;
api.GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo
    buildGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo() {
  final o =
      api.GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo();
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo <
      3) {
    o.sessionInfo = 'foo';
    o.verificationCode = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo(
  api.GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo <
      3) {
    unittest.expect(o.sessionInfo!, unittest.equals('foo'));
    unittest.expect(o.verificationCode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo--;
}

core.int
    buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo =
    0;
api.GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo
    buildGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo() {
  final o =
      api.GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo();
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo <
      3) {}
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo(
  api.GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo <
      3) {}
  buildCounterGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo = 0;
api.GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo
    buildGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo() {
  final o = api.GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo();
  buildCounterGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo < 3) {
    o.verificationCode = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo(
  api.GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo < 3) {
    unittest.expect(o.verificationCode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitV2PasswordPolicy = 0;
api.GoogleCloudIdentitytoolkitV2PasswordPolicy
    buildGoogleCloudIdentitytoolkitV2PasswordPolicy() {
  final o = api.GoogleCloudIdentitytoolkitV2PasswordPolicy();
  buildCounterGoogleCloudIdentitytoolkitV2PasswordPolicy++;
  if (buildCounterGoogleCloudIdentitytoolkitV2PasswordPolicy < 3) {
    o.allowedNonAlphanumericCharacters = buildUnnamed20();
    o.customStrengthOptions =
        buildGoogleCloudIdentitytoolkitV2CustomStrengthOptions();
    o.enforcementState = 'foo';
    o.forceUpgradeOnSignin = true;
    o.schemaVersion = 42;
  }
  buildCounterGoogleCloudIdentitytoolkitV2PasswordPolicy--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2PasswordPolicy(
  api.GoogleCloudIdentitytoolkitV2PasswordPolicy o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2PasswordPolicy++;
  if (buildCounterGoogleCloudIdentitytoolkitV2PasswordPolicy < 3) {
    checkUnnamed20(o.allowedNonAlphanumericCharacters!);
    checkGoogleCloudIdentitytoolkitV2CustomStrengthOptions(
      o.customStrengthOptions!,
    );
    unittest.expect(o.enforcementState!, unittest.equals('foo'));
    unittest.expect(o.forceUpgradeOnSignin!, unittest.isTrue);
    unittest.expect(o.schemaVersion!, unittest.equals(42));
  }
  buildCounterGoogleCloudIdentitytoolkitV2PasswordPolicy--;
}

core.List<api.GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState>
    buildUnnamed21() => [
          buildGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState(),
          buildGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState(),
        ];

void checkUnnamed21(
  core.List<api.GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState(o[0]);
  checkGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV2RecaptchaConfig = 0;
api.GoogleCloudIdentitytoolkitV2RecaptchaConfig
    buildGoogleCloudIdentitytoolkitV2RecaptchaConfig() {
  final o = api.GoogleCloudIdentitytoolkitV2RecaptchaConfig();
  buildCounterGoogleCloudIdentitytoolkitV2RecaptchaConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitV2RecaptchaConfig < 3) {
    o.recaptchaEnforcementState = buildUnnamed21();
    o.recaptchaKey = 'foo';
    o.useSmsBotScore = true;
    o.useSmsTollFraudProtection = true;
  }
  buildCounterGoogleCloudIdentitytoolkitV2RecaptchaConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2RecaptchaConfig(
  api.GoogleCloudIdentitytoolkitV2RecaptchaConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2RecaptchaConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitV2RecaptchaConfig < 3) {
    checkUnnamed21(o.recaptchaEnforcementState!);
    unittest.expect(o.recaptchaKey!, unittest.equals('foo'));
    unittest.expect(o.useSmsBotScore!, unittest.isTrue);
    unittest.expect(o.useSmsTollFraudProtection!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitV2RecaptchaConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState = 0;
api.GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState
    buildGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState() {
  final o = api.GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState();
  buildCounterGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState++;
  if (buildCounterGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState < 3) {
    o.enforcementState = 'foo';
    o.provider = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState(
  api.GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState++;
  if (buildCounterGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState < 3) {
    unittest.expect(o.enforcementState!, unittest.equals('foo'));
    unittest.expect(o.provider!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenRequest = 0;
api.GoogleCloudIdentitytoolkitV2RevokeTokenRequest
    buildGoogleCloudIdentitytoolkitV2RevokeTokenRequest() {
  final o = api.GoogleCloudIdentitytoolkitV2RevokeTokenRequest();
  buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenRequest < 3) {
    o.idToken = 'foo';
    o.providerId = 'foo';
    o.redirectUri = 'foo';
    o.tenantId = 'foo';
    o.token = 'foo';
    o.tokenType = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2RevokeTokenRequest(
  api.GoogleCloudIdentitytoolkitV2RevokeTokenRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenRequest < 3) {
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.providerId!, unittest.equals('foo'));
    unittest.expect(o.redirectUri!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
    unittest.expect(o.tokenType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenResponse = 0;
api.GoogleCloudIdentitytoolkitV2RevokeTokenResponse
    buildGoogleCloudIdentitytoolkitV2RevokeTokenResponse() {
  final o = api.GoogleCloudIdentitytoolkitV2RevokeTokenResponse();
  buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenResponse < 3) {}
  buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2RevokeTokenResponse(
  api.GoogleCloudIdentitytoolkitV2RevokeTokenResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenResponse < 3) {}
  buildCounterGoogleCloudIdentitytoolkitV2RevokeTokenResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest = 0;
api.GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest
    buildGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest() {
  final o = api.GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest();
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest < 3) {
    o.idToken = 'foo';
    o.phoneEnrollmentInfo =
        buildGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo();
    o.tenantId = 'foo';
    o.totpEnrollmentInfo =
        buildGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo();
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest(
  api.GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest < 3) {
    unittest.expect(o.idToken!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo(
      o.phoneEnrollmentInfo!,
    );
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo(
      o.totpEnrollmentInfo!,
    );
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse = 0;
api.GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse
    buildGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse() {
  final o = api.GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse();
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse < 3) {
    o.phoneSessionInfo =
        buildGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo();
    o.totpSessionInfo =
        buildGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo();
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse(
  api.GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse < 3) {
    checkGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo(
      o.phoneSessionInfo!,
    );
    checkGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo(
      o.totpSessionInfo!,
    );
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo = 0;
api.GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo
    buildGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo() {
  final o = api.GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo();
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo < 3) {
    o.autoRetrievalInfo = buildGoogleCloudIdentitytoolkitV2AutoRetrievalInfo();
    o.captchaResponse = 'foo';
    o.clientType = 'foo';
    o.iosReceipt = 'foo';
    o.iosSecret = 'foo';
    o.phoneNumber = 'foo';
    o.playIntegrityToken = 'foo';
    o.recaptchaToken = 'foo';
    o.recaptchaVersion = 'foo';
    o.safetyNetToken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo(
  api.GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo < 3) {
    checkGoogleCloudIdentitytoolkitV2AutoRetrievalInfo(o.autoRetrievalInfo!);
    unittest.expect(o.captchaResponse!, unittest.equals('foo'));
    unittest.expect(o.clientType!, unittest.equals('foo'));
    unittest.expect(o.iosReceipt!, unittest.equals('foo'));
    unittest.expect(o.iosSecret!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.playIntegrityToken!, unittest.equals('foo'));
    unittest.expect(o.recaptchaToken!, unittest.equals('foo'));
    unittest.expect(o.recaptchaVersion!, unittest.equals('foo'));
    unittest.expect(o.safetyNetToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo = 0;
api.GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo
    buildGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo() {
  final o = api.GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo();
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo < 3) {
    o.sessionInfo = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo(
  api.GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo < 3) {
    unittest.expect(o.sessionInfo!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInRequest = 0;
api.GoogleCloudIdentitytoolkitV2StartMfaSignInRequest
    buildGoogleCloudIdentitytoolkitV2StartMfaSignInRequest() {
  final o = api.GoogleCloudIdentitytoolkitV2StartMfaSignInRequest();
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInRequest < 3) {
    o.mfaEnrollmentId = 'foo';
    o.mfaPendingCredential = 'foo';
    o.phoneSignInInfo =
        buildGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo();
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2StartMfaSignInRequest(
  api.GoogleCloudIdentitytoolkitV2StartMfaSignInRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInRequest < 3) {
    unittest.expect(o.mfaEnrollmentId!, unittest.equals('foo'));
    unittest.expect(o.mfaPendingCredential!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo(
      o.phoneSignInInfo!,
    );
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInResponse = 0;
api.GoogleCloudIdentitytoolkitV2StartMfaSignInResponse
    buildGoogleCloudIdentitytoolkitV2StartMfaSignInResponse() {
  final o = api.GoogleCloudIdentitytoolkitV2StartMfaSignInResponse();
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInResponse < 3) {
    o.phoneResponseInfo =
        buildGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo();
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2StartMfaSignInResponse(
  api.GoogleCloudIdentitytoolkitV2StartMfaSignInResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInResponse < 3) {
    checkGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo(
      o.phoneResponseInfo!,
    );
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaSignInResponse--;
}

core.int
    buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo =
    0;
api.GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo
    buildGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo() {
  final o = api.GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo();
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo <
      3) {}
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo(
  api.GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo <
      3) {}
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo--;
}

core.int
    buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo =
    0;
api.GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo
    buildGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo() {
  final o =
      api.GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo();
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo <
      3) {
    o.finalizeEnrollmentTime = 'foo';
    o.hashingAlgorithm = 'foo';
    o.periodSec = 42;
    o.sessionInfo = 'foo';
    o.sharedSecretKey = 'foo';
    o.verificationCodeLength = 42;
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo(
  api.GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo <
      3) {
    unittest.expect(o.finalizeEnrollmentTime!, unittest.equals('foo'));
    unittest.expect(o.hashingAlgorithm!, unittest.equals('foo'));
    unittest.expect(o.periodSec!, unittest.equals(42));
    unittest.expect(o.sessionInfo!, unittest.equals('foo'));
    unittest.expect(o.sharedSecretKey!, unittest.equals('foo'));
    unittest.expect(o.verificationCodeLength!, unittest.equals(42));
  }
  buildCounterGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaRequest = 0;
api.GoogleCloudIdentitytoolkitV2WithdrawMfaRequest
    buildGoogleCloudIdentitytoolkitV2WithdrawMfaRequest() {
  final o = api.GoogleCloudIdentitytoolkitV2WithdrawMfaRequest();
  buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaRequest < 3) {
    o.idToken = 'foo';
    o.mfaEnrollmentId = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2WithdrawMfaRequest(
  api.GoogleCloudIdentitytoolkitV2WithdrawMfaRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaRequest < 3) {
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.mfaEnrollmentId!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaResponse = 0;
api.GoogleCloudIdentitytoolkitV2WithdrawMfaResponse
    buildGoogleCloudIdentitytoolkitV2WithdrawMfaResponse() {
  final o = api.GoogleCloudIdentitytoolkitV2WithdrawMfaResponse();
  buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaResponse < 3) {
    o.idToken = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV2WithdrawMfaResponse(
  api.GoogleCloudIdentitytoolkitV2WithdrawMfaResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaResponse < 3) {
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV2WithdrawMfaResponse--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed22() => [
      buildGoogleIamV1AuditLogConfig(),
      buildGoogleIamV1AuditLogConfig(),
    ];

void checkUnnamed22(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed22();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed22(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed23();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed23(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed24();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed24(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.int buildCounterGoogleIamV1GetIamPolicyRequest = 0;
api.GoogleIamV1GetIamPolicyRequest buildGoogleIamV1GetIamPolicyRequest() {
  final o = api.GoogleIamV1GetIamPolicyRequest();
  buildCounterGoogleIamV1GetIamPolicyRequest++;
  if (buildCounterGoogleIamV1GetIamPolicyRequest < 3) {
    o.options = buildGoogleIamV1GetPolicyOptions();
  }
  buildCounterGoogleIamV1GetIamPolicyRequest--;
  return o;
}

void checkGoogleIamV1GetIamPolicyRequest(api.GoogleIamV1GetIamPolicyRequest o) {
  buildCounterGoogleIamV1GetIamPolicyRequest++;
  if (buildCounterGoogleIamV1GetIamPolicyRequest < 3) {
    checkGoogleIamV1GetPolicyOptions(o.options!);
  }
  buildCounterGoogleIamV1GetIamPolicyRequest--;
}

core.int buildCounterGoogleIamV1GetPolicyOptions = 0;
api.GoogleIamV1GetPolicyOptions buildGoogleIamV1GetPolicyOptions() {
  final o = api.GoogleIamV1GetPolicyOptions();
  buildCounterGoogleIamV1GetPolicyOptions++;
  if (buildCounterGoogleIamV1GetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGoogleIamV1GetPolicyOptions--;
  return o;
}

void checkGoogleIamV1GetPolicyOptions(api.GoogleIamV1GetPolicyOptions o) {
  buildCounterGoogleIamV1GetPolicyOptions++;
  if (buildCounterGoogleIamV1GetPolicyOptions < 3) {
    unittest.expect(o.requestedPolicyVersion!, unittest.equals(42));
  }
  buildCounterGoogleIamV1GetPolicyOptions--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed25() => [
      buildGoogleIamV1AuditConfig(),
      buildGoogleIamV1AuditConfig(),
    ];

void checkUnnamed25(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed26() => [
      buildGoogleIamV1Binding(),
      buildGoogleIamV1Binding(),
    ];

void checkUnnamed26(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed25();
    o.bindings = buildUnnamed26();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed25(o.auditConfigs!);
    checkUnnamed26(o.bindings!);
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

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
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
    o.permissions = buildUnnamed27();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
  api.GoogleIamV1TestIamPermissionsRequest o,
) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed27(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
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
    o.permissions = buildUnnamed28();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
  api.GoogleIamV1TestIamPermissionsResponse o,
) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed28(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
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

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  final o = api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

void checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2AllowByDefault',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2AllowByDefault();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2AllowByDefault.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2AllowByDefault(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2AllowlistOnly',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2AllowlistOnly();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2AllowlistOnly.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2AllowlistOnly(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2Anonymous', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2Anonymous();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2Anonymous.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2Anonymous(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2AppleSignInConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig
            .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2ClientConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2ClientConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2ClientConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2ClientConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig
            .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2ClientPermissions',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2ClientPermissions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2ClientPermissions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2ClientPermissions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2CodeFlowConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2Config();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2Config.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2Config(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2DnsInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2DnsInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2DnsInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2DnsInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2Email', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2Email();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2Email.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2Email(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2EmailTemplate',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2EmailTemplate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2EmailTemplate(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2HashConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2HashConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2HashConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2HashConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2IdpCertificate',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2IdpCertificate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2IdpCertificate(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2IdpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2IdpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2IdpConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2IdpConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2Inheritance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2Inheritance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2Inheritance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2Inheritance(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2MonitoringConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2MonitoringConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2MonitoringConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2MonitoringConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2MultiTenantConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2NotificationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2NotificationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2NotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2NotificationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2OAuthResponseType',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2OAuthResponseType();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2OAuthResponseType.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2OAuthResponseType(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2Permissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2Permissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2Permissions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2Permissions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2PhoneNumber', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2PhoneNumber();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2PhoneNumber.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2PhoneNumber(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2ProviderConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2ProviderConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2ProviderConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2ProviderConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2QuotaConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2QuotaConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2QuotaConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2QuotaConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2RecaptchaConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2RecaptchaKey',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2RecaptchaKey();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2RecaptchaKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2RecaptchaKey(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2RecaptchaTollFraudManagedRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2RequestLogging',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2RequestLogging();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2RequestLogging.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2RequestLogging(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2SendEmail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2SendEmail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2SendEmail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2SendEmail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2SendSms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2SendSms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2SendSms.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2SendSms(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2SignInConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2SignInConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2SignInConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2SignInConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2SmsRegionConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2SmsTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2SmsTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2SmsTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2SmsTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2Smtp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2Smtp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2Smtp.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2Smtp(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2SpCertificate',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2SpCertificate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2SpCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2SpCertificate(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2SpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2SpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2SpConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2SpConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2TemporaryQuota',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2TemporaryQuota();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitAdminV2TemporaryQuota.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2TemporaryQuota(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2Tenant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2Tenant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2Tenant(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitAdminV2Trigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitAdminV2Trigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitAdminV2Trigger.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitAdminV2Trigger(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2AutoRetrievalInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2AutoRetrievalInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV2AutoRetrievalInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2AutoRetrievalInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2CustomStrengthOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2CustomStrengthOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2CustomStrengthOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2CustomStrengthOptions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest
            .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse
            .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo
            .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo
            .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV2PasswordPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV2PasswordPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV2PasswordPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV2PasswordPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV2RecaptchaConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV2RecaptchaConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV2RecaptchaConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV2RecaptchaConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2RecaptchaEnforcementState(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2RevokeTokenRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2RevokeTokenRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV2RevokeTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2RevokeTokenRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2RevokeTokenResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2RevokeTokenResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV2RevokeTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2RevokeTokenResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2StartMfaSignInRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2StartMfaSignInRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2StartMfaSignInRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2StartMfaSignInRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2StartMfaSignInResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2StartMfaSignInResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2StartMfaSignInResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2StartMfaSignInResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2WithdrawMfaRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2WithdrawMfaRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV2WithdrawMfaRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2WithdrawMfaRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV2WithdrawMfaResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV2WithdrawMfaResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV2WithdrawMfaResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV2WithdrawMfaResponse(od);
      });
    },
  );

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

  unittest.group('obj-schema-GoogleIamV1GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1GetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1GetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1GetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1GetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1GetPolicyOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1GetPolicyOptions(od);
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

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--revokeToken', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request = buildGoogleCloudIdentitytoolkitV2RevokeTokenRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitV2RevokeTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV2RevokeTokenRequest(obj);

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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('v2/accounts:revokeToken'),
          );
          pathOffset += 23;

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
            buildGoogleCloudIdentitytoolkitV2RevokeTokenResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.revokeToken(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV2RevokeTokenResponse(
        response as api.GoogleCloudIdentitytoolkitV2RevokeTokenResponse,
      );
    });
  });

  unittest.group('resource-AccountsMfaEnrollmentResource', () {
    unittest.test('method--finalize', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts.mfaEnrollment;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest
                  .fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 34),
            unittest.equals('v2/accounts/mfaEnrollment:finalize'),
          );
          pathOffset += 34;

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
            buildGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.finalize(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse(
        response
            as api.GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse,
      );
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts.mfaEnrollment;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest
              .fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('v2/accounts/mfaEnrollment:start'),
          );
          pathOffset += 31;

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
            buildGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.start(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse(
        response as api.GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse,
      );
    });

    unittest.test('method--withdraw', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts.mfaEnrollment;
      final arg_request = buildGoogleCloudIdentitytoolkitV2WithdrawMfaRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitV2WithdrawMfaRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV2WithdrawMfaRequest(obj);

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
            path.substring(pathOffset, pathOffset + 34),
            unittest.equals('v2/accounts/mfaEnrollment:withdraw'),
          );
          pathOffset += 34;

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
            buildGoogleCloudIdentitytoolkitV2WithdrawMfaResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.withdraw(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV2WithdrawMfaResponse(
        response as api.GoogleCloudIdentitytoolkitV2WithdrawMfaResponse,
      );
    });
  });

  unittest.group('resource-AccountsMfaSignInResource', () {
    unittest.test('method--finalize', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts.mfaSignIn;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('v2/accounts/mfaSignIn:finalize'),
          );
          pathOffset += 30;

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
            buildGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.finalize(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse(
        response as api.GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse,
      );
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts.mfaSignIn;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV2StartMfaSignInRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitV2StartMfaSignInRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV2StartMfaSignInRequest(obj);

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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('v2/accounts/mfaSignIn:start'),
          );
          pathOffset += 27;

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
            buildGoogleCloudIdentitytoolkitV2StartMfaSignInResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.start(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV2StartMfaSignInResponse(
        response as api.GoogleCloudIdentitytoolkitV2StartMfaSignInResponse,
      );
    });
  });

  unittest.group('resource-DefaultSupportedIdpsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).defaultSupportedIdps;
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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('v2/defaultSupportedIdps'),
          );
          pathOffset += 23;

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
            buildGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse(
        response as api
            .GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2Config(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitAdminV2Config(
        response as api.GoogleCloudIdentitytoolkitAdminV2Config,
      );
    });

    unittest.test('method--updateConfig', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects;
      final arg_request = buildGoogleCloudIdentitytoolkitAdminV2Config();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudIdentitytoolkitAdminV2Config.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2Config(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2Config(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitAdminV2Config(
        response as api.GoogleCloudIdentitytoolkitAdminV2Config,
      );
    });
  });

  unittest.group('resource-ProjectsDefaultSupportedIdpConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.IdentityToolkitApi(mock).projects.defaultSupportedIdpConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig();
      final arg_parent = 'foo';
      final arg_idpId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
                  .fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(obj);

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
            unittest.equals('v2/'),
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
          unittest.expect(queryMap['idpId']!.first, unittest.equals(arg_idpId));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        idpId: arg_idpId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(
        response
            as api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.IdentityToolkitApi(mock).projects.defaultSupportedIdpConfigs;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IdentityToolkitApi(mock).projects.defaultSupportedIdpConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(
        response
            as api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.IdentityToolkitApi(mock).projects.defaultSupportedIdpConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse(),
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
      checkGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse(
        response as api
            .GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.IdentityToolkitApi(mock).projects.defaultSupportedIdpConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
                  .fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(),
          );
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
      checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(
        response
            as api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig,
      );
    });
  });

  unittest.group('resource-ProjectsIdentityPlatformResource', () {
    unittest.test('method--initializeAuth', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.identityPlatform;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest();
      final arg_project = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest
                  .fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest(
            obj,
          );

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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.initializeAuth(
        arg_request,
        arg_project,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse(
        response as api
            .GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse,
      );
    });
  });

  unittest.group('resource-ProjectsInboundSamlConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.inboundSamlConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig();
      final arg_parent = 'foo';
      final arg_inboundSamlConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(obj);

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
            unittest.equals('v2/'),
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
            queryMap['inboundSamlConfigId']!.first,
            unittest.equals(arg_inboundSamlConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        inboundSamlConfigId: arg_inboundSamlConfigId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.inboundSamlConfigs;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.inboundSamlConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.inboundSamlConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse(),
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
      checkGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse(
        response as api
            .GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.inboundSamlConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(),
          );
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
      checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig,
      );
    });
  });

  unittest.group('resource-ProjectsOauthIdpConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.oauthIdpConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig();
      final arg_parent = 'foo';
      final arg_oauthIdpConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(obj);

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
            unittest.equals('v2/'),
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
            queryMap['oauthIdpConfigId']!.first,
            unittest.equals(arg_oauthIdpConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        oauthIdpConfigId: arg_oauthIdpConfigId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.oauthIdpConfigs;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.oauthIdpConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.oauthIdpConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse(),
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
      checkGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse(
        response
            as api.GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.oauthIdpConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(),
          );
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
      checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig,
      );
    });
  });

  unittest.group('resource-ProjectsTenantsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants;
      final arg_request = buildGoogleCloudIdentitytoolkitAdminV2Tenant();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2Tenant(obj);

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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2Tenant(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitAdminV2Tenant(
        response as api.GoogleCloudIdentitytoolkitAdminV2Tenant,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2Tenant(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitAdminV2Tenant(
        response as api.GoogleCloudIdentitytoolkitAdminV2Tenant,
      );
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants;
      final arg_request = buildGoogleIamV1GetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1GetIamPolicyRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse(),
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
      checkGoogleCloudIdentitytoolkitAdminV2ListTenantsResponse(
        response as api.GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants;
      final arg_request = buildGoogleCloudIdentitytoolkitAdminV2Tenant();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2Tenant(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2Tenant(),
          );
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
      checkGoogleCloudIdentitytoolkitAdminV2Tenant(
        response as api.GoogleCloudIdentitytoolkitAdminV2Tenant,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants;
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
            unittest.equals('v2/'),
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
      final res = api.IdentityToolkitApi(mock).projects.tenants;
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
            unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsTenantsDefaultSupportedIdpConfigsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(
        mock,
      ).projects.tenants.defaultSupportedIdpConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig();
      final arg_parent = 'foo';
      final arg_idpId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
                  .fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(obj);

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
            unittest.equals('v2/'),
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
          unittest.expect(queryMap['idpId']!.first, unittest.equals(arg_idpId));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        idpId: arg_idpId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(
        response
            as api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(
        mock,
      ).projects.tenants.defaultSupportedIdpConfigs;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(
        mock,
      ).projects.tenants.defaultSupportedIdpConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(
        response
            as api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(
        mock,
      ).projects.tenants.defaultSupportedIdpConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse(),
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
      checkGoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse(
        response as api
            .GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(
        mock,
      ).projects.tenants.defaultSupportedIdpConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
                  .fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(),
          );
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
      checkGoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig(
        response
            as api.GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig,
      );
    });
  });

  unittest.group('resource-ProjectsTenantsInboundSamlConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.IdentityToolkitApi(mock).projects.tenants.inboundSamlConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig();
      final arg_parent = 'foo';
      final arg_inboundSamlConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(obj);

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
            unittest.equals('v2/'),
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
            queryMap['inboundSamlConfigId']!.first,
            unittest.equals(arg_inboundSamlConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        inboundSamlConfigId: arg_inboundSamlConfigId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.IdentityToolkitApi(mock).projects.tenants.inboundSamlConfigs;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IdentityToolkitApi(mock).projects.tenants.inboundSamlConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.IdentityToolkitApi(mock).projects.tenants.inboundSamlConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse(),
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
      checkGoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse(
        response as api
            .GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.IdentityToolkitApi(mock).projects.tenants.inboundSamlConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(),
          );
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
      checkGoogleCloudIdentitytoolkitAdminV2InboundSamlConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig,
      );
    });
  });

  unittest.group('resource-ProjectsTenantsOauthIdpConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.oauthIdpConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig();
      final arg_parent = 'foo';
      final arg_oauthIdpConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(obj);

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
            unittest.equals('v2/'),
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
            queryMap['oauthIdpConfigId']!.first,
            unittest.equals(arg_oauthIdpConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        oauthIdpConfigId: arg_oauthIdpConfigId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.oauthIdpConfigs;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.oauthIdpConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.oauthIdpConfigs;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse(),
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
      checkGoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse(
        response
            as api.GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.oauthIdpConfigs;
      final arg_request =
          buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(),
          );
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
      checkGoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig(
        response as api.GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig,
      );
    });
  });

  unittest.group('resource-V2Resource', () {
    unittest.test('method--getPasswordPolicy', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).v2;
      final arg_tenantId = 'foo';
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
            path.substring(pathOffset, pathOffset + 17),
            unittest.equals('v2/passwordPolicy'),
          );
          pathOffset += 17;

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
            queryMap['tenantId']!.first,
            unittest.equals(arg_tenantId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV2PasswordPolicy(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getPasswordPolicy(
        tenantId: arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV2PasswordPolicy(
        response as api.GoogleCloudIdentitytoolkitV2PasswordPolicy,
      );
    });

    unittest.test('method--getRecaptchaConfig', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).v2;
      final arg_clientType = 'foo';
      final arg_tenantId = 'foo';
      final arg_version = 'foo';
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
            unittest.equals('v2/recaptchaConfig'),
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
            queryMap['clientType']!.first,
            unittest.equals(arg_clientType),
          );
          unittest.expect(
            queryMap['tenantId']!.first,
            unittest.equals(arg_tenantId),
          );
          unittest.expect(
            queryMap['version']!.first,
            unittest.equals(arg_version),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV2RecaptchaConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getRecaptchaConfig(
        clientType: arg_clientType,
        tenantId: arg_tenantId,
        version: arg_version,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV2RecaptchaConfig(
        response as api.GoogleCloudIdentitytoolkitV2RecaptchaConfig,
      );
    });
  });
}
