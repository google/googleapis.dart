library googleapis_beta.commentanalyzer.v1alpha1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/commentanalyzer/v1alpha1.dart' as api;

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

buildUnnamed5058() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5058(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5059() {
  var o = new core.Map<core.String, api.AttributeParameters>();
  o["x"] = buildAttributeParameters();
  o["y"] = buildAttributeParameters();
  return o;
}

checkUnnamed5059(core.Map<core.String, api.AttributeParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeParameters(o["x"]);
  checkAttributeParameters(o["y"]);
}

core.int buildCounterAnalyzeCommentRequest = 0;
buildAnalyzeCommentRequest() {
  var o = new api.AnalyzeCommentRequest();
  buildCounterAnalyzeCommentRequest++;
  if (buildCounterAnalyzeCommentRequest < 3) {
    o.clientToken = "foo";
    o.comment = buildTextEntry();
    o.communityId = "foo";
    o.context = buildContext();
    o.doNotStore = true;
    o.languages = buildUnnamed5058();
    o.requestedAttributes = buildUnnamed5059();
    o.sessionId = "foo";
    o.spanAnnotations = true;
  }
  buildCounterAnalyzeCommentRequest--;
  return o;
}

checkAnalyzeCommentRequest(api.AnalyzeCommentRequest o) {
  buildCounterAnalyzeCommentRequest++;
  if (buildCounterAnalyzeCommentRequest < 3) {
    unittest.expect(o.clientToken, unittest.equals('foo'));
    checkTextEntry(o.comment);
    unittest.expect(o.communityId, unittest.equals('foo'));
    checkContext(o.context);
    unittest.expect(o.doNotStore, unittest.isTrue);
    checkUnnamed5058(o.languages);
    checkUnnamed5059(o.requestedAttributes);
    unittest.expect(o.sessionId, unittest.equals('foo'));
    unittest.expect(o.spanAnnotations, unittest.isTrue);
  }
  buildCounterAnalyzeCommentRequest--;
}

buildUnnamed5060() {
  var o = new core.Map<core.String, api.AttributeScores>();
  o["x"] = buildAttributeScores();
  o["y"] = buildAttributeScores();
  return o;
}

checkUnnamed5060(core.Map<core.String, api.AttributeScores> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeScores(o["x"]);
  checkAttributeScores(o["y"]);
}

buildUnnamed5061() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5061(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5062() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5062(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAnalyzeCommentResponse = 0;
buildAnalyzeCommentResponse() {
  var o = new api.AnalyzeCommentResponse();
  buildCounterAnalyzeCommentResponse++;
  if (buildCounterAnalyzeCommentResponse < 3) {
    o.attributeScores = buildUnnamed5060();
    o.clientToken = "foo";
    o.detectedLanguages = buildUnnamed5061();
    o.languages = buildUnnamed5062();
  }
  buildCounterAnalyzeCommentResponse--;
  return o;
}

checkAnalyzeCommentResponse(api.AnalyzeCommentResponse o) {
  buildCounterAnalyzeCommentResponse++;
  if (buildCounterAnalyzeCommentResponse < 3) {
    checkUnnamed5060(o.attributeScores);
    unittest.expect(o.clientToken, unittest.equals('foo'));
    checkUnnamed5061(o.detectedLanguages);
    checkUnnamed5062(o.languages);
  }
  buildCounterAnalyzeCommentResponse--;
}

core.int buildCounterArticleAndParentComment = 0;
buildArticleAndParentComment() {
  var o = new api.ArticleAndParentComment();
  buildCounterArticleAndParentComment++;
  if (buildCounterArticleAndParentComment < 3) {
    o.article = buildTextEntry();
    o.parentComment = buildTextEntry();
  }
  buildCounterArticleAndParentComment--;
  return o;
}

checkArticleAndParentComment(api.ArticleAndParentComment o) {
  buildCounterArticleAndParentComment++;
  if (buildCounterArticleAndParentComment < 3) {
    checkTextEntry(o.article);
    checkTextEntry(o.parentComment);
  }
  buildCounterArticleAndParentComment--;
}

core.int buildCounterAttributeParameters = 0;
buildAttributeParameters() {
  var o = new api.AttributeParameters();
  buildCounterAttributeParameters++;
  if (buildCounterAttributeParameters < 3) {
    o.scoreThreshold = 42.0;
    o.scoreType = "foo";
  }
  buildCounterAttributeParameters--;
  return o;
}

checkAttributeParameters(api.AttributeParameters o) {
  buildCounterAttributeParameters++;
  if (buildCounterAttributeParameters < 3) {
    unittest.expect(o.scoreThreshold, unittest.equals(42.0));
    unittest.expect(o.scoreType, unittest.equals('foo'));
  }
  buildCounterAttributeParameters--;
}

buildUnnamed5063() {
  var o = new core.List<api.SpanScore>();
  o.add(buildSpanScore());
  o.add(buildSpanScore());
  return o;
}

checkUnnamed5063(core.List<api.SpanScore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpanScore(o[0]);
  checkSpanScore(o[1]);
}

core.int buildCounterAttributeScores = 0;
buildAttributeScores() {
  var o = new api.AttributeScores();
  buildCounterAttributeScores++;
  if (buildCounterAttributeScores < 3) {
    o.spanScores = buildUnnamed5063();
    o.summaryScore = buildScore();
  }
  buildCounterAttributeScores--;
  return o;
}

checkAttributeScores(api.AttributeScores o) {
  buildCounterAttributeScores++;
  if (buildCounterAttributeScores < 3) {
    checkUnnamed5063(o.spanScores);
    checkScore(o.summaryScore);
  }
  buildCounterAttributeScores--;
}

buildUnnamed5064() {
  var o = new core.List<api.TextEntry>();
  o.add(buildTextEntry());
  o.add(buildTextEntry());
  return o;
}

checkUnnamed5064(core.List<api.TextEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextEntry(o[0]);
  checkTextEntry(o[1]);
}

core.int buildCounterContext = 0;
buildContext() {
  var o = new api.Context();
  buildCounterContext++;
  if (buildCounterContext < 3) {
    o.articleAndParentComment = buildArticleAndParentComment();
    o.entries = buildUnnamed5064();
  }
  buildCounterContext--;
  return o;
}

checkContext(api.Context o) {
  buildCounterContext++;
  if (buildCounterContext < 3) {
    checkArticleAndParentComment(o.articleAndParentComment);
    checkUnnamed5064(o.entries);
  }
  buildCounterContext--;
}

core.int buildCounterScore = 0;
buildScore() {
  var o = new api.Score();
  buildCounterScore++;
  if (buildCounterScore < 3) {
    o.type = "foo";
    o.value = 42.0;
  }
  buildCounterScore--;
  return o;
}

checkScore(api.Score o) {
  buildCounterScore++;
  if (buildCounterScore < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterScore--;
}

core.int buildCounterSpanScore = 0;
buildSpanScore() {
  var o = new api.SpanScore();
  buildCounterSpanScore++;
  if (buildCounterSpanScore < 3) {
    o.begin = 42;
    o.end = 42;
    o.score = buildScore();
  }
  buildCounterSpanScore--;
  return o;
}

checkSpanScore(api.SpanScore o) {
  buildCounterSpanScore++;
  if (buildCounterSpanScore < 3) {
    unittest.expect(o.begin, unittest.equals(42));
    unittest.expect(o.end, unittest.equals(42));
    checkScore(o.score);
  }
  buildCounterSpanScore--;
}

buildUnnamed5065() {
  var o = new core.Map<core.String, api.AttributeScores>();
  o["x"] = buildAttributeScores();
  o["y"] = buildAttributeScores();
  return o;
}

checkUnnamed5065(core.Map<core.String, api.AttributeScores> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeScores(o["x"]);
  checkAttributeScores(o["y"]);
}

buildUnnamed5066() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5066(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSuggestCommentScoreRequest = 0;
buildSuggestCommentScoreRequest() {
  var o = new api.SuggestCommentScoreRequest();
  buildCounterSuggestCommentScoreRequest++;
  if (buildCounterSuggestCommentScoreRequest < 3) {
    o.attributeScores = buildUnnamed5065();
    o.clientToken = "foo";
    o.comment = buildTextEntry();
    o.communityId = "foo";
    o.context = buildContext();
    o.languages = buildUnnamed5066();
    o.sessionId = "foo";
  }
  buildCounterSuggestCommentScoreRequest--;
  return o;
}

checkSuggestCommentScoreRequest(api.SuggestCommentScoreRequest o) {
  buildCounterSuggestCommentScoreRequest++;
  if (buildCounterSuggestCommentScoreRequest < 3) {
    checkUnnamed5065(o.attributeScores);
    unittest.expect(o.clientToken, unittest.equals('foo'));
    checkTextEntry(o.comment);
    unittest.expect(o.communityId, unittest.equals('foo'));
    checkContext(o.context);
    checkUnnamed5066(o.languages);
    unittest.expect(o.sessionId, unittest.equals('foo'));
  }
  buildCounterSuggestCommentScoreRequest--;
}

buildUnnamed5067() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5067(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5068() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5068(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSuggestCommentScoreResponse = 0;
buildSuggestCommentScoreResponse() {
  var o = new api.SuggestCommentScoreResponse();
  buildCounterSuggestCommentScoreResponse++;
  if (buildCounterSuggestCommentScoreResponse < 3) {
    o.clientToken = "foo";
    o.detectedLanguages = buildUnnamed5067();
    o.requestedLanguages = buildUnnamed5068();
  }
  buildCounterSuggestCommentScoreResponse--;
  return o;
}

checkSuggestCommentScoreResponse(api.SuggestCommentScoreResponse o) {
  buildCounterSuggestCommentScoreResponse++;
  if (buildCounterSuggestCommentScoreResponse < 3) {
    unittest.expect(o.clientToken, unittest.equals('foo'));
    checkUnnamed5067(o.detectedLanguages);
    checkUnnamed5068(o.requestedLanguages);
  }
  buildCounterSuggestCommentScoreResponse--;
}

core.int buildCounterTextEntry = 0;
buildTextEntry() {
  var o = new api.TextEntry();
  buildCounterTextEntry++;
  if (buildCounterTextEntry < 3) {
    o.text = "foo";
    o.type = "foo";
  }
  buildCounterTextEntry--;
  return o;
}

checkTextEntry(api.TextEntry o) {
  buildCounterTextEntry++;
  if (buildCounterTextEntry < 3) {
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterTextEntry--;
}

main() {
  unittest.group("obj-schema-AnalyzeCommentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnalyzeCommentRequest();
      var od = new api.AnalyzeCommentRequest.fromJson(o.toJson());
      checkAnalyzeCommentRequest(od);
    });
  });

  unittest.group("obj-schema-AnalyzeCommentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnalyzeCommentResponse();
      var od = new api.AnalyzeCommentResponse.fromJson(o.toJson());
      checkAnalyzeCommentResponse(od);
    });
  });

  unittest.group("obj-schema-ArticleAndParentComment", () {
    unittest.test("to-json--from-json", () {
      var o = buildArticleAndParentComment();
      var od = new api.ArticleAndParentComment.fromJson(o.toJson());
      checkArticleAndParentComment(od);
    });
  });

  unittest.group("obj-schema-AttributeParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttributeParameters();
      var od = new api.AttributeParameters.fromJson(o.toJson());
      checkAttributeParameters(od);
    });
  });

  unittest.group("obj-schema-AttributeScores", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttributeScores();
      var od = new api.AttributeScores.fromJson(o.toJson());
      checkAttributeScores(od);
    });
  });

  unittest.group("obj-schema-Context", () {
    unittest.test("to-json--from-json", () {
      var o = buildContext();
      var od = new api.Context.fromJson(o.toJson());
      checkContext(od);
    });
  });

  unittest.group("obj-schema-Score", () {
    unittest.test("to-json--from-json", () {
      var o = buildScore();
      var od = new api.Score.fromJson(o.toJson());
      checkScore(od);
    });
  });

  unittest.group("obj-schema-SpanScore", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpanScore();
      var od = new api.SpanScore.fromJson(o.toJson());
      checkSpanScore(od);
    });
  });

  unittest.group("obj-schema-SuggestCommentScoreRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestCommentScoreRequest();
      var od = new api.SuggestCommentScoreRequest.fromJson(o.toJson());
      checkSuggestCommentScoreRequest(od);
    });
  });

  unittest.group("obj-schema-SuggestCommentScoreResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestCommentScoreResponse();
      var od = new api.SuggestCommentScoreResponse.fromJson(o.toJson());
      checkSuggestCommentScoreResponse(od);
    });
  });

  unittest.group("obj-schema-TextEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextEntry();
      var od = new api.TextEntry.fromJson(o.toJson());
      checkTextEntry(od);
    });
  });

  unittest.group("resource-CommentsResourceApi", () {
    unittest.test("method--analyze", () {
      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.CommentanalyzerApi(mock).comments;
      var arg_request = buildAnalyzeCommentRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AnalyzeCommentRequest.fromJson(json);
        checkAnalyzeCommentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1alpha1/comments:analyze"));
        pathOffset += 25;

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
        var resp = convert.json.encode(buildAnalyzeCommentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .analyze(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAnalyzeCommentResponse(response);
      })));
    });

    unittest.test("method--suggestscore", () {
      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.CommentanalyzerApi(mock).comments;
      var arg_request = buildSuggestCommentScoreRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SuggestCommentScoreRequest.fromJson(json);
        checkSuggestCommentScoreRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("v1alpha1/comments:suggestscore"));
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
        var resp = convert.json.encode(buildSuggestCommentScoreResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .suggestscore(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSuggestCommentScoreResponse(response);
      })));
    });
  });
}
