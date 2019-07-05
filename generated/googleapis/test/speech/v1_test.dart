library googleapis.speech.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/speech/v1.dart' as api;

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

buildUnnamed2519() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed2519(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed2519();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2519(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.int buildCounterLongRunningRecognizeMetadata = 0;
buildLongRunningRecognizeMetadata() {
  var o = new api.LongRunningRecognizeMetadata();
  buildCounterLongRunningRecognizeMetadata++;
  if (buildCounterLongRunningRecognizeMetadata < 3) {
    o.lastUpdateTime = "foo";
    o.progressPercent = 42;
    o.startTime = "foo";
  }
  buildCounterLongRunningRecognizeMetadata--;
  return o;
}

checkLongRunningRecognizeMetadata(api.LongRunningRecognizeMetadata o) {
  buildCounterLongRunningRecognizeMetadata++;
  if (buildCounterLongRunningRecognizeMetadata < 3) {
    unittest.expect(o.lastUpdateTime, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterLongRunningRecognizeMetadata--;
}

core.int buildCounterLongRunningRecognizeRequest = 0;
buildLongRunningRecognizeRequest() {
  var o = new api.LongRunningRecognizeRequest();
  buildCounterLongRunningRecognizeRequest++;
  if (buildCounterLongRunningRecognizeRequest < 3) {
    o.audio = buildRecognitionAudio();
    o.config = buildRecognitionConfig();
  }
  buildCounterLongRunningRecognizeRequest--;
  return o;
}

checkLongRunningRecognizeRequest(api.LongRunningRecognizeRequest o) {
  buildCounterLongRunningRecognizeRequest++;
  if (buildCounterLongRunningRecognizeRequest < 3) {
    checkRecognitionAudio(o.audio);
    checkRecognitionConfig(o.config);
  }
  buildCounterLongRunningRecognizeRequest--;
}

buildUnnamed2520() {
  var o = new core.List<api.SpeechRecognitionResult>();
  o.add(buildSpeechRecognitionResult());
  o.add(buildSpeechRecognitionResult());
  return o;
}

checkUnnamed2520(core.List<api.SpeechRecognitionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionResult(o[0]);
  checkSpeechRecognitionResult(o[1]);
}

core.int buildCounterLongRunningRecognizeResponse = 0;
buildLongRunningRecognizeResponse() {
  var o = new api.LongRunningRecognizeResponse();
  buildCounterLongRunningRecognizeResponse++;
  if (buildCounterLongRunningRecognizeResponse < 3) {
    o.results = buildUnnamed2520();
  }
  buildCounterLongRunningRecognizeResponse--;
  return o;
}

checkLongRunningRecognizeResponse(api.LongRunningRecognizeResponse o) {
  buildCounterLongRunningRecognizeResponse++;
  if (buildCounterLongRunningRecognizeResponse < 3) {
    checkUnnamed2520(o.results);
  }
  buildCounterLongRunningRecognizeResponse--;
}

buildUnnamed2521() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2521(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed2522() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2522(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2521();
    o.name = "foo";
    o.response = buildUnnamed2522();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2521(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2522(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterRecognitionAudio = 0;
buildRecognitionAudio() {
  var o = new api.RecognitionAudio();
  buildCounterRecognitionAudio++;
  if (buildCounterRecognitionAudio < 3) {
    o.content = "foo";
    o.uri = "foo";
  }
  buildCounterRecognitionAudio--;
  return o;
}

checkRecognitionAudio(api.RecognitionAudio o) {
  buildCounterRecognitionAudio++;
  if (buildCounterRecognitionAudio < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterRecognitionAudio--;
}

buildUnnamed2523() {
  var o = new core.List<api.SpeechContext>();
  o.add(buildSpeechContext());
  o.add(buildSpeechContext());
  return o;
}

checkUnnamed2523(core.List<api.SpeechContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechContext(o[0]);
  checkSpeechContext(o[1]);
}

core.int buildCounterRecognitionConfig = 0;
buildRecognitionConfig() {
  var o = new api.RecognitionConfig();
  buildCounterRecognitionConfig++;
  if (buildCounterRecognitionConfig < 3) {
    o.audioChannelCount = 42;
    o.enableAutomaticPunctuation = true;
    o.enableSeparateRecognitionPerChannel = true;
    o.enableWordTimeOffsets = true;
    o.encoding = "foo";
    o.languageCode = "foo";
    o.maxAlternatives = 42;
    o.metadata = buildRecognitionMetadata();
    o.model = "foo";
    o.profanityFilter = true;
    o.sampleRateHertz = 42;
    o.speechContexts = buildUnnamed2523();
    o.useEnhanced = true;
  }
  buildCounterRecognitionConfig--;
  return o;
}

checkRecognitionConfig(api.RecognitionConfig o) {
  buildCounterRecognitionConfig++;
  if (buildCounterRecognitionConfig < 3) {
    unittest.expect(o.audioChannelCount, unittest.equals(42));
    unittest.expect(o.enableAutomaticPunctuation, unittest.isTrue);
    unittest.expect(o.enableSeparateRecognitionPerChannel, unittest.isTrue);
    unittest.expect(o.enableWordTimeOffsets, unittest.isTrue);
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.maxAlternatives, unittest.equals(42));
    checkRecognitionMetadata(o.metadata);
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.profanityFilter, unittest.isTrue);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    checkUnnamed2523(o.speechContexts);
    unittest.expect(o.useEnhanced, unittest.isTrue);
  }
  buildCounterRecognitionConfig--;
}

core.int buildCounterRecognitionMetadata = 0;
buildRecognitionMetadata() {
  var o = new api.RecognitionMetadata();
  buildCounterRecognitionMetadata++;
  if (buildCounterRecognitionMetadata < 3) {
    o.audioTopic = "foo";
    o.industryNaicsCodeOfAudio = 42;
    o.interactionType = "foo";
    o.microphoneDistance = "foo";
    o.obfuscatedId = "foo";
    o.originalMediaType = "foo";
    o.originalMimeType = "foo";
    o.recordingDeviceName = "foo";
    o.recordingDeviceType = "foo";
  }
  buildCounterRecognitionMetadata--;
  return o;
}

checkRecognitionMetadata(api.RecognitionMetadata o) {
  buildCounterRecognitionMetadata++;
  if (buildCounterRecognitionMetadata < 3) {
    unittest.expect(o.audioTopic, unittest.equals('foo'));
    unittest.expect(o.industryNaicsCodeOfAudio, unittest.equals(42));
    unittest.expect(o.interactionType, unittest.equals('foo'));
    unittest.expect(o.microphoneDistance, unittest.equals('foo'));
    unittest.expect(o.obfuscatedId, unittest.equals('foo'));
    unittest.expect(o.originalMediaType, unittest.equals('foo'));
    unittest.expect(o.originalMimeType, unittest.equals('foo'));
    unittest.expect(o.recordingDeviceName, unittest.equals('foo'));
    unittest.expect(o.recordingDeviceType, unittest.equals('foo'));
  }
  buildCounterRecognitionMetadata--;
}

core.int buildCounterRecognizeRequest = 0;
buildRecognizeRequest() {
  var o = new api.RecognizeRequest();
  buildCounterRecognizeRequest++;
  if (buildCounterRecognizeRequest < 3) {
    o.audio = buildRecognitionAudio();
    o.config = buildRecognitionConfig();
  }
  buildCounterRecognizeRequest--;
  return o;
}

checkRecognizeRequest(api.RecognizeRequest o) {
  buildCounterRecognizeRequest++;
  if (buildCounterRecognizeRequest < 3) {
    checkRecognitionAudio(o.audio);
    checkRecognitionConfig(o.config);
  }
  buildCounterRecognizeRequest--;
}

buildUnnamed2524() {
  var o = new core.List<api.SpeechRecognitionResult>();
  o.add(buildSpeechRecognitionResult());
  o.add(buildSpeechRecognitionResult());
  return o;
}

checkUnnamed2524(core.List<api.SpeechRecognitionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionResult(o[0]);
  checkSpeechRecognitionResult(o[1]);
}

core.int buildCounterRecognizeResponse = 0;
buildRecognizeResponse() {
  var o = new api.RecognizeResponse();
  buildCounterRecognizeResponse++;
  if (buildCounterRecognizeResponse < 3) {
    o.results = buildUnnamed2524();
  }
  buildCounterRecognizeResponse--;
  return o;
}

checkRecognizeResponse(api.RecognizeResponse o) {
  buildCounterRecognizeResponse++;
  if (buildCounterRecognizeResponse < 3) {
    checkUnnamed2524(o.results);
  }
  buildCounterRecognizeResponse--;
}

buildUnnamed2525() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2525(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSpeechContext = 0;
buildSpeechContext() {
  var o = new api.SpeechContext();
  buildCounterSpeechContext++;
  if (buildCounterSpeechContext < 3) {
    o.phrases = buildUnnamed2525();
  }
  buildCounterSpeechContext--;
  return o;
}

checkSpeechContext(api.SpeechContext o) {
  buildCounterSpeechContext++;
  if (buildCounterSpeechContext < 3) {
    checkUnnamed2525(o.phrases);
  }
  buildCounterSpeechContext--;
}

buildUnnamed2526() {
  var o = new core.List<api.WordInfo>();
  o.add(buildWordInfo());
  o.add(buildWordInfo());
  return o;
}

checkUnnamed2526(core.List<api.WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWordInfo(o[0]);
  checkWordInfo(o[1]);
}

core.int buildCounterSpeechRecognitionAlternative = 0;
buildSpeechRecognitionAlternative() {
  var o = new api.SpeechRecognitionAlternative();
  buildCounterSpeechRecognitionAlternative++;
  if (buildCounterSpeechRecognitionAlternative < 3) {
    o.confidence = 42.0;
    o.transcript = "foo";
    o.words = buildUnnamed2526();
  }
  buildCounterSpeechRecognitionAlternative--;
  return o;
}

checkSpeechRecognitionAlternative(api.SpeechRecognitionAlternative o) {
  buildCounterSpeechRecognitionAlternative++;
  if (buildCounterSpeechRecognitionAlternative < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.transcript, unittest.equals('foo'));
    checkUnnamed2526(o.words);
  }
  buildCounterSpeechRecognitionAlternative--;
}

buildUnnamed2527() {
  var o = new core.List<api.SpeechRecognitionAlternative>();
  o.add(buildSpeechRecognitionAlternative());
  o.add(buildSpeechRecognitionAlternative());
  return o;
}

checkUnnamed2527(core.List<api.SpeechRecognitionAlternative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionAlternative(o[0]);
  checkSpeechRecognitionAlternative(o[1]);
}

core.int buildCounterSpeechRecognitionResult = 0;
buildSpeechRecognitionResult() {
  var o = new api.SpeechRecognitionResult();
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    o.alternatives = buildUnnamed2527();
    o.channelTag = 42;
  }
  buildCounterSpeechRecognitionResult--;
  return o;
}

checkSpeechRecognitionResult(api.SpeechRecognitionResult o) {
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    checkUnnamed2527(o.alternatives);
    unittest.expect(o.channelTag, unittest.equals(42));
  }
  buildCounterSpeechRecognitionResult--;
}

buildUnnamed2528() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2528(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed2529() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2528());
  o.add(buildUnnamed2528());
  return o;
}

checkUnnamed2529(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2528(o[0]);
  checkUnnamed2528(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2529();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2529(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterWordInfo = 0;
buildWordInfo() {
  var o = new api.WordInfo();
  buildCounterWordInfo++;
  if (buildCounterWordInfo < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
    o.word = "foo";
  }
  buildCounterWordInfo--;
  return o;
}

checkWordInfo(api.WordInfo o) {
  buildCounterWordInfo++;
  if (buildCounterWordInfo < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.word, unittest.equals('foo'));
  }
  buildCounterWordInfo--;
}

main() {
  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-LongRunningRecognizeMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildLongRunningRecognizeMetadata();
      var od = new api.LongRunningRecognizeMetadata.fromJson(o.toJson());
      checkLongRunningRecognizeMetadata(od);
    });
  });

  unittest.group("obj-schema-LongRunningRecognizeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildLongRunningRecognizeRequest();
      var od = new api.LongRunningRecognizeRequest.fromJson(o.toJson());
      checkLongRunningRecognizeRequest(od);
    });
  });

  unittest.group("obj-schema-LongRunningRecognizeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLongRunningRecognizeResponse();
      var od = new api.LongRunningRecognizeResponse.fromJson(o.toJson());
      checkLongRunningRecognizeResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-RecognitionAudio", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecognitionAudio();
      var od = new api.RecognitionAudio.fromJson(o.toJson());
      checkRecognitionAudio(od);
    });
  });

  unittest.group("obj-schema-RecognitionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecognitionConfig();
      var od = new api.RecognitionConfig.fromJson(o.toJson());
      checkRecognitionConfig(od);
    });
  });

  unittest.group("obj-schema-RecognitionMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecognitionMetadata();
      var od = new api.RecognitionMetadata.fromJson(o.toJson());
      checkRecognitionMetadata(od);
    });
  });

  unittest.group("obj-schema-RecognizeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecognizeRequest();
      var od = new api.RecognizeRequest.fromJson(o.toJson());
      checkRecognizeRequest(od);
    });
  });

  unittest.group("obj-schema-RecognizeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecognizeResponse();
      var od = new api.RecognizeResponse.fromJson(o.toJson());
      checkRecognizeResponse(od);
    });
  });

  unittest.group("obj-schema-SpeechContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpeechContext();
      var od = new api.SpeechContext.fromJson(o.toJson());
      checkSpeechContext(od);
    });
  });

  unittest.group("obj-schema-SpeechRecognitionAlternative", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpeechRecognitionAlternative();
      var od = new api.SpeechRecognitionAlternative.fromJson(o.toJson());
      checkSpeechRecognitionAlternative(od);
    });
  });

  unittest.group("obj-schema-SpeechRecognitionResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpeechRecognitionResult();
      var od = new api.SpeechRecognitionResult.fromJson(o.toJson());
      checkSpeechRecognitionResult(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-WordInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildWordInfo();
      var od = new api.WordInfo.fromJson(o.toJson());
      checkWordInfo(od);
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.SpeechApi(mock).operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/operations/"));
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.SpeechApi(mock).operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1/operations"));
        pathOffset += 13;

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
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              name: arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.SpeechApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.SpeechApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-SpeechResourceApi", () {
    unittest.test("method--longrunningrecognize", () {
      var mock = new HttpServerMock();
      api.SpeechResourceApi res = new api.SpeechApi(mock).speech;
      var arg_request = buildLongRunningRecognizeRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LongRunningRecognizeRequest.fromJson(json);
        checkLongRunningRecognizeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("v1/speech:longrunningrecognize"));
        pathOffset += 30;

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .longrunningrecognize(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--recognize", () {
      var mock = new HttpServerMock();
      api.SpeechResourceApi res = new api.SpeechApi(mock).speech;
      var arg_request = buildRecognizeRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RecognizeRequest.fromJson(json);
        checkRecognizeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1/speech:recognize"));
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
        var resp = convert.json.encode(buildRecognizeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .recognize(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRecognizeResponse(response);
      })));
    });
  });
}
