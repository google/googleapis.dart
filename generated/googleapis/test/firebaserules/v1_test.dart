library googleapis.firebaserules.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/firebaserules/v1.dart' as api;

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
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterArg = 0;
buildArg() {
  var o = new api.Arg();
  buildCounterArg++;
  if (buildCounterArg < 3) {
    o.anyValue = buildEmpty();
    o.exactValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterArg--;
  return o;
}

checkArg(api.Arg o) {
  buildCounterArg++;
  if (buildCounterArg < 3) {
    checkEmpty(o.anyValue);
    var casted1 = (o.exactValue) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted1["bool"], unittest.equals(true));
    unittest.expect(casted1["string"], unittest.equals('foo'));
  }
  buildCounterArg--;
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

core.int buildCounterFile = 0;
buildFile() {
  var o = new api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.content = "foo";
    o.fingerprint = "foo";
    o.name = "foo";
  }
  buildCounterFile--;
  return o;
}

checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterFile--;
}

buildUnnamed3598() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3598(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o[0]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
  var casted3 = (o[1]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
}

core.int buildCounterFunctionCall = 0;
buildFunctionCall() {
  var o = new api.FunctionCall();
  buildCounterFunctionCall++;
  if (buildCounterFunctionCall < 3) {
    o.args = buildUnnamed3598();
    o.function = "foo";
  }
  buildCounterFunctionCall--;
  return o;
}

checkFunctionCall(api.FunctionCall o) {
  buildCounterFunctionCall++;
  if (buildCounterFunctionCall < 3) {
    checkUnnamed3598(o.args);
    unittest.expect(o.function, unittest.equals('foo'));
  }
  buildCounterFunctionCall--;
}

buildUnnamed3599() {
  var o = new core.List<api.Arg>();
  o.add(buildArg());
  o.add(buildArg());
  return o;
}

checkUnnamed3599(core.List<api.Arg> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArg(o[0]);
  checkArg(o[1]);
}

core.int buildCounterFunctionMock = 0;
buildFunctionMock() {
  var o = new api.FunctionMock();
  buildCounterFunctionMock++;
  if (buildCounterFunctionMock < 3) {
    o.args = buildUnnamed3599();
    o.function = "foo";
    o.result = buildResult();
  }
  buildCounterFunctionMock--;
  return o;
}

checkFunctionMock(api.FunctionMock o) {
  buildCounterFunctionMock++;
  if (buildCounterFunctionMock < 3) {
    checkUnnamed3599(o.args);
    unittest.expect(o.function, unittest.equals('foo'));
    checkResult(o.result);
  }
  buildCounterFunctionMock--;
}

core.int buildCounterGetReleaseExecutableResponse = 0;
buildGetReleaseExecutableResponse() {
  var o = new api.GetReleaseExecutableResponse();
  buildCounterGetReleaseExecutableResponse++;
  if (buildCounterGetReleaseExecutableResponse < 3) {
    o.executable = "foo";
    o.executableVersion = "foo";
    o.language = "foo";
    o.rulesetName = "foo";
    o.updateTime = "foo";
  }
  buildCounterGetReleaseExecutableResponse--;
  return o;
}

checkGetReleaseExecutableResponse(api.GetReleaseExecutableResponse o) {
  buildCounterGetReleaseExecutableResponse++;
  if (buildCounterGetReleaseExecutableResponse < 3) {
    unittest.expect(o.executable, unittest.equals('foo'));
    unittest.expect(o.executableVersion, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.rulesetName, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGetReleaseExecutableResponse--;
}

core.int buildCounterIssue = 0;
buildIssue() {
  var o = new api.Issue();
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    o.description = "foo";
    o.severity = "foo";
    o.sourcePosition = buildSourcePosition();
  }
  buildCounterIssue--;
  return o;
}

checkIssue(api.Issue o) {
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    checkSourcePosition(o.sourcePosition);
  }
  buildCounterIssue--;
}

buildUnnamed3600() {
  var o = new core.List<api.Release>();
  o.add(buildRelease());
  o.add(buildRelease());
  return o;
}

checkUnnamed3600(core.List<api.Release> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelease(o[0]);
  checkRelease(o[1]);
}

core.int buildCounterListReleasesResponse = 0;
buildListReleasesResponse() {
  var o = new api.ListReleasesResponse();
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    o.nextPageToken = "foo";
    o.releases = buildUnnamed3600();
  }
  buildCounterListReleasesResponse--;
  return o;
}

