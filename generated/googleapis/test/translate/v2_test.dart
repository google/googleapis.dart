library googleapis.translate.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/translate/v2.dart' as api;

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

buildUnnamed4136() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4136(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDetectLanguageRequest = 0;
buildDetectLanguageRequest() {
  var o = new api.DetectLanguageRequest();
  buildCounterDetectLanguageRequest++;
  if (buildCounterDetectLanguageRequest < 3) {
    o.q = buildUnnamed4136();
  }
  buildCounterDetectLanguageRequest--;
  return o;
}

checkDetectLanguageRequest(api.DetectLanguageRequest o) {
  buildCounterDetectLanguageRequest++;
  if (buildCounterDetectLanguageRequest < 3) {
    checkUnnamed4136(o.q);
  }
  buildCounterDetectLanguageRequest--;
}

buildUnnamed4137() {
  var o = new core.List<api.DetectionsResource>();
  o.add(buildDetectionsResource());
  o.add(buildDetectionsResource());
  return o;
}

checkUnnamed4137(core.List<api.DetectionsResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectionsResource(o[0]);
  checkDetectionsResource(o[1]);
}

core.int buildCounterDetectionsListResponse = 0;
buildDetectionsListResponse() {
  var o = new api.DetectionsListResponse();
  buildCounterDetectionsListResponse++;
  if (buildCounterDetectionsListResponse < 3) {
    o.detections = buildUnnamed4137();
  }
  buildCounterDetectionsListResponse--;
  return o;
}

checkDetectionsListResponse(api.DetectionsListResponse o) {
  buildCounterDetectionsListResponse++;
  if (buildCounterDetectionsListResponse < 3) {
    checkUnnamed4137(o.detections);
  }
  buildCounterDetectionsListResponse--;
}

core.int buildCounterDetectionsResourceElement = 0;
buildDetectionsResourceElement() {
  var o = new api.DetectionsResourceElement();
  buildCounterDetectionsResourceElement++;
  if (buildCounterDetectionsResourceElement < 3) {
    o.confidence = 42.0;
    o.isReliable = true;
    o.language = "foo";
  }
  buildCounterDetectionsResourceElement--;
  return o;
}

checkDetectionsResourceElement(api.DetectionsResourceElement o) {
  buildCounterDetectionsResourceElement++;
  if (buildCounterDetectionsResourceElement < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.isReliable, unittest.isTrue);
    unittest.expect(o.language, unittest.equals('foo'));
  }
  buildCounterDetectionsResourceElement--;
}

buildDetectionsResource() {
  var o = new api.DetectionsResource();
  o.add(buildDetectionsResourceElement());
  o.add(buildDetectionsResourceElement());
  return o;
}

checkDetectionsResource(api.DetectionsResource o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectionsResourceElement(o[0]);
  checkDetectionsResourceElement(o[1]);
}

core.int buildCounterGetSupportedLanguagesRequest = 0;
buildGetSupportedLanguagesRequest() {
  var o = new api.GetSupportedLanguagesRequest();
  buildCounterGetSupportedLanguagesRequest++;
  if (buildCounterGetSupportedLanguagesRequest < 3) {
    o.target = "foo";
  }
  buildCounterGetSupportedLanguagesRequest--;
  return o;
}

