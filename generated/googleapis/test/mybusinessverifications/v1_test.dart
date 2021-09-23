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

import 'package:googleapis/mybusinessverifications/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddressVerificationData = 0;
api.AddressVerificationData buildAddressVerificationData() {
  final o = api.AddressVerificationData();
  buildCounterAddressVerificationData++;
  if (buildCounterAddressVerificationData < 3) {
    o.address = buildPostalAddress();
    o.business = 'foo';
    o.expectedDeliveryDaysRegion = 42;
  }
  buildCounterAddressVerificationData--;
  return o;
}

void checkAddressVerificationData(api.AddressVerificationData o) {
  buildCounterAddressVerificationData++;
  if (buildCounterAddressVerificationData < 3) {
    checkPostalAddress(o.address!);
    unittest.expect(
      o.business!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expectedDeliveryDaysRegion!,
      unittest.equals(42),
    );
  }
  buildCounterAddressVerificationData--;
}

core.int buildCounterCompleteVerificationRequest = 0;
api.CompleteVerificationRequest buildCompleteVerificationRequest() {
  final o = api.CompleteVerificationRequest();
  buildCounterCompleteVerificationRequest++;
  if (buildCounterCompleteVerificationRequest < 3) {
    o.pin = 'foo';
  }
  buildCounterCompleteVerificationRequest--;
  return o;
}

