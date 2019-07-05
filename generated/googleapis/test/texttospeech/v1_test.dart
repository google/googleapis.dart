library googleapis.texttospeech.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/texttospeech/v1.dart' as api;

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

buildUnnamed3698() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3698(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAudioConfig = 0;
buildAudioConfig() {
  var o = new api.AudioConfig();
  buildCounterAudioConfig++;
  if (buildCounterAudioConfig < 3) {
    o.audioEncoding = "foo";
    o.effectsProfileId = buildUnnamed3698();
    o.pitch = 42.0;
    o.sampleRateHertz = 42;
    o.speakingRate = 42.0;
    o.volumeGainDb = 42.0;
  }
  buildCounterAudioConfig--;
  return o;
}

checkAudioConfig(api.AudioConfig o) {
  buildCounterAudioConfig++;
  if (buildCounterAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    checkUnnamed3698(o.effectsProfileId);
    unittest.expect(o.pitch, unittest.equals(42.0));
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.speakingRate, unittest.equals(42.0));
    unittest.expect(o.volumeGainDb, unittest.equals(42.0));
  }
  buildCounterAudioConfig--;
}

buildUnnamed3699() {
  var o = new core.List<api.Voice>();
  o.add(buildVoice());
  o.add(buildVoice());
  return o;
}

checkUnnamed3699(core.List<api.Voice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVoice(o[0]);
  checkVoice(o[1]);
}

core.int buildCounterListVoicesResponse = 0;
buildListVoicesResponse() {
  var o = new api.ListVoicesResponse();
  buildCounterListVoicesResponse++;
  if (buildCounterListVoicesResponse < 3) {
    o.voices = buildUnnamed3699();
  }
  buildCounterListVoicesResponse--;
  return o;
}

checkListVoicesResponse(api.ListVoicesResponse o) {
  buildCounterListVoicesResponse++;
  if (buildCounterListVoicesResponse < 3) {
    checkUnnamed3699(o.voices);
  }
  buildCounterListVoicesResponse--;
}

core.int buildCounterSynthesisInput = 0;
buildSynthesisInput() {
  var o = new api.SynthesisInput();
  buildCounterSynthesisInput++;
  if (buildCounterSynthesisInput < 3) {
    o.ssml = "foo";
    o.text = "foo";
  }
  buildCounterSynthesisInput--;
  return o;
}