checkGetSupportedLanguagesRequest(api.GetSupportedLanguagesRequest o) {
  buildCounterGetSupportedLanguagesRequest++;
  if (buildCounterGetSupportedLanguagesRequest < 3) {
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterGetSupportedLanguagesRequest--;
}

buildUnnamed4138() {
  var o = new core.List<api.LanguagesResource>();
  o.add(buildLanguagesResource());
  o.add(buildLanguagesResource());
  return o;
}

checkUnnamed4138(core.List<api.LanguagesResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLanguagesResource(o[0]);
  checkLanguagesResource(o[1]);
}

core.int buildCounterLanguagesListResponse = 0;
buildLanguagesListResponse() {
  var o = new api.LanguagesListResponse();
  buildCounterLanguagesListResponse++;
  if (buildCounterLanguagesListResponse < 3) {
    o.languages = buildUnnamed4138();
  }
  buildCounterLanguagesListResponse--;
  return o;
}

checkLanguagesListResponse(api.LanguagesListResponse o) {
  buildCounterLanguagesListResponse++;
  if (buildCounterLanguagesListResponse < 3) {
    checkUnnamed4138(o.languages);
  }
  buildCounterLanguagesListResponse--;
}

core.int buildCounterLanguagesResource = 0;
buildLanguagesResource() {
  var o = new api.LanguagesResource();
  buildCounterLanguagesResource++;
  if (buildCounterLanguagesResource < 3) {
    o.language = "foo";
    o.name = "foo";
  }
  buildCounterLanguagesResource--;
  return o;
}

checkLanguagesResource(api.LanguagesResource o) {
  buildCounterLanguagesResource++;
  if (buildCounterLanguagesResource < 3) {
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLanguagesResource--;
}

buildUnnamed4139() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4139(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTranslateTextRequest = 0;
buildTranslateTextRequest() {
  var o = new api.TranslateTextRequest();
  buildCounterTranslateTextRequest++;
  if (buildCounterTranslateTextRequest < 3) {
    o.format = "foo";
    o.model = "foo";
    o.q = buildUnnamed4139();
    o.source = "foo";
    o.target = "foo";
  }
  buildCounterTranslateTextRequest--;
  return o;
}

checkTranslateTextRequest(api.TranslateTextRequest o) {
  buildCounterTranslateTextRequest++;
  if (buildCounterTranslateTextRequest < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    checkUnnamed4139(o.q);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterTranslateTextRequest--;
}

buildUnnamed4140() {
  var o = new core.List<api.TranslationsResource>();
  o.add(buildTranslationsResource());
  o.add(buildTranslationsResource());
  return o;
}

checkUnnamed4140(core.List<api.TranslationsResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslationsResource(o[0]);
  checkTranslationsResource(o[1]);
}

core.int buildCounterTranslationsListResponse = 0;
buildTranslationsListResponse() {
  var o = new api.TranslationsListResponse();
  buildCounterTranslationsListResponse++;
  if (buildCounterTranslationsListResponse < 3) {
    o.translations = buildUnnamed4140();
  }
  buildCounterTranslationsListResponse--;
  return o;
}

checkTranslationsListResponse(api.TranslationsListResponse o) {
  buildCounterTranslationsListResponse++;
  if (buildCounterTranslationsListResponse < 3) {
    checkUnnamed4140(o.translations);
  }
  buildCounterTranslationsListResponse--;
}

core.int buildCounterTranslationsResource = 0;
buildTranslationsResource() {
  var o = new api.TranslationsResource();
  buildCounterTranslationsResource++;
  if (buildCounterTranslationsResource < 3) {
    o.detectedSourceLanguage = "foo";
    o.model = "foo";
    o.translatedText = "foo";
  }
  buildCounterTranslationsResource--;
  return o;
}

checkTranslationsResource(api.TranslationsResource o) {
  buildCounterTranslationsResource++;
  if (buildCounterTranslationsResource < 3) {
    unittest.expect(o.detectedSourceLanguage, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.translatedText, unittest.equals('foo'));
  }
  buildCounterTranslationsResource--;
}

buildUnnamed4141() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4141(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4142() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4142(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4143() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4143(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-DetectLanguageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectLanguageRequest();
      var od = new api.DetectLanguageRequest.fromJson(o.toJson());
      checkDetectLanguageRequest(od);
    });
  });

  unittest.group("obj-schema-DetectionsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectionsListResponse();
      var od = new api.DetectionsListResponse.fromJson(o.toJson());
      checkDetectionsListResponse(od);
    });
  });

  unittest.group("obj-schema-DetectionsResourceElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectionsResourceElement();
      var od = new api.DetectionsResourceElement.fromJson(o.toJson());
      checkDetectionsResourceElement(od);
    });
  });

  unittest.group("obj-schema-DetectionsResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectionsResource();
      var od = new api.DetectionsResource.fromJson(o.toJson());
      checkDetectionsResource(od);
    });
  });

  unittest.group("obj-schema-GetSupportedLanguagesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetSupportedLanguagesRequest();
      var od = new api.GetSupportedLanguagesRequest.fromJson(o.toJson());
      checkGetSupportedLanguagesRequest(od);
    });
  });

  unittest.group("obj-schema-LanguagesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLanguagesListResponse();
      var od = new api.LanguagesListResponse.fromJson(o.toJson());
      checkLanguagesListResponse(od);
    });
  });

  unittest.group("obj-schema-LanguagesResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildLanguagesResource();
      var od = new api.LanguagesResource.fromJson(o.toJson());
      checkLanguagesResource(od);
    });
  });

  unittest.group("obj-schema-TranslateTextRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTranslateTextRequest();
      var od = new api.TranslateTextRequest.fromJson(o.toJson());
      checkTranslateTextRequest(od);
    });
  });

  unittest.group("obj-schema-TranslationsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTranslationsListResponse();
      var od = new api.TranslationsListResponse.fromJson(o.toJson());
      checkTranslationsListResponse(od);
    });
  });

  unittest.group("obj-schema-TranslationsResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildTranslationsResource();
      var od = new api.TranslationsResource.fromJson(o.toJson());
      checkTranslationsResource(od);
    });
  });

  unittest.group("resource-DetectionsResourceApi", () {
    unittest.test("method--detect", () {
      var mock = new HttpServerMock();
      api.DetectionsResourceApi res = new api.TranslateApi(mock).detections;
      var arg_request = buildDetectLanguageRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DetectLanguageRequest.fromJson(json);
        checkDetectLanguageRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("language/translate/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v2/detect"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode({'data': buildDetectionsListResponse()});
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detect(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDetectionsListResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DetectionsResourceApi res = new api.TranslateApi(mock).detections;
      var arg_q = buildUnnamed4141();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("language/translate/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v2/detect"));
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
        unittest.expect(queryMap["q"], unittest.equals(arg_q));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode({'data': buildDetectionsListResponse()});
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_q, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDetectionsListResponse(response);
      })));
    });
  });

  unittest.group("resource-LanguagesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.LanguagesResourceApi res = new api.TranslateApi(mock).languages;
      var arg_target = "foo";
      var arg_model = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("language/translate/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v2/languages"));
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
        unittest.expect(queryMap["target"].first, unittest.equals(arg_target));
        unittest.expect(queryMap["model"].first, unittest.equals(arg_model));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode({'data': buildLanguagesListResponse()});
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(target: arg_target, model: arg_model, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLanguagesListResponse(response);
      })));
    });
  });

  unittest.group("resource-TranslationsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TranslationsResourceApi res = new api.TranslateApi(mock).translations;
      var arg_q = buildUnnamed4142();
      var arg_target = "foo";
      var arg_cid = buildUnnamed4143();
      var arg_format = "foo";
      var arg_model = "foo";
      var arg_source = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("language/translate/"));
        pathOffset += 19;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("v2"));
        pathOffset += 2;

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
        unittest.expect(queryMap["q"], unittest.equals(arg_q));
        unittest.expect(queryMap["target"].first, unittest.equals(arg_target));
        unittest.expect(queryMap["cid"], unittest.equals(arg_cid));
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["model"].first, unittest.equals(arg_model));
        unittest.expect(queryMap["source"].first, unittest.equals(arg_source));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode({'data': buildTranslationsListResponse()});
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_q, arg_target,
              cid: arg_cid,
              format: arg_format,
              model: arg_model,
              source: arg_source,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTranslationsListResponse(response);
      })));
    });

    unittest.test("method--translate", () {
      var mock = new HttpServerMock();
      api.TranslationsResourceApi res = new api.TranslateApi(mock).translations;
      var arg_request = buildTranslateTextRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TranslateTextRequest.fromJson(json);
        checkTranslateTextRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("language/translate/"));
        pathOffset += 19;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 2), unittest.equals("v2"));
        pathOffset += 2;

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
        var resp =
            convert.json.encode({'data': buildTranslationsListResponse()});
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .translate(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTranslationsListResponse(response);
      })));
    });
  });
}
