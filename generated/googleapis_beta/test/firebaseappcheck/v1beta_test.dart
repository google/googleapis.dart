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

import 'package:googleapis_beta/firebaseappcheck/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleFirebaseAppcheckV1betaAttestationTokenResponse = 0;
api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse
    buildGoogleFirebaseAppcheckV1betaAttestationTokenResponse() {
  var o = api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse();
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

core.List<api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig>
    buildUnnamed8701() {
  var o = <api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig>[];
  o.add(buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig());
  o.add(buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig());
  return o;
}

void checkUnnamed8701(
    core.List<api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(
      o[0] as api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig);
  checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(
      o[1] as api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse
    buildGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse() {
  var o = api.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse <
      3) {
    o.configs = buildUnnamed8701();
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse(
    api.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse <
      3) {
    checkUnnamed8701(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaRecaptchaConfig> buildUnnamed8702() {
  var o = <api.GoogleFirebaseAppcheckV1betaRecaptchaConfig>[];
  o.add(buildGoogleFirebaseAppcheckV1betaRecaptchaConfig());
  o.add(buildGoogleFirebaseAppcheckV1betaRecaptchaConfig());
  return o;
}

void checkUnnamed8702(
    core.List<api.GoogleFirebaseAppcheckV1betaRecaptchaConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(
      o[0] as api.GoogleFirebaseAppcheckV1betaRecaptchaConfig);
  checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(
      o[1] as api.GoogleFirebaseAppcheckV1betaRecaptchaConfig);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse
    buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse() {
  var o = api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse <
      3) {
    o.configs = buildUnnamed8702();
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse(
    api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse <
      3) {
    checkUnnamed8702(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest>
    buildUnnamed8703() {
  var o = <api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest>[];
  o.add(buildGoogleFirebaseAppcheckV1betaUpdateServiceRequest());
  o.add(buildGoogleFirebaseAppcheckV1betaUpdateServiceRequest());
  return o;
}

void checkUnnamed8703(
    core.List<api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaUpdateServiceRequest(
      o[0] as api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest);
  checkGoogleFirebaseAppcheckV1betaUpdateServiceRequest(
      o[1] as api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest);
}

core.int buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest = 0;
api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest
    buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest() {
  var o = api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest();
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest < 3) {
    o.requests = buildUnnamed8703();
    o.updateMask = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest(
    api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest < 3) {
    checkUnnamed8703(o.requests!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest--;
}

core.List<api.GoogleFirebaseAppcheckV1betaService> buildUnnamed8704() {
  var o = <api.GoogleFirebaseAppcheckV1betaService>[];
  o.add(buildGoogleFirebaseAppcheckV1betaService());
  o.add(buildGoogleFirebaseAppcheckV1betaService());
  return o;
}

void checkUnnamed8704(core.List<api.GoogleFirebaseAppcheckV1betaService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaService(
      o[0] as api.GoogleFirebaseAppcheckV1betaService);
  checkGoogleFirebaseAppcheckV1betaService(
      o[1] as api.GoogleFirebaseAppcheckV1betaService);
}

core.int buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse =
    0;
api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse
    buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse() {
  var o = api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse();
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse < 3) {
    o.services = buildUnnamed8704();
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse(
    api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse < 3) {
    checkUnnamed8704(o.services!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaDebugToken = 0;
api.GoogleFirebaseAppcheckV1betaDebugToken
    buildGoogleFirebaseAppcheckV1betaDebugToken() {
  var o = api.GoogleFirebaseAppcheckV1betaDebugToken();
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
  var o = api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig();
  buildCounterGoogleFirebaseAppcheckV1betaDeviceCheckConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaDeviceCheckConfig < 3) {
    o.keyId = 'foo';
    o.name = 'foo';
    o.privateKey = 'foo';
    o.privateKeySet = true;
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
  }
  buildCounterGoogleFirebaseAppcheckV1betaDeviceCheckConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest = 0;
api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest
    buildGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest() {
  var o = api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest();
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
  var o = api.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest();
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
  var o = api.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest();
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

core.int buildCounterGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest =
    0;
api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest
    buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest() {
  var o = api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest();
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

core.int buildCounterGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest =
    0;
api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest
    buildGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest() {
  var o = api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest();
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

core.List<api.GoogleFirebaseAppcheckV1betaDebugToken> buildUnnamed8705() {
  var o = <api.GoogleFirebaseAppcheckV1betaDebugToken>[];
  o.add(buildGoogleFirebaseAppcheckV1betaDebugToken());
  o.add(buildGoogleFirebaseAppcheckV1betaDebugToken());
  return o;
}

void checkUnnamed8705(core.List<api.GoogleFirebaseAppcheckV1betaDebugToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaDebugToken(
      o[0] as api.GoogleFirebaseAppcheckV1betaDebugToken);
  checkGoogleFirebaseAppcheckV1betaDebugToken(
      o[1] as api.GoogleFirebaseAppcheckV1betaDebugToken);
}

core.int buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse = 0;
api.GoogleFirebaseAppcheckV1betaListDebugTokensResponse
    buildGoogleFirebaseAppcheckV1betaListDebugTokensResponse() {
  var o = api.GoogleFirebaseAppcheckV1betaListDebugTokensResponse();
  buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse < 3) {
    o.debugTokens = buildUnnamed8705();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaListDebugTokensResponse(
    api.GoogleFirebaseAppcheckV1betaListDebugTokensResponse o) {
  buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse < 3) {
    checkUnnamed8705(o.debugTokens!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaListDebugTokensResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1betaService> buildUnnamed8706() {
  var o = <api.GoogleFirebaseAppcheckV1betaService>[];
  o.add(buildGoogleFirebaseAppcheckV1betaService());
  o.add(buildGoogleFirebaseAppcheckV1betaService());
  return o;
}

void checkUnnamed8706(core.List<api.GoogleFirebaseAppcheckV1betaService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaService(
      o[0] as api.GoogleFirebaseAppcheckV1betaService);
  checkGoogleFirebaseAppcheckV1betaService(
      o[1] as api.GoogleFirebaseAppcheckV1betaService);
}

core.int buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse = 0;
api.GoogleFirebaseAppcheckV1betaListServicesResponse
    buildGoogleFirebaseAppcheckV1betaListServicesResponse() {
  var o = api.GoogleFirebaseAppcheckV1betaListServicesResponse();
  buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed8706();
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
    checkUnnamed8706(o.services!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaListServicesResponse--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaPublicJwk = 0;
api.GoogleFirebaseAppcheckV1betaPublicJwk
    buildGoogleFirebaseAppcheckV1betaPublicJwk() {
  var o = api.GoogleFirebaseAppcheckV1betaPublicJwk();
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

core.List<api.GoogleFirebaseAppcheckV1betaPublicJwk> buildUnnamed8707() {
  var o = <api.GoogleFirebaseAppcheckV1betaPublicJwk>[];
  o.add(buildGoogleFirebaseAppcheckV1betaPublicJwk());
  o.add(buildGoogleFirebaseAppcheckV1betaPublicJwk());
  return o;
}

void checkUnnamed8707(core.List<api.GoogleFirebaseAppcheckV1betaPublicJwk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1betaPublicJwk(
      o[0] as api.GoogleFirebaseAppcheckV1betaPublicJwk);
  checkGoogleFirebaseAppcheckV1betaPublicJwk(
      o[1] as api.GoogleFirebaseAppcheckV1betaPublicJwk);
}

core.int buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet = 0;
api.GoogleFirebaseAppcheckV1betaPublicJwkSet
    buildGoogleFirebaseAppcheckV1betaPublicJwkSet() {
  var o = api.GoogleFirebaseAppcheckV1betaPublicJwkSet();
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet++;
  if (buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet < 3) {
    o.keys = buildUnnamed8707();
  }
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet--;
  return o;
}

void checkGoogleFirebaseAppcheckV1betaPublicJwkSet(
    api.GoogleFirebaseAppcheckV1betaPublicJwkSet o) {
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet++;
  if (buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet < 3) {
    checkUnnamed8707(o.keys!);
  }
  buildCounterGoogleFirebaseAppcheckV1betaPublicJwkSet--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig = 0;
api.GoogleFirebaseAppcheckV1betaRecaptchaConfig
    buildGoogleFirebaseAppcheckV1betaRecaptchaConfig() {
  var o = api.GoogleFirebaseAppcheckV1betaRecaptchaConfig();
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig < 3) {
    o.name = 'foo';
    o.siteSecret = 'foo';
    o.siteSecretSet = true;
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
  }
  buildCounterGoogleFirebaseAppcheckV1betaRecaptchaConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1betaService = 0;
api.GoogleFirebaseAppcheckV1betaService
    buildGoogleFirebaseAppcheckV1betaService() {
  var o = api.GoogleFirebaseAppcheckV1betaService();
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
  var o = api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest();
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
    checkGoogleFirebaseAppcheckV1betaService(
        o.service! as api.GoogleFirebaseAppcheckV1betaService);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1betaUpdateServiceRequest--;
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

core.List<core.String> buildUnnamed8708() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8708(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8709() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8709(core.List<core.String> o) {
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
  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaAttestationTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaAttestationTokenResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaAttestationTokenResponse(
          od as api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse(od
          as api
              .GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse(od
          as api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest(
          od as api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse(
          od as api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaDebugToken', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaDebugToken();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaDebugToken(
          od as api.GoogleFirebaseAppcheckV1betaDebugToken);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaDeviceCheckConfig',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(
          od as api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest(
          od as api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest(
          od as api.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest(od
          as api.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest(
          od as api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest(
          od as api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1betaListDebugTokensResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaListDebugTokensResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaListDebugTokensResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaListDebugTokensResponse(
          od as api.GoogleFirebaseAppcheckV1betaListDebugTokensResponse);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaListServicesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaListServicesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaListServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaListServicesResponse(
          od as api.GoogleFirebaseAppcheckV1betaListServicesResponse);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaPublicJwk', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaPublicJwk();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaPublicJwk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaPublicJwk(
          od as api.GoogleFirebaseAppcheckV1betaPublicJwk);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaPublicJwkSet', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaPublicJwkSet();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaPublicJwkSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaPublicJwkSet(
          od as api.GoogleFirebaseAppcheckV1betaPublicJwkSet);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaRecaptchaConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaRecaptchaConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(
          od as api.GoogleFirebaseAppcheckV1betaRecaptchaConfig);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaService', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaService();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaService(
          od as api.GoogleFirebaseAppcheckV1betaService);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1betaUpdateServiceRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleFirebaseAppcheckV1betaUpdateServiceRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1betaUpdateServiceRequest(
          od as api.GoogleFirebaseAppcheckV1betaUpdateServiceRequest);
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

  unittest.group('resource-JwksResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).jwks;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaPublicJwkSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaPublicJwkSet(
          response as api.GoogleFirebaseAppcheckV1betaPublicJwkSet);
    });
  });

  unittest.group('resource-ProjectsAppsResource', () {
    unittest.test('method--exchangeCustomToken', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps;
      var arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest();
      var arg_app = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest(
            obj as api.GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
        var resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaAttestationTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeCustomToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAttestationTokenResponse(
          response as api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse);
    });

    unittest.test('method--exchangeDebugToken', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps;
      var arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest();
      var arg_app = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest(
            obj as api.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
        var resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaAttestationTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeDebugToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAttestationTokenResponse(
          response as api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse);
    });

    unittest.test('method--exchangeDeviceCheckToken', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps;
      var arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest();
      var arg_app = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest(obj
            as api.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
        var resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaAttestationTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeDeviceCheckToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAttestationTokenResponse(
          response as api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse);
    });

    unittest.test('method--exchangeRecaptchaToken', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps;
      var arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest();
      var arg_app = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest(obj
            as api.GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
        var resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaAttestationTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeRecaptchaToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAttestationTokenResponse(
          response as api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse);
    });

    unittest.test('method--exchangeSafetyNetToken', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps;
      var arg_request =
          buildGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest();
      var arg_app = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest(obj
            as api.GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
        var resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaAttestationTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeSafetyNetToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaAttestationTokenResponse(
          response as api.GoogleFirebaseAppcheckV1betaAttestationTokenResponse);
    });
  });

  unittest.group('resource-ProjectsAppsDebugTokensResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
      var arg_request = buildGoogleFirebaseAppcheckV1betaDebugToken();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaDebugToken(
            obj as api.GoogleFirebaseAppcheckV1betaDebugToken);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
            convert.json.encode(buildGoogleFirebaseAppcheckV1betaDebugToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaDebugToken(
          response as api.GoogleFirebaseAppcheckV1betaDebugToken);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
            convert.json.encode(buildGoogleFirebaseAppcheckV1betaDebugToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaDebugToken(
          response as api.GoogleFirebaseAppcheckV1betaDebugToken);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
      var arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
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
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
      var arg_request = buildGoogleFirebaseAppcheckV1betaDebugToken();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaDebugToken(
            obj as api.GoogleFirebaseAppcheckV1betaDebugToken);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
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
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.deviceCheckConfig;
      var arg_parent = 'foo';
      var arg_names = buildUnnamed8708();
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
          queryMap["names"]!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
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
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.deviceCheckConfig;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(
          response as api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.deviceCheckConfig;
      var arg_request = buildGoogleFirebaseAppcheckV1betaDeviceCheckConfig();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaDeviceCheckConfig(
            obj as api.GoogleFirebaseAppcheckV1betaDeviceCheckConfig);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
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
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.recaptchaConfig;
      var arg_parent = 'foo';
      var arg_names = buildUnnamed8709();
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
          queryMap["names"]!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse(response
          as api.GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.recaptchaConfig;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseAppcheckV1betaRecaptchaConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(
          response as api.GoogleFirebaseAppcheckV1betaRecaptchaConfig);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.apps.recaptchaConfig;
      var arg_request = buildGoogleFirebaseAppcheckV1betaRecaptchaConfig();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(
            obj as api.GoogleFirebaseAppcheckV1betaRecaptchaConfig);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1betaRecaptchaConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaRecaptchaConfig(
          response as api.GoogleFirebaseAppcheckV1betaRecaptchaConfig);
    });
  });

  unittest.group('resource-ProjectsServicesResource', () {
    unittest.test('method--batchUpdate', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.services;
      var arg_request =
          buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest(
            obj as api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
        var resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse(response
          as api.GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.services;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
            convert.json.encode(buildGoogleFirebaseAppcheckV1betaService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1betaService(
          response as api.GoogleFirebaseAppcheckV1betaService);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.services;
      var arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
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
      var mock = HttpServerMock();
      var res = api.FirebaseappcheckApi(mock).projects.services;
      var arg_request = buildGoogleFirebaseAppcheckV1betaService();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleFirebaseAppcheckV1betaService.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1betaService(
            obj as api.GoogleFirebaseAppcheckV1betaService);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
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
