// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis_beta/documentai/v1beta3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata() {
  var o =
      api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata() {
  var o =
      api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata
    buildGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse = 0;
api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse
    buildGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse(
    api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata
    buildGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse = 0;
api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse
    buildGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse(
    api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse <
      3) {
    o.evaluation = 'foo';
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse <
      3) {
    unittest.expect(
      o.evaluation!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata() {
  var o =
      api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse() {
  var o =
      api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
    o.testDatasetValidation =
        buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation();
    o.trainingDatasetValidation =
        buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
    checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
        o.testDatasetValidation! as api
            .GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation);
    checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
        o.trainingDatasetValidation! as api
            .GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7466() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7466(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.List<api.GoogleRpcStatus> buildUnnamed7467() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7467(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation =
    0;
api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
    buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation() {
  var o = api
      .GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation();
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation <
      3) {
    o.datasetErrorCount = 42;
    o.datasetErrors = buildUnnamed7466();
    o.documentErrorCount = 42;
    o.documentErrors = buildUnnamed7467();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
    api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
        o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation <
      3) {
    unittest.expect(
      o.datasetErrorCount!,
      unittest.equals(42),
    );
    checkUnnamed7466(o.datasetErrors!);
    unittest.expect(
      o.documentErrorCount!,
      unittest.equals(42),
    );
    checkUnnamed7467(o.documentErrors!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse = 0;
api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse <
      3) {
    o.processorVersion = 'foo';
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse <
      3) {
    unittest.expect(
      o.processorVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata
    buildGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata(
    api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata() {
  var o =
      api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata--;
}

core.List<
        api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>
    buildUnnamed7468() {
  var o = <
      api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>[];
  o.add(
      buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus());
  o.add(
      buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus());
  return o;
}

void checkUnnamed7468(
    core.List<
            api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(o[0]
      as api
          .GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus);
  checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(o[1]
      as api
          .GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus);
}

core.int buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata = 0;
api.GoogleCloudDocumentaiV1BatchProcessMetadata
    buildGoogleCloudDocumentaiV1BatchProcessMetadata() {
  var o = api.GoogleCloudDocumentaiV1BatchProcessMetadata();
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata < 3) {
    o.createTime = 'foo';
    o.individualProcessStatuses = buildUnnamed7468();
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1BatchProcessMetadata(
    api.GoogleCloudDocumentaiV1BatchProcessMetadata o) {
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7468(o.individualProcessStatuses!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus =
    0;
api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus
    buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus() {
  var o =
      api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus();
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus <
      3) {
    o.humanReviewStatus = buildGoogleCloudDocumentaiV1HumanReviewStatus();
    o.inputGcsSource = 'foo';
    o.outputGcsDestination = 'foo';
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus--;
  return o;
}

void checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(
    api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus o) {
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus <
      3) {
    checkGoogleCloudDocumentaiV1HumanReviewStatus(
        o.humanReviewStatus! as api.GoogleCloudDocumentaiV1HumanReviewStatus);
    unittest.expect(
      o.inputGcsSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputGcsDestination!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.status! as api.GoogleRpcStatus);
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus--;
}

core.int buildCounterGoogleCloudDocumentaiV1BatchProcessResponse = 0;
api.GoogleCloudDocumentaiV1BatchProcessResponse
    buildGoogleCloudDocumentaiV1BatchProcessResponse() {
  var o = api.GoogleCloudDocumentaiV1BatchProcessResponse();
  buildCounterGoogleCloudDocumentaiV1BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1BatchProcessResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1BatchProcessResponse(
    api.GoogleCloudDocumentaiV1BatchProcessResponse o) {
  buildCounterGoogleCloudDocumentaiV1BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1BatchProcessResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata = 0;
api.GoogleCloudDocumentaiV1CommonOperationMetadata
    buildGoogleCloudDocumentaiV1CommonOperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1CommonOperationMetadata();
  buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1CommonOperationMetadata(
    api.GoogleCloudDocumentaiV1CommonOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1HumanReviewStatus = 0;
api.GoogleCloudDocumentaiV1HumanReviewStatus
    buildGoogleCloudDocumentaiV1HumanReviewStatus() {
  var o = api.GoogleCloudDocumentaiV1HumanReviewStatus();
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1HumanReviewStatus < 3) {
    o.humanReviewOperation = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus--;
  return o;
}

void checkGoogleCloudDocumentaiV1HumanReviewStatus(
    api.GoogleCloudDocumentaiV1HumanReviewStatus o) {
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1HumanReviewStatus < 3) {
    unittest.expect(
      o.humanReviewOperation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus--;
}

core.int buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata = 0;
api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata
    buildGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata();
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata < 3) {
    o.commonMetadata = buildGoogleCloudDocumentaiV1CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata(
    api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata < 3) {
    checkGoogleCloudDocumentaiV1CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiV1CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse = 0;
api.GoogleCloudDocumentaiV1ReviewDocumentResponse
    buildGoogleCloudDocumentaiV1ReviewDocumentResponse() {
  var o = api.GoogleCloudDocumentaiV1ReviewDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse < 3) {
    o.gcsDestination = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1ReviewDocumentResponse(
    api.GoogleCloudDocumentaiV1ReviewDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse < 3) {
    unittest.expect(
      o.gcsDestination!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>
    buildUnnamed7469() {
  var o = <api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>[];
  o.add(buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse());
  o.add(buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse());
  return o;
}

void checkUnnamed7469(
    core.List<api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(
      o[0] as api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse);
  checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(
      o[1] as api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse =
    0;
api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
    buildGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse() {
  var o = api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse <
      3) {
    o.responses = buildUnnamed7469();
  }
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse(
    api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse <
      3) {
    checkUnnamed7469(o.responses!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta1NormalizedVertex> buildUnnamed7470() {
  var o = <api.GoogleCloudDocumentaiV1beta1NormalizedVertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta1NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta1NormalizedVertex());
  return o;
}

void checkUnnamed7470(
    core.List<api.GoogleCloudDocumentaiV1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1NormalizedVertex(
      o[0] as api.GoogleCloudDocumentaiV1beta1NormalizedVertex);
  checkGoogleCloudDocumentaiV1beta1NormalizedVertex(
      o[1] as api.GoogleCloudDocumentaiV1beta1NormalizedVertex);
}

core.List<api.GoogleCloudDocumentaiV1beta1Vertex> buildUnnamed7471() {
  var o = <api.GoogleCloudDocumentaiV1beta1Vertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta1Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta1Vertex());
  return o;
}

void checkUnnamed7471(core.List<api.GoogleCloudDocumentaiV1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1Vertex(
      o[0] as api.GoogleCloudDocumentaiV1beta1Vertex);
  checkGoogleCloudDocumentaiV1beta1Vertex(
      o[1] as api.GoogleCloudDocumentaiV1beta1Vertex);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly = 0;
api.GoogleCloudDocumentaiV1beta1BoundingPoly
    buildGoogleCloudDocumentaiV1beta1BoundingPoly() {
  var o = api.GoogleCloudDocumentaiV1beta1BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed7470();
    o.vertices = buildUnnamed7471();
  }
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1BoundingPoly(
    api.GoogleCloudDocumentaiV1beta1BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly < 3) {
    checkUnnamed7470(o.normalizedVertices!);
    checkUnnamed7471(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> buildUnnamed7472() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  return o;
}

void checkUnnamed7472(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentEntity);
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentEntity);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation>
    buildUnnamed7473() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation());
  return o;
}

void checkUnnamed7473(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation);
  checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPage> buildUnnamed7474() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPage());
  return o;
}

void checkUnnamed7474(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPage);
  checkGoogleCloudDocumentaiV1beta1DocumentPage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPage);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentRevision> buildUnnamed7475() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentRevision>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentRevision());
  return o;
}

void checkUnnamed7475(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentRevision(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentRevision);
  checkGoogleCloudDocumentaiV1beta1DocumentRevision(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentRevision);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextChange>
    buildUnnamed7476() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentTextChange>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextChange());
  return o;
}

void checkUnnamed7476(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTextChange(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentTextChange);
  checkGoogleCloudDocumentaiV1beta1DocumentTextChange(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentTextChange);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentStyle> buildUnnamed7477() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentStyle>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentStyle());
  return o;
}

void checkUnnamed7477(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentStyle(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentStyle);
  checkGoogleCloudDocumentaiV1beta1DocumentStyle(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentStyle);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1Document = 0;
api.GoogleCloudDocumentaiV1beta1Document
    buildGoogleCloudDocumentaiV1beta1Document() {
  var o = api.GoogleCloudDocumentaiV1beta1Document();
  buildCounterGoogleCloudDocumentaiV1beta1Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed7472();
    o.entityRelations = buildUnnamed7473();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed7474();
    o.revisions = buildUnnamed7475();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta1DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed7476();
    o.textStyles = buildUnnamed7477();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1Document--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1Document(
    api.GoogleCloudDocumentaiV1beta1Document o) {
  buildCounterGoogleCloudDocumentaiV1beta1Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Document < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed7472(o.entities!);
    checkUnnamed7473(o.entityRelations!);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed7474(o.pages!);
    checkUnnamed7475(o.revisions!);
    checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(
        o.shardInfo! as api.GoogleCloudDocumentaiV1beta1DocumentShardInfo);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed7476(o.textChanges!);
    checkUnnamed7477(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1Document--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> buildUnnamed7478() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  return o;
}

void checkUnnamed7478(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentEntity);
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentEntity);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity = 0;
api.GoogleCloudDocumentaiV1beta1DocumentEntity
    buildGoogleCloudDocumentaiV1beta1DocumentEntity() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor();
    o.properties = buildUnnamed7478();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentEntity(
    api.GoogleCloudDocumentaiV1beta1DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(
        o.normalizedValue!
            as api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue);
    checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(
        o.pageAnchor! as api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor);
    checkUnnamed7478(o.properties!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue =
    0;
api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue
    buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue <
      3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.moneyValue = buildGoogleTypeMoney();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue <
      3) {
    checkGoogleTypePostalAddress(
        o.addressValue! as api.GoogleTypePostalAddress);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue! as api.GoogleTypeDate);
    checkGoogleTypeDateTime(o.datetimeValue! as api.GoogleTypeDateTime);
    checkGoogleTypeMoney(o.moneyValue! as api.GoogleTypeMoney);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation = 0;
api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation
    buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation < 3) {
    o.objectId = 'foo';
    o.relation = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageBlock>
    buildUnnamed7479() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageBlock>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageBlock());
  return o;
}

void checkUnnamed7479(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageBlock);
  checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageBlock);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7480() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7480(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageFormField>
    buildUnnamed7481() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageFormField>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageFormField());
  return o;
}

void checkUnnamed7481(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageFormField);
  checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageFormField);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageLine> buildUnnamed7482() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageLine>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageLine());
  return o;
}

void checkUnnamed7482(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageLine(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageLine);
  checkGoogleCloudDocumentaiV1beta1DocumentPageLine(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageLine);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph>
    buildUnnamed7483() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph());
  return o;
}

void checkUnnamed7483(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph);
  checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTable>
    buildUnnamed7484() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTable>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTable());
  return o;
}

void checkUnnamed7484(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageTable);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageTable);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageToken>
    buildUnnamed7485() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageToken>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageToken());
  return o;
}

void checkUnnamed7485(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageToken(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageToken);
  checkGoogleCloudDocumentaiV1beta1DocumentPageToken(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageToken);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix>
    buildUnnamed7486() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix());
  return o;
}

void checkUnnamed7486(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix);
  checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>
    buildUnnamed7487() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement());
  return o;
}

void checkUnnamed7487(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement);
  checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPage = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPage
    buildGoogleCloudDocumentaiV1beta1DocumentPage() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPage < 3) {
    o.blocks = buildUnnamed7479();
    o.detectedLanguages = buildUnnamed7480();
    o.dimension = buildGoogleCloudDocumentaiV1beta1DocumentPageDimension();
    o.formFields = buildUnnamed7481();
    o.image = buildGoogleCloudDocumentaiV1beta1DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.lines = buildUnnamed7482();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed7483();
    o.tables = buildUnnamed7484();
    o.tokens = buildUnnamed7485();
    o.transforms = buildUnnamed7486();
    o.visualElements = buildUnnamed7487();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPage(
    api.GoogleCloudDocumentaiV1beta1DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPage < 3) {
    checkUnnamed7479(o.blocks!);
    checkUnnamed7480(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(
        o.dimension! as api.GoogleCloudDocumentaiV1beta1DocumentPageDimension);
    checkUnnamed7481(o.formFields!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageImage(
        o.image! as api.GoogleCloudDocumentaiV1beta1DocumentPageImage);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkUnnamed7482(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed7483(o.paragraphs!);
    checkUnnamed7484(o.tables!);
    checkUnnamed7485(o.tokens!);
    checkUnnamed7486(o.transforms!);
    checkUnnamed7487(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>
    buildUnnamed7488() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef());
  return o;
}

void checkUnnamed7488(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef);
  checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor
    buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed7488();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor < 3) {
    checkUnnamed7488(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
    o.confidence = 42.0;
    o.layoutId = 'foo';
    o.layoutType = 'foo';
    o.page = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta1BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1beta1BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.layoutId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layoutType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.page!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7489() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7489(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageBlock
    buildGoogleCloudDocumentaiV1beta1DocumentPageBlock() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed7489();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(
    api.GoogleCloudDocumentaiV1beta1DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock < 3) {
    checkUnnamed7489(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage =
    0;
api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageDimension
    buildGoogleCloudDocumentaiV1beta1DocumentPageDimension() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = 'foo';
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(
    api.GoogleCloudDocumentaiV1beta1DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7490() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7490(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7491() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7491(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageFormField
    buildGoogleCloudDocumentaiV1beta1DocumentPageFormField() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed7490();
    o.valueDetectedLanguages = buildUnnamed7491();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta1DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.fieldName! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.fieldValue! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkUnnamed7490(o.nameDetectedLanguages!);
    checkUnnamed7491(o.valueDetectedLanguages!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageImage
    buildGoogleCloudDocumentaiV1beta1DocumentPageImage() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage < 3) {
    o.content = 'foo';
    o.height = 42;
    o.mimeType = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageImage(
    api.GoogleCloudDocumentaiV1beta1DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageLayout
    buildGoogleCloudDocumentaiV1beta1DocumentPageLayout() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
    o.confidence = 42.0;
    o.orientation = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
    api.GoogleCloudDocumentaiV1beta1DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta1BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1beta1BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7492() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7492(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageLine
    buildGoogleCloudDocumentaiV1beta1DocumentPageLine() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed7492();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageLine(
    api.GoogleCloudDocumentaiV1beta1DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine < 3) {
    checkUnnamed7492(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix
    buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = 'foo';
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix < 3) {
    unittest.expect(
      o.cols!,
      unittest.equals(42),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7493() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7493(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph
    buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed7493();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph < 3) {
    checkUnnamed7493(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>
    buildUnnamed7494() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  return o;
}

void checkUnnamed7494(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7495() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7495(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>
    buildUnnamed7496() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  return o;
}

void checkUnnamed7496(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTable
    buildGoogleCloudDocumentaiV1beta1DocumentPageTable() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed7494();
    o.detectedLanguages = buildUnnamed7495();
    o.headerRows = buildUnnamed7496();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable < 3) {
    checkUnnamed7494(o.bodyRows!);
    checkUnnamed7495(o.detectedLanguages!);
    checkUnnamed7496(o.headerRows!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7497() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7497(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed7497();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell < 3) {
    unittest.expect(
      o.colSpan!,
      unittest.equals(42),
    );
    checkUnnamed7497(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>
    buildUnnamed7498() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell());
  return o;
}

void checkUnnamed7498(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed7498();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow < 3) {
    checkUnnamed7498(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7499() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7499(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageToken
    buildGoogleCloudDocumentaiV1beta1DocumentPageToken() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed7499();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageToken(
    api.GoogleCloudDocumentaiV1beta1DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(
        o.detectedBreak!
            as api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak);
    checkUnnamed7499(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak <
      3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7500() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7500(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed7500();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement < 3) {
    checkUnnamed7500(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>
    buildUnnamed7501() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent());
  return o;
}

void checkUnnamed7501(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1beta1DocumentProvenance
    buildGoogleCloudDocumentaiV1beta1DocumentProvenance() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed7501();
    o.revision = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
    api.GoogleCloudDocumentaiV1beta1DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    checkUnnamed7501(o.parents!);
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent = 0;
api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent
    buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent < 3) {
    o.id = 42;
    o.index = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent--;
}

core.List<core.int> buildUnnamed7502() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7502(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision = 0;
api.GoogleCloudDocumentaiV1beta1DocumentRevision
    buildGoogleCloudDocumentaiV1beta1DocumentRevision() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed7502();
    o.processor = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentRevision(
    api.GoogleCloudDocumentaiV1beta1DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(o.humanReview!
        as api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed7502(o.parent!);
    unittest.expect(
      o.processor!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview =
    0;
api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview
    buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo = 0;
api.GoogleCloudDocumentaiV1beta1DocumentShardInfo
    buildGoogleCloudDocumentaiV1beta1DocumentShardInfo() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo < 3) {
    o.shardCount = 'foo';
    o.shardIndex = 'foo';
    o.textOffset = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(
    api.GoogleCloudDocumentaiV1beta1DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo < 3) {
    unittest.expect(
      o.shardCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shardIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle = 0;
api.GoogleCloudDocumentaiV1beta1DocumentStyle
    buildGoogleCloudDocumentaiV1beta1DocumentStyle() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
    o.fontWeight = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
    o.textDecoration = 'foo';
    o.textStyle = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentStyle(
    api.GoogleCloudDocumentaiV1beta1DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor! as api.GoogleTypeColor);
    checkGoogleTypeColor(o.color! as api.GoogleTypeColor);
    checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(
        o.fontSize! as api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor);
    unittest.expect(
      o.textDecoration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textStyle!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize = 0;
api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize
    buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize < 3) {
    unittest.expect(
      o.size!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>
    buildUnnamed7503() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment());
  return o;
}

void checkUnnamed7503(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment);
  checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor
    buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed7503();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed7503(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment =
    0;
api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment <
      3) {
    o.endIndex = 'foo';
    o.startIndex = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance>
    buildUnnamed7504() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentProvenance>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  return o;
}

void checkUnnamed7504(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1beta1DocumentTextChange
    buildGoogleCloudDocumentaiV1beta1DocumentTextChange() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed7504();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentTextChange(
    api.GoogleCloudDocumentaiV1beta1DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange < 3) {
    unittest.expect(
      o.changedText!,
      unittest.equals('foo'),
    );
    checkUnnamed7504(o.provenance!);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1GcsDestination = 0;
api.GoogleCloudDocumentaiV1beta1GcsDestination
    buildGoogleCloudDocumentaiV1beta1GcsDestination() {
  var o = api.GoogleCloudDocumentaiV1beta1GcsDestination();
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1GcsDestination(
    api.GoogleCloudDocumentaiV1beta1GcsDestination o) {
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1GcsSource = 0;
api.GoogleCloudDocumentaiV1beta1GcsSource
    buildGoogleCloudDocumentaiV1beta1GcsSource() {
  var o = api.GoogleCloudDocumentaiV1beta1GcsSource();
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1GcsSource(
    api.GoogleCloudDocumentaiV1beta1GcsSource o) {
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1InputConfig = 0;
api.GoogleCloudDocumentaiV1beta1InputConfig
    buildGoogleCloudDocumentaiV1beta1InputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta1InputConfig();
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1InputConfig < 3) {
    o.gcsSource = buildGoogleCloudDocumentaiV1beta1GcsSource();
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1InputConfig(
    api.GoogleCloudDocumentaiV1beta1InputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1InputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta1GcsSource(
        o.gcsSource! as api.GoogleCloudDocumentaiV1beta1GcsSource);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex = 0;
api.GoogleCloudDocumentaiV1beta1NormalizedVertex
    buildGoogleCloudDocumentaiV1beta1NormalizedVertex() {
  var o = api.GoogleCloudDocumentaiV1beta1NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1NormalizedVertex(
    api.GoogleCloudDocumentaiV1beta1NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata = 0;
api.GoogleCloudDocumentaiV1beta1OperationMetadata
    buildGoogleCloudDocumentaiV1beta1OperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta1OperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1OperationMetadata(
    api.GoogleCloudDocumentaiV1beta1OperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1OutputConfig = 0;
api.GoogleCloudDocumentaiV1beta1OutputConfig
    buildGoogleCloudDocumentaiV1beta1OutputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta1OutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDocumentaiV1beta1GcsDestination();
    o.pagesPerShard = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1OutputConfig(
    api.GoogleCloudDocumentaiV1beta1OutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta1GcsDestination(
        o.gcsDestination! as api.GoogleCloudDocumentaiV1beta1GcsDestination);
    unittest.expect(
      o.pagesPerShard!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse = 0;
api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse
    buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse() {
  var o = api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse < 3) {
    o.inputConfig = buildGoogleCloudDocumentaiV1beta1InputConfig();
    o.outputConfig = buildGoogleCloudDocumentaiV1beta1OutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(
    api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse < 3) {
    checkGoogleCloudDocumentaiV1beta1InputConfig(
        o.inputConfig! as api.GoogleCloudDocumentaiV1beta1InputConfig);
    checkGoogleCloudDocumentaiV1beta1OutputConfig(
        o.outputConfig! as api.GoogleCloudDocumentaiV1beta1OutputConfig);
  }
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1Vertex = 0;
api.GoogleCloudDocumentaiV1beta1Vertex
    buildGoogleCloudDocumentaiV1beta1Vertex() {
  var o = api.GoogleCloudDocumentaiV1beta1Vertex();
  buildCounterGoogleCloudDocumentaiV1beta1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1Vertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1Vertex(
    api.GoogleCloudDocumentaiV1beta1Vertex o) {
  buildCounterGoogleCloudDocumentaiV1beta1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1Vertex--;
}

core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>
    buildUnnamed7505() {
  var o = <api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>[];
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse());
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse());
  return o;
}

void checkUnnamed7505(
    core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(
      o[0] as api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse);
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(
      o[1] as api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse =
    0;
api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
    buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse() {
  var o = api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse <
      3) {
    o.responses = buildUnnamed7505();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse(
    api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse <
      3) {
    checkUnnamed7505(o.responses!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta2NormalizedVertex> buildUnnamed7506() {
  var o = <api.GoogleCloudDocumentaiV1beta2NormalizedVertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta2NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta2NormalizedVertex());
  return o;
}

void checkUnnamed7506(
    core.List<api.GoogleCloudDocumentaiV1beta2NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2NormalizedVertex(
      o[0] as api.GoogleCloudDocumentaiV1beta2NormalizedVertex);
  checkGoogleCloudDocumentaiV1beta2NormalizedVertex(
      o[1] as api.GoogleCloudDocumentaiV1beta2NormalizedVertex);
}

core.List<api.GoogleCloudDocumentaiV1beta2Vertex> buildUnnamed7507() {
  var o = <api.GoogleCloudDocumentaiV1beta2Vertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta2Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta2Vertex());
  return o;
}

void checkUnnamed7507(core.List<api.GoogleCloudDocumentaiV1beta2Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2Vertex(
      o[0] as api.GoogleCloudDocumentaiV1beta2Vertex);
  checkGoogleCloudDocumentaiV1beta2Vertex(
      o[1] as api.GoogleCloudDocumentaiV1beta2Vertex);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly = 0;
api.GoogleCloudDocumentaiV1beta2BoundingPoly
    buildGoogleCloudDocumentaiV1beta2BoundingPoly() {
  var o = api.GoogleCloudDocumentaiV1beta2BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed7506();
    o.vertices = buildUnnamed7507();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2BoundingPoly(
    api.GoogleCloudDocumentaiV1beta2BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly < 3) {
    checkUnnamed7506(o.normalizedVertices!);
    checkUnnamed7507(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> buildUnnamed7508() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  return o;
}

void checkUnnamed7508(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentEntity);
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentEntity);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation>
    buildUnnamed7509() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation());
  return o;
}

void checkUnnamed7509(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation);
  checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentLabel> buildUnnamed7510() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentLabel>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentLabel());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentLabel());
  return o;
}

void checkUnnamed7510(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentLabel(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentLabel);
  checkGoogleCloudDocumentaiV1beta2DocumentLabel(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentLabel);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPage> buildUnnamed7511() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPage());
  return o;
}

void checkUnnamed7511(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPage);
  checkGoogleCloudDocumentaiV1beta2DocumentPage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPage);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentRevision> buildUnnamed7512() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentRevision>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentRevision());
  return o;
}

void checkUnnamed7512(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentRevision(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentRevision);
  checkGoogleCloudDocumentaiV1beta2DocumentRevision(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentRevision);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextChange>
    buildUnnamed7513() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentTextChange>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextChange());
  return o;
}

void checkUnnamed7513(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTextChange(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentTextChange);
  checkGoogleCloudDocumentaiV1beta2DocumentTextChange(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentTextChange);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentStyle> buildUnnamed7514() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentStyle>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentStyle());
  return o;
}

void checkUnnamed7514(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentStyle(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentStyle);
  checkGoogleCloudDocumentaiV1beta2DocumentStyle(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentStyle);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2Document = 0;
api.GoogleCloudDocumentaiV1beta2Document
    buildGoogleCloudDocumentaiV1beta2Document() {
  var o = api.GoogleCloudDocumentaiV1beta2Document();
  buildCounterGoogleCloudDocumentaiV1beta2Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed7508();
    o.entityRelations = buildUnnamed7509();
    o.error = buildGoogleRpcStatus();
    o.labels = buildUnnamed7510();
    o.mimeType = 'foo';
    o.pages = buildUnnamed7511();
    o.revisions = buildUnnamed7512();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta2DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed7513();
    o.textStyles = buildUnnamed7514();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2Document--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2Document(
    api.GoogleCloudDocumentaiV1beta2Document o) {
  buildCounterGoogleCloudDocumentaiV1beta2Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Document < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed7508(o.entities!);
    checkUnnamed7509(o.entityRelations!);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    checkUnnamed7510(o.labels!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed7511(o.pages!);
    checkUnnamed7512(o.revisions!);
    checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(
        o.shardInfo! as api.GoogleCloudDocumentaiV1beta2DocumentShardInfo);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed7513(o.textChanges!);
    checkUnnamed7514(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2Document--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> buildUnnamed7515() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  return o;
}

void checkUnnamed7515(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentEntity);
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentEntity);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity = 0;
api.GoogleCloudDocumentaiV1beta2DocumentEntity
    buildGoogleCloudDocumentaiV1beta2DocumentEntity() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor();
    o.properties = buildUnnamed7515();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentEntity(
    api.GoogleCloudDocumentaiV1beta2DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(
        o.normalizedValue!
            as api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue);
    checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(
        o.pageAnchor! as api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor);
    checkUnnamed7515(o.properties!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue =
    0;
api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
    buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue <
      3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.moneyValue = buildGoogleTypeMoney();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue <
      3) {
    checkGoogleTypePostalAddress(
        o.addressValue! as api.GoogleTypePostalAddress);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue! as api.GoogleTypeDate);
    checkGoogleTypeDateTime(o.datetimeValue! as api.GoogleTypeDateTime);
    checkGoogleTypeMoney(o.moneyValue! as api.GoogleTypeMoney);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation = 0;
api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation
    buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation < 3) {
    o.objectId = 'foo';
    o.relation = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel = 0;
api.GoogleCloudDocumentaiV1beta2DocumentLabel
    buildGoogleCloudDocumentaiV1beta2DocumentLabel() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentLabel();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel < 3) {
    o.automlModel = 'foo';
    o.confidence = 42.0;
    o.name = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentLabel(
    api.GoogleCloudDocumentaiV1beta2DocumentLabel o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel < 3) {
    unittest.expect(
      o.automlModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageBlock>
    buildUnnamed7516() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageBlock>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageBlock());
  return o;
}

void checkUnnamed7516(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageBlock);
  checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageBlock);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7517() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7517(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageFormField>
    buildUnnamed7518() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageFormField>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageFormField());
  return o;
}

void checkUnnamed7518(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageFormField);
  checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageFormField);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageLine> buildUnnamed7519() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageLine>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageLine());
  return o;
}

void checkUnnamed7519(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageLine(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageLine);
  checkGoogleCloudDocumentaiV1beta2DocumentPageLine(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageLine);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph>
    buildUnnamed7520() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph());
  return o;
}

void checkUnnamed7520(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph);
  checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTable>
    buildUnnamed7521() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTable>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTable());
  return o;
}

void checkUnnamed7521(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageTable);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageTable);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageToken>
    buildUnnamed7522() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageToken>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageToken());
  return o;
}

void checkUnnamed7522(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageToken(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageToken);
  checkGoogleCloudDocumentaiV1beta2DocumentPageToken(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageToken);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix>
    buildUnnamed7523() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix());
  return o;
}

void checkUnnamed7523(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix);
  checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>
    buildUnnamed7524() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement());
  return o;
}

void checkUnnamed7524(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement);
  checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPage = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPage
    buildGoogleCloudDocumentaiV1beta2DocumentPage() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPage < 3) {
    o.blocks = buildUnnamed7516();
    o.detectedLanguages = buildUnnamed7517();
    o.dimension = buildGoogleCloudDocumentaiV1beta2DocumentPageDimension();
    o.formFields = buildUnnamed7518();
    o.image = buildGoogleCloudDocumentaiV1beta2DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.lines = buildUnnamed7519();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed7520();
    o.tables = buildUnnamed7521();
    o.tokens = buildUnnamed7522();
    o.transforms = buildUnnamed7523();
    o.visualElements = buildUnnamed7524();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPage(
    api.GoogleCloudDocumentaiV1beta2DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPage < 3) {
    checkUnnamed7516(o.blocks!);
    checkUnnamed7517(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(
        o.dimension! as api.GoogleCloudDocumentaiV1beta2DocumentPageDimension);
    checkUnnamed7518(o.formFields!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageImage(
        o.image! as api.GoogleCloudDocumentaiV1beta2DocumentPageImage);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkUnnamed7519(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed7520(o.paragraphs!);
    checkUnnamed7521(o.tables!);
    checkUnnamed7522(o.tokens!);
    checkUnnamed7523(o.transforms!);
    checkUnnamed7524(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>
    buildUnnamed7525() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef());
  return o;
}

void checkUnnamed7525(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef);
  checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor
    buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed7525();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor < 3) {
    checkUnnamed7525(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
    o.confidence = 42.0;
    o.layoutId = 'foo';
    o.layoutType = 'foo';
    o.page = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1beta2BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.layoutId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layoutType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.page!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7526() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7526(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageBlock
    buildGoogleCloudDocumentaiV1beta2DocumentPageBlock() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed7526();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(
    api.GoogleCloudDocumentaiV1beta2DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock < 3) {
    checkUnnamed7526(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage =
    0;
api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageDimension
    buildGoogleCloudDocumentaiV1beta2DocumentPageDimension() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = 'foo';
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(
    api.GoogleCloudDocumentaiV1beta2DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7527() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7527(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7528() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7528(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageFormField
    buildGoogleCloudDocumentaiV1beta2DocumentPageFormField() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed7527();
    o.valueDetectedLanguages = buildUnnamed7528();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta2DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.fieldName! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.fieldValue! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkUnnamed7527(o.nameDetectedLanguages!);
    checkUnnamed7528(o.valueDetectedLanguages!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageImage
    buildGoogleCloudDocumentaiV1beta2DocumentPageImage() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage < 3) {
    o.content = 'foo';
    o.height = 42;
    o.mimeType = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageImage(
    api.GoogleCloudDocumentaiV1beta2DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageLayout
    buildGoogleCloudDocumentaiV1beta2DocumentPageLayout() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
    o.confidence = 42.0;
    o.orientation = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
    api.GoogleCloudDocumentaiV1beta2DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1beta2BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7529() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7529(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageLine
    buildGoogleCloudDocumentaiV1beta2DocumentPageLine() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed7529();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageLine(
    api.GoogleCloudDocumentaiV1beta2DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine < 3) {
    checkUnnamed7529(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix
    buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = 'foo';
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix < 3) {
    unittest.expect(
      o.cols!,
      unittest.equals(42),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7530() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7530(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph
    buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed7530();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph < 3) {
    checkUnnamed7530(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>
    buildUnnamed7531() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  return o;
}

void checkUnnamed7531(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7532() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7532(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>
    buildUnnamed7533() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  return o;
}

void checkUnnamed7533(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTable
    buildGoogleCloudDocumentaiV1beta2DocumentPageTable() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed7531();
    o.detectedLanguages = buildUnnamed7532();
    o.headerRows = buildUnnamed7533();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable < 3) {
    checkUnnamed7531(o.bodyRows!);
    checkUnnamed7532(o.detectedLanguages!);
    checkUnnamed7533(o.headerRows!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7534() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7534(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed7534();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell < 3) {
    unittest.expect(
      o.colSpan!,
      unittest.equals(42),
    );
    checkUnnamed7534(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>
    buildUnnamed7535() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell());
  return o;
}

void checkUnnamed7535(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed7535();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow < 3) {
    checkUnnamed7535(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7536() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7536(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageToken
    buildGoogleCloudDocumentaiV1beta2DocumentPageToken() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed7536();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageToken(
    api.GoogleCloudDocumentaiV1beta2DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(
        o.detectedBreak!
            as api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak);
    checkUnnamed7536(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak <
      3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7537() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7537(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed7537();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement < 3) {
    checkUnnamed7537(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>
    buildUnnamed7538() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent());
  return o;
}

void checkUnnamed7538(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1beta2DocumentProvenance
    buildGoogleCloudDocumentaiV1beta2DocumentProvenance() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed7538();
    o.revision = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
    api.GoogleCloudDocumentaiV1beta2DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    checkUnnamed7538(o.parents!);
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent = 0;
api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent
    buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent < 3) {
    o.id = 42;
    o.index = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent--;
}

core.List<core.int> buildUnnamed7539() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7539(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision = 0;
api.GoogleCloudDocumentaiV1beta2DocumentRevision
    buildGoogleCloudDocumentaiV1beta2DocumentRevision() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed7539();
    o.processor = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentRevision(
    api.GoogleCloudDocumentaiV1beta2DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(o.humanReview!
        as api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed7539(o.parent!);
    unittest.expect(
      o.processor!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview =
    0;
api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview
    buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo = 0;
api.GoogleCloudDocumentaiV1beta2DocumentShardInfo
    buildGoogleCloudDocumentaiV1beta2DocumentShardInfo() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo < 3) {
    o.shardCount = 'foo';
    o.shardIndex = 'foo';
    o.textOffset = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(
    api.GoogleCloudDocumentaiV1beta2DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo < 3) {
    unittest.expect(
      o.shardCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shardIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle = 0;
api.GoogleCloudDocumentaiV1beta2DocumentStyle
    buildGoogleCloudDocumentaiV1beta2DocumentStyle() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
    o.fontWeight = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
    o.textDecoration = 'foo';
    o.textStyle = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentStyle(
    api.GoogleCloudDocumentaiV1beta2DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor! as api.GoogleTypeColor);
    checkGoogleTypeColor(o.color! as api.GoogleTypeColor);
    checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(
        o.fontSize! as api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor);
    unittest.expect(
      o.textDecoration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textStyle!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize = 0;
api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize
    buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize < 3) {
    unittest.expect(
      o.size!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>
    buildUnnamed7540() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment());
  return o;
}

void checkUnnamed7540(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment);
  checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor
    buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed7540();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed7540(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment =
    0;
api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment <
      3) {
    o.endIndex = 'foo';
    o.startIndex = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance>
    buildUnnamed7541() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentProvenance>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  return o;
}

void checkUnnamed7541(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1beta2DocumentTextChange
    buildGoogleCloudDocumentaiV1beta2DocumentTextChange() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed7541();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentTextChange(
    api.GoogleCloudDocumentaiV1beta2DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange < 3) {
    unittest.expect(
      o.changedText!,
      unittest.equals('foo'),
    );
    checkUnnamed7541(o.provenance!);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2GcsDestination = 0;
api.GoogleCloudDocumentaiV1beta2GcsDestination
    buildGoogleCloudDocumentaiV1beta2GcsDestination() {
  var o = api.GoogleCloudDocumentaiV1beta2GcsDestination();
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2GcsDestination(
    api.GoogleCloudDocumentaiV1beta2GcsDestination o) {
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2GcsSource = 0;
api.GoogleCloudDocumentaiV1beta2GcsSource
    buildGoogleCloudDocumentaiV1beta2GcsSource() {
  var o = api.GoogleCloudDocumentaiV1beta2GcsSource();
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2GcsSource(
    api.GoogleCloudDocumentaiV1beta2GcsSource o) {
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2InputConfig = 0;
api.GoogleCloudDocumentaiV1beta2InputConfig
    buildGoogleCloudDocumentaiV1beta2InputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta2InputConfig();
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2InputConfig < 3) {
    o.contents = 'foo';
    o.gcsSource = buildGoogleCloudDocumentaiV1beta2GcsSource();
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2InputConfig(
    api.GoogleCloudDocumentaiV1beta2InputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2InputConfig < 3) {
    unittest.expect(
      o.contents!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2GcsSource(
        o.gcsSource! as api.GoogleCloudDocumentaiV1beta2GcsSource);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex = 0;
api.GoogleCloudDocumentaiV1beta2NormalizedVertex
    buildGoogleCloudDocumentaiV1beta2NormalizedVertex() {
  var o = api.GoogleCloudDocumentaiV1beta2NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2NormalizedVertex(
    api.GoogleCloudDocumentaiV1beta2NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata = 0;
api.GoogleCloudDocumentaiV1beta2OperationMetadata
    buildGoogleCloudDocumentaiV1beta2OperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta2OperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2OperationMetadata(
    api.GoogleCloudDocumentaiV1beta2OperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2OutputConfig = 0;
api.GoogleCloudDocumentaiV1beta2OutputConfig
    buildGoogleCloudDocumentaiV1beta2OutputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta2OutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDocumentaiV1beta2GcsDestination();
    o.pagesPerShard = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2OutputConfig(
    api.GoogleCloudDocumentaiV1beta2OutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta2GcsDestination(
        o.gcsDestination! as api.GoogleCloudDocumentaiV1beta2GcsDestination);
    unittest.expect(
      o.pagesPerShard!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse = 0;
api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse
    buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse() {
  var o = api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse < 3) {
    o.inputConfig = buildGoogleCloudDocumentaiV1beta2InputConfig();
    o.outputConfig = buildGoogleCloudDocumentaiV1beta2OutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(
    api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse < 3) {
    checkGoogleCloudDocumentaiV1beta2InputConfig(
        o.inputConfig! as api.GoogleCloudDocumentaiV1beta2InputConfig);
    checkGoogleCloudDocumentaiV1beta2OutputConfig(
        o.outputConfig! as api.GoogleCloudDocumentaiV1beta2OutputConfig);
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2Vertex = 0;
api.GoogleCloudDocumentaiV1beta2Vertex
    buildGoogleCloudDocumentaiV1beta2Vertex() {
  var o = api.GoogleCloudDocumentaiV1beta2Vertex();
  buildCounterGoogleCloudDocumentaiV1beta2Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2Vertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2Vertex(
    api.GoogleCloudDocumentaiV1beta2Vertex o) {
  buildCounterGoogleCloudDocumentaiV1beta2Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2Vertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig = 0;
api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig
    buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig < 3) {
    o.gcsDocuments = buildGoogleCloudDocumentaiV1beta3GcsDocuments();
    o.gcsPrefix = buildGoogleCloudDocumentaiV1beta3GcsPrefix();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(
    api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta3GcsDocuments(
        o.gcsDocuments! as api.GoogleCloudDocumentaiV1beta3GcsDocuments);
    checkGoogleCloudDocumentaiV1beta3GcsPrefix(
        o.gcsPrefix! as api.GoogleCloudDocumentaiV1beta3GcsPrefix);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig--;
}

core.List<
        api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>
    buildUnnamed7542() {
  var o = <
      api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>[];
  o.add(
      buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus());
  o.add(
      buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus());
  return o;
}

void checkUnnamed7542(
    core.List<
            api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
      o[0] as api
          .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus);
  checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
      o[1] as api
          .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata = 0;
api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata
    buildGoogleCloudDocumentaiV1beta3BatchProcessMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata < 3) {
    o.createTime = 'foo';
    o.individualProcessStatuses = buildUnnamed7542();
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessMetadata(
    api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7542(o.individualProcessStatuses!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus =
    0;
api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
    buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus() {
  var o = api
      .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus <
      3) {
    o.humanReviewOperation = 'foo';
    o.humanReviewStatus = buildGoogleCloudDocumentaiV1beta3HumanReviewStatus();
    o.inputGcsSource = 'foo';
    o.outputGcsDestination = 'foo';
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
    api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
        o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus <
      3) {
    unittest.expect(
      o.humanReviewOperation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(o.humanReviewStatus!
        as api.GoogleCloudDocumentaiV1beta3HumanReviewStatus);
    unittest.expect(
      o.inputGcsSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputGcsDestination!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.status! as api.GoogleRpcStatus);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus--;
}

core.List<api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>
    buildUnnamed7543() {
  var o =
      <api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>[];
  o.add(buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig());
  o.add(buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig());
  return o;
}

void checkUnnamed7543(
    core.List<
            api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(o[0]
      as api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig);
  checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(o[1]
      as api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest = 0;
api.GoogleCloudDocumentaiV1beta3BatchProcessRequest
    buildGoogleCloudDocumentaiV1beta3BatchProcessRequest() {
  var o = api.GoogleCloudDocumentaiV1beta3BatchProcessRequest();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest < 3) {
    o.documentOutputConfig =
        buildGoogleCloudDocumentaiV1beta3DocumentOutputConfig();
    o.inputConfigs = buildUnnamed7543();
    o.inputDocuments =
        buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
    o.outputConfig =
        buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig();
    o.skipHumanReview = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(
    api.GoogleCloudDocumentaiV1beta3BatchProcessRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentOutputConfig(
        o.documentOutputConfig!
            as api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig);
    checkUnnamed7543(o.inputConfigs!);
    checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(o.inputDocuments!
        as api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig);
    checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig(
        o.outputConfig! as api
            .GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig =
    0;
api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig
    buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig <
      3) {
    o.gcsSource = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(
    api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig <
      3) {
    unittest.expect(
      o.gcsSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig =
    0;
api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig
    buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig() {
  var o =
      api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig <
      3) {
    o.gcsDestination = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig(
    api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig <
      3) {
    unittest.expect(
      o.gcsDestination!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse = 0;
api.GoogleCloudDocumentaiV1beta3BatchProcessResponse
    buildGoogleCloudDocumentaiV1beta3BatchProcessResponse() {
  var o = api.GoogleCloudDocumentaiV1beta3BatchProcessResponse();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessResponse(
    api.GoogleCloudDocumentaiV1beta3BatchProcessResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta3NormalizedVertex> buildUnnamed7544() {
  var o = <api.GoogleCloudDocumentaiV1beta3NormalizedVertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta3NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta3NormalizedVertex());
  return o;
}

void checkUnnamed7544(
    core.List<api.GoogleCloudDocumentaiV1beta3NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3NormalizedVertex(
      o[0] as api.GoogleCloudDocumentaiV1beta3NormalizedVertex);
  checkGoogleCloudDocumentaiV1beta3NormalizedVertex(
      o[1] as api.GoogleCloudDocumentaiV1beta3NormalizedVertex);
}

core.List<api.GoogleCloudDocumentaiV1beta3Vertex> buildUnnamed7545() {
  var o = <api.GoogleCloudDocumentaiV1beta3Vertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta3Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta3Vertex());
  return o;
}

void checkUnnamed7545(core.List<api.GoogleCloudDocumentaiV1beta3Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3Vertex(
      o[0] as api.GoogleCloudDocumentaiV1beta3Vertex);
  checkGoogleCloudDocumentaiV1beta3Vertex(
      o[1] as api.GoogleCloudDocumentaiV1beta3Vertex);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly = 0;
api.GoogleCloudDocumentaiV1beta3BoundingPoly
    buildGoogleCloudDocumentaiV1beta3BoundingPoly() {
  var o = api.GoogleCloudDocumentaiV1beta3BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed7544();
    o.vertices = buildUnnamed7545();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BoundingPoly(
    api.GoogleCloudDocumentaiV1beta3BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly < 3) {
    checkUnnamed7544(o.normalizedVertices!);
    checkUnnamed7545(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata = 0;
api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata
    buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(
    api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest = 0;
api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest
    buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest() {
  var o = api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest();
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DisableProcessorRequest(
    api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> buildUnnamed7546() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntity());
  return o;
}

void checkUnnamed7546(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentEntity);
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentEntity);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation>
    buildUnnamed7547() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation());
  return o;
}

void checkUnnamed7547(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation);
  checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPage> buildUnnamed7548() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPage());
  return o;
}

void checkUnnamed7548(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPage);
  checkGoogleCloudDocumentaiV1beta3DocumentPage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPage);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentRevision> buildUnnamed7549() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentRevision>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentRevision());
  return o;
}

void checkUnnamed7549(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentRevision(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentRevision);
  checkGoogleCloudDocumentaiV1beta3DocumentRevision(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentRevision);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextChange>
    buildUnnamed7550() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentTextChange>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentTextChange());
  return o;
}

void checkUnnamed7550(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentTextChange(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentTextChange);
  checkGoogleCloudDocumentaiV1beta3DocumentTextChange(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentTextChange);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentStyle> buildUnnamed7551() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentStyle>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentStyle());
  return o;
}

void checkUnnamed7551(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentStyle(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentStyle);
  checkGoogleCloudDocumentaiV1beta3DocumentStyle(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentStyle);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Document = 0;
api.GoogleCloudDocumentaiV1beta3Document
    buildGoogleCloudDocumentaiV1beta3Document() {
  var o = api.GoogleCloudDocumentaiV1beta3Document();
  buildCounterGoogleCloudDocumentaiV1beta3Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed7546();
    o.entityRelations = buildUnnamed7547();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed7548();
    o.revisions = buildUnnamed7549();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta3DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed7550();
    o.textStyles = buildUnnamed7551();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3Document--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Document(
    api.GoogleCloudDocumentaiV1beta3Document o) {
  buildCounterGoogleCloudDocumentaiV1beta3Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Document < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed7546(o.entities!);
    checkUnnamed7547(o.entityRelations!);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed7548(o.pages!);
    checkUnnamed7549(o.revisions!);
    checkGoogleCloudDocumentaiV1beta3DocumentShardInfo(
        o.shardInfo! as api.GoogleCloudDocumentaiV1beta3DocumentShardInfo);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed7550(o.textChanges!);
    checkUnnamed7551(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3Document--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> buildUnnamed7552() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntity());
  return o;
}

void checkUnnamed7552(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentEntity);
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentEntity);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity = 0;
api.GoogleCloudDocumentaiV1beta3DocumentEntity
    buildGoogleCloudDocumentaiV1beta3DocumentEntity() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchor();
    o.properties = buildUnnamed7552();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentEntity(
    api.GoogleCloudDocumentaiV1beta3DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue(
        o.normalizedValue!
            as api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue);
    checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(
        o.pageAnchor! as api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor);
    checkUnnamed7552(o.properties!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta3DocumentProvenance);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue
    buildGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue <
      3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.moneyValue = buildGoogleTypeMoney();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue <
      3) {
    checkGoogleTypePostalAddress(
        o.addressValue! as api.GoogleTypePostalAddress);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue! as api.GoogleTypeDate);
    checkGoogleTypeDateTime(o.datetimeValue! as api.GoogleTypeDateTime);
    checkGoogleTypeMoney(o.moneyValue! as api.GoogleTypeMoney);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation = 0;
api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation
    buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation < 3) {
    o.objectId = 'foo';
    o.relation = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig = 0;
api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig
    buildGoogleCloudDocumentaiV1beta3DocumentOutputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig < 3) {
    o.gcsOutputConfig =
        buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentOutputConfig(
    api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(o
            .gcsOutputConfig!
        as api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig
    buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig <
      3) {
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(
    api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig <
      3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageBlock>
    buildUnnamed7553() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageBlock>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageBlock());
  return o;
}

void checkUnnamed7553(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageBlock);
  checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageBlock);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7554() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7554(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageFormField>
    buildUnnamed7555() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageFormField>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageFormField());
  return o;
}

void checkUnnamed7555(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageFormField);
  checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageFormField);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageLine> buildUnnamed7556() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageLine>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageLine());
  return o;
}

void checkUnnamed7556(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageLine(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageLine);
  checkGoogleCloudDocumentaiV1beta3DocumentPageLine(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageLine);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph>
    buildUnnamed7557() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph());
  return o;
}

void checkUnnamed7557(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph);
  checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTable>
    buildUnnamed7558() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageTable>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTable());
  return o;
}

void checkUnnamed7558(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTable(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageTable);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTable(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageTable);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageToken>
    buildUnnamed7559() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageToken>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageToken());
  return o;
}

void checkUnnamed7559(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageToken(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageToken);
  checkGoogleCloudDocumentaiV1beta3DocumentPageToken(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageToken);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix>
    buildUnnamed7560() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix());
  return o;
}

void checkUnnamed7560(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix);
  checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement>
    buildUnnamed7561() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement());
  return o;
}

void checkUnnamed7561(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement);
  checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPage = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPage
    buildGoogleCloudDocumentaiV1beta3DocumentPage() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPage < 3) {
    o.blocks = buildUnnamed7553();
    o.detectedLanguages = buildUnnamed7554();
    o.dimension = buildGoogleCloudDocumentaiV1beta3DocumentPageDimension();
    o.formFields = buildUnnamed7555();
    o.image = buildGoogleCloudDocumentaiV1beta3DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.lines = buildUnnamed7556();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed7557();
    o.tables = buildUnnamed7558();
    o.tokens = buildUnnamed7559();
    o.transforms = buildUnnamed7560();
    o.visualElements = buildUnnamed7561();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPage(
    api.GoogleCloudDocumentaiV1beta3DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPage < 3) {
    checkUnnamed7553(o.blocks!);
    checkUnnamed7554(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageDimension(
        o.dimension! as api.GoogleCloudDocumentaiV1beta3DocumentPageDimension);
    checkUnnamed7555(o.formFields!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageImage(
        o.image! as api.GoogleCloudDocumentaiV1beta3DocumentPageImage);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
    checkUnnamed7556(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed7557(o.paragraphs!);
    checkUnnamed7558(o.tables!);
    checkUnnamed7559(o.tokens!);
    checkUnnamed7560(o.transforms!);
    checkUnnamed7561(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef>
    buildUnnamed7562() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef());
  return o;
}

void checkUnnamed7562(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef);
  checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor
    buildGoogleCloudDocumentaiV1beta3DocumentPageAnchor() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed7562();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor < 3) {
    checkUnnamed7562(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta3BoundingPoly();
    o.confidence = 42.0;
    o.layoutId = 'foo';
    o.layoutType = 'foo';
    o.page = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta3BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1beta3BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.layoutId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layoutType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.page!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7563() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7563(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageBlock
    buildGoogleCloudDocumentaiV1beta3DocumentPageBlock() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed7563();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(
    api.GoogleCloudDocumentaiV1beta3DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock < 3) {
    checkUnnamed7563(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta3DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageDimension
    buildGoogleCloudDocumentaiV1beta3DocumentPageDimension() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = 'foo';
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageDimension(
    api.GoogleCloudDocumentaiV1beta3DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7564() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7564(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7565() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7565(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageFormField
    buildGoogleCloudDocumentaiV1beta3DocumentPageFormField() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed7564();
    o.valueDetectedLanguages = buildUnnamed7565();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta3DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
        o.fieldName! as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
        o.fieldValue! as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
    checkUnnamed7564(o.nameDetectedLanguages!);
    checkUnnamed7565(o.valueDetectedLanguages!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageImage
    buildGoogleCloudDocumentaiV1beta3DocumentPageImage() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage < 3) {
    o.content = 'foo';
    o.height = 42;
    o.mimeType = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageImage(
    api.GoogleCloudDocumentaiV1beta3DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageLayout
    buildGoogleCloudDocumentaiV1beta3DocumentPageLayout() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta3BoundingPoly();
    o.confidence = 42.0;
    o.orientation = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
    api.GoogleCloudDocumentaiV1beta3DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta3BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1beta3BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7566() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7566(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageLine
    buildGoogleCloudDocumentaiV1beta3DocumentPageLine() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed7566();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageLine(
    api.GoogleCloudDocumentaiV1beta3DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine < 3) {
    checkUnnamed7566(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta3DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix
    buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = 'foo';
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix < 3) {
    unittest.expect(
      o.cols!,
      unittest.equals(42),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7567() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7567(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph
    buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed7567();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph < 3) {
    checkUnnamed7567(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta3DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>
    buildUnnamed7568() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow());
  return o;
}

void checkUnnamed7568(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7569() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7569(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>
    buildUnnamed7570() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow());
  return o;
}

void checkUnnamed7570(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTable
    buildGoogleCloudDocumentaiV1beta3DocumentPageTable() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed7568();
    o.detectedLanguages = buildUnnamed7569();
    o.headerRows = buildUnnamed7570();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta3DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable < 3) {
    checkUnnamed7568(o.bodyRows!);
    checkUnnamed7569(o.detectedLanguages!);
    checkUnnamed7570(o.headerRows!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7571() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7571(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed7571();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell < 3) {
    unittest.expect(
      o.colSpan!,
      unittest.equals(42),
    );
    checkUnnamed7571(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell>
    buildUnnamed7572() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell());
  return o;
}

void checkUnnamed7572(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed7572();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow < 3) {
    checkUnnamed7572(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7573() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7573(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageToken
    buildGoogleCloudDocumentaiV1beta3DocumentPageToken() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed7573();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageToken(
    api.GoogleCloudDocumentaiV1beta3DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak(
        o.detectedBreak!
            as api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak);
    checkUnnamed7573(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta3DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak <
      3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7574() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7574(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed7574();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement < 3) {
    checkUnnamed7574(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent>
    buildUnnamed7575() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent());
  return o;
}

void checkUnnamed7575(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent);
  checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1beta3DocumentProvenance
    buildGoogleCloudDocumentaiV1beta3DocumentProvenance() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed7575();
    o.revision = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
    api.GoogleCloudDocumentaiV1beta3DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    checkUnnamed7575(o.parents!);
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent = 0;
api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent
    buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent < 3) {
    o.id = 42;
    o.index = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent--;
}

core.List<core.int> buildUnnamed7576() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7576(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision = 0;
api.GoogleCloudDocumentaiV1beta3DocumentRevision
    buildGoogleCloudDocumentaiV1beta3DocumentRevision() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed7576();
    o.processor = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentRevision(
    api.GoogleCloudDocumentaiV1beta3DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview(o.humanReview!
        as api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed7576(o.parent!);
    unittest.expect(
      o.processor!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview
    buildGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo = 0;
api.GoogleCloudDocumentaiV1beta3DocumentShardInfo
    buildGoogleCloudDocumentaiV1beta3DocumentShardInfo() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo < 3) {
    o.shardCount = 'foo';
    o.shardIndex = 'foo';
    o.textOffset = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentShardInfo(
    api.GoogleCloudDocumentaiV1beta3DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo < 3) {
    unittest.expect(
      o.shardCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shardIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle = 0;
api.GoogleCloudDocumentaiV1beta3DocumentStyle
    buildGoogleCloudDocumentaiV1beta3DocumentStyle() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1beta3DocumentStyleFontSize();
    o.fontWeight = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
    o.textDecoration = 'foo';
    o.textStyle = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentStyle(
    api.GoogleCloudDocumentaiV1beta3DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor! as api.GoogleTypeColor);
    checkGoogleTypeColor(o.color! as api.GoogleTypeColor);
    checkGoogleCloudDocumentaiV1beta3DocumentStyleFontSize(
        o.fontSize! as api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor);
    unittest.expect(
      o.textDecoration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textStyle!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize = 0;
api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize
    buildGoogleCloudDocumentaiV1beta3DocumentStyleFontSize() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize < 3) {
    unittest.expect(
      o.size!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment>
    buildUnnamed7577() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment());
  return o;
}

void checkUnnamed7577(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment);
  checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor
    buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed7577();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed7577(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment <
      3) {
    o.endIndex = 'foo';
    o.startIndex = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenance>
    buildUnnamed7578() {
  var o = <api.GoogleCloudDocumentaiV1beta3DocumentProvenance>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentProvenance());
  return o;
}

void checkUnnamed7578(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
      o[0] as api.GoogleCloudDocumentaiV1beta3DocumentProvenance);
  checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
      o[1] as api.GoogleCloudDocumentaiV1beta3DocumentProvenance);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1beta3DocumentTextChange
    buildGoogleCloudDocumentaiV1beta3DocumentTextChange() {
  var o = api.GoogleCloudDocumentaiV1beta3DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed7578();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentTextChange(
    api.GoogleCloudDocumentaiV1beta3DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange < 3) {
    unittest.expect(
      o.changedText!,
      unittest.equals('foo'),
    );
    checkUnnamed7578(o.provenance!);
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest = 0;
api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest
    buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest() {
  var o = api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest();
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EnableProcessorRequest(
    api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorType> buildUnnamed7579() {
  var o = <api.GoogleCloudDocumentaiV1beta3ProcessorType>[];
  o.add(buildGoogleCloudDocumentaiV1beta3ProcessorType());
  o.add(buildGoogleCloudDocumentaiV1beta3ProcessorType());
  return o;
}

void checkUnnamed7579(
    core.List<api.GoogleCloudDocumentaiV1beta3ProcessorType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ProcessorType(
      o[0] as api.GoogleCloudDocumentaiV1beta3ProcessorType);
  checkGoogleCloudDocumentaiV1beta3ProcessorType(
      o[1] as api.GoogleCloudDocumentaiV1beta3ProcessorType);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse =
    0;
api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse
    buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse() {
  var o = api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse();
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse < 3) {
    o.processorTypes = buildUnnamed7579();
  }
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(
    api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse < 3) {
    checkUnnamed7579(o.processorTypes!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3GcsDocument = 0;
api.GoogleCloudDocumentaiV1beta3GcsDocument
    buildGoogleCloudDocumentaiV1beta3GcsDocument() {
  var o = api.GoogleCloudDocumentaiV1beta3GcsDocument();
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocument < 3) {
    o.gcsUri = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocument--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3GcsDocument(
    api.GoogleCloudDocumentaiV1beta3GcsDocument o) {
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocument < 3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocument--;
}

core.List<api.GoogleCloudDocumentaiV1beta3GcsDocument> buildUnnamed7580() {
  var o = <api.GoogleCloudDocumentaiV1beta3GcsDocument>[];
  o.add(buildGoogleCloudDocumentaiV1beta3GcsDocument());
  o.add(buildGoogleCloudDocumentaiV1beta3GcsDocument());
  return o;
}

void checkUnnamed7580(
    core.List<api.GoogleCloudDocumentaiV1beta3GcsDocument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3GcsDocument(
      o[0] as api.GoogleCloudDocumentaiV1beta3GcsDocument);
  checkGoogleCloudDocumentaiV1beta3GcsDocument(
      o[1] as api.GoogleCloudDocumentaiV1beta3GcsDocument);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments = 0;
api.GoogleCloudDocumentaiV1beta3GcsDocuments
    buildGoogleCloudDocumentaiV1beta3GcsDocuments() {
  var o = api.GoogleCloudDocumentaiV1beta3GcsDocuments();
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments < 3) {
    o.documents = buildUnnamed7580();
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3GcsDocuments(
    api.GoogleCloudDocumentaiV1beta3GcsDocuments o) {
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments < 3) {
    checkUnnamed7580(o.documents!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix = 0;
api.GoogleCloudDocumentaiV1beta3GcsPrefix
    buildGoogleCloudDocumentaiV1beta3GcsPrefix() {
  var o = api.GoogleCloudDocumentaiV1beta3GcsPrefix();
  buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix < 3) {
    o.gcsUriPrefix = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3GcsPrefix(
    api.GoogleCloudDocumentaiV1beta3GcsPrefix o) {
  buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix < 3) {
    unittest.expect(
      o.gcsUriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus = 0;
api.GoogleCloudDocumentaiV1beta3HumanReviewStatus
    buildGoogleCloudDocumentaiV1beta3HumanReviewStatus() {
  var o = api.GoogleCloudDocumentaiV1beta3HumanReviewStatus();
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus < 3) {
    o.humanReviewOperation = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(
    api.GoogleCloudDocumentaiV1beta3HumanReviewStatus o) {
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus < 3) {
    unittest.expect(
      o.humanReviewOperation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus--;
}

core.List<api.GoogleCloudDocumentaiV1beta3Processor> buildUnnamed7581() {
  var o = <api.GoogleCloudDocumentaiV1beta3Processor>[];
  o.add(buildGoogleCloudDocumentaiV1beta3Processor());
  o.add(buildGoogleCloudDocumentaiV1beta3Processor());
  return o;
}

void checkUnnamed7581(core.List<api.GoogleCloudDocumentaiV1beta3Processor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3Processor(
      o[0] as api.GoogleCloudDocumentaiV1beta3Processor);
  checkGoogleCloudDocumentaiV1beta3Processor(
      o[1] as api.GoogleCloudDocumentaiV1beta3Processor);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse = 0;
api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse
    buildGoogleCloudDocumentaiV1beta3ListProcessorsResponse() {
  var o = api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.processors = buildUnnamed7581();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ListProcessorsResponse(
    api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7581(o.processors!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex = 0;
api.GoogleCloudDocumentaiV1beta3NormalizedVertex
    buildGoogleCloudDocumentaiV1beta3NormalizedVertex() {
  var o = api.GoogleCloudDocumentaiV1beta3NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3NormalizedVertex(
    api.GoogleCloudDocumentaiV1beta3NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest = 0;
api.GoogleCloudDocumentaiV1beta3ProcessRequest
    buildGoogleCloudDocumentaiV1beta3ProcessRequest() {
  var o = api.GoogleCloudDocumentaiV1beta3ProcessRequest();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest < 3) {
    o.document = buildGoogleCloudDocumentaiV1beta3Document();
    o.inlineDocument = buildGoogleCloudDocumentaiV1beta3Document();
    o.rawDocument = buildGoogleCloudDocumentaiV1beta3RawDocument();
    o.skipHumanReview = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessRequest(
    api.GoogleCloudDocumentaiV1beta3ProcessRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(
        o.document! as api.GoogleCloudDocumentaiV1beta3Document);
    checkGoogleCloudDocumentaiV1beta3Document(
        o.inlineDocument! as api.GoogleCloudDocumentaiV1beta3Document);
    checkGoogleCloudDocumentaiV1beta3RawDocument(
        o.rawDocument! as api.GoogleCloudDocumentaiV1beta3RawDocument);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse = 0;
api.GoogleCloudDocumentaiV1beta3ProcessResponse
    buildGoogleCloudDocumentaiV1beta3ProcessResponse() {
  var o = api.GoogleCloudDocumentaiV1beta3ProcessResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse < 3) {
    o.document = buildGoogleCloudDocumentaiV1beta3Document();
    o.humanReviewOperation = 'foo';
    o.humanReviewStatus = buildGoogleCloudDocumentaiV1beta3HumanReviewStatus();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessResponse(
    api.GoogleCloudDocumentaiV1beta3ProcessResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(
        o.document! as api.GoogleCloudDocumentaiV1beta3Document);
    unittest.expect(
      o.humanReviewOperation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(o.humanReviewStatus!
        as api.GoogleCloudDocumentaiV1beta3HumanReviewStatus);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Processor = 0;
api.GoogleCloudDocumentaiV1beta3Processor
    buildGoogleCloudDocumentaiV1beta3Processor() {
  var o = api.GoogleCloudDocumentaiV1beta3Processor();
  buildCounterGoogleCloudDocumentaiV1beta3Processor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Processor < 3) {
    o.createTime = 'foo';
    o.defaultProcessorVersion = 'foo';
    o.displayName = 'foo';
    o.kmsKeyName = 'foo';
    o.name = 'foo';
    o.processEndpoint = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3Processor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Processor(
    api.GoogleCloudDocumentaiV1beta3Processor o) {
  buildCounterGoogleCloudDocumentaiV1beta3Processor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Processor < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultProcessorVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.processEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3Processor--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo>
    buildUnnamed7582() {
  var o = <api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo>[];
  o.add(buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo());
  o.add(buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo());
  return o;
}

void checkUnnamed7582(
    core.List<api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(
      o[0] as api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo);
  checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(
      o[1] as api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessorType = 0;
api.GoogleCloudDocumentaiV1beta3ProcessorType
    buildGoogleCloudDocumentaiV1beta3ProcessorType() {
  var o = api.GoogleCloudDocumentaiV1beta3ProcessorType();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorType < 3) {
    o.allowCreation = true;
    o.availableLocations = buildUnnamed7582();
    o.category = 'foo';
    o.name = 'foo';
    o.schema = buildGoogleCloudDocumentaiV1beta3Schema();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessorType(
    api.GoogleCloudDocumentaiV1beta3ProcessorType o) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorType < 3) {
    unittest.expect(o.allowCreation!, unittest.isTrue);
    checkUnnamed7582(o.availableLocations!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3Schema(
        o.schema! as api.GoogleCloudDocumentaiV1beta3Schema);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo = 0;
api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo
    buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo() {
  var o = api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo < 3) {
    o.locationId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(
    api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo < 3) {
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3RawDocument = 0;
api.GoogleCloudDocumentaiV1beta3RawDocument
    buildGoogleCloudDocumentaiV1beta3RawDocument() {
  var o = api.GoogleCloudDocumentaiV1beta3RawDocument();
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3RawDocument < 3) {
    o.content = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3RawDocument(
    api.GoogleCloudDocumentaiV1beta3RawDocument o) {
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3RawDocument < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata = 0;
api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
    buildGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest = 0;
api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest
    buildGoogleCloudDocumentaiV1beta3ReviewDocumentRequest() {
  var o = api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest < 3) {
    o.document = buildGoogleCloudDocumentaiV1beta3Document();
    o.inlineDocument = buildGoogleCloudDocumentaiV1beta3Document();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(
        o.document! as api.GoogleCloudDocumentaiV1beta3Document);
    checkGoogleCloudDocumentaiV1beta3Document(
        o.inlineDocument! as api.GoogleCloudDocumentaiV1beta3Document);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse = 0;
api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse
    buildGoogleCloudDocumentaiV1beta3ReviewDocumentResponse() {
  var o = api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse < 3) {
    o.gcsDestination = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ReviewDocumentResponse(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse < 3) {
    unittest.expect(
      o.gcsDestination!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta3SchemaEntityType> buildUnnamed7583() {
  var o = <api.GoogleCloudDocumentaiV1beta3SchemaEntityType>[];
  o.add(buildGoogleCloudDocumentaiV1beta3SchemaEntityType());
  o.add(buildGoogleCloudDocumentaiV1beta3SchemaEntityType());
  return o;
}

void checkUnnamed7583(
    core.List<api.GoogleCloudDocumentaiV1beta3SchemaEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3SchemaEntityType(
      o[0] as api.GoogleCloudDocumentaiV1beta3SchemaEntityType);
  checkGoogleCloudDocumentaiV1beta3SchemaEntityType(
      o[1] as api.GoogleCloudDocumentaiV1beta3SchemaEntityType);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Schema = 0;
api.GoogleCloudDocumentaiV1beta3Schema
    buildGoogleCloudDocumentaiV1beta3Schema() {
  var o = api.GoogleCloudDocumentaiV1beta3Schema();
  buildCounterGoogleCloudDocumentaiV1beta3Schema++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Schema < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.entityTypes = buildUnnamed7583();
  }
  buildCounterGoogleCloudDocumentaiV1beta3Schema--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Schema(
    api.GoogleCloudDocumentaiV1beta3Schema o) {
  buildCounterGoogleCloudDocumentaiV1beta3Schema++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Schema < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed7583(o.entityTypes!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3Schema--;
}

core.List<core.String> buildUnnamed7584() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7584(core.List<core.String> o) {
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

core.List<api.GoogleCloudDocumentaiV1beta3SchemaEntityType> buildUnnamed7585() {
  var o = <api.GoogleCloudDocumentaiV1beta3SchemaEntityType>[];
  o.add(buildGoogleCloudDocumentaiV1beta3SchemaEntityType());
  o.add(buildGoogleCloudDocumentaiV1beta3SchemaEntityType());
  return o;
}

void checkUnnamed7585(
    core.List<api.GoogleCloudDocumentaiV1beta3SchemaEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3SchemaEntityType(
      o[0] as api.GoogleCloudDocumentaiV1beta3SchemaEntityType);
  checkGoogleCloudDocumentaiV1beta3SchemaEntityType(
      o[1] as api.GoogleCloudDocumentaiV1beta3SchemaEntityType);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3SchemaEntityType = 0;
api.GoogleCloudDocumentaiV1beta3SchemaEntityType
    buildGoogleCloudDocumentaiV1beta3SchemaEntityType() {
  var o = api.GoogleCloudDocumentaiV1beta3SchemaEntityType();
  buildCounterGoogleCloudDocumentaiV1beta3SchemaEntityType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3SchemaEntityType < 3) {
    o.baseType = 'foo';
    o.description = 'foo';
    o.enumValues = buildUnnamed7584();
    o.occurrenceType = 'foo';
    o.properties = buildUnnamed7585();
    o.source = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3SchemaEntityType--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3SchemaEntityType(
    api.GoogleCloudDocumentaiV1beta3SchemaEntityType o) {
  buildCounterGoogleCloudDocumentaiV1beta3SchemaEntityType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3SchemaEntityType < 3) {
    unittest.expect(
      o.baseType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed7584(o.enumValues!);
    unittest.expect(
      o.occurrenceType!,
      unittest.equals('foo'),
    );
    checkUnnamed7585(o.properties!);
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3SchemaEntityType--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Vertex = 0;
api.GoogleCloudDocumentaiV1beta3Vertex
    buildGoogleCloudDocumentaiV1beta3Vertex() {
  var o = api.GoogleCloudDocumentaiV1beta3Vertex();
  buildCounterGoogleCloudDocumentaiV1beta3Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3Vertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Vertex(
    api.GoogleCloudDocumentaiV1beta3Vertex o) {
  buildCounterGoogleCloudDocumentaiV1beta3Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3Vertex--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed7586() {
  var o = <api.GoogleCloudLocationLocation>[];
  o.add(buildGoogleCloudLocationLocation());
  o.add(buildGoogleCloudLocationLocation());
  return o;
}

void checkUnnamed7586(core.List<api.GoogleCloudLocationLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudLocationLocation(o[0] as api.GoogleCloudLocationLocation);
  checkGoogleCloudLocationLocation(o[1] as api.GoogleCloudLocationLocation);
}

core.int buildCounterGoogleCloudLocationListLocationsResponse = 0;
api.GoogleCloudLocationListLocationsResponse
    buildGoogleCloudLocationListLocationsResponse() {
  var o = api.GoogleCloudLocationListLocationsResponse();
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    o.locations = buildUnnamed7586();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
    api.GoogleCloudLocationListLocationsResponse o) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed7586(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed7587() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7587(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed7588() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7588(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
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
  var casted2 = (o['y']!) as core.Map;
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
}

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  var o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed7587();
    o.locationId = 'foo';
    o.metadata = buildUnnamed7588();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed7587(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed7588(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.Map<core.String, core.Object> buildUnnamed7589() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7589(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
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
  var casted4 = (o['y']!) as core.Map;
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

core.Map<core.String, core.Object> buildUnnamed7590() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7590(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
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
  var casted6 = (o['y']!) as core.Map;
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed7589();
    o.name = 'foo';
    o.response = buildUnnamed7590();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    checkUnnamed7589(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7590(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
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

core.Map<core.String, core.Object> buildUnnamed7591() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7591(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
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
  var casted8 = (o['y']!) as core.Map;
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

core.List<core.Map<core.String, core.Object>> buildUnnamed7592() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7591());
  o.add(buildUnnamed7591());
  return o;
}

void checkUnnamed7592(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7591(o[0]);
  checkUnnamed7591(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7592();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed7592(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeColor = 0;
api.GoogleTypeColor buildGoogleTypeColor() {
  var o = api.GoogleTypeColor();
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGoogleTypeColor--;
  return o;
}

void checkGoogleTypeColor(api.GoogleTypeColor o) {
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.blue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.green!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.red!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleTypeColor--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  var o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeDateTime = 0;
api.GoogleTypeDateTime buildGoogleTypeDateTime() {
  var o = api.GoogleTypeDateTime();
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    o.day = 42;
    o.hours = 42;
    o.minutes = 42;
    o.month = 42;
    o.nanos = 42;
    o.seconds = 42;
    o.timeZone = buildGoogleTypeTimeZone();
    o.utcOffset = 'foo';
    o.year = 42;
  }
  buildCounterGoogleTypeDateTime--;
  return o;
}

void checkGoogleTypeDateTime(api.GoogleTypeDateTime o) {
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
    checkGoogleTypeTimeZone(o.timeZone! as api.GoogleTypeTimeZone);
    unittest.expect(
      o.utcOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDateTime--;
}

core.int buildCounterGoogleTypeMoney = 0;
api.GoogleTypeMoney buildGoogleTypeMoney() {
  var o = api.GoogleTypeMoney();
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterGoogleTypeMoney--;
  return o;
}

void checkGoogleTypeMoney(api.GoogleTypeMoney o) {
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeMoney--;
}

core.List<core.String> buildUnnamed7593() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7593(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7594() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7594(core.List<core.String> o) {
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

core.int buildCounterGoogleTypePostalAddress = 0;
api.GoogleTypePostalAddress buildGoogleTypePostalAddress() {
  var o = api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed7593();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed7594();
    o.regionCode = 'foo';
    o.revision = 42;
    o.sortingCode = 'foo';
    o.sublocality = 'foo';
  }
  buildCounterGoogleTypePostalAddress--;
  return o;
}

void checkGoogleTypePostalAddress(api.GoogleTypePostalAddress o) {
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    checkUnnamed7593(o.addressLines!);
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    checkUnnamed7594(o.recipients!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sortingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sublocality!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypePostalAddress--;
}

core.int buildCounterGoogleTypeTimeZone = 0;
api.GoogleTypeTimeZone buildGoogleTypeTimeZone() {
  var o = api.GoogleTypeTimeZone();
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleTypeTimeZone--;
  return o;
}

void checkGoogleTypeTimeZone(api.GoogleTypeTimeZone o) {
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeTimeZone--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
          od as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata(
          od as api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata(od
          as api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata(od
          as api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse(od
          as api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata(
          od as api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse(
          od as api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata(
          od as api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse(
          od as api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse(od
          as api
              .GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse(od
          as api
              .GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata(od
          as api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
          od as api
              .GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse(od
          as api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse(od
          as api
              .GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata(od
          as api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BatchProcessMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1BatchProcessMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1BatchProcessMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessMetadata(
          od as api.GoogleCloudDocumentaiV1BatchProcessMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(od
          as api
              .GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BatchProcessResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1BatchProcessResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1BatchProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessResponse(
          od as api.GoogleCloudDocumentaiV1BatchProcessResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1CommonOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1CommonOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1CommonOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1CommonOperationMetadata(
          od as api.GoogleCloudDocumentaiV1CommonOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1HumanReviewStatus', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1HumanReviewStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1HumanReviewStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1HumanReviewStatus(
          od as api.GoogleCloudDocumentaiV1HumanReviewStatus);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata(
          od as api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ReviewDocumentResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1ReviewDocumentResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1ReviewDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ReviewDocumentResponse(
          od as api.GoogleCloudDocumentaiV1ReviewDocumentResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse(
          od as api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1BoundingPoly(
          od as api.GoogleCloudDocumentaiV1beta1BoundingPoly);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1Document', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1Document();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1Document(
          od as api.GoogleCloudDocumentaiV1beta1Document);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentEntity(
          od as api.GoogleCloudDocumentaiV1beta1DocumentEntity);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(
          od as api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntityRelation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(
          od as api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPage(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageBlock',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageBlock();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageBlock);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageDimension',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageDimension();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageDimension);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageFormField',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageFormField();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageFormField);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageImage',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageImage(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageImage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageLayout',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageLine();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageLine(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageLine);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageMatrix',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageParagraph',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTable',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTable();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageTable);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageToken',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageToken();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageToken(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageToken);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageVisualElement', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentProvenance',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
          od as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentProvenanceParent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(
          od as api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentRevision();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentRevision(
          od as api.GoogleCloudDocumentaiV1beta1DocumentRevision);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(
          od as api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentShardInfo',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentShardInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(
          od as api.GoogleCloudDocumentaiV1beta1DocumentShardInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentStyle();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentStyle(
          od as api.GoogleCloudDocumentaiV1beta1DocumentStyle);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentStyleFontSize',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(
          od as api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
          od as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(
          od as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextChange',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextChange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentTextChange(
          od as api.GoogleCloudDocumentaiV1beta1DocumentTextChange);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1GcsDestination();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1GcsDestination(
          od as api.GoogleCloudDocumentaiV1beta1GcsDestination);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1GcsSource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1GcsSource(
          od as api.GoogleCloudDocumentaiV1beta1GcsSource);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1InputConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1InputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1InputConfig(
          od as api.GoogleCloudDocumentaiV1beta1InputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1NormalizedVertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1NormalizedVertex(
          od as api.GoogleCloudDocumentaiV1beta1NormalizedVertex);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1OperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1OperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1OperationMetadata(
          od as api.GoogleCloudDocumentaiV1beta1OperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1OutputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1OutputConfig(
          od as api.GoogleCloudDocumentaiV1beta1OutputConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1ProcessDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(
          od as api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1Vertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1Vertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1Vertex(
          od as api.GoogleCloudDocumentaiV1beta1Vertex);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse(
          od as api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2BoundingPoly(
          od as api.GoogleCloudDocumentaiV1beta2BoundingPoly);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2Document', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2Document();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2Document(
          od as api.GoogleCloudDocumentaiV1beta2Document);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentEntity(
          od as api.GoogleCloudDocumentaiV1beta2DocumentEntity);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(
          od as api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntityRelation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(
          od as api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentLabel', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentLabel();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentLabel(
          od as api.GoogleCloudDocumentaiV1beta2DocumentLabel);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPage(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageBlock',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageBlock();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageBlock);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageDimension',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageDimension();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageDimension);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageFormField',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageFormField();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageFormField);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageImage',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageImage(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageImage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageLayout',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageLine();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageLine(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageLine);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageMatrix',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageParagraph',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTable',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTable();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageTable);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageToken',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageToken();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageToken(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageToken);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageVisualElement', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentProvenance',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
          od as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentProvenanceParent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(
          od as api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentRevision();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentRevision(
          od as api.GoogleCloudDocumentaiV1beta2DocumentRevision);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(
          od as api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentShardInfo',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentShardInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(
          od as api.GoogleCloudDocumentaiV1beta2DocumentShardInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentStyle();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentStyle(
          od as api.GoogleCloudDocumentaiV1beta2DocumentStyle);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentStyleFontSize',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(
          od as api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
          od as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(
          od as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextChange',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextChange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentTextChange(
          od as api.GoogleCloudDocumentaiV1beta2DocumentTextChange);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2GcsDestination();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2GcsDestination(
          od as api.GoogleCloudDocumentaiV1beta2GcsDestination);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2GcsSource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2GcsSource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2GcsSource(
          od as api.GoogleCloudDocumentaiV1beta2GcsSource);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2InputConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2InputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2InputConfig(
          od as api.GoogleCloudDocumentaiV1beta2InputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2NormalizedVertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2NormalizedVertex(
          od as api.GoogleCloudDocumentaiV1beta2NormalizedVertex);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2OperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2OperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2OperationMetadata(
          od as api.GoogleCloudDocumentaiV1beta2OperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2OutputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2OutputConfig(
          od as api.GoogleCloudDocumentaiV1beta2OutputConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2ProcessDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(
          od as api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2Vertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2Vertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2Vertex(
          od as api.GoogleCloudDocumentaiV1beta2Vertex);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(
          od as api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3BatchProcessMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessMetadata(
          od as api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
          od as api
              .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(
          od as api.GoogleCloudDocumentaiV1beta3BatchProcessRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(od
          as api
              .GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig(od
          as api
              .GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3BatchProcessResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3BatchProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessResponse(
          od as api.GoogleCloudDocumentaiV1beta3BatchProcessResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3BoundingPoly();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BoundingPoly(
          od as api.GoogleCloudDocumentaiV1beta3BoundingPoly);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3CommonOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(
          od as api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DisableProcessorRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DisableProcessorRequest(
          od as api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Document', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3Document();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3Document(
          od as api.GoogleCloudDocumentaiV1beta3Document);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentEntity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentEntity(
          od as api.GoogleCloudDocumentaiV1beta3DocumentEntity);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue(
          od as api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntityRelation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(
          od as api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentOutputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentOutputConfig(
          od as api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(od
          as api
              .GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPage(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageBlock',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageBlock();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageBlock);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageDimension',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageDimension();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageDimension(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageDimension);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageFormField',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageFormField();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageFormField);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageImage',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageImage(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageImage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageLayout',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageLayout);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageLine();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageLine(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageLine);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageMatrix',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageParagraph',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTable',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageTable();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTable(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageTable);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageToken',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageToken();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageToken(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageToken);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageVisualElement', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(
          od as api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentProvenance',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
          od as api.GoogleCloudDocumentaiV1beta3DocumentProvenance);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentProvenanceParent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(
          od as api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentRevision();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentRevision(
          od as api.GoogleCloudDocumentaiV1beta3DocumentRevision);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview(
          od as api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentShardInfo',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentShardInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentShardInfo(
          od as api.GoogleCloudDocumentaiV1beta3DocumentShardInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentStyle();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentStyle(
          od as api.GoogleCloudDocumentaiV1beta3DocumentStyle);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentStyleFontSize',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentStyleFontSize();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentStyleFontSize(
          od as api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(
          od as api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(
          od as api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextChange',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DocumentTextChange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentTextChange(
          od as api.GoogleCloudDocumentaiV1beta3DocumentTextChange);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3EnableProcessorRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3EnableProcessorRequest(
          od as api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(
          od as api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsDocument', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3GcsDocument();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3GcsDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3GcsDocument(
          od as api.GoogleCloudDocumentaiV1beta3GcsDocument);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsDocuments', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3GcsDocuments();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3GcsDocuments.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3GcsDocuments(
          od as api.GoogleCloudDocumentaiV1beta3GcsDocuments);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsPrefix', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3GcsPrefix();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3GcsPrefix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3GcsPrefix(
          od as api.GoogleCloudDocumentaiV1beta3GcsPrefix);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3HumanReviewStatus',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3HumanReviewStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3HumanReviewStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(
          od as api.GoogleCloudDocumentaiV1beta3HumanReviewStatus);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ListProcessorsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3ListProcessorsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ListProcessorsResponse(
          od as api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3NormalizedVertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3NormalizedVertex(
          od as api.GoogleCloudDocumentaiV1beta3NormalizedVertex);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessRequest(
          od as api.GoogleCloudDocumentaiV1beta3ProcessRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3ProcessResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3ProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessResponse(
          od as api.GoogleCloudDocumentaiV1beta3ProcessResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Processor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3Processor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3Processor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3Processor(
          od as api.GoogleCloudDocumentaiV1beta3Processor);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessorType', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3ProcessorType();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessorType(
          od as api.GoogleCloudDocumentaiV1beta3ProcessorType);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(
          od as api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3RawDocument', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3RawDocument();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3RawDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3RawDocument(
          od as api.GoogleCloudDocumentaiV1beta3RawDocument);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata(od
          as api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(
          od as api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3ReviewDocumentResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentResponse(
          od as api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Schema', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3Schema();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3Schema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3Schema(
          od as api.GoogleCloudDocumentaiV1beta3Schema);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3SchemaEntityType', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3SchemaEntityType();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3SchemaEntityType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3SchemaEntityType(
          od as api.GoogleCloudDocumentaiV1beta3SchemaEntityType);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Vertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3Vertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3Vertex(
          od as api.GoogleCloudDocumentaiV1beta3Vertex);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudLocationListLocationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudLocationListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationListLocationsResponse(
          od as api.GoogleCloudLocationListLocationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudLocationLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudLocationLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationLocation(od as api.GoogleCloudLocationLocation);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleLongrunningOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleProtobufEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleRpcStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('obj-schema-GoogleTypeColor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeColor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeColor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeColor(od as api.GoogleTypeColor);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeDate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od as api.GoogleTypeDate);
    });
  });

  unittest.group('obj-schema-GoogleTypeDateTime', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeDateTime();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeDateTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDateTime(od as api.GoogleTypeDateTime);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeMoney();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeMoney.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeMoney(od as api.GoogleTypeMoney);
    });
  });

  unittest.group('obj-schema-GoogleTypePostalAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypePostalAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypePostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypePostalAddress(od as api.GoogleTypePostalAddress);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeZone', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeTimeZone();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeTimeZone.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeTimeZone(od as api.GoogleTypeTimeZone);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--fetchProcessorTypes', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.fetchProcessorTypes(arg_parent, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(response
          as api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudLocationLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
          response as api.GoogleCloudLocationLocation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudLocationListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudLocationListLocationsResponse(
          response as api.GoogleCloudLocationListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsProcessorsResource', () {
    unittest.test('method--batchProcess', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.processors;
      var arg_request = buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(
            obj as api.GoogleCloudDocumentaiV1beta3BatchProcessRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchProcess(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.processors;
      var arg_request = buildGoogleCloudDocumentaiV1beta3Processor();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDocumentaiV1beta3Processor.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3Processor(
            obj as api.GoogleCloudDocumentaiV1beta3Processor);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDocumentaiV1beta3Processor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3Processor(
          response as api.GoogleCloudDocumentaiV1beta3Processor);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.processors;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--disable', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.processors;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3DisableProcessorRequest(
            obj as api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--enable', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.processors;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3EnableProcessorRequest(
            obj as api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.enable(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.processors;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDocumentaiV1beta3ListProcessorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3ListProcessorsResponse(
          response as api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse);
    });

    unittest.test('method--process', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.processors;
      var arg_request = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3ProcessRequest(
            obj as api.GoogleCloudDocumentaiV1beta3ProcessRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDocumentaiV1beta3ProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.process(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3ProcessResponse(
          response as api.GoogleCloudDocumentaiV1beta3ProcessResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProcessorsHumanReviewConfigResource', () {
    unittest.test('method--reviewDocument', () async {
      var mock = HttpServerMock();
      var res =
          api.DocumentApi(mock).projects.locations.processors.humanReviewConfig;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
      var arg_humanReviewConfig = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(
            obj as api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reviewDocument(
          arg_request, arg_humanReviewConfig,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProcessorsProcessorVersionsResource', () {
    unittest.test('method--batchProcess', () async {
      var mock = HttpServerMock();
      var res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      var arg_request = buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(
            obj as api.GoogleCloudDocumentaiV1beta3BatchProcessRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchProcess(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--process', () async {
      var mock = HttpServerMock();
      var res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      var arg_request = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3ProcessRequest(
            obj as api.GoogleCloudDocumentaiV1beta3ProcessRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta3/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDocumentaiV1beta3ProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.process(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3ProcessResponse(
          response as api.GoogleCloudDocumentaiV1beta3ProcessResponse);
    });
  });
}
