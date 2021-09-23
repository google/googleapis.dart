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

import 'package:googleapis/firebaserules/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterArg = 0;
api.Arg buildArg() {
  final o = api.Arg();
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

void checkArg(api.Arg o) {
  buildCounterArg++;
  if (buildCounterArg < 3) {
    checkEmpty(o.anyValue!);
    var casted1 = (o.exactValue!) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(
      casted1['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted1['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted1['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterArg--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
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

core.List<api.ExpressionReport> buildUnnamed0() => [
      buildExpressionReport(),
      buildExpressionReport(),
    ];

void checkUnnamed0(core.List<api.ExpressionReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExpressionReport(o[0]);
  checkExpressionReport(o[1]);
}

core.List<api.ValueCount> buildUnnamed1() => [
      buildValueCount(),
      buildValueCount(),
    ];

void checkUnnamed1(core.List<api.ValueCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueCount(o[0]);
  checkValueCount(o[1]);
}

core.int buildCounterExpressionReport = 0;
api.ExpressionReport buildExpressionReport() {
  final o = api.ExpressionReport();
  buildCounterExpressionReport++;
  if (buildCounterExpressionReport < 3) {
    o.children = buildUnnamed0();
    o.sourcePosition = buildSourcePosition();
    o.values = buildUnnamed1();
  }
  buildCounterExpressionReport--;
  return o;
}

void checkExpressionReport(api.ExpressionReport o) {
  buildCounterExpressionReport++;
  if (buildCounterExpressionReport < 3) {
    checkUnnamed0(o.children!);
    checkSourcePosition(o.sourcePosition!);
    checkUnnamed1(o.values!);
  }
  buildCounterExpressionReport--;
}

core.int buildCounterFile = 0;
api.File buildFile() {
  final o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.content = 'foo';
    o.fingerprint = 'foo';
    o.name = 'foo';
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterFile--;
}

core.List<core.Object> buildUnnamed2() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed2(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o[0]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
  var casted3 = (o[1]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterFunctionCall = 0;
api.FunctionCall buildFunctionCall() {
  final o = api.FunctionCall();
  buildCounterFunctionCall++;
  if (buildCounterFunctionCall < 3) {
    o.args = buildUnnamed2();
    o.function = 'foo';
  }
  buildCounterFunctionCall--;
  return o;
}

void checkFunctionCall(api.FunctionCall o) {
  buildCounterFunctionCall++;
  if (buildCounterFunctionCall < 3) {
    checkUnnamed2(o.args!);
    unittest.expect(
      o.function!,
      unittest.equals('foo'),
    );
  }
  buildCounterFunctionCall--;
}

core.List<api.Arg> buildUnnamed3() => [
      buildArg(),
      buildArg(),
    ];

void checkUnnamed3(core.List<api.Arg> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArg(o[0]);
  checkArg(o[1]);
}

core.int buildCounterFunctionMock = 0;
api.FunctionMock buildFunctionMock() {
  final o = api.FunctionMock();
  buildCounterFunctionMock++;
  if (buildCounterFunctionMock < 3) {
    o.args = buildUnnamed3();
    o.function = 'foo';
    o.result = buildResult();
  }
  buildCounterFunctionMock--;
  return o;
}

void checkFunctionMock(api.FunctionMock o) {
  buildCounterFunctionMock++;
  if (buildCounterFunctionMock < 3) {
    checkUnnamed3(o.args!);
    unittest.expect(
      o.function!,
      unittest.equals('foo'),
    );
    checkResult(o.result!);
  }
  buildCounterFunctionMock--;
}

core.int buildCounterGetReleaseExecutableResponse = 0;
api.GetReleaseExecutableResponse buildGetReleaseExecutableResponse() {
  final o = api.GetReleaseExecutableResponse();
  buildCounterGetReleaseExecutableResponse++;
  if (buildCounterGetReleaseExecutableResponse < 3) {
    o.executable = 'foo';
    o.executableVersion = 'foo';
    o.language = 'foo';
    o.rulesetName = 'foo';
    o.syncTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGetReleaseExecutableResponse--;
  return o;
}

void checkGetReleaseExecutableResponse(api.GetReleaseExecutableResponse o) {
  buildCounterGetReleaseExecutableResponse++;
  if (buildCounterGetReleaseExecutableResponse < 3) {
    unittest.expect(
      o.executable!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executableVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rulesetName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetReleaseExecutableResponse--;
}

core.int buildCounterIssue = 0;
api.Issue buildIssue() {
  final o = api.Issue();
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    o.description = 'foo';
    o.severity = 'foo';
    o.sourcePosition = buildSourcePosition();
  }
  buildCounterIssue--;
  return o;
}

void checkIssue(api.Issue o) {
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    checkSourcePosition(o.sourcePosition!);
  }
  buildCounterIssue--;
}

core.List<api.Release> buildUnnamed4() => [
      buildRelease(),
      buildRelease(),
    ];

void checkUnnamed4(core.List<api.Release> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelease(o[0]);
  checkRelease(o[1]);
}

core.int buildCounterListReleasesResponse = 0;
api.ListReleasesResponse buildListReleasesResponse() {
  final o = api.ListReleasesResponse();
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.releases = buildUnnamed4();
  }
  buildCounterListReleasesResponse--;
  return o;
}

void checkListReleasesResponse(api.ListReleasesResponse o) {
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.releases!);
  }
  buildCounterListReleasesResponse--;
}

core.List<api.Ruleset> buildUnnamed5() => [
      buildRuleset(),
      buildRuleset(),
    ];

void checkUnnamed5(core.List<api.Ruleset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuleset(o[0]);
  checkRuleset(o[1]);
}

core.int buildCounterListRulesetsResponse = 0;
api.ListRulesetsResponse buildListRulesetsResponse() {
  final o = api.ListRulesetsResponse();
  buildCounterListRulesetsResponse++;
  if (buildCounterListRulesetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rulesets = buildUnnamed5();
  }
  buildCounterListRulesetsResponse--;
  return o;
}

void checkListRulesetsResponse(api.ListRulesetsResponse o) {
  buildCounterListRulesetsResponse++;
  if (buildCounterListRulesetsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.rulesets!);
  }
  buildCounterListRulesetsResponse--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.services = buildUnnamed6();
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkUnnamed6(o.services!);
  }
  buildCounterMetadata--;
}

core.int buildCounterRelease = 0;
api.Release buildRelease() {
  final o = api.Release();
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.rulesetName = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRelease--;
  return o;
}

void checkRelease(api.Release o) {
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rulesetName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelease--;
}

core.int buildCounterResult = 0;
api.Result buildResult() {
  final o = api.Result();
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

void checkResult(api.Result o) {
  buildCounterResult++;
  if (buildCounterResult < 3) {
    checkEmpty(o.undefined!);
    var casted4 = (o.value!) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(
      casted4['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted4['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted4['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterResult--;
}

core.int buildCounterRuleset = 0;
api.Ruleset buildRuleset() {
  final o = api.Ruleset();
  buildCounterRuleset++;
  if (buildCounterRuleset < 3) {
    o.createTime = 'foo';
    o.metadata = buildMetadata();
    o.name = 'foo';
    o.source = buildSource();
  }
  buildCounterRuleset--;
  return o;
}

void checkRuleset(api.Ruleset o) {
  buildCounterRuleset++;
  if (buildCounterRuleset < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkMetadata(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSource(o.source!);
  }
  buildCounterRuleset--;
}

core.List<api.File> buildUnnamed7() => [
      buildFile(),
      buildFile(),
    ];

void checkUnnamed7(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.files = buildUnnamed7();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed7(o.files!);
  }
  buildCounterSource--;
}

core.int buildCounterSourcePosition = 0;
api.SourcePosition buildSourcePosition() {
  final o = api.SourcePosition();
  buildCounterSourcePosition++;
  if (buildCounterSourcePosition < 3) {
    o.column = 42;
    o.currentOffset = 42;
    o.endOffset = 42;
    o.fileName = 'foo';
    o.line = 42;
  }
  buildCounterSourcePosition--;
  return o;
}

void checkSourcePosition(api.SourcePosition o) {
  buildCounterSourcePosition++;
  if (buildCounterSourcePosition < 3) {
    unittest.expect(
      o.column!,
      unittest.equals(42),
    );
    unittest.expect(
      o.currentOffset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.endOffset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.line!,
      unittest.equals(42),
    );
  }
  buildCounterSourcePosition--;
}

core.List<api.FunctionMock> buildUnnamed8() => [
      buildFunctionMock(),
      buildFunctionMock(),
    ];

void checkUnnamed8(core.List<api.FunctionMock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFunctionMock(o[0]);
  checkFunctionMock(o[1]);
}

core.int buildCounterTestCase = 0;
api.TestCase buildTestCase() {
  final o = api.TestCase();
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    o.expectation = 'foo';
    o.expressionReportLevel = 'foo';
    o.functionMocks = buildUnnamed8();
    o.pathEncoding = 'foo';
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

void checkTestCase(api.TestCase o) {
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    unittest.expect(
      o.expectation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expressionReportLevel!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.functionMocks!);
    unittest.expect(
      o.pathEncoding!,
      unittest.equals('foo'),
    );
    var casted5 = (o.request!) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(
      casted5['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted5['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted5['string'],
      unittest.equals('foo'),
    );
    var casted6 = (o.resource!) as core.Map;
    unittest.expect(casted6, unittest.hasLength(3));
    unittest.expect(
      casted6['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted6['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted6['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterTestCase--;
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.List<api.ExpressionReport> buildUnnamed10() => [
      buildExpressionReport(),
      buildExpressionReport(),
    ];

void checkUnnamed10(core.List<api.ExpressionReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExpressionReport(o[0]);
  checkExpressionReport(o[1]);
}

core.List<api.FunctionCall> buildUnnamed11() => [
      buildFunctionCall(),
      buildFunctionCall(),
    ];

void checkUnnamed11(core.List<api.FunctionCall> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFunctionCall(o[0]);
  checkFunctionCall(o[1]);
}

core.List<api.VisitedExpression> buildUnnamed12() => [
      buildVisitedExpression(),
      buildVisitedExpression(),
    ];

void checkUnnamed12(core.List<api.VisitedExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVisitedExpression(o[0]);
  checkVisitedExpression(o[1]);
}

core.int buildCounterTestResult = 0;
api.TestResult buildTestResult() {
  final o = api.TestResult();
  buildCounterTestResult++;
  if (buildCounterTestResult < 3) {
    o.debugMessages = buildUnnamed9();
    o.errorPosition = buildSourcePosition();
    o.expressionReports = buildUnnamed10();
    o.functionCalls = buildUnnamed11();
    o.state = 'foo';
    o.visitedExpressions = buildUnnamed12();
  }
  buildCounterTestResult--;
  return o;
}

void checkTestResult(api.TestResult o) {
  buildCounterTestResult++;
  if (buildCounterTestResult < 3) {
    checkUnnamed9(o.debugMessages!);
    checkSourcePosition(o.errorPosition!);
    checkUnnamed10(o.expressionReports!);
    checkUnnamed11(o.functionCalls!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.visitedExpressions!);
  }
  buildCounterTestResult--;
}

core.int buildCounterTestRulesetRequest = 0;
api.TestRulesetRequest buildTestRulesetRequest() {
  final o = api.TestRulesetRequest();
  buildCounterTestRulesetRequest++;
  if (buildCounterTestRulesetRequest < 3) {
    o.source = buildSource();
    o.testSuite = buildTestSuite();
  }
  buildCounterTestRulesetRequest--;
  return o;
}

void checkTestRulesetRequest(api.TestRulesetRequest o) {
  buildCounterTestRulesetRequest++;
  if (buildCounterTestRulesetRequest < 3) {
    checkSource(o.source!);
    checkTestSuite(o.testSuite!);
  }
  buildCounterTestRulesetRequest--;
}

core.List<api.Issue> buildUnnamed13() => [
      buildIssue(),
      buildIssue(),
    ];

void checkUnnamed13(core.List<api.Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssue(o[0]);
  checkIssue(o[1]);
}

core.List<api.TestResult> buildUnnamed14() => [
      buildTestResult(),
      buildTestResult(),
    ];

void checkUnnamed14(core.List<api.TestResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestResult(o[0]);
  checkTestResult(o[1]);
}

core.int buildCounterTestRulesetResponse = 0;
api.TestRulesetResponse buildTestRulesetResponse() {
  final o = api.TestRulesetResponse();
  buildCounterTestRulesetResponse++;
  if (buildCounterTestRulesetResponse < 3) {
    o.issues = buildUnnamed13();
    o.testResults = buildUnnamed14();
  }
  buildCounterTestRulesetResponse--;
  return o;
}

void checkTestRulesetResponse(api.TestRulesetResponse o) {
  buildCounterTestRulesetResponse++;
  if (buildCounterTestRulesetResponse < 3) {
    checkUnnamed13(o.issues!);
    checkUnnamed14(o.testResults!);
  }
  buildCounterTestRulesetResponse--;
}

core.List<api.TestCase> buildUnnamed15() => [
      buildTestCase(),
      buildTestCase(),
    ];

void checkUnnamed15(core.List<api.TestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestCase(o[0]);
  checkTestCase(o[1]);
}

core.int buildCounterTestSuite = 0;
api.TestSuite buildTestSuite() {
  final o = api.TestSuite();
  buildCounterTestSuite++;
  if (buildCounterTestSuite < 3) {
    o.testCases = buildUnnamed15();
  }
  buildCounterTestSuite--;
  return o;
}

void checkTestSuite(api.TestSuite o) {
  buildCounterTestSuite++;
  if (buildCounterTestSuite < 3) {
    checkUnnamed15(o.testCases!);
  }
  buildCounterTestSuite--;
}

core.int buildCounterUpdateReleaseRequest = 0;
api.UpdateReleaseRequest buildUpdateReleaseRequest() {
  final o = api.UpdateReleaseRequest();
  buildCounterUpdateReleaseRequest++;
  if (buildCounterUpdateReleaseRequest < 3) {
    o.release = buildRelease();
    o.updateMask = 'foo';
  }
  buildCounterUpdateReleaseRequest--;
  return o;
}

void checkUpdateReleaseRequest(api.UpdateReleaseRequest o) {
  buildCounterUpdateReleaseRequest++;
  if (buildCounterUpdateReleaseRequest < 3) {
    checkRelease(o.release!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateReleaseRequest--;
}

core.int buildCounterValueCount = 0;
api.ValueCount buildValueCount() {
  final o = api.ValueCount();
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

void checkValueCount(api.ValueCount o) {
  buildCounterValueCount++;
  if (buildCounterValueCount < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    var casted7 = (o.value!) as core.Map;
    unittest.expect(casted7, unittest.hasLength(3));
    unittest.expect(
      casted7['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted7['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted7['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterValueCount--;
}

core.int buildCounterVisitedExpression = 0;
api.VisitedExpression buildVisitedExpression() {
  final o = api.VisitedExpression();
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

void checkVisitedExpression(api.VisitedExpression o) {
  buildCounterVisitedExpression++;
  if (buildCounterVisitedExpression < 3) {
    checkSourcePosition(o.sourcePosition!);
    var casted8 = (o.value!) as core.Map;
    unittest.expect(casted8, unittest.hasLength(3));
    unittest.expect(
      casted8['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted8['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted8['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterVisitedExpression--;
}

void main() {
  unittest.group('obj-schema-Arg', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArg();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Arg.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkArg(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ExpressionReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpressionReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpressionReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExpressionReport(od);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.File.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFile(od);
    });
  });

  unittest.group('obj-schema-FunctionCall', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFunctionCall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FunctionCall.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFunctionCall(od);
    });
  });

  unittest.group('obj-schema-FunctionMock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFunctionMock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FunctionMock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFunctionMock(od);
    });
  });

  unittest.group('obj-schema-GetReleaseExecutableResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetReleaseExecutableResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetReleaseExecutableResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetReleaseExecutableResponse(od);
    });
  });

  unittest.group('obj-schema-Issue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Issue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIssue(od);
    });
  });

  unittest.group('obj-schema-ListReleasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReleasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReleasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReleasesResponse(od);
    });
  });

  unittest.group('obj-schema-ListRulesetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRulesetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRulesetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRulesetsResponse(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-Release', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Release.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRelease(od);
    });
  });

  unittest.group('obj-schema-Result', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Result.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResult(od);
    });
  });

  unittest.group('obj-schema-Ruleset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuleset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Ruleset.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRuleset(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Source.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSource(od);
    });
  });

  unittest.group('obj-schema-SourcePosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourcePosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourcePosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourcePosition(od);
    });
  });

  unittest.group('obj-schema-TestCase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestCase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TestCase.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestCase(od);
    });
  });

  unittest.group('obj-schema-TestResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TestResult.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestResult(od);
    });
  });

  unittest.group('obj-schema-TestRulesetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestRulesetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestRulesetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestRulesetRequest(od);
    });
  });

  unittest.group('obj-schema-TestRulesetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestRulesetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestRulesetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestRulesetResponse(od);
    });
  });

  unittest.group('obj-schema-TestSuite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestSuite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TestSuite.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestSuite(od);
    });
  });

  unittest.group('obj-schema-UpdateReleaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateReleaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateReleaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateReleaseRequest(od);
    });
  });

  unittest.group('obj-schema-ValueCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ValueCount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkValueCount(od);
    });
  });

  unittest.group('obj-schema-VisitedExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVisitedExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VisitedExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVisitedExpression(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--test', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects;
      final arg_request = buildTestRulesetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestRulesetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestRulesetRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildTestRulesetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.test(arg_request, arg_name, $fields: arg_$fields);
      checkTestRulesetResponse(response as api.TestRulesetResponse);
    });
  });

  unittest.group('resource-ProjectsReleasesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects.releases;
      final arg_request = buildRelease();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Release.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRelease(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildRelease());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_name, $fields: arg_$fields);
      checkRelease(response as api.Release);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects.releases;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects.releases;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildRelease());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRelease(response as api.Release);
    });

    unittest.test('method--getExecutable', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects.releases;
      final arg_name = 'foo';
      final arg_executableVersion = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['executableVersion']!.first,
          unittest.equals(arg_executableVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetReleaseExecutableResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getExecutable(arg_name,
          executableVersion: arg_executableVersion, $fields: arg_$fields);
      checkGetReleaseExecutableResponse(
          response as api.GetReleaseExecutableResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects.releases;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListReleasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReleasesResponse(response as api.ListReleasesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects.releases;
      final arg_request = buildUpdateReleaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateReleaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateReleaseRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildRelease());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkRelease(response as api.Release);
    });
  });

  unittest.group('resource-ProjectsRulesetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects.rulesets;
      final arg_request = buildRuleset();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Ruleset.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRuleset(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildRuleset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_name, $fields: arg_$fields);
      checkRuleset(response as api.Ruleset);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects.rulesets;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects.rulesets;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildRuleset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRuleset(response as api.Ruleset);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRulesApi(mock).projects.rulesets;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRulesetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRulesetsResponse(response as api.ListRulesetsResponse);
    });
  });
}
