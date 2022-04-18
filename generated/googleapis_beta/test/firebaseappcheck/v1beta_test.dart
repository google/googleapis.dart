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

import 'package:googleapis_beta/firebaseappcheck/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleFirebaseAppcheckV1betaAppAttestConfig = 0;
api.GoogleFirebaseAppcheckV1betaAppAttestConfig
    buildGoogleFirebaseAppcheckV1betaAppAttestConfig() {
  final o = api.GoogleFirebaseAppcheckV1betaAppAttestConfig();
  buildCounterGoogleFirebaseAppcheckV1betaAppAttestConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaAppAttestConfig < 3) {
    o.name = 'foo';
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaAppAttestConfig--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaAppAttestConfig(
    api.GoogleFirebaseAppcheckV1betaAppAttestConfig o) {
  buildCounterGoogleFirebaseAppcheckV1betaAppAttestConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaAppAttestConfig < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenTtl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaAppAttestConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaAppCheckToken = 0;
api.GoogleFirebaseAppcheckV1betaAppCheckToken
    buildGoogleFirebaseAppcheckV1betaAppCheckToken() {
  final o = api.GoogleFirebaseAppcheckV1betaAppCheckToken();
  buildCounterGoogleFirebaseAppcheckV1betaAppCheckToken++;
  if (buildCounterGoogleFirebaseAppcheckV1betaAppCheckToken < 3) {
    o.attestationToken = 'foo';
    o.token = 'foo';
    o.ttl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaAppCheckToken--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaAppCheckToken(
    api.GoogleFirebaseAppcheckV1betaAppCheckToken o) {
  buildCounterGoogleFirebaseAppcheckV1betaAppCheckToken++;
  if (buildCounterGoogleFirebaseAppcheckV1betaAppCheckToken < 3) {
    unittest.expect(
      o.attestationToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaAppCheckToken--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaAttestationTokenResponse = 0;
api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse
    buildGoogleFirebaseAppcheckV1betaAttestationTokenResponse() {
  final o = api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse();
  buildCounterGoogleFirebaseAppcheckV1betaAttestationTokenResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaAttestationTokenResponse < 3) {
    o.attestationToken = 'foo';
    o.ttl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaAttestationTokenResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaAttestationTokenResponse(
    api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaAttestationTokenResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaAttestationTokenResponse < 3) {
    unittest.expect(
      o.attestationToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaAttestationTokenResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaAppAttestConfig> buildUnnamed0() => [
      buildGoogleFirebaseAppcheckV1betaAppAttestConfig(),
      buildGoogleFirebaseAppcheckV1betaAppAttestConfig(),
    ];

void checkUnnamed0(
    core.List<api.GoogleFirebaseAppcheckV1betaAppAttestConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaAppAttestConfig(o[0]);
  checkGoogleFirebaseAppcheckV1betaAppAttestConfig(o[1]);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse
    buildGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse() {
  final o = api.GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse <
      3) {
    o.configs = buildUnnamed0();
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse(
    api.GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse <
      3) {
    checkUnnamed0(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig> buildUnnamed1() =>
    [
      buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig(),
      buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig(),
    ];

void checkUnnamed1(
    core.List<api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(o[0]);
  checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(o[1]);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse
    buildGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse() {
  final o =
      api.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse <
      3) {
    o.configs = buildUnnamed1();
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse(
    api.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse <
      3) {
    checkUnnamed1(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaRecaptchaConfig> buildUnnamed2() => [
      buildGoogleFirebaseAppcheckV1betaRecaptchaConfig(),
      buildGoogleFirebaseAppcheckV1betaRecaptchaConfig(),
    ];

void checkUnnamed2(
    core.List<api.GoogleFirebaseAppcheckV1betaRecaptchaConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(o[0]);
  checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(o[1]);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse
    buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse() {
  final o = api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse <
      3) {
    o.configs = buildUnnamed2();
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse(
    api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse <
      3) {
    checkUnnamed2(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig>
    buildUnnamed3() => [
          buildGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig(),
          buildGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig(),
        ];

void checkUnnamed3(
    core.List<api.GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig(o[0]);
  checkGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig(o[1]);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse
    buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse() {
  final o = api
      .GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse <
      3) {
    o.configs = buildUnnamed3();
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse(
    api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse
        o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse <
      3) {
    checkUnnamed3(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaRecaptchaV3Config> buildUnnamed4() =>
    [
      buildGoogleFirebaseAppcheckV1betaRecaptchaV3Config(),
      buildGoogleFirebaseAppcheckV1betaRecaptchaV3Config(),
    ];

void checkUnnamed4(
    core.List<api.GoogleFirebaseAppcheckV1betaRecaptchaV3Config> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaRecaptchaV3Config(o[0]);
  checkGoogleFirebaseAppcheckV1betaRecaptchaV3Config(o[1]);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse
    buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse() {
  final o =
      api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse <
      3) {
    o.configs = buildUnnamed4();
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse(
    api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse <
      3) {
    checkUnnamed4(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaSafetyNetConfig> buildUnnamed5() => [
      buildGoogleFirebaseAppcheckV1betaSafetyNetConfig(),
      buildGoogleFirebaseAppcheckV1betaSafetyNetConfig(),
    ];

void checkUnnamed5(
    core.List<api.GoogleFirebaseAppcheckV1betaSafetyNetConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaSafetyNetConfig(o[0]);
  checkGoogleFirebaseAppcheckV1betaSafetyNetConfig(o[1]);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse
    buildGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse() {
  final o = api.GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse <
      3) {
    o.configs = buildUnnamed5();
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse(
    api.GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse <
      3) {
    checkUnnamed5(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest>
    buildUnnamed6() => [
          buildGoogleFirebaseAppcheckV1betaUpdateServiceRequest(),
          buildGoogleFirebaseAppcheckV1betaUpdateServiceRequest(),
        ];

void checkUnnamed6(
    core.List<api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaUpdateServiceRequest(o[0]);
  checkGoogleFirebaseAppcheckV1betaUpdateServiceRequest(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest = 0;
api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest
    buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest() {
  final o = api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest();
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest < 3) {
    o.requests = buildUnnamed6();
    o.updateMask = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest(
    api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest < 3) {
    checkUnnamed6(o.requests!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest--;
}

core.List<api.GoogleFirebaseAppcheckV1betaService> buildUnnamed7() => [
      buildGoogleFirebaseAppcheckV1betaService(),
      buildGoogleFirebaseAppcheckV1betaService(),
    ];

void checkUnnamed7(core.List<api.GoogleFirebaseAppcheckV1betaService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaService(o[0]);
  checkGoogleFirebaseAppcheckV1betaService(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse =
    0;
api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse
    buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse() {
  final o = api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse();
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse < 3) {
    o.services = buildUnnamed7();
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse(
    api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse < 3) {
    checkUnnamed7(o.services!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaDebugToken = 0;
api.GoogleFirebaseAppcheckV1betaDebugToken
    buildGoogleFirebaseAppcheckV1betaDebugToken() {
  final o = api.GoogleFirebaseAppcheckV1betaDebugToken();
  buildCounterGoogleFirebaseAppcheckV1betaDebugToken++;
  if (buildCounterGoogleFirebaseAppcheckV1betaDebugToken < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.token = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaDebugToken--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaDebugToken(
    api.GoogleFirebaseAppcheckV1betaDebugToken o) {
  buildCounterGoogleFirebaseAppcheckV1betaDebugToken++;
  if (buildCounterGoogleFirebaseAppcheckV1betaDebugToken < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaDebugToken--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaDeviceCheckConfig = 0;
api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig
    buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig() {
  final o = api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig();
  buildCounterGoogleFirebaseAppcheckV1betaDeviceCheckConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaDeviceCheckConfig < 3) {
    o.keyId = 'foo';
    o.name = 'foo';
    o.privateKey = 'foo';
    o.privateKeySet = true;
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaDeviceCheckConfig--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(
    api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig o) {
  buildCounterGoogleFirebaseAppcheckV1betaDeviceCheckConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaDeviceCheckConfig < 3) {
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateKey!,
      unittest.equals('foo'),
    );
    unittest.expect(o.privateKeySet!, unittest.isTrue);
    unittest.expect(
      o.tokenTtl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaDeviceCheckConfig--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest =
    0;
api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest
    buildGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest() {
  final o = api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest();
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest <
      3) {
    o.artifact = 'foo';
    o.assertion = 'foo';
    o.challenge = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest(
    api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest <
      3) {
    unittest.expect(
      o.artifact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.assertion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.challenge!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest =
    0;
api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest
    buildGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest() {
  final o =
      api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest();
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest <
      3) {
    o.attestationStatement = 'foo';
    o.challenge = 'foo';
    o.keyId = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest(
    api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest <
      3) {
    unittest.expect(
      o.attestationStatement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.challenge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse =
    0;
api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse
    buildGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse() {
  final o =
      api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse();
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse <
      3) {
    o.appCheckToken = buildGoogleFirebaseAppcheckV1betaAppCheckToken();
    o.artifact = 'foo';
    o.attestationToken =
        buildGoogleFirebaseAppcheckV1betaAttestationTokenResponse();
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse(
    api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse <
      3) {
    checkGoogleFirebaseAppcheckV1betaAppCheckToken(o.appCheckToken!);
    unittest.expect(
      o.artifact!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseAppcheckV1betaAttestationTokenResponse(
        o.attestationToken!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest = 0;
api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest
    buildGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest < 3) {
    o.customToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest(
    api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest < 3) {
    unittest.expect(
      o.customToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest = 0;
api.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest
    buildGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest < 3) {
    o.debugToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest(
    api.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest < 3) {
    unittest.expect(
      o.debugToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest = 0;
api.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest
    buildGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest <
      3) {
    o.deviceToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest(
    api.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest <
      3) {
    unittest.expect(
      o.deviceToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest =
    0;
api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest
    buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest() {
  final o =
      api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest <
      3) {
    o.recaptchaEnterpriseToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest(
    api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest <
      3) {
    unittest.expect(
      o.recaptchaEnterpriseToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest =
    0;
api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest
    buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest <
      3) {
    o.recaptchaToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest(
    api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest <
      3) {
    unittest.expect(
      o.recaptchaToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest = 0;
api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest
    buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest();
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest <
      3) {
    o.recaptchaV3Token = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest(
    api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest <
      3) {
    unittest.expect(
      o.recaptchaV3Token!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest =
    0;
api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest
    buildGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest <
      3) {
    o.safetyNetToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest(
    api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest <
      3) {
    unittest.expect(
      o.safetyNetToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest =
    0;
api.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
    buildGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest() {
  final o = api.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest();
  buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest <
      3) {}
  buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest(
    api.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest <
      3) {}
  buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse =
    0;
api.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse
    buildGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse() {
  final o =
      api.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse();
  buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse <
      3) {
    o.challenge = 'foo';
    o.ttl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse(
    api.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse <
      3) {
    unittest.expect(
      o.challenge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaDebugToken> buildUnnamed8() => [
      buildGoogleFirebaseAppcheckV1betaDebugToken(),
      buildGoogleFirebaseAppcheckV1betaDebugToken(),
    ];

void checkUnnamed8(core.List<api.GoogleFirebaseAppcheckV1betaDebugToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaDebugToken(o[0]);
  checkGoogleFirebaseAppcheckV1betaDebugToken(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse = 0;
api.GoogleFirebaseAppcheckV1betaListDebugTokensResponse
    buildGoogleFirebaseAppcheckV1betaListDebugTokensResponse() {
  final o = api.GoogleFirebaseAppcheckV1betaListDebugTokensResponse();
  buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse < 3) {
    o.debugTokens = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaListDebugTokensResponse(
    api.GoogleFirebaseAppcheckV1betaListDebugTokensResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse < 3) {
    checkUnnamed8(o.debugTokens!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaService> buildUnnamed9() => [
      buildGoogleFirebaseAppcheckV1betaService(),
      buildGoogleFirebaseAppcheckV1betaService(),
    ];

void checkUnnamed9(core.List<api.GoogleFirebaseAppcheckV1betaService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaService(o[0]);
  checkGoogleFirebaseAppcheckV1betaService(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse = 0;
api.GoogleFirebaseAppcheckV1betaListServicesResponse
    buildGoogleFirebaseAppcheckV1betaListServicesResponse() {
  final o = api.GoogleFirebaseAppcheckV1betaListServicesResponse();
  buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed9();
  }
  buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaListServicesResponse(
    api.GoogleFirebaseAppcheckV1betaListServicesResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.services!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaPublicJwk = 0;
api.GoogleFirebaseAppcheckV1betaPublicJwk
    buildGoogleFirebaseAppcheckV1betaPublicJwk() {
  final o = api.GoogleFirebaseAppcheckV1betaPublicJwk();
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwk++;
  if (buildCounterGoogleFirebaseAppcheckV1betaPublicJwk < 3) {
    o.alg = 'foo';
    o.e = 'foo';
    o.kid = 'foo';
    o.kty = 'foo';
    o.n = 'foo';
    o.use = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwk--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaPublicJwk(
    api.GoogleFirebaseAppcheckV1betaPublicJwk o) {
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwk++;
  if (buildCounterGoogleFirebaseAppcheckV1betaPublicJwk < 3) {
    unittest.expect(
      o.alg!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.e!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kty!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.n!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.use!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwk--;
}

core.List<api.GoogleFirebaseAppcheckV1betaPublicJwk> buildUnnamed10() => [
      buildGoogleFirebaseAppcheckV1betaPublicJwk(),
      buildGoogleFirebaseAppcheckV1betaPublicJwk(),
    ];

void checkUnnamed10(core.List<api.GoogleFirebaseAppcheckV1betaPublicJwk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaPublicJwk(o[0]);
  checkGoogleFirebaseAppcheckV1betaPublicJwk(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet = 0;
api.GoogleFirebaseAppcheckV1betaPublicJwkSet
    buildGoogleFirebaseAppcheckV1betaPublicJwkSet() {
  final o = api.GoogleFirebaseAppcheckV1betaPublicJwkSet();
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet++;
  if (buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet < 3) {
    o.keys = buildUnnamed10();
  }
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaPublicJwkSet(
    api.GoogleFirebaseAppcheckV1betaPublicJwkSet o) {
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet++;
  if (buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet < 3) {
    checkUnnamed10(o.keys!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig = 0;
api.GoogleFirebaseAppcheckV1betaRecaptchaConfig
    buildGoogleFirebaseAppcheckV1betaRecaptchaConfig() {
  final o = api.GoogleFirebaseAppcheckV1betaRecaptchaConfig();
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig < 3) {
    o.name = 'foo';
    o.siteSecret = 'foo';
    o.siteSecretSet = true;
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(
    api.GoogleFirebaseAppcheckV1betaRecaptchaConfig o) {
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(o.siteSecretSet!, unittest.isTrue);
    unittest.expect(
      o.tokenTtl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig = 0;
api.GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig
    buildGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig() {
  final o = api.GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig();
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig < 3) {
    o.name = 'foo';
    o.siteKey = 'foo';
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig(
    api.GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig o) {
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenTtl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaRecaptchaV3Config = 0;
api.GoogleFirebaseAppcheckV1betaRecaptchaV3Config
    buildGoogleFirebaseAppcheckV1betaRecaptchaV3Config() {
  final o = api.GoogleFirebaseAppcheckV1betaRecaptchaV3Config();
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaV3Config++;
  if (buildCounterGoogleFirebaseAppcheckV1betaRecaptchaV3Config < 3) {
    o.name = 'foo';
    o.siteSecret = 'foo';
    o.siteSecretSet = true;
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaV3Config--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaRecaptchaV3Config(
    api.GoogleFirebaseAppcheckV1betaRecaptchaV3Config o) {
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaV3Config++;
  if (buildCounterGoogleFirebaseAppcheckV1betaRecaptchaV3Config < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(o.siteSecretSet!, unittest.isTrue);
    unittest.expect(
      o.tokenTtl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaV3Config--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaSafetyNetConfig = 0;
api.GoogleFirebaseAppcheckV1betaSafetyNetConfig
    buildGoogleFirebaseAppcheckV1betaSafetyNetConfig() {
  final o = api.GoogleFirebaseAppcheckV1betaSafetyNetConfig();
  buildCounterGoogleFirebaseAppcheckV1betaSafetyNetConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaSafetyNetConfig < 3) {
    o.name = 'foo';
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaSafetyNetConfig--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaSafetyNetConfig(
    api.GoogleFirebaseAppcheckV1betaSafetyNetConfig o) {
  buildCounterGoogleFirebaseAppcheckV1betaSafetyNetConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaSafetyNetConfig < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenTtl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaSafetyNetConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaService = 0;
api.GoogleFirebaseAppcheckV1betaService
    buildGoogleFirebaseAppcheckV1betaService() {
  final o = api.GoogleFirebaseAppcheckV1betaService();
  buildCounterGoogleFirebaseAppcheckV1betaService++;
  if (buildCounterGoogleFirebaseAppcheckV1betaService < 3) {
    o.enforcementMode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaService--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaService(
    api.GoogleFirebaseAppcheckV1betaService o) {
  buildCounterGoogleFirebaseAppcheckV1betaService++;
  if (buildCounterGoogleFirebaseAppcheckV1betaService < 3) {
    unittest.expect(
      o.enforcementMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaService--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaUpdateServiceRequest = 0;
api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest
    buildGoogleFirebaseAppcheckV1betaUpdateServiceRequest() {
  final o = api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest();
  buildCounterGoogleFirebaseAppcheckV1betaUpdateServiceRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaUpdateServiceRequest < 3) {
    o.service = buildGoogleFirebaseAppcheckV1betaService();
    o.updateMask = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaUpdateServiceRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaUpdateServiceRequest(
    api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaUpdateServiceRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaUpdateServiceRequest < 3) {
    checkGoogleFirebaseAppcheckV1betaService(o.service!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaUpdateServiceRequest--;
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

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaAppAttestConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaAppAttestConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaAppAttestConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaAppAttestConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaAppCheckToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaAppCheckToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaAppCheckToken(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaAttestationTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaAttestationTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaAttestationTokenResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaDebugToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaDebugToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaDebugToken(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaDeviceCheckConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaListDebugTokensResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaListDebugTokensResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaListDebugTokensResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaListDebugTokensResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaListServicesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaListServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaPublicJwk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaPublicJwk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaPublicJwk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaPublicJwk(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaPublicJwkSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaPublicJwkSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaPublicJwkSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaPublicJwkSet(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaRecaptchaConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaRecaptchaConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaRecaptchaV3Config',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaRecaptchaV3Config();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaRecaptchaV3Config.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaRecaptchaV3Config(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaSafetyNetConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaSafetyNetConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaSafetyNetConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaSafetyNetConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaService(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaUpdateServiceRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1betaUpdateServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaUpdateServiceRequest(od);
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

  unittest.group('resource-JwksResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).jwks;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaPublicJwkSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaPublicJwkSet(
          response as api.GoogleFirebaseAppcheckV1betaPublicJwkSet);
    });
  });

  unittest.group('resource-ProjectsAppsResource', () {
    unittest.test('method--exchangeAppAttestAssertion', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaAppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeAppAttestAssertion(
          arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAppCheckToken(
          response as api.GoogleFirebaseAppcheckV1betaAppCheckToken);
    });

    unittest.test('method--exchangeAppAttestAttestation', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest(
            obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeAppAttestAttestation(
          arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse(
          response as api
              .GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse);
    });

    unittest.test('method--exchangeCustomToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaAppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeCustomToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAppCheckToken(
          response as api.GoogleFirebaseAppcheckV1betaAppCheckToken);
    });

    unittest.test('method--exchangeDebugToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaAppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeDebugToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAppCheckToken(
          response as api.GoogleFirebaseAppcheckV1betaAppCheckToken);
    });

    unittest.test('method--exchangeDeviceCheckToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaAppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeDeviceCheckToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAppCheckToken(
          response as api.GoogleFirebaseAppcheckV1betaAppCheckToken);
    });

    unittest.test('method--exchangeRecaptchaEnterpriseToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest(
            obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaAppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeRecaptchaEnterpriseToken(
          arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAppCheckToken(
          response as api.GoogleFirebaseAppcheckV1betaAppCheckToken);
    });

    unittest.test('method--exchangeRecaptchaToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaAppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeRecaptchaToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAppCheckToken(
          response as api.GoogleFirebaseAppcheckV1betaAppCheckToken);
    });

    unittest.test('method--exchangeRecaptchaV3Token', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaAppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeRecaptchaV3Token(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAppCheckToken(
          response as api.GoogleFirebaseAppcheckV1betaAppCheckToken);
    });

    unittest.test('method--exchangeSafetyNetToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaAppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeSafetyNetToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAppCheckToken(
          response as api.GoogleFirebaseAppcheckV1betaAppCheckToken);
    });

    unittest.test('method--generateAppAttestChallenge', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateAppAttestChallenge(
          arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse(
          response as api
              .GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse);
    });
  });

  unittest.group('resource-ProjectsAppsAppAttestConfigResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.appAttestConfig;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed11();
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse(response
          as api.GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.appAttestConfig;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaAppAttestConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAppAttestConfig(
          response as api.GoogleFirebaseAppcheckV1betaAppAttestConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.appAttestConfig;
      final arg_request = buildGoogleFirebaseAppcheckV1betaAppAttestConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1betaAppAttestConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaAppAttestConfig(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1betaAppAttestConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAppAttestConfig(
          response as api.GoogleFirebaseAppcheckV1betaAppAttestConfig);
    });
  });

  unittest.group('resource-ProjectsAppsDebugTokensResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
      final arg_request = buildGoogleFirebaseAppcheckV1betaDebugToken();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaDebugToken(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            convert.json.encode(buildGoogleFirebaseAppcheckV1betaDebugToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaDebugToken(
          response as api.GoogleFirebaseAppcheckV1betaDebugToken);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            convert.json.encode(buildGoogleFirebaseAppcheckV1betaDebugToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaDebugToken(
          response as api.GoogleFirebaseAppcheckV1betaDebugToken);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaListDebugTokensResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaListDebugTokensResponse(
          response as api.GoogleFirebaseAppcheckV1betaListDebugTokensResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
      final arg_request = buildGoogleFirebaseAppcheckV1betaDebugToken();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaDebugToken(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1betaDebugToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaDebugToken(
          response as api.GoogleFirebaseAppcheckV1betaDebugToken);
    });
  });

  unittest.group('resource-ProjectsAppsDeviceCheckConfigResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.deviceCheckConfig;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed12();
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse(
          response as api
              .GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.deviceCheckConfig;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(
          response as api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.deviceCheckConfig;
      final arg_request = buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(
          response as api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig);
    });
  });

  unittest.group('resource-ProjectsAppsRecaptchaConfigResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.recaptchaConfig;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed13();
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse(response
          as api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.recaptchaConfig;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaRecaptchaConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(
          response as api.GoogleFirebaseAppcheckV1betaRecaptchaConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.recaptchaConfig;
      final arg_request = buildGoogleFirebaseAppcheckV1betaRecaptchaConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1betaRecaptchaConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(
          response as api.GoogleFirebaseAppcheckV1betaRecaptchaConfig);
    });
  });

  unittest.group('resource-ProjectsAppsRecaptchaEnterpriseConfigResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseappcheckApi(mock).projects.apps.recaptchaEnterpriseConfig;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed14();
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse(
          response as api
              .GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseappcheckApi(mock).projects.apps.recaptchaEnterpriseConfig;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig(response
          as api.GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseappcheckApi(mock).projects.apps.recaptchaEnterpriseConfig;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig(response
          as api.GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig);
    });
  });

  unittest.group('resource-ProjectsAppsRecaptchaV3ConfigResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.recaptchaV3Config;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed15();
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse(
          response as api
              .GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.recaptchaV3Config;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaRecaptchaV3Config());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaRecaptchaV3Config(
          response as api.GoogleFirebaseAppcheckV1betaRecaptchaV3Config);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.recaptchaV3Config;
      final arg_request = buildGoogleFirebaseAppcheckV1betaRecaptchaV3Config();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1betaRecaptchaV3Config.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaRecaptchaV3Config(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1betaRecaptchaV3Config());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaRecaptchaV3Config(
          response as api.GoogleFirebaseAppcheckV1betaRecaptchaV3Config);
    });
  });

  unittest.group('resource-ProjectsAppsSafetyNetConfigResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.safetyNetConfig;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed16();
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse(response
          as api.GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.safetyNetConfig;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaSafetyNetConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaSafetyNetConfig(
          response as api.GoogleFirebaseAppcheckV1betaSafetyNetConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.safetyNetConfig;
      final arg_request = buildGoogleFirebaseAppcheckV1betaSafetyNetConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1betaSafetyNetConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaSafetyNetConfig(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1betaSafetyNetConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaSafetyNetConfig(
          response as api.GoogleFirebaseAppcheckV1betaSafetyNetConfig);
    });
  });

  unittest.group('resource-ProjectsServicesResource', () {
    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.services;
      final arg_request =
          buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse(response
          as api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.services;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            convert.json.encode(buildGoogleFirebaseAppcheckV1betaService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaService(
          response as api.GoogleFirebaseAppcheckV1betaService);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.services;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaListServicesResponse(
          response as api.GoogleFirebaseAppcheckV1betaListServicesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.services;
      final arg_request = buildGoogleFirebaseAppcheckV1betaService();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1betaService.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaService(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1betaService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaService(
          response as api.GoogleFirebaseAppcheckV1betaService);
    });
  });
}
