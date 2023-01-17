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

import 'package:googleapis/contentwarehouse/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudContentwarehouseV1AccessControlAction = 0;
api.GoogleCloudContentwarehouseV1AccessControlAction
    buildGoogleCloudContentwarehouseV1AccessControlAction() {
  final o = api.GoogleCloudContentwarehouseV1AccessControlAction();
  buildCounterGoogleCloudContentwarehouseV1AccessControlAction++;
  if (buildCounterGoogleCloudContentwarehouseV1AccessControlAction < 3) {
    o.operationType = 'foo';
    o.policy = buildGoogleIamV1Policy();
  }
  buildCounterGoogleCloudContentwarehouseV1AccessControlAction--;
  return o;
}

void checkGoogleCloudContentwarehouseV1AccessControlAction(
    api.GoogleCloudContentwarehouseV1AccessControlAction o) {
  buildCounterGoogleCloudContentwarehouseV1AccessControlAction++;
  if (buildCounterGoogleCloudContentwarehouseV1AccessControlAction < 3) {
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    checkGoogleIamV1Policy(o.policy!);
  }
  buildCounterGoogleCloudContentwarehouseV1AccessControlAction--;
}

core.int buildCounterGoogleCloudContentwarehouseV1Action = 0;
api.GoogleCloudContentwarehouseV1Action
    buildGoogleCloudContentwarehouseV1Action() {
  final o = api.GoogleCloudContentwarehouseV1Action();
  buildCounterGoogleCloudContentwarehouseV1Action++;
  if (buildCounterGoogleCloudContentwarehouseV1Action < 3) {
    o.accessControl = buildGoogleCloudContentwarehouseV1AccessControlAction();
    o.actionId = 'foo';
    o.addToFolder = buildGoogleCloudContentwarehouseV1AddToFolderAction();
    o.dataUpdate = buildGoogleCloudContentwarehouseV1DataUpdateAction();
    o.dataValidation = buildGoogleCloudContentwarehouseV1DataValidationAction();
    o.deleteDocumentAction =
        buildGoogleCloudContentwarehouseV1DeleteDocumentAction();
    o.publishToPubSub = buildGoogleCloudContentwarehouseV1PublishAction();
    o.removeFromFolderAction =
        buildGoogleCloudContentwarehouseV1RemoveFromFolderAction();
  }
  buildCounterGoogleCloudContentwarehouseV1Action--;
  return o;
}

