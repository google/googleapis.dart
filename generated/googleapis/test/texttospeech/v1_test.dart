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

import 'package:googleapis/texttospeech/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed5882() => [
      'foo',
      'foo',
    ];

void checkUnnamed5882(core.List<core.String> o) {
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

core.int buildCounterAudioConfig = 0;
api.AudioConfig buildAudioConfig() {
  final o = api.AudioConfig();
  buildCounterAudioConfig++;
  if (buildCounterAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.effectsProfileId = buildUnnamed5882();
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
    unittest.expect(
      o.audioEncoding!,
      unittest.equals('foo'),
    );
    checkUnnamed5882(o.effectsProfileId!);
    unittest.expect(
      o.pitch!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.sampleRateHertz!,
      unittest.equals(42),
    );
    unittest.expect(
      o.speakingRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.volumeGainDb!,
      unittest.equals(42.0),
    );
  }
  buildCounterAudioConfig--;
}

core.List<api.Voice> buildUnnamed5883() => [
      buildVoice(),
      buildVoice(),
    ];

void checkUnnamed5883(core.List<api.Voice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVoice(o[0]);
  checkVoice(o[1]);
}

core.int buildCounterListVoicesResponse = 0;
api.ListVoicesResponse buildListVoicesResponse() {
  final o = api.ListVoicesResponse();
  buildCounterListVoicesResponse++;
  if (buildCounterListVoicesResponse < 3) {
    o.voices = buildUnnamed5883();
  }
  buildCounterListVoicesResponse--;
  return o;
}

void checkListVoicesResponse(api.ListVoicesResponse o) {
  buildCounterListVoicesResponse++;
  if (buildCounterListVoicesResponse < 3) {
    checkUnnamed5883(o.voices!);
  }
  buildCounterListVoicesResponse--;
}

core.int buildCounterSynthesisInput = 0;
api.SynthesisInput buildSynthesisInput() {
  final o = api.SynthesisInput();
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
    unittest.expect(
      o.ssml!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterSynthesisInput--;
}

core.int buildCounterSynthesizeSpeechRequest = 0;
api.SynthesizeSpeechRequest buildSynthesizeSpeechRequest() {
  final o = api.SynthesizeSpeechRequest();
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
    checkAudioConfig(o.audioConfig!);
    checkSynthesisInput(o.input!);
    checkVoiceSelectionParams(o.voice!);
  }
  buildCounterSynthesizeSpeechRequest--;
}

core.int buildCounterSynthesizeSpeechResponse = 0;
api.SynthesizeSpeechResponse buildSynthesizeSpeechResponse() {
  final o = api.SynthesizeSpeechResponse();
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
    unittest.expect(
      o.audioContent!,
      unittest.equals('foo'),
    );
  }
  buildCounterSynthesizeSpeechResponse--;
}

core.List<core.String> buildUnnamed5884() => [
      'foo',
      'foo',
    ];

void checkUnnamed5884(core.List<core.String> o) {
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

core.int buildCounterVoice = 0;
api.Voice buildVoice() {
  final o = api.Voice();
  buildCounterVoice++;
  if (buildCounterVoice < 3) {
    o.languageCodes = buildUnnamed5884();
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
    checkUnnamed5884(o.languageCodes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.naturalSampleRateHertz!,
      unittest.equals(42),
    );
    unittest.expect(
      o.ssmlGender!,
      unittest.equals('foo'),
    );
  }
  buildCounterVoice--;
}

core.int buildCounterVoiceSelectionParams = 0;
api.VoiceSelectionParams buildVoiceSelectionParams() {
  final o = api.VoiceSelectionParams();
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
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ssmlGender!,
      unittest.equals('foo'),
    );
  }
  buildCounterVoiceSelectionParams--;
}

void main() {
  unittest.group('obj-schema-AudioConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAudioConfig(od);
    });
  });

  unittest.group('obj-schema-ListVoicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVoicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVoicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVoicesResponse(od);
    });
  });

  unittest.group('obj-schema-SynthesisInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSynthesisInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SynthesisInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSynthesisInput(od);
    });
  });

  unittest.group('obj-schema-SynthesizeSpeechRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSynthesizeSpeechRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SynthesizeSpeechRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSynthesizeSpeechRequest(od);
    });
  });

  unittest.group('obj-schema-SynthesizeSpeechResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSynthesizeSpeechResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SynthesizeSpeechResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSynthesizeSpeechResponse(od);
    });
  });

  unittest.group('obj-schema-Voice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Voice.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVoice(od);
    });
  });

  unittest.group('obj-schema-VoiceSelectionParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoiceSelectionParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoiceSelectionParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoiceSelectionParams(od);
    });
  });

  unittest.group('resource-TextResource', () {
    unittest.test('method--synthesize', () async {
      final mock = HttpServerMock();
      final res = api.TexttospeechApi(mock).text;
      final arg_request = buildSynthesizeSpeechRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SynthesizeSpeechRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSynthesizeSpeechRequest(obj);

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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1/text:synthesize'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildSynthesizeSpeechResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.synthesize(arg_request, $fields: arg_$fields);
      checkSynthesizeSpeechResponse(response as api.SynthesizeSpeechResponse);
    });
  });

  unittest.group('resource-VoicesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TexttospeechApi(mock).voices;
      final arg_languageCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/voices'),
        );
        pathOffset += 9;

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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListVoicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(languageCode: arg_languageCode, $fields: arg_$fields);
      checkListVoicesResponse(response as api.ListVoicesResponse);
    });
  });
}
