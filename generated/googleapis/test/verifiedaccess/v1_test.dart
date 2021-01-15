// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.verifiedaccess.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/verifiedaccess/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterChallenge = 0;
api.Challenge buildChallenge() {
  var o = api.Challenge();
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
    checkSignedData(o.alternativeChallenge);
    checkSignedData(o.challenge);
  }
  buildCounterChallenge--;
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

core.int buildCounterSignedData = 0;
api.SignedData buildSignedData() {
  var o = api.SignedData();
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
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterSignedData--;
}

core.int buildCounterVerifyChallengeResponseRequest = 0;
api.VerifyChallengeResponseRequest buildVerifyChallengeResponseRequest() {
  var o = api.VerifyChallengeResponseRequest();
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
    checkSignedData(o.challengeResponse);
    unittest.expect(o.expectedIdentity, unittest.equals('foo'));
  }
  buildCounterVerifyChallengeResponseRequest--;
}

core.int buildCounterVerifyChallengeResponseResult = 0;
api.VerifyChallengeResponseResult buildVerifyChallengeResponseResult() {
  var o = api.VerifyChallengeResponseResult();
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
    unittest.expect(o.deviceEnrollmentId, unittest.equals('foo'));
    unittest.expect(o.devicePermanentId, unittest.equals('foo'));
    unittest.expect(o.signedPublicKeyAndChallenge, unittest.equals('foo'));
    unittest.expect(o.verificationOutput, unittest.equals('foo'));
  }
  buildCounterVerifyChallengeResponseResult--;
}

void main() {
  unittest.group('obj-schema-Challenge', () {
    unittest.test('to-json--from-json', () {
      var o = buildChallenge();
      var od = api.Challenge.fromJson(o.toJson());
      checkChallenge(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-SignedData', () {
    unittest.test('to-json--from-json', () {
      var o = buildSignedData();
      var od = api.SignedData.fromJson(o.toJson());
      checkSignedData(od);
    });
  });

  unittest.group('obj-schema-VerifyChallengeResponseRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildVerifyChallengeResponseRequest();
      var od = api.VerifyChallengeResponseRequest.fromJson(o.toJson());
      checkVerifyChallengeResponseRequest(od);
    });
  });

  unittest.group('obj-schema-VerifyChallengeResponseResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildVerifyChallengeResponseResult();
      var od = api.VerifyChallengeResponseResult.fromJson(o.toJson());
      checkVerifyChallengeResponseResult(od);
    });
  });

  unittest.group('resource-ChallengeResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ChallengeResourceApi res = api.VerifiedaccessApi(mock).challenge;
      var arg_request = buildEmpty();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Empty.fromJson(json);
        checkEmpty(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/challenge"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChallenge());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChallenge(response);
      })));
    });

    unittest.test('method--verify', () {
      var mock = HttpServerMock();
      api.ChallengeResourceApi res = api.VerifiedaccessApi(mock).challenge;
      var arg_request = buildVerifyChallengeResponseRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.VerifyChallengeResponseRequest.fromJson(json);
        checkVerifyChallengeResponseRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1/challenge:verify"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVerifyChallengeResponseResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verify(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVerifyChallengeResponseResult(response);
      })));
    });
  });
}