void checkGoogleCloudContentwarehouseV1Action(
    api.GoogleCloudContentwarehouseV1Action o) {
  buildCounterGoogleCloudContentwarehouseV1Action++;
  if (buildCounterGoogleCloudContentwarehouseV1Action < 3) {
    checkGoogleCloudContentwarehouseV1AccessControlAction(o.accessControl!);
    unittest.expect(
      o.actionId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1AddToFolderAction(o.addToFolder!);
    checkGoogleCloudContentwarehouseV1DataUpdateAction(o.dataUpdate!);
    checkGoogleCloudContentwarehouseV1DataValidationAction(o.dataValidation!);
    checkGoogleCloudContentwarehouseV1DeleteDocumentAction(
        o.deleteDocumentAction!);
    checkGoogleCloudContentwarehouseV1PublishAction(o.publishToPubSub!);
    checkGoogleCloudContentwarehouseV1RemoveFromFolderAction(
        o.removeFromFolderAction!);
  }
  buildCounterGoogleCloudContentwarehouseV1Action--;
}

core.List<api.GoogleCloudContentwarehouseV1RuleActionsPair> buildUnnamed0() => [
      buildGoogleCloudContentwarehouseV1RuleActionsPair(),
      buildGoogleCloudContentwarehouseV1RuleActionsPair(),
    ];

void checkUnnamed0(
    core.List<api.GoogleCloudContentwarehouseV1RuleActionsPair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1RuleActionsPair(o[0]);
  checkGoogleCloudContentwarehouseV1RuleActionsPair(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1ActionExecutorOutput = 0;
api.GoogleCloudContentwarehouseV1ActionExecutorOutput
    buildGoogleCloudContentwarehouseV1ActionExecutorOutput() {
  final o = api.GoogleCloudContentwarehouseV1ActionExecutorOutput();
  buildCounterGoogleCloudContentwarehouseV1ActionExecutorOutput++;
  if (buildCounterGoogleCloudContentwarehouseV1ActionExecutorOutput < 3) {
    o.ruleActionsPairs = buildUnnamed0();
  }
  buildCounterGoogleCloudContentwarehouseV1ActionExecutorOutput--;
  return o;
}

void checkGoogleCloudContentwarehouseV1ActionExecutorOutput(
    api.GoogleCloudContentwarehouseV1ActionExecutorOutput o) {
  buildCounterGoogleCloudContentwarehouseV1ActionExecutorOutput++;
  if (buildCounterGoogleCloudContentwarehouseV1ActionExecutorOutput < 3) {
    checkUnnamed0(o.ruleActionsPairs!);
  }
  buildCounterGoogleCloudContentwarehouseV1ActionExecutorOutput--;
}

core.int buildCounterGoogleCloudContentwarehouseV1ActionOutput = 0;
api.GoogleCloudContentwarehouseV1ActionOutput
    buildGoogleCloudContentwarehouseV1ActionOutput() {
  final o = api.GoogleCloudContentwarehouseV1ActionOutput();
  buildCounterGoogleCloudContentwarehouseV1ActionOutput++;
  if (buildCounterGoogleCloudContentwarehouseV1ActionOutput < 3) {
    o.actionId = 'foo';
    o.actionState = 'foo';
    o.outputMessage = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1ActionOutput--;
  return o;
}

void checkGoogleCloudContentwarehouseV1ActionOutput(
    api.GoogleCloudContentwarehouseV1ActionOutput o) {
  buildCounterGoogleCloudContentwarehouseV1ActionOutput++;
  if (buildCounterGoogleCloudContentwarehouseV1ActionOutput < 3) {
    unittest.expect(
      o.actionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.actionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1ActionOutput--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1AddToFolderAction = 0;
api.GoogleCloudContentwarehouseV1AddToFolderAction
    buildGoogleCloudContentwarehouseV1AddToFolderAction() {
  final o = api.GoogleCloudContentwarehouseV1AddToFolderAction();
  buildCounterGoogleCloudContentwarehouseV1AddToFolderAction++;
  if (buildCounterGoogleCloudContentwarehouseV1AddToFolderAction < 3) {
    o.folders = buildUnnamed1();
  }
  buildCounterGoogleCloudContentwarehouseV1AddToFolderAction--;
  return o;
}

void checkGoogleCloudContentwarehouseV1AddToFolderAction(
    api.GoogleCloudContentwarehouseV1AddToFolderAction o) {
  buildCounterGoogleCloudContentwarehouseV1AddToFolderAction++;
  if (buildCounterGoogleCloudContentwarehouseV1AddToFolderAction < 3) {
    checkUnnamed1(o.folders!);
  }
  buildCounterGoogleCloudContentwarehouseV1AddToFolderAction--;
}

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1CloudAIDocumentOption = 0;
api.GoogleCloudContentwarehouseV1CloudAIDocumentOption
    buildGoogleCloudContentwarehouseV1CloudAIDocumentOption() {
  final o = api.GoogleCloudContentwarehouseV1CloudAIDocumentOption();
  buildCounterGoogleCloudContentwarehouseV1CloudAIDocumentOption++;
  if (buildCounterGoogleCloudContentwarehouseV1CloudAIDocumentOption < 3) {
    o.customizedEntitiesPropertiesConversions = buildUnnamed2();
    o.enableEntitiesConversions = true;
  }
  buildCounterGoogleCloudContentwarehouseV1CloudAIDocumentOption--;
  return o;
}

void checkGoogleCloudContentwarehouseV1CloudAIDocumentOption(
    api.GoogleCloudContentwarehouseV1CloudAIDocumentOption o) {
  buildCounterGoogleCloudContentwarehouseV1CloudAIDocumentOption++;
  if (buildCounterGoogleCloudContentwarehouseV1CloudAIDocumentOption < 3) {
    checkUnnamed2(o.customizedEntitiesPropertiesConversions!);
    unittest.expect(o.enableEntitiesConversions!, unittest.isTrue);
  }
  buildCounterGoogleCloudContentwarehouseV1CloudAIDocumentOption--;
}

core.int buildCounterGoogleCloudContentwarehouseV1CreateDocumentLinkRequest = 0;
api.GoogleCloudContentwarehouseV1CreateDocumentLinkRequest
    buildGoogleCloudContentwarehouseV1CreateDocumentLinkRequest() {
  final o = api.GoogleCloudContentwarehouseV1CreateDocumentLinkRequest();
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentLinkRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1CreateDocumentLinkRequest < 3) {
    o.documentLink = buildGoogleCloudContentwarehouseV1DocumentLink();
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
  }
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentLinkRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1CreateDocumentLinkRequest(
    api.GoogleCloudContentwarehouseV1CreateDocumentLinkRequest o) {
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentLinkRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1CreateDocumentLinkRequest < 3) {
    checkGoogleCloudContentwarehouseV1DocumentLink(o.documentLink!);
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
  }
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentLinkRequest--;
}

core.int buildCounterGoogleCloudContentwarehouseV1CreateDocumentRequest = 0;
api.GoogleCloudContentwarehouseV1CreateDocumentRequest
    buildGoogleCloudContentwarehouseV1CreateDocumentRequest() {
  final o = api.GoogleCloudContentwarehouseV1CreateDocumentRequest();
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1CreateDocumentRequest < 3) {
    o.cloudAiDocumentOption =
        buildGoogleCloudContentwarehouseV1CloudAIDocumentOption();
    o.createMask = 'foo';
    o.document = buildGoogleCloudContentwarehouseV1Document();
    o.policy = buildGoogleIamV1Policy();
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
  }
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1CreateDocumentRequest(
    api.GoogleCloudContentwarehouseV1CreateDocumentRequest o) {
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1CreateDocumentRequest < 3) {
    checkGoogleCloudContentwarehouseV1CloudAIDocumentOption(
        o.cloudAiDocumentOption!);
    unittest.expect(
      o.createMask!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1Document(o.document!);
    checkGoogleIamV1Policy(o.policy!);
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
  }
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentRequest--;
}

core.int buildCounterGoogleCloudContentwarehouseV1CreateDocumentResponse = 0;
api.GoogleCloudContentwarehouseV1CreateDocumentResponse
    buildGoogleCloudContentwarehouseV1CreateDocumentResponse() {
  final o = api.GoogleCloudContentwarehouseV1CreateDocumentResponse();
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1CreateDocumentResponse < 3) {
    o.document = buildGoogleCloudContentwarehouseV1Document();
    o.metadata = buildGoogleCloudContentwarehouseV1ResponseMetadata();
    o.ruleEngineOutput = buildGoogleCloudContentwarehouseV1RuleEngineOutput();
  }
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentResponse--;
  return o;
}

void checkGoogleCloudContentwarehouseV1CreateDocumentResponse(
    api.GoogleCloudContentwarehouseV1CreateDocumentResponse o) {
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1CreateDocumentResponse < 3) {
    checkGoogleCloudContentwarehouseV1Document(o.document!);
    checkGoogleCloudContentwarehouseV1ResponseMetadata(o.metadata!);
    checkGoogleCloudContentwarehouseV1RuleEngineOutput(o.ruleEngineOutput!);
  }
  buildCounterGoogleCloudContentwarehouseV1CreateDocumentResponse--;
}

core.List<api.GoogleCloudContentwarehouseV1WeightedSchemaProperty>
    buildUnnamed3() => [
          buildGoogleCloudContentwarehouseV1WeightedSchemaProperty(),
          buildGoogleCloudContentwarehouseV1WeightedSchemaProperty(),
        ];

void checkUnnamed3(
    core.List<api.GoogleCloudContentwarehouseV1WeightedSchemaProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1WeightedSchemaProperty(o[0]);
  checkGoogleCloudContentwarehouseV1WeightedSchemaProperty(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1CustomWeightsMetadata = 0;
api.GoogleCloudContentwarehouseV1CustomWeightsMetadata
    buildGoogleCloudContentwarehouseV1CustomWeightsMetadata() {
  final o = api.GoogleCloudContentwarehouseV1CustomWeightsMetadata();
  buildCounterGoogleCloudContentwarehouseV1CustomWeightsMetadata++;
  if (buildCounterGoogleCloudContentwarehouseV1CustomWeightsMetadata < 3) {
    o.weightedSchemaProperties = buildUnnamed3();
  }
  buildCounterGoogleCloudContentwarehouseV1CustomWeightsMetadata--;
  return o;
}

void checkGoogleCloudContentwarehouseV1CustomWeightsMetadata(
    api.GoogleCloudContentwarehouseV1CustomWeightsMetadata o) {
  buildCounterGoogleCloudContentwarehouseV1CustomWeightsMetadata++;
  if (buildCounterGoogleCloudContentwarehouseV1CustomWeightsMetadata < 3) {
    checkUnnamed3(o.weightedSchemaProperties!);
  }
  buildCounterGoogleCloudContentwarehouseV1CustomWeightsMetadata--;
}

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1DataUpdateAction = 0;
api.GoogleCloudContentwarehouseV1DataUpdateAction
    buildGoogleCloudContentwarehouseV1DataUpdateAction() {
  final o = api.GoogleCloudContentwarehouseV1DataUpdateAction();
  buildCounterGoogleCloudContentwarehouseV1DataUpdateAction++;
  if (buildCounterGoogleCloudContentwarehouseV1DataUpdateAction < 3) {
    o.entries = buildUnnamed4();
  }
  buildCounterGoogleCloudContentwarehouseV1DataUpdateAction--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DataUpdateAction(
    api.GoogleCloudContentwarehouseV1DataUpdateAction o) {
  buildCounterGoogleCloudContentwarehouseV1DataUpdateAction++;
  if (buildCounterGoogleCloudContentwarehouseV1DataUpdateAction < 3) {
    checkUnnamed4(o.entries!);
  }
  buildCounterGoogleCloudContentwarehouseV1DataUpdateAction--;
}

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1DataValidationAction = 0;
api.GoogleCloudContentwarehouseV1DataValidationAction
    buildGoogleCloudContentwarehouseV1DataValidationAction() {
  final o = api.GoogleCloudContentwarehouseV1DataValidationAction();
  buildCounterGoogleCloudContentwarehouseV1DataValidationAction++;
  if (buildCounterGoogleCloudContentwarehouseV1DataValidationAction < 3) {
    o.conditions = buildUnnamed5();
  }
  buildCounterGoogleCloudContentwarehouseV1DataValidationAction--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DataValidationAction(
    api.GoogleCloudContentwarehouseV1DataValidationAction o) {
  buildCounterGoogleCloudContentwarehouseV1DataValidationAction++;
  if (buildCounterGoogleCloudContentwarehouseV1DataValidationAction < 3) {
    checkUnnamed5(o.conditions!);
  }
  buildCounterGoogleCloudContentwarehouseV1DataValidationAction--;
}

core.List<api.GoogleTypeDateTime> buildUnnamed6() => [
      buildGoogleTypeDateTime(),
      buildGoogleTypeDateTime(),
    ];

void checkUnnamed6(core.List<api.GoogleTypeDateTime> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleTypeDateTime(o[0]);
  checkGoogleTypeDateTime(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1DateTimeArray = 0;
api.GoogleCloudContentwarehouseV1DateTimeArray
    buildGoogleCloudContentwarehouseV1DateTimeArray() {
  final o = api.GoogleCloudContentwarehouseV1DateTimeArray();
  buildCounterGoogleCloudContentwarehouseV1DateTimeArray++;
  if (buildCounterGoogleCloudContentwarehouseV1DateTimeArray < 3) {
    o.values = buildUnnamed6();
  }
  buildCounterGoogleCloudContentwarehouseV1DateTimeArray--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DateTimeArray(
    api.GoogleCloudContentwarehouseV1DateTimeArray o) {
  buildCounterGoogleCloudContentwarehouseV1DateTimeArray++;
  if (buildCounterGoogleCloudContentwarehouseV1DateTimeArray < 3) {
    checkUnnamed6(o.values!);
  }
  buildCounterGoogleCloudContentwarehouseV1DateTimeArray--;
}

core.int buildCounterGoogleCloudContentwarehouseV1DateTimeTypeOptions = 0;
api.GoogleCloudContentwarehouseV1DateTimeTypeOptions
    buildGoogleCloudContentwarehouseV1DateTimeTypeOptions() {
  final o = api.GoogleCloudContentwarehouseV1DateTimeTypeOptions();
  buildCounterGoogleCloudContentwarehouseV1DateTimeTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1DateTimeTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1DateTimeTypeOptions--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DateTimeTypeOptions(
    api.GoogleCloudContentwarehouseV1DateTimeTypeOptions o) {
  buildCounterGoogleCloudContentwarehouseV1DateTimeTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1DateTimeTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1DateTimeTypeOptions--;
}

core.int buildCounterGoogleCloudContentwarehouseV1DeleteDocumentAction = 0;
api.GoogleCloudContentwarehouseV1DeleteDocumentAction
    buildGoogleCloudContentwarehouseV1DeleteDocumentAction() {
  final o = api.GoogleCloudContentwarehouseV1DeleteDocumentAction();
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentAction++;
  if (buildCounterGoogleCloudContentwarehouseV1DeleteDocumentAction < 3) {
    o.enableHardDelete = true;
  }
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentAction--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DeleteDocumentAction(
    api.GoogleCloudContentwarehouseV1DeleteDocumentAction o) {
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentAction++;
  if (buildCounterGoogleCloudContentwarehouseV1DeleteDocumentAction < 3) {
    unittest.expect(o.enableHardDelete!, unittest.isTrue);
  }
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentAction--;
}

core.int buildCounterGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest = 0;
api.GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest
    buildGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest() {
  final o = api.GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest();
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest < 3) {
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
  }
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest(
    api.GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest o) {
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest < 3) {
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
  }
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest--;
}

core.int buildCounterGoogleCloudContentwarehouseV1DeleteDocumentRequest = 0;
api.GoogleCloudContentwarehouseV1DeleteDocumentRequest
    buildGoogleCloudContentwarehouseV1DeleteDocumentRequest() {
  final o = api.GoogleCloudContentwarehouseV1DeleteDocumentRequest();
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1DeleteDocumentRequest < 3) {
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
  }
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DeleteDocumentRequest(
    api.GoogleCloudContentwarehouseV1DeleteDocumentRequest o) {
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1DeleteDocumentRequest < 3) {
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
  }
  buildCounterGoogleCloudContentwarehouseV1DeleteDocumentRequest--;
}

core.List<api.GoogleCloudContentwarehouseV1Property> buildUnnamed7() => [
      buildGoogleCloudContentwarehouseV1Property(),
      buildGoogleCloudContentwarehouseV1Property(),
    ];

void checkUnnamed7(core.List<api.GoogleCloudContentwarehouseV1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1Property(o[0]);
  checkGoogleCloudContentwarehouseV1Property(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1Document = 0;
api.GoogleCloudContentwarehouseV1Document
    buildGoogleCloudContentwarehouseV1Document() {
  final o = api.GoogleCloudContentwarehouseV1Document();
  buildCounterGoogleCloudContentwarehouseV1Document++;
  if (buildCounterGoogleCloudContentwarehouseV1Document < 3) {
    o.cloudAiDocument = buildGoogleCloudDocumentaiV1Document();
    o.contentCategory = 'foo';
    o.createTime = 'foo';
    o.creator = 'foo';
    o.displayName = 'foo';
    o.displayUri = 'foo';
    o.documentSchemaName = 'foo';
    o.inlineRawDocument = 'foo';
    o.name = 'foo';
    o.plainText = 'foo';
    o.properties = buildUnnamed7();
    o.rawDocumentFileType = 'foo';
    o.rawDocumentPath = 'foo';
    o.referenceId = 'foo';
    o.textExtractionDisabled = true;
    o.textExtractionEnabled = true;
    o.title = 'foo';
    o.updateTime = 'foo';
    o.updater = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1Document--;
  return o;
}

void checkGoogleCloudContentwarehouseV1Document(
    api.GoogleCloudContentwarehouseV1Document o) {
  buildCounterGoogleCloudContentwarehouseV1Document++;
  if (buildCounterGoogleCloudContentwarehouseV1Document < 3) {
    checkGoogleCloudDocumentaiV1Document(o.cloudAiDocument!);
    unittest.expect(
      o.contentCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentSchemaName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inlineRawDocument!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.plainText!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.properties!);
    unittest.expect(
      o.rawDocumentFileType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rawDocumentPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referenceId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.textExtractionDisabled!, unittest.isTrue);
    unittest.expect(o.textExtractionEnabled!, unittest.isTrue);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updater!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1Document--;
}

core.int buildCounterGoogleCloudContentwarehouseV1DocumentLink = 0;
api.GoogleCloudContentwarehouseV1DocumentLink
    buildGoogleCloudContentwarehouseV1DocumentLink() {
  final o = api.GoogleCloudContentwarehouseV1DocumentLink();
  buildCounterGoogleCloudContentwarehouseV1DocumentLink++;
  if (buildCounterGoogleCloudContentwarehouseV1DocumentLink < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.sourceDocumentReference =
        buildGoogleCloudContentwarehouseV1DocumentReference();
    o.state = 'foo';
    o.targetDocumentReference =
        buildGoogleCloudContentwarehouseV1DocumentReference();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1DocumentLink--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DocumentLink(
    api.GoogleCloudContentwarehouseV1DocumentLink o) {
  buildCounterGoogleCloudContentwarehouseV1DocumentLink++;
  if (buildCounterGoogleCloudContentwarehouseV1DocumentLink < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1DocumentReference(
        o.sourceDocumentReference!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1DocumentReference(
        o.targetDocumentReference!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1DocumentLink--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.List<api.GoogleCloudContentwarehouseV1PropertyFilter> buildUnnamed10() => [
      buildGoogleCloudContentwarehouseV1PropertyFilter(),
      buildGoogleCloudContentwarehouseV1PropertyFilter(),
    ];

void checkUnnamed10(
    core.List<api.GoogleCloudContentwarehouseV1PropertyFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1PropertyFilter(o[0]);
  checkGoogleCloudContentwarehouseV1PropertyFilter(o[1]);
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.List<api.GoogleCloudContentwarehouseV1TimeFilter> buildUnnamed12() => [
      buildGoogleCloudContentwarehouseV1TimeFilter(),
      buildGoogleCloudContentwarehouseV1TimeFilter(),
    ];

void checkUnnamed12(core.List<api.GoogleCloudContentwarehouseV1TimeFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1TimeFilter(o[0]);
  checkGoogleCloudContentwarehouseV1TimeFilter(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1DocumentQuery = 0;
api.GoogleCloudContentwarehouseV1DocumentQuery
    buildGoogleCloudContentwarehouseV1DocumentQuery() {
  final o = api.GoogleCloudContentwarehouseV1DocumentQuery();
  buildCounterGoogleCloudContentwarehouseV1DocumentQuery++;
  if (buildCounterGoogleCloudContentwarehouseV1DocumentQuery < 3) {
    o.customPropertyFilter = 'foo';
    o.customWeightsMetadata =
        buildGoogleCloudContentwarehouseV1CustomWeightsMetadata();
    o.documentCreatorFilter = buildUnnamed8();
    o.documentSchemaNames = buildUnnamed9();
    o.fileTypeFilter = buildGoogleCloudContentwarehouseV1FileTypeFilter();
    o.folderNameFilter = 'foo';
    o.isNlQuery = true;
    o.propertyFilter = buildUnnamed10();
    o.query = 'foo';
    o.queryContext = buildUnnamed11();
    o.timeFilters = buildUnnamed12();
  }
  buildCounterGoogleCloudContentwarehouseV1DocumentQuery--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DocumentQuery(
    api.GoogleCloudContentwarehouseV1DocumentQuery o) {
  buildCounterGoogleCloudContentwarehouseV1DocumentQuery++;
  if (buildCounterGoogleCloudContentwarehouseV1DocumentQuery < 3) {
    unittest.expect(
      o.customPropertyFilter!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1CustomWeightsMetadata(
        o.customWeightsMetadata!);
    checkUnnamed8(o.documentCreatorFilter!);
    checkUnnamed9(o.documentSchemaNames!);
    checkGoogleCloudContentwarehouseV1FileTypeFilter(o.fileTypeFilter!);
    unittest.expect(
      o.folderNameFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isNlQuery!, unittest.isTrue);
    checkUnnamed10(o.propertyFilter!);
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.queryContext!);
    checkUnnamed12(o.timeFilters!);
  }
  buildCounterGoogleCloudContentwarehouseV1DocumentQuery--;
}

core.int buildCounterGoogleCloudContentwarehouseV1DocumentReference = 0;
api.GoogleCloudContentwarehouseV1DocumentReference
    buildGoogleCloudContentwarehouseV1DocumentReference() {
  final o = api.GoogleCloudContentwarehouseV1DocumentReference();
  buildCounterGoogleCloudContentwarehouseV1DocumentReference++;
  if (buildCounterGoogleCloudContentwarehouseV1DocumentReference < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.documentIsFolder = true;
    o.documentName = 'foo';
    o.snippet = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1DocumentReference--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DocumentReference(
    api.GoogleCloudContentwarehouseV1DocumentReference o) {
  buildCounterGoogleCloudContentwarehouseV1DocumentReference++;
  if (buildCounterGoogleCloudContentwarehouseV1DocumentReference < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.documentIsFolder!, unittest.isTrue);
    unittest.expect(
      o.documentName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1DocumentReference--;
}

core.List<api.GoogleCloudContentwarehouseV1PropertyDefinition>
    buildUnnamed13() => [
          buildGoogleCloudContentwarehouseV1PropertyDefinition(),
          buildGoogleCloudContentwarehouseV1PropertyDefinition(),
        ];

void checkUnnamed13(
    core.List<api.GoogleCloudContentwarehouseV1PropertyDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1PropertyDefinition(o[0]);
  checkGoogleCloudContentwarehouseV1PropertyDefinition(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1DocumentSchema = 0;
api.GoogleCloudContentwarehouseV1DocumentSchema
    buildGoogleCloudContentwarehouseV1DocumentSchema() {
  final o = api.GoogleCloudContentwarehouseV1DocumentSchema();
  buildCounterGoogleCloudContentwarehouseV1DocumentSchema++;
  if (buildCounterGoogleCloudContentwarehouseV1DocumentSchema < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.documentIsFolder = true;
    o.name = 'foo';
    o.propertyDefinitions = buildUnnamed13();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1DocumentSchema--;
  return o;
}

void checkGoogleCloudContentwarehouseV1DocumentSchema(
    api.GoogleCloudContentwarehouseV1DocumentSchema o) {
  buildCounterGoogleCloudContentwarehouseV1DocumentSchema++;
  if (buildCounterGoogleCloudContentwarehouseV1DocumentSchema < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.documentIsFolder!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.propertyDefinitions!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1DocumentSchema--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1EnumArray = 0;
api.GoogleCloudContentwarehouseV1EnumArray
    buildGoogleCloudContentwarehouseV1EnumArray() {
  final o = api.GoogleCloudContentwarehouseV1EnumArray();
  buildCounterGoogleCloudContentwarehouseV1EnumArray++;
  if (buildCounterGoogleCloudContentwarehouseV1EnumArray < 3) {
    o.values = buildUnnamed14();
  }
  buildCounterGoogleCloudContentwarehouseV1EnumArray--;
  return o;
}

void checkGoogleCloudContentwarehouseV1EnumArray(
    api.GoogleCloudContentwarehouseV1EnumArray o) {
  buildCounterGoogleCloudContentwarehouseV1EnumArray++;
  if (buildCounterGoogleCloudContentwarehouseV1EnumArray < 3) {
    checkUnnamed14(o.values!);
  }
  buildCounterGoogleCloudContentwarehouseV1EnumArray--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1EnumTypeOptions = 0;
api.GoogleCloudContentwarehouseV1EnumTypeOptions
    buildGoogleCloudContentwarehouseV1EnumTypeOptions() {
  final o = api.GoogleCloudContentwarehouseV1EnumTypeOptions();
  buildCounterGoogleCloudContentwarehouseV1EnumTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1EnumTypeOptions < 3) {
    o.possibleValues = buildUnnamed15();
    o.validationCheckDisabled = true;
  }
  buildCounterGoogleCloudContentwarehouseV1EnumTypeOptions--;
  return o;
}

void checkGoogleCloudContentwarehouseV1EnumTypeOptions(
    api.GoogleCloudContentwarehouseV1EnumTypeOptions o) {
  buildCounterGoogleCloudContentwarehouseV1EnumTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1EnumTypeOptions < 3) {
    checkUnnamed15(o.possibleValues!);
    unittest.expect(o.validationCheckDisabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudContentwarehouseV1EnumTypeOptions--;
}

core.int buildCounterGoogleCloudContentwarehouseV1EnumValue = 0;
api.GoogleCloudContentwarehouseV1EnumValue
    buildGoogleCloudContentwarehouseV1EnumValue() {
  final o = api.GoogleCloudContentwarehouseV1EnumValue();
  buildCounterGoogleCloudContentwarehouseV1EnumValue++;
  if (buildCounterGoogleCloudContentwarehouseV1EnumValue < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1EnumValue--;
  return o;
}

void checkGoogleCloudContentwarehouseV1EnumValue(
    api.GoogleCloudContentwarehouseV1EnumValue o) {
  buildCounterGoogleCloudContentwarehouseV1EnumValue++;
  if (buildCounterGoogleCloudContentwarehouseV1EnumValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1EnumValue--;
}

core.int buildCounterGoogleCloudContentwarehouseV1FetchAclRequest = 0;
api.GoogleCloudContentwarehouseV1FetchAclRequest
    buildGoogleCloudContentwarehouseV1FetchAclRequest() {
  final o = api.GoogleCloudContentwarehouseV1FetchAclRequest();
  buildCounterGoogleCloudContentwarehouseV1FetchAclRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1FetchAclRequest < 3) {
    o.projectOwner = true;
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
  }
  buildCounterGoogleCloudContentwarehouseV1FetchAclRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1FetchAclRequest(
    api.GoogleCloudContentwarehouseV1FetchAclRequest o) {
  buildCounterGoogleCloudContentwarehouseV1FetchAclRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1FetchAclRequest < 3) {
    unittest.expect(o.projectOwner!, unittest.isTrue);
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
  }
  buildCounterGoogleCloudContentwarehouseV1FetchAclRequest--;
}

core.int buildCounterGoogleCloudContentwarehouseV1FetchAclResponse = 0;
api.GoogleCloudContentwarehouseV1FetchAclResponse
    buildGoogleCloudContentwarehouseV1FetchAclResponse() {
  final o = api.GoogleCloudContentwarehouseV1FetchAclResponse();
  buildCounterGoogleCloudContentwarehouseV1FetchAclResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1FetchAclResponse < 3) {
    o.metadata = buildGoogleCloudContentwarehouseV1ResponseMetadata();
    o.policy = buildGoogleIamV1Policy();
  }
  buildCounterGoogleCloudContentwarehouseV1FetchAclResponse--;
  return o;
}

void checkGoogleCloudContentwarehouseV1FetchAclResponse(
    api.GoogleCloudContentwarehouseV1FetchAclResponse o) {
  buildCounterGoogleCloudContentwarehouseV1FetchAclResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1FetchAclResponse < 3) {
    checkGoogleCloudContentwarehouseV1ResponseMetadata(o.metadata!);
    checkGoogleIamV1Policy(o.policy!);
  }
  buildCounterGoogleCloudContentwarehouseV1FetchAclResponse--;
}

core.int buildCounterGoogleCloudContentwarehouseV1FileTypeFilter = 0;
api.GoogleCloudContentwarehouseV1FileTypeFilter
    buildGoogleCloudContentwarehouseV1FileTypeFilter() {
  final o = api.GoogleCloudContentwarehouseV1FileTypeFilter();
  buildCounterGoogleCloudContentwarehouseV1FileTypeFilter++;
  if (buildCounterGoogleCloudContentwarehouseV1FileTypeFilter < 3) {
    o.fileType = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1FileTypeFilter--;
  return o;
}

void checkGoogleCloudContentwarehouseV1FileTypeFilter(
    api.GoogleCloudContentwarehouseV1FileTypeFilter o) {
  buildCounterGoogleCloudContentwarehouseV1FileTypeFilter++;
  if (buildCounterGoogleCloudContentwarehouseV1FileTypeFilter < 3) {
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1FileTypeFilter--;
}

core.List<core.double> buildUnnamed16() => [
      42.0,
      42.0,
    ];

void checkUnnamed16(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterGoogleCloudContentwarehouseV1FloatArray = 0;
api.GoogleCloudContentwarehouseV1FloatArray
    buildGoogleCloudContentwarehouseV1FloatArray() {
  final o = api.GoogleCloudContentwarehouseV1FloatArray();
  buildCounterGoogleCloudContentwarehouseV1FloatArray++;
  if (buildCounterGoogleCloudContentwarehouseV1FloatArray < 3) {
    o.values = buildUnnamed16();
  }
  buildCounterGoogleCloudContentwarehouseV1FloatArray--;
  return o;
}

void checkGoogleCloudContentwarehouseV1FloatArray(
    api.GoogleCloudContentwarehouseV1FloatArray o) {
  buildCounterGoogleCloudContentwarehouseV1FloatArray++;
  if (buildCounterGoogleCloudContentwarehouseV1FloatArray < 3) {
    checkUnnamed16(o.values!);
  }
  buildCounterGoogleCloudContentwarehouseV1FloatArray--;
}

core.int buildCounterGoogleCloudContentwarehouseV1FloatTypeOptions = 0;
api.GoogleCloudContentwarehouseV1FloatTypeOptions
    buildGoogleCloudContentwarehouseV1FloatTypeOptions() {
  final o = api.GoogleCloudContentwarehouseV1FloatTypeOptions();
  buildCounterGoogleCloudContentwarehouseV1FloatTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1FloatTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1FloatTypeOptions--;
  return o;
}

void checkGoogleCloudContentwarehouseV1FloatTypeOptions(
    api.GoogleCloudContentwarehouseV1FloatTypeOptions o) {
  buildCounterGoogleCloudContentwarehouseV1FloatTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1FloatTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1FloatTypeOptions--;
}

core.int buildCounterGoogleCloudContentwarehouseV1GetDocumentRequest = 0;
api.GoogleCloudContentwarehouseV1GetDocumentRequest
    buildGoogleCloudContentwarehouseV1GetDocumentRequest() {
  final o = api.GoogleCloudContentwarehouseV1GetDocumentRequest();
  buildCounterGoogleCloudContentwarehouseV1GetDocumentRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1GetDocumentRequest < 3) {
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
  }
  buildCounterGoogleCloudContentwarehouseV1GetDocumentRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1GetDocumentRequest(
    api.GoogleCloudContentwarehouseV1GetDocumentRequest o) {
  buildCounterGoogleCloudContentwarehouseV1GetDocumentRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1GetDocumentRequest < 3) {
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
  }
  buildCounterGoogleCloudContentwarehouseV1GetDocumentRequest--;
}

core.int buildCounterGoogleCloudContentwarehouseV1HistogramQuery = 0;
api.GoogleCloudContentwarehouseV1HistogramQuery
    buildGoogleCloudContentwarehouseV1HistogramQuery() {
  final o = api.GoogleCloudContentwarehouseV1HistogramQuery();
  buildCounterGoogleCloudContentwarehouseV1HistogramQuery++;
  if (buildCounterGoogleCloudContentwarehouseV1HistogramQuery < 3) {
    o.filters =
        buildGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter();
    o.histogramQuery = 'foo';
    o.requirePreciseResultSize = true;
  }
  buildCounterGoogleCloudContentwarehouseV1HistogramQuery--;
  return o;
}

void checkGoogleCloudContentwarehouseV1HistogramQuery(
    api.GoogleCloudContentwarehouseV1HistogramQuery o) {
  buildCounterGoogleCloudContentwarehouseV1HistogramQuery++;
  if (buildCounterGoogleCloudContentwarehouseV1HistogramQuery < 3) {
    checkGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter(
        o.filters!);
    unittest.expect(
      o.histogramQuery!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requirePreciseResultSize!, unittest.isTrue);
  }
  buildCounterGoogleCloudContentwarehouseV1HistogramQuery--;
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter =
    0;
api.GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter
    buildGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter() {
  final o = api.GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter();
  buildCounterGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter++;
  if (buildCounterGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter <
      3) {
    o.documentSchemas = buildUnnamed17();
    o.propertyNames = buildUnnamed18();
    o.yAxis = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter--;
  return o;
}

void checkGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter(
    api.GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter o) {
  buildCounterGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter++;
  if (buildCounterGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter <
      3) {
    checkUnnamed17(o.documentSchemas!);
    checkUnnamed18(o.propertyNames!);
    unittest.expect(
      o.yAxis!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter--;
}

core.Map<core.String, core.String> buildUnnamed19() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed19(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1HistogramQueryResult = 0;
api.GoogleCloudContentwarehouseV1HistogramQueryResult
    buildGoogleCloudContentwarehouseV1HistogramQueryResult() {
  final o = api.GoogleCloudContentwarehouseV1HistogramQueryResult();
  buildCounterGoogleCloudContentwarehouseV1HistogramQueryResult++;
  if (buildCounterGoogleCloudContentwarehouseV1HistogramQueryResult < 3) {
    o.histogram = buildUnnamed19();
    o.histogramQuery = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1HistogramQueryResult--;
  return o;
}

void checkGoogleCloudContentwarehouseV1HistogramQueryResult(
    api.GoogleCloudContentwarehouseV1HistogramQueryResult o) {
  buildCounterGoogleCloudContentwarehouseV1HistogramQueryResult++;
  if (buildCounterGoogleCloudContentwarehouseV1HistogramQueryResult < 3) {
    checkUnnamed19(o.histogram!);
    unittest.expect(
      o.histogramQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1HistogramQueryResult--;
}

core.int buildCounterGoogleCloudContentwarehouseV1InitializeProjectRequest = 0;
api.GoogleCloudContentwarehouseV1InitializeProjectRequest
    buildGoogleCloudContentwarehouseV1InitializeProjectRequest() {
  final o = api.GoogleCloudContentwarehouseV1InitializeProjectRequest();
  buildCounterGoogleCloudContentwarehouseV1InitializeProjectRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1InitializeProjectRequest < 3) {
    o.accessControlMode = 'foo';
    o.databaseType = 'foo';
    o.documentCreatorDefaultRole = 'foo';
    o.kmsKey = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1InitializeProjectRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1InitializeProjectRequest(
    api.GoogleCloudContentwarehouseV1InitializeProjectRequest o) {
  buildCounterGoogleCloudContentwarehouseV1InitializeProjectRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1InitializeProjectRequest < 3) {
    unittest.expect(
      o.accessControlMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentCreatorDefaultRole!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1InitializeProjectRequest--;
}

core.List<core.int> buildUnnamed20() => [
      42,
      42,
    ];

void checkUnnamed20(core.List<core.int> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1IntegerArray = 0;
api.GoogleCloudContentwarehouseV1IntegerArray
    buildGoogleCloudContentwarehouseV1IntegerArray() {
  final o = api.GoogleCloudContentwarehouseV1IntegerArray();
  buildCounterGoogleCloudContentwarehouseV1IntegerArray++;
  if (buildCounterGoogleCloudContentwarehouseV1IntegerArray < 3) {
    o.values = buildUnnamed20();
  }
  buildCounterGoogleCloudContentwarehouseV1IntegerArray--;
  return o;
}

void checkGoogleCloudContentwarehouseV1IntegerArray(
    api.GoogleCloudContentwarehouseV1IntegerArray o) {
  buildCounterGoogleCloudContentwarehouseV1IntegerArray++;
  if (buildCounterGoogleCloudContentwarehouseV1IntegerArray < 3) {
    checkUnnamed20(o.values!);
  }
  buildCounterGoogleCloudContentwarehouseV1IntegerArray--;
}

core.int buildCounterGoogleCloudContentwarehouseV1IntegerTypeOptions = 0;
api.GoogleCloudContentwarehouseV1IntegerTypeOptions
    buildGoogleCloudContentwarehouseV1IntegerTypeOptions() {
  final o = api.GoogleCloudContentwarehouseV1IntegerTypeOptions();
  buildCounterGoogleCloudContentwarehouseV1IntegerTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1IntegerTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1IntegerTypeOptions--;
  return o;
}

void checkGoogleCloudContentwarehouseV1IntegerTypeOptions(
    api.GoogleCloudContentwarehouseV1IntegerTypeOptions o) {
  buildCounterGoogleCloudContentwarehouseV1IntegerTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1IntegerTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1IntegerTypeOptions--;
}

core.int buildCounterGoogleCloudContentwarehouseV1InvalidRule = 0;
api.GoogleCloudContentwarehouseV1InvalidRule
    buildGoogleCloudContentwarehouseV1InvalidRule() {
  final o = api.GoogleCloudContentwarehouseV1InvalidRule();
  buildCounterGoogleCloudContentwarehouseV1InvalidRule++;
  if (buildCounterGoogleCloudContentwarehouseV1InvalidRule < 3) {
    o.error = 'foo';
    o.rule = buildGoogleCloudContentwarehouseV1Rule();
  }
  buildCounterGoogleCloudContentwarehouseV1InvalidRule--;
  return o;
}

void checkGoogleCloudContentwarehouseV1InvalidRule(
    api.GoogleCloudContentwarehouseV1InvalidRule o) {
  buildCounterGoogleCloudContentwarehouseV1InvalidRule++;
  if (buildCounterGoogleCloudContentwarehouseV1InvalidRule < 3) {
    unittest.expect(
      o.error!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1Rule(o.rule!);
  }
  buildCounterGoogleCloudContentwarehouseV1InvalidRule--;
}

core.List<api.GoogleCloudContentwarehouseV1DocumentSchema> buildUnnamed21() => [
      buildGoogleCloudContentwarehouseV1DocumentSchema(),
      buildGoogleCloudContentwarehouseV1DocumentSchema(),
    ];

void checkUnnamed21(
    core.List<api.GoogleCloudContentwarehouseV1DocumentSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1DocumentSchema(o[0]);
  checkGoogleCloudContentwarehouseV1DocumentSchema(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1ListDocumentSchemasResponse =
    0;
api.GoogleCloudContentwarehouseV1ListDocumentSchemasResponse
    buildGoogleCloudContentwarehouseV1ListDocumentSchemasResponse() {
  final o = api.GoogleCloudContentwarehouseV1ListDocumentSchemasResponse();
  buildCounterGoogleCloudContentwarehouseV1ListDocumentSchemasResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1ListDocumentSchemasResponse <
      3) {
    o.documentSchemas = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1ListDocumentSchemasResponse--;
  return o;
}

void checkGoogleCloudContentwarehouseV1ListDocumentSchemasResponse(
    api.GoogleCloudContentwarehouseV1ListDocumentSchemasResponse o) {
  buildCounterGoogleCloudContentwarehouseV1ListDocumentSchemasResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1ListDocumentSchemasResponse <
      3) {
    checkUnnamed21(o.documentSchemas!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1ListDocumentSchemasResponse--;
}

core.int buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesRequest = 0;
api.GoogleCloudContentwarehouseV1ListLinkedSourcesRequest
    buildGoogleCloudContentwarehouseV1ListLinkedSourcesRequest() {
  final o = api.GoogleCloudContentwarehouseV1ListLinkedSourcesRequest();
  buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
  }
  buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1ListLinkedSourcesRequest(
    api.GoogleCloudContentwarehouseV1ListLinkedSourcesRequest o) {
  buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesRequest < 3) {
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
  }
  buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesRequest--;
}

core.List<api.GoogleCloudContentwarehouseV1DocumentLink> buildUnnamed22() => [
      buildGoogleCloudContentwarehouseV1DocumentLink(),
      buildGoogleCloudContentwarehouseV1DocumentLink(),
    ];

void checkUnnamed22(
    core.List<api.GoogleCloudContentwarehouseV1DocumentLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1DocumentLink(o[0]);
  checkGoogleCloudContentwarehouseV1DocumentLink(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesResponse = 0;
api.GoogleCloudContentwarehouseV1ListLinkedSourcesResponse
    buildGoogleCloudContentwarehouseV1ListLinkedSourcesResponse() {
  final o = api.GoogleCloudContentwarehouseV1ListLinkedSourcesResponse();
  buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesResponse < 3) {
    o.documentLinks = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesResponse--;
  return o;
}

void checkGoogleCloudContentwarehouseV1ListLinkedSourcesResponse(
    api.GoogleCloudContentwarehouseV1ListLinkedSourcesResponse o) {
  buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesResponse < 3) {
    checkUnnamed22(o.documentLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1ListLinkedSourcesResponse--;
}

core.int buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsRequest = 0;
api.GoogleCloudContentwarehouseV1ListLinkedTargetsRequest
    buildGoogleCloudContentwarehouseV1ListLinkedTargetsRequest() {
  final o = api.GoogleCloudContentwarehouseV1ListLinkedTargetsRequest();
  buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsRequest < 3) {
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
  }
  buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1ListLinkedTargetsRequest(
    api.GoogleCloudContentwarehouseV1ListLinkedTargetsRequest o) {
  buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsRequest < 3) {
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
  }
  buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsRequest--;
}

core.List<api.GoogleCloudContentwarehouseV1DocumentLink> buildUnnamed23() => [
      buildGoogleCloudContentwarehouseV1DocumentLink(),
      buildGoogleCloudContentwarehouseV1DocumentLink(),
    ];

void checkUnnamed23(
    core.List<api.GoogleCloudContentwarehouseV1DocumentLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1DocumentLink(o[0]);
  checkGoogleCloudContentwarehouseV1DocumentLink(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsResponse = 0;
api.GoogleCloudContentwarehouseV1ListLinkedTargetsResponse
    buildGoogleCloudContentwarehouseV1ListLinkedTargetsResponse() {
  final o = api.GoogleCloudContentwarehouseV1ListLinkedTargetsResponse();
  buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsResponse < 3) {
    o.documentLinks = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsResponse--;
  return o;
}

void checkGoogleCloudContentwarehouseV1ListLinkedTargetsResponse(
    api.GoogleCloudContentwarehouseV1ListLinkedTargetsResponse o) {
  buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsResponse < 3) {
    checkUnnamed23(o.documentLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1ListLinkedTargetsResponse--;
}

core.List<api.GoogleCloudContentwarehouseV1RuleSet> buildUnnamed24() => [
      buildGoogleCloudContentwarehouseV1RuleSet(),
      buildGoogleCloudContentwarehouseV1RuleSet(),
    ];

void checkUnnamed24(core.List<api.GoogleCloudContentwarehouseV1RuleSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1RuleSet(o[0]);
  checkGoogleCloudContentwarehouseV1RuleSet(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1ListRuleSetsResponse = 0;
api.GoogleCloudContentwarehouseV1ListRuleSetsResponse
    buildGoogleCloudContentwarehouseV1ListRuleSetsResponse() {
  final o = api.GoogleCloudContentwarehouseV1ListRuleSetsResponse();
  buildCounterGoogleCloudContentwarehouseV1ListRuleSetsResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1ListRuleSetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.ruleSets = buildUnnamed24();
  }
  buildCounterGoogleCloudContentwarehouseV1ListRuleSetsResponse--;
  return o;
}

void checkGoogleCloudContentwarehouseV1ListRuleSetsResponse(
    api.GoogleCloudContentwarehouseV1ListRuleSetsResponse o) {
  buildCounterGoogleCloudContentwarehouseV1ListRuleSetsResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1ListRuleSetsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.ruleSets!);
  }
  buildCounterGoogleCloudContentwarehouseV1ListRuleSetsResponse--;
}

core.List<api.GoogleCloudContentwarehouseV1SynonymSet> buildUnnamed25() => [
      buildGoogleCloudContentwarehouseV1SynonymSet(),
      buildGoogleCloudContentwarehouseV1SynonymSet(),
    ];

void checkUnnamed25(core.List<api.GoogleCloudContentwarehouseV1SynonymSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1SynonymSet(o[0]);
  checkGoogleCloudContentwarehouseV1SynonymSet(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1ListSynonymSetsResponse = 0;
api.GoogleCloudContentwarehouseV1ListSynonymSetsResponse
    buildGoogleCloudContentwarehouseV1ListSynonymSetsResponse() {
  final o = api.GoogleCloudContentwarehouseV1ListSynonymSetsResponse();
  buildCounterGoogleCloudContentwarehouseV1ListSynonymSetsResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1ListSynonymSetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.synonymSets = buildUnnamed25();
  }
  buildCounterGoogleCloudContentwarehouseV1ListSynonymSetsResponse--;
  return o;
}

void checkGoogleCloudContentwarehouseV1ListSynonymSetsResponse(
    api.GoogleCloudContentwarehouseV1ListSynonymSetsResponse o) {
  buildCounterGoogleCloudContentwarehouseV1ListSynonymSetsResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1ListSynonymSetsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.synonymSets!);
  }
  buildCounterGoogleCloudContentwarehouseV1ListSynonymSetsResponse--;
}

core.Map<core.String, api.GoogleCloudContentwarehouseV1Value>
    buildUnnamed26() => {
          'x': buildGoogleCloudContentwarehouseV1Value(),
          'y': buildGoogleCloudContentwarehouseV1Value(),
        };

void checkUnnamed26(
    core.Map<core.String, api.GoogleCloudContentwarehouseV1Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1Value(o['x']!);
  checkGoogleCloudContentwarehouseV1Value(o['y']!);
}

core.int buildCounterGoogleCloudContentwarehouseV1MapProperty = 0;
api.GoogleCloudContentwarehouseV1MapProperty
    buildGoogleCloudContentwarehouseV1MapProperty() {
  final o = api.GoogleCloudContentwarehouseV1MapProperty();
  buildCounterGoogleCloudContentwarehouseV1MapProperty++;
  if (buildCounterGoogleCloudContentwarehouseV1MapProperty < 3) {
    o.fields = buildUnnamed26();
  }
  buildCounterGoogleCloudContentwarehouseV1MapProperty--;
  return o;
}

void checkGoogleCloudContentwarehouseV1MapProperty(
    api.GoogleCloudContentwarehouseV1MapProperty o) {
  buildCounterGoogleCloudContentwarehouseV1MapProperty++;
  if (buildCounterGoogleCloudContentwarehouseV1MapProperty < 3) {
    checkUnnamed26(o.fields!);
  }
  buildCounterGoogleCloudContentwarehouseV1MapProperty--;
}

core.int buildCounterGoogleCloudContentwarehouseV1MapTypeOptions = 0;
api.GoogleCloudContentwarehouseV1MapTypeOptions
    buildGoogleCloudContentwarehouseV1MapTypeOptions() {
  final o = api.GoogleCloudContentwarehouseV1MapTypeOptions();
  buildCounterGoogleCloudContentwarehouseV1MapTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1MapTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1MapTypeOptions--;
  return o;
}

void checkGoogleCloudContentwarehouseV1MapTypeOptions(
    api.GoogleCloudContentwarehouseV1MapTypeOptions o) {
  buildCounterGoogleCloudContentwarehouseV1MapTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1MapTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1MapTypeOptions--;
}

core.int buildCounterGoogleCloudContentwarehouseV1MergeFieldsOptions = 0;
api.GoogleCloudContentwarehouseV1MergeFieldsOptions
    buildGoogleCloudContentwarehouseV1MergeFieldsOptions() {
  final o = api.GoogleCloudContentwarehouseV1MergeFieldsOptions();
  buildCounterGoogleCloudContentwarehouseV1MergeFieldsOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1MergeFieldsOptions < 3) {
    o.replaceMessageFields = true;
    o.replaceRepeatedFields = true;
  }
  buildCounterGoogleCloudContentwarehouseV1MergeFieldsOptions--;
  return o;
}

void checkGoogleCloudContentwarehouseV1MergeFieldsOptions(
    api.GoogleCloudContentwarehouseV1MergeFieldsOptions o) {
  buildCounterGoogleCloudContentwarehouseV1MergeFieldsOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1MergeFieldsOptions < 3) {
    unittest.expect(o.replaceMessageFields!, unittest.isTrue);
    unittest.expect(o.replaceRepeatedFields!, unittest.isTrue);
  }
  buildCounterGoogleCloudContentwarehouseV1MergeFieldsOptions--;
}

core.int buildCounterGoogleCloudContentwarehouseV1Property = 0;
api.GoogleCloudContentwarehouseV1Property
    buildGoogleCloudContentwarehouseV1Property() {
  final o = api.GoogleCloudContentwarehouseV1Property();
  buildCounterGoogleCloudContentwarehouseV1Property++;
  if (buildCounterGoogleCloudContentwarehouseV1Property < 3) {
    o.dateTimeValues = buildGoogleCloudContentwarehouseV1DateTimeArray();
    o.enumValues = buildGoogleCloudContentwarehouseV1EnumArray();
    o.floatValues = buildGoogleCloudContentwarehouseV1FloatArray();
    o.integerValues = buildGoogleCloudContentwarehouseV1IntegerArray();
    o.mapProperty = buildGoogleCloudContentwarehouseV1MapProperty();
    o.name = 'foo';
    o.propertyValues = buildGoogleCloudContentwarehouseV1PropertyArray();
    o.textValues = buildGoogleCloudContentwarehouseV1TextArray();
    o.timestampValues = buildGoogleCloudContentwarehouseV1TimestampArray();
  }
  buildCounterGoogleCloudContentwarehouseV1Property--;
  return o;
}

void checkGoogleCloudContentwarehouseV1Property(
    api.GoogleCloudContentwarehouseV1Property o) {
  buildCounterGoogleCloudContentwarehouseV1Property++;
  if (buildCounterGoogleCloudContentwarehouseV1Property < 3) {
    checkGoogleCloudContentwarehouseV1DateTimeArray(o.dateTimeValues!);
    checkGoogleCloudContentwarehouseV1EnumArray(o.enumValues!);
    checkGoogleCloudContentwarehouseV1FloatArray(o.floatValues!);
    checkGoogleCloudContentwarehouseV1IntegerArray(o.integerValues!);
    checkGoogleCloudContentwarehouseV1MapProperty(o.mapProperty!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1PropertyArray(o.propertyValues!);
    checkGoogleCloudContentwarehouseV1TextArray(o.textValues!);
    checkGoogleCloudContentwarehouseV1TimestampArray(o.timestampValues!);
  }
  buildCounterGoogleCloudContentwarehouseV1Property--;
}

core.List<api.GoogleCloudContentwarehouseV1Property> buildUnnamed27() => [
      buildGoogleCloudContentwarehouseV1Property(),
      buildGoogleCloudContentwarehouseV1Property(),
    ];

void checkUnnamed27(core.List<api.GoogleCloudContentwarehouseV1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1Property(o[0]);
  checkGoogleCloudContentwarehouseV1Property(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1PropertyArray = 0;
api.GoogleCloudContentwarehouseV1PropertyArray
    buildGoogleCloudContentwarehouseV1PropertyArray() {
  final o = api.GoogleCloudContentwarehouseV1PropertyArray();
  buildCounterGoogleCloudContentwarehouseV1PropertyArray++;
  if (buildCounterGoogleCloudContentwarehouseV1PropertyArray < 3) {
    o.properties = buildUnnamed27();
  }
  buildCounterGoogleCloudContentwarehouseV1PropertyArray--;
  return o;
}

void checkGoogleCloudContentwarehouseV1PropertyArray(
    api.GoogleCloudContentwarehouseV1PropertyArray o) {
  buildCounterGoogleCloudContentwarehouseV1PropertyArray++;
  if (buildCounterGoogleCloudContentwarehouseV1PropertyArray < 3) {
    checkUnnamed27(o.properties!);
  }
  buildCounterGoogleCloudContentwarehouseV1PropertyArray--;
}

core.int buildCounterGoogleCloudContentwarehouseV1PropertyDefinition = 0;
api.GoogleCloudContentwarehouseV1PropertyDefinition
    buildGoogleCloudContentwarehouseV1PropertyDefinition() {
  final o = api.GoogleCloudContentwarehouseV1PropertyDefinition();
  buildCounterGoogleCloudContentwarehouseV1PropertyDefinition++;
  if (buildCounterGoogleCloudContentwarehouseV1PropertyDefinition < 3) {
    o.dateTimeTypeOptions =
        buildGoogleCloudContentwarehouseV1DateTimeTypeOptions();
    o.displayName = 'foo';
    o.enumTypeOptions = buildGoogleCloudContentwarehouseV1EnumTypeOptions();
    o.floatTypeOptions = buildGoogleCloudContentwarehouseV1FloatTypeOptions();
    o.integerTypeOptions =
        buildGoogleCloudContentwarehouseV1IntegerTypeOptions();
    o.isFilterable = true;
    o.isMetadata = true;
    o.isRepeatable = true;
    o.isRequired = true;
    o.isSearchable = true;
    o.mapTypeOptions = buildGoogleCloudContentwarehouseV1MapTypeOptions();
    o.name = 'foo';
    o.propertyTypeOptions =
        buildGoogleCloudContentwarehouseV1PropertyTypeOptions();
    o.retrievalImportance = 'foo';
    o.textTypeOptions = buildGoogleCloudContentwarehouseV1TextTypeOptions();
    o.timestampTypeOptions =
        buildGoogleCloudContentwarehouseV1TimestampTypeOptions();
  }
  buildCounterGoogleCloudContentwarehouseV1PropertyDefinition--;
  return o;
}

void checkGoogleCloudContentwarehouseV1PropertyDefinition(
    api.GoogleCloudContentwarehouseV1PropertyDefinition o) {
  buildCounterGoogleCloudContentwarehouseV1PropertyDefinition++;
  if (buildCounterGoogleCloudContentwarehouseV1PropertyDefinition < 3) {
    checkGoogleCloudContentwarehouseV1DateTimeTypeOptions(
        o.dateTimeTypeOptions!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1EnumTypeOptions(o.enumTypeOptions!);
    checkGoogleCloudContentwarehouseV1FloatTypeOptions(o.floatTypeOptions!);
    checkGoogleCloudContentwarehouseV1IntegerTypeOptions(o.integerTypeOptions!);
    unittest.expect(o.isFilterable!, unittest.isTrue);
    unittest.expect(o.isMetadata!, unittest.isTrue);
    unittest.expect(o.isRepeatable!, unittest.isTrue);
    unittest.expect(o.isRequired!, unittest.isTrue);
    unittest.expect(o.isSearchable!, unittest.isTrue);
    checkGoogleCloudContentwarehouseV1MapTypeOptions(o.mapTypeOptions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1PropertyTypeOptions(
        o.propertyTypeOptions!);
    unittest.expect(
      o.retrievalImportance!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1TextTypeOptions(o.textTypeOptions!);
    checkGoogleCloudContentwarehouseV1TimestampTypeOptions(
        o.timestampTypeOptions!);
  }
  buildCounterGoogleCloudContentwarehouseV1PropertyDefinition--;
}

core.int buildCounterGoogleCloudContentwarehouseV1PropertyFilter = 0;
api.GoogleCloudContentwarehouseV1PropertyFilter
    buildGoogleCloudContentwarehouseV1PropertyFilter() {
  final o = api.GoogleCloudContentwarehouseV1PropertyFilter();
  buildCounterGoogleCloudContentwarehouseV1PropertyFilter++;
  if (buildCounterGoogleCloudContentwarehouseV1PropertyFilter < 3) {
    o.condition = 'foo';
    o.documentSchemaName = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1PropertyFilter--;
  return o;
}

void checkGoogleCloudContentwarehouseV1PropertyFilter(
    api.GoogleCloudContentwarehouseV1PropertyFilter o) {
  buildCounterGoogleCloudContentwarehouseV1PropertyFilter++;
  if (buildCounterGoogleCloudContentwarehouseV1PropertyFilter < 3) {
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentSchemaName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1PropertyFilter--;
}

core.List<api.GoogleCloudContentwarehouseV1PropertyDefinition>
    buildUnnamed28() => [
          buildGoogleCloudContentwarehouseV1PropertyDefinition(),
          buildGoogleCloudContentwarehouseV1PropertyDefinition(),
        ];

void checkUnnamed28(
    core.List<api.GoogleCloudContentwarehouseV1PropertyDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1PropertyDefinition(o[0]);
  checkGoogleCloudContentwarehouseV1PropertyDefinition(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1PropertyTypeOptions = 0;
api.GoogleCloudContentwarehouseV1PropertyTypeOptions
    buildGoogleCloudContentwarehouseV1PropertyTypeOptions() {
  final o = api.GoogleCloudContentwarehouseV1PropertyTypeOptions();
  buildCounterGoogleCloudContentwarehouseV1PropertyTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1PropertyTypeOptions < 3) {
    o.propertyDefinitions = buildUnnamed28();
  }
  buildCounterGoogleCloudContentwarehouseV1PropertyTypeOptions--;
  return o;
}

void checkGoogleCloudContentwarehouseV1PropertyTypeOptions(
    api.GoogleCloudContentwarehouseV1PropertyTypeOptions o) {
  buildCounterGoogleCloudContentwarehouseV1PropertyTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1PropertyTypeOptions < 3) {
    checkUnnamed28(o.propertyDefinitions!);
  }
  buildCounterGoogleCloudContentwarehouseV1PropertyTypeOptions--;
}

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1PublishAction = 0;
api.GoogleCloudContentwarehouseV1PublishAction
    buildGoogleCloudContentwarehouseV1PublishAction() {
  final o = api.GoogleCloudContentwarehouseV1PublishAction();
  buildCounterGoogleCloudContentwarehouseV1PublishAction++;
  if (buildCounterGoogleCloudContentwarehouseV1PublishAction < 3) {
    o.messages = buildUnnamed29();
    o.topicId = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1PublishAction--;
  return o;
}

void checkGoogleCloudContentwarehouseV1PublishAction(
    api.GoogleCloudContentwarehouseV1PublishAction o) {
  buildCounterGoogleCloudContentwarehouseV1PublishAction++;
  if (buildCounterGoogleCloudContentwarehouseV1PublishAction < 3) {
    checkUnnamed29(o.messages!);
    unittest.expect(
      o.topicId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1PublishAction--;
}

core.List<api.GoogleCloudContentwarehouseV1QAResultHighlight>
    buildUnnamed30() => [
          buildGoogleCloudContentwarehouseV1QAResultHighlight(),
          buildGoogleCloudContentwarehouseV1QAResultHighlight(),
        ];

void checkUnnamed30(
    core.List<api.GoogleCloudContentwarehouseV1QAResultHighlight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1QAResultHighlight(o[0]);
  checkGoogleCloudContentwarehouseV1QAResultHighlight(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1QAResult = 0;
api.GoogleCloudContentwarehouseV1QAResult
    buildGoogleCloudContentwarehouseV1QAResult() {
  final o = api.GoogleCloudContentwarehouseV1QAResult();
  buildCounterGoogleCloudContentwarehouseV1QAResult++;
  if (buildCounterGoogleCloudContentwarehouseV1QAResult < 3) {
    o.confidenceScore = 42.0;
    o.highlights = buildUnnamed30();
  }
  buildCounterGoogleCloudContentwarehouseV1QAResult--;
  return o;
}

void checkGoogleCloudContentwarehouseV1QAResult(
    api.GoogleCloudContentwarehouseV1QAResult o) {
  buildCounterGoogleCloudContentwarehouseV1QAResult++;
  if (buildCounterGoogleCloudContentwarehouseV1QAResult < 3) {
    unittest.expect(
      o.confidenceScore!,
      unittest.equals(42.0),
    );
    checkUnnamed30(o.highlights!);
  }
  buildCounterGoogleCloudContentwarehouseV1QAResult--;
}

core.int buildCounterGoogleCloudContentwarehouseV1QAResultHighlight = 0;
api.GoogleCloudContentwarehouseV1QAResultHighlight
    buildGoogleCloudContentwarehouseV1QAResultHighlight() {
  final o = api.GoogleCloudContentwarehouseV1QAResultHighlight();
  buildCounterGoogleCloudContentwarehouseV1QAResultHighlight++;
  if (buildCounterGoogleCloudContentwarehouseV1QAResultHighlight < 3) {
    o.endIndex = 42;
    o.startIndex = 42;
  }
  buildCounterGoogleCloudContentwarehouseV1QAResultHighlight--;
  return o;
}

void checkGoogleCloudContentwarehouseV1QAResultHighlight(
    api.GoogleCloudContentwarehouseV1QAResultHighlight o) {
  buildCounterGoogleCloudContentwarehouseV1QAResultHighlight++;
  if (buildCounterGoogleCloudContentwarehouseV1QAResultHighlight < 3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1QAResultHighlight--;
}

core.int buildCounterGoogleCloudContentwarehouseV1RemoveFromFolderAction = 0;
api.GoogleCloudContentwarehouseV1RemoveFromFolderAction
    buildGoogleCloudContentwarehouseV1RemoveFromFolderAction() {
  final o = api.GoogleCloudContentwarehouseV1RemoveFromFolderAction();
  buildCounterGoogleCloudContentwarehouseV1RemoveFromFolderAction++;
  if (buildCounterGoogleCloudContentwarehouseV1RemoveFromFolderAction < 3) {
    o.condition = 'foo';
    o.folder = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1RemoveFromFolderAction--;
  return o;
}

void checkGoogleCloudContentwarehouseV1RemoveFromFolderAction(
    api.GoogleCloudContentwarehouseV1RemoveFromFolderAction o) {
  buildCounterGoogleCloudContentwarehouseV1RemoveFromFolderAction++;
  if (buildCounterGoogleCloudContentwarehouseV1RemoveFromFolderAction < 3) {
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.folder!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1RemoveFromFolderAction--;
}

core.int buildCounterGoogleCloudContentwarehouseV1RequestMetadata = 0;
api.GoogleCloudContentwarehouseV1RequestMetadata
    buildGoogleCloudContentwarehouseV1RequestMetadata() {
  final o = api.GoogleCloudContentwarehouseV1RequestMetadata();
  buildCounterGoogleCloudContentwarehouseV1RequestMetadata++;
  if (buildCounterGoogleCloudContentwarehouseV1RequestMetadata < 3) {
    o.userInfo = buildGoogleCloudContentwarehouseV1UserInfo();
  }
  buildCounterGoogleCloudContentwarehouseV1RequestMetadata--;
  return o;
}

void checkGoogleCloudContentwarehouseV1RequestMetadata(
    api.GoogleCloudContentwarehouseV1RequestMetadata o) {
  buildCounterGoogleCloudContentwarehouseV1RequestMetadata++;
  if (buildCounterGoogleCloudContentwarehouseV1RequestMetadata < 3) {
    checkGoogleCloudContentwarehouseV1UserInfo(o.userInfo!);
  }
  buildCounterGoogleCloudContentwarehouseV1RequestMetadata--;
}

core.int buildCounterGoogleCloudContentwarehouseV1ResponseMetadata = 0;
api.GoogleCloudContentwarehouseV1ResponseMetadata
    buildGoogleCloudContentwarehouseV1ResponseMetadata() {
  final o = api.GoogleCloudContentwarehouseV1ResponseMetadata();
  buildCounterGoogleCloudContentwarehouseV1ResponseMetadata++;
  if (buildCounterGoogleCloudContentwarehouseV1ResponseMetadata < 3) {
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1ResponseMetadata--;
  return o;
}

void checkGoogleCloudContentwarehouseV1ResponseMetadata(
    api.GoogleCloudContentwarehouseV1ResponseMetadata o) {
  buildCounterGoogleCloudContentwarehouseV1ResponseMetadata++;
  if (buildCounterGoogleCloudContentwarehouseV1ResponseMetadata < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1ResponseMetadata--;
}

core.List<api.GoogleCloudContentwarehouseV1Action> buildUnnamed31() => [
      buildGoogleCloudContentwarehouseV1Action(),
      buildGoogleCloudContentwarehouseV1Action(),
    ];

void checkUnnamed31(core.List<api.GoogleCloudContentwarehouseV1Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1Action(o[0]);
  checkGoogleCloudContentwarehouseV1Action(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1Rule = 0;
api.GoogleCloudContentwarehouseV1Rule buildGoogleCloudContentwarehouseV1Rule() {
  final o = api.GoogleCloudContentwarehouseV1Rule();
  buildCounterGoogleCloudContentwarehouseV1Rule++;
  if (buildCounterGoogleCloudContentwarehouseV1Rule < 3) {
    o.actions = buildUnnamed31();
    o.condition = 'foo';
    o.description = 'foo';
    o.ruleId = 'foo';
    o.triggerType = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1Rule--;
  return o;
}

void checkGoogleCloudContentwarehouseV1Rule(
    api.GoogleCloudContentwarehouseV1Rule o) {
  buildCounterGoogleCloudContentwarehouseV1Rule++;
  if (buildCounterGoogleCloudContentwarehouseV1Rule < 3) {
    checkUnnamed31(o.actions!);
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ruleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1Rule--;
}

core.List<api.GoogleCloudContentwarehouseV1ActionOutput> buildUnnamed32() => [
      buildGoogleCloudContentwarehouseV1ActionOutput(),
      buildGoogleCloudContentwarehouseV1ActionOutput(),
    ];

void checkUnnamed32(
    core.List<api.GoogleCloudContentwarehouseV1ActionOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1ActionOutput(o[0]);
  checkGoogleCloudContentwarehouseV1ActionOutput(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1RuleActionsPair = 0;
api.GoogleCloudContentwarehouseV1RuleActionsPair
    buildGoogleCloudContentwarehouseV1RuleActionsPair() {
  final o = api.GoogleCloudContentwarehouseV1RuleActionsPair();
  buildCounterGoogleCloudContentwarehouseV1RuleActionsPair++;
  if (buildCounterGoogleCloudContentwarehouseV1RuleActionsPair < 3) {
    o.actionOutputs = buildUnnamed32();
    o.rule = buildGoogleCloudContentwarehouseV1Rule();
  }
  buildCounterGoogleCloudContentwarehouseV1RuleActionsPair--;
  return o;
}

void checkGoogleCloudContentwarehouseV1RuleActionsPair(
    api.GoogleCloudContentwarehouseV1RuleActionsPair o) {
  buildCounterGoogleCloudContentwarehouseV1RuleActionsPair++;
  if (buildCounterGoogleCloudContentwarehouseV1RuleActionsPair < 3) {
    checkUnnamed32(o.actionOutputs!);
    checkGoogleCloudContentwarehouseV1Rule(o.rule!);
  }
  buildCounterGoogleCloudContentwarehouseV1RuleActionsPair--;
}

core.int buildCounterGoogleCloudContentwarehouseV1RuleEngineOutput = 0;
api.GoogleCloudContentwarehouseV1RuleEngineOutput
    buildGoogleCloudContentwarehouseV1RuleEngineOutput() {
  final o = api.GoogleCloudContentwarehouseV1RuleEngineOutput();
  buildCounterGoogleCloudContentwarehouseV1RuleEngineOutput++;
  if (buildCounterGoogleCloudContentwarehouseV1RuleEngineOutput < 3) {
    o.actionExecutorOutput =
        buildGoogleCloudContentwarehouseV1ActionExecutorOutput();
    o.documentName = 'foo';
    o.ruleEvaluatorOutput =
        buildGoogleCloudContentwarehouseV1RuleEvaluatorOutput();
  }
  buildCounterGoogleCloudContentwarehouseV1RuleEngineOutput--;
  return o;
}

void checkGoogleCloudContentwarehouseV1RuleEngineOutput(
    api.GoogleCloudContentwarehouseV1RuleEngineOutput o) {
  buildCounterGoogleCloudContentwarehouseV1RuleEngineOutput++;
  if (buildCounterGoogleCloudContentwarehouseV1RuleEngineOutput < 3) {
    checkGoogleCloudContentwarehouseV1ActionExecutorOutput(
        o.actionExecutorOutput!);
    unittest.expect(
      o.documentName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1RuleEvaluatorOutput(
        o.ruleEvaluatorOutput!);
  }
  buildCounterGoogleCloudContentwarehouseV1RuleEngineOutput--;
}

core.List<api.GoogleCloudContentwarehouseV1InvalidRule> buildUnnamed33() => [
      buildGoogleCloudContentwarehouseV1InvalidRule(),
      buildGoogleCloudContentwarehouseV1InvalidRule(),
    ];

void checkUnnamed33(core.List<api.GoogleCloudContentwarehouseV1InvalidRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1InvalidRule(o[0]);
  checkGoogleCloudContentwarehouseV1InvalidRule(o[1]);
}

core.List<api.GoogleCloudContentwarehouseV1Rule> buildUnnamed34() => [
      buildGoogleCloudContentwarehouseV1Rule(),
      buildGoogleCloudContentwarehouseV1Rule(),
    ];

void checkUnnamed34(core.List<api.GoogleCloudContentwarehouseV1Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1Rule(o[0]);
  checkGoogleCloudContentwarehouseV1Rule(o[1]);
}

core.List<api.GoogleCloudContentwarehouseV1Rule> buildUnnamed35() => [
      buildGoogleCloudContentwarehouseV1Rule(),
      buildGoogleCloudContentwarehouseV1Rule(),
    ];

void checkUnnamed35(core.List<api.GoogleCloudContentwarehouseV1Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1Rule(o[0]);
  checkGoogleCloudContentwarehouseV1Rule(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1RuleEvaluatorOutput = 0;
api.GoogleCloudContentwarehouseV1RuleEvaluatorOutput
    buildGoogleCloudContentwarehouseV1RuleEvaluatorOutput() {
  final o = api.GoogleCloudContentwarehouseV1RuleEvaluatorOutput();
  buildCounterGoogleCloudContentwarehouseV1RuleEvaluatorOutput++;
  if (buildCounterGoogleCloudContentwarehouseV1RuleEvaluatorOutput < 3) {
    o.invalidRules = buildUnnamed33();
    o.matchedRules = buildUnnamed34();
    o.triggeredRules = buildUnnamed35();
  }
  buildCounterGoogleCloudContentwarehouseV1RuleEvaluatorOutput--;
  return o;
}

void checkGoogleCloudContentwarehouseV1RuleEvaluatorOutput(
    api.GoogleCloudContentwarehouseV1RuleEvaluatorOutput o) {
  buildCounterGoogleCloudContentwarehouseV1RuleEvaluatorOutput++;
  if (buildCounterGoogleCloudContentwarehouseV1RuleEvaluatorOutput < 3) {
    checkUnnamed33(o.invalidRules!);
    checkUnnamed34(o.matchedRules!);
    checkUnnamed35(o.triggeredRules!);
  }
  buildCounterGoogleCloudContentwarehouseV1RuleEvaluatorOutput--;
}

core.List<api.GoogleCloudContentwarehouseV1Rule> buildUnnamed36() => [
      buildGoogleCloudContentwarehouseV1Rule(),
      buildGoogleCloudContentwarehouseV1Rule(),
    ];

void checkUnnamed36(core.List<api.GoogleCloudContentwarehouseV1Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1Rule(o[0]);
  checkGoogleCloudContentwarehouseV1Rule(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1RuleSet = 0;
api.GoogleCloudContentwarehouseV1RuleSet
    buildGoogleCloudContentwarehouseV1RuleSet() {
  final o = api.GoogleCloudContentwarehouseV1RuleSet();
  buildCounterGoogleCloudContentwarehouseV1RuleSet++;
  if (buildCounterGoogleCloudContentwarehouseV1RuleSet < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.rules = buildUnnamed36();
    o.source = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1RuleSet--;
  return o;
}

void checkGoogleCloudContentwarehouseV1RuleSet(
    api.GoogleCloudContentwarehouseV1RuleSet o) {
  buildCounterGoogleCloudContentwarehouseV1RuleSet++;
  if (buildCounterGoogleCloudContentwarehouseV1RuleSet < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.rules!);
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1RuleSet--;
}

core.List<api.GoogleCloudContentwarehouseV1HistogramQuery> buildUnnamed37() => [
      buildGoogleCloudContentwarehouseV1HistogramQuery(),
      buildGoogleCloudContentwarehouseV1HistogramQuery(),
    ];

void checkUnnamed37(
    core.List<api.GoogleCloudContentwarehouseV1HistogramQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1HistogramQuery(o[0]);
  checkGoogleCloudContentwarehouseV1HistogramQuery(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1SearchDocumentsRequest = 0;
api.GoogleCloudContentwarehouseV1SearchDocumentsRequest
    buildGoogleCloudContentwarehouseV1SearchDocumentsRequest() {
  final o = api.GoogleCloudContentwarehouseV1SearchDocumentsRequest();
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1SearchDocumentsRequest < 3) {
    o.documentQuery = buildGoogleCloudContentwarehouseV1DocumentQuery();
    o.histogramQueries = buildUnnamed37();
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.qaSizeLimit = 42;
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
    o.requireTotalSize = true;
    o.totalResultSize = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1SearchDocumentsRequest(
    api.GoogleCloudContentwarehouseV1SearchDocumentsRequest o) {
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1SearchDocumentsRequest < 3) {
    checkGoogleCloudContentwarehouseV1DocumentQuery(o.documentQuery!);
    checkUnnamed37(o.histogramQueries!);
    unittest.expect(
      o.offset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.orderBy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.qaSizeLimit!,
      unittest.equals(42),
    );
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
    unittest.expect(o.requireTotalSize!, unittest.isTrue);
    unittest.expect(
      o.totalResultSize!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsRequest--;
}

core.List<api.GoogleCloudContentwarehouseV1HistogramQueryResult>
    buildUnnamed38() => [
          buildGoogleCloudContentwarehouseV1HistogramQueryResult(),
          buildGoogleCloudContentwarehouseV1HistogramQueryResult(),
        ];

void checkUnnamed38(
    core.List<api.GoogleCloudContentwarehouseV1HistogramQueryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1HistogramQueryResult(o[0]);
  checkGoogleCloudContentwarehouseV1HistogramQueryResult(o[1]);
}

core.List<
        api.GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument>
    buildUnnamed39() => [
          buildGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument(),
          buildGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument(),
        ];

void checkUnnamed39(
    core.List<
            api.GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument(
      o[0]);
  checkGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument(
      o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponse = 0;
api.GoogleCloudContentwarehouseV1SearchDocumentsResponse
    buildGoogleCloudContentwarehouseV1SearchDocumentsResponse() {
  final o = api.GoogleCloudContentwarehouseV1SearchDocumentsResponse();
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponse < 3) {
    o.histogramQueryResults = buildUnnamed38();
    o.matchingDocuments = buildUnnamed39();
    o.metadata = buildGoogleCloudContentwarehouseV1ResponseMetadata();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponse--;
  return o;
}

void checkGoogleCloudContentwarehouseV1SearchDocumentsResponse(
    api.GoogleCloudContentwarehouseV1SearchDocumentsResponse o) {
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponse < 3) {
    checkUnnamed38(o.histogramQueryResults!);
    checkUnnamed39(o.matchingDocuments!);
    checkGoogleCloudContentwarehouseV1ResponseMetadata(o.metadata!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponse--;
}

core.int
    buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument =
    0;
api.GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument
    buildGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument() {
  final o = api
      .GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument();
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument++;
  if (buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument <
      3) {
    o.document = buildGoogleCloudContentwarehouseV1Document();
    o.qaResult = buildGoogleCloudContentwarehouseV1QAResult();
    o.searchTextSnippet = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument--;
  return o;
}

void checkGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument(
    api.GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument
        o) {
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument++;
  if (buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument <
      3) {
    checkGoogleCloudContentwarehouseV1Document(o.document!);
    checkGoogleCloudContentwarehouseV1QAResult(o.qaResult!);
    unittest.expect(
      o.searchTextSnippet!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument--;
}

core.int buildCounterGoogleCloudContentwarehouseV1SetAclRequest = 0;
api.GoogleCloudContentwarehouseV1SetAclRequest
    buildGoogleCloudContentwarehouseV1SetAclRequest() {
  final o = api.GoogleCloudContentwarehouseV1SetAclRequest();
  buildCounterGoogleCloudContentwarehouseV1SetAclRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1SetAclRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.projectOwner = true;
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
  }
  buildCounterGoogleCloudContentwarehouseV1SetAclRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1SetAclRequest(
    api.GoogleCloudContentwarehouseV1SetAclRequest o) {
  buildCounterGoogleCloudContentwarehouseV1SetAclRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1SetAclRequest < 3) {
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(o.projectOwner!, unittest.isTrue);
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
  }
  buildCounterGoogleCloudContentwarehouseV1SetAclRequest--;
}

core.int buildCounterGoogleCloudContentwarehouseV1SetAclResponse = 0;
api.GoogleCloudContentwarehouseV1SetAclResponse
    buildGoogleCloudContentwarehouseV1SetAclResponse() {
  final o = api.GoogleCloudContentwarehouseV1SetAclResponse();
  buildCounterGoogleCloudContentwarehouseV1SetAclResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1SetAclResponse < 3) {
    o.metadata = buildGoogleCloudContentwarehouseV1ResponseMetadata();
    o.policy = buildGoogleIamV1Policy();
  }
  buildCounterGoogleCloudContentwarehouseV1SetAclResponse--;
  return o;
}

void checkGoogleCloudContentwarehouseV1SetAclResponse(
    api.GoogleCloudContentwarehouseV1SetAclResponse o) {
  buildCounterGoogleCloudContentwarehouseV1SetAclResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1SetAclResponse < 3) {
    checkGoogleCloudContentwarehouseV1ResponseMetadata(o.metadata!);
    checkGoogleIamV1Policy(o.policy!);
  }
  buildCounterGoogleCloudContentwarehouseV1SetAclResponse--;
}

core.List<api.GoogleCloudContentwarehouseV1SynonymSetSynonym>
    buildUnnamed40() => [
          buildGoogleCloudContentwarehouseV1SynonymSetSynonym(),
          buildGoogleCloudContentwarehouseV1SynonymSetSynonym(),
        ];

void checkUnnamed40(
    core.List<api.GoogleCloudContentwarehouseV1SynonymSetSynonym> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1SynonymSetSynonym(o[0]);
  checkGoogleCloudContentwarehouseV1SynonymSetSynonym(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1SynonymSet = 0;
api.GoogleCloudContentwarehouseV1SynonymSet
    buildGoogleCloudContentwarehouseV1SynonymSet() {
  final o = api.GoogleCloudContentwarehouseV1SynonymSet();
  buildCounterGoogleCloudContentwarehouseV1SynonymSet++;
  if (buildCounterGoogleCloudContentwarehouseV1SynonymSet < 3) {
    o.context = 'foo';
    o.name = 'foo';
    o.synonyms = buildUnnamed40();
  }
  buildCounterGoogleCloudContentwarehouseV1SynonymSet--;
  return o;
}

void checkGoogleCloudContentwarehouseV1SynonymSet(
    api.GoogleCloudContentwarehouseV1SynonymSet o) {
  buildCounterGoogleCloudContentwarehouseV1SynonymSet++;
  if (buildCounterGoogleCloudContentwarehouseV1SynonymSet < 3) {
    unittest.expect(
      o.context!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.synonyms!);
  }
  buildCounterGoogleCloudContentwarehouseV1SynonymSet--;
}

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1SynonymSetSynonym = 0;
api.GoogleCloudContentwarehouseV1SynonymSetSynonym
    buildGoogleCloudContentwarehouseV1SynonymSetSynonym() {
  final o = api.GoogleCloudContentwarehouseV1SynonymSetSynonym();
  buildCounterGoogleCloudContentwarehouseV1SynonymSetSynonym++;
  if (buildCounterGoogleCloudContentwarehouseV1SynonymSetSynonym < 3) {
    o.words = buildUnnamed41();
  }
  buildCounterGoogleCloudContentwarehouseV1SynonymSetSynonym--;
  return o;
}

void checkGoogleCloudContentwarehouseV1SynonymSetSynonym(
    api.GoogleCloudContentwarehouseV1SynonymSetSynonym o) {
  buildCounterGoogleCloudContentwarehouseV1SynonymSetSynonym++;
  if (buildCounterGoogleCloudContentwarehouseV1SynonymSetSynonym < 3) {
    checkUnnamed41(o.words!);
  }
  buildCounterGoogleCloudContentwarehouseV1SynonymSetSynonym--;
}

core.List<core.String> buildUnnamed42() => [
      'foo',
      'foo',
    ];

void checkUnnamed42(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1TextArray = 0;
api.GoogleCloudContentwarehouseV1TextArray
    buildGoogleCloudContentwarehouseV1TextArray() {
  final o = api.GoogleCloudContentwarehouseV1TextArray();
  buildCounterGoogleCloudContentwarehouseV1TextArray++;
  if (buildCounterGoogleCloudContentwarehouseV1TextArray < 3) {
    o.values = buildUnnamed42();
  }
  buildCounterGoogleCloudContentwarehouseV1TextArray--;
  return o;
}

void checkGoogleCloudContentwarehouseV1TextArray(
    api.GoogleCloudContentwarehouseV1TextArray o) {
  buildCounterGoogleCloudContentwarehouseV1TextArray++;
  if (buildCounterGoogleCloudContentwarehouseV1TextArray < 3) {
    checkUnnamed42(o.values!);
  }
  buildCounterGoogleCloudContentwarehouseV1TextArray--;
}

core.int buildCounterGoogleCloudContentwarehouseV1TextTypeOptions = 0;
api.GoogleCloudContentwarehouseV1TextTypeOptions
    buildGoogleCloudContentwarehouseV1TextTypeOptions() {
  final o = api.GoogleCloudContentwarehouseV1TextTypeOptions();
  buildCounterGoogleCloudContentwarehouseV1TextTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1TextTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1TextTypeOptions--;
  return o;
}

void checkGoogleCloudContentwarehouseV1TextTypeOptions(
    api.GoogleCloudContentwarehouseV1TextTypeOptions o) {
  buildCounterGoogleCloudContentwarehouseV1TextTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1TextTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1TextTypeOptions--;
}

core.int buildCounterGoogleCloudContentwarehouseV1TimeFilter = 0;
api.GoogleCloudContentwarehouseV1TimeFilter
    buildGoogleCloudContentwarehouseV1TimeFilter() {
  final o = api.GoogleCloudContentwarehouseV1TimeFilter();
  buildCounterGoogleCloudContentwarehouseV1TimeFilter++;
  if (buildCounterGoogleCloudContentwarehouseV1TimeFilter < 3) {
    o.timeField = 'foo';
    o.timeRange = buildGoogleTypeInterval();
  }
  buildCounterGoogleCloudContentwarehouseV1TimeFilter--;
  return o;
}

void checkGoogleCloudContentwarehouseV1TimeFilter(
    api.GoogleCloudContentwarehouseV1TimeFilter o) {
  buildCounterGoogleCloudContentwarehouseV1TimeFilter++;
  if (buildCounterGoogleCloudContentwarehouseV1TimeFilter < 3) {
    unittest.expect(
      o.timeField!,
      unittest.equals('foo'),
    );
    checkGoogleTypeInterval(o.timeRange!);
  }
  buildCounterGoogleCloudContentwarehouseV1TimeFilter--;
}

core.List<api.GoogleCloudContentwarehouseV1TimestampValue> buildUnnamed43() => [
      buildGoogleCloudContentwarehouseV1TimestampValue(),
      buildGoogleCloudContentwarehouseV1TimestampValue(),
    ];

void checkUnnamed43(
    core.List<api.GoogleCloudContentwarehouseV1TimestampValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContentwarehouseV1TimestampValue(o[0]);
  checkGoogleCloudContentwarehouseV1TimestampValue(o[1]);
}

core.int buildCounterGoogleCloudContentwarehouseV1TimestampArray = 0;
api.GoogleCloudContentwarehouseV1TimestampArray
    buildGoogleCloudContentwarehouseV1TimestampArray() {
  final o = api.GoogleCloudContentwarehouseV1TimestampArray();
  buildCounterGoogleCloudContentwarehouseV1TimestampArray++;
  if (buildCounterGoogleCloudContentwarehouseV1TimestampArray < 3) {
    o.values = buildUnnamed43();
  }
  buildCounterGoogleCloudContentwarehouseV1TimestampArray--;
  return o;
}

void checkGoogleCloudContentwarehouseV1TimestampArray(
    api.GoogleCloudContentwarehouseV1TimestampArray o) {
  buildCounterGoogleCloudContentwarehouseV1TimestampArray++;
  if (buildCounterGoogleCloudContentwarehouseV1TimestampArray < 3) {
    checkUnnamed43(o.values!);
  }
  buildCounterGoogleCloudContentwarehouseV1TimestampArray--;
}

core.int buildCounterGoogleCloudContentwarehouseV1TimestampTypeOptions = 0;
api.GoogleCloudContentwarehouseV1TimestampTypeOptions
    buildGoogleCloudContentwarehouseV1TimestampTypeOptions() {
  final o = api.GoogleCloudContentwarehouseV1TimestampTypeOptions();
  buildCounterGoogleCloudContentwarehouseV1TimestampTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1TimestampTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1TimestampTypeOptions--;
  return o;
}

void checkGoogleCloudContentwarehouseV1TimestampTypeOptions(
    api.GoogleCloudContentwarehouseV1TimestampTypeOptions o) {
  buildCounterGoogleCloudContentwarehouseV1TimestampTypeOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1TimestampTypeOptions < 3) {}
  buildCounterGoogleCloudContentwarehouseV1TimestampTypeOptions--;
}

core.int buildCounterGoogleCloudContentwarehouseV1TimestampValue = 0;
api.GoogleCloudContentwarehouseV1TimestampValue
    buildGoogleCloudContentwarehouseV1TimestampValue() {
  final o = api.GoogleCloudContentwarehouseV1TimestampValue();
  buildCounterGoogleCloudContentwarehouseV1TimestampValue++;
  if (buildCounterGoogleCloudContentwarehouseV1TimestampValue < 3) {
    o.textValue = 'foo';
    o.timestampValue = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1TimestampValue--;
  return o;
}

void checkGoogleCloudContentwarehouseV1TimestampValue(
    api.GoogleCloudContentwarehouseV1TimestampValue o) {
  buildCounterGoogleCloudContentwarehouseV1TimestampValue++;
  if (buildCounterGoogleCloudContentwarehouseV1TimestampValue < 3) {
    unittest.expect(
      o.textValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1TimestampValue--;
}

core.int buildCounterGoogleCloudContentwarehouseV1UpdateDocumentRequest = 0;
api.GoogleCloudContentwarehouseV1UpdateDocumentRequest
    buildGoogleCloudContentwarehouseV1UpdateDocumentRequest() {
  final o = api.GoogleCloudContentwarehouseV1UpdateDocumentRequest();
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1UpdateDocumentRequest < 3) {
    o.cloudAiDocumentOption =
        buildGoogleCloudContentwarehouseV1CloudAIDocumentOption();
    o.document = buildGoogleCloudContentwarehouseV1Document();
    o.requestMetadata = buildGoogleCloudContentwarehouseV1RequestMetadata();
    o.updateOptions = buildGoogleCloudContentwarehouseV1UpdateOptions();
  }
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1UpdateDocumentRequest(
    api.GoogleCloudContentwarehouseV1UpdateDocumentRequest o) {
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1UpdateDocumentRequest < 3) {
    checkGoogleCloudContentwarehouseV1CloudAIDocumentOption(
        o.cloudAiDocumentOption!);
    checkGoogleCloudContentwarehouseV1Document(o.document!);
    checkGoogleCloudContentwarehouseV1RequestMetadata(o.requestMetadata!);
    checkGoogleCloudContentwarehouseV1UpdateOptions(o.updateOptions!);
  }
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentRequest--;
}

core.int buildCounterGoogleCloudContentwarehouseV1UpdateDocumentResponse = 0;
api.GoogleCloudContentwarehouseV1UpdateDocumentResponse
    buildGoogleCloudContentwarehouseV1UpdateDocumentResponse() {
  final o = api.GoogleCloudContentwarehouseV1UpdateDocumentResponse();
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1UpdateDocumentResponse < 3) {
    o.document = buildGoogleCloudContentwarehouseV1Document();
    o.metadata = buildGoogleCloudContentwarehouseV1ResponseMetadata();
    o.ruleEngineOutput = buildGoogleCloudContentwarehouseV1RuleEngineOutput();
  }
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentResponse--;
  return o;
}

void checkGoogleCloudContentwarehouseV1UpdateDocumentResponse(
    api.GoogleCloudContentwarehouseV1UpdateDocumentResponse o) {
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentResponse++;
  if (buildCounterGoogleCloudContentwarehouseV1UpdateDocumentResponse < 3) {
    checkGoogleCloudContentwarehouseV1Document(o.document!);
    checkGoogleCloudContentwarehouseV1ResponseMetadata(o.metadata!);
    checkGoogleCloudContentwarehouseV1RuleEngineOutput(o.ruleEngineOutput!);
  }
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentResponse--;
}

core.int buildCounterGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest =
    0;
api.GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest
    buildGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest() {
  final o = api.GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest();
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest <
      3) {
    o.documentSchema = buildGoogleCloudContentwarehouseV1DocumentSchema();
  }
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest(
    api.GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest o) {
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest <
      3) {
    checkGoogleCloudContentwarehouseV1DocumentSchema(o.documentSchema!);
  }
  buildCounterGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest--;
}

core.int buildCounterGoogleCloudContentwarehouseV1UpdateOptions = 0;
api.GoogleCloudContentwarehouseV1UpdateOptions
    buildGoogleCloudContentwarehouseV1UpdateOptions() {
  final o = api.GoogleCloudContentwarehouseV1UpdateOptions();
  buildCounterGoogleCloudContentwarehouseV1UpdateOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1UpdateOptions < 3) {
    o.mergeFieldsOptions =
        buildGoogleCloudContentwarehouseV1MergeFieldsOptions();
    o.updateMask = 'foo';
    o.updateType = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1UpdateOptions--;
  return o;
}

void checkGoogleCloudContentwarehouseV1UpdateOptions(
    api.GoogleCloudContentwarehouseV1UpdateOptions o) {
  buildCounterGoogleCloudContentwarehouseV1UpdateOptions++;
  if (buildCounterGoogleCloudContentwarehouseV1UpdateOptions < 3) {
    checkGoogleCloudContentwarehouseV1MergeFieldsOptions(o.mergeFieldsOptions!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1UpdateOptions--;
}

core.int buildCounterGoogleCloudContentwarehouseV1UpdateRuleSetRequest = 0;
api.GoogleCloudContentwarehouseV1UpdateRuleSetRequest
    buildGoogleCloudContentwarehouseV1UpdateRuleSetRequest() {
  final o = api.GoogleCloudContentwarehouseV1UpdateRuleSetRequest();
  buildCounterGoogleCloudContentwarehouseV1UpdateRuleSetRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1UpdateRuleSetRequest < 3) {
    o.ruleSet = buildGoogleCloudContentwarehouseV1RuleSet();
  }
  buildCounterGoogleCloudContentwarehouseV1UpdateRuleSetRequest--;
  return o;
}

void checkGoogleCloudContentwarehouseV1UpdateRuleSetRequest(
    api.GoogleCloudContentwarehouseV1UpdateRuleSetRequest o) {
  buildCounterGoogleCloudContentwarehouseV1UpdateRuleSetRequest++;
  if (buildCounterGoogleCloudContentwarehouseV1UpdateRuleSetRequest < 3) {
    checkGoogleCloudContentwarehouseV1RuleSet(o.ruleSet!);
  }
  buildCounterGoogleCloudContentwarehouseV1UpdateRuleSetRequest--;
}

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1UserInfo = 0;
api.GoogleCloudContentwarehouseV1UserInfo
    buildGoogleCloudContentwarehouseV1UserInfo() {
  final o = api.GoogleCloudContentwarehouseV1UserInfo();
  buildCounterGoogleCloudContentwarehouseV1UserInfo++;
  if (buildCounterGoogleCloudContentwarehouseV1UserInfo < 3) {
    o.groupIds = buildUnnamed44();
    o.id = 'foo';
  }
  buildCounterGoogleCloudContentwarehouseV1UserInfo--;
  return o;
}

void checkGoogleCloudContentwarehouseV1UserInfo(
    api.GoogleCloudContentwarehouseV1UserInfo o) {
  buildCounterGoogleCloudContentwarehouseV1UserInfo++;
  if (buildCounterGoogleCloudContentwarehouseV1UserInfo < 3) {
    checkUnnamed44(o.groupIds!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContentwarehouseV1UserInfo--;
}

core.int buildCounterGoogleCloudContentwarehouseV1Value = 0;
api.GoogleCloudContentwarehouseV1Value
    buildGoogleCloudContentwarehouseV1Value() {
  final o = api.GoogleCloudContentwarehouseV1Value();
  buildCounterGoogleCloudContentwarehouseV1Value++;
  if (buildCounterGoogleCloudContentwarehouseV1Value < 3) {
    o.booleanValue = true;
    o.datetimeValue = buildGoogleTypeDateTime();
    o.enumValue = buildGoogleCloudContentwarehouseV1EnumValue();
    o.floatValue = 42.0;
    o.intValue = 42;
    o.stringValue = 'foo';
    o.timestampValue = buildGoogleCloudContentwarehouseV1TimestampValue();
  }
  buildCounterGoogleCloudContentwarehouseV1Value--;
  return o;
}

void checkGoogleCloudContentwarehouseV1Value(
    api.GoogleCloudContentwarehouseV1Value o) {
  buildCounterGoogleCloudContentwarehouseV1Value++;
  if (buildCounterGoogleCloudContentwarehouseV1Value < 3) {
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDateTime(o.datetimeValue!);
    checkGoogleCloudContentwarehouseV1EnumValue(o.enumValue!);
    unittest.expect(
      o.floatValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.intValue!,
      unittest.equals(42),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContentwarehouseV1TimestampValue(o.timestampValue!);
  }
  buildCounterGoogleCloudContentwarehouseV1Value--;
}

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContentwarehouseV1WeightedSchemaProperty = 0;
api.GoogleCloudContentwarehouseV1WeightedSchemaProperty
    buildGoogleCloudContentwarehouseV1WeightedSchemaProperty() {
  final o = api.GoogleCloudContentwarehouseV1WeightedSchemaProperty();
  buildCounterGoogleCloudContentwarehouseV1WeightedSchemaProperty++;
  if (buildCounterGoogleCloudContentwarehouseV1WeightedSchemaProperty < 3) {
    o.documentSchemaName = 'foo';
    o.propertyNames = buildUnnamed45();
  }
  buildCounterGoogleCloudContentwarehouseV1WeightedSchemaProperty--;
  return o;
}

void checkGoogleCloudContentwarehouseV1WeightedSchemaProperty(
    api.GoogleCloudContentwarehouseV1WeightedSchemaProperty o) {
  buildCounterGoogleCloudContentwarehouseV1WeightedSchemaProperty++;
  if (buildCounterGoogleCloudContentwarehouseV1WeightedSchemaProperty < 3) {
    unittest.expect(
      o.documentSchemaName!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.propertyNames!);
  }
  buildCounterGoogleCloudContentwarehouseV1WeightedSchemaProperty--;
}

core.int buildCounterGoogleCloudDocumentaiV1Barcode = 0;
api.GoogleCloudDocumentaiV1Barcode buildGoogleCloudDocumentaiV1Barcode() {
  final o = api.GoogleCloudDocumentaiV1Barcode();
  buildCounterGoogleCloudDocumentaiV1Barcode++;
  if (buildCounterGoogleCloudDocumentaiV1Barcode < 3) {
    o.format = 'foo';
    o.rawValue = 'foo';
    o.valueFormat = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1Barcode--;
  return o;
}

void checkGoogleCloudDocumentaiV1Barcode(api.GoogleCloudDocumentaiV1Barcode o) {
  buildCounterGoogleCloudDocumentaiV1Barcode++;
  if (buildCounterGoogleCloudDocumentaiV1Barcode < 3) {
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rawValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1Barcode--;
}

core.List<api.GoogleCloudDocumentaiV1NormalizedVertex> buildUnnamed46() => [
      buildGoogleCloudDocumentaiV1NormalizedVertex(),
      buildGoogleCloudDocumentaiV1NormalizedVertex(),
    ];

void checkUnnamed46(core.List<api.GoogleCloudDocumentaiV1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1Vertex> buildUnnamed47() => [
      buildGoogleCloudDocumentaiV1Vertex(),
      buildGoogleCloudDocumentaiV1Vertex(),
    ];

void checkUnnamed47(core.List<api.GoogleCloudDocumentaiV1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1Vertex(o[0]);
  checkGoogleCloudDocumentaiV1Vertex(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1BoundingPoly = 0;
api.GoogleCloudDocumentaiV1BoundingPoly
    buildGoogleCloudDocumentaiV1BoundingPoly() {
  final o = api.GoogleCloudDocumentaiV1BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed46();
    o.vertices = buildUnnamed47();
  }
  buildCounterGoogleCloudDocumentaiV1BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1BoundingPoly(
    api.GoogleCloudDocumentaiV1BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1BoundingPoly < 3) {
    checkUnnamed46(o.normalizedVertices!);
    checkUnnamed47(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1BoundingPoly--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntity> buildUnnamed48() => [
      buildGoogleCloudDocumentaiV1DocumentEntity(),
      buildGoogleCloudDocumentaiV1DocumentEntity(),
    ];

void checkUnnamed48(core.List<api.GoogleCloudDocumentaiV1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1DocumentEntity(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntityRelation> buildUnnamed49() =>
    [
      buildGoogleCloudDocumentaiV1DocumentEntityRelation(),
      buildGoogleCloudDocumentaiV1DocumentEntityRelation(),
    ];

void checkUnnamed49(
    core.List<api.GoogleCloudDocumentaiV1DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1DocumentEntityRelation(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPage> buildUnnamed50() => [
      buildGoogleCloudDocumentaiV1DocumentPage(),
      buildGoogleCloudDocumentaiV1DocumentPage(),
    ];

void checkUnnamed50(core.List<api.GoogleCloudDocumentaiV1DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentRevision> buildUnnamed51() => [
      buildGoogleCloudDocumentaiV1DocumentRevision(),
      buildGoogleCloudDocumentaiV1DocumentRevision(),
    ];

void checkUnnamed51(core.List<api.GoogleCloudDocumentaiV1DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1DocumentRevision(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentTextChange> buildUnnamed52() => [
      buildGoogleCloudDocumentaiV1DocumentTextChange(),
      buildGoogleCloudDocumentaiV1DocumentTextChange(),
    ];

void checkUnnamed52(
    core.List<api.GoogleCloudDocumentaiV1DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1DocumentTextChange(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentStyle> buildUnnamed53() => [
      buildGoogleCloudDocumentaiV1DocumentStyle(),
      buildGoogleCloudDocumentaiV1DocumentStyle(),
    ];

void checkUnnamed53(core.List<api.GoogleCloudDocumentaiV1DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentStyle(o[0]);
  checkGoogleCloudDocumentaiV1DocumentStyle(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1Document = 0;
api.GoogleCloudDocumentaiV1Document buildGoogleCloudDocumentaiV1Document() {
  final o = api.GoogleCloudDocumentaiV1Document();
  buildCounterGoogleCloudDocumentaiV1Document++;
  if (buildCounterGoogleCloudDocumentaiV1Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed48();
    o.entityRelations = buildUnnamed49();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed50();
    o.revisions = buildUnnamed51();
    o.shardInfo = buildGoogleCloudDocumentaiV1DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed52();
    o.textStyles = buildUnnamed53();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1Document--;
  return o;
}

void checkGoogleCloudDocumentaiV1Document(
    api.GoogleCloudDocumentaiV1Document o) {
  buildCounterGoogleCloudDocumentaiV1Document++;
  if (buildCounterGoogleCloudDocumentaiV1Document < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.entities!);
    checkUnnamed49(o.entityRelations!);
    checkGoogleRpcStatus(o.error!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.pages!);
    checkUnnamed51(o.revisions!);
    checkGoogleCloudDocumentaiV1DocumentShardInfo(o.shardInfo!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.textChanges!);
    checkUnnamed53(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1Document--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntity> buildUnnamed54() => [
      buildGoogleCloudDocumentaiV1DocumentEntity(),
      buildGoogleCloudDocumentaiV1DocumentEntity(),
    ];

void checkUnnamed54(core.List<api.GoogleCloudDocumentaiV1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1DocumentEntity(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentEntity = 0;
api.GoogleCloudDocumentaiV1DocumentEntity
    buildGoogleCloudDocumentaiV1DocumentEntity() {
  final o = api.GoogleCloudDocumentaiV1DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1DocumentPageAnchor();
    o.properties = buildUnnamed54();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntity--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentEntity(
    api.GoogleCloudDocumentaiV1DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntity < 3) {
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
    checkGoogleCloudDocumentaiV1DocumentEntityNormalizedValue(
        o.normalizedValue!);
    checkGoogleCloudDocumentaiV1DocumentPageAnchor(o.pageAnchor!);
    checkUnnamed54(o.properties!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(o.textAnchor!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue = 0;
api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue
    buildGoogleCloudDocumentaiV1DocumentEntityNormalizedValue() {
  final o = api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue < 3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.floatValue = 42.0;
    o.integerValue = 42;
    o.moneyValue = buildGoogleTypeMoney();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue < 3) {
    checkGoogleTypePostalAddress(o.addressValue!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue!);
    checkGoogleTypeDateTime(o.datetimeValue!);
    unittest.expect(
      o.floatValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.integerValue!,
      unittest.equals(42),
    );
    checkGoogleTypeMoney(o.moneyValue!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation = 0;
api.GoogleCloudDocumentaiV1DocumentEntityRelation
    buildGoogleCloudDocumentaiV1DocumentEntityRelation() {
  final o = api.GoogleCloudDocumentaiV1DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation < 3) {
    o.objectId = 'foo';
    o.relation = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation < 3) {
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
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageBlock> buildUnnamed55() => [
      buildGoogleCloudDocumentaiV1DocumentPageBlock(),
      buildGoogleCloudDocumentaiV1DocumentPageBlock(),
    ];

void checkUnnamed55(core.List<api.GoogleCloudDocumentaiV1DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageBlock(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode>
    buildUnnamed56() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(),
        ];

void checkUnnamed56(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed57() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed57(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageFormField> buildUnnamed58() =>
    [
      buildGoogleCloudDocumentaiV1DocumentPageFormField(),
      buildGoogleCloudDocumentaiV1DocumentPageFormField(),
    ];

void checkUnnamed58(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageFormField(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageLine> buildUnnamed59() => [
      buildGoogleCloudDocumentaiV1DocumentPageLine(),
      buildGoogleCloudDocumentaiV1DocumentPageLine(),
    ];

void checkUnnamed59(core.List<api.GoogleCloudDocumentaiV1DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageLine(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageParagraph> buildUnnamed60() =>
    [
      buildGoogleCloudDocumentaiV1DocumentPageParagraph(),
      buildGoogleCloudDocumentaiV1DocumentPageParagraph(),
    ];

void checkUnnamed60(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageParagraph(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageSymbol> buildUnnamed61() => [
      buildGoogleCloudDocumentaiV1DocumentPageSymbol(),
      buildGoogleCloudDocumentaiV1DocumentPageSymbol(),
    ];

void checkUnnamed61(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageSymbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageSymbol(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageSymbol(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTable> buildUnnamed62() => [
      buildGoogleCloudDocumentaiV1DocumentPageTable(),
      buildGoogleCloudDocumentaiV1DocumentPageTable(),
    ];

void checkUnnamed62(core.List<api.GoogleCloudDocumentaiV1DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageTable(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageToken> buildUnnamed63() => [
      buildGoogleCloudDocumentaiV1DocumentPageToken(),
      buildGoogleCloudDocumentaiV1DocumentPageToken(),
    ];

void checkUnnamed63(core.List<api.GoogleCloudDocumentaiV1DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageToken(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageMatrix> buildUnnamed64() => [
      buildGoogleCloudDocumentaiV1DocumentPageMatrix(),
      buildGoogleCloudDocumentaiV1DocumentPageMatrix(),
    ];

void checkUnnamed64(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageMatrix(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageVisualElement>
    buildUnnamed65() => [
          buildGoogleCloudDocumentaiV1DocumentPageVisualElement(),
          buildGoogleCloudDocumentaiV1DocumentPageVisualElement(),
        ];

void checkUnnamed65(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageVisualElement(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageVisualElement(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPage = 0;
api.GoogleCloudDocumentaiV1DocumentPage
    buildGoogleCloudDocumentaiV1DocumentPage() {
  final o = api.GoogleCloudDocumentaiV1DocumentPage();
  buildCounterGoogleCloudDocumentaiV1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPage < 3) {
    o.blocks = buildUnnamed55();
    o.detectedBarcodes = buildUnnamed56();
    o.detectedLanguages = buildUnnamed57();
    o.dimension = buildGoogleCloudDocumentaiV1DocumentPageDimension();
    o.formFields = buildUnnamed58();
    o.image = buildGoogleCloudDocumentaiV1DocumentPageImage();
    o.imageQualityScores =
        buildGoogleCloudDocumentaiV1DocumentPageImageQualityScores();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.lines = buildUnnamed59();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed60();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.symbols = buildUnnamed61();
    o.tables = buildUnnamed62();
    o.tokens = buildUnnamed63();
    o.transforms = buildUnnamed64();
    o.visualElements = buildUnnamed65();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPage(
    api.GoogleCloudDocumentaiV1DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPage < 3) {
    checkUnnamed55(o.blocks!);
    checkUnnamed56(o.detectedBarcodes!);
    checkUnnamed57(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageDimension(o.dimension!);
    checkUnnamed58(o.formFields!);
    checkGoogleCloudDocumentaiV1DocumentPageImage(o.image!);
    checkGoogleCloudDocumentaiV1DocumentPageImageQualityScores(
        o.imageQualityScores!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkUnnamed59(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed60(o.paragraphs!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
    checkUnnamed61(o.symbols!);
    checkUnnamed62(o.tables!);
    checkUnnamed63(o.tokens!);
    checkUnnamed64(o.transforms!);
    checkUnnamed65(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>
    buildUnnamed66() => [
          buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(),
          buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(),
        ];

void checkUnnamed66(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1DocumentPageAnchor
    buildGoogleCloudDocumentaiV1DocumentPageAnchor() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed66();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor < 3) {
    checkUnnamed66(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1BoundingPoly();
    o.confidence = 42.0;
    o.layoutId = 'foo';
    o.layoutType = 'foo';
    o.page = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1BoundingPoly(o.boundingPoly!);
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
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed67() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed67(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1DocumentPageBlock
    buildGoogleCloudDocumentaiV1DocumentPageBlock() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed67();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageBlock(
    api.GoogleCloudDocumentaiV1DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageBlock < 3) {
    checkUnnamed67(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode = 0;
api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode
    buildGoogleCloudDocumentaiV1DocumentPageDetectedBarcode() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode();
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode < 3) {
    o.barcode = buildGoogleCloudDocumentaiV1Barcode();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(
    api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode < 3) {
    checkGoogleCloudDocumentaiV1Barcode(o.barcode!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage = 0;
api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage < 3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageDimension = 0;
api.GoogleCloudDocumentaiV1DocumentPageDimension
    buildGoogleCloudDocumentaiV1DocumentPageDimension() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = 'foo';
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageDimension(
    api.GoogleCloudDocumentaiV1DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDimension < 3) {
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
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed68() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed68(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed69() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed69(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1DocumentPageFormField
    buildGoogleCloudDocumentaiV1DocumentPageFormField() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageFormField < 3) {
    o.correctedKeyText = 'foo';
    o.correctedValueText = 'foo';
    o.fieldName = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed68();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed69();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageFormField(
    api.GoogleCloudDocumentaiV1DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageFormField < 3) {
    unittest.expect(
      o.correctedKeyText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.correctedValueText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.fieldName!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.fieldValue!);
    checkUnnamed68(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
    checkUnnamed69(o.valueDetectedLanguages!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageImage = 0;
api.GoogleCloudDocumentaiV1DocumentPageImage
    buildGoogleCloudDocumentaiV1DocumentPageImage() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImage < 3) {
    o.content = 'foo';
    o.height = 42;
    o.mimeType = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageImage(
    api.GoogleCloudDocumentaiV1DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImage < 3) {
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
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage--;
}

core.List<
        api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>
    buildUnnamed70() => [
          buildGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(),
          buildGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(),
        ];

void checkUnnamed70(
    core.List<
            api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(
      o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(
      o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores = 0;
api.GoogleCloudDocumentaiV1DocumentPageImageQualityScores
    buildGoogleCloudDocumentaiV1DocumentPageImageQualityScores() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageImageQualityScores();
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores < 3) {
    o.detectedDefects = buildUnnamed70();
    o.qualityScore = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageImageQualityScores(
    api.GoogleCloudDocumentaiV1DocumentPageImageQualityScores o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores < 3) {
    checkUnnamed70(o.detectedDefects!);
    unittest.expect(
      o.qualityScore!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect =
    0;
api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
    buildGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect() {
  final o =
      api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect();
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect <
      3) {
    o.confidence = 42.0;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(
    api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageLayout = 0;
api.GoogleCloudDocumentaiV1DocumentPageLayout
    buildGoogleCloudDocumentaiV1DocumentPageLayout() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1BoundingPoly();
    o.confidence = 42.0;
    o.orientation = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageLayout(
    api.GoogleCloudDocumentaiV1DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed71() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed71(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1DocumentPageLine
    buildGoogleCloudDocumentaiV1DocumentPageLine() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed71();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageLine(
    api.GoogleCloudDocumentaiV1DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLine < 3) {
    checkUnnamed71(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1DocumentPageMatrix
    buildGoogleCloudDocumentaiV1DocumentPageMatrix() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = 'foo';
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix < 3) {
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
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed72() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed72(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1DocumentPageParagraph
    buildGoogleCloudDocumentaiV1DocumentPageParagraph() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed72();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph < 3) {
    checkUnnamed72(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed73() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed73(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol = 0;
api.GoogleCloudDocumentaiV1DocumentPageSymbol
    buildGoogleCloudDocumentaiV1DocumentPageSymbol() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageSymbol();
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol < 3) {
    o.detectedLanguages = buildUnnamed73();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageSymbol(
    api.GoogleCloudDocumentaiV1DocumentPageSymbol o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol < 3) {
    checkUnnamed73(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow>
    buildUnnamed74() => [
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
        ];

void checkUnnamed74(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed75() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed75(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow>
    buildUnnamed76() => [
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
        ];

void checkUnnamed76(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1DocumentPageTable
    buildGoogleCloudDocumentaiV1DocumentPageTable() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed74();
    o.detectedLanguages = buildUnnamed75();
    o.headerRows = buildUnnamed76();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTable(
    api.GoogleCloudDocumentaiV1DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTable < 3) {
    checkUnnamed74(o.bodyRows!);
    checkUnnamed75(o.detectedLanguages!);
    checkUnnamed76(o.headerRows!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed77() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed77(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1DocumentPageTableTableCell() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed77();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell < 3) {
    unittest.expect(
      o.colSpan!,
      unittest.equals(42),
    );
    checkUnnamed77(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableCell>
    buildUnnamed78() => [
          buildGoogleCloudDocumentaiV1DocumentPageTableTableCell(),
          buildGoogleCloudDocumentaiV1DocumentPageTableTableCell(),
        ];

void checkUnnamed78(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1DocumentPageTableTableRow() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed78();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow < 3) {
    checkUnnamed78(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed79() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed79(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1DocumentPageToken
    buildGoogleCloudDocumentaiV1DocumentPageToken() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed79();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageToken(
    api.GoogleCloudDocumentaiV1DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(
        o.detectedBreak!);
    checkUnnamed79(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed80() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed80(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1DocumentPageVisualElement() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed80();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement < 3) {
    checkUnnamed80(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentProvenanceParent>
    buildUnnamed81() => [
          buildGoogleCloudDocumentaiV1DocumentProvenanceParent(),
          buildGoogleCloudDocumentaiV1DocumentProvenanceParent(),
        ];

void checkUnnamed81(
    core.List<api.GoogleCloudDocumentaiV1DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentProvenanceParent(o[0]);
  checkGoogleCloudDocumentaiV1DocumentProvenanceParent(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1DocumentProvenance
    buildGoogleCloudDocumentaiV1DocumentProvenance() {
  final o = api.GoogleCloudDocumentaiV1DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed81();
    o.revision = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentProvenance(
    api.GoogleCloudDocumentaiV1DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenance < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    checkUnnamed81(o.parents!);
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent = 0;
api.GoogleCloudDocumentaiV1DocumentProvenanceParent
    buildGoogleCloudDocumentaiV1DocumentProvenanceParent() {
  final o = api.GoogleCloudDocumentaiV1DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent < 3) {
    o.id = 42;
    o.index = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent < 3) {
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
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent--;
}

core.List<core.int> buildUnnamed82() => [
      42,
      42,
    ];

void checkUnnamed82(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed83() => [
      'foo',
      'foo',
    ];

void checkUnnamed83(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDocumentaiV1DocumentRevision = 0;
api.GoogleCloudDocumentaiV1DocumentRevision
    buildGoogleCloudDocumentaiV1DocumentRevision() {
  final o = api.GoogleCloudDocumentaiV1DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview = buildGoogleCloudDocumentaiV1DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed82();
    o.parentIds = buildUnnamed83();
    o.processor = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevision--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentRevision(
    api.GoogleCloudDocumentaiV1DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevision < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentRevisionHumanReview(o.humanReview!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed82(o.parent!);
    checkUnnamed83(o.parentIds!);
    unittest.expect(
      o.processor!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview = 0;
api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview
    buildGoogleCloudDocumentaiV1DocumentRevisionHumanReview() {
  final o = api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentShardInfo = 0;
api.GoogleCloudDocumentaiV1DocumentShardInfo
    buildGoogleCloudDocumentaiV1DocumentShardInfo() {
  final o = api.GoogleCloudDocumentaiV1DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentShardInfo < 3) {
    o.shardCount = 'foo';
    o.shardIndex = 'foo';
    o.textOffset = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentShardInfo(
    api.GoogleCloudDocumentaiV1DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentShardInfo < 3) {
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
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentStyle = 0;
api.GoogleCloudDocumentaiV1DocumentStyle
    buildGoogleCloudDocumentaiV1DocumentStyle() {
  final o = api.GoogleCloudDocumentaiV1DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontFamily = 'foo';
    o.fontSize = buildGoogleCloudDocumentaiV1DocumentStyleFontSize();
    o.fontWeight = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
    o.textDecoration = 'foo';
    o.textStyle = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyle--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentStyle(
    api.GoogleCloudDocumentaiV1DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor!);
    checkGoogleTypeColor(o.color!);
    unittest.expect(
      o.fontFamily!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentStyleFontSize(o.fontSize!);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(o.textAnchor!);
    unittest.expect(
      o.textDecoration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textStyle!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize = 0;
api.GoogleCloudDocumentaiV1DocumentStyleFontSize
    buildGoogleCloudDocumentaiV1DocumentStyleFontSize() {
  final o = api.GoogleCloudDocumentaiV1DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize < 3) {
    unittest.expect(
      o.size!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>
    buildUnnamed84() => [
          buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(),
          buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(),
        ];

void checkUnnamed84(
    core.List<api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(o[0]);
  checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1DocumentTextAnchor
    buildGoogleCloudDocumentaiV1DocumentTextAnchor() {
  final o = api.GoogleCloudDocumentaiV1DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed84();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed84(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment = 0;
api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment() {
  final o = api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment < 3) {
    o.endIndex = 'foo';
    o.startIndex = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment < 3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentProvenance> buildUnnamed85() => [
      buildGoogleCloudDocumentaiV1DocumentProvenance(),
      buildGoogleCloudDocumentaiV1DocumentProvenance(),
    ];

void checkUnnamed85(
    core.List<api.GoogleCloudDocumentaiV1DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1DocumentTextChange
    buildGoogleCloudDocumentaiV1DocumentTextChange() {
  final o = api.GoogleCloudDocumentaiV1DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed85();
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentTextChange(
    api.GoogleCloudDocumentaiV1DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextChange < 3) {
    unittest.expect(
      o.changedText!,
      unittest.equals('foo'),
    );
    checkUnnamed85(o.provenance!);
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1NormalizedVertex = 0;
api.GoogleCloudDocumentaiV1NormalizedVertex
    buildGoogleCloudDocumentaiV1NormalizedVertex() {
  final o = api.GoogleCloudDocumentaiV1NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1NormalizedVertex(
    api.GoogleCloudDocumentaiV1NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1Vertex = 0;
api.GoogleCloudDocumentaiV1Vertex buildGoogleCloudDocumentaiV1Vertex() {
  final o = api.GoogleCloudDocumentaiV1Vertex();
  buildCounterGoogleCloudDocumentaiV1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1Vertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1Vertex(api.GoogleCloudDocumentaiV1Vertex o) {
  buildCounterGoogleCloudDocumentaiV1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1Vertex--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed86() => [
      buildGoogleIamV1AuditLogConfig(),
      buildGoogleIamV1AuditLogConfig(),
    ];

void checkUnnamed86(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed86();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed86(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed87() => [
      'foo',
      'foo',
    ];

void checkUnnamed87(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed87();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed87(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed88() => [
      'foo',
      'foo',
    ];

void checkUnnamed88(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed88();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed88(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed89() => [
      buildGoogleIamV1AuditConfig(),
      buildGoogleIamV1AuditConfig(),
    ];

void checkUnnamed89(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed90() => [
      buildGoogleIamV1Binding(),
      buildGoogleIamV1Binding(),
    ];

void checkUnnamed90(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed89();
    o.bindings = buildUnnamed90();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed89(o.auditConfigs!);
    checkUnnamed90(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleIamV1Policy--;
}

core.Map<core.String, core.Object?> buildUnnamed91() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed91(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed92() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed92(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed91();
    o.name = 'foo';
    o.response = buildUnnamed92();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed91(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed92(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed93() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed93(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed94() => [
      buildUnnamed93(),
      buildUnnamed93(),
    ];

void checkUnnamed94(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed93(o[0]);
  checkUnnamed93(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed94();
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
    checkUnnamed94(o.details!);
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeExpr--;
}

core.int buildCounterGoogleTypeInterval = 0;
api.GoogleTypeInterval buildGoogleTypeInterval() {
  final o = api.GoogleTypeInterval();
  buildCounterGoogleTypeInterval++;
  if (buildCounterGoogleTypeInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleTypeInterval--;
  return o;
}

void checkGoogleTypeInterval(api.GoogleTypeInterval o) {
  buildCounterGoogleTypeInterval++;
  if (buildCounterGoogleTypeInterval < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeInterval--;
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

core.List<core.String> buildUnnamed95() => [
      'foo',
      'foo',
    ];

void checkUnnamed95(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed96() => [
      'foo',
      'foo',
    ];

void checkUnnamed96(core.List<core.String> o) {
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
    o.addressLines = buildUnnamed95();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed96();
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
    checkUnnamed95(o.addressLines!);
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
    checkUnnamed96(o.recipients!);
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
  unittest.group('obj-schema-GoogleCloudContentwarehouseV1AccessControlAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1AccessControlAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1AccessControlAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1AccessControlAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1Action();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1Action.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1Action(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1ActionExecutorOutput',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1ActionExecutorOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1ActionExecutorOutput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1ActionExecutorOutput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1ActionOutput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1ActionOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1ActionOutput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1ActionOutput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1AddToFolderAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1AddToFolderAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1AddToFolderAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1AddToFolderAction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1CloudAIDocumentOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1CloudAIDocumentOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1CloudAIDocumentOption.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1CloudAIDocumentOption(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1CreateDocumentLinkRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1CreateDocumentLinkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1CreateDocumentLinkRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1CreateDocumentLinkRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1CreateDocumentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1CreateDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1CreateDocumentRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1CreateDocumentRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1CreateDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1CreateDocumentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1CreateDocumentResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1CreateDocumentResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1CustomWeightsMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1CustomWeightsMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1CustomWeightsMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1CustomWeightsMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1DataUpdateAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DataUpdateAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1DataUpdateAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DataUpdateAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1DataValidationAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DataValidationAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1DataValidationAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DataValidationAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1DateTimeArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DateTimeArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1DateTimeArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DateTimeArray(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1DateTimeTypeOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DateTimeTypeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1DateTimeTypeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DateTimeTypeOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1DeleteDocumentAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DeleteDocumentAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1DeleteDocumentAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DeleteDocumentAction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1DeleteDocumentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DeleteDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1DeleteDocumentRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DeleteDocumentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1Document();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1Document(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1DocumentLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DocumentLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1DocumentLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DocumentLink(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1DocumentQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DocumentQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1DocumentQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DocumentQuery(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1DocumentReference',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DocumentReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1DocumentReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DocumentReference(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1DocumentSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1DocumentSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1DocumentSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1DocumentSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1EnumArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1EnumArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1EnumArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1EnumArray(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1EnumTypeOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1EnumTypeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1EnumTypeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1EnumTypeOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1EnumValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1EnumValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1EnumValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1EnumValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1FetchAclRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1FetchAclRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1FetchAclRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1FetchAclRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1FetchAclResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1FetchAclResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1FetchAclResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1FetchAclResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1FileTypeFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1FileTypeFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1FileTypeFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1FileTypeFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1FloatArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1FloatArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1FloatArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1FloatArray(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1FloatTypeOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1FloatTypeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1FloatTypeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1FloatTypeOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1GetDocumentRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1GetDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1GetDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1GetDocumentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1HistogramQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1HistogramQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1HistogramQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1HistogramQuery(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1HistogramQueryResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1HistogramQueryResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1HistogramQueryResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1HistogramQueryResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1InitializeProjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1InitializeProjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1InitializeProjectRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1InitializeProjectRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1IntegerArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1IntegerArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1IntegerArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1IntegerArray(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1IntegerTypeOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1IntegerTypeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1IntegerTypeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1IntegerTypeOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1InvalidRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1InvalidRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1InvalidRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1InvalidRule(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1ListDocumentSchemasResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1ListDocumentSchemasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1ListDocumentSchemasResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1ListDocumentSchemasResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1ListLinkedSourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1ListLinkedSourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1ListLinkedSourcesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1ListLinkedSourcesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1ListLinkedSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1ListLinkedSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1ListLinkedSourcesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1ListLinkedSourcesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1ListLinkedTargetsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1ListLinkedTargetsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1ListLinkedTargetsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1ListLinkedTargetsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1ListLinkedTargetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1ListLinkedTargetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1ListLinkedTargetsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1ListLinkedTargetsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1ListRuleSetsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1ListRuleSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1ListRuleSetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1ListRuleSetsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1ListSynonymSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1ListSynonymSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1ListSynonymSetsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1ListSynonymSetsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1MapProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1MapProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1MapProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1MapProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1MapTypeOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1MapTypeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1MapTypeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1MapTypeOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1MergeFieldsOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1MergeFieldsOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1MergeFieldsOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1MergeFieldsOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1Property', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1Property();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1Property.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1Property(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1PropertyArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1PropertyArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1PropertyArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1PropertyArray(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1PropertyDefinition',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1PropertyDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1PropertyDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1PropertyDefinition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1PropertyFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1PropertyFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1PropertyFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1PropertyFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1PropertyTypeOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1PropertyTypeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1PropertyTypeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1PropertyTypeOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1PublishAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1PublishAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1PublishAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1PublishAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1QAResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1QAResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1QAResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1QAResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1QAResultHighlight',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1QAResultHighlight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1QAResultHighlight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1QAResultHighlight(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1RemoveFromFolderAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1RemoveFromFolderAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1RemoveFromFolderAction.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1RemoveFromFolderAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1RequestMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1RequestMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1RequestMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1ResponseMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1ResponseMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1ResponseMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1ResponseMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1Rule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1Rule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1Rule(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1RuleActionsPair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1RuleActionsPair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1RuleActionsPair.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1RuleActionsPair(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1RuleEngineOutput',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1RuleEngineOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1RuleEngineOutput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1RuleEngineOutput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1RuleEvaluatorOutput',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1RuleEvaluatorOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1RuleEvaluatorOutput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1RuleEvaluatorOutput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1RuleSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1RuleSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1RuleSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1RuleSet(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1SearchDocumentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1SearchDocumentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1SearchDocumentsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1SearchDocumentsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1SearchDocumentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1SearchDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1SearchDocumentsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1SearchDocumentsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1SetAclRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1SetAclRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1SetAclRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1SetAclRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1SetAclResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1SetAclResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1SetAclResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1SetAclResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1SynonymSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1SynonymSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1SynonymSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1SynonymSet(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1SynonymSetSynonym',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1SynonymSetSynonym();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1SynonymSetSynonym.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1SynonymSetSynonym(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1TextArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1TextArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1TextArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1TextArray(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1TextTypeOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1TextTypeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1TextTypeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1TextTypeOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1TimeFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1TimeFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1TimeFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1TimeFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1TimestampArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1TimestampArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1TimestampArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1TimestampArray(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1TimestampTypeOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1TimestampTypeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1TimestampTypeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1TimestampTypeOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1TimestampValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1TimestampValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1TimestampValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1TimestampValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1UpdateDocumentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1UpdateDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1UpdateDocumentRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1UpdateDocumentRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1UpdateDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1UpdateDocumentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1UpdateDocumentResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1UpdateDocumentResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1UpdateOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1UpdateOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1UpdateOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1UpdateOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1UpdateRuleSetRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1UpdateRuleSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1UpdateRuleSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1UpdateRuleSetRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1UserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1UserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1UserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContentwarehouseV1Value', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1Value();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContentwarehouseV1Value.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1Value(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContentwarehouseV1WeightedSchemaProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContentwarehouseV1WeightedSchemaProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContentwarehouseV1WeightedSchemaProperty.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContentwarehouseV1WeightedSchemaProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1Barcode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1Barcode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1Barcode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1Barcode(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1Document();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1Document(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentEntity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentEntityNormalizedValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentEntityNormalizedValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentEntityNormalizedValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentEntityRelation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentEntityRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentEntityRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentEntityRelation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageAnchor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageAnchor(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageAnchorPageRef',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageBlock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageBlock(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageDetectedBarcode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageDetectedBarcode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageDetectedLanguage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageFormField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageFormField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageFormField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageImage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageImageQualityScores', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageImageQualityScores();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentPageImageQualityScores.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageImageQualityScores(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageLayout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageLayout(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageLine(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageMatrix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageMatrix(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageParagraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageParagraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageParagraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageSymbol', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageSymbol();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageSymbol.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageSymbol(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTable(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageTableTableCell',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageTableTableCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageTableTableRow',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageTableTableRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageToken(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageVisualElement',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageVisualElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageVisualElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageVisualElement(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentProvenance(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentProvenanceParent',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentProvenanceParent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentProvenanceParent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentProvenanceParent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentRevision(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentRevisionHumanReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentRevisionHumanReview(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentShardInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentShardInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentShardInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentStyle(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentStyleFontSize', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentStyleFontSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentStyleFontSize(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentTextAnchor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentTextAnchor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentTextChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentTextChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentTextChange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1Vertex(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Policy(od);
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

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeInterval(od);
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

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--fetchAcl', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects;
      final arg_request = buildGoogleCloudContentwarehouseV1FetchAclRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContentwarehouseV1FetchAclRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1FetchAclRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1FetchAclResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.fetchAcl(arg_request, arg_resource, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1FetchAclResponse(
          response as api.GoogleCloudContentwarehouseV1FetchAclResponse);
    });

    unittest.test('method--setAcl', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects;
      final arg_request = buildGoogleCloudContentwarehouseV1SetAclRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContentwarehouseV1SetAclRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1SetAclRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1SetAclResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.setAcl(arg_request, arg_resource, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1SetAclResponse(
          response as api.GoogleCloudContentwarehouseV1SetAclResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--initialize', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContentwarehouseV1InitializeProjectRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1InitializeProjectRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1InitializeProjectRequest(obj);

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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.initialize(arg_request, arg_location, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsDocumentSchemasResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ContentwarehouseApi(mock).projects.locations.documentSchemas;
      final arg_request = buildGoogleCloudContentwarehouseV1DocumentSchema();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContentwarehouseV1DocumentSchema.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1DocumentSchema(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1DocumentSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1DocumentSchema(
          response as api.GoogleCloudContentwarehouseV1DocumentSchema);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ContentwarehouseApi(mock).projects.locations.documentSchemas;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ContentwarehouseApi(mock).projects.locations.documentSchemas;
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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1DocumentSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1DocumentSchema(
          response as api.GoogleCloudContentwarehouseV1DocumentSchema);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ContentwarehouseApi(mock).projects.locations.documentSchemas;
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
        final resp = convert.json.encode(
            buildGoogleCloudContentwarehouseV1ListDocumentSchemasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1ListDocumentSchemasResponse(response
          as api.GoogleCloudContentwarehouseV1ListDocumentSchemasResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ContentwarehouseApi(mock).projects.locations.documentSchemas;
      final arg_request =
          buildGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1DocumentSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1DocumentSchema(
          response as api.GoogleCloudContentwarehouseV1DocumentSchema);
    });
  });

  unittest.group('resource-ProjectsLocationsDocumentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.documents;
      final arg_request =
          buildGoogleCloudContentwarehouseV1CreateDocumentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1CreateDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1CreateDocumentRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1CreateDocumentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1CreateDocumentResponse(
          response as api.GoogleCloudContentwarehouseV1CreateDocumentResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.documents;
      final arg_request =
          buildGoogleCloudContentwarehouseV1DeleteDocumentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1DeleteDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1DeleteDocumentRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--fetchAcl', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.documents;
      final arg_request = buildGoogleCloudContentwarehouseV1FetchAclRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContentwarehouseV1FetchAclRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1FetchAclRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1FetchAclResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.fetchAcl(arg_request, arg_resource, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1FetchAclResponse(
          response as api.GoogleCloudContentwarehouseV1FetchAclResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.documents;
      final arg_request =
          buildGoogleCloudContentwarehouseV1GetDocumentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1GetDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1GetDocumentRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudContentwarehouseV1Document());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1Document(
          response as api.GoogleCloudContentwarehouseV1Document);
    });

    unittest.test('method--linkedSources', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.documents;
      final arg_request =
          buildGoogleCloudContentwarehouseV1ListLinkedSourcesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1ListLinkedSourcesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1ListLinkedSourcesRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudContentwarehouseV1ListLinkedSourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.linkedSources(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1ListLinkedSourcesResponse(response
          as api.GoogleCloudContentwarehouseV1ListLinkedSourcesResponse);
    });

    unittest.test('method--linkedTargets', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.documents;
      final arg_request =
          buildGoogleCloudContentwarehouseV1ListLinkedTargetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1ListLinkedTargetsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1ListLinkedTargetsRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudContentwarehouseV1ListLinkedTargetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.linkedTargets(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1ListLinkedTargetsResponse(response
          as api.GoogleCloudContentwarehouseV1ListLinkedTargetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.documents;
      final arg_request =
          buildGoogleCloudContentwarehouseV1UpdateDocumentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1UpdateDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1UpdateDocumentRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1UpdateDocumentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1UpdateDocumentResponse(
          response as api.GoogleCloudContentwarehouseV1UpdateDocumentResponse);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.documents;
      final arg_request =
          buildGoogleCloudContentwarehouseV1SearchDocumentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1SearchDocumentsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1SearchDocumentsRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudContentwarehouseV1SearchDocumentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1SearchDocumentsResponse(
          response as api.GoogleCloudContentwarehouseV1SearchDocumentsResponse);
    });

    unittest.test('method--setAcl', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.documents;
      final arg_request = buildGoogleCloudContentwarehouseV1SetAclRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContentwarehouseV1SetAclRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1SetAclRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1SetAclResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.setAcl(arg_request, arg_resource, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1SetAclResponse(
          response as api.GoogleCloudContentwarehouseV1SetAclResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDocumentsDocumentLinksResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock)
          .projects
          .locations
          .documents
          .documentLinks;
      final arg_request =
          buildGoogleCloudContentwarehouseV1CreateDocumentLinkRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1CreateDocumentLinkRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1CreateDocumentLinkRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1DocumentLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1DocumentLink(
          response as api.GoogleCloudContentwarehouseV1DocumentLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock)
          .projects
          .locations
          .documents
          .documentLinks;
      final arg_request =
          buildGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1DeleteDocumentLinkRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-ProjectsLocationsDocumentsReferenceIdResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock)
          .projects
          .locations
          .documents
          .referenceId;
      final arg_request =
          buildGoogleCloudContentwarehouseV1DeleteDocumentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1DeleteDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1DeleteDocumentRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock)
          .projects
          .locations
          .documents
          .referenceId;
      final arg_request =
          buildGoogleCloudContentwarehouseV1GetDocumentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1GetDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1GetDocumentRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudContentwarehouseV1Document());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1Document(
          response as api.GoogleCloudContentwarehouseV1Document);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock)
          .projects
          .locations
          .documents
          .referenceId;
      final arg_request =
          buildGoogleCloudContentwarehouseV1UpdateDocumentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1UpdateDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1UpdateDocumentRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContentwarehouseV1UpdateDocumentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1UpdateDocumentResponse(
          response as api.GoogleCloudContentwarehouseV1UpdateDocumentResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsRuleSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.ruleSets;
      final arg_request = buildGoogleCloudContentwarehouseV1RuleSet();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContentwarehouseV1RuleSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1RuleSet(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudContentwarehouseV1RuleSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1RuleSet(
          response as api.GoogleCloudContentwarehouseV1RuleSet);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.ruleSets;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.ruleSets;
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
        final resp =
            convert.json.encode(buildGoogleCloudContentwarehouseV1RuleSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1RuleSet(
          response as api.GoogleCloudContentwarehouseV1RuleSet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.ruleSets;
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
            .encode(buildGoogleCloudContentwarehouseV1ListRuleSetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1ListRuleSetsResponse(
          response as api.GoogleCloudContentwarehouseV1ListRuleSetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.ruleSets;
      final arg_request =
          buildGoogleCloudContentwarehouseV1UpdateRuleSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContentwarehouseV1UpdateRuleSetRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1UpdateRuleSetRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudContentwarehouseV1RuleSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1RuleSet(
          response as api.GoogleCloudContentwarehouseV1RuleSet);
    });
  });

  unittest.group('resource-ProjectsLocationsSynonymSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.synonymSets;
      final arg_request = buildGoogleCloudContentwarehouseV1SynonymSet();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContentwarehouseV1SynonymSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1SynonymSet(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudContentwarehouseV1SynonymSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1SynonymSet(
          response as api.GoogleCloudContentwarehouseV1SynonymSet);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.synonymSets;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.synonymSets;
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
        final resp =
            convert.json.encode(buildGoogleCloudContentwarehouseV1SynonymSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1SynonymSet(
          response as api.GoogleCloudContentwarehouseV1SynonymSet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.synonymSets;
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
        final resp = convert.json.encode(
            buildGoogleCloudContentwarehouseV1ListSynonymSetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1ListSynonymSetsResponse(
          response as api.GoogleCloudContentwarehouseV1ListSynonymSetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContentwarehouseApi(mock).projects.locations.synonymSets;
      final arg_request = buildGoogleCloudContentwarehouseV1SynonymSet();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContentwarehouseV1SynonymSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContentwarehouseV1SynonymSet(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudContentwarehouseV1SynonymSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudContentwarehouseV1SynonymSet(
          response as api.GoogleCloudContentwarehouseV1SynonymSet);
    });
  });
}