checkSynthesisInput(api.SynthesisInput o) {
  buildCounterSynthesisInput++;
  if (buildCounterSynthesisInput < 3) {
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterSynthesisInput--;
}

core.int buildCounterSynthesizeSpeechRequest = 0;
buildSynthesizeSpeechRequest() {
  var o = new api.SynthesizeSpeechRequest();
  buildCounterSynthesizeSpeechRequest++;
  if (buildCounterSynthesizeSpeechRequest < 3) {
    o.audioConfig = buildAudioConfig();
    o.input = buildSynthesisInput();
    o.voice = buildVoiceSelectionParams();
  }
  buildCounterSynthesizeSpeechRequest--;
  return o;
}

checkSynthesizeSpeechRequest(api.SynthesizeSpeechRequest o) {
  buildCounterSynthesizeSpeechRequest++;
  if (buildCounterSynthesizeSpeechRequest < 3) {
    checkAudioConfig(o.audioConfig);
    checkSynthesisInput(o.input);
    checkVoiceSelectionParams(o.voice);
  }
  buildCounterSynthesizeSpeechRequest--;
}

core.int buildCounterSynthesizeSpeechResponse = 0;
buildSynthesizeSpeechResponse() {
  var o = new api.SynthesizeSpeechResponse();
  buildCounterSynthesizeSpeechResponse++;
  if (buildCounterSynthesizeSpeechResponse < 3) {
    o.audioContent = "foo";
  }
  buildCounterSynthesizeSpeechResponse--;
  return o;
}

checkSynthesizeSpeechResponse(api.SynthesizeSpeechResponse o) {
  buildCounterSynthesizeSpeechResponse++;
  if (buildCounterSynthesizeSpeechResponse < 3) {
    unittest.expect(o.audioContent, unittest.equals('foo'));
  }
  buildCounterSynthesizeSpeechResponse--;
}

buildUnnamed3700() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3700(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVoice = 0;
buildVoice() {
  var o = new api.Voice();
  buildCounterVoice++;
  if (buildCounterVoice < 3) {
    o.languageCodes = buildUnnamed3700();
    o.name = "foo";
    o.naturalSampleRateHertz = 42;
    o.ssmlGender = "foo";
  }
  buildCounterVoice--;
  return o;
}

checkVoice(api.Voice o) {
  buildCounterVoice++;
  if (buildCounterVoice < 3) {
    checkUnnamed3700(o.languageCodes);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.naturalSampleRateHertz, unittest.equals(42));
    unittest.expect(o.ssmlGender, unittest.equals('foo'));
  }
  buildCounterVoice--;
}

core.int buildCounterVoiceSelectionParams = 0;
buildVoiceSelectionParams() {
  var o = new api.VoiceSelectionParams();
  buildCounterVoiceSelectionParams++;
  if (buildCounterVoiceSelectionParams < 3) {
    o.languageCode = "foo";
    o.name = "foo";
    o.ssmlGender = "foo";
  }
  buildCounterVoiceSelectionParams--;
  return o;
}

checkVoiceSelectionParams(api.VoiceSelectionParams o) {
  buildCounterVoiceSelectionParams++;
  if (buildCounterVoiceSelectionParams < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ssmlGender, unittest.equals('foo'));
  }
  buildCounterVoiceSelectionParams--;
}

main() {
  unittest.group("obj-schema-AudioConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAudioConfig();
      var od = new api.AudioConfig.fromJson(o.toJson());
      checkAudioConfig(od);
    });
  });

  unittest.group("obj-schema-ListVoicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListVoicesResponse();
      var od = new api.ListVoicesResponse.fromJson(o.toJson());
      checkListVoicesResponse(od);
    });
  });

  unittest.group("obj-schema-SynthesisInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildSynthesisInput();
      var od = new api.SynthesisInput.fromJson(o.toJson());
      checkSynthesisInput(od);
    });
  });

  unittest.group("obj-schema-SynthesizeSpeechRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSynthesizeSpeechRequest();
      var od = new api.SynthesizeSpeechRequest.fromJson(o.toJson());
      checkSynthesizeSpeechRequest(od);
    });
  });

  unittest.group("obj-schema-SynthesizeSpeechResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSynthesizeSpeechResponse();
      var od = new api.SynthesizeSpeechResponse.fromJson(o.toJson());
      checkSynthesizeSpeechResponse(od);
    });
  });

  unittest.group("obj-schema-Voice", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoice();
      var od = new api.Voice.fromJson(o.toJson());
      checkVoice(od);
    });
  });

  unittest.group("obj-schema-VoiceSelectionParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoiceSelectionParams();
      var od = new api.VoiceSelectionParams.fromJson(o.toJson());
      checkVoiceSelectionParams(od);
    });
  });

  unittest.group("resource-TextResourceApi", () {
    unittest.test("method--synthesize", () {
      var mock = new HttpServerMock();
      api.TextResourceApi res = new api.TexttospeechApi(mock).text;
      var arg_request = buildSynthesizeSpeechRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SynthesizeSpeechRequest.fromJson(json);
        checkSynthesizeSpeechRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/text:synthesize"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildSynthesizeSpeechResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .synthesize(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSynthesizeSpeechResponse(response);
      })));
    });
  });

  unittest.group("resource-VoicesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.VoicesResourceApi res = new api.TexttospeechApi(mock).voices;
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/voices"));
        pathOffset += 9;

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
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListVoicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListVoicesResponse(response);
      })));
    });
  });
}
