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

import 'package:googleapis/firebaseappcheck/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleFirebaseAppcheckV1AppAttestConfig = 0;
api.GoogleFirebaseAppcheckV1AppAttestConfig
    buildGoogleFirebaseAppcheckV1AppAttestConfig() {
  final o = api.GoogleFirebaseAppcheckV1AppAttestConfig();
  buildCounterGoogleFirebaseAppcheckV1AppAttestConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1AppAttestConfig < 3) {
    o.name = 'foo';
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1AppAttestConfig--;
  return o;
}

void checkGoogleFirebaseAppcheckV1AppAttestConfig(
    api.GoogleFirebaseAppcheckV1AppAttestConfig o) {
  buildCounterGoogleFirebaseAppcheckV1AppAttestConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1AppAttestConfig < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenTtl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1AppAttestConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1AppCheckToken = 0;
api.GoogleFirebaseAppcheckV1AppCheckToken
    buildGoogleFirebaseAppcheckV1AppCheckToken() {
  final o = api.GoogleFirebaseAppcheckV1AppCheckToken();
  buildCounterGoogleFirebaseAppcheckV1AppCheckToken++;
  if (buildCounterGoogleFirebaseAppcheckV1AppCheckToken < 3) {
    o.token = 'foo';
    o.ttl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1AppCheckToken--;
  return o;
}

void checkGoogleFirebaseAppcheckV1AppCheckToken(
    api.GoogleFirebaseAppcheckV1AppCheckToken o) {
  buildCounterGoogleFirebaseAppcheckV1AppCheckToken++;
  if (buildCounterGoogleFirebaseAppcheckV1AppCheckToken < 3) {
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1AppCheckToken--;
}

core.List<api.GoogleFirebaseAppcheckV1AppAttestConfig> buildUnnamed0() => [
      buildGoogleFirebaseAppcheckV1AppAttestConfig(),
      buildGoogleFirebaseAppcheckV1AppAttestConfig(),
    ];

void checkUnnamed0(core.List<api.GoogleFirebaseAppcheckV1AppAttestConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1AppAttestConfig(o[0]);
  checkGoogleFirebaseAppcheckV1AppAttestConfig(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse
    buildGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse() {
  final o = api.GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse <
      3) {
    o.configs = buildUnnamed0();
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse(
    api.GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse <
      3) {
    checkUnnamed0(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1DeviceCheckConfig> buildUnnamed1() => [
      buildGoogleFirebaseAppcheckV1DeviceCheckConfig(),
      buildGoogleFirebaseAppcheckV1DeviceCheckConfig(),
    ];

void checkUnnamed1(core.List<api.GoogleFirebaseAppcheckV1DeviceCheckConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1DeviceCheckConfig(o[0]);
  checkGoogleFirebaseAppcheckV1DeviceCheckConfig(o[1]);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse = 0;
api.GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse
    buildGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse() {
  final o = api.GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse <
      3) {
    o.configs = buildUnnamed1();
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse(
    api.GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse <
      3) {
    checkUnnamed1(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1PlayIntegrityConfig> buildUnnamed2() => [
      buildGoogleFirebaseAppcheckV1PlayIntegrityConfig(),
      buildGoogleFirebaseAppcheckV1PlayIntegrityConfig(),
    ];

void checkUnnamed2(
    core.List<api.GoogleFirebaseAppcheckV1PlayIntegrityConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1PlayIntegrityConfig(o[0]);
  checkGoogleFirebaseAppcheckV1PlayIntegrityConfig(o[1]);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse
    buildGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse() {
  final o = api.GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse <
      3) {
    o.configs = buildUnnamed2();
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse(
    api.GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse <
      3) {
    checkUnnamed2(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig>
    buildUnnamed3() => [
          buildGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig(),
          buildGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig(),
        ];

void checkUnnamed3(
    core.List<api.GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig(o[0]);
  checkGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig(o[1]);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse
    buildGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse() {
  final o =
      api.GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse <
      3) {
    o.configs = buildUnnamed3();
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse(
    api.GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse <
      3) {
    checkUnnamed3(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1RecaptchaV3Config> buildUnnamed4() => [
      buildGoogleFirebaseAppcheckV1RecaptchaV3Config(),
      buildGoogleFirebaseAppcheckV1RecaptchaV3Config(),
    ];

void checkUnnamed4(core.List<api.GoogleFirebaseAppcheckV1RecaptchaV3Config> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1RecaptchaV3Config(o[0]);
  checkGoogleFirebaseAppcheckV1RecaptchaV3Config(o[1]);
}

core.int
    buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse = 0;
api.GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse
    buildGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse() {
  final o = api.GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse <
      3) {
    o.configs = buildUnnamed4();
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse(
    api.GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse <
      3) {
    checkUnnamed4(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1SafetyNetConfig> buildUnnamed5() => [
      buildGoogleFirebaseAppcheckV1SafetyNetConfig(),
      buildGoogleFirebaseAppcheckV1SafetyNetConfig(),
    ];

void checkUnnamed5(core.List<api.GoogleFirebaseAppcheckV1SafetyNetConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1SafetyNetConfig(o[0]);
  checkGoogleFirebaseAppcheckV1SafetyNetConfig(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse =
    0;
api.GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse
    buildGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse() {
  final o = api.GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse();
  buildCounterGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse <
      3) {
    o.configs = buildUnnamed5();
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse(
    api.GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse o) {
  buildCounterGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse <
      3) {
    checkUnnamed5(o.configs!);
  }
  buildCounterGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1UpdateServiceRequest> buildUnnamed6() => [
      buildGoogleFirebaseAppcheckV1UpdateServiceRequest(),
      buildGoogleFirebaseAppcheckV1UpdateServiceRequest(),
    ];

void checkUnnamed6(
    core.List<api.GoogleFirebaseAppcheckV1UpdateServiceRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1UpdateServiceRequest(o[0]);
  checkGoogleFirebaseAppcheckV1UpdateServiceRequest(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesRequest = 0;
api.GoogleFirebaseAppcheckV1BatchUpdateServicesRequest
    buildGoogleFirebaseAppcheckV1BatchUpdateServicesRequest() {
  final o = api.GoogleFirebaseAppcheckV1BatchUpdateServicesRequest();
  buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesRequest < 3) {
    o.requests = buildUnnamed6();
    o.updateMask = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1BatchUpdateServicesRequest(
    api.GoogleFirebaseAppcheckV1BatchUpdateServicesRequest o) {
  buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesRequest < 3) {
    checkUnnamed6(o.requests!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesRequest--;
}

core.List<api.GoogleFirebaseAppcheckV1Service> buildUnnamed7() => [
      buildGoogleFirebaseAppcheckV1Service(),
      buildGoogleFirebaseAppcheckV1Service(),
    ];

void checkUnnamed7(core.List<api.GoogleFirebaseAppcheckV1Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1Service(o[0]);
  checkGoogleFirebaseAppcheckV1Service(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesResponse = 0;
api.GoogleFirebaseAppcheckV1BatchUpdateServicesResponse
    buildGoogleFirebaseAppcheckV1BatchUpdateServicesResponse() {
  final o = api.GoogleFirebaseAppcheckV1BatchUpdateServicesResponse();
  buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesResponse < 3) {
    o.services = buildUnnamed7();
  }
  buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1BatchUpdateServicesResponse(
    api.GoogleFirebaseAppcheckV1BatchUpdateServicesResponse o) {
  buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesResponse < 3) {
    checkUnnamed7(o.services!);
  }
  buildCounterGoogleFirebaseAppcheckV1BatchUpdateServicesResponse--;
}

core.int buildCounterGoogleFirebaseAppcheckV1DebugToken = 0;
api.GoogleFirebaseAppcheckV1DebugToken
    buildGoogleFirebaseAppcheckV1DebugToken() {
  final o = api.GoogleFirebaseAppcheckV1DebugToken();
  buildCounterGoogleFirebaseAppcheckV1DebugToken++;
  if (buildCounterGoogleFirebaseAppcheckV1DebugToken < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.token = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1DebugToken--;
  return o;
}

void checkGoogleFirebaseAppcheckV1DebugToken(
    api.GoogleFirebaseAppcheckV1DebugToken o) {
  buildCounterGoogleFirebaseAppcheckV1DebugToken++;
  if (buildCounterGoogleFirebaseAppcheckV1DebugToken < 3) {
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
  buildCounterGoogleFirebaseAppcheckV1DebugToken--;
}

core.int buildCounterGoogleFirebaseAppcheckV1DeviceCheckConfig = 0;
api.GoogleFirebaseAppcheckV1DeviceCheckConfig
    buildGoogleFirebaseAppcheckV1DeviceCheckConfig() {
  final o = api.GoogleFirebaseAppcheckV1DeviceCheckConfig();
  buildCounterGoogleFirebaseAppcheckV1DeviceCheckConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1DeviceCheckConfig < 3) {
    o.keyId = 'foo';
    o.name = 'foo';
    o.privateKey = 'foo';
    o.privateKeySet = true;
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1DeviceCheckConfig--;
  return o;
}

void checkGoogleFirebaseAppcheckV1DeviceCheckConfig(
    api.GoogleFirebaseAppcheckV1DeviceCheckConfig o) {
  buildCounterGoogleFirebaseAppcheckV1DeviceCheckConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1DeviceCheckConfig < 3) {
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
  buildCounterGoogleFirebaseAppcheckV1DeviceCheckConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest =
    0;
api.GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest
    buildGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest() {
  final o = api.GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest();
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest <
      3) {
    o.artifact = 'foo';
    o.assertion = 'foo';
    o.challenge = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest(
    api.GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest o) {
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest <
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
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest = 0;
api.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest
    buildGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest() {
  final o = api.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest();
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest <
      3) {
    o.attestationStatement = 'foo';
    o.challenge = 'foo';
    o.keyId = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest(
    api.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest o) {
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest <
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
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse =
    0;
api.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse
    buildGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse() {
  final o = api.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse();
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse <
      3) {
    o.appCheckToken = buildGoogleFirebaseAppcheckV1AppCheckToken();
    o.artifact = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse(
    api.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse o) {
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse <
      3) {
    checkGoogleFirebaseAppcheckV1AppCheckToken(o.appCheckToken!);
    unittest.expect(
      o.artifact!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse--;
}

core.int buildCounterGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest = 0;
api.GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest
    buildGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest < 3) {
    o.customToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest(
    api.GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest < 3) {
    unittest.expect(
      o.customToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest--;
}

core.int buildCounterGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest = 0;
api.GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest
    buildGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest < 3) {
    o.debugToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest(
    api.GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest < 3) {
    unittest.expect(
      o.debugToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest--;
}

core.int buildCounterGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest =
    0;
api.GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest
    buildGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest < 3) {
    o.deviceToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest(
    api.GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest < 3) {
    unittest.expect(
      o.deviceToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest--;
}

core.int buildCounterGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest =
    0;
api.GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest
    buildGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest <
      3) {
    o.playIntegrityToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest(
    api.GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest <
      3) {
    unittest.expect(
      o.playIntegrityToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest =
    0;
api.GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest
    buildGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest() {
  final o =
      api.GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest <
      3) {
    o.recaptchaEnterpriseToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest(
    api.GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest <
      3) {
    unittest.expect(
      o.recaptchaEnterpriseToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest--;
}

core.int buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest =
    0;
api.GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest
    buildGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest();
  buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest < 3) {
    o.recaptchaV3Token = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest(
    api.GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest < 3) {
    unittest.expect(
      o.recaptchaV3Token!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest--;
}

core.int buildCounterGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest = 0;
api.GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest
    buildGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest() {
  final o = api.GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest();
  buildCounterGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest < 3) {
    o.safetyNetToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest(
    api.GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest o) {
  buildCounterGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest < 3) {
    unittest.expect(
      o.safetyNetToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest--;
}

core.int buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest =
    0;
api.GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest
    buildGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest() {
  final o = api.GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest();
  buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest <
      3) {}
  buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest(
    api.GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest o) {
  buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest <
      3) {}
  buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse = 0;
api.GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse
    buildGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse() {
  final o = api.GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse();
  buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse <
      3) {
    o.challenge = 'foo';
    o.ttl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse(
    api.GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse o) {
  buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse <
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
  buildCounterGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest =
    0;
api.GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest
    buildGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest() {
  final o = api.GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest();
  buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest <
      3) {}
  buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest(
    api.GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest o) {
  buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest <
      3) {}
  buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest--;
}

core.int
    buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse =
    0;
api.GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse
    buildGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse() {
  final o =
      api.GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse();
  buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse <
      3) {
    o.challenge = 'foo';
    o.ttl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse(
    api.GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse o) {
  buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse <
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
  buildCounterGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1DebugToken> buildUnnamed8() => [
      buildGoogleFirebaseAppcheckV1DebugToken(),
      buildGoogleFirebaseAppcheckV1DebugToken(),
    ];

void checkUnnamed8(core.List<api.GoogleFirebaseAppcheckV1DebugToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1DebugToken(o[0]);
  checkGoogleFirebaseAppcheckV1DebugToken(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1ListDebugTokensResponse = 0;
api.GoogleFirebaseAppcheckV1ListDebugTokensResponse
    buildGoogleFirebaseAppcheckV1ListDebugTokensResponse() {
  final o = api.GoogleFirebaseAppcheckV1ListDebugTokensResponse();
  buildCounterGoogleFirebaseAppcheckV1ListDebugTokensResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1ListDebugTokensResponse < 3) {
    o.debugTokens = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1ListDebugTokensResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ListDebugTokensResponse(
    api.GoogleFirebaseAppcheckV1ListDebugTokensResponse o) {
  buildCounterGoogleFirebaseAppcheckV1ListDebugTokensResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1ListDebugTokensResponse < 3) {
    checkUnnamed8(o.debugTokens!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1ListDebugTokensResponse--;
}

core.List<api.GoogleFirebaseAppcheckV1Service> buildUnnamed9() => [
      buildGoogleFirebaseAppcheckV1Service(),
      buildGoogleFirebaseAppcheckV1Service(),
    ];

void checkUnnamed9(core.List<api.GoogleFirebaseAppcheckV1Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1Service(o[0]);
  checkGoogleFirebaseAppcheckV1Service(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1ListServicesResponse = 0;
api.GoogleFirebaseAppcheckV1ListServicesResponse
    buildGoogleFirebaseAppcheckV1ListServicesResponse() {
  final o = api.GoogleFirebaseAppcheckV1ListServicesResponse();
  buildCounterGoogleFirebaseAppcheckV1ListServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1ListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed9();
  }
  buildCounterGoogleFirebaseAppcheckV1ListServicesResponse--;
  return o;
}

void checkGoogleFirebaseAppcheckV1ListServicesResponse(
    api.GoogleFirebaseAppcheckV1ListServicesResponse o) {
  buildCounterGoogleFirebaseAppcheckV1ListServicesResponse++;
  if (buildCounterGoogleFirebaseAppcheckV1ListServicesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.services!);
  }
  buildCounterGoogleFirebaseAppcheckV1ListServicesResponse--;
}

core.int buildCounterGoogleFirebaseAppcheckV1PlayIntegrityConfig = 0;
api.GoogleFirebaseAppcheckV1PlayIntegrityConfig
    buildGoogleFirebaseAppcheckV1PlayIntegrityConfig() {
  final o = api.GoogleFirebaseAppcheckV1PlayIntegrityConfig();
  buildCounterGoogleFirebaseAppcheckV1PlayIntegrityConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1PlayIntegrityConfig < 3) {
    o.name = 'foo';
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1PlayIntegrityConfig--;
  return o;
}

void checkGoogleFirebaseAppcheckV1PlayIntegrityConfig(
    api.GoogleFirebaseAppcheckV1PlayIntegrityConfig o) {
  buildCounterGoogleFirebaseAppcheckV1PlayIntegrityConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1PlayIntegrityConfig < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenTtl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1PlayIntegrityConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1PublicJwk = 0;
api.GoogleFirebaseAppcheckV1PublicJwk buildGoogleFirebaseAppcheckV1PublicJwk() {
  final o = api.GoogleFirebaseAppcheckV1PublicJwk();
  buildCounterGoogleFirebaseAppcheckV1PublicJwk++;
  if (buildCounterGoogleFirebaseAppcheckV1PublicJwk < 3) {
    o.alg = 'foo';
    o.e = 'foo';
    o.kid = 'foo';
    o.kty = 'foo';
    o.n = 'foo';
    o.use = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1PublicJwk--;
  return o;
}

void checkGoogleFirebaseAppcheckV1PublicJwk(
    api.GoogleFirebaseAppcheckV1PublicJwk o) {
  buildCounterGoogleFirebaseAppcheckV1PublicJwk++;
  if (buildCounterGoogleFirebaseAppcheckV1PublicJwk < 3) {
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
  buildCounterGoogleFirebaseAppcheckV1PublicJwk--;
}

core.List<api.GoogleFirebaseAppcheckV1PublicJwk> buildUnnamed10() => [
      buildGoogleFirebaseAppcheckV1PublicJwk(),
      buildGoogleFirebaseAppcheckV1PublicJwk(),
    ];

void checkUnnamed10(core.List<api.GoogleFirebaseAppcheckV1PublicJwk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppcheckV1PublicJwk(o[0]);
  checkGoogleFirebaseAppcheckV1PublicJwk(o[1]);
}

core.int buildCounterGoogleFirebaseAppcheckV1PublicJwkSet = 0;
api.GoogleFirebaseAppcheckV1PublicJwkSet
    buildGoogleFirebaseAppcheckV1PublicJwkSet() {
  final o = api.GoogleFirebaseAppcheckV1PublicJwkSet();
  buildCounterGoogleFirebaseAppcheckV1PublicJwkSet++;
  if (buildCounterGoogleFirebaseAppcheckV1PublicJwkSet < 3) {
    o.keys = buildUnnamed10();
  }
  buildCounterGoogleFirebaseAppcheckV1PublicJwkSet--;
  return o;
}

void checkGoogleFirebaseAppcheckV1PublicJwkSet(
    api.GoogleFirebaseAppcheckV1PublicJwkSet o) {
  buildCounterGoogleFirebaseAppcheckV1PublicJwkSet++;
  if (buildCounterGoogleFirebaseAppcheckV1PublicJwkSet < 3) {
    checkUnnamed10(o.keys!);
  }
  buildCounterGoogleFirebaseAppcheckV1PublicJwkSet--;
}

core.int buildCounterGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig = 0;
api.GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig
    buildGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig() {
  final o = api.GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig();
  buildCounterGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig < 3) {
    o.name = 'foo';
    o.siteKey = 'foo';
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig--;
  return o;
}

void checkGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig(
    api.GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig o) {
  buildCounterGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig < 3) {
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
  buildCounterGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1RecaptchaV3Config = 0;
api.GoogleFirebaseAppcheckV1RecaptchaV3Config
    buildGoogleFirebaseAppcheckV1RecaptchaV3Config() {
  final o = api.GoogleFirebaseAppcheckV1RecaptchaV3Config();
  buildCounterGoogleFirebaseAppcheckV1RecaptchaV3Config++;
  if (buildCounterGoogleFirebaseAppcheckV1RecaptchaV3Config < 3) {
    o.name = 'foo';
    o.siteSecret = 'foo';
    o.siteSecretSet = true;
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1RecaptchaV3Config--;
  return o;
}

void checkGoogleFirebaseAppcheckV1RecaptchaV3Config(
    api.GoogleFirebaseAppcheckV1RecaptchaV3Config o) {
  buildCounterGoogleFirebaseAppcheckV1RecaptchaV3Config++;
  if (buildCounterGoogleFirebaseAppcheckV1RecaptchaV3Config < 3) {
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
  buildCounterGoogleFirebaseAppcheckV1RecaptchaV3Config--;
}

core.int buildCounterGoogleFirebaseAppcheckV1SafetyNetConfig = 0;
api.GoogleFirebaseAppcheckV1SafetyNetConfig
    buildGoogleFirebaseAppcheckV1SafetyNetConfig() {
  final o = api.GoogleFirebaseAppcheckV1SafetyNetConfig();
  buildCounterGoogleFirebaseAppcheckV1SafetyNetConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1SafetyNetConfig < 3) {
    o.name = 'foo';
    o.tokenTtl = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1SafetyNetConfig--;
  return o;
}

void checkGoogleFirebaseAppcheckV1SafetyNetConfig(
    api.GoogleFirebaseAppcheckV1SafetyNetConfig o) {
  buildCounterGoogleFirebaseAppcheckV1SafetyNetConfig++;
  if (buildCounterGoogleFirebaseAppcheckV1SafetyNetConfig < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenTtl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1SafetyNetConfig--;
}

core.int buildCounterGoogleFirebaseAppcheckV1Service = 0;
api.GoogleFirebaseAppcheckV1Service buildGoogleFirebaseAppcheckV1Service() {
  final o = api.GoogleFirebaseAppcheckV1Service();
  buildCounterGoogleFirebaseAppcheckV1Service++;
  if (buildCounterGoogleFirebaseAppcheckV1Service < 3) {
    o.enforcementMode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1Service--;
  return o;
}

void checkGoogleFirebaseAppcheckV1Service(
    api.GoogleFirebaseAppcheckV1Service o) {
  buildCounterGoogleFirebaseAppcheckV1Service++;
  if (buildCounterGoogleFirebaseAppcheckV1Service < 3) {
    unittest.expect(
      o.enforcementMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1Service--;
}

core.int buildCounterGoogleFirebaseAppcheckV1UpdateServiceRequest = 0;
api.GoogleFirebaseAppcheckV1UpdateServiceRequest
    buildGoogleFirebaseAppcheckV1UpdateServiceRequest() {
  final o = api.GoogleFirebaseAppcheckV1UpdateServiceRequest();
  buildCounterGoogleFirebaseAppcheckV1UpdateServiceRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1UpdateServiceRequest < 3) {
    o.service = buildGoogleFirebaseAppcheckV1Service();
    o.updateMask = 'foo';
  }
  buildCounterGoogleFirebaseAppcheckV1UpdateServiceRequest--;
  return o;
}

void checkGoogleFirebaseAppcheckV1UpdateServiceRequest(
    api.GoogleFirebaseAppcheckV1UpdateServiceRequest o) {
  buildCounterGoogleFirebaseAppcheckV1UpdateServiceRequest++;
  if (buildCounterGoogleFirebaseAppcheckV1UpdateServiceRequest < 3) {
    checkGoogleFirebaseAppcheckV1Service(o.service!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppcheckV1UpdateServiceRequest--;
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
  unittest.group('obj-schema-GoogleFirebaseAppcheckV1AppAttestConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1AppAttestConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1AppAttestConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1AppAttestConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1AppCheckToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1AppCheckToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1AppCheckToken(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1BatchUpdateServicesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1BatchUpdateServicesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1BatchUpdateServicesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1BatchUpdateServicesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1BatchUpdateServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1BatchUpdateServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1BatchUpdateServicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1BatchUpdateServicesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1DebugToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1DebugToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1DebugToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1DebugToken(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1DeviceCheckConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1DeviceCheckConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1DeviceCheckConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1DeviceCheckConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1ListDebugTokensResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1ListDebugTokensResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1ListDebugTokensResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ListDebugTokensResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1ListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1ListServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1ListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1PlayIntegrityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1PlayIntegrityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1PlayIntegrityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1PlayIntegrityConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1PublicJwk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1PublicJwk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1PublicJwk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1PublicJwk(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1PublicJwkSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1PublicJwkSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1PublicJwkSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1PublicJwkSet(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1RecaptchaV3Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1RecaptchaV3Config();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1RecaptchaV3Config.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1RecaptchaV3Config(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1SafetyNetConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1SafetyNetConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1SafetyNetConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1SafetyNetConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1Service();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1Service.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1Service(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppcheckV1UpdateServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppcheckV1UpdateServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppcheckV1UpdateServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppcheckV1UpdateServiceRequest(od);
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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1PublicJwkSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1PublicJwkSet(
          response as api.GoogleFirebaseAppcheckV1PublicJwkSet);
    });
  });

  unittest.group('resource-ProjectsAppsResource', () {
    unittest.test('method--exchangeAppAttestAssertion', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1AppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeAppAttestAssertion(
          arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1AppCheckToken(
          response as api.GoogleFirebaseAppcheckV1AppCheckToken);
    });

    unittest.test('method--exchangeAppAttestAttestation', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeAppAttestAttestation(
          arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse(response
          as api.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse);
    });

    unittest.test('method--exchangeCustomToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1ExchangeCustomTokenRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1AppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeCustomToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1AppCheckToken(
          response as api.GoogleFirebaseAppcheckV1AppCheckToken);
    });

    unittest.test('method--exchangeDebugToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1ExchangeDebugTokenRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1AppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeDebugToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1AppCheckToken(
          response as api.GoogleFirebaseAppcheckV1AppCheckToken);
    });

    unittest.test('method--exchangeDeviceCheckToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1AppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeDeviceCheckToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1AppCheckToken(
          response as api.GoogleFirebaseAppcheckV1AppCheckToken);
    });

    unittest.test('method--exchangePlayIntegrityToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1AppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangePlayIntegrityToken(
          arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1AppCheckToken(
          response as api.GoogleFirebaseAppcheckV1AppCheckToken);
    });

    unittest.test('method--exchangeRecaptchaEnterpriseToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest(
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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1AppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeRecaptchaEnterpriseToken(
          arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1AppCheckToken(
          response as api.GoogleFirebaseAppcheckV1AppCheckToken);
    });

    unittest.test('method--exchangeRecaptchaV3Token', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1AppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeRecaptchaV3Token(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1AppCheckToken(
          response as api.GoogleFirebaseAppcheckV1AppCheckToken);
    });

    unittest.test('method--exchangeSafetyNetToken', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1AppCheckToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeSafetyNetToken(arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1AppCheckToken(
          response as api.GoogleFirebaseAppcheckV1AppCheckToken);
    });

    unittest.test('method--generateAppAttestChallenge', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateAppAttestChallenge(
          arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse(response
          as api.GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse);
    });

    unittest.test('method--generatePlayIntegrityChallenge', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps;
      final arg_request =
          buildGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generatePlayIntegrityChallenge(
          arg_request, arg_app,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse(
          response as api
              .GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse);
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse(response
          as api.GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse);
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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1AppAttestConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1AppAttestConfig(
          response as api.GoogleFirebaseAppcheckV1AppAttestConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.appAttestConfig;
      final arg_request = buildGoogleFirebaseAppcheckV1AppAttestConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1AppAttestConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1AppAttestConfig(obj);

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
            convert.json.encode(buildGoogleFirebaseAppcheckV1AppAttestConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1AppAttestConfig(
          response as api.GoogleFirebaseAppcheckV1AppAttestConfig);
    });
  });

  unittest.group('resource-ProjectsAppsDebugTokensResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
      final arg_request = buildGoogleFirebaseAppcheckV1DebugToken();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1DebugToken.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1DebugToken(obj);

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1DebugToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1DebugToken(
          response as api.GoogleFirebaseAppcheckV1DebugToken);
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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1DebugToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1DebugToken(
          response as api.GoogleFirebaseAppcheckV1DebugToken);
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
            .encode(buildGoogleFirebaseAppcheckV1ListDebugTokensResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1ListDebugTokensResponse(
          response as api.GoogleFirebaseAppcheckV1ListDebugTokensResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.debugTokens;
      final arg_request = buildGoogleFirebaseAppcheckV1DebugToken();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1DebugToken.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1DebugToken(obj);

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
            convert.json.encode(buildGoogleFirebaseAppcheckV1DebugToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1DebugToken(
          response as api.GoogleFirebaseAppcheckV1DebugToken);
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse(response
          as api.GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse);
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
        final resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1DeviceCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1DeviceCheckConfig(
          response as api.GoogleFirebaseAppcheckV1DeviceCheckConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.deviceCheckConfig;
      final arg_request = buildGoogleFirebaseAppcheckV1DeviceCheckConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1DeviceCheckConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1DeviceCheckConfig(obj);

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
            .encode(buildGoogleFirebaseAppcheckV1DeviceCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1DeviceCheckConfig(
          response as api.GoogleFirebaseAppcheckV1DeviceCheckConfig);
    });
  });

  unittest.group('resource-ProjectsAppsPlayIntegrityConfigResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseappcheckApi(mock).projects.apps.playIntegrityConfig;
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse(response
          as api.GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseappcheckApi(mock).projects.apps.playIntegrityConfig;
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
        final resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1PlayIntegrityConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1PlayIntegrityConfig(
          response as api.GoogleFirebaseAppcheckV1PlayIntegrityConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseappcheckApi(mock).projects.apps.playIntegrityConfig;
      final arg_request = buildGoogleFirebaseAppcheckV1PlayIntegrityConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1PlayIntegrityConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1PlayIntegrityConfig(obj);

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
            .encode(buildGoogleFirebaseAppcheckV1PlayIntegrityConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1PlayIntegrityConfig(
          response as api.GoogleFirebaseAppcheckV1PlayIntegrityConfig);
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse(
          response as api
              .GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse);
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
        final resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig(
          response as api.GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseappcheckApi(mock).projects.apps.recaptchaEnterpriseConfig;
      final arg_request =
          buildGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig(obj);

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
            .encode(buildGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig(
          response as api.GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig);
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse(response
          as api.GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse);
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
        final resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1RecaptchaV3Config());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1RecaptchaV3Config(
          response as api.GoogleFirebaseAppcheckV1RecaptchaV3Config);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.recaptchaV3Config;
      final arg_request = buildGoogleFirebaseAppcheckV1RecaptchaV3Config();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1RecaptchaV3Config.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1RecaptchaV3Config(obj);

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
            .encode(buildGoogleFirebaseAppcheckV1RecaptchaV3Config());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1RecaptchaV3Config(
          response as api.GoogleFirebaseAppcheckV1RecaptchaV3Config);
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse(response
          as api.GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse);
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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1SafetyNetConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1SafetyNetConfig(
          response as api.GoogleFirebaseAppcheckV1SafetyNetConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.apps.safetyNetConfig;
      final arg_request = buildGoogleFirebaseAppcheckV1SafetyNetConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1SafetyNetConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1SafetyNetConfig(obj);

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
            convert.json.encode(buildGoogleFirebaseAppcheckV1SafetyNetConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1SafetyNetConfig(
          response as api.GoogleFirebaseAppcheckV1SafetyNetConfig);
    });
  });

  unittest.group('resource-ProjectsServicesResource', () {
    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.services;
      final arg_request =
          buildGoogleFirebaseAppcheckV1BatchUpdateServicesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppcheckV1BatchUpdateServicesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1BatchUpdateServicesRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleFirebaseAppcheckV1BatchUpdateServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1BatchUpdateServicesResponse(
          response as api.GoogleFirebaseAppcheckV1BatchUpdateServicesResponse);
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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppcheckV1Service());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1Service(
          response as api.GoogleFirebaseAppcheckV1Service);
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
            .encode(buildGoogleFirebaseAppcheckV1ListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1ListServicesResponse(
          response as api.GoogleFirebaseAppcheckV1ListServicesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseappcheckApi(mock).projects.services;
      final arg_request = buildGoogleFirebaseAppcheckV1Service();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppcheckV1Service.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppcheckV1Service(obj);

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
            convert.json.encode(buildGoogleFirebaseAppcheckV1Service());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppcheckV1Service(
          response as api.GoogleFirebaseAppcheckV1Service);
    });
  });
}
