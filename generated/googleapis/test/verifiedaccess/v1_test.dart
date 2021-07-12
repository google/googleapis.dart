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

import 'package:googleapis/verifiedaccess/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterChallenge = 0;
api.Challenge buildChallenge() {
  final o = api.Challenge();
  buildCounterChallenge++;
  if (buildCounterChallenge < 3) {
    o.alternativeChallenge = buildSignedData();
    o.challenge = buildSignedData();
  }
  buildCounterChallenge--;
  return o;
}

void checkChallenge(api.Challenge o) {
  buildCounterChallenge++;
  if (buildCounterChallenge < 3) {
    checkSignedData(o.alternativeChallenge!);
    checkSignedData(o.challenge!);
  }
  buildCounterChallenge--;
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

core.int buildCounterSignedData = 0;
api.SignedData buildSignedData() {
  final o = api.SignedData();
  buildCounterSignedData++;
  if (buildCounterSignedData < 3) {
    o.data = 'foo';
    o.signature = 'foo';
  }
  buildCounterSignedData--;
  return o;
}

void checkSignedData(api.SignedData o) {
  buildCounterSignedData++;
  if (buildCounterSignedData < 3) {
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignedData--;
}

core.int buildCounterVerifyChallengeResponseRequest = 0;
api.VerifyChallengeResponseRequest buildVerifyChallengeResponseRequest() {
  final o = api.VerifyChallengeResponseRequest();
  buildCounterVerifyChallengeResponseRequest++;
  if (buildCounterVerifyChallengeResponseRequest < 3) {
    o.challengeResponse = buildSignedData();
    o.expectedIdentity = 'foo';
  }
  buildCounterVerifyChallengeResponseRequest--;
  return o;
}

void checkVerifyChallengeResponseRequest(api.VerifyChallengeResponseRequest o) {
  buildCounterVerifyChallengeResponseRequest++;
  if (buildCounterVerifyChallengeResponseRequest < 3) {
    checkSignedData(o.challengeResponse!);
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
    o.deviceEnrollmentId = 'foo';
    o.devicePermanentId = 'foo';
    o.signedPublicKeyAndChallenge = 'foo';
    o.verificationOutput = 'foo';
  }
  buildCounterVerifyChallengeResponseResult--;
  return o;
}

void checkVerifyChallengeResponseResult(api.VerifyChallengeResponseResult o) {
  buildCounterVerifyChallengeResponseResult++;
  if (buildCounterVerifyChallengeResponseResult < 3) {
    unittest.expect(
      o.deviceEnrollmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.devicePermanentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signedPublicKeyAndChallenge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationOutput!,
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

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-SignedData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignedData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SignedData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSignedData(od);
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
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VerifiedaccessApi(mock).challenge;
      final arg_request = buildEmpty();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Empty.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEmpty(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/challenge'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildChallenge());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('v1/challenge:verify'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildVerifyChallengeResponseResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.verify(arg_request, $fields: arg_$fields);
      checkVerifyChallengeResponseResult(
          response as api.VerifyChallengeResponseResult);
    });
  });
}