checkListReleasesResponse(api.ListReleasesResponse o) {
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3600(o.releases);
  }
  buildCounterListReleasesResponse--;
}

buildUnnamed3601() {
  var o = new core.List<api.Ruleset>();
  o.add(buildRuleset());
  o.add(buildRuleset());
  return o;
}

checkUnnamed3601(core.List<api.Ruleset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuleset(o[0]);
  checkRuleset(o[1]);
}

core.int buildCounterListRulesetsResponse = 0;
buildListRulesetsResponse() {
  var o = new api.ListRulesetsResponse();
  buildCounterListRulesetsResponse++;
  if (buildCounterListRulesetsResponse < 3) {
    o.nextPageToken = "foo";
    o.rulesets = buildUnnamed3601();
  }
  buildCounterListRulesetsResponse--;
  return o;
}

checkListRulesetsResponse(api.ListRulesetsResponse o) {
  buildCounterListRulesetsResponse++;
  if (buildCounterListRulesetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3601(o.rulesets);
  }
  buildCounterListRulesetsResponse--;
}

core.int buildCounterRelease = 0;
buildRelease() {
  var o = new api.Release();
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    o.createTime = "foo";
    o.name = "foo";
    o.rulesetName = "foo";
    o.updateTime = "foo";
  }
  buildCounterRelease--;
  return o;
}

checkRelease(api.Release o) {
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rulesetName, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterRelease--;
}

core.int buildCounterResult = 0;
buildResult() {
  var o = new api.Result();
  buildCounterResult++;
  if (buildCounterResult < 3) {
    o.undefined = buildEmpty();
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterResult--;
  return o;
}

checkResult(api.Result o) {
  buildCounterResult++;
  if (buildCounterResult < 3) {
    checkEmpty(o.undefined);
    var casted4 = (o.value) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted4["bool"], unittest.equals(true));
    unittest.expect(casted4["string"], unittest.equals('foo'));
  }
  buildCounterResult--;
}

core.int buildCounterRuleset = 0;
buildRuleset() {
  var o = new api.Ruleset();
  buildCounterRuleset++;
  if (buildCounterRuleset < 3) {
    o.createTime = "foo";
    o.name = "foo";
    o.source = buildSource();
  }
  buildCounterRuleset--;
  return o;
}

checkRuleset(api.Ruleset o) {
  buildCounterRuleset++;
  if (buildCounterRuleset < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkSource(o.source);
  }
  buildCounterRuleset--;
}

buildUnnamed3602() {
  var o = new core.List<api.File>();
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

checkUnnamed3602(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterSource = 0;
buildSource() {
  var o = new api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.files = buildUnnamed3602();
  }
  buildCounterSource--;
  return o;
}

checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed3602(o.files);
  }
  buildCounterSource--;
}

core.int buildCounterSourcePosition = 0;
buildSourcePosition() {
  var o = new api.SourcePosition();
  buildCounterSourcePosition++;
  if (buildCounterSourcePosition < 3) {
    o.column = 42;
    o.fileName = "foo";
    o.line = 42;
  }
  buildCounterSourcePosition--;
  return o;
}

checkSourcePosition(api.SourcePosition o) {
  buildCounterSourcePosition++;
  if (buildCounterSourcePosition < 3) {
    unittest.expect(o.column, unittest.equals(42));
    unittest.expect(o.fileName, unittest.equals('foo'));
    unittest.expect(o.line, unittest.equals(42));
  }
  buildCounterSourcePosition--;
}

buildUnnamed3603() {
  var o = new core.List<api.FunctionMock>();
  o.add(buildFunctionMock());
  o.add(buildFunctionMock());
  return o;
}

