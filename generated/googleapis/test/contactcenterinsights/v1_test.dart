// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/contactcenterinsights/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudCesV1mainAgentTransfer = 0;
api.GoogleCloudCesV1mainAgentTransfer buildGoogleCloudCesV1mainAgentTransfer() {
  final o = api.GoogleCloudCesV1mainAgentTransfer();
  buildCounterGoogleCloudCesV1mainAgentTransfer++;
  if (buildCounterGoogleCloudCesV1mainAgentTransfer < 3) {
    o.displayName = 'foo';
    o.targetAgent = 'foo';
  }
  buildCounterGoogleCloudCesV1mainAgentTransfer--;
  return o;
}

void checkGoogleCloudCesV1mainAgentTransfer(
  api.GoogleCloudCesV1mainAgentTransfer o,
) {
  buildCounterGoogleCloudCesV1mainAgentTransfer++;
  if (buildCounterGoogleCloudCesV1mainAgentTransfer < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.targetAgent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudCesV1mainAgentTransfer--;
}

core.int buildCounterGoogleCloudCesV1mainBlob = 0;
api.GoogleCloudCesV1mainBlob buildGoogleCloudCesV1mainBlob() {
  final o = api.GoogleCloudCesV1mainBlob();
  buildCounterGoogleCloudCesV1mainBlob++;
  if (buildCounterGoogleCloudCesV1mainBlob < 3) {
    o.data = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudCesV1mainBlob--;
  return o;
}

void checkGoogleCloudCesV1mainBlob(api.GoogleCloudCesV1mainBlob o) {
  buildCounterGoogleCloudCesV1mainBlob++;
  if (buildCounterGoogleCloudCesV1mainBlob < 3) {
    unittest.expect(o.data!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudCesV1mainBlob--;
}

core.Map<core.String, core.Object?> buildUnnamed0() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed0(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed1() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed1(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudCesV1mainChunk = 0;
api.GoogleCloudCesV1mainChunk buildGoogleCloudCesV1mainChunk() {
  final o = api.GoogleCloudCesV1mainChunk();
  buildCounterGoogleCloudCesV1mainChunk++;
  if (buildCounterGoogleCloudCesV1mainChunk < 3) {
    o.agentTransfer = buildGoogleCloudCesV1mainAgentTransfer();
    o.blob = buildGoogleCloudCesV1mainBlob();
    o.defaultVariables = buildUnnamed0();
    o.image = buildGoogleCloudCesV1mainImage();
    o.payload = buildUnnamed1();
    o.text = 'foo';
    o.toolCall = buildGoogleCloudCesV1mainToolCall();
    o.toolResponse = buildGoogleCloudCesV1mainToolResponse();
    o.transcript = 'foo';
    o.updatedVariables = buildUnnamed2();
  }
  buildCounterGoogleCloudCesV1mainChunk--;
  return o;
}

void checkGoogleCloudCesV1mainChunk(api.GoogleCloudCesV1mainChunk o) {
  buildCounterGoogleCloudCesV1mainChunk++;
  if (buildCounterGoogleCloudCesV1mainChunk < 3) {
    checkGoogleCloudCesV1mainAgentTransfer(o.agentTransfer!);
    checkGoogleCloudCesV1mainBlob(o.blob!);
    checkUnnamed0(o.defaultVariables!);
    checkGoogleCloudCesV1mainImage(o.image!);
    checkUnnamed1(o.payload!);
    unittest.expect(o.text!, unittest.equals('foo'));
    checkGoogleCloudCesV1mainToolCall(o.toolCall!);
    checkGoogleCloudCesV1mainToolResponse(o.toolResponse!);
    unittest.expect(o.transcript!, unittest.equals('foo'));
    checkUnnamed2(o.updatedVariables!);
  }
  buildCounterGoogleCloudCesV1mainChunk--;
}

core.Map<core.String, core.Object?> buildUnnamed3() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed3(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudCesV1mainEndSession = 0;
api.GoogleCloudCesV1mainEndSession buildGoogleCloudCesV1mainEndSession() {
  final o = api.GoogleCloudCesV1mainEndSession();
  buildCounterGoogleCloudCesV1mainEndSession++;
  if (buildCounterGoogleCloudCesV1mainEndSession < 3) {
    o.metadata = buildUnnamed3();
  }
  buildCounterGoogleCloudCesV1mainEndSession--;
  return o;
}

void checkGoogleCloudCesV1mainEndSession(api.GoogleCloudCesV1mainEndSession o) {
  buildCounterGoogleCloudCesV1mainEndSession++;
  if (buildCounterGoogleCloudCesV1mainEndSession < 3) {
    checkUnnamed3(o.metadata!);
  }
  buildCounterGoogleCloudCesV1mainEndSession--;
}

core.int buildCounterGoogleCloudCesV1mainImage = 0;
api.GoogleCloudCesV1mainImage buildGoogleCloudCesV1mainImage() {
  final o = api.GoogleCloudCesV1mainImage();
  buildCounterGoogleCloudCesV1mainImage++;
  if (buildCounterGoogleCloudCesV1mainImage < 3) {
    o.data = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudCesV1mainImage--;
  return o;
}

void checkGoogleCloudCesV1mainImage(api.GoogleCloudCesV1mainImage o) {
  buildCounterGoogleCloudCesV1mainImage++;
  if (buildCounterGoogleCloudCesV1mainImage < 3) {
    unittest.expect(o.data!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudCesV1mainImage--;
}

core.List<api.GoogleCloudCesV1mainChunk> buildUnnamed4() => [
  buildGoogleCloudCesV1mainChunk(),
  buildGoogleCloudCesV1mainChunk(),
];

void checkUnnamed4(core.List<api.GoogleCloudCesV1mainChunk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudCesV1mainChunk(o[0]);
  checkGoogleCloudCesV1mainChunk(o[1]);
}

core.int buildCounterGoogleCloudCesV1mainMessage = 0;
api.GoogleCloudCesV1mainMessage buildGoogleCloudCesV1mainMessage() {
  final o = api.GoogleCloudCesV1mainMessage();
  buildCounterGoogleCloudCesV1mainMessage++;
  if (buildCounterGoogleCloudCesV1mainMessage < 3) {
    o.chunks = buildUnnamed4();
    o.eventTime = 'foo';
    o.role = 'foo';
  }
  buildCounterGoogleCloudCesV1mainMessage--;
  return o;
}

void checkGoogleCloudCesV1mainMessage(api.GoogleCloudCesV1mainMessage o) {
  buildCounterGoogleCloudCesV1mainMessage++;
  if (buildCounterGoogleCloudCesV1mainMessage < 3) {
    checkUnnamed4(o.chunks!);
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudCesV1mainMessage--;
}

core.Map<core.String, core.Object?> buildUnnamed5() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed5(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudCesV1mainSpan> buildUnnamed6() => [
  buildGoogleCloudCesV1mainSpan(),
  buildGoogleCloudCesV1mainSpan(),
];

void checkUnnamed6(core.List<api.GoogleCloudCesV1mainSpan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudCesV1mainSpan(o[0]);
  checkGoogleCloudCesV1mainSpan(o[1]);
}

core.int buildCounterGoogleCloudCesV1mainSpan = 0;
api.GoogleCloudCesV1mainSpan buildGoogleCloudCesV1mainSpan() {
  final o = api.GoogleCloudCesV1mainSpan();
  buildCounterGoogleCloudCesV1mainSpan++;
  if (buildCounterGoogleCloudCesV1mainSpan < 3) {
    o.attributes = buildUnnamed5();
    o.childSpans = buildUnnamed6();
    o.duration = 'foo';
    o.endTime = 'foo';
    o.name = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudCesV1mainSpan--;
  return o;
}

void checkGoogleCloudCesV1mainSpan(api.GoogleCloudCesV1mainSpan o) {
  buildCounterGoogleCloudCesV1mainSpan++;
  if (buildCounterGoogleCloudCesV1mainSpan < 3) {
    checkUnnamed5(o.attributes!);
    checkUnnamed6(o.childSpans!);
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudCesV1mainSpan--;
}

core.Map<core.String, core.Object?> buildUnnamed7() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudCesV1mainToolCall = 0;
api.GoogleCloudCesV1mainToolCall buildGoogleCloudCesV1mainToolCall() {
  final o = api.GoogleCloudCesV1mainToolCall();
  buildCounterGoogleCloudCesV1mainToolCall++;
  if (buildCounterGoogleCloudCesV1mainToolCall < 3) {
    o.args = buildUnnamed7();
    o.displayName = 'foo';
    o.id = 'foo';
    o.tool = 'foo';
    o.toolsetTool = buildGoogleCloudCesV1mainToolsetTool();
  }
  buildCounterGoogleCloudCesV1mainToolCall--;
  return o;
}

void checkGoogleCloudCesV1mainToolCall(api.GoogleCloudCesV1mainToolCall o) {
  buildCounterGoogleCloudCesV1mainToolCall++;
  if (buildCounterGoogleCloudCesV1mainToolCall < 3) {
    checkUnnamed7(o.args!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.tool!, unittest.equals('foo'));
    checkGoogleCloudCesV1mainToolsetTool(o.toolsetTool!);
  }
  buildCounterGoogleCloudCesV1mainToolCall--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudCesV1mainToolResponse = 0;
api.GoogleCloudCesV1mainToolResponse buildGoogleCloudCesV1mainToolResponse() {
  final o = api.GoogleCloudCesV1mainToolResponse();
  buildCounterGoogleCloudCesV1mainToolResponse++;
  if (buildCounterGoogleCloudCesV1mainToolResponse < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
    o.response = buildUnnamed8();
    o.tool = 'foo';
    o.toolsetTool = buildGoogleCloudCesV1mainToolsetTool();
  }
  buildCounterGoogleCloudCesV1mainToolResponse--;
  return o;
}

void checkGoogleCloudCesV1mainToolResponse(
  api.GoogleCloudCesV1mainToolResponse o,
) {
  buildCounterGoogleCloudCesV1mainToolResponse++;
  if (buildCounterGoogleCloudCesV1mainToolResponse < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed8(o.response!);
    unittest.expect(o.tool!, unittest.equals('foo'));
    checkGoogleCloudCesV1mainToolsetTool(o.toolsetTool!);
  }
  buildCounterGoogleCloudCesV1mainToolResponse--;
}

core.int buildCounterGoogleCloudCesV1mainToolsetTool = 0;
api.GoogleCloudCesV1mainToolsetTool buildGoogleCloudCesV1mainToolsetTool() {
  final o = api.GoogleCloudCesV1mainToolsetTool();
  buildCounterGoogleCloudCesV1mainToolsetTool++;
  if (buildCounterGoogleCloudCesV1mainToolsetTool < 3) {
    o.toolId = 'foo';
    o.toolset = 'foo';
  }
  buildCounterGoogleCloudCesV1mainToolsetTool--;
  return o;
}

void checkGoogleCloudCesV1mainToolsetTool(
  api.GoogleCloudCesV1mainToolsetTool o,
) {
  buildCounterGoogleCloudCesV1mainToolsetTool++;
  if (buildCounterGoogleCloudCesV1mainToolsetTool < 3) {
    unittest.expect(o.toolId!, unittest.equals('foo'));
    unittest.expect(o.toolset!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudCesV1mainToolsetTool--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Analysis = 0;
api.GoogleCloudContactcenterinsightsV1Analysis
buildGoogleCloudContactcenterinsightsV1Analysis() {
  final o = api.GoogleCloudContactcenterinsightsV1Analysis();
  buildCounterGoogleCloudContactcenterinsightsV1Analysis++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Analysis < 3) {
    o.analysisResult = buildGoogleCloudContactcenterinsightsV1AnalysisResult();
    o.annotatorSelector =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelector();
    o.createTime = 'foo';
    o.name = 'foo';
    o.requestTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Analysis--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Analysis(
  api.GoogleCloudContactcenterinsightsV1Analysis o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Analysis++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Analysis < 3) {
    checkGoogleCloudContactcenterinsightsV1AnalysisResult(o.analysisResult!);
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(
      o.annotatorSelector!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.requestTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Analysis--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult = 0;
api.GoogleCloudContactcenterinsightsV1AnalysisResult
buildGoogleCloudContactcenterinsightsV1AnalysisResult() {
  final o = api.GoogleCloudContactcenterinsightsV1AnalysisResult();
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult < 3) {
    o.callAnalysisMetadata =
        buildGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata();
    o.endTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnalysisResult(
  api.GoogleCloudContactcenterinsightsV1AnalysisResult o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult < 3) {
    checkGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata(
      o.callAnalysisMetadata!,
    );
    unittest.expect(o.endTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult--;
}

core.List<api.GoogleCloudContactcenterinsightsV1CallAnnotation>
buildUnnamed9() => [
  buildGoogleCloudContactcenterinsightsV1CallAnnotation(),
  buildGoogleCloudContactcenterinsightsV1CallAnnotation(),
];

void checkUnnamed9(
  core.List<api.GoogleCloudContactcenterinsightsV1CallAnnotation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1CallAnnotation(o[0]);
  checkGoogleCloudContactcenterinsightsV1CallAnnotation(o[1]);
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1Entity>
buildUnnamed10() => {
  'x': buildGoogleCloudContactcenterinsightsV1Entity(),
  'y': buildGoogleCloudContactcenterinsightsV1Entity(),
};

void checkUnnamed10(
  core.Map<core.String, api.GoogleCloudContactcenterinsightsV1Entity> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Entity(o['x']!);
  checkGoogleCloudContactcenterinsightsV1Entity(o['y']!);
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1Intent>
buildUnnamed11() => {
  'x': buildGoogleCloudContactcenterinsightsV1Intent(),
  'y': buildGoogleCloudContactcenterinsightsV1Intent(),
};

void checkUnnamed11(
  core.Map<core.String, api.GoogleCloudContactcenterinsightsV1Intent> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Intent(o['x']!);
  checkGoogleCloudContactcenterinsightsV1Intent(o['y']!);
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1PhraseMatchData>
buildUnnamed12() => {
  'x': buildGoogleCloudContactcenterinsightsV1PhraseMatchData(),
  'y': buildGoogleCloudContactcenterinsightsV1PhraseMatchData(),
};

void checkUnnamed12(
  core.Map<core.String, api.GoogleCloudContactcenterinsightsV1PhraseMatchData>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1PhraseMatchData(o['x']!);
  checkGoogleCloudContactcenterinsightsV1PhraseMatchData(o['y']!);
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResult>
buildUnnamed13() => [
  buildGoogleCloudContactcenterinsightsV1QaScorecardResult(),
  buildGoogleCloudContactcenterinsightsV1QaScorecardResult(),
];

void checkUnnamed13(
  core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecardResult(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecardResult(o[1]);
}

core.List<api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment>
buildUnnamed14() => [
  buildGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(),
  buildGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(),
];

void checkUnnamed14(
  core.List<api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(o[0]);
  checkGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata
buildGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata <
      3) {
    o.annotations = buildUnnamed9();
    o.entities = buildUnnamed10();
    o.intents = buildUnnamed11();
    o.issueModelResult =
        buildGoogleCloudContactcenterinsightsV1IssueModelResult();
    o.phraseMatchers = buildUnnamed12();
    o.qaScorecardResults = buildUnnamed13();
    o.sentiments = buildUnnamed14();
    o.silence =
        buildGoogleCloudContactcenterinsightsV1ConversationLevelSilence();
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata(
  api.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata <
      3) {
    checkUnnamed9(o.annotations!);
    checkUnnamed10(o.entities!);
    checkUnnamed11(o.intents!);
    checkGoogleCloudContactcenterinsightsV1IssueModelResult(
      o.issueModelResult!,
    );
    checkUnnamed12(o.phraseMatchers!);
    checkUnnamed13(o.qaScorecardResults!);
    checkUnnamed14(o.sentiments!);
    checkGoogleCloudContactcenterinsightsV1ConversationLevelSilence(o.silence!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule = 0;
api.GoogleCloudContactcenterinsightsV1AnalysisRule
buildGoogleCloudContactcenterinsightsV1AnalysisRule() {
  final o = api.GoogleCloudContactcenterinsightsV1AnalysisRule();
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule < 3) {
    o.active = true;
    o.analysisPercentage = 42.0;
    o.annotatorSelector =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelector();
    o.conversationFilter = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnalysisRule(
  api.GoogleCloudContactcenterinsightsV1AnalysisRule o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(o.analysisPercentage!, unittest.equals(42.0));
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(
      o.annotatorSelector!,
    );
    unittest.expect(o.conversationFilter!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary = 0;
api.GoogleCloudContactcenterinsightsV1AnnotationBoundary
buildGoogleCloudContactcenterinsightsV1AnnotationBoundary() {
  final o = api.GoogleCloudContactcenterinsightsV1AnnotationBoundary();
  buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary < 3) {
    o.transcriptIndex = 42;
    o.wordIndex = 42;
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(
  api.GoogleCloudContactcenterinsightsV1AnnotationBoundary o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary < 3) {
    unittest.expect(o.transcriptIndex!, unittest.equals(42));
    unittest.expect(o.wordIndex!, unittest.equals(42));
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector = 0;
api.GoogleCloudContactcenterinsightsV1AnnotatorSelector
buildGoogleCloudContactcenterinsightsV1AnnotatorSelector() {
  final o = api.GoogleCloudContactcenterinsightsV1AnnotatorSelector();
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector < 3) {
    o.issueModels = buildUnnamed15();
    o.phraseMatchers = buildUnnamed16();
    o.qaConfig =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig();
    o.runAutoLabelingAnnotator = true;
    o.runEntityAnnotator = true;
    o.runIntentAnnotator = true;
    o.runInterruptionAnnotator = true;
    o.runIssueModelAnnotator = true;
    o.runPhraseMatcherAnnotator = true;
    o.runQaAnnotator = true;
    o.runSentimentAnnotator = true;
    o.runSilenceAnnotator = true;
    o.runSummarizationAnnotator = true;
    o.summarizationConfig =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig();
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(
  api.GoogleCloudContactcenterinsightsV1AnnotatorSelector o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector < 3) {
    checkUnnamed15(o.issueModels!);
    checkUnnamed16(o.phraseMatchers!);
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig(
      o.qaConfig!,
    );
    unittest.expect(o.runAutoLabelingAnnotator!, unittest.isTrue);
    unittest.expect(o.runEntityAnnotator!, unittest.isTrue);
    unittest.expect(o.runIntentAnnotator!, unittest.isTrue);
    unittest.expect(o.runInterruptionAnnotator!, unittest.isTrue);
    unittest.expect(o.runIssueModelAnnotator!, unittest.isTrue);
    unittest.expect(o.runPhraseMatcherAnnotator!, unittest.isTrue);
    unittest.expect(o.runQaAnnotator!, unittest.isTrue);
    unittest.expect(o.runSentimentAnnotator!, unittest.isTrue);
    unittest.expect(o.runSilenceAnnotator!, unittest.isTrue);
    unittest.expect(o.runSummarizationAnnotator!, unittest.isTrue);
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig(
      o.summarizationConfig!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig = 0;
api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig
buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig();
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig <
      3) {
    o.scorecardList =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList();
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig(
  api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig <
      3) {
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList(
      o.scorecardList!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList =
    0;
api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList
buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList() {
  final o =
      api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList();
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList <
      3) {
    o.qaScorecardRevisions = buildUnnamed17();
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList(
  api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList <
      3) {
    checkUnnamed17(o.qaScorecardRevisions!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig =
    0;
api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig() {
  final o =
      api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig();
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig <
      3) {
    o.conversationProfile = 'foo';
    o.generator = 'foo';
    o.summarizationModel = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig(
  api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig <
      3) {
    unittest.expect(o.conversationProfile!, unittest.equals('foo'));
    unittest.expect(o.generator!, unittest.equals('foo'));
    unittest.expect(o.summarizationModel!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback = 0;
api.GoogleCloudContactcenterinsightsV1AnswerFeedback
buildGoogleCloudContactcenterinsightsV1AnswerFeedback() {
  final o = api.GoogleCloudContactcenterinsightsV1AnswerFeedback();
  buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback < 3) {
    o.clicked = true;
    o.correctnessLevel = 'foo';
    o.displayed = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnswerFeedback(
  api.GoogleCloudContactcenterinsightsV1AnswerFeedback o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback < 3) {
    unittest.expect(o.clicked!, unittest.isTrue);
    unittest.expect(o.correctnessLevel!, unittest.equals('foo'));
    unittest.expect(o.displayed!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AppealAssessmentRequest =
    0;
api.GoogleCloudContactcenterinsightsV1AppealAssessmentRequest
buildGoogleCloudContactcenterinsightsV1AppealAssessmentRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1AppealAssessmentRequest();
  buildCounterGoogleCloudContactcenterinsightsV1AppealAssessmentRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AppealAssessmentRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1AppealAssessmentRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AppealAssessmentRequest(
  api.GoogleCloudContactcenterinsightsV1AppealAssessmentRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AppealAssessmentRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AppealAssessmentRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1AppealAssessmentRequest--;
}

core.Map<core.String, core.String> buildUnnamed18() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData =
    0;
api.GoogleCloudContactcenterinsightsV1ArticleSuggestionData
buildGoogleCloudContactcenterinsightsV1ArticleSuggestionData() {
  final o = api.GoogleCloudContactcenterinsightsV1ArticleSuggestionData();
  buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData < 3) {
    o.confidenceScore = 42.0;
    o.metadata = buildUnnamed18();
    o.queryRecord = 'foo';
    o.source = 'foo';
    o.title = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ArticleSuggestionData(
  api.GoogleCloudContactcenterinsightsV1ArticleSuggestionData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData < 3) {
    unittest.expect(o.confidenceScore!, unittest.equals(42.0));
    checkUnnamed18(o.metadata!);
    unittest.expect(o.queryRecord!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Assessment = 0;
api.GoogleCloudContactcenterinsightsV1Assessment
buildGoogleCloudContactcenterinsightsV1Assessment() {
  final o = api.GoogleCloudContactcenterinsightsV1Assessment();
  buildCounterGoogleCloudContactcenterinsightsV1Assessment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Assessment < 3) {
    o.agentInfo =
        buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo();
    o.createTime = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Assessment--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Assessment(
  api.GoogleCloudContactcenterinsightsV1Assessment o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Assessment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Assessment < 3) {
    checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(
      o.agentInfo!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Assessment--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AssessmentRule = 0;
api.GoogleCloudContactcenterinsightsV1AssessmentRule
buildGoogleCloudContactcenterinsightsV1AssessmentRule() {
  final o = api.GoogleCloudContactcenterinsightsV1AssessmentRule();
  buildCounterGoogleCloudContactcenterinsightsV1AssessmentRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AssessmentRule < 3) {
    o.active = true;
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.sampleRule = buildGoogleCloudContactcenterinsightsV1SampleRule();
    o.scheduleInfo = buildGoogleCloudContactcenterinsightsV1ScheduleInfo();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AssessmentRule--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AssessmentRule(
  api.GoogleCloudContactcenterinsightsV1AssessmentRule o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AssessmentRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AssessmentRule < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1SampleRule(o.sampleRule!);
    checkGoogleCloudContactcenterinsightsV1ScheduleInfo(o.scheduleInfo!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1AssessmentRule--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AuthorizedView = 0;
api.GoogleCloudContactcenterinsightsV1AuthorizedView
buildGoogleCloudContactcenterinsightsV1AuthorizedView() {
  final o = api.GoogleCloudContactcenterinsightsV1AuthorizedView();
  buildCounterGoogleCloudContactcenterinsightsV1AuthorizedView++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AuthorizedView < 3) {
    o.conversationFilter = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AuthorizedView--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AuthorizedView(
  api.GoogleCloudContactcenterinsightsV1AuthorizedView o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AuthorizedView++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AuthorizedView < 3) {
    unittest.expect(o.conversationFilter!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1AuthorizedView--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AuthorizedViewSet = 0;
api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet
buildGoogleCloudContactcenterinsightsV1AuthorizedViewSet() {
  final o = api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet();
  buildCounterGoogleCloudContactcenterinsightsV1AuthorizedViewSet++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AuthorizedViewSet < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AuthorizedViewSet--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AuthorizedViewSet(
  api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AuthorizedViewSet++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AuthorizedViewSet < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1AuthorizedViewSet--;
}

core.List<
  api.GoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition
>
buildUnnamed19() => [
  buildGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition(),
  buildGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition(),
];

void checkUnnamed19(
  core.List<
    api.GoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition(
    o[0],
  );
  checkGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition(
    o[1],
  );
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRule = 0;
api.GoogleCloudContactcenterinsightsV1AutoLabelingRule
buildGoogleCloudContactcenterinsightsV1AutoLabelingRule() {
  final o = api.GoogleCloudContactcenterinsightsV1AutoLabelingRule();
  buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRule < 3) {
    o.active = true;
    o.conditions = buildUnnamed19();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.labelKey = 'foo';
    o.labelKeyType = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRule--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AutoLabelingRule(
  api.GoogleCloudContactcenterinsightsV1AutoLabelingRule o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRule < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    checkUnnamed19(o.conditions!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.labelKey!, unittest.equals('foo'));
    unittest.expect(o.labelKeyType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRule--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition =
    0;
api.GoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition
buildGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition() {
  final o =
      api.GoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition();
  buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition <
      3) {
    o.condition = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition(
  api.GoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition <
      3) {
    unittest.expect(o.condition!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest
buildGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest <
      3) {
    o.analysisPercentage = 42.0;
    o.annotatorSelector =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelector();
    o.filter = 'foo';
    o.parent = 'foo';
    o.relabel = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest(
  api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest <
      3) {
    unittest.expect(o.analysisPercentage!, unittest.equals(42.0));
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(
      o.annotatorSelector!,
    );
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
    unittest.expect(o.relabel!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest
buildGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest <
      3) {
    o.filter = 'foo';
    o.force = true;
    o.maxDeleteCount = 42;
    o.parent = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest(
  api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest <
      3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(o.maxDeleteCount!, unittest.equals(42));
    unittest.expect(o.parent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest
buildGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest <
      3) {
    o.filter = 'foo';
    o.parent = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest(
  api.GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest <
      3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest
buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest <
      3) {
    o.conversationFilter = 'foo';
    o.feedbackLabelType = 'foo';
    o.filter = 'foo';
    o.gcsDestination =
        buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination();
    o.maxDownloadCount = 42;
    o.parent = 'foo';
    o.sheetsDestination =
        buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination();
    o.templateQaScorecardId = buildUnnamed20();
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest(
  api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest <
      3) {
    unittest.expect(o.conversationFilter!, unittest.equals('foo'));
    unittest.expect(o.feedbackLabelType!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination(
      o.gcsDestination!,
    );
    unittest.expect(o.maxDownloadCount!, unittest.equals(42));
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination(
      o.sheetsDestination!,
    );
    checkUnnamed20(o.templateQaScorecardId!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination =
    0;
api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination
buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination();
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination <
      3) {
    o.addWhitespace = true;
    o.alwaysPrintEmptyFields = true;
    o.format = 'foo';
    o.objectUri = 'foo';
    o.recordsPerFileCount = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination(
  api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination <
      3) {
    unittest.expect(o.addWhitespace!, unittest.isTrue);
    unittest.expect(o.alwaysPrintEmptyFields!, unittest.isTrue);
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.objectUri!, unittest.equals('foo'));
    unittest.expect(o.recordsPerFileCount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination =
    0;
api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination
buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination();
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination <
      3) {
    o.sheetTitle = 'foo';
    o.spreadsheetUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination(
  api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination <
      3) {
    unittest.expect(o.sheetTitle!, unittest.equals('foo'));
    unittest.expect(o.spreadsheetUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest
buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest <
      3) {
    o.gcsSource =
        buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource();
    o.sheetsSource =
        buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest(
  api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource(
      o.gcsSource!,
    );
    checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource(
      o.sheetsSource!,
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource =
    0;
api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource
buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource();
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource <
      3) {
    o.format = 'foo';
    o.objectUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource(
  api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource <
      3) {
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.objectUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource =
    0;
api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource
buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource();
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource <
      3) {
    o.spreadsheetUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource(
  api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource <
      3) {
    unittest.expect(o.spreadsheetUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
buildGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse <
      3) {
    o.currentStats =
        buildGoogleCloudContactcenterinsightsV1IssueModelLabelStats();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse(
  api.GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse <
      3) {
    checkGoogleCloudContactcenterinsightsV1IssueModelLabelStats(
      o.currentStats!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1CalculateStatsRequest
buildGoogleCloudContactcenterinsightsV1CalculateStatsRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1CalculateStatsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsRequest < 3) {
    o.filter = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CalculateStatsRequest(
  api.GoogleCloudContactcenterinsightsV1CalculateStatsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsRequest--;
}

core.Map<core.String, core.int> buildUnnamed21() => {'x': 42, 'y': 42};

void checkUnnamed21(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals(42));
  unittest.expect(o['y']!, unittest.equals(42));
}

core.Map<core.String, core.int> buildUnnamed22() => {'x': 42, 'y': 42};

void checkUnnamed22(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals(42));
  unittest.expect(o['y']!, unittest.equals(42));
}

core.Map<
  core.String,
  api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
>
buildUnnamed23() => {
  'x': buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
  'y': buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
};

void checkUnnamed23(
  core.Map<
    core.String,
    api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
    o['x']!,
  );
  checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
    o['y']!,
  );
}

core.Map<core.String, core.int> buildUnnamed24() => {'x': 42, 'y': 42};

void checkUnnamed24(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals(42));
  unittest.expect(o['y']!, unittest.equals(42));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse
buildGoogleCloudContactcenterinsightsV1CalculateStatsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse <
      3) {
    o.averageDuration = 'foo';
    o.averageTurnCount = 42;
    o.conversationCount = 42;
    o.conversationCountTimeSeries =
        buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries();
    o.customHighlighterMatches = buildUnnamed21();
    o.issueMatches = buildUnnamed22();
    o.issueMatchesStats = buildUnnamed23();
    o.smartHighlighterMatches = buildUnnamed24();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CalculateStatsResponse(
  api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse <
      3) {
    unittest.expect(o.averageDuration!, unittest.equals('foo'));
    unittest.expect(o.averageTurnCount!, unittest.equals(42));
    unittest.expect(o.conversationCount!, unittest.equals(42));
    checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries(
      o.conversationCountTimeSeries!,
    );
    checkUnnamed21(o.customHighlighterMatches!);
    checkUnnamed22(o.issueMatches!);
    checkUnnamed23(o.issueMatchesStats!);
    checkUnnamed24(o.smartHighlighterMatches!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse--;
}

core.List<
  api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
>
buildUnnamed25() => [
  buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(),
  buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(),
];

void checkUnnamed25(
  core.List<
    api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(
    o[0],
  );
  checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(
    o[1],
  );
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries =
    0;
api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries
buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries() {
  final o =
      api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries();
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries <
      3) {
    o.intervalDuration = 'foo';
    o.points = buildUnnamed25();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries(
  api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries <
      3) {
    unittest.expect(o.intervalDuration!, unittest.equals('foo'));
    checkUnnamed25(o.points!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval =
    0;
api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval() {
  final o =
      api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval();
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval <
      3) {
    o.conversationCount = 42;
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(
  api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval <
      3) {
    unittest.expect(o.conversationCount!, unittest.equals(42));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation = 0;
api.GoogleCloudContactcenterinsightsV1CallAnnotation
buildGoogleCloudContactcenterinsightsV1CallAnnotation() {
  final o = api.GoogleCloudContactcenterinsightsV1CallAnnotation();
  buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation < 3) {
    o.annotationEndBoundary =
        buildGoogleCloudContactcenterinsightsV1AnnotationBoundary();
    o.annotationStartBoundary =
        buildGoogleCloudContactcenterinsightsV1AnnotationBoundary();
    o.channelTag = 42;
    o.entityMentionData =
        buildGoogleCloudContactcenterinsightsV1EntityMentionData();
    o.holdData = buildGoogleCloudContactcenterinsightsV1HoldData();
    o.intentMatchData =
        buildGoogleCloudContactcenterinsightsV1IntentMatchData();
    o.interruptionData =
        buildGoogleCloudContactcenterinsightsV1InterruptionData();
    o.issueMatchData = buildGoogleCloudContactcenterinsightsV1IssueMatchData();
    o.phraseMatchData =
        buildGoogleCloudContactcenterinsightsV1PhraseMatchData();
    o.sentimentData = buildGoogleCloudContactcenterinsightsV1SentimentData();
    o.silenceData = buildGoogleCloudContactcenterinsightsV1SilenceData();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CallAnnotation(
  api.GoogleCloudContactcenterinsightsV1CallAnnotation o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation < 3) {
    checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(
      o.annotationEndBoundary!,
    );
    checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(
      o.annotationStartBoundary!,
    );
    unittest.expect(o.channelTag!, unittest.equals(42));
    checkGoogleCloudContactcenterinsightsV1EntityMentionData(
      o.entityMentionData!,
    );
    checkGoogleCloudContactcenterinsightsV1HoldData(o.holdData!);
    checkGoogleCloudContactcenterinsightsV1IntentMatchData(o.intentMatchData!);
    checkGoogleCloudContactcenterinsightsV1InterruptionData(
      o.interruptionData!,
    );
    checkGoogleCloudContactcenterinsightsV1IssueMatchData(o.issueMatchData!);
    checkGoogleCloudContactcenterinsightsV1PhraseMatchData(o.phraseMatchData!);
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentimentData!);
    checkGoogleCloudContactcenterinsightsV1SilenceData(o.silenceData!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation =
    0;
api.GoogleCloudContactcenterinsightsV1CesEndSessionAnnotation
buildGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation() {
  final o = api.GoogleCloudContactcenterinsightsV1CesEndSessionAnnotation();
  buildCounterGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation <
      3) {
    o.endSession = buildGoogleCloudCesV1mainEndSession();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation(
  api.GoogleCloudContactcenterinsightsV1CesEndSessionAnnotation o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation <
      3) {
    checkGoogleCloudCesV1mainEndSession(o.endSession!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation--;
}

core.List<api.GoogleCloudCesV1mainMessage> buildUnnamed26() => [
  buildGoogleCloudCesV1mainMessage(),
  buildGoogleCloudCesV1mainMessage(),
];

void checkUnnamed26(core.List<api.GoogleCloudCesV1mainMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudCesV1mainMessage(o[0]);
  checkGoogleCloudCesV1mainMessage(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1CesTurnAnnotation = 0;
api.GoogleCloudContactcenterinsightsV1CesTurnAnnotation
buildGoogleCloudContactcenterinsightsV1CesTurnAnnotation() {
  final o = api.GoogleCloudContactcenterinsightsV1CesTurnAnnotation();
  buildCounterGoogleCloudContactcenterinsightsV1CesTurnAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CesTurnAnnotation < 3) {
    o.messages = buildUnnamed26();
    o.rootSpan = buildGoogleCloudCesV1mainSpan();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CesTurnAnnotation--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CesTurnAnnotation(
  api.GoogleCloudContactcenterinsightsV1CesTurnAnnotation o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CesTurnAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CesTurnAnnotation < 3) {
    checkUnnamed26(o.messages!);
    checkGoogleCloudCesV1mainSpan(o.rootSpan!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CesTurnAnnotation--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Chart = 0;
api.GoogleCloudContactcenterinsightsV1Chart
buildGoogleCloudContactcenterinsightsV1Chart() {
  final o = api.GoogleCloudContactcenterinsightsV1Chart();
  buildCounterGoogleCloudContactcenterinsightsV1Chart++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Chart < 3) {
    o.action = buildGoogleCloudContactcenterinsightsV1ChartAction();
    o.chartType = 'foo';
    o.chartVisualizationType = 'foo';
    o.createTime = 'foo';
    o.dataSource = buildGoogleCloudContactcenterinsightsV1ChartDataSource();
    o.dateRangeConfig =
        buildGoogleCloudContactcenterinsightsV1DateRangeConfig();
    o.description = 'foo';
    o.displayName = 'foo';
    o.filter = 'foo';
    o.height = 42;
    o.name = 'foo';
    o.updateTime = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudContactcenterinsightsV1Chart--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Chart(
  api.GoogleCloudContactcenterinsightsV1Chart o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Chart++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Chart < 3) {
    checkGoogleCloudContactcenterinsightsV1ChartAction(o.action!);
    unittest.expect(o.chartType!, unittest.equals('foo'));
    unittest.expect(o.chartVisualizationType!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1ChartDataSource(o.dataSource!);
    checkGoogleCloudContactcenterinsightsV1DateRangeConfig(o.dateRangeConfig!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.height!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.width!, unittest.equals(42));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Chart--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ChartAction = 0;
api.GoogleCloudContactcenterinsightsV1ChartAction
buildGoogleCloudContactcenterinsightsV1ChartAction() {
  final o = api.GoogleCloudContactcenterinsightsV1ChartAction();
  buildCounterGoogleCloudContactcenterinsightsV1ChartAction++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ChartAction < 3) {
    o.redirectAction = buildGoogleCloudContactcenterinsightsV1RedirectAction();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ChartAction--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ChartAction(
  api.GoogleCloudContactcenterinsightsV1ChartAction o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ChartAction++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ChartAction < 3) {
    checkGoogleCloudContactcenterinsightsV1RedirectAction(o.redirectAction!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ChartAction--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ChartDataSource = 0;
api.GoogleCloudContactcenterinsightsV1ChartDataSource
buildGoogleCloudContactcenterinsightsV1ChartDataSource() {
  final o = api.GoogleCloudContactcenterinsightsV1ChartDataSource();
  buildCounterGoogleCloudContactcenterinsightsV1ChartDataSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ChartDataSource < 3) {
    o.generativeInsights =
        buildGoogleCloudContactcenterinsightsV1GenerativeInsights();
    o.queryMetrics = buildGoogleCloudContactcenterinsightsV1QueryMetrics();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ChartDataSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ChartDataSource(
  api.GoogleCloudContactcenterinsightsV1ChartDataSource o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ChartDataSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ChartDataSource < 3) {
    checkGoogleCloudContactcenterinsightsV1GenerativeInsights(
      o.generativeInsights!,
    );
    checkGoogleCloudContactcenterinsightsV1QueryMetrics(o.queryMetrics!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ChartDataSource--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Widget> buildUnnamed27() => [
  buildGoogleCloudContactcenterinsightsV1Widget(),
  buildGoogleCloudContactcenterinsightsV1Widget(),
];

void checkUnnamed27(core.List<api.GoogleCloudContactcenterinsightsV1Widget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Widget(o[0]);
  checkGoogleCloudContactcenterinsightsV1Widget(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Container = 0;
api.GoogleCloudContactcenterinsightsV1Container
buildGoogleCloudContactcenterinsightsV1Container() {
  final o = api.GoogleCloudContactcenterinsightsV1Container();
  buildCounterGoogleCloudContactcenterinsightsV1Container++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Container < 3) {
    o.containerId = 'foo';
    o.dateRangeConfig =
        buildGoogleCloudContactcenterinsightsV1DateRangeConfig();
    o.description = 'foo';
    o.displayName = 'foo';
    o.filter = 'foo';
    o.height = 42;
    o.widgets = buildUnnamed27();
    o.width = 42;
  }
  buildCounterGoogleCloudContactcenterinsightsV1Container--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Container(
  api.GoogleCloudContactcenterinsightsV1Container o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Container++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Container < 3) {
    unittest.expect(o.containerId!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1DateRangeConfig(o.dateRangeConfig!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.height!, unittest.equals(42));
    checkUnnamed27(o.widgets!);
    unittest.expect(o.width!, unittest.equals(42));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Container--;
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1DialogflowIntent>
buildUnnamed28() => {
  'x': buildGoogleCloudContactcenterinsightsV1DialogflowIntent(),
  'y': buildGoogleCloudContactcenterinsightsV1DialogflowIntent(),
};

void checkUnnamed28(
  core.Map<core.String, api.GoogleCloudContactcenterinsightsV1DialogflowIntent>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1DialogflowIntent(o['x']!);
  checkGoogleCloudContactcenterinsightsV1DialogflowIntent(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed29() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed29(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation>
buildUnnamed30() => [
  buildGoogleCloudContactcenterinsightsV1RuntimeAnnotation(),
  buildGoogleCloudContactcenterinsightsV1RuntimeAnnotation(),
];

void checkUnnamed30(
  core.List<api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1RuntimeAnnotation(o[0]);
  checkGoogleCloudContactcenterinsightsV1RuntimeAnnotation(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Conversation = 0;
api.GoogleCloudContactcenterinsightsV1Conversation
buildGoogleCloudContactcenterinsightsV1Conversation() {
  final o = api.GoogleCloudContactcenterinsightsV1Conversation();
  buildCounterGoogleCloudContactcenterinsightsV1Conversation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Conversation < 3) {
    o.agentId = 'foo';
    o.callMetadata =
        buildGoogleCloudContactcenterinsightsV1ConversationCallMetadata();
    o.correlationInfo =
        buildGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo();
    o.createTime = 'foo';
    o.dataSource =
        buildGoogleCloudContactcenterinsightsV1ConversationDataSource();
    o.dialogflowIntents = buildUnnamed28();
    o.duration = 'foo';
    o.expireTime = 'foo';
    o.labels = buildUnnamed29();
    o.languageCode = 'foo';
    o.latestAnalysis = buildGoogleCloudContactcenterinsightsV1Analysis();
    o.latestSummary =
        buildGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData();
    o.medium = 'foo';
    o.metadataJson = 'foo';
    o.name = 'foo';
    o.obfuscatedUserId = 'foo';
    o.qualityMetadata =
        buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadata();
    o.runtimeAnnotations = buildUnnamed30();
    o.startTime = 'foo';
    o.transcript =
        buildGoogleCloudContactcenterinsightsV1ConversationTranscript();
    o.ttl = 'foo';
    o.turnCount = 42;
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Conversation--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Conversation(
  api.GoogleCloudContactcenterinsightsV1Conversation o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Conversation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Conversation < 3) {
    unittest.expect(o.agentId!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1ConversationCallMetadata(
      o.callMetadata!,
    );
    checkGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo(
      o.correlationInfo!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1ConversationDataSource(
      o.dataSource!,
    );
    checkUnnamed28(o.dialogflowIntents!);
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    checkUnnamed29(o.labels!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1Analysis(o.latestAnalysis!);
    checkGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData(
      o.latestSummary!,
    );
    unittest.expect(o.medium!, unittest.equals('foo'));
    unittest.expect(o.metadataJson!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.obfuscatedUserId!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadata(
      o.qualityMetadata!,
    );
    checkUnnamed30(o.runtimeAnnotations!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1ConversationTranscript(
      o.transcript!,
    );
    unittest.expect(o.ttl!, unittest.equals('foo'));
    unittest.expect(o.turnCount!, unittest.equals(42));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Conversation--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata = 0;
api.GoogleCloudContactcenterinsightsV1ConversationCallMetadata
buildGoogleCloudContactcenterinsightsV1ConversationCallMetadata() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationCallMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata <
      3) {
    o.agentChannel = 42;
    o.customerChannel = 42;
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationCallMetadata(
  api.GoogleCloudContactcenterinsightsV1ConversationCallMetadata o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata <
      3) {
    unittest.expect(o.agentChannel!, unittest.equals(42));
    unittest.expect(o.customerChannel!, unittest.equals(42));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo = 0;
api.GoogleCloudContactcenterinsightsV1ConversationCorrelationInfo
buildGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationCorrelationInfo();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo <
      3) {
    o.correlationTypes = buildUnnamed31();
    o.fullConversationCorrelationId = 'foo';
    o.mergedFullConversationCorrelationId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo(
  api.GoogleCloudContactcenterinsightsV1ConversationCorrelationInfo o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo <
      3) {
    checkUnnamed31(o.correlationTypes!);
    unittest.expect(o.fullConversationCorrelationId!, unittest.equals('foo'));
    unittest.expect(
      o.mergedFullConversationCorrelationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ConversationDataOptions =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationDataOptions
buildGoogleCloudContactcenterinsightsV1ConversationDataOptions() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationDataOptions();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataOptions++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationDataOptions <
      3) {
    o.includeDialogflowInteractionData = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataOptions--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationDataOptions(
  api.GoogleCloudContactcenterinsightsV1ConversationDataOptions o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataOptions++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationDataOptions <
      3) {
    unittest.expect(o.includeDialogflowInteractionData!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataOptions--;
}

core.List<
  api.GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio
>
buildUnnamed32() => [
  buildGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(),
  buildGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(),
];

void checkUnnamed32(
  core.List<
    api.GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(
    o[0],
  );
  checkGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(
    o[1],
  );
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationDataSource
buildGoogleCloudContactcenterinsightsV1ConversationDataSource() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationDataSource();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource <
      3) {
    o.dialogflowSource =
        buildGoogleCloudContactcenterinsightsV1DialogflowSource();
    o.gcsSource = buildGoogleCloudContactcenterinsightsV1GcsSource();
    o.metadataUri = 'foo';
    o.turnLevelAudios = buildUnnamed32();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationDataSource(
  api.GoogleCloudContactcenterinsightsV1ConversationDataSource o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource <
      3) {
    checkGoogleCloudContactcenterinsightsV1DialogflowSource(
      o.dialogflowSource!,
    );
    checkGoogleCloudContactcenterinsightsV1GcsSource(o.gcsSource!);
    unittest.expect(o.metadataUri!, unittest.equals('foo'));
    checkUnnamed32(o.turnLevelAudios!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio
buildGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio <
      3) {
    o.audioDuration = 'foo';
    o.audioGcsUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(
  api.GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio <
      3) {
    unittest.expect(o.audioDuration!, unittest.equals('foo'));
    unittest.expect(o.audioGcsUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment = 0;
api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment
buildGoogleCloudContactcenterinsightsV1ConversationLevelSentiment() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment <
      3) {
    o.channelTag = 42;
    o.sentimentData = buildGoogleCloudContactcenterinsightsV1SentimentData();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(
  api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment <
      3) {
    unittest.expect(o.channelTag!, unittest.equals(42));
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentimentData!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence = 0;
api.GoogleCloudContactcenterinsightsV1ConversationLevelSilence
buildGoogleCloudContactcenterinsightsV1ConversationLevelSilence() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationLevelSilence();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence <
      3) {
    o.silenceDuration = 'foo';
    o.silencePercentage = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationLevelSilence(
  api.GoogleCloudContactcenterinsightsV1ConversationLevelSilence o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence <
      3) {
    unittest.expect(o.silenceDuration!, unittest.equals('foo'));
    unittest.expect(o.silencePercentage!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationParticipant
buildGoogleCloudContactcenterinsightsV1ConversationParticipant() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationParticipant();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant <
      3) {
    o.dialogflowParticipant = 'foo';
    o.dialogflowParticipantName = 'foo';
    o.obfuscatedExternalUserId = 'foo';
    o.role = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationParticipant(
  api.GoogleCloudContactcenterinsightsV1ConversationParticipant o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant <
      3) {
    unittest.expect(o.dialogflowParticipant!, unittest.equals('foo'));
    unittest.expect(o.dialogflowParticipantName!, unittest.equals('foo'));
    unittest.expect(o.obfuscatedExternalUserId!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant--;
}

core.List<
  api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
>
buildUnnamed33() => [
  buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(),
  buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(),
];

void checkUnnamed33(
  core.List<
    api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(
    o[0],
  );
  checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(
    o[1],
  );
}

core.List<api.GoogleCloudContactcenterinsightsV1FeedbackLabel>
buildUnnamed34() => [
  buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
  buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
];

void checkUnnamed34(
  core.List<api.GoogleCloudContactcenterinsightsV1FeedbackLabel> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1FeedbackLabel(o[0]);
  checkGoogleCloudContactcenterinsightsV1FeedbackLabel(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata = 0;
api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadata
buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadata() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata <
      3) {
    o.agentInfo = buildUnnamed33();
    o.customerSatisfactionRating = 42;
    o.feedbackLabels = buildUnnamed34();
    o.menuPath = 'foo';
    o.waitDuration = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadata(
  api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadata o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata <
      3) {
    checkUnnamed33(o.agentInfo!);
    unittest.expect(o.customerSatisfactionRating!, unittest.equals(42));
    checkUnnamed34(o.feedbackLabels!);
    unittest.expect(o.menuPath!, unittest.equals('foo'));
    unittest.expect(o.waitDuration!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo <
      3) {
    o.agentId = 'foo';
    o.agentType = 'foo';
    o.deploymentDisplayName = 'foo';
    o.deploymentId = 'foo';
    o.displayName = 'foo';
    o.dispositionCode = 'foo';
    o.entrySubagentDisplayName = 'foo';
    o.location = 'foo';
    o.team = 'foo';
    o.teams = buildUnnamed35();
    o.versionDisplayName = 'foo';
    o.versionId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(
  api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo <
      3) {
    unittest.expect(o.agentId!, unittest.equals('foo'));
    unittest.expect(o.agentType!, unittest.equals('foo'));
    unittest.expect(o.deploymentDisplayName!, unittest.equals('foo'));
    unittest.expect(o.deploymentId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.dispositionCode!, unittest.equals('foo'));
    unittest.expect(o.entrySubagentDisplayName!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.team!, unittest.equals('foo'));
    checkUnnamed35(o.teams!);
    unittest.expect(o.versionDisplayName!, unittest.equals('foo'));
    unittest.expect(o.versionId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo--;
}

core.Map<core.String, core.String> buildUnnamed36() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed36(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed37() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed37(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
buildGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData <
      3) {
    o.answerRecord = 'foo';
    o.confidence = 42.0;
    o.conversationModel = 'foo';
    o.generatorId = 'foo';
    o.metadata = buildUnnamed36();
    o.text = 'foo';
    o.textSections = buildUnnamed37();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData(
  api.GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData <
      3) {
    unittest.expect(o.answerRecord!, unittest.equals('foo'));
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.conversationModel!, unittest.equals('foo'));
    unittest.expect(o.generatorId!, unittest.equals('foo'));
    checkUnnamed36(o.metadata!);
    unittest.expect(o.text!, unittest.equals('foo'));
    checkUnnamed37(o.textSections!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData--;
}

core.List<
  api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
>
buildUnnamed38() => [
  buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(),
  buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(),
];

void checkUnnamed38(
  core.List<
    api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(
    o[0],
  );
  checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(
    o[1],
  );
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationTranscript
buildGoogleCloudContactcenterinsightsV1ConversationTranscript() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationTranscript();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript <
      3) {
    o.transcriptSegments = buildUnnamed38();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationTranscript(
  api.GoogleCloudContactcenterinsightsV1ConversationTranscript o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript <
      3) {
    checkUnnamed38(o.transcriptSegments!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript--;
}

core.List<
  api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
>
buildUnnamed39() => [
  buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(),
  buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(),
];

void checkUnnamed39(
  core.List<
    api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(
    o[0],
  );
  checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(
    o[1],
  );
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment <
      3) {
    o.channelTag = 42;
    o.confidence = 42.0;
    o.dialogflowSegmentMetadata =
        buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata();
    o.languageCode = 'foo';
    o.messageTime = 'foo';
    o.segmentParticipant =
        buildGoogleCloudContactcenterinsightsV1ConversationParticipant();
    o.sentiment = buildGoogleCloudContactcenterinsightsV1SentimentData();
    o.text = 'foo';
    o.turnLevelAudio =
        buildGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio();
    o.words = buildUnnamed39();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(
  api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment <
      3) {
    unittest.expect(o.channelTag!, unittest.equals(42));
    unittest.expect(o.confidence!, unittest.equals(42.0));
    checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata(
      o.dialogflowSegmentMetadata!,
    );
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.messageTime!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1ConversationParticipant(
      o.segmentParticipant!,
    );
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentiment!);
    unittest.expect(o.text!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(
      o.turnLevelAudio!,
    );
    checkUnnamed39(o.words!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata <
      3) {
    o.smartReplyAllowlistCovered = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata(
  api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata <
      3) {
    unittest.expect(o.smartReplyAllowlistCovered!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo <
      3) {
    o.confidence = 42.0;
    o.endOffset = 'foo';
    o.startOffset = 'foo';
    o.word = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(
  api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo <
      3) {
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.endOffset!, unittest.equals('foo'));
    unittest.expect(o.startOffset!, unittest.equals('foo'));
    unittest.expect(o.word!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1CorrelationConfig = 0;
api.GoogleCloudContactcenterinsightsV1CorrelationConfig
buildGoogleCloudContactcenterinsightsV1CorrelationConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1CorrelationConfig();
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CorrelationConfig < 3) {
    o.createTime = 'foo';
    o.fullConversationConfig =
        buildGoogleCloudContactcenterinsightsV1CorrelationTypeConfig();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CorrelationConfig(
  api.GoogleCloudContactcenterinsightsV1CorrelationConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CorrelationConfig < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1CorrelationTypeConfig(
      o.fullConversationConfig!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationConfig--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1CorrelationRule = 0;
api.GoogleCloudContactcenterinsightsV1CorrelationRule
buildGoogleCloudContactcenterinsightsV1CorrelationRule() {
  final o = api.GoogleCloudContactcenterinsightsV1CorrelationRule();
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CorrelationRule < 3) {
    o.active = true;
    o.constraintExpression = 'foo';
    o.joinKeyExpression = 'foo';
    o.ruleId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationRule--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CorrelationRule(
  api.GoogleCloudContactcenterinsightsV1CorrelationRule o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CorrelationRule < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(o.constraintExpression!, unittest.equals('foo'));
    unittest.expect(o.joinKeyExpression!, unittest.equals('foo'));
    unittest.expect(o.ruleId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationRule--;
}

core.List<api.GoogleCloudContactcenterinsightsV1CorrelationRule>
buildUnnamed40() => [
  buildGoogleCloudContactcenterinsightsV1CorrelationRule(),
  buildGoogleCloudContactcenterinsightsV1CorrelationRule(),
];

void checkUnnamed40(
  core.List<api.GoogleCloudContactcenterinsightsV1CorrelationRule> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1CorrelationRule(o[0]);
  checkGoogleCloudContactcenterinsightsV1CorrelationRule(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1CorrelationTypeConfig =
    0;
api.GoogleCloudContactcenterinsightsV1CorrelationTypeConfig
buildGoogleCloudContactcenterinsightsV1CorrelationTypeConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1CorrelationTypeConfig();
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationTypeConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CorrelationTypeConfig < 3) {
    o.correlationRules = buildUnnamed40();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationTypeConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CorrelationTypeConfig(
  api.GoogleCloudContactcenterinsightsV1CorrelationTypeConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationTypeConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CorrelationTypeConfig < 3) {
    checkUnnamed40(o.correlationRules!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CorrelationTypeConfig--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Dashboard = 0;
api.GoogleCloudContactcenterinsightsV1Dashboard
buildGoogleCloudContactcenterinsightsV1Dashboard() {
  final o = api.GoogleCloudContactcenterinsightsV1Dashboard();
  buildCounterGoogleCloudContactcenterinsightsV1Dashboard++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Dashboard < 3) {
    o.createTime = 'foo';
    o.dateRangeConfig =
        buildGoogleCloudContactcenterinsightsV1DateRangeConfig();
    o.description = 'foo';
    o.displayName = 'foo';
    o.filter = 'foo';
    o.name = 'foo';
    o.readOnly = true;
    o.rootContainer = buildGoogleCloudContactcenterinsightsV1Container();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Dashboard--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Dashboard(
  api.GoogleCloudContactcenterinsightsV1Dashboard o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Dashboard++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Dashboard < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1DateRangeConfig(o.dateRangeConfig!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.readOnly!, unittest.isTrue);
    checkGoogleCloudContactcenterinsightsV1Container(o.rootContainer!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Dashboard--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Dataset = 0;
api.GoogleCloudContactcenterinsightsV1Dataset
buildGoogleCloudContactcenterinsightsV1Dataset() {
  final o = api.GoogleCloudContactcenterinsightsV1Dataset();
  buildCounterGoogleCloudContactcenterinsightsV1Dataset++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Dataset < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.ttl = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Dataset--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Dataset(
  api.GoogleCloudContactcenterinsightsV1Dataset o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Dataset++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Dataset < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ttl!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Dataset--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfig = 0;
api.GoogleCloudContactcenterinsightsV1DateRangeConfig
buildGoogleCloudContactcenterinsightsV1DateRangeConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1DateRangeConfig();
  buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfig < 3) {
    o.absoluteDateRange =
        buildGoogleCloudContactcenterinsightsV1QueryInterval();
    o.relativeDateRange =
        buildGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange();
  }
  buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DateRangeConfig(
  api.GoogleCloudContactcenterinsightsV1DateRangeConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfig < 3) {
    checkGoogleCloudContactcenterinsightsV1QueryInterval(o.absoluteDateRange!);
    checkGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange(
      o.relativeDateRange!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfig--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange =
    0;
api.GoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange
buildGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange();
  buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange <
      3) {
    o.quantity = 'foo';
    o.unit = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange(
  api.GoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange <
      3) {
    unittest.expect(o.quantity!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest =
    0;
api.GoogleCloudContactcenterinsightsV1DeployIssueModelRequest
buildGoogleCloudContactcenterinsightsV1DeployIssueModelRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1DeployIssueModelRequest();
  buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DeployIssueModelRequest(
  api.GoogleCloudContactcenterinsightsV1DeployIssueModelRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest <
      3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest =
    0;
api.GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest
buildGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest();
  buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest(
  api.GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest = 0;
api.GoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest
buildGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest <
      3) {
    o.dryRun = true;
    o.filter = 'foo';
    o.fullReport = true;
    o.instructions = 'foo';
    o.maxSteps = 42;
    o.metricType = 'foo';
    o.outputConfig = buildGoogleCloudContactcenterinsightsV1OutputConfig();
    o.parent = 'foo';
    o.requestId = 'foo';
    o.taskQuery = 'foo';
    o.validateOnly = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest(
  api.GoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest <
      3) {
    unittest.expect(o.dryRun!, unittest.isTrue);
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.fullReport!, unittest.isTrue);
    unittest.expect(o.instructions!, unittest.equals('foo'));
    unittest.expect(o.maxSteps!, unittest.equals(42));
    unittest.expect(o.metricType!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1OutputConfig(o.outputConfig!);
    unittest.expect(o.parent!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.taskQuery!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Diagnostic = 0;
api.GoogleCloudContactcenterinsightsV1Diagnostic
buildGoogleCloudContactcenterinsightsV1Diagnostic() {
  final o = api.GoogleCloudContactcenterinsightsV1Diagnostic();
  buildCounterGoogleCloudContactcenterinsightsV1Diagnostic++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Diagnostic < 3) {
    o.analysisSummary = 'foo';
    o.conversationFilter = 'foo';
    o.createTime = 'foo';
    o.name = 'foo';
    o.report = buildGoogleCloudContactcenterinsightsV1DiagnosticReport();
  }
  buildCounterGoogleCloudContactcenterinsightsV1Diagnostic--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Diagnostic(
  api.GoogleCloudContactcenterinsightsV1Diagnostic o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Diagnostic++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Diagnostic < 3) {
    unittest.expect(o.analysisSummary!, unittest.equals('foo'));
    unittest.expect(o.conversationFilter!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1DiagnosticReport(o.report!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1Diagnostic--;
}

core.List<api.GoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats>
buildUnnamed41() => [
  buildGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats(),
  buildGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats(),
];

void checkUnnamed41(
  core.List<api.GoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats(o[0]);
  checkGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats(o[1]);
}

core.List<api.GoogleCloudContactcenterinsightsV1LossPattern> buildUnnamed42() =>
    [
      buildGoogleCloudContactcenterinsightsV1LossPattern(),
      buildGoogleCloudContactcenterinsightsV1LossPattern(),
    ];

void checkUnnamed42(
  core.List<api.GoogleCloudContactcenterinsightsV1LossPattern> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1LossPattern(o[0]);
  checkGoogleCloudContactcenterinsightsV1LossPattern(o[1]);
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1MetricValue>
buildUnnamed43() => {
  'x': buildGoogleCloudContactcenterinsightsV1MetricValue(),
  'y': buildGoogleCloudContactcenterinsightsV1MetricValue(),
};

void checkUnnamed43(
  core.Map<core.String, api.GoogleCloudContactcenterinsightsV1MetricValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1MetricValue(o['x']!);
  checkGoogleCloudContactcenterinsightsV1MetricValue(o['y']!);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReport = 0;
api.GoogleCloudContactcenterinsightsV1DiagnosticReport
buildGoogleCloudContactcenterinsightsV1DiagnosticReport() {
  final o = api.GoogleCloudContactcenterinsightsV1DiagnosticReport();
  buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReport++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReport < 3) {
    o.intentStats = buildUnnamed41();
    o.lossPatterns = buildUnnamed42();
    o.metrics = buildUnnamed43();
  }
  buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReport--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DiagnosticReport(
  api.GoogleCloudContactcenterinsightsV1DiagnosticReport o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReport++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReport < 3) {
    checkUnnamed41(o.intentStats!);
    checkUnnamed42(o.lossPatterns!);
    checkUnnamed43(o.metrics!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReport--;
}

core.List<api.GoogleCloudContactcenterinsightsV1LossPattern> buildUnnamed44() =>
    [
      buildGoogleCloudContactcenterinsightsV1LossPattern(),
      buildGoogleCloudContactcenterinsightsV1LossPattern(),
    ];

void checkUnnamed44(
  core.List<api.GoogleCloudContactcenterinsightsV1LossPattern> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1LossPattern(o[0]);
  checkGoogleCloudContactcenterinsightsV1LossPattern(o[1]);
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1MetricValue>
buildUnnamed45() => {
  'x': buildGoogleCloudContactcenterinsightsV1MetricValue(),
  'y': buildGoogleCloudContactcenterinsightsV1MetricValue(),
};

void checkUnnamed45(
  core.Map<core.String, api.GoogleCloudContactcenterinsightsV1MetricValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1MetricValue(o['x']!);
  checkGoogleCloudContactcenterinsightsV1MetricValue(o['y']!);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats = 0;
api.GoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats
buildGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats() {
  final o = api.GoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats();
  buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats <
      3) {
    o.conversationCount = 42;
    o.intentDisplayName = 'foo';
    o.intentId = 'foo';
    o.lossPatterns = buildUnnamed44();
    o.metrics = buildUnnamed45();
  }
  buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats(
  api.GoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats <
      3) {
    unittest.expect(o.conversationCount!, unittest.equals(42));
    unittest.expect(o.intentDisplayName!, unittest.equals('foo'));
    unittest.expect(o.intentId!, unittest.equals('foo'));
    checkUnnamed44(o.lossPatterns!);
    checkUnnamed45(o.metrics!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent = 0;
api.GoogleCloudContactcenterinsightsV1DialogflowIntent
buildGoogleCloudContactcenterinsightsV1DialogflowIntent() {
  final o = api.GoogleCloudContactcenterinsightsV1DialogflowIntent();
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent < 3) {
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DialogflowIntent(
  api.GoogleCloudContactcenterinsightsV1DialogflowIntent o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData = 0;
api.GoogleCloudContactcenterinsightsV1DialogflowInteractionData
buildGoogleCloudContactcenterinsightsV1DialogflowInteractionData() {
  final o = api.GoogleCloudContactcenterinsightsV1DialogflowInteractionData();
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData <
      3) {
    o.confidence = 42.0;
    o.dialogflowIntentId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DialogflowInteractionData(
  api.GoogleCloudContactcenterinsightsV1DialogflowInteractionData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData <
      3) {
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.dialogflowIntentId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource = 0;
api.GoogleCloudContactcenterinsightsV1DialogflowSource
buildGoogleCloudContactcenterinsightsV1DialogflowSource() {
  final o = api.GoogleCloudContactcenterinsightsV1DialogflowSource();
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource < 3) {
    o.audioUri = 'foo';
    o.dialogflowConversation = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DialogflowSource(
  api.GoogleCloudContactcenterinsightsV1DialogflowSource o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource < 3) {
    unittest.expect(o.audioUri!, unittest.equals('foo'));
    unittest.expect(o.dialogflowConversation!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Dimension = 0;
api.GoogleCloudContactcenterinsightsV1Dimension
buildGoogleCloudContactcenterinsightsV1Dimension() {
  final o = api.GoogleCloudContactcenterinsightsV1Dimension();
  buildCounterGoogleCloudContactcenterinsightsV1Dimension++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Dimension < 3) {
    o.agentDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata();
    o.clientSentimentCategoryDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata();
    o.conversationProfileDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata();
    o.conversationalAgentsPlaybookDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata();
    o.conversationalAgentsToolDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata();
    o.dimensionKey = 'foo';
    o.issueDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata();
    o.labelDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata();
    o.mediumDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata();
    o.qaQuestionAnswerDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata();
    o.qaQuestionDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata();
    o.qaScorecardDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata();
  }
  buildCounterGoogleCloudContactcenterinsightsV1Dimension--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Dimension(
  api.GoogleCloudContactcenterinsightsV1Dimension o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Dimension++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Dimension < 3) {
    checkGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata(
      o.agentDimensionMetadata!,
    );
    checkGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata(
      o.clientSentimentCategoryDimensionMetadata!,
    );
    checkGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata(
      o.conversationProfileDimensionMetadata!,
    );
    checkGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata(
      o.conversationalAgentsPlaybookDimensionMetadata!,
    );
    checkGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata(
      o.conversationalAgentsToolDimensionMetadata!,
    );
    unittest.expect(o.dimensionKey!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata(
      o.issueDimensionMetadata!,
    );
    checkGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata(
      o.labelDimensionMetadata!,
    );
    checkGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata(
      o.mediumDimensionMetadata!,
    );
    checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata(
      o.qaQuestionAnswerDimensionMetadata!,
    );
    checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata(
      o.qaQuestionDimensionMetadata!,
    );
    checkGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata(
      o.qaScorecardDimensionMetadata!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1Dimension--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata <
      3) {
    o.agentDeploymentDisplayName = 'foo';
    o.agentDeploymentId = 'foo';
    o.agentDisplayName = 'foo';
    o.agentId = 'foo';
    o.agentTeam = 'foo';
    o.agentVersionDisplayName = 'foo';
    o.agentVersionId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata <
      3) {
    unittest.expect(o.agentDeploymentDisplayName!, unittest.equals('foo'));
    unittest.expect(o.agentDeploymentId!, unittest.equals('foo'));
    unittest.expect(o.agentDisplayName!, unittest.equals('foo'));
    unittest.expect(o.agentId!, unittest.equals('foo'));
    unittest.expect(o.agentTeam!, unittest.equals('foo'));
    unittest.expect(o.agentVersionDisplayName!, unittest.equals('foo'));
    unittest.expect(o.agentVersionId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata <
      3) {
    o.sentimentCategory = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata <
      3) {
    unittest.expect(o.sentimentCategory!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata <
      3) {
    o.conversationProfileId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata <
      3) {
    unittest.expect(o.conversationProfileId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata <
      3) {
    o.playbookDisplayName = 'foo';
    o.playbookId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata <
      3) {
    unittest.expect(o.playbookDisplayName!, unittest.equals('foo'));
    unittest.expect(o.playbookId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata <
      3) {
    o.toolDisplayName = 'foo';
    o.toolId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata <
      3) {
    unittest.expect(o.toolDisplayName!, unittest.equals('foo'));
    unittest.expect(o.toolId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata <
      3) {
    o.issueDisplayName = 'foo';
    o.issueId = 'foo';
    o.issueModelId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata <
      3) {
    unittest.expect(o.issueDisplayName!, unittest.equals('foo'));
    unittest.expect(o.issueId!, unittest.equals('foo'));
    unittest.expect(o.issueModelId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata <
      3) {
    o.labelKey = 'foo';
    o.labelValue = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata <
      3) {
    unittest.expect(o.labelKey!, unittest.equals('foo'));
    unittest.expect(o.labelValue!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata <
      3) {
    o.medium = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata <
      3) {
    unittest.expect(o.medium!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata <
      3) {
    o.answerValue = 'foo';
    o.qaQuestionId = 'foo';
    o.qaScorecardId = 'foo';
    o.questionBody = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata <
      3) {
    unittest.expect(o.answerValue!, unittest.equals('foo'));
    unittest.expect(o.qaQuestionId!, unittest.equals('foo'));
    unittest.expect(o.qaScorecardId!, unittest.equals('foo'));
    unittest.expect(o.questionBody!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata <
      3) {
    o.qaQuestionId = 'foo';
    o.qaScorecardId = 'foo';
    o.questionBody = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata <
      3) {
    unittest.expect(o.qaQuestionId!, unittest.equals('foo'));
    unittest.expect(o.qaScorecardId!, unittest.equals('foo'));
    unittest.expect(o.questionBody!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata
buildGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata <
      3) {
    o.qaScorecardId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata(
  api.GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata <
      3) {
    unittest.expect(o.qaScorecardId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec = 0;
api.GoogleCloudContactcenterinsightsV1EncryptionSpec
buildGoogleCloudContactcenterinsightsV1EncryptionSpec() {
  final o = api.GoogleCloudContactcenterinsightsV1EncryptionSpec();
  buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec++;
  if (buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec < 3) {
    o.kmsKey = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1EncryptionSpec(
  api.GoogleCloudContactcenterinsightsV1EncryptionSpec o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec++;
  if (buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec < 3) {
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec--;
}

core.Map<core.String, core.String> buildUnnamed46() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Entity = 0;
api.GoogleCloudContactcenterinsightsV1Entity
buildGoogleCloudContactcenterinsightsV1Entity() {
  final o = api.GoogleCloudContactcenterinsightsV1Entity();
  buildCounterGoogleCloudContactcenterinsightsV1Entity++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Entity < 3) {
    o.displayName = 'foo';
    o.metadata = buildUnnamed46();
    o.salience = 42.0;
    o.sentiment = buildGoogleCloudContactcenterinsightsV1SentimentData();
    o.type = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Entity--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Entity(
  api.GoogleCloudContactcenterinsightsV1Entity o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Entity++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Entity < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed46(o.metadata!);
    unittest.expect(o.salience!, unittest.equals(42.0));
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentiment!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Entity--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData = 0;
api.GoogleCloudContactcenterinsightsV1EntityMentionData
buildGoogleCloudContactcenterinsightsV1EntityMentionData() {
  final o = api.GoogleCloudContactcenterinsightsV1EntityMentionData();
  buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData < 3) {
    o.entityUniqueId = 'foo';
    o.sentiment = buildGoogleCloudContactcenterinsightsV1SentimentData();
    o.type = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1EntityMentionData(
  api.GoogleCloudContactcenterinsightsV1EntityMentionData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData < 3) {
    unittest.expect(o.entityUniqueId!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentiment!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig = 0;
api.GoogleCloudContactcenterinsightsV1ExactMatchConfig
buildGoogleCloudContactcenterinsightsV1ExactMatchConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1ExactMatchConfig();
  buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig < 3) {
    o.caseSensitive = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ExactMatchConfig(
  api.GoogleCloudContactcenterinsightsV1ExactMatchConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest = 0;
api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest
buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest();
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest <
      3) {
    o.bigQueryDestination =
        buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination();
    o.exportSchemaVersion = 'foo';
    o.filter = 'foo';
    o.kmsKey = 'foo';
    o.parent = 'foo';
    o.writeDisposition = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest(
  api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination(
      o.bigQueryDestination!,
    );
    unittest.expect(o.exportSchemaVersion!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
    unittest.expect(o.writeDisposition!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination =
    0;
api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination
buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination();
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination <
      3) {
    o.dataset = 'foo';
    o.projectId = 'foo';
    o.table = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination(
  api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination <
      3) {
    unittest.expect(o.dataset!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.table!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest =
    0;
api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequest
buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequest();
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest <
      3) {
    o.gcsDestination =
        buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination();
    o.name = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequest(
  api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination(
      o.gcsDestination!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination =
    0;
api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination();
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination <
      3) {
    o.objectUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination(
  api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination <
      3) {
    unittest.expect(o.objectUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination--;
}

core.Map<core.String, core.String> buildUnnamed47() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed47(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData = 0;
api.GoogleCloudContactcenterinsightsV1FaqAnswerData
buildGoogleCloudContactcenterinsightsV1FaqAnswerData() {
  final o = api.GoogleCloudContactcenterinsightsV1FaqAnswerData();
  buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData < 3) {
    o.answer = 'foo';
    o.confidenceScore = 42.0;
    o.metadata = buildUnnamed47();
    o.queryRecord = 'foo';
    o.question = 'foo';
    o.source = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1FaqAnswerData(
  api.GoogleCloudContactcenterinsightsV1FaqAnswerData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData < 3) {
    unittest.expect(o.answer!, unittest.equals('foo'));
    unittest.expect(o.confidenceScore!, unittest.equals(42.0));
    checkUnnamed47(o.metadata!);
    unittest.expect(o.queryRecord!, unittest.equals('foo'));
    unittest.expect(o.question!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel = 0;
api.GoogleCloudContactcenterinsightsV1FeedbackLabel
buildGoogleCloudContactcenterinsightsV1FeedbackLabel() {
  final o = api.GoogleCloudContactcenterinsightsV1FeedbackLabel();
  buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel < 3) {
    o.createTime = 'foo';
    o.label = 'foo';
    o.labeledResource = 'foo';
    o.name = 'foo';
    o.qaAnswerLabel =
        buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
  api.GoogleCloudContactcenterinsightsV1FeedbackLabel o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.labeledResource!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue(
      o.qaAnswerLabel!,
    );
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest = 0;
api.GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest
buildGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest();
  buildCounterGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest(
  api.GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1GcsSource = 0;
api.GoogleCloudContactcenterinsightsV1GcsSource
buildGoogleCloudContactcenterinsightsV1GcsSource() {
  final o = api.GoogleCloudContactcenterinsightsV1GcsSource();
  buildCounterGoogleCloudContactcenterinsightsV1GcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GcsSource < 3) {
    o.audioUri = 'foo';
    o.transcriptUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1GcsSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1GcsSource(
  api.GoogleCloudContactcenterinsightsV1GcsSource o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1GcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GcsSource < 3) {
    unittest.expect(o.audioUri!, unittest.equals('foo'));
    unittest.expect(o.transcriptUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1GcsSource--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse =
    0;
api.GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse
buildGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse();
  buildCounterGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse <
      3) {
    o.signedAudioUris =
        buildGoogleCloudContactcenterinsightsV1SignedAudioUris();
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse(
  api.GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse <
      3) {
    checkGoogleCloudContactcenterinsightsV1SignedAudioUris(o.signedAudioUris!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse--;
}

core.List<
  api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation
>
buildUnnamed48() => [
  buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation(),
  buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation(),
];

void checkUnnamed48(
  core.List<
    api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation(
    o[0],
  );
  checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation(
    o[1],
  );
}

core.Map<core.String, core.Object?> buildUnnamed49() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed49(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted16['bool'], unittest.equals(true));
  unittest.expect(casted16['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed50() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed50(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted17['bool'], unittest.equals(true));
  unittest.expect(casted17['string'], unittest.equals('foo'));
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted18['bool'], unittest.equals(true));
  unittest.expect(casted18['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsights = 0;
api.GoogleCloudContactcenterinsightsV1GenerativeInsights
buildGoogleCloudContactcenterinsightsV1GenerativeInsights() {
  final o = api.GoogleCloudContactcenterinsightsV1GenerativeInsights();
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsights++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsights < 3) {
    o.chartCheckpoint =
        buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint();
    o.chartConversations = buildUnnamed48();
    o.chartSpec = buildUnnamed49();
    o.request = buildUnnamed50();
    o.sqlComparisonKey = 'foo';
    o.sqlQuery = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsights--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1GenerativeInsights(
  api.GoogleCloudContactcenterinsightsV1GenerativeInsights o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsights++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsights < 3) {
    checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint(
      o.chartCheckpoint!,
    );
    checkUnnamed48(o.chartConversations!);
    checkUnnamed49(o.chartSpec!);
    checkUnnamed50(o.request!);
    unittest.expect(o.sqlComparisonKey!, unittest.equals('foo'));
    unittest.expect(o.sqlQuery!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsights--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint =
    0;
api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint
buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint() {
  final o =
      api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint();
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint <
      3) {
    o.revisionId = 'foo';
    o.sessionId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint(
  api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint <
      3) {
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.sessionId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint--;
}

core.List<
  api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage
>
buildUnnamed51() => [
  buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage(),
  buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage(),
];

void checkUnnamed51(
  core.List<
    api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage(
    o[0],
  );
  checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage(
    o[1],
  );
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation =
    0;
api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation
buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation() {
  final o =
      api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation();
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation <
      3) {
    o.conversationId = 'foo';
    o.createTime = 'foo';
    o.messages = buildUnnamed51();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation(
  api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation <
      3) {
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed51(o.messages!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage =
    0;
api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage
buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage() {
  final o =
      api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage();
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage <
      3) {
    o.createTime = 'foo';
    o.messageId = 'foo';
    o.systemMessage =
        buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage();
    o.userMessage =
        buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage();
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage(
  api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage <
      3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.messageId!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage(
      o.systemMessage!,
    );
    checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage(
      o.userMessage!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage--;
}

core.Map<core.String, core.Object?> buildUnnamed52() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed52(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted19['bool'], unittest.equals(true));
  unittest.expect(casted19['string'], unittest.equals('foo'));
  var casted20 = (o['y']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted20['bool'], unittest.equals(true));
  unittest.expect(casted20['string'], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage =
    0;
api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage
buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage() {
  final o =
      api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage();
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage <
      3) {
    o.chartSpec = buildUnnamed52();
    o.generatedSqlQuery = 'foo';
    o.textOutput =
        buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput();
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage(
  api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage <
      3) {
    checkUnnamed52(o.chartSpec!);
    unittest.expect(o.generatedSqlQuery!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput(
      o.textOutput!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage--;
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput =
    0;
api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput
buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput() {
  final o =
      api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput();
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput <
      3) {
    o.texts = buildUnnamed53();
    o.type = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput(
  api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput <
      3) {
    checkUnnamed53(o.texts!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage =
    0;
api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage
buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage() {
  final o =
      api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage();
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage <
      3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage(
  api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage <
      3) {
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage--;
}

core.Map<core.String, core.Object?> buildUnnamed54() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed54(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted21['bool'], unittest.equals(true));
  unittest.expect(casted21['string'], unittest.equals('foo'));
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted22['bool'], unittest.equals(true));
  unittest.expect(casted22['string'], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest = 0;
api.GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest
buildGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest <
      3) {
    o.chart = 'foo';
    o.comparisonFilter = 'foo';
    o.filter = 'foo';
    o.naturalLanguageQuery = 'foo';
    o.revisionId = 'foo';
    o.sessionId = 'foo';
    o.sqlComparisonKey = 'foo';
    o.sqlQuery = 'foo';
    o.userProvidedChartSpec = buildUnnamed54();
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest(
  api.GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest <
      3) {
    unittest.expect(o.chart!, unittest.equals('foo'));
    unittest.expect(o.comparisonFilter!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.naturalLanguageQuery!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.sessionId!, unittest.equals('foo'));
    unittest.expect(o.sqlComparisonKey!, unittest.equals('foo'));
    unittest.expect(o.sqlQuery!, unittest.equals('foo'));
    checkUnnamed54(o.userProvidedChartSpec!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1HoldData = 0;
api.GoogleCloudContactcenterinsightsV1HoldData
buildGoogleCloudContactcenterinsightsV1HoldData() {
  final o = api.GoogleCloudContactcenterinsightsV1HoldData();
  buildCounterGoogleCloudContactcenterinsightsV1HoldData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1HoldData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1HoldData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1HoldData(
  api.GoogleCloudContactcenterinsightsV1HoldData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1HoldData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1HoldData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1HoldData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest =
    0;
api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest
buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest();
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest <
      3) {
    o.createNewModel = true;
    o.gcsSource =
        buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource();
    o.parent = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequest(
  api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest <
      3) {
    unittest.expect(o.createNewModel!, unittest.isTrue);
    checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource(
      o.gcsSource!,
    );
    unittest.expect(o.parent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource =
    0;
api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource();
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource <
      3) {
    o.objectUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource(
  api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource <
      3) {
    unittest.expect(o.objectUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest = 0;
api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest
buildGoogleCloudContactcenterinsightsV1IngestConversationsRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest <
      3) {
    o.conversationConfig =
        buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig();
    o.gcsSource =
        buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource();
    o.parent = 'foo';
    o.redactionConfig =
        buildGoogleCloudContactcenterinsightsV1RedactionConfig();
    o.sampleSize = 42;
    o.speechConfig = buildGoogleCloudContactcenterinsightsV1SpeechConfig();
    o.transcriptObjectConfig =
        buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig();
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IngestConversationsRequest(
  api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig(
      o.conversationConfig!,
    );
    checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource(
      o.gcsSource!,
    );
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1RedactionConfig(o.redactionConfig!);
    unittest.expect(o.sampleSize!, unittest.equals(42));
    checkGoogleCloudContactcenterinsightsV1SpeechConfig(o.speechConfig!);
    checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig(
      o.transcriptObjectConfig!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig =
    0;
api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig() {
  final o =
      api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig();
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig <
      3) {
    o.agentChannel = 42;
    o.agentId = 'foo';
    o.customerChannel = 42;
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig(
  api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig <
      3) {
    unittest.expect(o.agentChannel!, unittest.equals(42));
    unittest.expect(o.agentId!, unittest.equals('foo'));
    unittest.expect(o.customerChannel!, unittest.equals(42));
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig--;
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource =
    0;
api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource
buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource() {
  final o =
      api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource();
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource <
      3) {
    o.audioBucketUri = 'foo';
    o.bucketObjectType = 'foo';
    o.bucketUri = 'foo';
    o.customMetadataKeys = buildUnnamed55();
    o.metadataBucketUri = 'foo';
    o.transcriptBucketUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource(
  api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource <
      3) {
    unittest.expect(o.audioBucketUri!, unittest.equals('foo'));
    unittest.expect(o.bucketObjectType!, unittest.equals('foo'));
    unittest.expect(o.bucketUri!, unittest.equals('foo'));
    checkUnnamed55(o.customMetadataKeys!);
    unittest.expect(o.metadataBucketUri!, unittest.equals('foo'));
    unittest.expect(o.transcriptBucketUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig =
    0;
api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig
buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig() {
  final o =
      api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig();
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig <
      3) {
    o.medium = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig(
  api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig <
      3) {
    unittest.expect(o.medium!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest =
    0;
api.GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest
buildGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest();
  buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest <
      3) {
    o.encryptionSpec = buildGoogleCloudContactcenterinsightsV1EncryptionSpec();
  }
  buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest(
  api.GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1EncryptionSpec(o.encryptionSpec!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Intent = 0;
api.GoogleCloudContactcenterinsightsV1Intent
buildGoogleCloudContactcenterinsightsV1Intent() {
  final o = api.GoogleCloudContactcenterinsightsV1Intent();
  buildCounterGoogleCloudContactcenterinsightsV1Intent++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Intent < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Intent--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Intent(
  api.GoogleCloudContactcenterinsightsV1Intent o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Intent++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Intent < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Intent--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData = 0;
api.GoogleCloudContactcenterinsightsV1IntentMatchData
buildGoogleCloudContactcenterinsightsV1IntentMatchData() {
  final o = api.GoogleCloudContactcenterinsightsV1IntentMatchData();
  buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData < 3) {
    o.intentUniqueId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IntentMatchData(
  api.GoogleCloudContactcenterinsightsV1IntentMatchData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData < 3) {
    unittest.expect(o.intentUniqueId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1InterruptionData = 0;
api.GoogleCloudContactcenterinsightsV1InterruptionData
buildGoogleCloudContactcenterinsightsV1InterruptionData() {
  final o = api.GoogleCloudContactcenterinsightsV1InterruptionData();
  buildCounterGoogleCloudContactcenterinsightsV1InterruptionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1InterruptionData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1InterruptionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1InterruptionData(
  api.GoogleCloudContactcenterinsightsV1InterruptionData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1InterruptionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1InterruptionData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1InterruptionData--;
}

core.List<core.String> buildUnnamed56() => ['foo', 'foo'];

void checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Issue = 0;
api.GoogleCloudContactcenterinsightsV1Issue
buildGoogleCloudContactcenterinsightsV1Issue() {
  final o = api.GoogleCloudContactcenterinsightsV1Issue();
  buildCounterGoogleCloudContactcenterinsightsV1Issue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Issue < 3) {
    o.createTime = 'foo';
    o.displayDescription = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.sampleUtterances = buildUnnamed56();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Issue--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Issue(
  api.GoogleCloudContactcenterinsightsV1Issue o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Issue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Issue < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayDescription!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed56(o.sampleUtterances!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Issue--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment = 0;
api.GoogleCloudContactcenterinsightsV1IssueAssignment
buildGoogleCloudContactcenterinsightsV1IssueAssignment() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueAssignment();
  buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment < 3) {
    o.displayName = 'foo';
    o.issue = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueAssignment(
  api.GoogleCloudContactcenterinsightsV1IssueAssignment o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.issue!, unittest.equals('foo'));
    unittest.expect(o.score!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData = 0;
api.GoogleCloudContactcenterinsightsV1IssueMatchData
buildGoogleCloudContactcenterinsightsV1IssueMatchData() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueMatchData();
  buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData < 3) {
    o.issueAssignment =
        buildGoogleCloudContactcenterinsightsV1IssueAssignment();
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueMatchData(
  api.GoogleCloudContactcenterinsightsV1IssueMatchData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData < 3) {
    checkGoogleCloudContactcenterinsightsV1IssueAssignment(o.issueAssignment!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IssueModel = 0;
api.GoogleCloudContactcenterinsightsV1IssueModel
buildGoogleCloudContactcenterinsightsV1IssueModel() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueModel();
  buildCounterGoogleCloudContactcenterinsightsV1IssueModel++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModel < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.inputDataConfig =
        buildGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig();
    o.issueCount = 'foo';
    o.languageCode = 'foo';
    o.modelType = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.trainingStats =
        buildGoogleCloudContactcenterinsightsV1IssueModelLabelStats();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModel--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueModel(
  api.GoogleCloudContactcenterinsightsV1IssueModel o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueModel++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModel < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig(
      o.inputDataConfig!,
    );
    unittest.expect(o.issueCount!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.modelType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1IssueModelLabelStats(
      o.trainingStats!,
    );
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModel--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig = 0;
api.GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig
buildGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig();
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig <
      3) {
    o.filter = 'foo';
    o.medium = 'foo';
    o.trainingConversationsCount = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig(
  api.GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig <
      3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.medium!, unittest.equals('foo'));
    unittest.expect(o.trainingConversationsCount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig--;
}

core.Map<
  core.String,
  api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
>
buildUnnamed57() => {
  'x': buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
  'y': buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
};

void checkUnnamed57(
  core.Map<
    core.String,
    api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
    o['x']!,
  );
  checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
    o['y']!,
  );
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats = 0;
api.GoogleCloudContactcenterinsightsV1IssueModelLabelStats
buildGoogleCloudContactcenterinsightsV1IssueModelLabelStats() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueModelLabelStats();
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats < 3) {
    o.analyzedConversationsCount = 'foo';
    o.issueStats = buildUnnamed57();
    o.unclassifiedConversationsCount = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueModelLabelStats(
  api.GoogleCloudContactcenterinsightsV1IssueModelLabelStats o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats < 3) {
    unittest.expect(o.analyzedConversationsCount!, unittest.equals('foo'));
    checkUnnamed57(o.issueStats!);
    unittest.expect(o.unclassifiedConversationsCount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats =
    0;
api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats() {
  final o =
      api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats();
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats <
      3) {
    o.displayName = 'foo';
    o.issue = 'foo';
    o.labeledConversationsCount = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
  api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.issue!, unittest.equals('foo'));
    unittest.expect(o.labeledConversationsCount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats--;
}

core.List<api.GoogleCloudContactcenterinsightsV1IssueAssignment>
buildUnnamed58() => [
  buildGoogleCloudContactcenterinsightsV1IssueAssignment(),
  buildGoogleCloudContactcenterinsightsV1IssueAssignment(),
];

void checkUnnamed58(
  core.List<api.GoogleCloudContactcenterinsightsV1IssueAssignment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1IssueAssignment(o[0]);
  checkGoogleCloudContactcenterinsightsV1IssueAssignment(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult = 0;
api.GoogleCloudContactcenterinsightsV1IssueModelResult
buildGoogleCloudContactcenterinsightsV1IssueModelResult() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueModelResult();
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult < 3) {
    o.issueModel = 'foo';
    o.issues = buildUnnamed58();
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueModelResult(
  api.GoogleCloudContactcenterinsightsV1IssueModelResult o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult < 3) {
    unittest.expect(o.issueModel!, unittest.equals('foo'));
    checkUnnamed58(o.issues!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult--;
}

core.List<api.GoogleCloudContactcenterinsightsV1FeedbackLabel>
buildUnnamed59() => [
  buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
  buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
];

void checkUnnamed59(
  core.List<api.GoogleCloudContactcenterinsightsV1FeedbackLabel> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1FeedbackLabel(o[0]);
  checkGoogleCloudContactcenterinsightsV1FeedbackLabel(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse
buildGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse <
      3) {
    o.feedbackLabels = buildUnnamed59();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse(
  api.GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse <
      3) {
    checkUnnamed59(o.feedbackLabels!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Analysis> buildUnnamed60() => [
  buildGoogleCloudContactcenterinsightsV1Analysis(),
  buildGoogleCloudContactcenterinsightsV1Analysis(),
];

void checkUnnamed60(
  core.List<api.GoogleCloudContactcenterinsightsV1Analysis> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Analysis(o[0]);
  checkGoogleCloudContactcenterinsightsV1Analysis(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse
buildGoogleCloudContactcenterinsightsV1ListAnalysesResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse < 3) {
    o.analyses = buildUnnamed60();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAnalysesResponse(
  api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse < 3) {
    checkUnnamed60(o.analyses!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1AnalysisRule>
buildUnnamed61() => [
  buildGoogleCloudContactcenterinsightsV1AnalysisRule(),
  buildGoogleCloudContactcenterinsightsV1AnalysisRule(),
];

void checkUnnamed61(
  core.List<api.GoogleCloudContactcenterinsightsV1AnalysisRule> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1AnalysisRule(o[0]);
  checkGoogleCloudContactcenterinsightsV1AnalysisRule(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse
buildGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse <
      3) {
    o.analysisRules = buildUnnamed61();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse(
  api.GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse <
      3) {
    checkUnnamed61(o.analysisRules!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1AssessmentRule>
buildUnnamed62() => [
  buildGoogleCloudContactcenterinsightsV1AssessmentRule(),
  buildGoogleCloudContactcenterinsightsV1AssessmentRule(),
];

void checkUnnamed62(
  core.List<api.GoogleCloudContactcenterinsightsV1AssessmentRule> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1AssessmentRule(o[0]);
  checkGoogleCloudContactcenterinsightsV1AssessmentRule(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse
buildGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse <
      3) {
    o.assessmentRules = buildUnnamed62();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse(
  api.GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse <
      3) {
    checkUnnamed62(o.assessmentRules!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Assessment> buildUnnamed63() =>
    [
      buildGoogleCloudContactcenterinsightsV1Assessment(),
      buildGoogleCloudContactcenterinsightsV1Assessment(),
    ];

void checkUnnamed63(
  core.List<api.GoogleCloudContactcenterinsightsV1Assessment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Assessment(o[0]);
  checkGoogleCloudContactcenterinsightsV1Assessment(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListAssessmentsResponse
buildGoogleCloudContactcenterinsightsV1ListAssessmentsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListAssessmentsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentsResponse <
      3) {
    o.assessments = buildUnnamed63();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAssessmentsResponse(
  api.GoogleCloudContactcenterinsightsV1ListAssessmentsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentsResponse <
      3) {
    checkUnnamed63(o.assessments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAssessmentsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet>
buildUnnamed64() => [
  buildGoogleCloudContactcenterinsightsV1AuthorizedViewSet(),
  buildGoogleCloudContactcenterinsightsV1AuthorizedViewSet(),
];

void checkUnnamed64(
  core.List<api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1AuthorizedViewSet(o[0]);
  checkGoogleCloudContactcenterinsightsV1AuthorizedViewSet(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse
buildGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse <
      3) {
    o.authorizedViewSets = buildUnnamed64();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse(
  api.GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse <
      3) {
    checkUnnamed64(o.authorizedViewSets!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1AuthorizedView>
buildUnnamed65() => [
  buildGoogleCloudContactcenterinsightsV1AuthorizedView(),
  buildGoogleCloudContactcenterinsightsV1AuthorizedView(),
];

void checkUnnamed65(
  core.List<api.GoogleCloudContactcenterinsightsV1AuthorizedView> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1AuthorizedView(o[0]);
  checkGoogleCloudContactcenterinsightsV1AuthorizedView(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse
buildGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse <
      3) {
    o.authorizedViews = buildUnnamed65();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse(
  api.GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse <
      3) {
    checkUnnamed65(o.authorizedViews!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1AutoLabelingRule>
buildUnnamed66() => [
  buildGoogleCloudContactcenterinsightsV1AutoLabelingRule(),
  buildGoogleCloudContactcenterinsightsV1AutoLabelingRule(),
];

void checkUnnamed66(
  core.List<api.GoogleCloudContactcenterinsightsV1AutoLabelingRule> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1AutoLabelingRule(o[0]);
  checkGoogleCloudContactcenterinsightsV1AutoLabelingRule(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse
buildGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse <
      3) {
    o.autoLabelingRules = buildUnnamed66();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse(
  api.GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse <
      3) {
    checkUnnamed66(o.autoLabelingRules!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Chart> buildUnnamed67() => [
  buildGoogleCloudContactcenterinsightsV1Chart(),
  buildGoogleCloudContactcenterinsightsV1Chart(),
];

void checkUnnamed67(core.List<api.GoogleCloudContactcenterinsightsV1Chart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Chart(o[0]);
  checkGoogleCloudContactcenterinsightsV1Chart(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListChartsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListChartsResponse
buildGoogleCloudContactcenterinsightsV1ListChartsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListChartsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListChartsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListChartsResponse < 3) {
    o.charts = buildUnnamed67();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListChartsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListChartsResponse(
  api.GoogleCloudContactcenterinsightsV1ListChartsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListChartsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListChartsResponse < 3) {
    checkUnnamed67(o.charts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListChartsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Conversation>
buildUnnamed68() => [
  buildGoogleCloudContactcenterinsightsV1Conversation(),
  buildGoogleCloudContactcenterinsightsV1Conversation(),
];

void checkUnnamed68(
  core.List<api.GoogleCloudContactcenterinsightsV1Conversation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Conversation(o[0]);
  checkGoogleCloudContactcenterinsightsV1Conversation(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListConversationsResponse
buildGoogleCloudContactcenterinsightsV1ListConversationsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListConversationsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse <
      3) {
    o.conversations = buildUnnamed68();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListConversationsResponse(
  api.GoogleCloudContactcenterinsightsV1ListConversationsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse <
      3) {
    checkUnnamed68(o.conversations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Dashboard> buildUnnamed69() => [
  buildGoogleCloudContactcenterinsightsV1Dashboard(),
  buildGoogleCloudContactcenterinsightsV1Dashboard(),
];

void checkUnnamed69(
  core.List<api.GoogleCloudContactcenterinsightsV1Dashboard> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Dashboard(o[0]);
  checkGoogleCloudContactcenterinsightsV1Dashboard(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListDashboardsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListDashboardsResponse
buildGoogleCloudContactcenterinsightsV1ListDashboardsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListDashboardsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListDashboardsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListDashboardsResponse <
      3) {
    o.dashboards = buildUnnamed69();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListDashboardsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListDashboardsResponse(
  api.GoogleCloudContactcenterinsightsV1ListDashboardsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListDashboardsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListDashboardsResponse <
      3) {
    checkUnnamed69(o.dashboards!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListDashboardsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Dataset> buildUnnamed70() => [
  buildGoogleCloudContactcenterinsightsV1Dataset(),
  buildGoogleCloudContactcenterinsightsV1Dataset(),
];

void checkUnnamed70(
  core.List<api.GoogleCloudContactcenterinsightsV1Dataset> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Dataset(o[0]);
  checkGoogleCloudContactcenterinsightsV1Dataset(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListDatasetsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListDatasetsResponse
buildGoogleCloudContactcenterinsightsV1ListDatasetsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListDatasetsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListDatasetsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListDatasetsResponse < 3) {
    o.datasets = buildUnnamed70();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListDatasetsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListDatasetsResponse(
  api.GoogleCloudContactcenterinsightsV1ListDatasetsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListDatasetsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListDatasetsResponse < 3) {
    checkUnnamed70(o.datasets!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListDatasetsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Diagnostic> buildUnnamed71() =>
    [
      buildGoogleCloudContactcenterinsightsV1Diagnostic(),
      buildGoogleCloudContactcenterinsightsV1Diagnostic(),
    ];

void checkUnnamed71(
  core.List<api.GoogleCloudContactcenterinsightsV1Diagnostic> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Diagnostic(o[0]);
  checkGoogleCloudContactcenterinsightsV1Diagnostic(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListDiagnosticsResponse
buildGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListDiagnosticsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse <
      3) {
    o.diagnostics = buildUnnamed71();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse(
  api.GoogleCloudContactcenterinsightsV1ListDiagnosticsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse <
      3) {
    checkUnnamed71(o.diagnostics!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1FeedbackLabel>
buildUnnamed72() => [
  buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
  buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
];

void checkUnnamed72(
  core.List<api.GoogleCloudContactcenterinsightsV1FeedbackLabel> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1FeedbackLabel(o[0]);
  checkGoogleCloudContactcenterinsightsV1FeedbackLabel(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse
buildGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse <
      3) {
    o.feedbackLabels = buildUnnamed72();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(
  api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse <
      3) {
    checkUnnamed72(o.feedbackLabels!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1IssueModel> buildUnnamed73() =>
    [
      buildGoogleCloudContactcenterinsightsV1IssueModel(),
      buildGoogleCloudContactcenterinsightsV1IssueModel(),
    ];

void checkUnnamed73(
  core.List<api.GoogleCloudContactcenterinsightsV1IssueModel> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1IssueModel(o[0]);
  checkGoogleCloudContactcenterinsightsV1IssueModel(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse
buildGoogleCloudContactcenterinsightsV1ListIssueModelsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse <
      3) {
    o.issueModels = buildUnnamed73();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListIssueModelsResponse(
  api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse <
      3) {
    checkUnnamed73(o.issueModels!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Issue> buildUnnamed74() => [
  buildGoogleCloudContactcenterinsightsV1Issue(),
  buildGoogleCloudContactcenterinsightsV1Issue(),
];

void checkUnnamed74(core.List<api.GoogleCloudContactcenterinsightsV1Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Issue(o[0]);
  checkGoogleCloudContactcenterinsightsV1Issue(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListIssuesResponse
buildGoogleCloudContactcenterinsightsV1ListIssuesResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListIssuesResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse < 3) {
    o.issues = buildUnnamed74();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListIssuesResponse(
  api.GoogleCloudContactcenterinsightsV1ListIssuesResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse < 3) {
    checkUnnamed74(o.issues!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Note> buildUnnamed75() => [
  buildGoogleCloudContactcenterinsightsV1Note(),
  buildGoogleCloudContactcenterinsightsV1Note(),
];

void checkUnnamed75(core.List<api.GoogleCloudContactcenterinsightsV1Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Note(o[0]);
  checkGoogleCloudContactcenterinsightsV1Note(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListNotesResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListNotesResponse
buildGoogleCloudContactcenterinsightsV1ListNotesResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListNotesResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListNotesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListNotesResponse < 3) {
    o.nextPageToken = 'foo';
    o.notes = buildUnnamed75();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListNotesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListNotesResponse(
  api.GoogleCloudContactcenterinsightsV1ListNotesResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListNotesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListNotesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed75(o.notes!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListNotesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatcher>
buildUnnamed76() => [
  buildGoogleCloudContactcenterinsightsV1PhraseMatcher(),
  buildGoogleCloudContactcenterinsightsV1PhraseMatcher(),
];

void checkUnnamed76(
  core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatcher> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1PhraseMatcher(o[0]);
  checkGoogleCloudContactcenterinsightsV1PhraseMatcher(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
buildGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse <
      3) {
    o.nextPageToken = 'foo';
    o.phraseMatchers = buildUnnamed76();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse(
  api.GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed76(o.phraseMatchers!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaQuestionTag>
buildUnnamed77() => [
  buildGoogleCloudContactcenterinsightsV1QaQuestionTag(),
  buildGoogleCloudContactcenterinsightsV1QaQuestionTag(),
];

void checkUnnamed77(
  core.List<api.GoogleCloudContactcenterinsightsV1QaQuestionTag> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaQuestionTag(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaQuestionTag(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse
buildGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.qaQuestionTags = buildUnnamed77();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse(
  api.GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed77(o.qaQuestionTags!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaQuestion> buildUnnamed78() =>
    [
      buildGoogleCloudContactcenterinsightsV1QaQuestion(),
      buildGoogleCloudContactcenterinsightsV1QaQuestion(),
    ];

void checkUnnamed78(
  core.List<api.GoogleCloudContactcenterinsightsV1QaQuestion> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaQuestion(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaQuestion(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse
buildGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.qaQuestions = buildUnnamed78();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse(
  api.GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed78(o.qaQuestions!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardRevision>
buildUnnamed79() => [
  buildGoogleCloudContactcenterinsightsV1QaScorecardRevision(),
  buildGoogleCloudContactcenterinsightsV1QaScorecardRevision(),
];

void checkUnnamed79(
  core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardRevision> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse
buildGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.qaScorecardRevisions = buildUnnamed79();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse(
  api.GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed79(o.qaScorecardRevisions!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecard> buildUnnamed80() =>
    [
      buildGoogleCloudContactcenterinsightsV1QaScorecard(),
      buildGoogleCloudContactcenterinsightsV1QaScorecard(),
    ];

void checkUnnamed80(
  core.List<api.GoogleCloudContactcenterinsightsV1QaScorecard> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecard(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecard(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse
buildGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.qaScorecards = buildUnnamed80();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse(
  api.GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed80(o.qaScorecards!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1View> buildUnnamed81() => [
  buildGoogleCloudContactcenterinsightsV1View(),
  buildGoogleCloudContactcenterinsightsV1View(),
];

void checkUnnamed81(core.List<api.GoogleCloudContactcenterinsightsV1View> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1View(o[0]);
  checkGoogleCloudContactcenterinsightsV1View(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListViewsResponse
buildGoogleCloudContactcenterinsightsV1ListViewsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListViewsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse < 3) {
    o.nextPageToken = 'foo';
    o.views = buildUnnamed81();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListViewsResponse(
  api.GoogleCloudContactcenterinsightsV1ListViewsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed81(o.views!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse--;
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1LossPattern = 0;
api.GoogleCloudContactcenterinsightsV1LossPattern
buildGoogleCloudContactcenterinsightsV1LossPattern() {
  final o = api.GoogleCloudContactcenterinsightsV1LossPattern();
  buildCounterGoogleCloudContactcenterinsightsV1LossPattern++;
  if (buildCounterGoogleCloudContactcenterinsightsV1LossPattern < 3) {
    o.conversationIds = buildUnnamed82();
    o.description = 'foo';
    o.displayName = 'foo';
    o.examples = 'foo';
    o.id = 'foo';
    o.percentage = 42.0;
    o.suggestedFixes = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1LossPattern--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1LossPattern(
  api.GoogleCloudContactcenterinsightsV1LossPattern o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1LossPattern++;
  if (buildCounterGoogleCloudContactcenterinsightsV1LossPattern < 3) {
    checkUnnamed82(o.conversationIds!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.examples!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.percentage!, unittest.equals(42.0));
    unittest.expect(o.suggestedFixes!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1LossPattern--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1MetricDefinition = 0;
api.GoogleCloudContactcenterinsightsV1MetricDefinition
buildGoogleCloudContactcenterinsightsV1MetricDefinition() {
  final o = api.GoogleCloudContactcenterinsightsV1MetricDefinition();
  buildCounterGoogleCloudContactcenterinsightsV1MetricDefinition++;
  if (buildCounterGoogleCloudContactcenterinsightsV1MetricDefinition < 3) {
    o.displayName = 'foo';
    o.sourceId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1MetricDefinition--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1MetricDefinition(
  api.GoogleCloudContactcenterinsightsV1MetricDefinition o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1MetricDefinition++;
  if (buildCounterGoogleCloudContactcenterinsightsV1MetricDefinition < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.sourceId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1MetricDefinition--;
}

core.List<core.String> buildUnnamed83() => ['foo', 'foo'];

void checkUnnamed83(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1MetricValue = 0;
api.GoogleCloudContactcenterinsightsV1MetricValue
buildGoogleCloudContactcenterinsightsV1MetricValue() {
  final o = api.GoogleCloudContactcenterinsightsV1MetricValue();
  buildCounterGoogleCloudContactcenterinsightsV1MetricValue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1MetricValue < 3) {
    o.conversations = buildUnnamed83();
    o.displayName = 'foo';
    o.hitCount = 42;
    o.metricType = 'foo';
    o.sourceId = 'foo';
    o.totalCount = 42;
    o.value = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1MetricValue--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1MetricValue(
  api.GoogleCloudContactcenterinsightsV1MetricValue o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1MetricValue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1MetricValue < 3) {
    checkUnnamed83(o.conversations!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.hitCount!, unittest.equals(42));
    unittest.expect(o.metricType!, unittest.equals('foo'));
    unittest.expect(o.sourceId!, unittest.equals('foo'));
    unittest.expect(o.totalCount!, unittest.equals(42));
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudContactcenterinsightsV1MetricValue--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Note = 0;
api.GoogleCloudContactcenterinsightsV1Note
buildGoogleCloudContactcenterinsightsV1Note() {
  final o = api.GoogleCloudContactcenterinsightsV1Note();
  buildCounterGoogleCloudContactcenterinsightsV1Note++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Note < 3) {
    o.assessmentNote =
        buildGoogleCloudContactcenterinsightsV1NoteAssessmentNote();
    o.content = 'foo';
    o.conversationTurnNote =
        buildGoogleCloudContactcenterinsightsV1NoteConversationTurnNote();
    o.createTime = 'foo';
    o.name = 'foo';
    o.noteCreator = buildGoogleCloudContactcenterinsightsV1UserInfo();
    o.qaQuestionNote =
        buildGoogleCloudContactcenterinsightsV1NoteQaQuestionNote();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Note--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Note(
  api.GoogleCloudContactcenterinsightsV1Note o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Note++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Note < 3) {
    checkGoogleCloudContactcenterinsightsV1NoteAssessmentNote(
      o.assessmentNote!,
    );
    unittest.expect(o.content!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1NoteConversationTurnNote(
      o.conversationTurnNote!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1UserInfo(o.noteCreator!);
    checkGoogleCloudContactcenterinsightsV1NoteQaQuestionNote(
      o.qaQuestionNote!,
    );
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Note--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1NoteAssessmentNote = 0;
api.GoogleCloudContactcenterinsightsV1NoteAssessmentNote
buildGoogleCloudContactcenterinsightsV1NoteAssessmentNote() {
  final o = api.GoogleCloudContactcenterinsightsV1NoteAssessmentNote();
  buildCounterGoogleCloudContactcenterinsightsV1NoteAssessmentNote++;
  if (buildCounterGoogleCloudContactcenterinsightsV1NoteAssessmentNote < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1NoteAssessmentNote--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1NoteAssessmentNote(
  api.GoogleCloudContactcenterinsightsV1NoteAssessmentNote o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1NoteAssessmentNote++;
  if (buildCounterGoogleCloudContactcenterinsightsV1NoteAssessmentNote < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1NoteAssessmentNote--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1NoteConversationTurnNote = 0;
api.GoogleCloudContactcenterinsightsV1NoteConversationTurnNote
buildGoogleCloudContactcenterinsightsV1NoteConversationTurnNote() {
  final o = api.GoogleCloudContactcenterinsightsV1NoteConversationTurnNote();
  buildCounterGoogleCloudContactcenterinsightsV1NoteConversationTurnNote++;
  if (buildCounterGoogleCloudContactcenterinsightsV1NoteConversationTurnNote <
      3) {
    o.turnIndex = 42;
  }
  buildCounterGoogleCloudContactcenterinsightsV1NoteConversationTurnNote--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1NoteConversationTurnNote(
  api.GoogleCloudContactcenterinsightsV1NoteConversationTurnNote o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1NoteConversationTurnNote++;
  if (buildCounterGoogleCloudContactcenterinsightsV1NoteConversationTurnNote <
      3) {
    unittest.expect(o.turnIndex!, unittest.equals(42));
  }
  buildCounterGoogleCloudContactcenterinsightsV1NoteConversationTurnNote--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1NoteQaQuestionNote = 0;
api.GoogleCloudContactcenterinsightsV1NoteQaQuestionNote
buildGoogleCloudContactcenterinsightsV1NoteQaQuestionNote() {
  final o = api.GoogleCloudContactcenterinsightsV1NoteQaQuestionNote();
  buildCounterGoogleCloudContactcenterinsightsV1NoteQaQuestionNote++;
  if (buildCounterGoogleCloudContactcenterinsightsV1NoteQaQuestionNote < 3) {
    o.qaQuestion = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1NoteQaQuestionNote--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1NoteQaQuestionNote(
  api.GoogleCloudContactcenterinsightsV1NoteQaQuestionNote o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1NoteQaQuestionNote++;
  if (buildCounterGoogleCloudContactcenterinsightsV1NoteQaQuestionNote < 3) {
    unittest.expect(o.qaQuestion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1NoteQaQuestionNote--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1OutputConfig = 0;
api.GoogleCloudContactcenterinsightsV1OutputConfig
buildGoogleCloudContactcenterinsightsV1OutputConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1OutputConfig();
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1OutputConfig < 3) {
    o.bigqueryDestination =
        buildGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination();
    o.gcsDestination =
        buildGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination();
    o.googleSheetsDestination =
        buildGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination();
  }
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1OutputConfig(
  api.GoogleCloudContactcenterinsightsV1OutputConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1OutputConfig < 3) {
    checkGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination(
      o.bigqueryDestination!,
    );
    checkGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination(
      o.gcsDestination!,
    );
    checkGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination(
      o.googleSheetsDestination!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfig--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination =
    0;
api.GoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination
buildGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination() {
  final o =
      api.GoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination();
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination <
      3) {
    o.dataset = 'foo';
    o.projectId = 'foo';
    o.table = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination(
  api.GoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination <
      3) {
    unittest.expect(o.dataset!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.table!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination = 0;
api.GoogleCloudContactcenterinsightsV1OutputConfigGcsDestination
buildGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination() {
  final o = api.GoogleCloudContactcenterinsightsV1OutputConfigGcsDestination();
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination <
      3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination(
  api.GoogleCloudContactcenterinsightsV1OutputConfigGcsDestination o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination <
      3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination =
    0;
api.GoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination
buildGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination() {
  final o =
      api.GoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination();
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination <
      3) {
    o.sheet = 'foo';
    o.spreadsheetId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination(
  api.GoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination <
      3) {
    unittest.expect(o.sheet!, unittest.equals('foo'));
    unittest.expect(o.spreadsheetId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData = 0;
api.GoogleCloudContactcenterinsightsV1PhraseMatchData
buildGoogleCloudContactcenterinsightsV1PhraseMatchData() {
  final o = api.GoogleCloudContactcenterinsightsV1PhraseMatchData();
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData < 3) {
    o.displayName = 'foo';
    o.phraseMatcher = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatchData(
  api.GoogleCloudContactcenterinsightsV1PhraseMatchData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.phraseMatcher!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule = 0;
api.GoogleCloudContactcenterinsightsV1PhraseMatchRule
buildGoogleCloudContactcenterinsightsV1PhraseMatchRule() {
  final o = api.GoogleCloudContactcenterinsightsV1PhraseMatchRule();
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule < 3) {
    o.config = buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig();
    o.negated = true;
    o.query = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatchRule(
  api.GoogleCloudContactcenterinsightsV1PhraseMatchRule o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule < 3) {
    checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig(o.config!);
    unittest.expect(o.negated!, unittest.isTrue);
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig =
    0;
api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig
buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig();
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig < 3) {
    o.exactMatchConfig =
        buildGoogleCloudContactcenterinsightsV1ExactMatchConfig();
    o.regexMatchConfig =
        buildGoogleCloudContactcenterinsightsV1RegexMatchConfig();
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig(
  api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig < 3) {
    checkGoogleCloudContactcenterinsightsV1ExactMatchConfig(
      o.exactMatchConfig!,
    );
    checkGoogleCloudContactcenterinsightsV1RegexMatchConfig(
      o.regexMatchConfig!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig--;
}

core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatchRule>
buildUnnamed84() => [
  buildGoogleCloudContactcenterinsightsV1PhraseMatchRule(),
  buildGoogleCloudContactcenterinsightsV1PhraseMatchRule(),
];

void checkUnnamed84(
  core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatchRule> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1PhraseMatchRule(o[0]);
  checkGoogleCloudContactcenterinsightsV1PhraseMatchRule(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup = 0;
api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup
buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup() {
  final o = api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup();
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup < 3) {
    o.phraseMatchRules = buildUnnamed84();
    o.type = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(
  api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup < 3) {
    checkUnnamed84(o.phraseMatchRules!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup--;
}

core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>
buildUnnamed85() => [
  buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(),
  buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(),
];

void checkUnnamed85(
  core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(o[0]);
  checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher = 0;
api.GoogleCloudContactcenterinsightsV1PhraseMatcher
buildGoogleCloudContactcenterinsightsV1PhraseMatcher() {
  final o = api.GoogleCloudContactcenterinsightsV1PhraseMatcher();
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher < 3) {
    o.activationUpdateTime = 'foo';
    o.active = true;
    o.displayName = 'foo';
    o.name = 'foo';
    o.phraseMatchRuleGroups = buildUnnamed85();
    o.revisionCreateTime = 'foo';
    o.revisionId = 'foo';
    o.roleMatch = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
    o.versionTag = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatcher(
  api.GoogleCloudContactcenterinsightsV1PhraseMatcher o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher < 3) {
    unittest.expect(o.activationUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed85(o.phraseMatchRuleGroups!);
    unittest.expect(o.revisionCreateTime!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.roleMatch!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.versionTag!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1PublishAssessmentRequest = 0;
api.GoogleCloudContactcenterinsightsV1PublishAssessmentRequest
buildGoogleCloudContactcenterinsightsV1PublishAssessmentRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1PublishAssessmentRequest();
  buildCounterGoogleCloudContactcenterinsightsV1PublishAssessmentRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PublishAssessmentRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1PublishAssessmentRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PublishAssessmentRequest(
  api.GoogleCloudContactcenterinsightsV1PublishAssessmentRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1PublishAssessmentRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PublishAssessmentRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1PublishAssessmentRequest--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource>
buildUnnamed86() => [
  buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(),
  buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(),
];

void checkUnnamed86(
  core.List<api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(o[1]);
}

core.List<core.String> buildUnnamed87() => ['foo', 'foo'];

void checkUnnamed87(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaAnswer = 0;
api.GoogleCloudContactcenterinsightsV1QaAnswer
buildGoogleCloudContactcenterinsightsV1QaAnswer() {
  final o = api.GoogleCloudContactcenterinsightsV1QaAnswer();
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswer++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswer < 3) {
    o.answerSources = buildUnnamed86();
    o.answerValue =
        buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue();
    o.conversation = 'foo';
    o.qaQuestion = 'foo';
    o.questionBody = 'foo';
    o.tags = buildUnnamed87();
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswer--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaAnswer(
  api.GoogleCloudContactcenterinsightsV1QaAnswer o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswer++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswer < 3) {
    checkUnnamed86(o.answerSources!);
    checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue(o.answerValue!);
    unittest.expect(o.conversation!, unittest.equals('foo'));
    unittest.expect(o.qaQuestion!, unittest.equals('foo'));
    unittest.expect(o.questionBody!, unittest.equals('foo'));
    checkUnnamed87(o.tags!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswer--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource = 0;
api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource
buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource() {
  final o = api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource();
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource < 3) {
    o.answerValue =
        buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue();
    o.sourceType = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(
  api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource < 3) {
    checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue(o.answerValue!);
    unittest.expect(o.sourceType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue = 0;
api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue
buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue() {
  final o = api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue();
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue < 3) {
    o.boolValue = true;
    o.key = 'foo';
    o.naValue = true;
    o.normalizedScore = 42.0;
    o.numValue = 42.0;
    o.potentialScore = 42.0;
    o.score = 42.0;
    o.skipValue = true;
    o.strValue = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue(
  api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.naValue!, unittest.isTrue);
    unittest.expect(o.normalizedScore!, unittest.equals(42.0));
    unittest.expect(o.numValue!, unittest.equals(42.0));
    unittest.expect(o.potentialScore!, unittest.equals(42.0));
    unittest.expect(o.score!, unittest.equals(42.0));
    unittest.expect(o.skipValue!, unittest.isTrue);
    unittest.expect(o.strValue!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice>
buildUnnamed88() => [
  buildGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(),
  buildGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(),
];

void checkUnnamed88(
  core.List<api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(o[1]);
}

core.List<core.String> buildUnnamed89() => ['foo', 'foo'];

void checkUnnamed89(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaQuestion = 0;
api.GoogleCloudContactcenterinsightsV1QaQuestion
buildGoogleCloudContactcenterinsightsV1QaQuestion() {
  final o = api.GoogleCloudContactcenterinsightsV1QaQuestion();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestion++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestion < 3) {
    o.abbreviation = 'foo';
    o.answerChoices = buildUnnamed88();
    o.answerInstructions = 'foo';
    o.createTime = 'foo';
    o.metrics = buildGoogleCloudContactcenterinsightsV1QaQuestionMetrics();
    o.name = 'foo';
    o.order = 42;
    o.predefinedQuestionConfig =
        buildGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig();
    o.qaQuestionDataOptions =
        buildGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions();
    o.questionBody = 'foo';
    o.questionType = 'foo';
    o.tags = buildUnnamed89();
    o.tuningMetadata =
        buildGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestion--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestion(
  api.GoogleCloudContactcenterinsightsV1QaQuestion o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestion++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestion < 3) {
    unittest.expect(o.abbreviation!, unittest.equals('foo'));
    checkUnnamed88(o.answerChoices!);
    unittest.expect(o.answerInstructions!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1QaQuestionMetrics(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.order!, unittest.equals(42));
    checkGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig(
      o.predefinedQuestionConfig!,
    );
    checkGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions(
      o.qaQuestionDataOptions!,
    );
    unittest.expect(o.questionBody!, unittest.equals('foo'));
    unittest.expect(o.questionType!, unittest.equals('foo'));
    checkUnnamed89(o.tags!);
    checkGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata(
      o.tuningMetadata!,
    );
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestion--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice =
    0;
api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice
buildGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice() {
  final o = api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice <
      3) {
    o.boolValue = true;
    o.key = 'foo';
    o.naValue = true;
    o.numValue = 42.0;
    o.score = 42.0;
    o.strValue = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(
  api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice <
      3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.naValue!, unittest.isTrue);
    unittest.expect(o.numValue!, unittest.equals(42.0));
    unittest.expect(o.score!, unittest.equals(42.0));
    unittest.expect(o.strValue!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics = 0;
api.GoogleCloudContactcenterinsightsV1QaQuestionMetrics
buildGoogleCloudContactcenterinsightsV1QaQuestionMetrics() {
  final o = api.GoogleCloudContactcenterinsightsV1QaQuestionMetrics();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics < 3) {
    o.accuracy = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestionMetrics(
  api.GoogleCloudContactcenterinsightsV1QaQuestionMetrics o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics < 3) {
    unittest.expect(o.accuracy!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig =
    0;
api.GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig
buildGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig() {
  final o =
      api.GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig <
      3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig(
  api.GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig <
      3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions =
    0;
api.GoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions
buildGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions() {
  final o =
      api.GoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions <
      3) {
    o.conversationDataOptions =
        buildGoogleCloudContactcenterinsightsV1ConversationDataOptions();
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions(
  api.GoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions <
      3) {
    checkGoogleCloudContactcenterinsightsV1ConversationDataOptions(
      o.conversationDataOptions!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions--;
}

core.List<core.String> buildUnnamed90() => ['foo', 'foo'];

void checkUnnamed90(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTag = 0;
api.GoogleCloudContactcenterinsightsV1QaQuestionTag
buildGoogleCloudContactcenterinsightsV1QaQuestionTag() {
  final o = api.GoogleCloudContactcenterinsightsV1QaQuestionTag();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTag++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTag < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.qaQuestionIds = buildUnnamed90();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTag--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestionTag(
  api.GoogleCloudContactcenterinsightsV1QaQuestionTag o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTag++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTag < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed90(o.qaQuestionIds!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTag--;
}

core.List<core.String> buildUnnamed91() => ['foo', 'foo'];

void checkUnnamed91(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata = 0;
api.GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata
buildGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata() {
  final o = api.GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata <
      3) {
    o.datasetValidationWarnings = buildUnnamed91();
    o.totalValidLabelCount = 'foo';
    o.tuningError = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata(
  api.GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata <
      3) {
    checkUnnamed91(o.datasetValidationWarnings!);
    unittest.expect(o.totalValidLabelCount!, unittest.equals('foo'));
    unittest.expect(o.tuningError!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaScorecard = 0;
api.GoogleCloudContactcenterinsightsV1QaScorecard
buildGoogleCloudContactcenterinsightsV1QaScorecard() {
  final o = api.GoogleCloudContactcenterinsightsV1QaScorecard();
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecard++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecard < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.isDefault = true;
    o.name = 'foo';
    o.source = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecard--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaScorecard(
  api.GoogleCloudContactcenterinsightsV1QaScorecard o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecard++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecard < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.isDefault!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecard--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaAnswer> buildUnnamed92() => [
  buildGoogleCloudContactcenterinsightsV1QaAnswer(),
  buildGoogleCloudContactcenterinsightsV1QaAnswer(),
];

void checkUnnamed92(
  core.List<api.GoogleCloudContactcenterinsightsV1QaAnswer> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaAnswer(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaAnswer(o[1]);
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>
buildUnnamed93() => [
  buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(),
  buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(),
];

void checkUnnamed93(
  core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(o[1]);
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource>
buildUnnamed94() => [
  buildGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(),
  buildGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(),
];

void checkUnnamed94(
  core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult = 0;
api.GoogleCloudContactcenterinsightsV1QaScorecardResult
buildGoogleCloudContactcenterinsightsV1QaScorecardResult() {
  final o = api.GoogleCloudContactcenterinsightsV1QaScorecardResult();
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult < 3) {
    o.agentId = 'foo';
    o.conversation = 'foo';
    o.createTime = 'foo';
    o.name = 'foo';
    o.normalizedScore = 42.0;
    o.potentialScore = 42.0;
    o.qaAnswers = buildUnnamed92();
    o.qaScorecardRevision = 'foo';
    o.qaTagResults = buildUnnamed93();
    o.score = 42.0;
    o.scoreSources = buildUnnamed94();
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaScorecardResult(
  api.GoogleCloudContactcenterinsightsV1QaScorecardResult o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult < 3) {
    unittest.expect(o.agentId!, unittest.equals('foo'));
    unittest.expect(o.conversation!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.normalizedScore!, unittest.equals(42.0));
    unittest.expect(o.potentialScore!, unittest.equals(42.0));
    checkUnnamed92(o.qaAnswers!);
    unittest.expect(o.qaScorecardRevision!, unittest.equals('foo'));
    checkUnnamed93(o.qaTagResults!);
    unittest.expect(o.score!, unittest.equals(42.0));
    checkUnnamed94(o.scoreSources!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult = 0;
api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult
buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult() {
  final o =
      api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult();
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult <
      3) {
    o.normalizedScore = 42.0;
    o.potentialScore = 42.0;
    o.score = 42.0;
    o.tag = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(
  api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult <
      3) {
    unittest.expect(o.normalizedScore!, unittest.equals(42.0));
    unittest.expect(o.potentialScore!, unittest.equals(42.0));
    unittest.expect(o.score!, unittest.equals(42.0));
    unittest.expect(o.tag!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>
buildUnnamed95() => [
  buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(),
  buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(),
];

void checkUnnamed95(
  core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource = 0;
api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource
buildGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource() {
  final o =
      api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource();
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource <
      3) {
    o.normalizedScore = 42.0;
    o.potentialScore = 42.0;
    o.qaTagResults = buildUnnamed95();
    o.score = 42.0;
    o.sourceType = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(
  api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource <
      3) {
    unittest.expect(o.normalizedScore!, unittest.equals(42.0));
    unittest.expect(o.potentialScore!, unittest.equals(42.0));
    checkUnnamed95(o.qaTagResults!);
    unittest.expect(o.score!, unittest.equals(42.0));
    unittest.expect(o.sourceType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource--;
}

core.List<core.String> buildUnnamed96() => ['foo', 'foo'];

void checkUnnamed96(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision = 0;
api.GoogleCloudContactcenterinsightsV1QaScorecardRevision
buildGoogleCloudContactcenterinsightsV1QaScorecardRevision() {
  final o = api.GoogleCloudContactcenterinsightsV1QaScorecardRevision();
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision < 3) {
    o.alternateIds = buildUnnamed96();
    o.createTime = 'foo';
    o.name = 'foo';
    o.snapshot = buildGoogleCloudContactcenterinsightsV1QaScorecard();
    o.state = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(
  api.GoogleCloudContactcenterinsightsV1QaScorecardRevision o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision < 3) {
    checkUnnamed96(o.alternateIds!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1QaScorecard(o.snapshot!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QueryInterval = 0;
api.GoogleCloudContactcenterinsightsV1QueryInterval
buildGoogleCloudContactcenterinsightsV1QueryInterval() {
  final o = api.GoogleCloudContactcenterinsightsV1QueryInterval();
  buildCounterGoogleCloudContactcenterinsightsV1QueryInterval++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryInterval--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QueryInterval(
  api.GoogleCloudContactcenterinsightsV1QueryInterval o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QueryInterval++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryInterval < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryInterval--;
}

core.Map<core.String, core.Object?> buildUnnamed97() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed97(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o['x']!) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted23['bool'], unittest.equals(true));
  unittest.expect(casted23['string'], unittest.equals('foo'));
  var casted24 = (o['y']!) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted24['bool'], unittest.equals(true));
  unittest.expect(casted24['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QueryMetrics = 0;
api.GoogleCloudContactcenterinsightsV1QueryMetrics
buildGoogleCloudContactcenterinsightsV1QueryMetrics() {
  final o = api.GoogleCloudContactcenterinsightsV1QueryMetrics();
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetrics++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryMetrics < 3) {
    o.request = buildUnnamed97();
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetrics--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QueryMetrics(
  api.GoogleCloudContactcenterinsightsV1QueryMetrics o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetrics++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryMetrics < 3) {
    checkUnnamed97(o.request!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetrics--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Dimension> buildUnnamed98() => [
  buildGoogleCloudContactcenterinsightsV1Dimension(),
  buildGoogleCloudContactcenterinsightsV1Dimension(),
];

void checkUnnamed98(
  core.List<api.GoogleCloudContactcenterinsightsV1Dimension> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Dimension(o[0]);
  checkGoogleCloudContactcenterinsightsV1Dimension(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest = 0;
api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest
buildGoogleCloudContactcenterinsightsV1QueryMetricsRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest < 3) {
    o.dimensions = buildUnnamed98();
    o.filter = 'foo';
    o.measureMask = 'foo';
    o.timeGranularity = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QueryMetricsRequest(
  api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest < 3) {
    checkUnnamed98(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.measureMask!, unittest.equals('foo'));
    unittest.expect(o.timeGranularity!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest =
    0;
api.GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest
buildGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest();
  buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest <
      3) {
    o.agentPerformanceSource =
        buildGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource();
    o.comparisonQueryInterval =
        buildGoogleCloudContactcenterinsightsV1QueryInterval();
    o.filter = 'foo';
    o.queryInterval = buildGoogleCloudContactcenterinsightsV1QueryInterval();
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest(
  api.GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource(
      o.agentPerformanceSource!,
    );
    checkGoogleCloudContactcenterinsightsV1QueryInterval(
      o.comparisonQueryInterval!,
    );
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1QueryInterval(o.queryInterval!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource =
    0;
api.GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource
buildGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource() {
  final o =
      api.GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource();
  buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource <
      3) {
    o.agentId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource(
  api.GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource <
      3) {
    unittest.expect(o.agentId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig = 0;
api.GoogleCloudContactcenterinsightsV1RedactionConfig
buildGoogleCloudContactcenterinsightsV1RedactionConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1RedactionConfig();
  buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig < 3) {
    o.deidentifyTemplate = 'foo';
    o.inspectTemplate = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1RedactionConfig(
  api.GoogleCloudContactcenterinsightsV1RedactionConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig < 3) {
    unittest.expect(o.deidentifyTemplate!, unittest.equals('foo'));
    unittest.expect(o.inspectTemplate!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1RedirectAction = 0;
api.GoogleCloudContactcenterinsightsV1RedirectAction
buildGoogleCloudContactcenterinsightsV1RedirectAction() {
  final o = api.GoogleCloudContactcenterinsightsV1RedirectAction();
  buildCounterGoogleCloudContactcenterinsightsV1RedirectAction++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RedirectAction < 3) {
    o.relativePath = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1RedirectAction--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1RedirectAction(
  api.GoogleCloudContactcenterinsightsV1RedirectAction o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1RedirectAction++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RedirectAction < 3) {
    unittest.expect(o.relativePath!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1RedirectAction--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1RegexMatchConfig = 0;
api.GoogleCloudContactcenterinsightsV1RegexMatchConfig
buildGoogleCloudContactcenterinsightsV1RegexMatchConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1RegexMatchConfig();
  buildCounterGoogleCloudContactcenterinsightsV1RegexMatchConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RegexMatchConfig < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1RegexMatchConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1RegexMatchConfig(
  api.GoogleCloudContactcenterinsightsV1RegexMatchConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1RegexMatchConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RegexMatchConfig < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1RegexMatchConfig--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation = 0;
api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation
buildGoogleCloudContactcenterinsightsV1RuntimeAnnotation() {
  final o = api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation();
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation < 3) {
    o.annotationId = 'foo';
    o.answerFeedback = buildGoogleCloudContactcenterinsightsV1AnswerFeedback();
    o.articleSuggestion =
        buildGoogleCloudContactcenterinsightsV1ArticleSuggestionData();
    o.cesEndSessionAnnotation =
        buildGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation();
    o.cesTurnAnnotation =
        buildGoogleCloudContactcenterinsightsV1CesTurnAnnotation();
    o.conversationSummarizationSuggestion =
        buildGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData();
    o.createTime = 'foo';
    o.dialogflowInteraction =
        buildGoogleCloudContactcenterinsightsV1DialogflowInteractionData();
    o.endBoundary = buildGoogleCloudContactcenterinsightsV1AnnotationBoundary();
    o.faqAnswer = buildGoogleCloudContactcenterinsightsV1FaqAnswerData();
    o.smartComposeSuggestion =
        buildGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData();
    o.smartReply = buildGoogleCloudContactcenterinsightsV1SmartReplyData();
    o.startBoundary =
        buildGoogleCloudContactcenterinsightsV1AnnotationBoundary();
    o.userInput =
        buildGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput();
  }
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1RuntimeAnnotation(
  api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation < 3) {
    unittest.expect(o.annotationId!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1AnswerFeedback(o.answerFeedback!);
    checkGoogleCloudContactcenterinsightsV1ArticleSuggestionData(
      o.articleSuggestion!,
    );
    checkGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation(
      o.cesEndSessionAnnotation!,
    );
    checkGoogleCloudContactcenterinsightsV1CesTurnAnnotation(
      o.cesTurnAnnotation!,
    );
    checkGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData(
      o.conversationSummarizationSuggestion!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1DialogflowInteractionData(
      o.dialogflowInteraction!,
    );
    checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(o.endBoundary!);
    checkGoogleCloudContactcenterinsightsV1FaqAnswerData(o.faqAnswer!);
    checkGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData(
      o.smartComposeSuggestion!,
    );
    checkGoogleCloudContactcenterinsightsV1SmartReplyData(o.smartReply!);
    checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(o.startBoundary!);
    checkGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput(
      o.userInput!,
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput = 0;
api.GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput
buildGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput() {
  final o = api.GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput();
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput <
      3) {
    o.generatorName = 'foo';
    o.query = 'foo';
    o.querySource = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput(
  api.GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput <
      3) {
    unittest.expect(o.generatorName!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.querySource!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1SampleConversationsRequest = 0;
api.GoogleCloudContactcenterinsightsV1SampleConversationsRequest
buildGoogleCloudContactcenterinsightsV1SampleConversationsRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1SampleConversationsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1SampleConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SampleConversationsRequest <
      3) {
    o.destinationDataset = buildGoogleCloudContactcenterinsightsV1Dataset();
    o.parent = 'foo';
    o.sampleRule = buildGoogleCloudContactcenterinsightsV1SampleRule();
  }
  buildCounterGoogleCloudContactcenterinsightsV1SampleConversationsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SampleConversationsRequest(
  api.GoogleCloudContactcenterinsightsV1SampleConversationsRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SampleConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SampleConversationsRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1Dataset(o.destinationDataset!);
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1SampleRule(o.sampleRule!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1SampleConversationsRequest--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SampleRule = 0;
api.GoogleCloudContactcenterinsightsV1SampleRule
buildGoogleCloudContactcenterinsightsV1SampleRule() {
  final o = api.GoogleCloudContactcenterinsightsV1SampleRule();
  buildCounterGoogleCloudContactcenterinsightsV1SampleRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SampleRule < 3) {
    o.conversationFilter = 'foo';
    o.dimension = 'foo';
    o.samplePercentage = 42.0;
    o.sampleRow = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1SampleRule--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SampleRule(
  api.GoogleCloudContactcenterinsightsV1SampleRule o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SampleRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SampleRule < 3) {
    unittest.expect(o.conversationFilter!, unittest.equals('foo'));
    unittest.expect(o.dimension!, unittest.equals('foo'));
    unittest.expect(o.samplePercentage!, unittest.equals(42.0));
    unittest.expect(o.sampleRow!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1SampleRule--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ScheduleInfo = 0;
api.GoogleCloudContactcenterinsightsV1ScheduleInfo
buildGoogleCloudContactcenterinsightsV1ScheduleInfo() {
  final o = api.GoogleCloudContactcenterinsightsV1ScheduleInfo();
  buildCounterGoogleCloudContactcenterinsightsV1ScheduleInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ScheduleInfo < 3) {
    o.endTime = 'foo';
    o.schedule = 'foo';
    o.startTime = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ScheduleInfo--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ScheduleInfo(
  api.GoogleCloudContactcenterinsightsV1ScheduleInfo o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1ScheduleInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ScheduleInfo < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.schedule!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1ScheduleInfo--;
}

core.List<api.GoogleCloudContactcenterinsightsV1AuthorizedView>
buildUnnamed99() => [
  buildGoogleCloudContactcenterinsightsV1AuthorizedView(),
  buildGoogleCloudContactcenterinsightsV1AuthorizedView(),
];

void checkUnnamed99(
  core.List<api.GoogleCloudContactcenterinsightsV1AuthorizedView> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1AuthorizedView(o[0]);
  checkGoogleCloudContactcenterinsightsV1AuthorizedView(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse = 0;
api.GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse
buildGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse <
      3) {
    o.authorizedViews = buildUnnamed99();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse(
  api.GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse <
      3) {
    checkUnnamed99(o.authorizedViews!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SentimentData = 0;
api.GoogleCloudContactcenterinsightsV1SentimentData
buildGoogleCloudContactcenterinsightsV1SentimentData() {
  final o = api.GoogleCloudContactcenterinsightsV1SentimentData();
  buildCounterGoogleCloudContactcenterinsightsV1SentimentData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SentimentData < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1SentimentData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SentimentData(
  api.GoogleCloudContactcenterinsightsV1SentimentData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SentimentData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SentimentData < 3) {
    unittest.expect(o.magnitude!, unittest.equals(42.0));
    unittest.expect(o.score!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudContactcenterinsightsV1SentimentData--;
}

core.Map<core.String, core.String> buildUnnamed100() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed100(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Settings = 0;
api.GoogleCloudContactcenterinsightsV1Settings
buildGoogleCloudContactcenterinsightsV1Settings() {
  final o = api.GoogleCloudContactcenterinsightsV1Settings();
  buildCounterGoogleCloudContactcenterinsightsV1Settings++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Settings < 3) {
    o.analysisConfig =
        buildGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig();
    o.conversationTtl = 'foo';
    o.createTime = 'foo';
    o.diagnosticMetricConfig =
        buildGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig();
    o.languageCode = 'foo';
    o.name = 'foo';
    o.pubsubNotificationSettings = buildUnnamed100();
    o.redactionConfig =
        buildGoogleCloudContactcenterinsightsV1RedactionConfig();
    o.screenRecordingBucketUri = 'foo';
    o.speechConfig = buildGoogleCloudContactcenterinsightsV1SpeechConfig();
    o.timeZone = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Settings--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Settings(
  api.GoogleCloudContactcenterinsightsV1Settings o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Settings++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Settings < 3) {
    checkGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig(
      o.analysisConfig!,
    );
    unittest.expect(o.conversationTtl!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig(
      o.diagnosticMetricConfig!,
    );
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed100(o.pubsubNotificationSettings!);
    checkGoogleCloudContactcenterinsightsV1RedactionConfig(o.redactionConfig!);
    unittest.expect(o.screenRecordingBucketUri!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1SpeechConfig(o.speechConfig!);
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Settings--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig =
    0;
api.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig
buildGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig();
  buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig <
      3) {
    o.annotatorSelector =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelector();
    o.runtimeIntegrationAnalysisPercentage = 42.0;
    o.uploadConversationAnalysisPercentage = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig(
  api.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig <
      3) {
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(
      o.annotatorSelector!,
    );
    unittest.expect(
      o.runtimeIntegrationAnalysisPercentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.uploadConversationAnalysisPercentage!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig--;
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1MetricDefinition>
buildUnnamed101() => {
  'x': buildGoogleCloudContactcenterinsightsV1MetricDefinition(),
  'y': buildGoogleCloudContactcenterinsightsV1MetricDefinition(),
};

void checkUnnamed101(
  core.Map<core.String, api.GoogleCloudContactcenterinsightsV1MetricDefinition>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1MetricDefinition(o['x']!);
  checkGoogleCloudContactcenterinsightsV1MetricDefinition(o['y']!);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig =
    0;
api.GoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig
buildGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig() {
  final o =
      api.GoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig();
  buildCounterGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig <
      3) {
    o.metrics = buildUnnamed101();
  }
  buildCounterGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig(
  api.GoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig <
      3) {
    checkUnnamed101(o.metrics!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig--;
}

core.List<
  api.GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio
>
buildUnnamed102() => [
  buildGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(),
  buildGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(),
];

void checkUnnamed102(
  core.List<
    api.GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(
    o[0],
  );
  checkGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(
    o[1],
  );
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SignedAudioUris = 0;
api.GoogleCloudContactcenterinsightsV1SignedAudioUris
buildGoogleCloudContactcenterinsightsV1SignedAudioUris() {
  final o = api.GoogleCloudContactcenterinsightsV1SignedAudioUris();
  buildCounterGoogleCloudContactcenterinsightsV1SignedAudioUris++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SignedAudioUris < 3) {
    o.signedDialogflowAudioUri = 'foo';
    o.signedGcsAudioUri = 'foo';
    o.signedTurnLevelAudios = buildUnnamed102();
  }
  buildCounterGoogleCloudContactcenterinsightsV1SignedAudioUris--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SignedAudioUris(
  api.GoogleCloudContactcenterinsightsV1SignedAudioUris o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SignedAudioUris++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SignedAudioUris < 3) {
    unittest.expect(o.signedDialogflowAudioUri!, unittest.equals('foo'));
    unittest.expect(o.signedGcsAudioUri!, unittest.equals('foo'));
    checkUnnamed102(o.signedTurnLevelAudios!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1SignedAudioUris--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SilenceData = 0;
api.GoogleCloudContactcenterinsightsV1SilenceData
buildGoogleCloudContactcenterinsightsV1SilenceData() {
  final o = api.GoogleCloudContactcenterinsightsV1SilenceData();
  buildCounterGoogleCloudContactcenterinsightsV1SilenceData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SilenceData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1SilenceData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SilenceData(
  api.GoogleCloudContactcenterinsightsV1SilenceData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SilenceData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SilenceData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1SilenceData--;
}

core.Map<core.String, core.String> buildUnnamed103() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed103(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData = 0;
api.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData
buildGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData() {
  final o = api.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData();
  buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData <
      3) {
    o.confidenceScore = 42.0;
    o.metadata = buildUnnamed103();
    o.queryRecord = 'foo';
    o.suggestion = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData(
  api.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData <
      3) {
    unittest.expect(o.confidenceScore!, unittest.equals(42.0));
    checkUnnamed103(o.metadata!);
    unittest.expect(o.queryRecord!, unittest.equals('foo'));
    unittest.expect(o.suggestion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData--;
}

core.Map<core.String, core.String> buildUnnamed104() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed104(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData = 0;
api.GoogleCloudContactcenterinsightsV1SmartReplyData
buildGoogleCloudContactcenterinsightsV1SmartReplyData() {
  final o = api.GoogleCloudContactcenterinsightsV1SmartReplyData();
  buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData < 3) {
    o.confidenceScore = 42.0;
    o.metadata = buildUnnamed104();
    o.queryRecord = 'foo';
    o.reply = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SmartReplyData(
  api.GoogleCloudContactcenterinsightsV1SmartReplyData o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData < 3) {
    unittest.expect(o.confidenceScore!, unittest.equals(42.0));
    checkUnnamed104(o.metadata!);
    unittest.expect(o.queryRecord!, unittest.equals('foo'));
    unittest.expect(o.reply!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig = 0;
api.GoogleCloudContactcenterinsightsV1SpeechConfig
buildGoogleCloudContactcenterinsightsV1SpeechConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1SpeechConfig();
  buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig < 3) {
    o.disableWordTimeOffsets = true;
    o.speechRecognizer = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SpeechConfig(
  api.GoogleCloudContactcenterinsightsV1SpeechConfig o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig < 3) {
    unittest.expect(o.disableWordTimeOffsets!, unittest.isTrue);
    unittest.expect(o.speechRecognizer!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest = 0;
api.GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest
buildGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest();
  buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest <
      3) {
    o.autoLabelingRule =
        buildGoogleCloudContactcenterinsightsV1AutoLabelingRule();
    o.conversation = buildGoogleCloudContactcenterinsightsV1Conversation();
  }
  buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest(
  api.GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1AutoLabelingRule(
      o.autoLabelingRule!,
    );
    checkGoogleCloudContactcenterinsightsV1Conversation(o.conversation!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse = 0;
api.GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse
buildGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse();
  buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse <
      3) {
    o.labelResult = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse(
  api.GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse <
      3) {
    unittest.expect(o.labelResult!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest = 0;
api.GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest
buildGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest();
  buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest <
      3) {
    o.conversations =
        buildGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations();
    o.correlationConfig =
        buildGoogleCloudContactcenterinsightsV1CorrelationConfig();
    o.filter = 'foo';
    o.maxSampleCount = 42;
  }
  buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest(
  api.GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations(
      o.conversations!,
    );
    checkGoogleCloudContactcenterinsightsV1CorrelationConfig(
      o.correlationConfig!,
    );
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.maxSampleCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Conversation>
buildUnnamed105() => [
  buildGoogleCloudContactcenterinsightsV1Conversation(),
  buildGoogleCloudContactcenterinsightsV1Conversation(),
];

void checkUnnamed105(
  core.List<api.GoogleCloudContactcenterinsightsV1Conversation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Conversation(o[0]);
  checkGoogleCloudContactcenterinsightsV1Conversation(o[1]);
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations =
    0;
api.GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations
buildGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations() {
  final o =
      api.GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations();
  buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations <
      3) {
    o.conversations = buildUnnamed105();
  }
  buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations--;
  return o;
}

void
checkGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations(
  api.GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations
  o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations <
      3) {
    checkUnnamed105(o.conversations!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest =
    0;
api.GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest
buildGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest();
  buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest <
      3) {
    o.filter = 'foo';
    o.validateOnly = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest(
  api.GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest <
      3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest = 0;
api.GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest
buildGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest();
  buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest(
  api.GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest <
      3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest =
    0;
api.GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
buildGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest();
  buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest(
  api.GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest--;
}

core.int
buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest = 0;
api.GoogleCloudContactcenterinsightsV1UploadConversationRequest
buildGoogleCloudContactcenterinsightsV1UploadConversationRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1UploadConversationRequest();
  buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest <
      3) {
    o.conversation = buildGoogleCloudContactcenterinsightsV1Conversation();
    o.conversationId = 'foo';
    o.parent = 'foo';
    o.redactionConfig =
        buildGoogleCloudContactcenterinsightsV1RedactionConfig();
    o.speechConfig = buildGoogleCloudContactcenterinsightsV1SpeechConfig();
  }
  buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1UploadConversationRequest(
  api.GoogleCloudContactcenterinsightsV1UploadConversationRequest o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1Conversation(o.conversation!);
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1RedactionConfig(o.redactionConfig!);
    checkGoogleCloudContactcenterinsightsV1SpeechConfig(o.speechConfig!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1UserInfo = 0;
api.GoogleCloudContactcenterinsightsV1UserInfo
buildGoogleCloudContactcenterinsightsV1UserInfo() {
  final o = api.GoogleCloudContactcenterinsightsV1UserInfo();
  buildCounterGoogleCloudContactcenterinsightsV1UserInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UserInfo < 3) {
    o.username = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1UserInfo--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1UserInfo(
  api.GoogleCloudContactcenterinsightsV1UserInfo o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1UserInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UserInfo < 3) {
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1UserInfo--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1View = 0;
api.GoogleCloudContactcenterinsightsV1View
buildGoogleCloudContactcenterinsightsV1View() {
  final o = api.GoogleCloudContactcenterinsightsV1View();
  buildCounterGoogleCloudContactcenterinsightsV1View++;
  if (buildCounterGoogleCloudContactcenterinsightsV1View < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1View--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1View(
  api.GoogleCloudContactcenterinsightsV1View o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1View++;
  if (buildCounterGoogleCloudContactcenterinsightsV1View < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1View--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Widget = 0;
api.GoogleCloudContactcenterinsightsV1Widget
buildGoogleCloudContactcenterinsightsV1Widget() {
  final o = api.GoogleCloudContactcenterinsightsV1Widget();
  buildCounterGoogleCloudContactcenterinsightsV1Widget++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Widget < 3) {
    o.chart = buildGoogleCloudContactcenterinsightsV1Chart();
    o.chartReference = 'foo';
    o.container = buildGoogleCloudContactcenterinsightsV1Container();
    o.filter = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Widget--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Widget(
  api.GoogleCloudContactcenterinsightsV1Widget o,
) {
  buildCounterGoogleCloudContactcenterinsightsV1Widget++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Widget < 3) {
    checkGoogleCloudContactcenterinsightsV1Chart(o.chart!);
    unittest.expect(o.chartReference!, unittest.equals('foo'));
    checkGoogleCloudContactcenterinsightsV1Container(o.container!);
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudContactcenterinsightsV1Widget--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed106() => [
  buildGoogleIamV1AuditLogConfig(),
  buildGoogleIamV1AuditLogConfig(),
];

void checkUnnamed106(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed106();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed106(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed107() => ['foo', 'foo'];

void checkUnnamed107(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed107();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed107(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed108() => ['foo', 'foo'];

void checkUnnamed108(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed108();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed108(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed109() => [
  buildGoogleIamV1AuditConfig(),
  buildGoogleIamV1AuditConfig(),
];

void checkUnnamed109(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed110() => [
  buildGoogleIamV1Binding(),
  buildGoogleIamV1Binding(),
];

void checkUnnamed110(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed109();
    o.bindings = buildUnnamed110();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed109(o.auditConfigs!);
    checkUnnamed110(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleIamV1SetIamPolicyRequest = 0;
api.GoogleIamV1SetIamPolicyRequest buildGoogleIamV1SetIamPolicyRequest() {
  final o = api.GoogleIamV1SetIamPolicyRequest();
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.updateMask = 'foo';
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
  return o;
}

void checkGoogleIamV1SetIamPolicyRequest(api.GoogleIamV1SetIamPolicyRequest o) {
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed111() => ['foo', 'foo'];

void checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
api.GoogleIamV1TestIamPermissionsRequest
buildGoogleIamV1TestIamPermissionsRequest() {
  final o = api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed111();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
  api.GoogleIamV1TestIamPermissionsRequest o,
) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed111(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed112() => ['foo', 'foo'];

void checkUnnamed112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
api.GoogleIamV1TestIamPermissionsResponse
buildGoogleIamV1TestIamPermissionsResponse() {
  final o = api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed112();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
  api.GoogleIamV1TestIamPermissionsResponse o,
) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed112(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed113() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed113(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.List<core.String> buildUnnamed114() => ['foo', 'foo'];

void checkUnnamed114(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed113();
    o.unreachable = buildUnnamed114();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
  api.GoogleLongrunningListOperationsResponse o,
) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed113(o.operations!);
    checkUnnamed114(o.unreachable!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed115() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed115(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o['x']!) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted25['bool'], unittest.equals(true));
  unittest.expect(casted25['string'], unittest.equals('foo'));
  var casted26 = (o['y']!) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted26['bool'], unittest.equals(true));
  unittest.expect(casted26['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed116() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed116(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o['x']!) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted27['bool'], unittest.equals(true));
  unittest.expect(casted27['string'], unittest.equals('foo'));
  var casted28 = (o['y']!) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted28['bool'], unittest.equals(true));
  unittest.expect(casted28['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed115();
    o.name = 'foo';
    o.response = buildUnnamed116();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed115(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed116(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object?> buildUnnamed117() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed117(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o['x']!) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted29['bool'], unittest.equals(true));
  unittest.expect(casted29['string'], unittest.equals('foo'));
  var casted30 = (o['y']!) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted30['bool'], unittest.equals(true));
  unittest.expect(casted30['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed118() => [
  buildUnnamed117(),
  buildUnnamed117(),
];

void checkUnnamed118(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed117(o[0]);
  checkUnnamed117(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed118();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed118(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  final o = api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

void checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

core.List<core.String> buildUnnamed119() => ['foo', 'foo'];

void checkUnnamed119(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed120() => ['foo', 'foo'];

void checkUnnamed120(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-GoogleCloudCesV1mainAgentTransfer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudCesV1mainAgentTransfer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudCesV1mainAgentTransfer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudCesV1mainAgentTransfer(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudCesV1mainBlob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudCesV1mainBlob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudCesV1mainBlob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudCesV1mainBlob(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudCesV1mainChunk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudCesV1mainChunk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudCesV1mainChunk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudCesV1mainChunk(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudCesV1mainEndSession', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudCesV1mainEndSession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudCesV1mainEndSession.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudCesV1mainEndSession(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudCesV1mainImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudCesV1mainImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudCesV1mainImage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudCesV1mainImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudCesV1mainMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudCesV1mainMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudCesV1mainMessage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudCesV1mainMessage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudCesV1mainSpan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudCesV1mainSpan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudCesV1mainSpan.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudCesV1mainSpan(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudCesV1mainToolCall', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudCesV1mainToolCall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudCesV1mainToolCall.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudCesV1mainToolCall(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudCesV1mainToolResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudCesV1mainToolResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudCesV1mainToolResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudCesV1mainToolResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudCesV1mainToolsetTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudCesV1mainToolsetTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudCesV1mainToolsetTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudCesV1mainToolsetTool(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Analysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Analysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Analysis.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Analysis(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AnalysisResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1AnalysisResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AnalysisResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AnalysisResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AnalysisRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1AnalysisRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1AnalysisRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AnnotationBoundary',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1AnnotationBoundary();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AnnotationBoundary.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AnnotatorSelector',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1AnnotatorSelector();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AnswerFeedback',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1AnswerFeedback();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AnswerFeedback.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AnswerFeedback(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AppealAssessmentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1AppealAssessmentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AppealAssessmentRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AppealAssessmentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ArticleSuggestionData',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ArticleSuggestionData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ArticleSuggestionData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ArticleSuggestionData(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Assessment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Assessment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Assessment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Assessment(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AssessmentRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1AssessmentRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AssessmentRule.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AssessmentRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AuthorizedView',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1AuthorizedView();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AuthorizedView.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AuthorizedView(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AuthorizedViewSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1AuthorizedViewSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AuthorizedViewSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AutoLabelingRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1AutoLabelingRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AutoLabelingRule.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AutoLabelingRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CalculateStatsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1CalculateStatsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CalculateStatsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CalculateStatsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CalculateStatsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1CalculateStatsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CalculateStatsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CallAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1CallAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CallAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CallAnnotation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CesEndSessionAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CesEndSessionAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CesEndSessionAnnotation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CesTurnAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1CesTurnAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CesTurnAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CesTurnAnnotation(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Chart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Chart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Chart.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Chart(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ChartAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1ChartAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1ChartAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1ChartAction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ChartDataSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1ChartDataSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ChartDataSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ChartDataSource(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Container', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Container();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Container.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Container(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1Conversation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1Conversation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1Conversation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1Conversation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationCallMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationCallMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationCallMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationCallMetadata(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationCorrelationInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationCorrelationInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationCorrelationInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationDataOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationDataOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationDataOptions.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationDataOptions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationDataSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationDataSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationDataSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationDataSource(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationLevelSentiment',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationLevelSentiment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationLevelSilence',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationLevelSilence();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationLevelSilence.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationLevelSilence(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationParticipant',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationParticipant();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationParticipant.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationParticipant(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationQualityMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadata(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationTranscript',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationTranscript();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationTranscript.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationTranscript(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CorrelationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1CorrelationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CorrelationConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CorrelationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CorrelationRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1CorrelationRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CorrelationRule.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CorrelationRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1CorrelationTypeConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1CorrelationTypeConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1CorrelationTypeConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1CorrelationTypeConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Dashboard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Dashboard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Dashboard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Dashboard(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Dataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Dataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Dataset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Dataset(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DateRangeConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1DateRangeConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DateRangeConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DateRangeConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DeployIssueModelRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DeployIssueModelRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DeployIssueModelRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DeployIssueModelRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Diagnostic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Diagnostic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Diagnostic.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Diagnostic(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DiagnosticReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1DiagnosticReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DiagnosticReport.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DiagnosticReport(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DiagnosticReportIntentStats(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DialogflowIntent',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1DialogflowIntent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DialogflowIntent.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DialogflowIntent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DialogflowInteractionData',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DialogflowInteractionData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DialogflowInteractionData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DialogflowInteractionData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DialogflowSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1DialogflowSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DialogflowSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DialogflowSource(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Dimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Dimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Dimension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Dimension(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1EncryptionSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1EncryptionSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1EncryptionSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1EncryptionSpec(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Entity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Entity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Entity(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1EntityMentionData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1EntityMentionData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1EntityMentionData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1EntityMentionData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ExactMatchConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1ExactMatchConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ExactMatchConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ExactMatchConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ExportIssueModelRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1FaqAnswerData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1FaqAnswerData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1FaqAnswerData.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1FaqAnswerData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1FeedbackLabel',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1FeedbackLabel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1FeedbackLabel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1GcsSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1GcsSource(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1GenerativeInsights',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1GenerativeInsights();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1GenerativeInsights.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1GenerativeInsights(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1HoldData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1HoldData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1HoldData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1HoldData(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ImportIssueModelRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IngestConversationsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1IngestConversationsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IngestConversationsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Intent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Intent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Intent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Intent(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IntentMatchData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1IntentMatchData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IntentMatchData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IntentMatchData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1InterruptionData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1InterruptionData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1InterruptionData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1InterruptionData(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Issue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Issue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Issue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Issue(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IssueAssignment',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1IssueAssignment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IssueAssignment.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IssueAssignment(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IssueMatchData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1IssueMatchData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IssueMatchData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IssueMatchData(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1IssueModel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1IssueModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1IssueModel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1IssueModel(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IssueModelLabelStats',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1IssueModelLabelStats();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IssueModelLabelStats.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IssueModelLabelStats(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1IssueModelResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1IssueModelResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1IssueModelResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1IssueModelResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListAnalysesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1ListAnalysesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListAnalysesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListAssessmentsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListAssessmentsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListAssessmentsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListAssessmentsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListChartsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1ListChartsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListChartsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListChartsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListConversationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListConversationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListConversationsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListConversationsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListDashboardsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListDashboardsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListDashboardsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListDashboardsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListDatasetsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1ListDatasetsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListDatasetsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListDatasetsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListDiagnosticsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListDiagnosticsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListIssueModelsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListIssueModelsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListIssueModelsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListIssuesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1ListIssuesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListIssuesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListIssuesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListNotesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1ListNotesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListNotesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListNotesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ListViewsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1ListViewsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1ListViewsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1ListViewsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1LossPattern',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1LossPattern();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1LossPattern.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1LossPattern(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1MetricDefinition',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1MetricDefinition();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1MetricDefinition.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1MetricDefinition(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1MetricValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1MetricValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1MetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1MetricValue(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Note', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Note();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Note.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Note(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1NoteAssessmentNote',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1NoteAssessmentNote();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1NoteAssessmentNote.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1NoteAssessmentNote(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1NoteConversationTurnNote',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1NoteConversationTurnNote();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1NoteConversationTurnNote.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1NoteConversationTurnNote(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1NoteQaQuestionNote',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1NoteQaQuestionNote();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1NoteQaQuestionNote.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1NoteQaQuestionNote(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1OutputConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1OutputConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1OutputConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1OutputConfigBigQueryDestination(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1OutputConfigGcsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1OutputConfigGcsDestination.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1OutputConfigGcsDestination(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1OutputConfigGoogleSheetsDestination(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1PhraseMatchData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1PhraseMatchData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1PhraseMatchData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1PhraseMatchData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1PhraseMatchRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1PhraseMatchRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1PhraseMatchRule.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1PhraseMatchRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1PhraseMatcher',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1PhraseMatcher();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1PhraseMatcher(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1PublishAssessmentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1PublishAssessmentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1PublishAssessmentRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1PublishAssessmentRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1QaAnswer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1QaAnswer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1QaAnswer(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1QaQuestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1QaQuestion(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaQuestionMetrics',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1QaQuestionMetrics();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaQuestionMetrics.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaQuestionMetrics(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaQuestionTag',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1QaQuestionTag();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1QaQuestionTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1QaQuestionTag(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaScorecard',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1QaScorecard();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1QaScorecard(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaScorecardResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1QaScorecardResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaScorecardResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaScorecardResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QaScorecardRevision',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1QaScorecardRevision();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QaScorecardRevision.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QueryInterval',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1QueryInterval();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1QueryInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1QueryInterval(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QueryMetrics',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1QueryMetrics();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1QueryMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1QueryMetrics(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QueryMetricsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1QueryMetricsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QueryMetricsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1RedactionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1RedactionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1RedactionConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1RedactionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1RedirectAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1RedirectAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1RedirectAction.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1RedirectAction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1RegexMatchConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1RegexMatchConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1RegexMatchConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1RegexMatchConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1RuntimeAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1RuntimeAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1RuntimeAnnotation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1SampleConversationsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1SampleConversationsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1SampleConversationsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1SampleConversationsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1SampleRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1SampleRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1SampleRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1SampleRule(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1ScheduleInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1ScheduleInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1ScheduleInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1ScheduleInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1SentimentData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1SentimentData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1SentimentData.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1SentimentData(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Settings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Settings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Settings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Settings(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1SettingsDiagnosticMetricConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1SignedAudioUris',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1SignedAudioUris();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1SignedAudioUris.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1SignedAudioUris(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1SilenceData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1SilenceData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1SilenceData.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1SilenceData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1SmartReplyData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1SmartReplyData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1SmartReplyData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1SmartReplyData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1SpeechConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudContactcenterinsightsV1SpeechConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudContactcenterinsightsV1SpeechConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudContactcenterinsightsV1SpeechConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudContactcenterinsightsV1UploadConversationRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudContactcenterinsightsV1UploadConversationRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudContactcenterinsightsV1UploadConversationRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudContactcenterinsightsV1UploadConversationRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1UserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1UserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1UserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1View', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1View();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1View.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1View(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Widget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Widget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Widget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudContactcenterinsightsV1Widget(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1SetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1SetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1TestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1TestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--bulkDeleteFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkDeleteFeedbackLabels(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--bulkDownloadFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkDownloadFeedbackLabels(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--bulkUploadFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkUploadFeedbackLabels(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--diagnoseConversations', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1DiagnoseConversationsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.diagnoseConversations(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--generativeInsights', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generativeInsights(
        arg_request,
        arg_location,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--getCorrelationConfig', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1CorrelationConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getCorrelationConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1CorrelationConfig(
        response as api.GoogleCloudContactcenterinsightsV1CorrelationConfig,
      );
    });

    unittest.test('method--getEncryptionSpec', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1EncryptionSpec(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getEncryptionSpec(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1EncryptionSpec(
        response as api.GoogleCloudContactcenterinsightsV1EncryptionSpec,
      );
    });

    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Settings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSettings(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Settings(
        response as api.GoogleCloudContactcenterinsightsV1Settings,
      );
    });

    unittest.test('method--listAllFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listAllFeedbackLabels(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse,
      );
    });

    unittest.test('method--queryMetrics', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1QueryMetricsRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1QueryMetricsRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryMetrics(
        arg_request,
        arg_location,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--queryPerformanceOverview', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryPerformanceOverview(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--testCorrelationConfig', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testCorrelationConfig(
        arg_request,
        arg_location,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--updateCorrelationConfig', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1CorrelationConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1CorrelationConfig.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1CorrelationConfig(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1CorrelationConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateCorrelationConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1CorrelationConfig(
        response as api.GoogleCloudContactcenterinsightsV1CorrelationConfig,
      );
    });

    unittest.test('method--updateSettings', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Settings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Settings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Settings(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Settings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Settings(
        response as api.GoogleCloudContactcenterinsightsV1Settings,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAnalysisRulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.analysisRules;
      final arg_request = buildGoogleCloudContactcenterinsightsV1AnalysisRule();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AnalysisRule(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AnalysisRule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1AnalysisRule(
        response as api.GoogleCloudContactcenterinsightsV1AnalysisRule,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.analysisRules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.analysisRules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AnalysisRule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1AnalysisRule(
        response as api.GoogleCloudContactcenterinsightsV1AnalysisRule,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.analysisRules;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.analysisRules;
      final arg_request = buildGoogleCloudContactcenterinsightsV1AnalysisRule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AnalysisRule(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AnalysisRule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1AnalysisRule(
        response as api.GoogleCloudContactcenterinsightsV1AnalysisRule,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAssessmentRulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.assessmentRules;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1AssessmentRule();
      final arg_parent = 'foo';
      final arg_assessmentRuleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AssessmentRule.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AssessmentRule(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['assessmentRuleId']!.first,
            unittest.equals(arg_assessmentRuleId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AssessmentRule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        assessmentRuleId: arg_assessmentRuleId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1AssessmentRule(
        response as api.GoogleCloudContactcenterinsightsV1AssessmentRule,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.assessmentRules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.assessmentRules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AssessmentRule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1AssessmentRule(
        response as api.GoogleCloudContactcenterinsightsV1AssessmentRule,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.assessmentRules;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.assessmentRules;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1AssessmentRule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AssessmentRule.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AssessmentRule(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AssessmentRule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1AssessmentRule(
        response as api.GoogleCloudContactcenterinsightsV1AssessmentRule,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAuthorizedViewSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1AuthorizedViewSet();
      final arg_parent = 'foo';
      final arg_authorizedViewSetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AuthorizedViewSet(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['authorizedViewSetId']!.first,
            unittest.equals(arg_authorizedViewSetId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AuthorizedViewSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        authorizedViewSetId: arg_authorizedViewSetId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1AuthorizedViewSet(
        response as api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AuthorizedViewSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1AuthorizedViewSet(
        response as api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1AuthorizedViewSet();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AuthorizedViewSet(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AuthorizedViewSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1AuthorizedViewSet(
        response as api.GoogleCloudContactcenterinsightsV1AuthorizedViewSet,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAuthorizedViewSetsAuthorizedViewsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1AuthorizedView();
      final arg_parent = 'foo';
      final arg_authorizedViewId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AuthorizedView.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AuthorizedView(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['authorizedViewId']!.first,
            unittest.equals(arg_authorizedViewId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AuthorizedView(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        authorizedViewId: arg_authorizedViewId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1AuthorizedView(
        response as api.GoogleCloudContactcenterinsightsV1AuthorizedView,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--generativeInsights', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1GenerativeInsightsRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generativeInsights(
        arg_request,
        arg_location,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AuthorizedView(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1AuthorizedView(
        response as api.GoogleCloudContactcenterinsightsV1AuthorizedView,
      );
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1AuthorizedView();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AuthorizedView.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AuthorizedView(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AuthorizedView(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1AuthorizedView(
        response as api.GoogleCloudContactcenterinsightsV1AuthorizedView,
      );
    });

    unittest.test('method--queryMetrics', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1QueryMetricsRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1QueryMetricsRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryMetrics(
        arg_request,
        arg_location,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--queryPerformanceOverview', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryPerformanceOverview(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_parent = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_parent,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        query: arg_query,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.authorizedViewSets.authorizedViews;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsAuthorizedViewSetsAuthorizedViewsConversationsResource',
    () {
      unittest.test('method--calculateStats', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.authorizedViewSets.authorizedViews.conversations;
        final arg_location = 'foo';
        final arg_filter = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1CalculateStatsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculateStats(
          arg_location,
          filter: arg_filter,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1CalculateStatsResponse(
          response
              as api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse,
        );
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.authorizedViewSets.authorizedViews.conversations;
        final arg_name = 'foo';
        final arg_force = true;
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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
              queryMap['force']!.first,
              unittest.equals('$arg_force'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildGoogleProtobufEmpty());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(
          arg_name,
          force: arg_force,
          $fields: arg_$fields,
        );
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      });

      unittest.test('method--generateSignedAudio', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.authorizedViewSets.authorizedViews.conversations;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.generateSignedAudio(
          arg_name,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse(
          response
              as api.GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse,
        );
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.authorizedViewSets.authorizedViews.conversations;
        final arg_name = 'foo';
        final arg_view = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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
            unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1Conversation(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(
          arg_name,
          view: arg_view,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1Conversation(
          response as api.GoogleCloudContactcenterinsightsV1Conversation,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.authorizedViewSets.authorizedViews.conversations;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_orderBy = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_view = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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
              queryMap['orderBy']!.first,
              unittest.equals(arg_orderBy),
            );
            unittest.expect(
              core.int.parse(queryMap['pageSize']!.first),
              unittest.equals(arg_pageSize),
            );
            unittest.expect(
              queryMap['pageToken']!.first,
              unittest.equals(arg_pageToken),
            );
            unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1ListConversationsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1ListConversationsResponse(
          response
              as api.GoogleCloudContactcenterinsightsV1ListConversationsResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsAuthorizedViewSetsAuthorizedViewsConversationsAssessmentsResource',
    () {
      unittest.test('method--appeal', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments;
        final arg_request =
            buildGoogleCloudContactcenterinsightsV1AppealAssessmentRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj =
                api.GoogleCloudContactcenterinsightsV1AppealAssessmentRequest.fromJson(
                  json as core.Map<core.String, core.dynamic>,
                );
            checkGoogleCloudContactcenterinsightsV1AppealAssessmentRequest(obj);

            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1Assessment(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.appeal(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1Assessment(
          response as api.GoogleCloudContactcenterinsightsV1Assessment,
        );
      });

      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments;
        final arg_request = buildGoogleCloudContactcenterinsightsV1Assessment();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj =
                api.GoogleCloudContactcenterinsightsV1Assessment.fromJson(
                  json as core.Map<core.String, core.dynamic>,
                );
            checkGoogleCloudContactcenterinsightsV1Assessment(obj);

            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1Assessment(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1Assessment(
          response as api.GoogleCloudContactcenterinsightsV1Assessment,
        );
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments;
        final arg_name = 'foo';
        final arg_force = true;
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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
              queryMap['force']!.first,
              unittest.equals('$arg_force'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildGoogleProtobufEmpty());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(
          arg_name,
          force: arg_force,
          $fields: arg_$fields,
        );
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      });

      unittest.test('method--finalize', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments;
        final arg_request =
            buildGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj =
                api.GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest.fromJson(
                  json as core.Map<core.String, core.dynamic>,
                );
            checkGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest(
              obj,
            );

            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1Assessment(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.finalize(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1Assessment(
          response as api.GoogleCloudContactcenterinsightsV1Assessment,
        );
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1Assessment(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudContactcenterinsightsV1Assessment(
          response as api.GoogleCloudContactcenterinsightsV1Assessment,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1ListAssessmentsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1ListAssessmentsResponse(
          response
              as api.GoogleCloudContactcenterinsightsV1ListAssessmentsResponse,
        );
      });

      unittest.test('method--publish', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments;
        final arg_request =
            buildGoogleCloudContactcenterinsightsV1PublishAssessmentRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj =
                api.GoogleCloudContactcenterinsightsV1PublishAssessmentRequest.fromJson(
                  json as core.Map<core.String, core.dynamic>,
                );
            checkGoogleCloudContactcenterinsightsV1PublishAssessmentRequest(
              obj,
            );

            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1Assessment(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.publish(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1Assessment(
          response as api.GoogleCloudContactcenterinsightsV1Assessment,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsAuthorizedViewSetsAuthorizedViewsConversationsAssessmentsNotesResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments
            .notes;
        final arg_request = buildGoogleCloudContactcenterinsightsV1Note();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.GoogleCloudContactcenterinsightsV1Note.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkGoogleCloudContactcenterinsightsV1Note(obj);

            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1Note(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1Note(
          response as api.GoogleCloudContactcenterinsightsV1Note,
        );
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments
            .notes;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildGoogleProtobufEmpty());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(arg_name, $fields: arg_$fields);
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments
            .notes;
        final arg_parent = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1ListNotesResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1ListNotesResponse(
          response as api.GoogleCloudContactcenterinsightsV1ListNotesResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .assessments
            .notes;
        final arg_request = buildGoogleCloudContactcenterinsightsV1Note();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.GoogleCloudContactcenterinsightsV1Note.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkGoogleCloudContactcenterinsightsV1Note(obj);

            final path = req.url.path;
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

            final query = req.url.query;
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
              queryMap['updateMask']!.first,
              unittest.equals(arg_updateMask),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1Note(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.patch(
          arg_request,
          arg_name,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1Note(
          response as api.GoogleCloudContactcenterinsightsV1Note,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsAuthorizedViewSetsAuthorizedViewsConversationsFeedbackLabelsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .feedbackLabels;
        final arg_request =
            buildGoogleCloudContactcenterinsightsV1FeedbackLabel();
        final arg_parent = 'foo';
        final arg_feedbackLabelId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj =
                api.GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
                  json as core.Map<core.String, core.dynamic>,
                );
            checkGoogleCloudContactcenterinsightsV1FeedbackLabel(obj);

            final path = req.url.path;
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

            final query = req.url.query;
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
              queryMap['feedbackLabelId']!.first,
              unittest.equals(arg_feedbackLabelId),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          feedbackLabelId: arg_feedbackLabelId,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
          response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel,
        );
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .feedbackLabels;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildGoogleProtobufEmpty());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(arg_name, $fields: arg_$fields);
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .feedbackLabels;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
          response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .feedbackLabels;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(
          response
              as api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(mock)
            .projects
            .locations
            .authorizedViewSets
            .authorizedViews
            .conversations
            .feedbackLabels;
        final arg_request =
            buildGoogleCloudContactcenterinsightsV1FeedbackLabel();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj =
                api.GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
                  json as core.Map<core.String, core.dynamic>,
                );
            checkGoogleCloudContactcenterinsightsV1FeedbackLabel(obj);

            final path = req.url.path;
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

            final query = req.url.query;
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
              queryMap['updateMask']!.first,
              unittest.equals(arg_updateMask),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.patch(
          arg_request,
          arg_name,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
          response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsAuthorizedViewSetsAuthorizedViewsOperationsResource',
    () {
      unittest.test('method--cancel', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.authorizedViewSets.authorizedViews.operations;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildGoogleProtobufEmpty());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.cancel(arg_name, $fields: arg_$fields);
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.authorizedViewSets.authorizedViews.operations;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.authorizedViewSets.authorizedViews.operations;
        final arg_name = 'foo';
        final arg_filter = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_returnPartialSuccess = true;
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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
              queryMap['returnPartialSuccess']!.first,
              unittest.equals('$arg_returnPartialSuccess'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleLongrunningListOperationsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          returnPartialSuccess: arg_returnPartialSuccess,
          $fields: arg_$fields,
        );
        checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsAutoLabelingRulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.autoLabelingRules;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1AutoLabelingRule();
      final arg_parent = 'foo';
      final arg_autoLabelingRuleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AutoLabelingRule.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AutoLabelingRule(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['autoLabelingRuleId']!.first,
            unittest.equals(arg_autoLabelingRuleId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AutoLabelingRule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        autoLabelingRuleId: arg_autoLabelingRuleId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1AutoLabelingRule(
        response as api.GoogleCloudContactcenterinsightsV1AutoLabelingRule,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.autoLabelingRules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.autoLabelingRules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AutoLabelingRule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1AutoLabelingRule(
        response as api.GoogleCloudContactcenterinsightsV1AutoLabelingRule,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.autoLabelingRules;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.autoLabelingRules;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1AutoLabelingRule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AutoLabelingRule.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AutoLabelingRule(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1AutoLabelingRule(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1AutoLabelingRule(
        response as api.GoogleCloudContactcenterinsightsV1AutoLabelingRule,
      );
    });

    unittest.test('method--test', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.autoLabelingRules;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.test(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsResource', () {
    unittest.test('method--bulkAnalyze', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkAnalyze(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--bulkDelete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkDelete(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--calculateStats', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_location = 'foo';
      final arg_filter = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1CalculateStatsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculateStats(
        arg_location,
        filter: arg_filter,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1CalculateStatsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Conversation();
      final arg_parent = 'foo';
      final arg_conversationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1Conversation.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1Conversation(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['conversationId']!.first,
            unittest.equals(arg_conversationId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Conversation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        conversationId: arg_conversationId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Conversation(
        response as api.GoogleCloudContactcenterinsightsV1Conversation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--generateSignedAudio', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateSignedAudio(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_name = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Conversation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Conversation(
        response as api.GoogleCloudContactcenterinsightsV1Conversation,
      );
    });

    unittest.test('method--ingest', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1IngestConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1IngestConversationsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ingest(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListConversationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListConversationsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListConversationsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Conversation();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_conversationAutoLabelingUpdateConfig_allowAutoLabelingUpdate =
          true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1Conversation.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1Conversation(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['conversationAutoLabelingUpdateConfig.allowAutoLabelingUpdate']!
                .first,
            unittest.equals(
              '$arg_conversationAutoLabelingUpdateConfig_allowAutoLabelingUpdate',
            ),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Conversation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        conversationAutoLabelingUpdateConfig_allowAutoLabelingUpdate:
            arg_conversationAutoLabelingUpdateConfig_allowAutoLabelingUpdate,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Conversation(
        response as api.GoogleCloudContactcenterinsightsV1Conversation,
      );
    });

    unittest.test('method--sample', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1SampleConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1SampleConversationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1SampleConversationsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.sample(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--upload', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1UploadConversationRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1UploadConversationRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1UploadConversationRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.upload(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsAnalysesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.analyses;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Analysis();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Analysis.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Analysis(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.analyses;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.analyses;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Analysis(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Analysis(
        response as api.GoogleCloudContactcenterinsightsV1Analysis,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.analyses;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAnalysesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListAnalysesResponse(
        response as api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsAssessmentsResource', () {
    unittest.test('method--appeal', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1AppealAssessmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1AppealAssessmentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1AppealAssessmentRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Assessment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.appeal(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Assessment(
        response as api.GoogleCloudContactcenterinsightsV1Assessment,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Assessment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Assessment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Assessment(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Assessment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Assessment(
        response as api.GoogleCloudContactcenterinsightsV1Assessment,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--finalize', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Assessment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.finalize(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Assessment(
        response as api.GoogleCloudContactcenterinsightsV1Assessment,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Assessment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Assessment(
        response as api.GoogleCloudContactcenterinsightsV1Assessment,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAssessmentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListAssessmentsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListAssessmentsResponse,
      );
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1PublishAssessmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1PublishAssessmentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1PublishAssessmentRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Assessment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.publish(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Assessment(
        response as api.GoogleCloudContactcenterinsightsV1Assessment,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsAssessmentsNotesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments.notes;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Note();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Note.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Note(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Note(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Note(
        response as api.GoogleCloudContactcenterinsightsV1Note,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments.notes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments.notes;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListNotesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListNotesResponse(
        response as api.GoogleCloudContactcenterinsightsV1ListNotesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.assessments.notes;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Note();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Note.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Note(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Note(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Note(
        response as api.GoogleCloudContactcenterinsightsV1Note,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsFeedbackLabelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.feedbackLabels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1FeedbackLabel();
      final arg_parent = 'foo';
      final arg_feedbackLabelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1FeedbackLabel(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['feedbackLabelId']!.first,
            unittest.equals(arg_feedbackLabelId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        feedbackLabelId: arg_feedbackLabelId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
        response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.feedbackLabels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.feedbackLabels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
        response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.feedbackLabels;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.feedbackLabels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1FeedbackLabel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1FeedbackLabel(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
        response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsSegmentsResource', () {
    unittest.test('method--bulkAnalyze', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.conversations.segments;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkAnalyze(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDashboardsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.dashboards;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Dashboard();
      final arg_parent = 'foo';
      final arg_dashboardId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Dashboard.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Dashboard(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['dashboardId']!.first,
            unittest.equals(arg_dashboardId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Dashboard(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        dashboardId: arg_dashboardId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Dashboard(
        response as api.GoogleCloudContactcenterinsightsV1Dashboard,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.dashboards;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.dashboards;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Dashboard(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Dashboard(
        response as api.GoogleCloudContactcenterinsightsV1Dashboard,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.dashboards;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListDashboardsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListDashboardsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListDashboardsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.dashboards;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Dashboard();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Dashboard.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Dashboard(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Dashboard(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Dashboard(
        response as api.GoogleCloudContactcenterinsightsV1Dashboard,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDashboardsChartsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.dashboards.charts;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Chart();
      final arg_parent = 'foo';
      final arg_chartId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Chart.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Chart(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['chartId']!.first,
            unittest.equals(arg_chartId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Chart(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        chartId: arg_chartId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Chart(
        response as api.GoogleCloudContactcenterinsightsV1Chart,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.dashboards.charts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.dashboards.charts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Chart(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Chart(
        response as api.GoogleCloudContactcenterinsightsV1Chart,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.dashboards.charts;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListChartsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListChartsResponse(
        response as api.GoogleCloudContactcenterinsightsV1ListChartsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.dashboards.charts;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Chart();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Chart.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Chart(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Chart(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Chart(
        response as api.GoogleCloudContactcenterinsightsV1Chart,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsResource', () {
    unittest.test('method--bulkDeleteFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkDeleteFeedbackLabels(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--bulkDownloadFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkDownloadFeedbackLabels(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--bulkUploadFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkUploadFeedbackLabels(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Dataset();
      final arg_parent = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Dataset.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Dataset(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['datasetId']!.first,
            unittest.equals(arg_datasetId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Dataset(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        datasetId: arg_datasetId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Dataset(
        response as api.GoogleCloudContactcenterinsightsV1Dataset,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Dataset(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Dataset(
        response as api.GoogleCloudContactcenterinsightsV1Dataset,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListDatasetsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListDatasetsResponse(
        response as api.GoogleCloudContactcenterinsightsV1ListDatasetsResponse,
      );
    });

    unittest.test('method--listAllFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listAllFeedbackLabels(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Dataset();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Dataset.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Dataset(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Dataset(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Dataset(
        response as api.GoogleCloudContactcenterinsightsV1Dataset,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsConversationsResource', () {
    unittest.test('method--bulkDelete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkDelete(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--calculateStats', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1CalculateStatsRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1CalculateStatsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1CalculateStatsRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1CalculateStatsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculateStats(
        arg_request,
        arg_location,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1CalculateStatsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--generateSignedAudio', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateSignedAudio(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations;
      final arg_name = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Conversation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Conversation(
        response as api.GoogleCloudContactcenterinsightsV1Conversation,
      );
    });

    unittest.test('method--ingest', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1IngestConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1IngestConversationsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ingest(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListConversationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListConversationsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListConversationsResponse,
      );
    });

    unittest.test('method--sample', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1SampleConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1SampleConversationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1SampleConversationsRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.sample(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsConversationsFeedbackLabelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations.feedbackLabels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1FeedbackLabel();
      final arg_parent = 'foo';
      final arg_feedbackLabelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1FeedbackLabel(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['feedbackLabelId']!.first,
            unittest.equals(arg_feedbackLabelId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        feedbackLabelId: arg_feedbackLabelId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
        response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations.feedbackLabels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations.feedbackLabels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
        response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations.feedbackLabels;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.conversations.feedbackLabels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1FeedbackLabel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1FeedbackLabel(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
        response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsInsightsdataResource', () {
    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.datasets.insightsdata;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDiagnosticsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.diagnostics;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.diagnostics;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Diagnostic(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Diagnostic(
        response as api.GoogleCloudContactcenterinsightsV1Diagnostic,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.diagnostics;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListDiagnosticsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListDiagnosticsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsEncryptionSpecResource', () {
    unittest.test('method--initialize', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.encryptionSpec;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.initialize(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsInsightsdataResource', () {
    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.insightsdata;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsIssueModelsResource', () {
    unittest.test('method--calculateIssueModelStats', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels;
      final arg_issueModel = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculateIssueModelStats(
        arg_issueModel,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels;
      final arg_request = buildGoogleCloudContactcenterinsightsV1IssueModel();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1IssueModel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1IssueModel(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--deploy', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1DeployIssueModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1DeployIssueModelRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1DeployIssueModelRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.deploy(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1IssueModel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1IssueModel(
        response as api.GoogleCloudContactcenterinsightsV1IssueModel,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.import(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListIssueModelsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListIssueModelsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels;
      final arg_request = buildGoogleCloudContactcenterinsightsV1IssueModel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1IssueModel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1IssueModel(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1IssueModel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1IssueModel(
        response as api.GoogleCloudContactcenterinsightsV1IssueModel,
      );
    });

    unittest.test('method--undeploy', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.undeploy(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsIssueModelsIssuesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels.issues;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Issue();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Issue.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Issue(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels.issues;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels.issues;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Issue(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Issue(
        response as api.GoogleCloudContactcenterinsightsV1Issue,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels.issues;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListIssuesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListIssuesResponse(
        response as api.GoogleCloudContactcenterinsightsV1ListIssuesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.issueModels.issues;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Issue();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1Issue.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1Issue(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1Issue(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1Issue(
        response as api.GoogleCloudContactcenterinsightsV1Issue,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsPhraseMatchersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.phraseMatchers;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1PhraseMatcher();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1PhraseMatcher(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1PhraseMatcher(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1PhraseMatcher(
        response as api.GoogleCloudContactcenterinsightsV1PhraseMatcher,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.phraseMatchers;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.phraseMatchers;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1PhraseMatcher(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1PhraseMatcher(
        response as api.GoogleCloudContactcenterinsightsV1PhraseMatcher,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.phraseMatchers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.phraseMatchers;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1PhraseMatcher();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1PhraseMatcher(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1PhraseMatcher(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1PhraseMatcher(
        response as api.GoogleCloudContactcenterinsightsV1PhraseMatcher,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsQaQuestionTagsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaQuestionTags;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1QaQuestionTag();
      final arg_parent = 'foo';
      final arg_qaQuestionTagId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1QaQuestionTag.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1QaQuestionTag(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['qaQuestionTagId']!.first,
            unittest.equals(arg_qaQuestionTagId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaQuestionTag(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        qaQuestionTagId: arg_qaQuestionTagId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1QaQuestionTag(
        response as api.GoogleCloudContactcenterinsightsV1QaQuestionTag,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaQuestionTags;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaQuestionTags;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaQuestionTag(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaQuestionTag(
        response as api.GoogleCloudContactcenterinsightsV1QaQuestionTag,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaQuestionTags;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaQuestionTags;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1QaQuestionTag();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1QaQuestionTag.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1QaQuestionTag(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsQaScorecardsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards;
      final arg_request = buildGoogleCloudContactcenterinsightsV1QaScorecard();
      final arg_parent = 'foo';
      final arg_qaScorecardId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1QaScorecard(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['qaScorecardId']!.first,
            unittest.equals(arg_qaScorecardId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecard(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        qaScorecardId: arg_qaScorecardId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1QaScorecard(
        response as api.GoogleCloudContactcenterinsightsV1QaScorecard,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecard(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaScorecard(
        response as api.GoogleCloudContactcenterinsightsV1QaScorecard,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_qaScorecardSources = buildUnnamed119();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['qaScorecardSources']!,
            unittest.equals(arg_qaScorecardSources),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        qaScorecardSources: arg_qaScorecardSources,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards;
      final arg_request = buildGoogleCloudContactcenterinsightsV1QaScorecard();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1QaScorecard(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecard(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1QaScorecard(
        response as api.GoogleCloudContactcenterinsightsV1QaScorecard,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsQaScorecardsRevisionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards.revisions;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1QaScorecardRevision();
      final arg_parent = 'foo';
      final arg_qaScorecardRevisionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1QaScorecardRevision.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['qaScorecardRevisionId']!.first,
            unittest.equals(arg_qaScorecardRevisionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecardRevision(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        qaScorecardRevisionId: arg_qaScorecardRevisionId,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(
        response as api.GoogleCloudContactcenterinsightsV1QaScorecardRevision,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards.revisions;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--deploy', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards.revisions;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecardRevision(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.deploy(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(
        response as api.GoogleCloudContactcenterinsightsV1QaScorecardRevision,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards.revisions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecardRevision(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(
        response as api.GoogleCloudContactcenterinsightsV1QaScorecardRevision,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards.revisions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_qaScorecardSources = buildUnnamed120();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['qaScorecardSources']!,
            unittest.equals(arg_qaScorecardSources),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        qaScorecardSources: arg_qaScorecardSources,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse(
        response
            as api.GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse,
      );
    });

    unittest.test('method--tuneQaScorecardRevision', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards.revisions;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.tuneQaScorecardRevision(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--undeploy', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(
        mock,
      ).projects.locations.qaScorecards.revisions;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecardRevision(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.undeploy(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(
        response as api.GoogleCloudContactcenterinsightsV1QaScorecardRevision,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsQaScorecardsRevisionsQaQuestionsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.qaScorecards.revisions.qaQuestions;
        final arg_request = buildGoogleCloudContactcenterinsightsV1QaQuestion();
        final arg_parent = 'foo';
        final arg_qaQuestionId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj =
                api.GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(
                  json as core.Map<core.String, core.dynamic>,
                );
            checkGoogleCloudContactcenterinsightsV1QaQuestion(obj);

            final path = req.url.path;
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

            final query = req.url.query;
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
              queryMap['qaQuestionId']!.first,
              unittest.equals(arg_qaQuestionId),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1QaQuestion(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          qaQuestionId: arg_qaQuestionId,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1QaQuestion(
          response as api.GoogleCloudContactcenterinsightsV1QaQuestion,
        );
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.qaScorecards.revisions.qaQuestions;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildGoogleProtobufEmpty());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(arg_name, $fields: arg_$fields);
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.qaScorecards.revisions.qaQuestions;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1QaQuestion(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudContactcenterinsightsV1QaQuestion(
          response as api.GoogleCloudContactcenterinsightsV1QaQuestion,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.qaScorecards.revisions.qaQuestions;
        final arg_parent = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse(
          response
              as api.GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res = api.ContactcenterinsightsApi(
          mock,
        ).projects.locations.qaScorecards.revisions.qaQuestions;
        final arg_request = buildGoogleCloudContactcenterinsightsV1QaQuestion();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj =
                api.GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(
                  json as core.Map<core.String, core.dynamic>,
                );
            checkGoogleCloudContactcenterinsightsV1QaQuestion(obj);

            final path = req.url.path;
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

            final query = req.url.query;
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
              queryMap['updateMask']!.first,
              unittest.equals(arg_updateMask),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudContactcenterinsightsV1QaQuestion(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.patch(
          arg_request,
          arg_name,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkGoogleCloudContactcenterinsightsV1QaQuestion(
          response as api.GoogleCloudContactcenterinsightsV1QaQuestion,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsViewsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
      final arg_request = buildGoogleCloudContactcenterinsightsV1View();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1View.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1View(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1View(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1View(
        response as api.GoogleCloudContactcenterinsightsV1View,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1View(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1View(
        response as api.GoogleCloudContactcenterinsightsV1View,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListViewsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1ListViewsResponse(
        response as api.GoogleCloudContactcenterinsightsV1ListViewsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
      final arg_request = buildGoogleCloudContactcenterinsightsV1View();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudContactcenterinsightsV1View.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudContactcenterinsightsV1View(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1View(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudContactcenterinsightsV1View(
        response as api.GoogleCloudContactcenterinsightsV1View,
      );
    });
  });
}