void checkCompleteVerificationRequest(api.CompleteVerificationRequest o) {
  buildCounterCompleteVerificationRequest++;
  if (buildCounterCompleteVerificationRequest < 3) {
    unittest.expect(
      o.pin!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompleteVerificationRequest--;
}

core.int buildCounterCompleteVerificationResponse = 0;
api.CompleteVerificationResponse buildCompleteVerificationResponse() {
  final o = api.CompleteVerificationResponse();
  buildCounterCompleteVerificationResponse++;
  if (buildCounterCompleteVerificationResponse < 3) {
    o.verification = buildVerification();
  }
  buildCounterCompleteVerificationResponse--;
  return o;
}

void checkCompleteVerificationResponse(api.CompleteVerificationResponse o) {
  buildCounterCompleteVerificationResponse++;
  if (buildCounterCompleteVerificationResponse < 3) {
    checkVerification(o.verification!);
  }
  buildCounterCompleteVerificationResponse--;
}

core.int buildCounterComplyWithGuidelines = 0;
api.ComplyWithGuidelines buildComplyWithGuidelines() {
  final o = api.ComplyWithGuidelines();
  buildCounterComplyWithGuidelines++;
  if (buildCounterComplyWithGuidelines < 3) {}
  buildCounterComplyWithGuidelines--;
  return o;
}

void checkComplyWithGuidelines(api.ComplyWithGuidelines o) {
  buildCounterComplyWithGuidelines++;
  if (buildCounterComplyWithGuidelines < 3) {}
  buildCounterComplyWithGuidelines--;
}

core.int buildCounterEmailVerificationData = 0;
api.EmailVerificationData buildEmailVerificationData() {
  final o = api.EmailVerificationData();
  buildCounterEmailVerificationData++;
  if (buildCounterEmailVerificationData < 3) {
    o.domain = 'foo';
    o.isUserNameEditable = true;
    o.user = 'foo';
  }
  buildCounterEmailVerificationData--;
  return o;
}

void checkEmailVerificationData(api.EmailVerificationData o) {
  buildCounterEmailVerificationData++;
  if (buildCounterEmailVerificationData < 3) {
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isUserNameEditable!, unittest.isTrue);
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
  }
  buildCounterEmailVerificationData--;
}

core.int buildCounterFetchVerificationOptionsRequest = 0;
api.FetchVerificationOptionsRequest buildFetchVerificationOptionsRequest() {
  final o = api.FetchVerificationOptionsRequest();
  buildCounterFetchVerificationOptionsRequest++;
  if (buildCounterFetchVerificationOptionsRequest < 3) {
    o.context = buildServiceBusinessContext();
    o.languageCode = 'foo';
  }
  buildCounterFetchVerificationOptionsRequest--;
  return o;
}

void checkFetchVerificationOptionsRequest(
    api.FetchVerificationOptionsRequest o) {
  buildCounterFetchVerificationOptionsRequest++;
  if (buildCounterFetchVerificationOptionsRequest < 3) {
    checkServiceBusinessContext(o.context!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchVerificationOptionsRequest--;
}

core.List<api.VerificationOption> buildUnnamed0() => [
      buildVerificationOption(),
      buildVerificationOption(),
    ];

void checkUnnamed0(core.List<api.VerificationOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVerificationOption(o[0]);
  checkVerificationOption(o[1]);
}

core.int buildCounterFetchVerificationOptionsResponse = 0;
api.FetchVerificationOptionsResponse buildFetchVerificationOptionsResponse() {
  final o = api.FetchVerificationOptionsResponse();
  buildCounterFetchVerificationOptionsResponse++;
  if (buildCounterFetchVerificationOptionsResponse < 3) {
    o.options = buildUnnamed0();
  }
  buildCounterFetchVerificationOptionsResponse--;
  return o;
}

void checkFetchVerificationOptionsResponse(
    api.FetchVerificationOptionsResponse o) {
  buildCounterFetchVerificationOptionsResponse++;
  if (buildCounterFetchVerificationOptionsResponse < 3) {
    checkUnnamed0(o.options!);
  }
  buildCounterFetchVerificationOptionsResponse--;
}

core.int buildCounterGenerateVerificationTokenRequest = 0;
api.GenerateVerificationTokenRequest buildGenerateVerificationTokenRequest() {
  final o = api.GenerateVerificationTokenRequest();
  buildCounterGenerateVerificationTokenRequest++;
  if (buildCounterGenerateVerificationTokenRequest < 3) {
    o.location = buildLocation();
  }
  buildCounterGenerateVerificationTokenRequest--;
  return o;
}

void checkGenerateVerificationTokenRequest(
    api.GenerateVerificationTokenRequest o) {
  buildCounterGenerateVerificationTokenRequest++;
  if (buildCounterGenerateVerificationTokenRequest < 3) {
    checkLocation(o.location!);
  }
  buildCounterGenerateVerificationTokenRequest--;
}

core.int buildCounterGenerateVerificationTokenResponse = 0;
api.GenerateVerificationTokenResponse buildGenerateVerificationTokenResponse() {
  final o = api.GenerateVerificationTokenResponse();
  buildCounterGenerateVerificationTokenResponse++;
  if (buildCounterGenerateVerificationTokenResponse < 3) {
    o.token = buildVerificationToken();
  }
  buildCounterGenerateVerificationTokenResponse--;
  return o;
}

void checkGenerateVerificationTokenResponse(
    api.GenerateVerificationTokenResponse o) {
  buildCounterGenerateVerificationTokenResponse++;
  if (buildCounterGenerateVerificationTokenResponse < 3) {
    checkVerificationToken(o.token!);
  }
  buildCounterGenerateVerificationTokenResponse--;
}

core.List<api.Verification> buildUnnamed1() => [
      buildVerification(),
      buildVerification(),
    ];

void checkUnnamed1(core.List<api.Verification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVerification(o[0]);
  checkVerification(o[1]);
}

core.int buildCounterListVerificationsResponse = 0;
api.ListVerificationsResponse buildListVerificationsResponse() {
  final o = api.ListVerificationsResponse();
  buildCounterListVerificationsResponse++;
  if (buildCounterListVerificationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.verifications = buildUnnamed1();
  }
  buildCounterListVerificationsResponse--;
  return o;
}

void checkListVerificationsResponse(api.ListVerificationsResponse o) {
  buildCounterListVerificationsResponse++;
  if (buildCounterListVerificationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.verifications!);
  }
  buildCounterListVerificationsResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.address = buildPostalAddress();
    o.name = 'foo';
    o.primaryCategoryId = 'foo';
    o.primaryPhone = 'foo';
    o.websiteUri = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkPostalAddress(o.address!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryCategoryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryPhone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.websiteUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterPostalAddress = 0;
api.PostalAddress buildPostalAddress() {
  final o = api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed2();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed3();
    o.regionCode = 'foo';
    o.revision = 42;
    o.sortingCode = 'foo';
    o.sublocality = 'foo';
  }
  buildCounterPostalAddress--;
  return o;
}

void checkPostalAddress(api.PostalAddress o) {
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    checkUnnamed2(o.addressLines!);
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.recipients!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sortingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sublocality!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostalAddress--;
}

core.int buildCounterResolveOwnershipConflict = 0;
api.ResolveOwnershipConflict buildResolveOwnershipConflict() {
  final o = api.ResolveOwnershipConflict();
  buildCounterResolveOwnershipConflict++;
  if (buildCounterResolveOwnershipConflict < 3) {}
  buildCounterResolveOwnershipConflict--;
  return o;
}

void checkResolveOwnershipConflict(api.ResolveOwnershipConflict o) {
  buildCounterResolveOwnershipConflict++;
  if (buildCounterResolveOwnershipConflict < 3) {}
  buildCounterResolveOwnershipConflict--;
}

core.int buildCounterServiceBusinessContext = 0;
api.ServiceBusinessContext buildServiceBusinessContext() {
  final o = api.ServiceBusinessContext();
  buildCounterServiceBusinessContext++;
  if (buildCounterServiceBusinessContext < 3) {
    o.address = buildPostalAddress();
  }
  buildCounterServiceBusinessContext--;
  return o;
}

void checkServiceBusinessContext(api.ServiceBusinessContext o) {
  buildCounterServiceBusinessContext++;
  if (buildCounterServiceBusinessContext < 3) {
    checkPostalAddress(o.address!);
  }
  buildCounterServiceBusinessContext--;
}

core.int buildCounterVerification = 0;
api.Verification buildVerification() {
  final o = api.Verification();
  buildCounterVerification++;
  if (buildCounterVerification < 3) {
    o.createTime = 'foo';
    o.method = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterVerification--;
  return o;
}

void checkVerification(api.Verification o) {
  buildCounterVerification++;
  if (buildCounterVerification < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerification--;
}

core.int buildCounterVerificationOption = 0;
api.VerificationOption buildVerificationOption() {
  final o = api.VerificationOption();
  buildCounterVerificationOption++;
  if (buildCounterVerificationOption < 3) {
    o.addressData = buildAddressVerificationData();
    o.emailData = buildEmailVerificationData();
    o.phoneNumber = 'foo';
    o.verificationMethod = 'foo';
  }
  buildCounterVerificationOption--;
  return o;
}

void checkVerificationOption(api.VerificationOption o) {
  buildCounterVerificationOption++;
  if (buildCounterVerificationOption < 3) {
    checkAddressVerificationData(o.addressData!);
    checkEmailVerificationData(o.emailData!);
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationMethod!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerificationOption--;
}

core.int buildCounterVerificationToken = 0;
api.VerificationToken buildVerificationToken() {
  final o = api.VerificationToken();
  buildCounterVerificationToken++;
  if (buildCounterVerificationToken < 3) {
    o.tokenString = 'foo';
  }
  buildCounterVerificationToken--;
  return o;
}

void checkVerificationToken(api.VerificationToken o) {
  buildCounterVerificationToken++;
  if (buildCounterVerificationToken < 3) {
    unittest.expect(
      o.tokenString!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerificationToken--;
}

core.int buildCounterVerify = 0;
api.Verify buildVerify() {
  final o = api.Verify();
  buildCounterVerify++;
  if (buildCounterVerify < 3) {
    o.hasPendingVerification = true;
  }
  buildCounterVerify--;
  return o;
}

void checkVerify(api.Verify o) {
  buildCounterVerify++;
  if (buildCounterVerify < 3) {
    unittest.expect(o.hasPendingVerification!, unittest.isTrue);
  }
  buildCounterVerify--;
}

core.int buildCounterVerifyLocationRequest = 0;
api.VerifyLocationRequest buildVerifyLocationRequest() {
  final o = api.VerifyLocationRequest();
  buildCounterVerifyLocationRequest++;
  if (buildCounterVerifyLocationRequest < 3) {
    o.context = buildServiceBusinessContext();
    o.emailAddress = 'foo';
    o.languageCode = 'foo';
    o.mailerContact = 'foo';
    o.method = 'foo';
    o.phoneNumber = 'foo';
    o.token = buildVerificationToken();
  }
  buildCounterVerifyLocationRequest--;
  return o;
}

void checkVerifyLocationRequest(api.VerifyLocationRequest o) {
  buildCounterVerifyLocationRequest++;
  if (buildCounterVerifyLocationRequest < 3) {
    checkServiceBusinessContext(o.context!);
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mailerContact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    checkVerificationToken(o.token!);
  }
  buildCounterVerifyLocationRequest--;
}

core.int buildCounterVerifyLocationResponse = 0;
api.VerifyLocationResponse buildVerifyLocationResponse() {
  final o = api.VerifyLocationResponse();
  buildCounterVerifyLocationResponse++;
  if (buildCounterVerifyLocationResponse < 3) {
    o.verification = buildVerification();
  }
  buildCounterVerifyLocationResponse--;
  return o;
}

void checkVerifyLocationResponse(api.VerifyLocationResponse o) {
  buildCounterVerifyLocationResponse++;
  if (buildCounterVerifyLocationResponse < 3) {
    checkVerification(o.verification!);
  }
  buildCounterVerifyLocationResponse--;
}

core.int buildCounterVoiceOfMerchantState = 0;
api.VoiceOfMerchantState buildVoiceOfMerchantState() {
  final o = api.VoiceOfMerchantState();
  buildCounterVoiceOfMerchantState++;
  if (buildCounterVoiceOfMerchantState < 3) {
    o.complyWithGuidelines = buildComplyWithGuidelines();
    o.hasBusinessAuthority = true;
    o.hasVoiceOfMerchant = true;
    o.resolveOwnershipConflict = buildResolveOwnershipConflict();
    o.verify = buildVerify();
    o.waitForVoiceOfMerchant = buildWaitForVoiceOfMerchant();
  }
  buildCounterVoiceOfMerchantState--;
  return o;
}

void checkVoiceOfMerchantState(api.VoiceOfMerchantState o) {
  buildCounterVoiceOfMerchantState++;
  if (buildCounterVoiceOfMerchantState < 3) {
    checkComplyWithGuidelines(o.complyWithGuidelines!);
    unittest.expect(o.hasBusinessAuthority!, unittest.isTrue);
    unittest.expect(o.hasVoiceOfMerchant!, unittest.isTrue);
    checkResolveOwnershipConflict(o.resolveOwnershipConflict!);
    checkVerify(o.verify!);
    checkWaitForVoiceOfMerchant(o.waitForVoiceOfMerchant!);
  }
  buildCounterVoiceOfMerchantState--;
}

core.int buildCounterWaitForVoiceOfMerchant = 0;
api.WaitForVoiceOfMerchant buildWaitForVoiceOfMerchant() {
  final o = api.WaitForVoiceOfMerchant();
  buildCounterWaitForVoiceOfMerchant++;
  if (buildCounterWaitForVoiceOfMerchant < 3) {}
  buildCounterWaitForVoiceOfMerchant--;
  return o;
}

void checkWaitForVoiceOfMerchant(api.WaitForVoiceOfMerchant o) {
  buildCounterWaitForVoiceOfMerchant++;
  if (buildCounterWaitForVoiceOfMerchant < 3) {}
  buildCounterWaitForVoiceOfMerchant--;
}

void main() {
  unittest.group('obj-schema-AddressVerificationData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddressVerificationData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddressVerificationData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddressVerificationData(od);
    });
  });

  unittest.group('obj-schema-CompleteVerificationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteVerificationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompleteVerificationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteVerificationRequest(od);
    });
  });

  unittest.group('obj-schema-CompleteVerificationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteVerificationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompleteVerificationResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteVerificationResponse(od);
    });
  });

  unittest.group('obj-schema-ComplyWithGuidelines', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplyWithGuidelines();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplyWithGuidelines.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComplyWithGuidelines(od);
    });
  });

  unittest.group('obj-schema-EmailVerificationData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmailVerificationData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmailVerificationData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmailVerificationData(od);
    });
  });

  unittest.group('obj-schema-FetchVerificationOptionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchVerificationOptionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchVerificationOptionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchVerificationOptionsRequest(od);
    });
  });

  unittest.group('obj-schema-FetchVerificationOptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchVerificationOptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchVerificationOptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchVerificationOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-GenerateVerificationTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateVerificationTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateVerificationTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateVerificationTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateVerificationTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateVerificationTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateVerificationTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateVerificationTokenResponse(od);
    });
  });

  unittest.group('obj-schema-ListVerificationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVerificationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVerificationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVerificationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-PostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostalAddress(od);
    });
  });

  unittest.group('obj-schema-ResolveOwnershipConflict', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResolveOwnershipConflict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResolveOwnershipConflict.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResolveOwnershipConflict(od);
    });
  });

  unittest.group('obj-schema-ServiceBusinessContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceBusinessContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceBusinessContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceBusinessContext(od);
    });
  });

  unittest.group('obj-schema-Verification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Verification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerification(od);
    });
  });

  unittest.group('obj-schema-VerificationOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerificationOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerificationOption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerificationOption(od);
    });
  });

  unittest.group('obj-schema-VerificationToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerificationToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerificationToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerificationToken(od);
    });
  });

  unittest.group('obj-schema-Verify', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerify();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Verify.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVerify(od);
    });
  });

  unittest.group('obj-schema-VerifyLocationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyLocationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyLocationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyLocationRequest(od);
    });
  });

  unittest.group('obj-schema-VerifyLocationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyLocationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyLocationResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyLocationResponse(od);
    });
  });

  unittest.group('obj-schema-VoiceOfMerchantState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoiceOfMerchantState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoiceOfMerchantState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoiceOfMerchantState(od);
    });
  });

  unittest.group('obj-schema-WaitForVoiceOfMerchant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWaitForVoiceOfMerchant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WaitForVoiceOfMerchant.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWaitForVoiceOfMerchant(od);
    });
  });

  unittest.group('resource-LocationsResource', () {
    unittest.test('method--fetchVerificationOptions', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessVerificationsApi(mock).locations;
      final arg_request = buildFetchVerificationOptionsRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FetchVerificationOptionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchVerificationOptionsRequest(obj);

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
            convert.json.encode(buildFetchVerificationOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchVerificationOptions(
          arg_request, arg_location,
          $fields: arg_$fields);
      checkFetchVerificationOptionsResponse(
          response as api.FetchVerificationOptionsResponse);
    });

    unittest.test('method--getVoiceOfMerchantState', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessVerificationsApi(mock).locations;
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
        final resp = convert.json.encode(buildVoiceOfMerchantState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getVoiceOfMerchantState(arg_name, $fields: arg_$fields);
      checkVoiceOfMerchantState(response as api.VoiceOfMerchantState);
    });

    unittest.test('method--verify', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessVerificationsApi(mock).locations;
      final arg_request = buildVerifyLocationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VerifyLocationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVerifyLocationRequest(obj);

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
        final resp = convert.json.encode(buildVerifyLocationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.verify(arg_request, arg_name, $fields: arg_$fields);
      checkVerifyLocationResponse(response as api.VerifyLocationResponse);
    });
  });

  unittest.group('resource-LocationsVerificationsResource', () {
    unittest.test('method--complete', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessVerificationsApi(mock).locations.verifications;
      final arg_request = buildCompleteVerificationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CompleteVerificationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCompleteVerificationRequest(obj);

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
        final resp = convert.json.encode(buildCompleteVerificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.complete(arg_request, arg_name, $fields: arg_$fields);
      checkCompleteVerificationResponse(
          response as api.CompleteVerificationResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessVerificationsApi(mock).locations.verifications;
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
        final resp = convert.json.encode(buildListVerificationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVerificationsResponse(response as api.ListVerificationsResponse);
    });
  });

  unittest.group('resource-VerificationTokensResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessVerificationsApi(mock).verificationTokens;
      final arg_request = buildGenerateVerificationTokenRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateVerificationTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateVerificationTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('v1/verificationTokens:generate'),
        );
        pathOffset += 30;

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
            convert.json.encode(buildGenerateVerificationTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generate(arg_request, $fields: arg_$fields);
      checkGenerateVerificationTokenResponse(
          response as api.GenerateVerificationTokenResponse);
    });
  });
}
