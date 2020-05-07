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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterChallenge = 0;
buildChallenge() {
  var o = new api.Challenge();
  buildCounterChallenge++;
  if (buildCounterChallenge < 3) {
    o.alternativeChallenge = buildSignedData();
    o.challenge = buildSignedData();
  }
  buildCounterChallenge--;
  return o;
}

checkChallenge(api.Challenge o) {
  buildCounterChallenge++;
  if (buildCounterChallenge < 3) {
    checkSignedData(o.alternativeChallenge);
    checkSignedData(o.challenge);
  }
  buildCounterChallenge--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterSignedData = 0;
buildSignedData() {
  var o = new api.SignedData();
  buildCounterSignedData++;
  if (buildCounterSignedData < 3) {
    o.data = "foo";
    o.signature = "foo";
  }
  buildCounterSignedData--;
  return o;
}

checkSignedData(api.SignedData o) {
  buildCounterSignedData++;
  if (buildCounterSignedData < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterSignedData--;
}

core.int buildCounterVerifyChallengeResponseRequest = 0;
buildVerifyChallengeResponseRequest() {
  var o = new api.VerifyChallengeResponseRequest();
  buildCounterVerifyChallengeResponseRequest++;
  if (buildCounterVerifyChallengeResponseRequest < 3) {
    o.challengeResponse = buildSignedData();
    o.expectedIdentity = "foo";
  }
  buildCounterVerifyChallengeResponseRequest--;
  return o;
}

checkVerifyChallengeResponseRequest(api.VerifyChallengeResponseRequest o) {
  buildCounterVerifyChallengeResponseRequest++;
  if (buildCounterVerifyChallengeResponseRequest < 3) {
    checkSignedData(o.challengeResponse);
    unittest.expect(o.expectedIdentity, unittest.equals('foo'));
  }
  buildCounterVerifyChallengeResponseRequest--;
}

core.int buildCounterVerifyChallengeResponseResult = 0;
buildVerifyChallengeResponseResult() {
  var o = new api.VerifyChallengeResponseResult();
  buildCounterVerifyChallengeResponseResult++;
  if (buildCounterVerifyChallengeResponseResult < 3) {
    o.deviceEnrollmentId = "foo";
    o.devicePermanentId = "foo";
    o.signedPublicKeyAndChallenge = "foo";
    o.verificationOutput = "foo";
  }
  buildCounterVerifyChallengeResponseResult--;
  return o;
}

checkVerifyChallengeResponseResult(api.VerifyChallengeResponseResult o) {
  buildCounterVerifyChallengeResponseResult++;
  if (buildCounterVerifyChallengeResponseResult < 3) {
    unittest.expect(o.deviceEnrollmentId, unittest.equals('foo'));
    unittest.expect(o.devicePermanentId, unittest.equals('foo'));
    unittest.expect(o.signedPublicKeyAndChallenge, unittest.equals('foo'));
    unittest.expect(o.verificationOutput, unittest.equals('foo'));
  }
  buildCounterVerifyChallengeResponseResult--;
}

main() {
  unittest.group("obj-schema-Challenge", () {
    unittest.test("to-json--from-json", () {
      var o = buildChallenge();
      var od = new api.Challenge.fromJson(o.toJson());
      checkChallenge(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-SignedData", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignedData();
      var od = new api.SignedData.fromJson(o.toJson());
      checkSignedData(od);
    });
  });

  unittest.group("obj-schema-VerifyChallengeResponseRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerifyChallengeResponseRequest();
      var od = new api.VerifyChallengeResponseRequest.fromJson(o.toJson());
      checkVerifyChallengeResponseRequest(od);
    });
  });

  unittest.group("obj-schema-VerifyChallengeResponseResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerifyChallengeResponseResult();
      var od = new api.VerifyChallengeResponseResult.fromJson(o.toJson());
      checkVerifyChallengeResponseResult(od);
    });
  });

  unittest.group("resource-ChallengeResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ChallengeResourceApi res = new api.VerifiedaccessApi(mock).challenge;
      var arg_request = buildEmpty();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Empty.fromJson(json);
        checkEmpty(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/challenge"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChallenge());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChallenge(response);
      })));
    });

    unittest.test("method--verify", () {
      var mock = new HttpServerMock();
      api.ChallengeResourceApi res = new api.VerifiedaccessApi(mock).challenge;
      var arg_request = buildVerifyChallengeResponseRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.VerifyChallengeResponseRequest.fromJson(json);
        checkVerifyChallengeResponseRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1/challenge:verify"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildVerifyChallengeResponseResult());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verify(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVerifyChallengeResponseResult(response);
      })));
    });
  });
}
