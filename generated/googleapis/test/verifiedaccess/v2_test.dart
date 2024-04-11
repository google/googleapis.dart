// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/verifiedaccess/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterChallenge = 0;
api.Challenge buildChallenge() {
  final o = api.Challenge();
  buildCounterChallenge++;
  if (buildCounterChallenge < 3) {
    o.challenge = 'foo';
  }
  buildCounterChallenge--;
  return o;
}

void checkChallenge(api.Challenge o) {
  buildCounterChallenge++;
  if (buildCounterChallenge < 3) {
    unittest.expect(
      o.challenge!,
      unittest.equals('foo'),
    );
  }
  buildCounterChallenge--;
}

core.int buildCounterCrowdStrikeAgent = 0;
api.CrowdStrikeAgent buildCrowdStrikeAgent() {
  final o = api.CrowdStrikeAgent();
  buildCounterCrowdStrikeAgent++;
  if (buildCounterCrowdStrikeAgent < 3) {
    o.agentId = 'foo';
    o.customerId = 'foo';
  }
  buildCounterCrowdStrikeAgent--;
  return o;
}

void checkCrowdStrikeAgent(api.CrowdStrikeAgent o) {
  buildCounterCrowdStrikeAgent++;
  if (buildCounterCrowdStrikeAgent < 3) {
    unittest.expect(
      o.agentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCrowdStrikeAgent--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterDeviceSignals = 0;
api.DeviceSignals buildDeviceSignals() {
  final o = api.DeviceSignals();
  buildCounterDeviceSignals++;
  if (buildCounterDeviceSignals < 3) {
    o.allowScreenLock = true;
    o.browserVersion = 'foo';
    o.builtInDnsClientEnabled = true;
    o.chromeRemoteDesktopAppBlocked = true;
    o.crowdStrikeAgent = buildCrowdStrikeAgent();
    o.deviceAffiliationIds = buildUnnamed0();
    o.deviceEnrollmentDomain = 'foo';
    o.deviceManufacturer = 'foo';
    o.deviceModel = 'foo';
    o.diskEncryption = 'foo';
    o.displayName = 'foo';
    o.hostname = 'foo';
    o.imei = buildUnnamed1();
    o.macAddresses = buildUnnamed2();
    o.meid = buildUnnamed3();
    o.operatingSystem = 'foo';
    o.osFirewall = 'foo';
    o.osVersion = 'foo';
    o.passwordProtectionWarningTrigger = 'foo';
    o.profileAffiliationIds = buildUnnamed4();
    o.profileEnrollmentDomain = 'foo';
    o.realtimeUrlCheckMode = 'foo';
    o.safeBrowsingProtectionLevel = 'foo';
    o.screenLockSecured = 'foo';
    o.secureBootMode = 'foo';
    o.serialNumber = 'foo';
    o.siteIsolationEnabled = true;
    o.systemDnsServers = buildUnnamed5();
    o.thirdPartyBlockingEnabled = true;
    o.trigger = 'foo';
    o.windowsMachineDomain = 'foo';
    o.windowsUserDomain = 'foo';
  }
  buildCounterDeviceSignals--;
  return o;
}

void checkDeviceSignals(api.DeviceSignals o) {
  buildCounterDeviceSignals++;
  if (buildCounterDeviceSignals < 3) {
    unittest.expect(o.allowScreenLock!, unittest.isTrue);
    unittest.expect(
      o.browserVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.builtInDnsClientEnabled!, unittest.isTrue);
    unittest.expect(o.chromeRemoteDesktopAppBlocked!, unittest.isTrue);
    checkCrowdStrikeAgent(o.crowdStrikeAgent!);
    checkUnnamed0(o.deviceAffiliationIds!);
    unittest.expect(
      o.deviceEnrollmentDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceManufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskEncryption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.imei!);
    checkUnnamed2(o.macAddresses!);
    checkUnnamed3(o.meid!);
    unittest.expect(
      o.operatingSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osFirewall!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passwordProtectionWarningTrigger!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.profileAffiliationIds!);
    unittest.expect(
      o.profileEnrollmentDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.realtimeUrlCheckMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.safeBrowsingProtectionLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.screenLockSecured!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secureBootMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(o.siteIsolationEnabled!, unittest.isTrue);
    checkUnnamed5(o.systemDnsServers!);
    unittest.expect(o.thirdPartyBlockingEnabled!, unittest.isTrue);
    unittest.expect(
      o.trigger!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.windowsMachineDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.windowsUserDomain!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceSignals--;
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

core.int buildCounterVerifyChallengeResponseRequest = 0;
api.VerifyChallengeResponseRequest buildVerifyChallengeResponseRequest() {
  final o = api.VerifyChallengeResponseRequest();
  buildCounterVerifyChallengeResponseRequest++;
  if (buildCounterVerifyChallengeResponseRequest < 3) {
    o.challengeResponse = 'foo';
    o.expectedIdentity = 'foo';
  }
  buildCounterVerifyChallengeResponseRequest--;
  return o;
}

void checkVerifyChallengeResponseRequest(api.VerifyChallengeResponseRequest o) {
  buildCounterVerifyChallengeResponseRequest++;
  if (buildCounterVerifyChallengeResponseRequest < 3) {
    unittest.expect(
      o.challengeResponse!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expectedIdentity!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerifyChallengeResponseRequest--;
}

core.int buildCounterVerifyChallengeResponseResult = 0;
api.VerifyChallengeResponseResult buildVerifyChallengeResponseResult() {
  final o = api.VerifyChallengeResponseResult();
  buildCounterVerifyChallengeResponseResult++;
  if (buildCounterVerifyChallengeResponseResult < 3) {
    o.attestedDeviceId = 'foo';
    o.customerId = 'foo';
    o.deviceEnrollmentId = 'foo';
    o.devicePermanentId = 'foo';
    o.deviceSignal = 'foo';
    o.deviceSignals = buildDeviceSignals();
    o.keyTrustLevel = 'foo';
    o.profileCustomerId = 'foo';
    o.profileKeyTrustLevel = 'foo';
    o.signedPublicKeyAndChallenge = 'foo';
    o.virtualDeviceId = 'foo';
    o.virtualProfileId = 'foo';
  }
  buildCounterVerifyChallengeResponseResult--;
  return o;
}

void checkVerifyChallengeResponseResult(api.VerifyChallengeResponseResult o) {
  buildCounterVerifyChallengeResponseResult++;
  if (buildCounterVerifyChallengeResponseResult < 3) {
    unittest.expect(
      o.attestedDeviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceEnrollmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.devicePermanentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceSignal!,
      unittest.equals('foo'),
    );
    checkDeviceSignals(o.deviceSignals!);
    unittest.expect(
      o.keyTrustLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileCustomerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileKeyTrustLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signedPublicKeyAndChallenge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.virtualDeviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.virtualProfileId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerifyChallengeResponseResult--;
}

void main() {
  unittest.group('obj-schema-Challenge', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChallenge();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Challenge.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChallenge(od);
    });
  });

  unittest.group('obj-schema-CrowdStrikeAgent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCrowdStrikeAgent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CrowdStrikeAgent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCrowdStrikeAgent(od);
    });
  });

  unittest.group('obj-schema-DeviceSignals', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceSignals();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceSignals.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceSignals(od);
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

  unittest.group('obj-schema-VerifyChallengeResponseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyChallengeResponseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyChallengeResponseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyChallengeResponseRequest(od);
    });
  });

  unittest.group('obj-schema-VerifyChallengeResponseResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyChallengeResponseResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyChallengeResponseResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyChallengeResponseResult(od);
    });
  });

  unittest.group('resource-ChallengeResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.VerifiedaccessApi(mock).challenge;
      final arg_request = buildEmpty();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Empty.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEmpty(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v2/challenge:generate'),
        );
        pathOffset += 21;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChallenge());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generate(arg_request, $fields: arg_$fields);
      checkChallenge(response as api.Challenge);
    });

    unittest.test('method--verify', () async {
      final mock = HttpServerMock();
      final res = api.VerifiedaccessApi(mock).challenge;
      final arg_request = buildVerifyChallengeResponseRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VerifyChallengeResponseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVerifyChallengeResponseRequest(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('v2/challenge:verify'),
        );
        pathOffset += 19;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVerifyChallengeResponseResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.verify(arg_request, $fields: arg_$fields);
      checkVerifyChallengeResponseResult(
          response as api.VerifyChallengeResponseResult);
    });
  });
}
