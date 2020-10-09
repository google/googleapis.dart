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

buildUnnamed2365() {
  var o = new core.List<api.ExpressionReport>();
  o.add(buildExpressionReport());
  o.add(buildExpressionReport());
  return o;
}

checkUnnamed2365(core.List<api.ExpressionReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExpressionReport(o[0]);
  checkExpressionReport(o[1]);
}

buildUnnamed2366() {
  var o = new core.List<api.ValueCount>();
  o.add(buildValueCount());
  o.add(buildValueCount());
  return o;
}

checkUnnamed2366(core.List<api.ValueCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueCount(o[0]);
  checkValueCount(o[1]);
}

core.int buildCounterExpressionReport = 0;
buildExpressionReport() {
  var o = new api.ExpressionReport();
  buildCounterExpressionReport++;
  if (buildCounterExpressionReport < 3) {
    o.children = buildUnnamed2365();
    o.sourcePosition = buildSourcePosition();
    o.values = buildUnnamed2366();
  }
  buildCounterExpressionReport--;
  return o;
}

checkExpressionReport(api.ExpressionReport o) {
  buildCounterExpressionReport++;
  if (buildCounterExpressionReport < 3) {
    checkUnnamed2365(o.children);
    checkSourcePosition(o.sourcePosition);
    checkUnnamed2366(o.values);
  }
  buildCounterExpressionReport--;
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

buildUnnamed2367() {
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

checkUnnamed2367(core.List<core.Object> o) {
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
    o.args = buildUnnamed2367();
    o.function = "foo";
  }
  buildCounterFunctionCall--;
  return o;
}

checkFunctionCall(api.FunctionCall o) {
  buildCounterFunctionCall++;
  if (buildCounterFunctionCall < 3) {
    checkUnnamed2367(o.args);
    unittest.expect(o.function, unittest.equals('foo'));
  }
  buildCounterFunctionCall--;
}

buildUnnamed2368() {
  var o = new core.List<api.Arg>();
  o.add(buildArg());
  o.add(buildArg());
  return o;
}

checkUnnamed2368(core.List<api.Arg> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArg(o[0]);
  checkArg(o[1]);
}

core.int buildCounterFunctionMock = 0;
buildFunctionMock() {
  var o = new api.FunctionMock();
  buildCounterFunctionMock++;
  if (buildCounterFunctionMock < 3) {
    o.args = buildUnnamed2368();
    o.function = "foo";
    o.result = buildResult();
  }
  buildCounterFunctionMock--;
  return o;
}

checkFunctionMock(api.FunctionMock o) {
  buildCounterFunctionMock++;
  if (buildCounterFunctionMock < 3) {
    checkUnnamed2368(o.args);
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
    o.syncTime = "foo";
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
    unittest.expect(o.syncTime, unittest.equals('foo'));
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

buildUnnamed2369() {
  var o = new core.List<api.Release>();
  o.add(buildRelease());
  o.add(buildRelease());
  return o;
}

checkUnnamed2369(core.List<api.Release> o) {
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
    o.releases = buildUnnamed2369();
  }
  buildCounterListReleasesResponse--;
  return o;
}

checkListReleasesResponse(api.ListReleasesResponse o) {
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2369(o.releases);
  }
  buildCounterListReleasesResponse--;
}

buildUnnamed2370() {
  var o = new core.List<api.Ruleset>();
  o.add(buildRuleset());
  o.add(buildRuleset());
  return o;
}

checkUnnamed2370(core.List<api.Ruleset> o) {
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
    o.rulesets = buildUnnamed2370();
  }
  buildCounterListRulesetsResponse--;
  return o;
}

checkListRulesetsResponse(api.ListRulesetsResponse o) {
  buildCounterListRulesetsResponse++;
  if (buildCounterListRulesetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2370(o.rulesets);
  }
  buildCounterListRulesetsResponse--;
}

buildUnnamed2371() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2371(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMetadata = 0;
buildMetadata() {
  var o = new api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.services = buildUnnamed2371();
  }
  buildCounterMetadata--;
  return o;
}

checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkUnnamed2371(o.services);
  }
  buildCounterMetadata--;
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
    o.metadata = buildMetadata();
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
    checkMetadata(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkSource(o.source);
  }
  buildCounterRuleset--;
}

