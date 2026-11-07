// Copyright 2026 Google LLC
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

import 'package:googleapis/integrations/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.List<core.Map<core.String, core.Object?>> buildUnnamed1() => [
  buildUnnamed0(),
  buildUnnamed0(),
];

void checkUnnamed1(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed0(o[0]);
  checkUnnamed0(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
api.GoogleApiHttpBody buildGoogleApiHttpBody() {
  final o = api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed1();
  }
  buildCounterGoogleApiHttpBody--;
  return o;
}

void checkGoogleApiHttpBody(api.GoogleApiHttpBody o) {
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    unittest.expect(o.contentType!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed1(o.extensions!);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int buildCounterGoogleCloudIntegrationsV2AttemptStats = 0;
api.GoogleCloudIntegrationsV2AttemptStats
buildGoogleCloudIntegrationsV2AttemptStats() {
  final o = api.GoogleCloudIntegrationsV2AttemptStats();
  buildCounterGoogleCloudIntegrationsV2AttemptStats++;
  if (buildCounterGoogleCloudIntegrationsV2AttemptStats < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2AttemptStats--;
  return o;
}

void checkGoogleCloudIntegrationsV2AttemptStats(
  api.GoogleCloudIntegrationsV2AttemptStats o,
) {
  buildCounterGoogleCloudIntegrationsV2AttemptStats++;
  if (buildCounterGoogleCloudIntegrationsV2AttemptStats < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2AttemptStats--;
}

core.int buildCounterGoogleCloudIntegrationsV2CloudLoggingDetails = 0;
api.GoogleCloudIntegrationsV2CloudLoggingDetails
buildGoogleCloudIntegrationsV2CloudLoggingDetails() {
  final o = api.GoogleCloudIntegrationsV2CloudLoggingDetails();
  buildCounterGoogleCloudIntegrationsV2CloudLoggingDetails++;
  if (buildCounterGoogleCloudIntegrationsV2CloudLoggingDetails < 3) {
    o.cloudLoggingSeverity = 'foo';
    o.enableCloudLogging = true;
  }
  buildCounterGoogleCloudIntegrationsV2CloudLoggingDetails--;
  return o;
}

void checkGoogleCloudIntegrationsV2CloudLoggingDetails(
  api.GoogleCloudIntegrationsV2CloudLoggingDetails o,
) {
  buildCounterGoogleCloudIntegrationsV2CloudLoggingDetails++;
  if (buildCounterGoogleCloudIntegrationsV2CloudLoggingDetails < 3) {
    unittest.expect(o.cloudLoggingSeverity!, unittest.equals('foo'));
    unittest.expect(o.enableCloudLogging!, unittest.isTrue);
  }
  buildCounterGoogleCloudIntegrationsV2CloudLoggingDetails--;
}

core.List<core.bool> buildUnnamed2() => [true, true];

void checkUnnamed2(core.List<core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.isTrue);
  unittest.expect(o[1], unittest.isTrue);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetBooleanParameterArray = 0;
api.GoogleCloudIntegrationsV2DuetBooleanParameterArray
buildGoogleCloudIntegrationsV2DuetBooleanParameterArray() {
  final o = api.GoogleCloudIntegrationsV2DuetBooleanParameterArray();
  buildCounterGoogleCloudIntegrationsV2DuetBooleanParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV2DuetBooleanParameterArray < 3) {
    o.booleanValues = buildUnnamed2();
  }
  buildCounterGoogleCloudIntegrationsV2DuetBooleanParameterArray--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetBooleanParameterArray(
  api.GoogleCloudIntegrationsV2DuetBooleanParameterArray o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetBooleanParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV2DuetBooleanParameterArray < 3) {
    checkUnnamed2(o.booleanValues!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetBooleanParameterArray--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetCloudSchedulerConfig = 0;
api.GoogleCloudIntegrationsV2DuetCloudSchedulerConfig
buildGoogleCloudIntegrationsV2DuetCloudSchedulerConfig() {
  final o = api.GoogleCloudIntegrationsV2DuetCloudSchedulerConfig();
  buildCounterGoogleCloudIntegrationsV2DuetCloudSchedulerConfig++;
  if (buildCounterGoogleCloudIntegrationsV2DuetCloudSchedulerConfig < 3) {
    o.cronTab = 'foo';
    o.errorMessage = 'foo';
    o.location = 'foo';
    o.serviceAccountEmail = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetCloudSchedulerConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetCloudSchedulerConfig(
  api.GoogleCloudIntegrationsV2DuetCloudSchedulerConfig o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetCloudSchedulerConfig++;
  if (buildCounterGoogleCloudIntegrationsV2DuetCloudSchedulerConfig < 3) {
    unittest.expect(o.cronTab!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.serviceAccountEmail!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetCloudSchedulerConfig--;
}

core.List<core.double> buildUnnamed3() => [42.0, 42.0];

void checkUnnamed3(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudIntegrationsV2DuetDoubleParameterArray = 0;
api.GoogleCloudIntegrationsV2DuetDoubleParameterArray
buildGoogleCloudIntegrationsV2DuetDoubleParameterArray() {
  final o = api.GoogleCloudIntegrationsV2DuetDoubleParameterArray();
  buildCounterGoogleCloudIntegrationsV2DuetDoubleParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV2DuetDoubleParameterArray < 3) {
    o.doubleValues = buildUnnamed3();
  }
  buildCounterGoogleCloudIntegrationsV2DuetDoubleParameterArray--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetDoubleParameterArray(
  api.GoogleCloudIntegrationsV2DuetDoubleParameterArray o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetDoubleParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV2DuetDoubleParameterArray < 3) {
    checkUnnamed3(o.doubleValues!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetDoubleParameterArray--;
}

core.List<api.GoogleCloudIntegrationsV2DuetNextTask> buildUnnamed4() => [
  buildGoogleCloudIntegrationsV2DuetNextTask(),
  buildGoogleCloudIntegrationsV2DuetNextTask(),
];

void checkUnnamed4(core.List<api.GoogleCloudIntegrationsV2DuetNextTask> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetNextTask(o[0]);
  checkGoogleCloudIntegrationsV2DuetNextTask(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetErrorCatcherConfig = 0;
api.GoogleCloudIntegrationsV2DuetErrorCatcherConfig
buildGoogleCloudIntegrationsV2DuetErrorCatcherConfig() {
  final o = api.GoogleCloudIntegrationsV2DuetErrorCatcherConfig();
  buildCounterGoogleCloudIntegrationsV2DuetErrorCatcherConfig++;
  if (buildCounterGoogleCloudIntegrationsV2DuetErrorCatcherConfig < 3) {
    o.description = 'foo';
    o.errorCatcherId = 'foo';
    o.errorCatcherNumber = 'foo';
    o.label = 'foo';
    o.startErrorTasks = buildUnnamed4();
  }
  buildCounterGoogleCloudIntegrationsV2DuetErrorCatcherConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetErrorCatcherConfig(
  api.GoogleCloudIntegrationsV2DuetErrorCatcherConfig o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetErrorCatcherConfig++;
  if (buildCounterGoogleCloudIntegrationsV2DuetErrorCatcherConfig < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.errorCatcherId!, unittest.equals('foo'));
    unittest.expect(o.errorCatcherNumber!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    checkUnnamed4(o.startErrorTasks!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetErrorCatcherConfig--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetEventParameter = 0;
api.GoogleCloudIntegrationsV2DuetEventParameter
buildGoogleCloudIntegrationsV2DuetEventParameter() {
  final o = api.GoogleCloudIntegrationsV2DuetEventParameter();
  buildCounterGoogleCloudIntegrationsV2DuetEventParameter++;
  if (buildCounterGoogleCloudIntegrationsV2DuetEventParameter < 3) {
    o.key = 'foo';
    o.value = buildGoogleCloudIntegrationsV2DuetValueType();
  }
  buildCounterGoogleCloudIntegrationsV2DuetEventParameter--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetEventParameter(
  api.GoogleCloudIntegrationsV2DuetEventParameter o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetEventParameter++;
  if (buildCounterGoogleCloudIntegrationsV2DuetEventParameter < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    checkGoogleCloudIntegrationsV2DuetValueType(o.value!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetEventParameter--;
}

core.int
buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest = 0;
api.GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest
buildGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest() {
  final o = api.GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest();
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest <
      3) {
    o.integrationBranchRequest =
        buildGoogleCloudIntegrationsV2DuetIntegrationBranchRequest();
    o.prompt = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest(
  api.GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest <
      3) {
    checkGoogleCloudIntegrationsV2DuetIntegrationBranchRequest(
      o.integrationBranchRequest!,
    );
    unittest.expect(o.prompt!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest--;
}

core.int
buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse = 0;
api.GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse
buildGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse() {
  final o =
      api.GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse();
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse <
      3) {
    o.integrationBranch = buildGoogleCloudIntegrationsV2DuetIntegrationBranch();
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse(
  api.GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse <
      3) {
    checkGoogleCloudIntegrationsV2DuetIntegrationBranch(o.integrationBranch!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse--;
}

core.int
buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest = 0;
api.GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest
buildGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest() {
  final o =
      api.GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest();
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest <
      3) {
    o.integrationDocumentRequest =
        buildGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest();
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest(
  api.GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest <
      3) {
    checkGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest(
      o.integrationDocumentRequest!,
    );
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest--;
}

core.int
buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse =
    0;
api.GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse
buildGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse() {
  final o =
      api.GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse();
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse <
      3) {
    o.document = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse(
  api.GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse <
      3) {
    unittest.expect(o.document!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest =
    0;
api.GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest
buildGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest() {
  final o = api.GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest();
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest < 3) {
    o.copilotEnabled = true;
    o.prompt = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest(
  api.GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest < 3) {
    unittest.expect(o.copilotEnabled!, unittest.isTrue);
    unittest.expect(o.prompt!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest--;
}

core.List<api.GoogleCloudIntegrationsV2DuetIntegrationSkeleton>
buildUnnamed5() => [
  buildGoogleCloudIntegrationsV2DuetIntegrationSkeleton(),
  buildGoogleCloudIntegrationsV2DuetIntegrationSkeleton(),
];

void checkUnnamed5(
  core.List<api.GoogleCloudIntegrationsV2DuetIntegrationSkeleton> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetIntegrationSkeleton(o[0]);
  checkGoogleCloudIntegrationsV2DuetIntegrationSkeleton(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse =
    0;
api.GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse
buildGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse() {
  final o = api.GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse();
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse <
      3) {
    o.skeletonIntegrations = buildUnnamed5();
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse(
  api.GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse <
      3) {
    checkUnnamed5(o.skeletonIntegrations!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest = 0;
api.GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest
buildGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest() {
  final o = api.GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest();
  buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest < 3) {
    o.javascriptRequest = buildGoogleCloudIntegrationsV2DuetJavascriptRequest();
    o.prompt = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest(
  api.GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest < 3) {
    checkGoogleCloudIntegrationsV2DuetJavascriptRequest(o.javascriptRequest!);
    unittest.expect(o.prompt!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest--;
}

core.List<api.GoogleCloudIntegrationsV2DuetJavascriptRecommendation>
buildUnnamed6() => [
  buildGoogleCloudIntegrationsV2DuetJavascriptRecommendation(),
  buildGoogleCloudIntegrationsV2DuetJavascriptRecommendation(),
];

void checkUnnamed6(
  core.List<api.GoogleCloudIntegrationsV2DuetJavascriptRecommendation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetJavascriptRecommendation(o[0]);
  checkGoogleCloudIntegrationsV2DuetJavascriptRecommendation(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse =
    0;
api.GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse
buildGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse() {
  final o = api.GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse();
  buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse < 3) {
    o.recommendations = buildUnnamed6();
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse(
  api.GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse < 3) {
    checkUnnamed6(o.recommendations!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIntegrationsV2DuetIntParameterArray = 0;
api.GoogleCloudIntegrationsV2DuetIntParameterArray
buildGoogleCloudIntegrationsV2DuetIntParameterArray() {
  final o = api.GoogleCloudIntegrationsV2DuetIntParameterArray();
  buildCounterGoogleCloudIntegrationsV2DuetIntParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntParameterArray < 3) {
    o.intValues = buildUnnamed7();
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntParameterArray--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetIntParameterArray(
  api.GoogleCloudIntegrationsV2DuetIntParameterArray o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetIntParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntParameterArray < 3) {
    checkUnnamed7(o.intValues!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntParameterArray--;
}

core.List<api.GoogleCloudIntegrationsV2DuetIntegrationParameter>
buildUnnamed8() => [
  buildGoogleCloudIntegrationsV2DuetIntegrationParameter(),
  buildGoogleCloudIntegrationsV2DuetIntegrationParameter(),
];

void checkUnnamed8(
  core.List<api.GoogleCloudIntegrationsV2DuetIntegrationParameter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetIntegrationParameter(o[0]);
  checkGoogleCloudIntegrationsV2DuetIntegrationParameter(o[1]);
}

core.List<api.GoogleCloudIntegrationsV2DuetTaskConfig> buildUnnamed9() => [
  buildGoogleCloudIntegrationsV2DuetTaskConfig(),
  buildGoogleCloudIntegrationsV2DuetTaskConfig(),
];

void checkUnnamed9(core.List<api.GoogleCloudIntegrationsV2DuetTaskConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetTaskConfig(o[0]);
  checkGoogleCloudIntegrationsV2DuetTaskConfig(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranch = 0;
api.GoogleCloudIntegrationsV2DuetIntegrationBranch
buildGoogleCloudIntegrationsV2DuetIntegrationBranch() {
  final o = api.GoogleCloudIntegrationsV2DuetIntegrationBranch();
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranch++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranch < 3) {
    o.branchCondition = 'foo';
    o.explanation = 'foo';
    o.integrationParameters = buildUnnamed8();
    o.taskConfigs = buildUnnamed9();
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranch--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetIntegrationBranch(
  api.GoogleCloudIntegrationsV2DuetIntegrationBranch o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranch++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranch < 3) {
    unittest.expect(o.branchCondition!, unittest.equals('foo'));
    unittest.expect(o.explanation!, unittest.equals('foo'));
    checkUnnamed8(o.integrationParameters!);
    checkUnnamed9(o.taskConfigs!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranch--;
}

core.List<api.GoogleCloudIntegrationsV2DuetIntegrationParameter>
buildUnnamed10() => [
  buildGoogleCloudIntegrationsV2DuetIntegrationParameter(),
  buildGoogleCloudIntegrationsV2DuetIntegrationParameter(),
];

void checkUnnamed10(
  core.List<api.GoogleCloudIntegrationsV2DuetIntegrationParameter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetIntegrationParameter(o[0]);
  checkGoogleCloudIntegrationsV2DuetIntegrationParameter(o[1]);
}

core.List<api.GoogleCloudIntegrationsV2DuetTaskConfig> buildUnnamed11() => [
  buildGoogleCloudIntegrationsV2DuetTaskConfig(),
  buildGoogleCloudIntegrationsV2DuetTaskConfig(),
];

void checkUnnamed11(core.List<api.GoogleCloudIntegrationsV2DuetTaskConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetTaskConfig(o[0]);
  checkGoogleCloudIntegrationsV2DuetTaskConfig(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranchRequest = 0;
api.GoogleCloudIntegrationsV2DuetIntegrationBranchRequest
buildGoogleCloudIntegrationsV2DuetIntegrationBranchRequest() {
  final o = api.GoogleCloudIntegrationsV2DuetIntegrationBranchRequest();
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranchRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranchRequest < 3) {
    o.branchCondition = 'foo';
    o.integrationParameters = buildUnnamed10();
    o.taskConfigs = buildUnnamed11();
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranchRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetIntegrationBranchRequest(
  api.GoogleCloudIntegrationsV2DuetIntegrationBranchRequest o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranchRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranchRequest < 3) {
    unittest.expect(o.branchCondition!, unittest.equals('foo'));
    checkUnnamed10(o.integrationParameters!);
    checkUnnamed11(o.taskConfigs!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationBranchRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetIntegrationConfigParameter =
    0;
api.GoogleCloudIntegrationsV2DuetIntegrationConfigParameter
buildGoogleCloudIntegrationsV2DuetIntegrationConfigParameter() {
  final o = api.GoogleCloudIntegrationsV2DuetIntegrationConfigParameter();
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationConfigParameter++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationConfigParameter < 3) {
    o.parameter = buildGoogleCloudIntegrationsV2DuetIntegrationParameter();
    o.value = buildGoogleCloudIntegrationsV2DuetValueType();
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationConfigParameter--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetIntegrationConfigParameter(
  api.GoogleCloudIntegrationsV2DuetIntegrationConfigParameter o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationConfigParameter++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationConfigParameter < 3) {
    checkGoogleCloudIntegrationsV2DuetIntegrationParameter(o.parameter!);
    checkGoogleCloudIntegrationsV2DuetValueType(o.value!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationConfigParameter--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest =
    0;
api.GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest
buildGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest() {
  final o = api.GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest();
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest < 3) {
    o.integrationVersion =
        buildGoogleCloudIntegrationsV2DuetIntegrationVersion();
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest(
  api.GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest < 3) {
    checkGoogleCloudIntegrationsV2DuetIntegrationVersion(o.integrationVersion!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetIntegrationParameter = 0;
api.GoogleCloudIntegrationsV2DuetIntegrationParameter
buildGoogleCloudIntegrationsV2DuetIntegrationParameter() {
  final o = api.GoogleCloudIntegrationsV2DuetIntegrationParameter();
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationParameter++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationParameter < 3) {
    o.dataType = 'foo';
    o.defaultValue = buildGoogleCloudIntegrationsV2DuetValueType();
    o.description = 'foo';
    o.displayName = 'foo';
    o.inputOutputType = 'foo';
    o.isTransient = true;
    o.jsonSchema = 'foo';
    o.key = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationParameter--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetIntegrationParameter(
  api.GoogleCloudIntegrationsV2DuetIntegrationParameter o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationParameter++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationParameter < 3) {
    unittest.expect(o.dataType!, unittest.equals('foo'));
    checkGoogleCloudIntegrationsV2DuetValueType(o.defaultValue!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.inputOutputType!, unittest.equals('foo'));
    unittest.expect(o.isTransient!, unittest.isTrue);
    unittest.expect(o.jsonSchema!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationParameter--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetIntegrationSkeleton = 0;
api.GoogleCloudIntegrationsV2DuetIntegrationSkeleton
buildGoogleCloudIntegrationsV2DuetIntegrationSkeleton() {
  final o = api.GoogleCloudIntegrationsV2DuetIntegrationSkeleton();
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationSkeleton++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationSkeleton < 3) {
    o.explanation = 'foo';
    o.integrationVersion =
        buildGoogleCloudIntegrationsV2DuetIntegrationVersion();
    o.name = 'foo';
    o.tag = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationSkeleton--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetIntegrationSkeleton(
  api.GoogleCloudIntegrationsV2DuetIntegrationSkeleton o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationSkeleton++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationSkeleton < 3) {
    unittest.expect(o.explanation!, unittest.equals('foo'));
    checkGoogleCloudIntegrationsV2DuetIntegrationVersion(o.integrationVersion!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.tag!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationSkeleton--;
}

core.List<api.GoogleCloudIntegrationsV2DuetErrorCatcherConfig>
buildUnnamed12() => [
  buildGoogleCloudIntegrationsV2DuetErrorCatcherConfig(),
  buildGoogleCloudIntegrationsV2DuetErrorCatcherConfig(),
];

void checkUnnamed12(
  core.List<api.GoogleCloudIntegrationsV2DuetErrorCatcherConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetErrorCatcherConfig(o[0]);
  checkGoogleCloudIntegrationsV2DuetErrorCatcherConfig(o[1]);
}

core.List<api.GoogleCloudIntegrationsV2DuetIntegrationConfigParameter>
buildUnnamed13() => [
  buildGoogleCloudIntegrationsV2DuetIntegrationConfigParameter(),
  buildGoogleCloudIntegrationsV2DuetIntegrationConfigParameter(),
];

void checkUnnamed13(
  core.List<api.GoogleCloudIntegrationsV2DuetIntegrationConfigParameter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetIntegrationConfigParameter(o[0]);
  checkGoogleCloudIntegrationsV2DuetIntegrationConfigParameter(o[1]);
}

core.List<api.GoogleCloudIntegrationsV2DuetIntegrationParameter>
buildUnnamed14() => [
  buildGoogleCloudIntegrationsV2DuetIntegrationParameter(),
  buildGoogleCloudIntegrationsV2DuetIntegrationParameter(),
];

void checkUnnamed14(
  core.List<api.GoogleCloudIntegrationsV2DuetIntegrationParameter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetIntegrationParameter(o[0]);
  checkGoogleCloudIntegrationsV2DuetIntegrationParameter(o[1]);
}

core.List<api.GoogleCloudIntegrationsV2DuetTaskConfig> buildUnnamed15() => [
  buildGoogleCloudIntegrationsV2DuetTaskConfig(),
  buildGoogleCloudIntegrationsV2DuetTaskConfig(),
];

void checkUnnamed15(core.List<api.GoogleCloudIntegrationsV2DuetTaskConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetTaskConfig(o[0]);
  checkGoogleCloudIntegrationsV2DuetTaskConfig(o[1]);
}

core.List<api.GoogleCloudIntegrationsV2DuetTriggerConfig> buildUnnamed16() => [
  buildGoogleCloudIntegrationsV2DuetTriggerConfig(),
  buildGoogleCloudIntegrationsV2DuetTriggerConfig(),
];

void checkUnnamed16(
  core.List<api.GoogleCloudIntegrationsV2DuetTriggerConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetTriggerConfig(o[0]);
  checkGoogleCloudIntegrationsV2DuetTriggerConfig(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetIntegrationVersion = 0;
api.GoogleCloudIntegrationsV2DuetIntegrationVersion
buildGoogleCloudIntegrationsV2DuetIntegrationVersion() {
  final o = api.GoogleCloudIntegrationsV2DuetIntegrationVersion();
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationVersion++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationVersion < 3) {
    o.description = 'foo';
    o.errorCatcherConfigs = buildUnnamed12();
    o.integrationConfigParameters = buildUnnamed13();
    o.integrationParameters = buildUnnamed14();
    o.name = 'foo';
    o.snapshotNumber = 'foo';
    o.state = 'foo';
    o.taskConfigs = buildUnnamed15();
    o.triggerConfigs = buildUnnamed16();
    o.userLabel = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationVersion--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetIntegrationVersion(
  api.GoogleCloudIntegrationsV2DuetIntegrationVersion o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationVersion++;
  if (buildCounterGoogleCloudIntegrationsV2DuetIntegrationVersion < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed12(o.errorCatcherConfigs!);
    checkUnnamed13(o.integrationConfigParameters!);
    checkUnnamed14(o.integrationParameters!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.snapshotNumber!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed15(o.taskConfigs!);
    checkUnnamed16(o.triggerConfigs!);
    unittest.expect(o.userLabel!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetIntegrationVersion--;
}

core.List<api.GoogleCloudIntegrationsV2DuetIntegrationParameter>
buildUnnamed17() => [
  buildGoogleCloudIntegrationsV2DuetIntegrationParameter(),
  buildGoogleCloudIntegrationsV2DuetIntegrationParameter(),
];

void checkUnnamed17(
  core.List<api.GoogleCloudIntegrationsV2DuetIntegrationParameter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetIntegrationParameter(o[0]);
  checkGoogleCloudIntegrationsV2DuetIntegrationParameter(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetJavascriptRecommendation = 0;
api.GoogleCloudIntegrationsV2DuetJavascriptRecommendation
buildGoogleCloudIntegrationsV2DuetJavascriptRecommendation() {
  final o = api.GoogleCloudIntegrationsV2DuetJavascriptRecommendation();
  buildCounterGoogleCloudIntegrationsV2DuetJavascriptRecommendation++;
  if (buildCounterGoogleCloudIntegrationsV2DuetJavascriptRecommendation < 3) {
    o.explanation = 'foo';
    o.integrationParameters = buildUnnamed17();
    o.taskConfig = buildGoogleCloudIntegrationsV2DuetTaskConfig();
  }
  buildCounterGoogleCloudIntegrationsV2DuetJavascriptRecommendation--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetJavascriptRecommendation(
  api.GoogleCloudIntegrationsV2DuetJavascriptRecommendation o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetJavascriptRecommendation++;
  if (buildCounterGoogleCloudIntegrationsV2DuetJavascriptRecommendation < 3) {
    unittest.expect(o.explanation!, unittest.equals('foo'));
    checkUnnamed17(o.integrationParameters!);
    checkGoogleCloudIntegrationsV2DuetTaskConfig(o.taskConfig!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetJavascriptRecommendation--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetJavascriptRequest = 0;
api.GoogleCloudIntegrationsV2DuetJavascriptRequest
buildGoogleCloudIntegrationsV2DuetJavascriptRequest() {
  final o = api.GoogleCloudIntegrationsV2DuetJavascriptRequest();
  buildCounterGoogleCloudIntegrationsV2DuetJavascriptRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetJavascriptRequest < 3) {
    o.copilotEnabled = true;
    o.integrationVersion =
        buildGoogleCloudIntegrationsV2DuetIntegrationVersion();
    o.taskId = 'foo';
    o.useCurrentScript = true;
  }
  buildCounterGoogleCloudIntegrationsV2DuetJavascriptRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetJavascriptRequest(
  api.GoogleCloudIntegrationsV2DuetJavascriptRequest o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetJavascriptRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetJavascriptRequest < 3) {
    unittest.expect(o.copilotEnabled!, unittest.isTrue);
    checkGoogleCloudIntegrationsV2DuetIntegrationVersion(o.integrationVersion!);
    unittest.expect(o.taskId!, unittest.equals('foo'));
    unittest.expect(o.useCurrentScript!, unittest.isTrue);
  }
  buildCounterGoogleCloudIntegrationsV2DuetJavascriptRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetNextTask = 0;
api.GoogleCloudIntegrationsV2DuetNextTask
buildGoogleCloudIntegrationsV2DuetNextTask() {
  final o = api.GoogleCloudIntegrationsV2DuetNextTask();
  buildCounterGoogleCloudIntegrationsV2DuetNextTask++;
  if (buildCounterGoogleCloudIntegrationsV2DuetNextTask < 3) {
    o.condition = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.taskConfigId = 'foo';
    o.taskId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetNextTask--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetNextTask(
  api.GoogleCloudIntegrationsV2DuetNextTask o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetNextTask++;
  if (buildCounterGoogleCloudIntegrationsV2DuetNextTask < 3) {
    unittest.expect(o.condition!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.taskConfigId!, unittest.equals('foo'));
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetNextTask--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksRequest = 0;
api.GoogleCloudIntegrationsV2DuetRecommendTasksRequest
buildGoogleCloudIntegrationsV2DuetRecommendTasksRequest() {
  final o = api.GoogleCloudIntegrationsV2DuetRecommendTasksRequest();
  buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksRequest < 3) {
    o.prompt = 'foo';
    o.replaceTaskRequest =
        buildGoogleCloudIntegrationsV2DuetReplaceTaskRequest();
  }
  buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetRecommendTasksRequest(
  api.GoogleCloudIntegrationsV2DuetRecommendTasksRequest o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksRequest < 3) {
    unittest.expect(o.prompt!, unittest.equals('foo'));
    checkGoogleCloudIntegrationsV2DuetReplaceTaskRequest(o.replaceTaskRequest!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksRequest--;
}

core.List<api.GoogleCloudIntegrationsV2DuetTaskConfig> buildUnnamed18() => [
  buildGoogleCloudIntegrationsV2DuetTaskConfig(),
  buildGoogleCloudIntegrationsV2DuetTaskConfig(),
];

void checkUnnamed18(core.List<api.GoogleCloudIntegrationsV2DuetTaskConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetTaskConfig(o[0]);
  checkGoogleCloudIntegrationsV2DuetTaskConfig(o[1]);
}

core.List<api.GoogleCloudIntegrationsV2DuetTaskResponseStatus>
buildUnnamed19() => [
  buildGoogleCloudIntegrationsV2DuetTaskResponseStatus(),
  buildGoogleCloudIntegrationsV2DuetTaskResponseStatus(),
];

void checkUnnamed19(
  core.List<api.GoogleCloudIntegrationsV2DuetTaskResponseStatus> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetTaskResponseStatus(o[0]);
  checkGoogleCloudIntegrationsV2DuetTaskResponseStatus(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksResponse = 0;
api.GoogleCloudIntegrationsV2DuetRecommendTasksResponse
buildGoogleCloudIntegrationsV2DuetRecommendTasksResponse() {
  final o = api.GoogleCloudIntegrationsV2DuetRecommendTasksResponse();
  buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksResponse < 3) {
    o.taskConfigs = buildUnnamed18();
    o.taskResponseStatuses = buildUnnamed19();
  }
  buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetRecommendTasksResponse(
  api.GoogleCloudIntegrationsV2DuetRecommendTasksResponse o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksResponse < 3) {
    checkUnnamed18(o.taskConfigs!);
    checkUnnamed19(o.taskResponseStatuses!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetRecommendTasksResponse--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIntegrationsV2DuetReplaceTaskRequest = 0;
api.GoogleCloudIntegrationsV2DuetReplaceTaskRequest
buildGoogleCloudIntegrationsV2DuetReplaceTaskRequest() {
  final o = api.GoogleCloudIntegrationsV2DuetReplaceTaskRequest();
  buildCounterGoogleCloudIntegrationsV2DuetReplaceTaskRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetReplaceTaskRequest < 3) {
    o.copilotEnabled = true;
    o.taskConfig = buildGoogleCloudIntegrationsV2DuetTaskConfig();
    o.taskTypes = buildUnnamed20();
  }
  buildCounterGoogleCloudIntegrationsV2DuetReplaceTaskRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetReplaceTaskRequest(
  api.GoogleCloudIntegrationsV2DuetReplaceTaskRequest o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetReplaceTaskRequest++;
  if (buildCounterGoogleCloudIntegrationsV2DuetReplaceTaskRequest < 3) {
    unittest.expect(o.copilotEnabled!, unittest.isTrue);
    checkGoogleCloudIntegrationsV2DuetTaskConfig(o.taskConfig!);
    checkUnnamed20(o.taskTypes!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetReplaceTaskRequest--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIntegrationsV2DuetStringParameterArray = 0;
api.GoogleCloudIntegrationsV2DuetStringParameterArray
buildGoogleCloudIntegrationsV2DuetStringParameterArray() {
  final o = api.GoogleCloudIntegrationsV2DuetStringParameterArray();
  buildCounterGoogleCloudIntegrationsV2DuetStringParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV2DuetStringParameterArray < 3) {
    o.stringValues = buildUnnamed21();
  }
  buildCounterGoogleCloudIntegrationsV2DuetStringParameterArray--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetStringParameterArray(
  api.GoogleCloudIntegrationsV2DuetStringParameterArray o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetStringParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV2DuetStringParameterArray < 3) {
    checkUnnamed21(o.stringValues!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetStringParameterArray--;
}

core.List<api.GoogleCloudIntegrationsV2DuetNextTask> buildUnnamed22() => [
  buildGoogleCloudIntegrationsV2DuetNextTask(),
  buildGoogleCloudIntegrationsV2DuetNextTask(),
];

void checkUnnamed22(core.List<api.GoogleCloudIntegrationsV2DuetNextTask> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetNextTask(o[0]);
  checkGoogleCloudIntegrationsV2DuetNextTask(o[1]);
}

core.Map<core.String, api.GoogleCloudIntegrationsV2DuetEventParameter>
buildUnnamed23() => {
  'x': buildGoogleCloudIntegrationsV2DuetEventParameter(),
  'y': buildGoogleCloudIntegrationsV2DuetEventParameter(),
};

void checkUnnamed23(
  core.Map<core.String, api.GoogleCloudIntegrationsV2DuetEventParameter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetEventParameter(o['x']!);
  checkGoogleCloudIntegrationsV2DuetEventParameter(o['y']!);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetTaskConfig = 0;
api.GoogleCloudIntegrationsV2DuetTaskConfig
buildGoogleCloudIntegrationsV2DuetTaskConfig() {
  final o = api.GoogleCloudIntegrationsV2DuetTaskConfig();
  buildCounterGoogleCloudIntegrationsV2DuetTaskConfig++;
  if (buildCounterGoogleCloudIntegrationsV2DuetTaskConfig < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.errorCatcherId = 'foo';
    o.externalTaskType = 'foo';
    o.nextTasks = buildUnnamed22();
    o.parameters = buildUnnamed23();
    o.task = 'foo';
    o.taskId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetTaskConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetTaskConfig(
  api.GoogleCloudIntegrationsV2DuetTaskConfig o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetTaskConfig++;
  if (buildCounterGoogleCloudIntegrationsV2DuetTaskConfig < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.errorCatcherId!, unittest.equals('foo'));
    unittest.expect(o.externalTaskType!, unittest.equals('foo'));
    checkUnnamed22(o.nextTasks!);
    checkUnnamed23(o.parameters!);
    unittest.expect(o.task!, unittest.equals('foo'));
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetTaskConfig--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetTaskResponseStatus = 0;
api.GoogleCloudIntegrationsV2DuetTaskResponseStatus
buildGoogleCloudIntegrationsV2DuetTaskResponseStatus() {
  final o = api.GoogleCloudIntegrationsV2DuetTaskResponseStatus();
  buildCounterGoogleCloudIntegrationsV2DuetTaskResponseStatus++;
  if (buildCounterGoogleCloudIntegrationsV2DuetTaskResponseStatus < 3) {
    o.errorMessage = 'foo';
    o.httpCode = 42;
    o.taskType = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetTaskResponseStatus--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetTaskResponseStatus(
  api.GoogleCloudIntegrationsV2DuetTaskResponseStatus o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetTaskResponseStatus++;
  if (buildCounterGoogleCloudIntegrationsV2DuetTaskResponseStatus < 3) {
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.httpCode!, unittest.equals(42));
    unittest.expect(o.taskType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetTaskResponseStatus--;
}

core.Map<core.String, core.String> buildUnnamed24() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed24(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudIntegrationsV2DuetNextTask> buildUnnamed25() => [
  buildGoogleCloudIntegrationsV2DuetNextTask(),
  buildGoogleCloudIntegrationsV2DuetNextTask(),
];

void checkUnnamed25(core.List<api.GoogleCloudIntegrationsV2DuetNextTask> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2DuetNextTask(o[0]);
  checkGoogleCloudIntegrationsV2DuetNextTask(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2DuetTriggerConfig = 0;
api.GoogleCloudIntegrationsV2DuetTriggerConfig
buildGoogleCloudIntegrationsV2DuetTriggerConfig() {
  final o = api.GoogleCloudIntegrationsV2DuetTriggerConfig();
  buildCounterGoogleCloudIntegrationsV2DuetTriggerConfig++;
  if (buildCounterGoogleCloudIntegrationsV2DuetTriggerConfig < 3) {
    o.cloudSchedulerConfig =
        buildGoogleCloudIntegrationsV2DuetCloudSchedulerConfig();
    o.description = 'foo';
    o.errorCatcherId = 'foo';
    o.inputVariables =
        buildGoogleCloudIntegrationsV2DuetTriggerConfigVariables();
    o.label = 'foo';
    o.outputVariables =
        buildGoogleCloudIntegrationsV2DuetTriggerConfigVariables();
    o.properties = buildUnnamed24();
    o.startTasks = buildUnnamed25();
    o.trigger = 'foo';
    o.triggerId = 'foo';
    o.triggerNumber = 'foo';
    o.triggerType = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetTriggerConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetTriggerConfig(
  api.GoogleCloudIntegrationsV2DuetTriggerConfig o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetTriggerConfig++;
  if (buildCounterGoogleCloudIntegrationsV2DuetTriggerConfig < 3) {
    checkGoogleCloudIntegrationsV2DuetCloudSchedulerConfig(
      o.cloudSchedulerConfig!,
    );
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.errorCatcherId!, unittest.equals('foo'));
    checkGoogleCloudIntegrationsV2DuetTriggerConfigVariables(o.inputVariables!);
    unittest.expect(o.label!, unittest.equals('foo'));
    checkGoogleCloudIntegrationsV2DuetTriggerConfigVariables(
      o.outputVariables!,
    );
    checkUnnamed24(o.properties!);
    checkUnnamed25(o.startTasks!);
    unittest.expect(o.trigger!, unittest.equals('foo'));
    unittest.expect(o.triggerId!, unittest.equals('foo'));
    unittest.expect(o.triggerNumber!, unittest.equals('foo'));
    unittest.expect(o.triggerType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetTriggerConfig--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIntegrationsV2DuetTriggerConfigVariables = 0;
api.GoogleCloudIntegrationsV2DuetTriggerConfigVariables
buildGoogleCloudIntegrationsV2DuetTriggerConfigVariables() {
  final o = api.GoogleCloudIntegrationsV2DuetTriggerConfigVariables();
  buildCounterGoogleCloudIntegrationsV2DuetTriggerConfigVariables++;
  if (buildCounterGoogleCloudIntegrationsV2DuetTriggerConfigVariables < 3) {
    o.names = buildUnnamed26();
  }
  buildCounterGoogleCloudIntegrationsV2DuetTriggerConfigVariables--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetTriggerConfigVariables(
  api.GoogleCloudIntegrationsV2DuetTriggerConfigVariables o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetTriggerConfigVariables++;
  if (buildCounterGoogleCloudIntegrationsV2DuetTriggerConfigVariables < 3) {
    checkUnnamed26(o.names!);
  }
  buildCounterGoogleCloudIntegrationsV2DuetTriggerConfigVariables--;
}

core.int
buildCounterGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse = 0;
api.GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse
buildGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse() {
  final o = api.GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse();
  buildCounterGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse <
      3) {
    o.detailedExplanation = 'foo';
    o.displayMessage = 'foo';
    o.errorMessage = 'foo';
    o.executionId = 'foo';
    o.rootCause = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse(
  api.GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse++;
  if (buildCounterGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse <
      3) {
    unittest.expect(o.detailedExplanation!, unittest.equals('foo'));
    unittest.expect(o.displayMessage!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.executionId!, unittest.equals('foo'));
    unittest.expect(o.rootCause!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV2DuetValueType = 0;
api.GoogleCloudIntegrationsV2DuetValueType
buildGoogleCloudIntegrationsV2DuetValueType() {
  final o = api.GoogleCloudIntegrationsV2DuetValueType();
  buildCounterGoogleCloudIntegrationsV2DuetValueType++;
  if (buildCounterGoogleCloudIntegrationsV2DuetValueType < 3) {
    o.booleanArray = buildGoogleCloudIntegrationsV2DuetBooleanParameterArray();
    o.booleanValue = true;
    o.doubleArray = buildGoogleCloudIntegrationsV2DuetDoubleParameterArray();
    o.doubleValue = 42.0;
    o.intArray = buildGoogleCloudIntegrationsV2DuetIntParameterArray();
    o.intValue = 'foo';
    o.jsonValue = 'foo';
    o.stringArray = buildGoogleCloudIntegrationsV2DuetStringParameterArray();
    o.stringValue = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2DuetValueType--;
  return o;
}

void checkGoogleCloudIntegrationsV2DuetValueType(
  api.GoogleCloudIntegrationsV2DuetValueType o,
) {
  buildCounterGoogleCloudIntegrationsV2DuetValueType++;
  if (buildCounterGoogleCloudIntegrationsV2DuetValueType < 3) {
    checkGoogleCloudIntegrationsV2DuetBooleanParameterArray(o.booleanArray!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleCloudIntegrationsV2DuetDoubleParameterArray(o.doubleArray!);
    unittest.expect(o.doubleValue!, unittest.equals(42.0));
    checkGoogleCloudIntegrationsV2DuetIntParameterArray(o.intArray!);
    unittest.expect(o.intValue!, unittest.equals('foo'));
    unittest.expect(o.jsonValue!, unittest.equals('foo'));
    checkGoogleCloudIntegrationsV2DuetStringParameterArray(o.stringArray!);
    unittest.expect(o.stringValue!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2DuetValueType--;
}

core.List<api.GoogleCloudIntegrationsV2AttemptStats> buildUnnamed27() => [
  buildGoogleCloudIntegrationsV2AttemptStats(),
  buildGoogleCloudIntegrationsV2AttemptStats(),
];

void checkUnnamed27(core.List<api.GoogleCloudIntegrationsV2AttemptStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2AttemptStats(o[0]);
  checkGoogleCloudIntegrationsV2AttemptStats(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed28() => {
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

void checkUnnamed28(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
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

core.List<api.GoogleCloudIntegrationsV2TaskExecution> buildUnnamed30() => [
  buildGoogleCloudIntegrationsV2TaskExecution(),
  buildGoogleCloudIntegrationsV2TaskExecution(),
];

void checkUnnamed30(core.List<api.GoogleCloudIntegrationsV2TaskExecution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2TaskExecution(o[0]);
  checkGoogleCloudIntegrationsV2TaskExecution(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2Execution = 0;
api.GoogleCloudIntegrationsV2Execution
buildGoogleCloudIntegrationsV2Execution() {
  final o = api.GoogleCloudIntegrationsV2Execution();
  buildCounterGoogleCloudIntegrationsV2Execution++;
  if (buildCounterGoogleCloudIntegrationsV2Execution < 3) {
    o.cloudLoggingDetails = buildGoogleCloudIntegrationsV2CloudLoggingDetails();
    o.containTaskVariables = true;
    o.createTime = 'foo';
    o.executionAttemptStats = buildUnnamed27();
    o.integrationVersionNumber = 'foo';
    o.integrationVersionUserLabel = 'foo';
    o.name = 'foo';
    o.replayInfo = buildGoogleCloudIntegrationsV2ExecutionReplayInfo();
    o.requestVariables = buildUnnamed28();
    o.responseVariables = buildUnnamed29();
    o.state = 'foo';
    o.taskExecutions = buildUnnamed30();
    o.triggerId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2Execution--;
  return o;
}

void checkGoogleCloudIntegrationsV2Execution(
  api.GoogleCloudIntegrationsV2Execution o,
) {
  buildCounterGoogleCloudIntegrationsV2Execution++;
  if (buildCounterGoogleCloudIntegrationsV2Execution < 3) {
    checkGoogleCloudIntegrationsV2CloudLoggingDetails(o.cloudLoggingDetails!);
    unittest.expect(o.containTaskVariables!, unittest.isTrue);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed27(o.executionAttemptStats!);
    unittest.expect(o.integrationVersionNumber!, unittest.equals('foo'));
    unittest.expect(o.integrationVersionUserLabel!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudIntegrationsV2ExecutionReplayInfo(o.replayInfo!);
    checkUnnamed28(o.requestVariables!);
    checkUnnamed29(o.responseVariables!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed30(o.taskExecutions!);
    unittest.expect(o.triggerId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2Execution--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIntegrationsV2ExecutionReplayInfo = 0;
api.GoogleCloudIntegrationsV2ExecutionReplayInfo
buildGoogleCloudIntegrationsV2ExecutionReplayInfo() {
  final o = api.GoogleCloudIntegrationsV2ExecutionReplayInfo();
  buildCounterGoogleCloudIntegrationsV2ExecutionReplayInfo++;
  if (buildCounterGoogleCloudIntegrationsV2ExecutionReplayInfo < 3) {
    o.originalExecutionId = 'foo';
    o.replayMode = 'foo';
    o.replayReason = 'foo';
    o.replayedExecutionIds = buildUnnamed31();
  }
  buildCounterGoogleCloudIntegrationsV2ExecutionReplayInfo--;
  return o;
}

void checkGoogleCloudIntegrationsV2ExecutionReplayInfo(
  api.GoogleCloudIntegrationsV2ExecutionReplayInfo o,
) {
  buildCounterGoogleCloudIntegrationsV2ExecutionReplayInfo++;
  if (buildCounterGoogleCloudIntegrationsV2ExecutionReplayInfo < 3) {
    unittest.expect(o.originalExecutionId!, unittest.equals('foo'));
    unittest.expect(o.replayMode!, unittest.equals('foo'));
    unittest.expect(o.replayReason!, unittest.equals('foo'));
    checkUnnamed31(o.replayedExecutionIds!);
  }
  buildCounterGoogleCloudIntegrationsV2ExecutionReplayInfo--;
}

core.List<api.GoogleCloudIntegrationsV2Execution> buildUnnamed32() => [
  buildGoogleCloudIntegrationsV2Execution(),
  buildGoogleCloudIntegrationsV2Execution(),
];

void checkUnnamed32(core.List<api.GoogleCloudIntegrationsV2Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2Execution(o[0]);
  checkGoogleCloudIntegrationsV2Execution(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2ListExecutionsResponse = 0;
api.GoogleCloudIntegrationsV2ListExecutionsResponse
buildGoogleCloudIntegrationsV2ListExecutionsResponse() {
  final o = api.GoogleCloudIntegrationsV2ListExecutionsResponse();
  buildCounterGoogleCloudIntegrationsV2ListExecutionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV2ListExecutionsResponse < 3) {
    o.executions = buildUnnamed32();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2ListExecutionsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV2ListExecutionsResponse(
  api.GoogleCloudIntegrationsV2ListExecutionsResponse o,
) {
  buildCounterGoogleCloudIntegrationsV2ListExecutionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV2ListExecutionsResponse < 3) {
    checkUnnamed32(o.executions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2ListExecutionsResponse--;
}

core.List<api.GoogleCloudIntegrationsV2TaskExecutionDetails> buildUnnamed33() =>
    [
      buildGoogleCloudIntegrationsV2TaskExecutionDetails(),
      buildGoogleCloudIntegrationsV2TaskExecutionDetails(),
    ];

void checkUnnamed33(
  core.List<api.GoogleCloudIntegrationsV2TaskExecutionDetails> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2TaskExecutionDetails(o[0]);
  checkGoogleCloudIntegrationsV2TaskExecutionDetails(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudIntegrationsV2TaskExecution = 0;
api.GoogleCloudIntegrationsV2TaskExecution
buildGoogleCloudIntegrationsV2TaskExecution() {
  final o = api.GoogleCloudIntegrationsV2TaskExecution();
  buildCounterGoogleCloudIntegrationsV2TaskExecution++;
  if (buildCounterGoogleCloudIntegrationsV2TaskExecution < 3) {
    o.name = 'foo';
    o.taskExecutionDetails = buildUnnamed33();
    o.taskExecutionMetadata =
        buildGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata();
    o.variables = buildUnnamed34();
  }
  buildCounterGoogleCloudIntegrationsV2TaskExecution--;
  return o;
}

void checkGoogleCloudIntegrationsV2TaskExecution(
  api.GoogleCloudIntegrationsV2TaskExecution o,
) {
  buildCounterGoogleCloudIntegrationsV2TaskExecution++;
  if (buildCounterGoogleCloudIntegrationsV2TaskExecution < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed33(o.taskExecutionDetails!);
    checkGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata(
      o.taskExecutionMetadata!,
    );
    checkUnnamed34(o.variables!);
  }
  buildCounterGoogleCloudIntegrationsV2TaskExecution--;
}

core.List<api.GoogleCloudIntegrationsV2AttemptStats> buildUnnamed35() => [
  buildGoogleCloudIntegrationsV2AttemptStats(),
  buildGoogleCloudIntegrationsV2AttemptStats(),
];

void checkUnnamed35(core.List<api.GoogleCloudIntegrationsV2AttemptStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV2AttemptStats(o[0]);
  checkGoogleCloudIntegrationsV2AttemptStats(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV2TaskExecutionDetails = 0;
api.GoogleCloudIntegrationsV2TaskExecutionDetails
buildGoogleCloudIntegrationsV2TaskExecutionDetails() {
  final o = api.GoogleCloudIntegrationsV2TaskExecutionDetails();
  buildCounterGoogleCloudIntegrationsV2TaskExecutionDetails++;
  if (buildCounterGoogleCloudIntegrationsV2TaskExecutionDetails < 3) {
    o.taskAttemptStats = buildUnnamed35();
    o.taskExecutionState = 'foo';
    o.taskNumber = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2TaskExecutionDetails--;
  return o;
}

void checkGoogleCloudIntegrationsV2TaskExecutionDetails(
  api.GoogleCloudIntegrationsV2TaskExecutionDetails o,
) {
  buildCounterGoogleCloudIntegrationsV2TaskExecutionDetails++;
  if (buildCounterGoogleCloudIntegrationsV2TaskExecutionDetails < 3) {
    checkUnnamed35(o.taskAttemptStats!);
    unittest.expect(o.taskExecutionState!, unittest.equals('foo'));
    unittest.expect(o.taskNumber!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2TaskExecutionDetails--;
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata = 0;
api.GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata
buildGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata() {
  final o = api.GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata();
  buildCounterGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata++;
  if (buildCounterGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata <
      3) {
    o.ancestorIterationNumbers = buildUnnamed36();
    o.ancestorTaskNumbers = buildUnnamed37();
    o.executionAttempt = 42;
    o.privateIntegrationName = 'foo';
    o.task = 'foo';
    o.taskAttempt = 42;
    o.taskLabel = 'foo';
    o.taskNumber = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata--;
  return o;
}

void checkGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata(
  api.GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata o,
) {
  buildCounterGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata++;
  if (buildCounterGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata <
      3) {
    checkUnnamed36(o.ancestorIterationNumbers!);
    checkUnnamed37(o.ancestorTaskNumbers!);
    unittest.expect(o.executionAttempt!, unittest.equals(42));
    unittest.expect(o.privateIntegrationName!, unittest.equals('foo'));
    unittest.expect(o.task!, unittest.equals('foo'));
    unittest.expect(o.taskAttempt!, unittest.equals(42));
    unittest.expect(o.taskLabel!, unittest.equals('foo'));
    unittest.expect(o.taskNumber!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata--;
}

void main() {
  unittest.group('obj-schema-GoogleApiHttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiHttpBody.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleApiHttpBody(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV2AttemptStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV2AttemptStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV2AttemptStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIntegrationsV2AttemptStats(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV2CloudLoggingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV2CloudLoggingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV2CloudLoggingDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIntegrationsV2CloudLoggingDetails(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetBooleanParameterArray',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetBooleanParameterArray();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetBooleanParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetBooleanParameterArray(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetCloudSchedulerConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetCloudSchedulerConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetCloudSchedulerConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetCloudSchedulerConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetDoubleParameterArray',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetDoubleParameterArray();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetDoubleParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetDoubleParameterArray(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetErrorCatcherConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetErrorCatcherConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIntegrationsV2DuetErrorCatcherConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIntegrationsV2DuetErrorCatcherConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIntegrationsV2DuetEventParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV2DuetEventParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV2DuetEventParameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIntegrationsV2DuetEventParameter(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetIntParameterArray',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetIntParameterArray();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIntegrationsV2DuetIntParameterArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIntegrationsV2DuetIntParameterArray(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetIntegrationBranch',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetIntegrationBranch();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIntegrationsV2DuetIntegrationBranch.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIntegrationsV2DuetIntegrationBranch(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetIntegrationBranchRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetIntegrationBranchRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetIntegrationBranchRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetIntegrationBranchRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetIntegrationConfigParameter',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2DuetIntegrationConfigParameter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetIntegrationConfigParameter.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetIntegrationConfigParameter(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetIntegrationDocumentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetIntegrationParameter',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetIntegrationParameter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetIntegrationParameter.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetIntegrationParameter(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetIntegrationSkeleton',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetIntegrationSkeleton();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetIntegrationSkeleton.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetIntegrationSkeleton(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetIntegrationVersion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetIntegrationVersion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIntegrationsV2DuetIntegrationVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIntegrationsV2DuetIntegrationVersion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetJavascriptRecommendation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetJavascriptRecommendation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetJavascriptRecommendation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetJavascriptRecommendation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetJavascriptRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetJavascriptRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIntegrationsV2DuetJavascriptRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIntegrationsV2DuetJavascriptRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIntegrationsV2DuetNextTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV2DuetNextTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV2DuetNextTask.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIntegrationsV2DuetNextTask(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetRecommendTasksRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetRecommendTasksRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetRecommendTasksRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetRecommendTasksRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetRecommendTasksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetRecommendTasksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetRecommendTasksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetRecommendTasksResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetReplaceTaskRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetReplaceTaskRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIntegrationsV2DuetReplaceTaskRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIntegrationsV2DuetReplaceTaskRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetStringParameterArray',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetStringParameterArray();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetStringParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetStringParameterArray(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIntegrationsV2DuetTaskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV2DuetTaskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV2DuetTaskConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIntegrationsV2DuetTaskConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetTaskResponseStatus',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetTaskResponseStatus();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIntegrationsV2DuetTaskResponseStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIntegrationsV2DuetTaskResponseStatus(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIntegrationsV2DuetTriggerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV2DuetTriggerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV2DuetTriggerConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIntegrationsV2DuetTriggerConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetTriggerConfigVariables',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2DuetTriggerConfigVariables();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetTriggerConfigVariables.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetTriggerConfigVariables(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIntegrationsV2DuetValueType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV2DuetValueType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV2DuetValueType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIntegrationsV2DuetValueType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV2Execution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV2Execution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV2Execution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIntegrationsV2Execution(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV2ExecutionReplayInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV2ExecutionReplayInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV2ExecutionReplayInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIntegrationsV2ExecutionReplayInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2ListExecutionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2ListExecutionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIntegrationsV2ListExecutionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIntegrationsV2ListExecutionsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIntegrationsV2TaskExecution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV2TaskExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV2TaskExecution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIntegrationsV2TaskExecution(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2TaskExecutionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIntegrationsV2TaskExecutionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIntegrationsV2TaskExecutionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIntegrationsV2TaskExecutionDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata(od);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--generateIntegration', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudIntegrationsV2DuetGenerateIntegrationRequest(obj);

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
            unittest.equals('v2/'),
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
            buildGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateIntegration(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudIntegrationsV2DuetGenerateIntegrationResponse(
        response
            as api.GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsIntegrationsResource', () {
    unittest.test('method--execute', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_triggerId = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['triggerId']!.first,
            unittest.equals(arg_triggerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleApiHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.execute(
        arg_parent,
        requestId: arg_requestId,
        triggerId: arg_triggerId,
        $fields: arg_$fields,
      );
      checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
    });

    unittest.test('method--generateIntegrationBranch', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_request =
          buildGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest(
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateIntegrationBranch(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse(
        response
            as api.GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse,
      );
    });

    unittest.test('method--generateIntegrationDocument', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_request =
          buildGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest(
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateIntegrationDocument(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse(
        response
            as api.GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse,
      );
    });

    unittest.test('method--generateJavascript', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_request =
          buildGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudIntegrationsV2DuetGenerateJavascriptRequest(obj);

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
            unittest.equals('v2/'),
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
            buildGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateJavascript(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudIntegrationsV2DuetGenerateJavascriptResponse(
        response as api.GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse,
      );
    });

    unittest.test('method--recommendTasks', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_request =
          buildGoogleCloudIntegrationsV2DuetRecommendTasksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudIntegrationsV2DuetRecommendTasksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudIntegrationsV2DuetRecommendTasksRequest(obj);

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
            unittest.equals('v2/'),
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
            buildGoogleCloudIntegrationsV2DuetRecommendTasksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.recommendTasks(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudIntegrationsV2DuetRecommendTasksResponse(
        response as api.GoogleCloudIntegrationsV2DuetRecommendTasksResponse,
      );
    });

    unittest.test('method--schedule', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_scheduleTime = 'foo';
      final arg_triggerId = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['scheduleTime']!.first,
            unittest.equals(arg_scheduleTime),
          );
          unittest.expect(
            queryMap['triggerId']!.first,
            unittest.equals(arg_triggerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleApiHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.schedule(
        arg_parent,
        requestId: arg_requestId,
        scheduleTime: arg_scheduleTime,
        triggerId: arg_triggerId,
        $fields: arg_$fields,
      );
      checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
    });
  });

  unittest.group('resource-ProjectsLocationsIntegrationsExecutionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(
        mock,
      ).projects.locations.integrations.executions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['readMask']!.first,
            unittest.equals(arg_readMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV2ListExecutionsResponse(),
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
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudIntegrationsV2ListExecutionsResponse(
        response as api.GoogleCloudIntegrationsV2ListExecutionsResponse,
      );
    });

    unittest.test('method--troubleshoot', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(
        mock,
      ).projects.locations.integrations.executions;
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
            unittest.equals('v2/'),
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
            buildGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.troubleshoot(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse(
        response
            as api.GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsIntegrationsExecutionsTaskExecutionsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.IntegrationsApi(
          mock,
        ).projects.locations.integrations.executions.taskExecutions;
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
              unittest.equals('v2/'),
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
              buildGoogleCloudIntegrationsV2TaskExecution(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudIntegrationsV2TaskExecution(
          response as api.GoogleCloudIntegrationsV2TaskExecution,
        );
      });
    },
  );
}
