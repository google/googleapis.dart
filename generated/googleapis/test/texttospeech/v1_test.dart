// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
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
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

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

core.List<core.String> buildUnnamed4542() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4542(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAudioConfig = 0;
api.AudioConfig buildAudioConfig() {
  var o = api.AudioConfig();
  buildCounterAudioConfig++;
  if (buildCounterAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.effectsProfileId = buildUnnamed4542();
    o.pitch = 42.0;
    o.sampleRateHertz = 42;
    o.speakingRate = 42.0;
    o.volumeGainDb = 42.0;
  }
  buildCounterAudioConfig--;
  return o;
}

void checkAudioConfig(api.AudioConfig o) {
  buildCounterAudioConfig++;
  if (buildCounterAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    checkUnnamed4542(o.effectsProfileId);
    unittest.expect(o.pitch, unittest.equals(42.0));
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.speakingRate, unittest.equals(42.0));
    unittest.expect(o.volumeGainDb, unittest.equals(42.0));
  }
  buildCounterAudioConfig--;
}

core.List<api.Voice> buildUnnamed4543() {
  var o = <api.Voice>[];
  o.add(buildVoice());
  o.add(buildVoice());
  return o;
}

void checkUnnamed4543(core.List<api.Voice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVoice(o[0]);
  checkVoice(o[1]);
}

core.int buildCounterListVoicesResponse = 0;
api.ListVoicesResponse buildListVoicesResponse() {
  var o = api.ListVoicesResponse();
  buildCounterListVoicesResponse++;
  if (buildCounterListVoicesResponse < 3) {
    o.voices = buildUnnamed4543();
  }
  buildCounterListVoicesResponse--;
  return o;
}

void checkListVoicesResponse(api.ListVoicesResponse o) {
  buildCounterListVoicesResponse++;
  if (buildCounterListVoicesResponse < 3) {
    checkUnnamed4543(o.voices);
  }
  buildCounterListVoicesResponse--;
}

core.int buildCounterSynthesisInput = 0;
api.SynthesisInput buildSynthesisInput() {
  var o = api.SynthesisInput();
  buildCounterSynthesisInput++;
  if (buildCounterSynthesisInput < 3) {
    o.ssml = 'foo';
    o.text = 'foo';
  }
  buildCounterSynthesisInput--;
  return o;
}

void checkSynthesisInput(api.SynthesisInput o) {
  buildCounterSynthesisInput++;
  if (buildCounterSynthesisInput < 3) {
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterSynthesisInput--;
}

core.int buildCounterSynthesizeSpeechRequest = 0;
api.SynthesizeSpeechRequest buildSynthesizeSpeechRequest() {
  var o = api.SynthesizeSpeechRequest();
  buildCounterSynthesizeSpeechRequest++;
  if (buildCounterSynthesizeSpeechRequest < 3) {
    o.audioConfig = buildAudioConfig();
    o.input = buildSynthesisInput();
    o.voice = buildVoiceSelectionParams();
  }
  buildCounterSynthesizeSpeechRequest--;
  return o;
}

void checkSynthesizeSpeechRequest(api.SynthesizeSpeechRequest o) {
  buildCounterSynthesizeSpeechRequest++;
  if (buildCounterSynthesizeSpeechRequest < 3) {
    checkAudioConfig(o.audioConfig);
    checkSynthesisInput(o.input);
    checkVoiceSelectionParams(o.voice);
  }
  buildCounterSynthesizeSpeechRequest--;
}

core.int buildCounterSynthesizeSpeechResponse = 0;
api.SynthesizeSpeechResponse buildSynthesizeSpeechResponse() {
  var o = api.SynthesizeSpeechResponse();
  buildCounterSynthesizeSpeechResponse++;
  if (buildCounterSynthesizeSpeechResponse < 3) {
    o.audioContent = 'foo';
  }
  buildCounterSynthesizeSpeechResponse--;
  return o;
}

void checkSynthesizeSpeechResponse(api.SynthesizeSpeechResponse o) {
  buildCounterSynthesizeSpeechResponse++;
  if (buildCounterSynthesizeSpeechResponse < 3) {
    unittest.expect(o.audioContent, unittest.equals('foo'));
  }
  buildCounterSynthesizeSpeechResponse--;
}

core.List<core.String> buildUnnamed4544() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4544(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVoice = 0;
api.Voice buildVoice() {
  var o = api.Voice();
  buildCounterVoice++;
  if (buildCounterVoice < 3) {
    o.languageCodes = buildUnnamed4544();
    o.name = 'foo';
    o.naturalSampleRateHertz = 42;
    o.ssmlGender = 'foo';
  }
  buildCounterVoice--;
  return o;
}

void checkVoice(api.Voice o) {
  buildCounterVoice++;
  if (buildCounterVoice < 3) {
    checkUnnamed4544(o.languageCodes);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.naturalSampleRateHertz, unittest.equals(42));
    unittest.expect(o.ssmlGender, unittest.equals('foo'));
  }
  buildCounterVoice--;
}

core.int buildCounterVoiceSelectionParams = 0;
api.VoiceSelectionParams buildVoiceSelectionParams() {
  var o = api.VoiceSelectionParams();
  buildCounterVoiceSelectionParams++;
  if (buildCounterVoiceSelectionParams < 3) {
    o.languageCode = 'foo';
    o.name = 'foo';
    o.ssmlGender = 'foo';
  }
  buildCounterVoiceSelectionParams--;
  return o;
}

void checkVoiceSelectionParams(api.VoiceSelectionParams o) {
  buildCounterVoiceSelectionParams++;
  if (buildCounterVoiceSelectionParams < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ssmlGender, unittest.equals('foo'));
  }
  buildCounterVoiceSelectionParams--;
}