buildUnnamed2372() {
  var o = new core.List<api.File>();
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

checkUnnamed2372(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterSource = 0;
buildSource() {
  var o = new api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.files = buildUnnamed2372();
  }
  buildCounterSource--;
  return o;
}

checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed2372(o.files);
  }
  buildCounterSource--;
}

core.int buildCounterSourcePosition = 0;
buildSourcePosition() {
  var o = new api.SourcePosition();
  buildCounterSourcePosition++;
  if (buildCounterSourcePosition < 3) {
    o.column = 42;
    o.currentOffset = 42;
    o.endOffset = 42;
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
    unittest.expect(o.currentOffset, unittest.equals(42));
    unittest.expect(o.endOffset, unittest.equals(42));
    unittest.expect(o.fileName, unittest.equals('foo'));
    unittest.expect(o.line, unittest.equals(42));
  }
  buildCounterSourcePosition--;
}

buildUnnamed2373() {
  var o = new core.List<api.FunctionMock>();
  o.add(buildFunctionMock());
  o.add(buildFunctionMock());
  return o;
}

checkUnnamed2373(core.List<api.FunctionMock> o) {
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
    o.expressionReportLevel = "foo";
    o.functionMocks = buildUnnamed2373();
    o.pathEncoding = "foo";
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
    unittest.expect(o.expressionReportLevel, unittest.equals('foo'));
    checkUnnamed2373(o.functionMocks);
    unittest.expect(o.pathEncoding, unittest.equals('foo'));
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

buildUnnamed2374() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2374(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2375() {
  var o = new core.List<api.ExpressionReport>();
  o.add(buildExpressionReport());
  o.add(buildExpressionReport());
  return o;
}

checkUnnamed2375(core.List<api.ExpressionReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExpressionReport(o[0]);
  checkExpressionReport(o[1]);
}

buildUnnamed2376() {
  var o = new core.List<api.FunctionCall>();
  o.add(buildFunctionCall());
  o.add(buildFunctionCall());
  return o;
}

checkUnnamed2376(core.List<api.FunctionCall> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFunctionCall(o[0]);
  checkFunctionCall(o[1]);
}

buildUnnamed2377() {
  var o = new core.List<api.VisitedExpression>();
  o.add(buildVisitedExpression());
  o.add(buildVisitedExpression());
  return o;
}

checkUnnamed2377(core.List<api.VisitedExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVisitedExpression(o[0]);
  checkVisitedExpression(o[1]);
}

core.int buildCounterTestResult = 0;
buildTestResult() {
  var o = new api.TestResult();
  buildCounterTestResult++;
  if (buildCounterTestResult < 3) {
    o.debugMessages = buildUnnamed2374();
    o.errorPosition = buildSourcePosition();
    o.expressionReports = buildUnnamed2375();
    o.functionCalls = buildUnnamed2376();
    o.state = "foo";
    o.visitedExpressions = buildUnnamed2377();
  }
  buildCounterTestResult--;
  return o;
}

checkTestResult(api.TestResult o) {
  buildCounterTestResult++;
  if (buildCounterTestResult < 3) {
    checkUnnamed2374(o.debugMessages);
    checkSourcePosition(o.errorPosition);
    checkUnnamed2375(o.expressionReports);
    checkUnnamed2376(o.functionCalls);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed2377(o.visitedExpressions);
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

buildUnnamed2378() {
  var o = new core.List<api.Issue>();
  o.add(buildIssue());
  o.add(buildIssue());
  return o;
}

checkUnnamed2378(core.List<api.Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssue(o[0]);
  checkIssue(o[1]);
}

buildUnnamed2379() {
  var o = new core.List<api.TestResult>();
  o.add(buildTestResult());
  o.add(buildTestResult());
  return o;
}

checkUnnamed2379(core.List<api.TestResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestResult(o[0]);
  checkTestResult(o[1]);
}

core.int buildCounterTestRulesetResponse = 0;
buildTestRulesetResponse() {
  var o = new api.TestRulesetResponse();
  buildCounterTestRulesetResponse++;
  if (buildCounterTestRulesetResponse < 3) {
    o.issues = buildUnnamed2378();
    o.testResults = buildUnnamed2379();
  }
  buildCounterTestRulesetResponse--;
  return o;
}

checkTestRulesetResponse(api.TestRulesetResponse o) {
  buildCounterTestRulesetResponse++;
  if (buildCounterTestRulesetResponse < 3) {
    checkUnnamed2378(o.issues);
    checkUnnamed2379(o.testResults);
  }
  buildCounterTestRulesetResponse--;
}

buildUnnamed2380() {
  var o = new core.List<api.TestCase>();
  o.add(buildTestCase());
  o.add(buildTestCase());
  return o;
}

checkUnnamed2380(core.List<api.TestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestCase(o[0]);
  checkTestCase(o[1]);
}

core.int buildCounterTestSuite = 0;
buildTestSuite() {
  var o = new api.TestSuite();
  buildCounterTestSuite++;
  if (buildCounterTestSuite < 3) {
    o.testCases = buildUnnamed2380();
  }
  buildCounterTestSuite--;
  return o;
}

checkTestSuite(api.TestSuite o) {
  buildCounterTestSuite++;
  if (buildCounterTestSuite < 3) {
    checkUnnamed2380(o.testCases);
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

core.int buildCounterValueCount = 0;
buildValueCount() {
  var o = new api.ValueCount();
  buildCounterValueCount++;
  if (buildCounterValueCount < 3) {
    o.count = 42;
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterValueCount--;
  return o;
}

checkValueCount(api.ValueCount o) {
  buildCounterValueCount++;
  if (buildCounterValueCount < 3) {
    unittest.expect(o.count, unittest.equals(42));
    var casted7 = (o.value) as core.Map;
    unittest.expect(casted7, unittest.hasLength(3));
    unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted7["bool"], unittest.equals(true));
    unittest.expect(casted7["string"], unittest.equals('foo'));
  }
  buildCounterValueCount--;
}

core.int buildCounterVisitedExpression = 0;
buildVisitedExpression() {
  var o = new api.VisitedExpression();
  buildCounterVisitedExpression++;
  if (buildCounterVisitedExpression < 3) {
    o.sourcePosition = buildSourcePosition();
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterVisitedExpression--;
  return o;
}

checkVisitedExpression(api.VisitedExpression o) {
  buildCounterVisitedExpression++;
  if (buildCounterVisitedExpression < 3) {
    checkSourcePosition(o.sourcePosition);
    var casted8 = (o.value) as core.Map;
    unittest.expect(casted8, unittest.hasLength(3));
    unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted8["bool"], unittest.equals(true));
    unittest.expect(casted8["string"], unittest.equals('foo'));
  }
  buildCounterVisitedExpression--;
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

  unittest.group("obj-schema-ExpressionReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpressionReport();
      var od = new api.ExpressionReport.fromJson(o.toJson());
      checkExpressionReport(od);
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

  unittest.group("obj-schema-Metadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetadata();
      var od = new api.Metadata.fromJson(o.toJson());
      checkMetadata(od);
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

  unittest.group("obj-schema-ValueCount", () {
    unittest.test("to-json--from-json", () {
      var o = buildValueCount();
      var od = new api.ValueCount.fromJson(o.toJson());
      checkValueCount(od);
    });
  });

  unittest.group("obj-schema-VisitedExpression", () {
    unittest.test("to-json--from-json", () {
      var o = buildVisitedExpression();
      var od = new api.VisitedExpression.fromJson(o.toJson());
      checkVisitedExpression(od);
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
        var resp = convert.json.encode(buildTestRulesetResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .test(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildRelease());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildRelease());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        unittest.expect(queryMap["executableVersion"].first,
            unittest.equals(arg_executableVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetReleaseExecutableResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getExecutable(arg_name,
              executableVersion: arg_executableVersion, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetReleaseExecutableResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsReleasesResourceApi res =
          new api.FirebaserulesApi(mock).projects.releases;
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
        var resp = convert.json.encode(buildListReleasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildRelease());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildRuleset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildRuleset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRulesetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRulesetsResponse(response);
      })));
    });
  });
}