checkUnnamed3603(core.List<api.FunctionMock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFunctionMock(o[0]);
  checkFunctionMock(o[1]);
}

core.int buildCounterTestCase = 0;
buildTestCase() {
  var o = new api.TestCase();
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    o.expectation = "foo";
    o.functionMocks = buildUnnamed3603();
    o.request = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.resource = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterTestCase--;
  return o;
}

checkTestCase(api.TestCase o) {
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    unittest.expect(o.expectation, unittest.equals('foo'));
    checkUnnamed3603(o.functionMocks);
    var casted5 = (o.request) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted5["bool"], unittest.equals(true));
    unittest.expect(casted5["string"], unittest.equals('foo'));
    var casted6 = (o.resource) as core.Map;
    unittest.expect(casted6, unittest.hasLength(3));
    unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted6["bool"], unittest.equals(true));
    unittest.expect(casted6["string"], unittest.equals('foo'));
  }
  buildCounterTestCase--;
}

buildUnnamed3604() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3604(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3605() {
  var o = new core.List<api.FunctionCall>();
  o.add(buildFunctionCall());
  o.add(buildFunctionCall());
  return o;
}

checkUnnamed3605(core.List<api.FunctionCall> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFunctionCall(o[0]);
  checkFunctionCall(o[1]);
}

core.int buildCounterTestResult = 0;
buildTestResult() {
  var o = new api.TestResult();
  buildCounterTestResult++;
  if (buildCounterTestResult < 3) {
    o.debugMessages = buildUnnamed3604();
    o.errorPosition = buildSourcePosition();
    o.functionCalls = buildUnnamed3605();
    o.state = "foo";
  }
  buildCounterTestResult--;
  return o;
}

checkTestResult(api.TestResult o) {
  buildCounterTestResult++;
  if (buildCounterTestResult < 3) {
    checkUnnamed3604(o.debugMessages);
    checkSourcePosition(o.errorPosition);
    checkUnnamed3605(o.functionCalls);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterTestResult--;
}

core.int buildCounterTestRulesetRequest = 0;
buildTestRulesetRequest() {
  var o = new api.TestRulesetRequest();
  buildCounterTestRulesetRequest++;
  if (buildCounterTestRulesetRequest < 3) {
    o.source = buildSource();
    o.testSuite = buildTestSuite();
  }
  buildCounterTestRulesetRequest--;
  return o;
}

checkTestRulesetRequest(api.TestRulesetRequest o) {
  buildCounterTestRulesetRequest++;
  if (buildCounterTestRulesetRequest < 3) {
    checkSource(o.source);
    checkTestSuite(o.testSuite);
  }
  buildCounterTestRulesetRequest--;
}

buildUnnamed3606() {
  var o = new core.List<api.Issue>();
  o.add(buildIssue());
  o.add(buildIssue());
  return o;
}

checkUnnamed3606(core.List<api.Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssue(o[0]);
  checkIssue(o[1]);
}

buildUnnamed3607() {
  var o = new core.List<api.TestResult>();
  o.add(buildTestResult());
  o.add(buildTestResult());
  return o;
}

checkUnnamed3607(core.List<api.TestResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestResult(o[0]);
  checkTestResult(o[1]);
}

core.int buildCounterTestRulesetResponse = 0;
buildTestRulesetResponse() {
  var o = new api.TestRulesetResponse();
  buildCounterTestRulesetResponse++;
  if (buildCounterTestRulesetResponse < 3) {
    o.issues = buildUnnamed3606();
    o.testResults = buildUnnamed3607();
  }
  buildCounterTestRulesetResponse--;
  return o;
}

checkTestRulesetResponse(api.TestRulesetResponse o) {
  buildCounterTestRulesetResponse++;
  if (buildCounterTestRulesetResponse < 3) {
    checkUnnamed3606(o.issues);
    checkUnnamed3607(o.testResults);
  }
  buildCounterTestRulesetResponse--;
}

buildUnnamed3608() {
  var o = new core.List<api.TestCase>();
  o.add(buildTestCase());
  o.add(buildTestCase());
  return o;
}

checkUnnamed3608(core.List<api.TestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestCase(o[0]);
  checkTestCase(o[1]);
}

core.int buildCounterTestSuite = 0;
buildTestSuite() {
  var o = new api.TestSuite();
  buildCounterTestSuite++;
  if (buildCounterTestSuite < 3) {
    o.testCases = buildUnnamed3608();
  }
  buildCounterTestSuite--;
  return o;
}

checkTestSuite(api.TestSuite o) {
  buildCounterTestSuite++;
  if (buildCounterTestSuite < 3) {
    checkUnnamed3608(o.testCases);
  }
  buildCounterTestSuite--;
}

core.int buildCounterUpdateReleaseRequest = 0;
buildUpdateReleaseRequest() {
  var o = new api.UpdateReleaseRequest();
  buildCounterUpdateReleaseRequest++;
  if (buildCounterUpdateReleaseRequest < 3) {
    o.release = buildRelease();
    o.updateMask = "foo";
  }
  buildCounterUpdateReleaseRequest--;
  return o;
}

checkUpdateReleaseRequest(api.UpdateReleaseRequest o) {
  buildCounterUpdateReleaseRequest++;
  if (buildCounterUpdateReleaseRequest < 3) {
    checkRelease(o.release);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdateReleaseRequest--;
}

main() {
  unittest.group("obj-schema-Arg", () {
    unittest.test("to-json--from-json", () {
      var o = buildArg();
      var od = new api.Arg.fromJson(o.toJson());
      checkArg(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-File", () {
    unittest.test("to-json--from-json", () {
      var o = buildFile();
      var od = new api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });

  unittest.group("obj-schema-FunctionCall", () {
    unittest.test("to-json--from-json", () {
      var o = buildFunctionCall();
      var od = new api.FunctionCall.fromJson(o.toJson());
      checkFunctionCall(od);
    });
  });

  unittest.group("obj-schema-FunctionMock", () {
    unittest.test("to-json--from-json", () {
      var o = buildFunctionMock();
      var od = new api.FunctionMock.fromJson(o.toJson());
      checkFunctionMock(od);
    });
  });

  unittest.group("obj-schema-GetReleaseExecutableResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetReleaseExecutableResponse();
      var od = new api.GetReleaseExecutableResponse.fromJson(o.toJson());
      checkGetReleaseExecutableResponse(od);
    });
  });

  unittest.group("obj-schema-Issue", () {
    unittest.test("to-json--from-json", () {
      var o = buildIssue();
      var od = new api.Issue.fromJson(o.toJson());
      checkIssue(od);
    });
  });

  unittest.group("obj-schema-ListReleasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListReleasesResponse();
      var od = new api.ListReleasesResponse.fromJson(o.toJson());
      checkListReleasesResponse(od);
    });
  });

  unittest.group("obj-schema-ListRulesetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListRulesetsResponse();
      var od = new api.ListRulesetsResponse.fromJson(o.toJson());
      checkListRulesetsResponse(od);
    });
  });

  unittest.group("obj-schema-Release", () {
    unittest.test("to-json--from-json", () {
      var o = buildRelease();
      var od = new api.Release.fromJson(o.toJson());
      checkRelease(od);
    });
  });

  unittest.group("obj-schema-Result", () {
    unittest.test("to-json--from-json", () {
      var o = buildResult();
      var od = new api.Result.fromJson(o.toJson());
      checkResult(od);
    });
  });

  unittest.group("obj-schema-Ruleset", () {
    unittest.test("to-json--from-json", () {
      var o = buildRuleset();
      var od = new api.Ruleset.fromJson(o.toJson());
      checkRuleset(od);
    });
  });

  unittest.group("obj-schema-Source", () {
    unittest.test("to-json--from-json", () {
      var o = buildSource();
      var od = new api.Source.fromJson(o.toJson());
      checkSource(od);
    });
  });

  unittest.group("obj-schema-SourcePosition", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourcePosition();
      var od = new api.SourcePosition.fromJson(o.toJson());
      checkSourcePosition(od);
    });
  });

  unittest.group("obj-schema-TestCase", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestCase();
      var od = new api.TestCase.fromJson(o.toJson());
      checkTestCase(od);
    });
  });

  unittest.group("obj-schema-TestResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestResult();
      var od = new api.TestResult.fromJson(o.toJson());
      checkTestResult(od);
    });
  });

  unittest.group("obj-schema-TestRulesetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestRulesetRequest();
      var od = new api.TestRulesetRequest.fromJson(o.toJson());
      checkTestRulesetRequest(od);
    });
  });

  unittest.group("obj-schema-TestRulesetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestRulesetResponse();
      var od = new api.TestRulesetResponse.fromJson(o.toJson());
      checkTestRulesetResponse(od);
    });
  });

  unittest.group("obj-schema-TestSuite", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestSuite();
      var od = new api.TestSuite.fromJson(o.toJson());
      checkTestSuite(od);
    });
  });

  unittest.group("obj-schema-UpdateReleaseRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateReleaseRequest();
      var od = new api.UpdateReleaseRequest.fromJson(o.toJson());
      checkUpdateReleaseRequest(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--test", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.FirebaserulesApi(mock).projects;
      var arg_request = buildTestRulesetRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestRulesetRequest.fromJson(json);
        checkTestRulesetRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildTestRulesetResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .test(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.TestRulesetResponse response) {
        checkTestRulesetResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsReleasesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsReleasesResourceApi res =
          new api.FirebaserulesApi(mock).projects.releases;
      var arg_request = buildRelease();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Release.fromJson(json);
        checkRelease(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildRelease());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Release response) {
        checkRelease(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsReleasesResourceApi res =
          new api.FirebaserulesApi(mock).projects.releases;
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsReleasesResourceApi res =
          new api.FirebaserulesApi(mock).projects.releases;
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildRelease());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Release response) {
        checkRelease(response);
      })));
    });

    unittest.test("method--getExecutable", () {
      var mock = new HttpServerMock();
      api.ProjectsReleasesResourceApi res =
          new api.FirebaserulesApi(mock).projects.releases;
      var arg_name = "foo";
      var arg_executableVersion = "foo";
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
        var queryMap = {};
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
        unittest.expect(queryMap["executableVersion"].first,
            unittest.equals(arg_executableVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGetReleaseExecutableResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getExecutable(arg_name,
              executableVersion: arg_executableVersion, $fields: arg_$fields)
          .then(unittest
              .expectAsync1(((api.GetReleaseExecutableResponse response) {
        checkGetReleaseExecutableResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsReleasesResourceApi res =
          new api.FirebaserulesApi(mock).projects.releases;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
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
        var queryMap = {};
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListReleasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListReleasesResponse response) {
        checkListReleasesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsReleasesResourceApi res =
          new api.FirebaserulesApi(mock).projects.releases;
      var arg_request = buildUpdateReleaseRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateReleaseRequest.fromJson(json);
        checkUpdateReleaseRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildRelease());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Release response) {
        checkRelease(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsReleasesResourceApi res =
          new api.FirebaserulesApi(mock).projects.releases;
      var arg_request = buildRelease();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Release.fromJson(json);
        checkRelease(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildRelease());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Release response) {
        checkRelease(response);
      })));
    });
  });

  unittest.group("resource-ProjectsRulesetsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsRulesetsResourceApi res =
          new api.FirebaserulesApi(mock).projects.rulesets;
      var arg_request = buildRuleset();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Ruleset.fromJson(json);
        checkRuleset(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildRuleset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Ruleset response) {
        checkRuleset(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsRulesetsResourceApi res =
          new api.FirebaserulesApi(mock).projects.rulesets;
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsRulesetsResourceApi res =
          new api.FirebaserulesApi(mock).projects.rulesets;
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildRuleset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Ruleset response) {
        checkRuleset(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsRulesetsResourceApi res =
          new api.FirebaserulesApi(mock).projects.rulesets;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
        var queryMap = {};
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListRulesetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListRulesetsResponse response) {
        checkListRulesetsResponse(response);
      })));
    });
  });
}
