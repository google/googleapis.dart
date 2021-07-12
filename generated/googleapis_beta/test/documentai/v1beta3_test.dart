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

import 'package:googleapis_beta/documentai/v1beta3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata() {
  final o = api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
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
  final o =
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata() {
  final o =
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata() {
  final o = api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata() {
  final o = api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata();
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata() {
  final o = api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata();
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse() {
  final o = api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse();
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
  final o = api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse = 0;
api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse
    buildGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse() {
  final o = api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();
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
  final o = api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse = 0;
api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse
    buildGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse() {
  final o = api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();
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
  final o =
      api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata();
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse() {
  final o =
      api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse();
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
    buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata() {
  final o = api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse() {
  final o = api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata() {
  final o =
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse() {
  final o =
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
  final o = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata();
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
    checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
        o.testDatasetValidation!);
    checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
        o.trainingDatasetValidation!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7906() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7906(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.List<api.GoogleRpcStatus> buildUnnamed7907() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7907(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation =
    0;
api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
    buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation() {
  final o = api
      .GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation();
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation <
      3) {
    o.datasetErrorCount = 42;
    o.datasetErrors = buildUnnamed7906();
    o.documentErrorCount = 42;
    o.documentErrors = buildUnnamed7907();
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
    checkUnnamed7906(o.datasetErrors!);
    unittest.expect(
      o.documentErrorCount!,
      unittest.equals(42),
    );
    checkUnnamed7907(o.documentErrors!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse = 0;
api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse() {
  final o = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse();
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
  final o =
      api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata();
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse() {
  final o =
      api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse();
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
  final o = api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata();
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata() {
  final o =
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
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata--;
}

core.List<
        api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>
    buildUnnamed7908() {
  final o = <
      api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>[];
  o.add(
      buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus());
  o.add(
      buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus());
  return o;
}

void checkUnnamed7908(
    core.List<
            api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(o[0]);
  checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata = 0;
api.GoogleCloudDocumentaiV1BatchProcessMetadata
    buildGoogleCloudDocumentaiV1BatchProcessMetadata() {
  final o = api.GoogleCloudDocumentaiV1BatchProcessMetadata();
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata < 3) {
    o.createTime = 'foo';
    o.individualProcessStatuses = buildUnnamed7908();
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
    checkUnnamed7908(o.individualProcessStatuses!);
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
  final o =
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
    checkGoogleCloudDocumentaiV1HumanReviewStatus(o.humanReviewStatus!);
    unittest.expect(
      o.inputGcsSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputGcsDestination!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.status!);
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus--;
}

core.int buildCounterGoogleCloudDocumentaiV1BatchProcessResponse = 0;
api.GoogleCloudDocumentaiV1BatchProcessResponse
    buildGoogleCloudDocumentaiV1BatchProcessResponse() {
  final o = api.GoogleCloudDocumentaiV1BatchProcessResponse();
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
  final o = api.GoogleCloudDocumentaiV1CommonOperationMetadata();
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
  final o = api.GoogleCloudDocumentaiV1HumanReviewStatus();
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
  final o = api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata();
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
    checkGoogleCloudDocumentaiV1CommonOperationMetadata(o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse = 0;
api.GoogleCloudDocumentaiV1ReviewDocumentResponse
    buildGoogleCloudDocumentaiV1ReviewDocumentResponse() {
  final o = api.GoogleCloudDocumentaiV1ReviewDocumentResponse();
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
    buildUnnamed7909() {
  final o = <api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>[];
  o.add(buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse());
  o.add(buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse());
  return o;
}

void checkUnnamed7909(
    core.List<api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(o[0]);
  checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse =
    0;
api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
    buildGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse() {
  final o = api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse <
      3) {
    o.responses = buildUnnamed7909();
  }
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse(
    api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse <
      3) {
    checkUnnamed7909(o.responses!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta1NormalizedVertex> buildUnnamed7910() {
  final o = <api.GoogleCloudDocumentaiV1beta1NormalizedVertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta1NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta1NormalizedVertex());
  return o;
}

void checkUnnamed7910(
    core.List<api.GoogleCloudDocumentaiV1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1beta1NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1Vertex> buildUnnamed7911() {
  final o = <api.GoogleCloudDocumentaiV1beta1Vertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta1Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta1Vertex());
  return o;
}

void checkUnnamed7911(core.List<api.GoogleCloudDocumentaiV1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1Vertex(o[0]);
  checkGoogleCloudDocumentaiV1beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly = 0;
api.GoogleCloudDocumentaiV1beta1BoundingPoly
    buildGoogleCloudDocumentaiV1beta1BoundingPoly() {
  final o = api.GoogleCloudDocumentaiV1beta1BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed7910();
    o.vertices = buildUnnamed7911();
  }
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1BoundingPoly(
    api.GoogleCloudDocumentaiV1beta1BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly < 3) {
    checkUnnamed7910(o.normalizedVertices!);
    checkUnnamed7911(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> buildUnnamed7912() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  return o;
}

void checkUnnamed7912(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation>
    buildUnnamed7913() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation());
  return o;
}

void checkUnnamed7913(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPage> buildUnnamed7914() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPage());
  return o;
}

void checkUnnamed7914(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentRevision> buildUnnamed7915() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentRevision>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentRevision());
  return o;
}

void checkUnnamed7915(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentRevision(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextChange>
    buildUnnamed7916() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentTextChange>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextChange());
  return o;
}

void checkUnnamed7916(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentTextChange(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentStyle> buildUnnamed7917() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentStyle>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentStyle());
  return o;
}

void checkUnnamed7917(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentStyle(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentStyle(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1Document = 0;
api.GoogleCloudDocumentaiV1beta1Document
    buildGoogleCloudDocumentaiV1beta1Document() {
  final o = api.GoogleCloudDocumentaiV1beta1Document();
  buildCounterGoogleCloudDocumentaiV1beta1Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed7912();
    o.entityRelations = buildUnnamed7913();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed7914();
    o.revisions = buildUnnamed7915();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta1DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed7916();
    o.textStyles = buildUnnamed7917();
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
    checkUnnamed7912(o.entities!);
    checkUnnamed7913(o.entityRelations!);
    checkGoogleRpcStatus(o.error!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed7914(o.pages!);
    checkUnnamed7915(o.revisions!);
    checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(o.shardInfo!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed7916(o.textChanges!);
    checkUnnamed7917(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1Document--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> buildUnnamed7918() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  return o;
}

void checkUnnamed7918(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity = 0;
api.GoogleCloudDocumentaiV1beta1DocumentEntity
    buildGoogleCloudDocumentaiV1beta1DocumentEntity() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor();
    o.properties = buildUnnamed7918();
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
        o.normalizedValue!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(o.pageAnchor!);
    checkUnnamed7918(o.properties!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance!);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor!);
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
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
    checkGoogleTypePostalAddress(o.addressValue!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue!);
    checkGoogleTypeDateTime(o.datetimeValue!);
    checkGoogleTypeMoney(o.moneyValue!);
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation();
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
    buildUnnamed7919() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageBlock>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageBlock());
  return o;
}

void checkUnnamed7919(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7920() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7920(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageFormField>
    buildUnnamed7921() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageFormField>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageFormField());
  return o;
}

void checkUnnamed7921(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageLine> buildUnnamed7922() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageLine>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageLine());
  return o;
}

void checkUnnamed7922(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageLine(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph>
    buildUnnamed7923() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph());
  return o;
}

void checkUnnamed7923(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTable>
    buildUnnamed7924() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTable>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTable());
  return o;
}

void checkUnnamed7924(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTable(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageToken>
    buildUnnamed7925() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageToken>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageToken());
  return o;
}

void checkUnnamed7925(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageToken(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix>
    buildUnnamed7926() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix());
  return o;
}

void checkUnnamed7926(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>
    buildUnnamed7927() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement());
  return o;
}

void checkUnnamed7927(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPage = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPage
    buildGoogleCloudDocumentaiV1beta1DocumentPage() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPage < 3) {
    o.blocks = buildUnnamed7919();
    o.detectedLanguages = buildUnnamed7920();
    o.dimension = buildGoogleCloudDocumentaiV1beta1DocumentPageDimension();
    o.formFields = buildUnnamed7921();
    o.image = buildGoogleCloudDocumentaiV1beta1DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.lines = buildUnnamed7922();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed7923();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
    o.tables = buildUnnamed7924();
    o.tokens = buildUnnamed7925();
    o.transforms = buildUnnamed7926();
    o.visualElements = buildUnnamed7927();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPage(
    api.GoogleCloudDocumentaiV1beta1DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPage < 3) {
    checkUnnamed7919(o.blocks!);
    checkUnnamed7920(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(o.dimension!);
    checkUnnamed7921(o.formFields!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageImage(o.image!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout!);
    checkUnnamed7922(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed7923(o.paragraphs!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance!);
    checkUnnamed7924(o.tables!);
    checkUnnamed7925(o.tokens!);
    checkUnnamed7926(o.transforms!);
    checkUnnamed7927(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>
    buildUnnamed7928() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef());
  return o;
}

void checkUnnamed7928(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor
    buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed7928();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor < 3) {
    checkUnnamed7928(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();
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
    checkGoogleCloudDocumentaiV1beta1BoundingPoly(o.boundingPoly!);
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
    buildUnnamed7929() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7929(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageBlock
    buildGoogleCloudDocumentaiV1beta1DocumentPageBlock() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed7929();
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
    checkUnnamed7929(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage =
    0;
api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageDimension();
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
    buildUnnamed7930() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7930(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7931() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7931(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageFormField
    buildGoogleCloudDocumentaiV1beta1DocumentPageFormField() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed7930();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed7931();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta1DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.fieldName!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.fieldValue!);
    checkUnnamed7930(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance!);
    checkUnnamed7931(o.valueDetectedLanguages!);
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageImage();
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageLayout();
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
    checkGoogleCloudDocumentaiV1beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7932() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7932(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageLine
    buildGoogleCloudDocumentaiV1beta1DocumentPageLine() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed7932();
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
    checkUnnamed7932(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix
    buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix();
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
    buildUnnamed7933() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7933(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph
    buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed7933();
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
    checkUnnamed7933(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>
    buildUnnamed7934() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  return o;
}

void checkUnnamed7934(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7935() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7935(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>
    buildUnnamed7936() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  return o;
}

void checkUnnamed7936(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTable
    buildGoogleCloudDocumentaiV1beta1DocumentPageTable() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed7934();
    o.detectedLanguages = buildUnnamed7935();
    o.headerRows = buildUnnamed7936();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable < 3) {
    checkUnnamed7934(o.bodyRows!);
    checkUnnamed7935(o.detectedLanguages!);
    checkUnnamed7936(o.headerRows!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7937() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7937(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed7937();
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
    checkUnnamed7937(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout!);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>
    buildUnnamed7938() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell());
  return o;
}

void checkUnnamed7938(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed7938();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow < 3) {
    checkUnnamed7938(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed7939() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7939(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageToken
    buildGoogleCloudDocumentaiV1beta1DocumentPageToken() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed7939();
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
        o.detectedBreak!);
    checkUnnamed7939(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
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
    buildUnnamed7940() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7940(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed7940();
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
    checkUnnamed7940(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>
    buildUnnamed7941() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent());
  return o;
}

void checkUnnamed7941(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1beta1DocumentProvenance
    buildGoogleCloudDocumentaiV1beta1DocumentProvenance() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed7941();
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
    checkUnnamed7941(o.parents!);
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent();
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

core.List<core.int> buildUnnamed7942() {
  final o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7942(core.List<core.int> o) {
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed7942();
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
    checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(
        o.humanReview!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed7942(o.parent!);
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentShardInfo();
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentStyle();
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
    checkGoogleTypeColor(o.backgroundColor!);
    checkGoogleTypeColor(o.color!);
    checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(o.fontSize!);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor!);
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
  final o = api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
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
    buildUnnamed7943() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment());
  return o;
}

void checkUnnamed7943(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor
    buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed7943();
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
    checkUnnamed7943(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment =
    0;
api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();
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
    buildUnnamed7944() {
  final o = <api.GoogleCloudDocumentaiV1beta1DocumentProvenance>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  return o;
}

void checkUnnamed7944(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1beta1DocumentTextChange
    buildGoogleCloudDocumentaiV1beta1DocumentTextChange() {
  final o = api.GoogleCloudDocumentaiV1beta1DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed7944();
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
    checkUnnamed7944(o.provenance!);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1GcsDestination = 0;
api.GoogleCloudDocumentaiV1beta1GcsDestination
    buildGoogleCloudDocumentaiV1beta1GcsDestination() {
  final o = api.GoogleCloudDocumentaiV1beta1GcsDestination();
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
  final o = api.GoogleCloudDocumentaiV1beta1GcsSource();
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
  final o = api.GoogleCloudDocumentaiV1beta1InputConfig();
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
    checkGoogleCloudDocumentaiV1beta1GcsSource(o.gcsSource!);
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
  final o = api.GoogleCloudDocumentaiV1beta1NormalizedVertex();
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
  final o = api.GoogleCloudDocumentaiV1beta1OperationMetadata();
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
  final o = api.GoogleCloudDocumentaiV1beta1OutputConfig();
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
    checkGoogleCloudDocumentaiV1beta1GcsDestination(o.gcsDestination!);
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
  final o = api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse();
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
    checkGoogleCloudDocumentaiV1beta1InputConfig(o.inputConfig!);
    checkGoogleCloudDocumentaiV1beta1OutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1Vertex = 0;
api.GoogleCloudDocumentaiV1beta1Vertex
    buildGoogleCloudDocumentaiV1beta1Vertex() {
  final o = api.GoogleCloudDocumentaiV1beta1Vertex();
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
    buildUnnamed7945() {
  final o = <api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>[];
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse());
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse());
  return o;
}

void checkUnnamed7945(
    core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(o[0]);
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse =
    0;
api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
    buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse() {
  final o = api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse <
      3) {
    o.responses = buildUnnamed7945();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse(
    api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse <
      3) {
    checkUnnamed7945(o.responses!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta2NormalizedVertex> buildUnnamed7946() {
  final o = <api.GoogleCloudDocumentaiV1beta2NormalizedVertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta2NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta2NormalizedVertex());
  return o;
}

void checkUnnamed7946(
    core.List<api.GoogleCloudDocumentaiV1beta2NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1beta2NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2Vertex> buildUnnamed7947() {
  final o = <api.GoogleCloudDocumentaiV1beta2Vertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta2Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta2Vertex());
  return o;
}

void checkUnnamed7947(core.List<api.GoogleCloudDocumentaiV1beta2Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2Vertex(o[0]);
  checkGoogleCloudDocumentaiV1beta2Vertex(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly = 0;
api.GoogleCloudDocumentaiV1beta2BoundingPoly
    buildGoogleCloudDocumentaiV1beta2BoundingPoly() {
  final o = api.GoogleCloudDocumentaiV1beta2BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed7946();
    o.vertices = buildUnnamed7947();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2BoundingPoly(
    api.GoogleCloudDocumentaiV1beta2BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly < 3) {
    checkUnnamed7946(o.normalizedVertices!);
    checkUnnamed7947(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> buildUnnamed7948() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  return o;
}

void checkUnnamed7948(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation>
    buildUnnamed7949() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation());
  return o;
}

void checkUnnamed7949(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentLabel> buildUnnamed7950() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentLabel>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentLabel());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentLabel());
  return o;
}

void checkUnnamed7950(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentLabel(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentLabel(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPage> buildUnnamed7951() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPage());
  return o;
}

void checkUnnamed7951(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentRevision> buildUnnamed7952() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentRevision>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentRevision());
  return o;
}

void checkUnnamed7952(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentRevision(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextChange>
    buildUnnamed7953() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentTextChange>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextChange());
  return o;
}

void checkUnnamed7953(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentTextChange(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentStyle> buildUnnamed7954() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentStyle>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentStyle());
  return o;
}

void checkUnnamed7954(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentStyle(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentStyle(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2Document = 0;
api.GoogleCloudDocumentaiV1beta2Document
    buildGoogleCloudDocumentaiV1beta2Document() {
  final o = api.GoogleCloudDocumentaiV1beta2Document();
  buildCounterGoogleCloudDocumentaiV1beta2Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed7948();
    o.entityRelations = buildUnnamed7949();
    o.error = buildGoogleRpcStatus();
    o.labels = buildUnnamed7950();
    o.mimeType = 'foo';
    o.pages = buildUnnamed7951();
    o.revisions = buildUnnamed7952();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta2DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed7953();
    o.textStyles = buildUnnamed7954();
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
    checkUnnamed7948(o.entities!);
    checkUnnamed7949(o.entityRelations!);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed7950(o.labels!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed7951(o.pages!);
    checkUnnamed7952(o.revisions!);
    checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(o.shardInfo!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed7953(o.textChanges!);
    checkUnnamed7954(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2Document--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> buildUnnamed7955() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  return o;
}

void checkUnnamed7955(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity = 0;
api.GoogleCloudDocumentaiV1beta2DocumentEntity
    buildGoogleCloudDocumentaiV1beta2DocumentEntity() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor();
    o.properties = buildUnnamed7955();
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
        o.normalizedValue!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(o.pageAnchor!);
    checkUnnamed7955(o.properties!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance!);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor!);
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
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
    checkGoogleTypePostalAddress(o.addressValue!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue!);
    checkGoogleTypeDateTime(o.datetimeValue!);
    checkGoogleTypeMoney(o.moneyValue!);
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation();
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentLabel();
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
    buildUnnamed7956() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageBlock>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageBlock());
  return o;
}

void checkUnnamed7956(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7957() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7957(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageFormField>
    buildUnnamed7958() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageFormField>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageFormField());
  return o;
}

void checkUnnamed7958(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageLine> buildUnnamed7959() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageLine>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageLine());
  return o;
}

void checkUnnamed7959(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageLine(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph>
    buildUnnamed7960() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph());
  return o;
}

void checkUnnamed7960(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTable>
    buildUnnamed7961() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTable>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTable());
  return o;
}

void checkUnnamed7961(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTable(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageToken>
    buildUnnamed7962() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageToken>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageToken());
  return o;
}

void checkUnnamed7962(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageToken(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix>
    buildUnnamed7963() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix());
  return o;
}

void checkUnnamed7963(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>
    buildUnnamed7964() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement());
  return o;
}

void checkUnnamed7964(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPage = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPage
    buildGoogleCloudDocumentaiV1beta2DocumentPage() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPage < 3) {
    o.blocks = buildUnnamed7956();
    o.detectedLanguages = buildUnnamed7957();
    o.dimension = buildGoogleCloudDocumentaiV1beta2DocumentPageDimension();
    o.formFields = buildUnnamed7958();
    o.image = buildGoogleCloudDocumentaiV1beta2DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.lines = buildUnnamed7959();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed7960();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
    o.tables = buildUnnamed7961();
    o.tokens = buildUnnamed7962();
    o.transforms = buildUnnamed7963();
    o.visualElements = buildUnnamed7964();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPage(
    api.GoogleCloudDocumentaiV1beta2DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPage < 3) {
    checkUnnamed7956(o.blocks!);
    checkUnnamed7957(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(o.dimension!);
    checkUnnamed7958(o.formFields!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageImage(o.image!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout!);
    checkUnnamed7959(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed7960(o.paragraphs!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance!);
    checkUnnamed7961(o.tables!);
    checkUnnamed7962(o.tokens!);
    checkUnnamed7963(o.transforms!);
    checkUnnamed7964(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>
    buildUnnamed7965() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef());
  return o;
}

void checkUnnamed7965(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor
    buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed7965();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor < 3) {
    checkUnnamed7965(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();
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
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(o.boundingPoly!);
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
    buildUnnamed7966() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7966(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageBlock
    buildGoogleCloudDocumentaiV1beta2DocumentPageBlock() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed7966();
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
    checkUnnamed7966(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage =
    0;
api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageDimension();
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
    buildUnnamed7967() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7967(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7968() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7968(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageFormField
    buildGoogleCloudDocumentaiV1beta2DocumentPageFormField() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed7967();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed7968();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta2DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.fieldName!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.fieldValue!);
    checkUnnamed7967(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance!);
    checkUnnamed7968(o.valueDetectedLanguages!);
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageImage();
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageLayout();
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
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7969() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7969(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageLine
    buildGoogleCloudDocumentaiV1beta2DocumentPageLine() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed7969();
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
    checkUnnamed7969(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix
    buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix();
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
    buildUnnamed7970() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7970(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph
    buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed7970();
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
    checkUnnamed7970(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>
    buildUnnamed7971() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  return o;
}

void checkUnnamed7971(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7972() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7972(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>
    buildUnnamed7973() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  return o;
}

void checkUnnamed7973(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTable
    buildGoogleCloudDocumentaiV1beta2DocumentPageTable() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed7971();
    o.detectedLanguages = buildUnnamed7972();
    o.headerRows = buildUnnamed7973();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable < 3) {
    checkUnnamed7971(o.bodyRows!);
    checkUnnamed7972(o.detectedLanguages!);
    checkUnnamed7973(o.headerRows!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7974() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7974(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed7974();
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
    checkUnnamed7974(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout!);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>
    buildUnnamed7975() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell());
  return o;
}

void checkUnnamed7975(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed7975();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow < 3) {
    checkUnnamed7975(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed7976() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7976(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageToken
    buildGoogleCloudDocumentaiV1beta2DocumentPageToken() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed7976();
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
        o.detectedBreak!);
    checkUnnamed7976(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
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
    buildUnnamed7977() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7977(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed7977();
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
    checkUnnamed7977(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>
    buildUnnamed7978() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent());
  return o;
}

void checkUnnamed7978(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1beta2DocumentProvenance
    buildGoogleCloudDocumentaiV1beta2DocumentProvenance() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed7978();
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
    checkUnnamed7978(o.parents!);
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent();
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

core.List<core.int> buildUnnamed7979() {
  final o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7979(core.List<core.int> o) {
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed7979();
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
    checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(
        o.humanReview!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed7979(o.parent!);
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentShardInfo();
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentStyle();
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
    checkGoogleTypeColor(o.backgroundColor!);
    checkGoogleTypeColor(o.color!);
    checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(o.fontSize!);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor!);
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
  final o = api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
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
    buildUnnamed7980() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment());
  return o;
}

void checkUnnamed7980(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor
    buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed7980();
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
    checkUnnamed7980(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment =
    0;
api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();
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
    buildUnnamed7981() {
  final o = <api.GoogleCloudDocumentaiV1beta2DocumentProvenance>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  return o;
}

void checkUnnamed7981(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1beta2DocumentTextChange
    buildGoogleCloudDocumentaiV1beta2DocumentTextChange() {
  final o = api.GoogleCloudDocumentaiV1beta2DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed7981();
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
    checkUnnamed7981(o.provenance!);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2GcsDestination = 0;
api.GoogleCloudDocumentaiV1beta2GcsDestination
    buildGoogleCloudDocumentaiV1beta2GcsDestination() {
  final o = api.GoogleCloudDocumentaiV1beta2GcsDestination();
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
  final o = api.GoogleCloudDocumentaiV1beta2GcsSource();
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
  final o = api.GoogleCloudDocumentaiV1beta2InputConfig();
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
    checkGoogleCloudDocumentaiV1beta2GcsSource(o.gcsSource!);
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
  final o = api.GoogleCloudDocumentaiV1beta2NormalizedVertex();
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
  final o = api.GoogleCloudDocumentaiV1beta2OperationMetadata();
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
  final o = api.GoogleCloudDocumentaiV1beta2OutputConfig();
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
    checkGoogleCloudDocumentaiV1beta2GcsDestination(o.gcsDestination!);
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
  final o = api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse();
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
    checkGoogleCloudDocumentaiV1beta2InputConfig(o.inputConfig!);
    checkGoogleCloudDocumentaiV1beta2OutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2Vertex = 0;
api.GoogleCloudDocumentaiV1beta2Vertex
    buildGoogleCloudDocumentaiV1beta2Vertex() {
  final o = api.GoogleCloudDocumentaiV1beta2Vertex();
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
  final o = api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
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
    checkGoogleCloudDocumentaiV1beta3GcsDocuments(o.gcsDocuments!);
    checkGoogleCloudDocumentaiV1beta3GcsPrefix(o.gcsPrefix!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig--;
}

core.List<
        api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>
    buildUnnamed7982() {
  final o = <
      api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>[];
  o.add(
      buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus());
  o.add(
      buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus());
  return o;
}

void checkUnnamed7982(
    core.List<
            api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
      o[0]);
  checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
      o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata = 0;
api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata
    buildGoogleCloudDocumentaiV1beta3BatchProcessMetadata() {
  final o = api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata < 3) {
    o.createTime = 'foo';
    o.individualProcessStatuses = buildUnnamed7982();
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
    checkUnnamed7982(o.individualProcessStatuses!);
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
  final o = api
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
    checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(o.humanReviewStatus!);
    unittest.expect(
      o.inputGcsSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputGcsDestination!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.status!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus--;
}

core.List<api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>
    buildUnnamed7983() {
  final o =
      <api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>[];
  o.add(buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig());
  o.add(buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig());
  return o;
}

void checkUnnamed7983(
    core.List<
            api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(o[0]);
  checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest = 0;
api.GoogleCloudDocumentaiV1beta3BatchProcessRequest
    buildGoogleCloudDocumentaiV1beta3BatchProcessRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3BatchProcessRequest();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest < 3) {
    o.documentOutputConfig =
        buildGoogleCloudDocumentaiV1beta3DocumentOutputConfig();
    o.inputConfigs = buildUnnamed7983();
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
        o.documentOutputConfig!);
    checkUnnamed7983(o.inputConfigs!);
    checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(
        o.inputDocuments!);
    checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig(
        o.outputConfig!);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig =
    0;
api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig
    buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig() {
  final o =
      api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig();
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
  final o =
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
  final o = api.GoogleCloudDocumentaiV1beta3BatchProcessResponse();
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

core.List<api.GoogleCloudDocumentaiV1beta3NormalizedVertex> buildUnnamed7984() {
  final o = <api.GoogleCloudDocumentaiV1beta3NormalizedVertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta3NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta3NormalizedVertex());
  return o;
}

void checkUnnamed7984(
    core.List<api.GoogleCloudDocumentaiV1beta3NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1beta3NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3Vertex> buildUnnamed7985() {
  final o = <api.GoogleCloudDocumentaiV1beta3Vertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta3Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta3Vertex());
  return o;
}

void checkUnnamed7985(core.List<api.GoogleCloudDocumentaiV1beta3Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3Vertex(o[0]);
  checkGoogleCloudDocumentaiV1beta3Vertex(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly = 0;
api.GoogleCloudDocumentaiV1beta3BoundingPoly
    buildGoogleCloudDocumentaiV1beta3BoundingPoly() {
  final o = api.GoogleCloudDocumentaiV1beta3BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed7984();
    o.vertices = buildUnnamed7985();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BoundingPoly(
    api.GoogleCloudDocumentaiV1beta3BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly < 3) {
    checkUnnamed7984(o.normalizedVertices!);
    checkUnnamed7985(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata = 0;
api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata
    buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata() {
  final o = api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata();
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

core.int buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata = 0;
api.GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata
    buildGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata() {
  final o = api.GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata(
    api.GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata = 0;
api.GoogleCloudDocumentaiV1beta3DisableProcessorMetadata
    buildGoogleCloudDocumentaiV1beta3DisableProcessorMetadata() {
  final o = api.GoogleCloudDocumentaiV1beta3DisableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DisableProcessorMetadata(
    api.GoogleCloudDocumentaiV1beta3DisableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest = 0;
api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest
    buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest();
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

core.int buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse = 0;
api.GoogleCloudDocumentaiV1beta3DisableProcessorResponse
    buildGoogleCloudDocumentaiV1beta3DisableProcessorResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3DisableProcessorResponse();
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DisableProcessorResponse(
    api.GoogleCloudDocumentaiV1beta3DisableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> buildUnnamed7986() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntity());
  return o;
}

void checkUnnamed7986(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation>
    buildUnnamed7987() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation());
  return o;
}

void checkUnnamed7987(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPage> buildUnnamed7988() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPage());
  return o;
}

void checkUnnamed7988(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentRevision> buildUnnamed7989() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentRevision>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentRevision());
  return o;
}

void checkUnnamed7989(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentRevision(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextChange>
    buildUnnamed7990() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentTextChange>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentTextChange());
  return o;
}

void checkUnnamed7990(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentTextChange(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentStyle> buildUnnamed7991() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentStyle>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentStyle());
  return o;
}

void checkUnnamed7991(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentStyle(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentStyle(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Document = 0;
api.GoogleCloudDocumentaiV1beta3Document
    buildGoogleCloudDocumentaiV1beta3Document() {
  final o = api.GoogleCloudDocumentaiV1beta3Document();
  buildCounterGoogleCloudDocumentaiV1beta3Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed7986();
    o.entityRelations = buildUnnamed7987();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed7988();
    o.revisions = buildUnnamed7989();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta3DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed7990();
    o.textStyles = buildUnnamed7991();
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
    checkUnnamed7986(o.entities!);
    checkUnnamed7987(o.entityRelations!);
    checkGoogleRpcStatus(o.error!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed7988(o.pages!);
    checkUnnamed7989(o.revisions!);
    checkGoogleCloudDocumentaiV1beta3DocumentShardInfo(o.shardInfo!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed7990(o.textChanges!);
    checkUnnamed7991(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3Document--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> buildUnnamed7992() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentEntity());
  return o;
}

void checkUnnamed7992(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity = 0;
api.GoogleCloudDocumentaiV1beta3DocumentEntity
    buildGoogleCloudDocumentaiV1beta3DocumentEntity() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchor();
    o.properties = buildUnnamed7992();
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
        o.normalizedValue!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(o.pageAnchor!);
    checkUnnamed7992(o.properties!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue();
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
    checkGoogleTypePostalAddress(o.addressValue!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue!);
    checkGoogleTypeDateTime(o.datetimeValue!);
    checkGoogleTypeMoney(o.moneyValue!);
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation();
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig();
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
    checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(
        o.gcsOutputConfig!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig
    buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig();
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
    buildUnnamed7993() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageBlock>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageBlock());
  return o;
}

void checkUnnamed7993(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed7994() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed7994(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageFormField>
    buildUnnamed7995() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageFormField>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageFormField());
  return o;
}

void checkUnnamed7995(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageLine> buildUnnamed7996() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageLine>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageLine());
  return o;
}

void checkUnnamed7996(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageLine(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph>
    buildUnnamed7997() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph());
  return o;
}

void checkUnnamed7997(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTable>
    buildUnnamed7998() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageTable>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTable());
  return o;
}

void checkUnnamed7998(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTable(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageToken>
    buildUnnamed7999() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageToken>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageToken());
  return o;
}

void checkUnnamed7999(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageToken(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix>
    buildUnnamed8000() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix());
  return o;
}

void checkUnnamed8000(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement>
    buildUnnamed8001() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement());
  return o;
}

void checkUnnamed8001(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPage = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPage
    buildGoogleCloudDocumentaiV1beta3DocumentPage() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPage < 3) {
    o.blocks = buildUnnamed7993();
    o.detectedLanguages = buildUnnamed7994();
    o.dimension = buildGoogleCloudDocumentaiV1beta3DocumentPageDimension();
    o.formFields = buildUnnamed7995();
    o.image = buildGoogleCloudDocumentaiV1beta3DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.lines = buildUnnamed7996();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed7997();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
    o.tables = buildUnnamed7998();
    o.tokens = buildUnnamed7999();
    o.transforms = buildUnnamed8000();
    o.visualElements = buildUnnamed8001();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPage(
    api.GoogleCloudDocumentaiV1beta3DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPage < 3) {
    checkUnnamed7993(o.blocks!);
    checkUnnamed7994(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageDimension(o.dimension!);
    checkUnnamed7995(o.formFields!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageImage(o.image!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkUnnamed7996(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed7997(o.paragraphs!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
    checkUnnamed7998(o.tables!);
    checkUnnamed7999(o.tokens!);
    checkUnnamed8000(o.transforms!);
    checkUnnamed8001(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef>
    buildUnnamed8002() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef());
  return o;
}

void checkUnnamed8002(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor
    buildGoogleCloudDocumentaiV1beta3DocumentPageAnchor() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed8002();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor < 3) {
    checkUnnamed8002(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef();
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
    checkGoogleCloudDocumentaiV1beta3BoundingPoly(o.boundingPoly!);
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
    buildUnnamed8003() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed8003(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageBlock
    buildGoogleCloudDocumentaiV1beta3DocumentPageBlock() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed8003();
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
    checkUnnamed8003(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage();
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageDimension();
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
    buildUnnamed8004() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed8004(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed8005() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed8005(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageFormField
    buildGoogleCloudDocumentaiV1beta3DocumentPageFormField() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed8004();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed8005();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta3DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.fieldName!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.fieldValue!);
    checkUnnamed8004(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
    checkUnnamed8005(o.valueDetectedLanguages!);
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageImage();
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageLayout();
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
    checkGoogleCloudDocumentaiV1beta3BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed8006() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed8006(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageLine
    buildGoogleCloudDocumentaiV1beta3DocumentPageLine() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed8006();
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
    checkUnnamed8006(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix
    buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix();
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
    buildUnnamed8007() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed8007(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph
    buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed8007();
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
    checkUnnamed8007(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>
    buildUnnamed8008() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow());
  return o;
}

void checkUnnamed8008(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed8009() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed8009(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>
    buildUnnamed8010() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow());
  return o;
}

void checkUnnamed8010(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTable
    buildGoogleCloudDocumentaiV1beta3DocumentPageTable() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed8008();
    o.detectedLanguages = buildUnnamed8009();
    o.headerRows = buildUnnamed8010();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta3DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable < 3) {
    checkUnnamed8008(o.bodyRows!);
    checkUnnamed8009(o.detectedLanguages!);
    checkUnnamed8010(o.headerRows!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed8011() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed8011(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed8011();
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
    checkUnnamed8011(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell>
    buildUnnamed8012() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell());
  return o;
}

void checkUnnamed8012(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed8012();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow < 3) {
    checkUnnamed8012(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed8013() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed8013(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageToken
    buildGoogleCloudDocumentaiV1beta3DocumentPageToken() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed8013();
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
        o.detectedBreak!);
    checkUnnamed8013(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak();
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
    buildUnnamed8014() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed8014(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed8014();
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
    checkUnnamed8014(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent>
    buildUnnamed8015() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent());
  return o;
}

void checkUnnamed8015(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1beta3DocumentProvenance
    buildGoogleCloudDocumentaiV1beta3DocumentProvenance() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed8015();
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
    checkUnnamed8015(o.parents!);
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent();
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

core.List<core.int> buildUnnamed8016() {
  final o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed8016(core.List<core.int> o) {
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed8016();
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
    checkGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview(
        o.humanReview!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed8016(o.parent!);
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview();
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentShardInfo();
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentStyle();
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
    checkGoogleTypeColor(o.backgroundColor!);
    checkGoogleTypeColor(o.color!);
    checkGoogleCloudDocumentaiV1beta3DocumentStyleFontSize(o.fontSize!);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
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
  final o = api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize();
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
    buildUnnamed8017() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment());
  return o;
}

void checkUnnamed8017(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor
    buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed8017();
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
    checkUnnamed8017(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment();
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
    buildUnnamed8018() {
  final o = <api.GoogleCloudDocumentaiV1beta3DocumentProvenance>[];
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta3DocumentProvenance());
  return o;
}

void checkUnnamed8018(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1beta3DocumentTextChange
    buildGoogleCloudDocumentaiV1beta3DocumentTextChange() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed8018();
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
    checkUnnamed8018(o.provenance!);
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata = 0;
api.GoogleCloudDocumentaiV1beta3EnableProcessorMetadata
    buildGoogleCloudDocumentaiV1beta3EnableProcessorMetadata() {
  final o = api.GoogleCloudDocumentaiV1beta3EnableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EnableProcessorMetadata(
    api.GoogleCloudDocumentaiV1beta3EnableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(o.commonMetadata!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest = 0;
api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest
    buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest();
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

core.int buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse = 0;
api.GoogleCloudDocumentaiV1beta3EnableProcessorResponse
    buildGoogleCloudDocumentaiV1beta3EnableProcessorResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3EnableProcessorResponse();
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EnableProcessorResponse(
    api.GoogleCloudDocumentaiV1beta3EnableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorType> buildUnnamed8019() {
  final o = <api.GoogleCloudDocumentaiV1beta3ProcessorType>[];
  o.add(buildGoogleCloudDocumentaiV1beta3ProcessorType());
  o.add(buildGoogleCloudDocumentaiV1beta3ProcessorType());
  return o;
}

void checkUnnamed8019(
    core.List<api.GoogleCloudDocumentaiV1beta3ProcessorType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ProcessorType(o[0]);
  checkGoogleCloudDocumentaiV1beta3ProcessorType(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse =
    0;
api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse
    buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse();
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse < 3) {
    o.processorTypes = buildUnnamed8019();
  }
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(
    api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse < 3) {
    checkUnnamed8019(o.processorTypes!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3GcsDocument = 0;
api.GoogleCloudDocumentaiV1beta3GcsDocument
    buildGoogleCloudDocumentaiV1beta3GcsDocument() {
  final o = api.GoogleCloudDocumentaiV1beta3GcsDocument();
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

core.List<api.GoogleCloudDocumentaiV1beta3GcsDocument> buildUnnamed8020() {
  final o = <api.GoogleCloudDocumentaiV1beta3GcsDocument>[];
  o.add(buildGoogleCloudDocumentaiV1beta3GcsDocument());
  o.add(buildGoogleCloudDocumentaiV1beta3GcsDocument());
  return o;
}

void checkUnnamed8020(
    core.List<api.GoogleCloudDocumentaiV1beta3GcsDocument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3GcsDocument(o[0]);
  checkGoogleCloudDocumentaiV1beta3GcsDocument(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments = 0;
api.GoogleCloudDocumentaiV1beta3GcsDocuments
    buildGoogleCloudDocumentaiV1beta3GcsDocuments() {
  final o = api.GoogleCloudDocumentaiV1beta3GcsDocuments();
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments < 3) {
    o.documents = buildUnnamed8020();
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3GcsDocuments(
    api.GoogleCloudDocumentaiV1beta3GcsDocuments o) {
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments < 3) {
    checkUnnamed8020(o.documents!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix = 0;
api.GoogleCloudDocumentaiV1beta3GcsPrefix
    buildGoogleCloudDocumentaiV1beta3GcsPrefix() {
  final o = api.GoogleCloudDocumentaiV1beta3GcsPrefix();
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
  final o = api.GoogleCloudDocumentaiV1beta3HumanReviewStatus();
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

core.List<api.GoogleCloudDocumentaiV1beta3Processor> buildUnnamed8021() {
  final o = <api.GoogleCloudDocumentaiV1beta3Processor>[];
  o.add(buildGoogleCloudDocumentaiV1beta3Processor());
  o.add(buildGoogleCloudDocumentaiV1beta3Processor());
  return o;
}

void checkUnnamed8021(core.List<api.GoogleCloudDocumentaiV1beta3Processor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3Processor(o[0]);
  checkGoogleCloudDocumentaiV1beta3Processor(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse = 0;
api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse
    buildGoogleCloudDocumentaiV1beta3ListProcessorsResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.processors = buildUnnamed8021();
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
    checkUnnamed8021(o.processors!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex = 0;
api.GoogleCloudDocumentaiV1beta3NormalizedVertex
    buildGoogleCloudDocumentaiV1beta3NormalizedVertex() {
  final o = api.GoogleCloudDocumentaiV1beta3NormalizedVertex();
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
  final o = api.GoogleCloudDocumentaiV1beta3ProcessRequest();
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
    checkGoogleCloudDocumentaiV1beta3Document(o.document!);
    checkGoogleCloudDocumentaiV1beta3Document(o.inlineDocument!);
    checkGoogleCloudDocumentaiV1beta3RawDocument(o.rawDocument!);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse = 0;
api.GoogleCloudDocumentaiV1beta3ProcessResponse
    buildGoogleCloudDocumentaiV1beta3ProcessResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessResponse();
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
    checkGoogleCloudDocumentaiV1beta3Document(o.document!);
    unittest.expect(
      o.humanReviewOperation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(o.humanReviewStatus!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Processor = 0;
api.GoogleCloudDocumentaiV1beta3Processor
    buildGoogleCloudDocumentaiV1beta3Processor() {
  final o = api.GoogleCloudDocumentaiV1beta3Processor();
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
    buildUnnamed8022() {
  final o = <api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo>[];
  o.add(buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo());
  o.add(buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo());
  return o;
}

void checkUnnamed8022(
    core.List<api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(o[0]);
  checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessorType = 0;
api.GoogleCloudDocumentaiV1beta3ProcessorType
    buildGoogleCloudDocumentaiV1beta3ProcessorType() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessorType();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorType < 3) {
    o.allowCreation = true;
    o.availableLocations = buildUnnamed8022();
    o.category = 'foo';
    o.name = 'foo';
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
    checkUnnamed8022(o.availableLocations!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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
  final o = api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo();
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
  final o = api.GoogleCloudDocumentaiV1beta3RawDocument();
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
  final o = api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();
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
    checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(o.commonMetadata!);
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
  final o = api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest < 3) {
    o.document = buildGoogleCloudDocumentaiV1beta3Document();
    o.enableSchemaValidation = true;
    o.inlineDocument = buildGoogleCloudDocumentaiV1beta3Document();
    o.priority = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(o.document!);
    unittest.expect(o.enableSchemaValidation!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta3Document(o.inlineDocument!);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse = 0;
api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse
    buildGoogleCloudDocumentaiV1beta3ReviewDocumentResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse();
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

core.int buildCounterGoogleCloudDocumentaiV1beta3Vertex = 0;
api.GoogleCloudDocumentaiV1beta3Vertex
    buildGoogleCloudDocumentaiV1beta3Vertex() {
  final o = api.GoogleCloudDocumentaiV1beta3Vertex();
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

core.List<api.GoogleCloudLocationLocation> buildUnnamed8023() {
  final o = <api.GoogleCloudLocationLocation>[];
  o.add(buildGoogleCloudLocationLocation());
  o.add(buildGoogleCloudLocationLocation());
  return o;
}

void checkUnnamed8023(core.List<api.GoogleCloudLocationLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudLocationLocation(o[0]);
  checkGoogleCloudLocationLocation(o[1]);
}

core.int buildCounterGoogleCloudLocationListLocationsResponse = 0;
api.GoogleCloudLocationListLocationsResponse
    buildGoogleCloudLocationListLocationsResponse() {
  final o = api.GoogleCloudLocationListLocationsResponse();
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    o.locations = buildUnnamed8023();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
    api.GoogleCloudLocationListLocationsResponse o) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed8023(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed8024() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8024(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed8025() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed8025(core.Map<core.String, core.Object> o) {
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
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed8024();
    o.locationId = 'foo';
    o.metadata = buildUnnamed8025();
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
    checkUnnamed8024(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed8025(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed8026() {
  final o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed8026(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed8026();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8026(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed8027() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed8027(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed8028() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed8028(core.Map<core.String, core.Object> o) {
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
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed8027();
    o.name = 'foo';
    o.response = buildUnnamed8028();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed8027(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8028(o.response!);
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

core.Map<core.String, core.Object> buildUnnamed8029() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed8029(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed8030() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed8029());
  o.add(buildUnnamed8029());
  return o;
}

void checkUnnamed8030(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8029(o[0]);
  checkUnnamed8029(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8030();
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
    checkUnnamed8030(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeColor = 0;
api.GoogleTypeColor buildGoogleTypeColor() {
  final o = api.GoogleTypeColor();
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
  final o = api.GoogleTypeDate();
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
  final o = api.GoogleTypeDateTime();
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
    checkGoogleTypeTimeZone(o.timeZone!);
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
  final o = api.GoogleTypeMoney();
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

core.List<core.String> buildUnnamed8031() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8031(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8032() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8032(core.List<core.String> o) {
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
  final o = api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed8031();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed8032();
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
    checkUnnamed8031(o.addressLines!);
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
    checkUnnamed8032(o.recipients!);
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
  final o = api.GoogleTypeTimeZone();
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
      final o = buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BatchProcessMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1BatchProcessMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1BatchProcessMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BatchProcessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1BatchProcessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1BatchProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1CommonOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1CommonOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1CommonOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1CommonOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1HumanReviewStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1HumanReviewStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1HumanReviewStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1HumanReviewStatus(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ReviewDocumentResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ReviewDocumentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ReviewDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ReviewDocumentResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1BoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1Document();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1Document(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentEntity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntityRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageBlock',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageDimension',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageFormField',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageFormField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageImage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageLayout',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageLine(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageMatrix',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageParagraph',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTable',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTable(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageToken',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageToken(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageVisualElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentProvenance',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentProvenance(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentProvenanceParent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentRevision(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentShardInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentShardInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentStyle(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentStyleFontSize',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextChange',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1DocumentTextChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentTextChange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1InputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1InputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1OperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1OperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1OperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1OutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1OutputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1ProcessDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta1Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1Vertex(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2BoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2Document();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2Document(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentEntity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntityRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentLabel(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageBlock',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageDimension',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageFormField',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageFormField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageImage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageLayout',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageLine(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageMatrix',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageParagraph',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTable',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTable(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageToken',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageToken(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageVisualElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentProvenance',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentProvenance(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentProvenanceParent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentRevision(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentShardInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentShardInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentStyle(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentStyleFontSize',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextChange',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2DocumentTextChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentTextChange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2InputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2InputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2OperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2OperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2OperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2OutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2OutputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2ProcessDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta2Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta2Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2Vertex(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3BatchProcessMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3BatchProcessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3BatchProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BoundingPoly(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3CommonOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DisableProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DisableProcessorMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DisableProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DisableProcessorMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DisableProcessorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DisableProcessorRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DisableProcessorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DisableProcessorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DisableProcessorResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DisableProcessorResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Document();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3Document(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentEntity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntityRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentOutputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageBlock',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageDimension',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageFormField',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageFormField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageImage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageLayout',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageLine(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageMatrix',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageParagraph',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTable',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTable(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageToken',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageToken(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageVisualElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentProvenance',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentProvenance(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentProvenanceParent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentRevision(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentShardInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentShardInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentShardInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentStyle(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentStyleFontSize',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentStyleFontSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentStyleFontSize(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextChange',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentTextChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentTextChange(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3EnableProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3EnableProcessorMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3EnableProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3EnableProcessorMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3EnableProcessorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3EnableProcessorRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3EnableProcessorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3EnableProcessorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3EnableProcessorResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3EnableProcessorResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsDocument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3GcsDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3GcsDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3GcsDocument(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsDocuments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3GcsDocuments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3GcsDocuments.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3GcsDocuments(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsPrefix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3GcsPrefix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3GcsPrefix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3GcsPrefix(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3HumanReviewStatus',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3HumanReviewStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3HumanReviewStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ListProcessorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ListProcessorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ListProcessorsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Processor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Processor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Processor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3Processor(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessorType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessorType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessorType(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3RawDocument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3RawDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3RawDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3RawDocument(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ReviewDocumentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3Vertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeColor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeColor(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDateTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDateTime(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeMoney.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group('obj-schema-GoogleTypePostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypePostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypePostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypePostalAddress(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeTimeZone.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeTimeZone(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--fetchProcessorTypes', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.fetchProcessorTypes(arg_parent, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(response
          as api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleCloudLocationLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
          response as api.GoogleCloudLocationLocation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
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
    unittest.test('method--cancelOperation', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancelOperation(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsProcessorsResource', () {
    unittest.test('method--batchProcess', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchProcess(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1beta3Processor();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1beta3Processor.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3Processor(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildGoogleCloudDocumentaiV1beta3Processor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3Processor(
          response as api.GoogleCloudDocumentaiV1beta3Processor);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3DisableProcessorRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3EnableProcessorRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.enable(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
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
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3ProcessRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
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
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.humanReviewConfig;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
      final arg_humanReviewConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
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
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchProcess(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--process', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3ProcessRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
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