void main() {
  unittest.group('obj-schema-AudioConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAudioConfig();
      var od = api.AudioConfig.fromJson(o.toJson());
      checkAudioConfig(od);
    });
  });

  unittest.group('obj-schema-ListVoicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListVoicesResponse();
      var od = api.ListVoicesResponse.fromJson(o.toJson());
      checkListVoicesResponse(od);
    });
  });

  unittest.group('obj-schema-SynthesisInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildSynthesisInput();
      var od = api.SynthesisInput.fromJson(o.toJson());
      checkSynthesisInput(od);
    });
  });

  unittest.group('obj-schema-SynthesizeSpeechRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSynthesizeSpeechRequest();
      var od = api.SynthesizeSpeechRequest.fromJson(o.toJson());
      checkSynthesizeSpeechRequest(od);
    });
  });

  unittest.group('obj-schema-SynthesizeSpeechResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSynthesizeSpeechResponse();
      var od = api.SynthesizeSpeechResponse.fromJson(o.toJson());
      checkSynthesizeSpeechResponse(od);
    });
  });

  unittest.group('obj-schema-Voice', () {
    unittest.test('to-json--from-json', () {
      var o = buildVoice();
      var od = api.Voice.fromJson(o.toJson());
      checkVoice(od);
    });
  });

  unittest.group('obj-schema-VoiceSelectionParams', () {
    unittest.test('to-json--from-json', () {
      var o = buildVoiceSelectionParams();
      var od = api.VoiceSelectionParams.fromJson(o.toJson());
      checkVoiceSelectionParams(od);
    });
  });

  unittest.group('resource-TextResourceApi', () {
    unittest.test('method--synthesize', () {
      var mock = HttpServerMock();
      api.TextResourceApi res = api.TexttospeechApi(mock).text;
      var arg_request = buildSynthesizeSpeechRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SynthesizeSpeechRequest.fromJson(json);
        checkSynthesizeSpeechRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/text:synthesize"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildSynthesizeSpeechResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .synthesize(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSynthesizeSpeechResponse(response);
      })));
    });
  });

  unittest.group('resource-VoicesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.VoicesResourceApi res = api.TexttospeechApi(mock).voices;
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/voices"));
        pathOffset += 9;

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
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListVoicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListVoicesResponse(response);
      })));
    });
  });
}
