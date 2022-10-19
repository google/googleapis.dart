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

import 'package:googleapis/datapipelines/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleCloudDatapipelinesV1FieldValue> buildUnnamed0() => [
      buildGoogleCloudDatapipelinesV1FieldValue(),
      buildGoogleCloudDatapipelinesV1FieldValue(),
    ];

void checkUnnamed0(core.List<api.GoogleCloudDatapipelinesV1FieldValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatapipelinesV1FieldValue(o[0]);
  checkGoogleCloudDatapipelinesV1FieldValue(o[1]);
}

core.int buildCounterGoogleCloudDatapipelinesV1ArrayValue = 0;
api.GoogleCloudDatapipelinesV1ArrayValue
    buildGoogleCloudDatapipelinesV1ArrayValue() {
  final o = api.GoogleCloudDatapipelinesV1ArrayValue();
  buildCounterGoogleCloudDatapipelinesV1ArrayValue++;
  if (buildCounterGoogleCloudDatapipelinesV1ArrayValue < 3) {
    o.elements = buildUnnamed0();
  }
  buildCounterGoogleCloudDatapipelinesV1ArrayValue--;
  return o;
}

void checkGoogleCloudDatapipelinesV1ArrayValue(
    api.GoogleCloudDatapipelinesV1ArrayValue o) {
  buildCounterGoogleCloudDatapipelinesV1ArrayValue++;
  if (buildCounterGoogleCloudDatapipelinesV1ArrayValue < 3) {
    checkUnnamed0(o.elements!);
  }
  buildCounterGoogleCloudDatapipelinesV1ArrayValue--;
}

core.int buildCounterGoogleCloudDatapipelinesV1AtomicValue = 0;
api.GoogleCloudDatapipelinesV1AtomicValue
    buildGoogleCloudDatapipelinesV1AtomicValue() {
  final o = api.GoogleCloudDatapipelinesV1AtomicValue();
  buildCounterGoogleCloudDatapipelinesV1AtomicValue++;
  if (buildCounterGoogleCloudDatapipelinesV1AtomicValue < 3) {
    o.booleanValue = true;
    o.byteValue = 42;
    o.bytesValue = 'foo';
    o.datetimeValue = buildGoogleTypeDateTime();
    o.decimalValue = buildGoogleTypeDecimal();
    o.doubleValue = 42.0;
    o.floatValue = 42.0;
    o.int16Value = 42;
    o.int32Value = 42;
    o.int64Value = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1AtomicValue--;
  return o;
}

void checkGoogleCloudDatapipelinesV1AtomicValue(
    api.GoogleCloudDatapipelinesV1AtomicValue o) {
  buildCounterGoogleCloudDatapipelinesV1AtomicValue++;
  if (buildCounterGoogleCloudDatapipelinesV1AtomicValue < 3) {
    unittest.expect(o.booleanValue!, unittest.isTrue);
    unittest.expect(
      o.byteValue!,
      unittest.equals(42),
    );
    unittest.expect(
      o.bytesValue!,
      unittest.equals('foo'),
    );
    checkGoogleTypeDateTime(o.datetimeValue!);
    checkGoogleTypeDecimal(o.decimalValue!);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.floatValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int16Value!,
      unittest.equals(42),
    );
    unittest.expect(
      o.int32Value!,
      unittest.equals(42),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1AtomicValue--;
}

core.List<api.GoogleCloudDatapipelinesV1TransformDescription> buildUnnamed1() =>
    [
      buildGoogleCloudDatapipelinesV1TransformDescription(),
      buildGoogleCloudDatapipelinesV1TransformDescription(),
    ];

void checkUnnamed1(
    core.List<api.GoogleCloudDatapipelinesV1TransformDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatapipelinesV1TransformDescription(o[0]);
  checkGoogleCloudDatapipelinesV1TransformDescription(o[1]);
}

core.int
    buildCounterGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse =
    0;
api.GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse
    buildGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse() {
  final o =
      api.GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse();
  buildCounterGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse <
      3) {
    o.transformDescriptions = buildUnnamed1();
  }
  buildCounterGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse--;
  return o;
}

void checkGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse(
    api.GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse o) {
  buildCounterGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse <
      3) {
    checkUnnamed1(o.transformDescriptions!);
  }
  buildCounterGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse--;
}

core.List<api.GoogleCloudDatapipelinesV1Schema> buildUnnamed2() => [
      buildGoogleCloudDatapipelinesV1Schema(),
      buildGoogleCloudDatapipelinesV1Schema(),
    ];

void checkUnnamed2(core.List<api.GoogleCloudDatapipelinesV1Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatapipelinesV1Schema(o[0]);
  checkGoogleCloudDatapipelinesV1Schema(o[1]);
}

core.int buildCounterGoogleCloudDatapipelinesV1ComputeSchemaRequest = 0;
api.GoogleCloudDatapipelinesV1ComputeSchemaRequest
    buildGoogleCloudDatapipelinesV1ComputeSchemaRequest() {
  final o = api.GoogleCloudDatapipelinesV1ComputeSchemaRequest();
  buildCounterGoogleCloudDatapipelinesV1ComputeSchemaRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1ComputeSchemaRequest < 3) {
    o.config = buildGoogleCloudDatapipelinesV1ConfiguredTransform();
    o.inputSchemas = buildUnnamed2();
    o.rawSchema = buildGoogleCloudDatapipelinesV1RawSchemaInfo();
  }
  buildCounterGoogleCloudDatapipelinesV1ComputeSchemaRequest--;
  return o;
}

void checkGoogleCloudDatapipelinesV1ComputeSchemaRequest(
    api.GoogleCloudDatapipelinesV1ComputeSchemaRequest o) {
  buildCounterGoogleCloudDatapipelinesV1ComputeSchemaRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1ComputeSchemaRequest < 3) {
    checkGoogleCloudDatapipelinesV1ConfiguredTransform(o.config!);
    checkUnnamed2(o.inputSchemas!);
    checkGoogleCloudDatapipelinesV1RawSchemaInfo(o.rawSchema!);
  }
  buildCounterGoogleCloudDatapipelinesV1ComputeSchemaRequest--;
}

core.int buildCounterGoogleCloudDatapipelinesV1ConfiguredTransform = 0;
api.GoogleCloudDatapipelinesV1ConfiguredTransform
    buildGoogleCloudDatapipelinesV1ConfiguredTransform() {
  final o = api.GoogleCloudDatapipelinesV1ConfiguredTransform();
  buildCounterGoogleCloudDatapipelinesV1ConfiguredTransform++;
  if (buildCounterGoogleCloudDatapipelinesV1ConfiguredTransform < 3) {
    o.config = buildGoogleCloudDatapipelinesV1Row();
    o.uniformResourceName = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1ConfiguredTransform--;
  return o;
}

void checkGoogleCloudDatapipelinesV1ConfiguredTransform(
    api.GoogleCloudDatapipelinesV1ConfiguredTransform o) {
  buildCounterGoogleCloudDatapipelinesV1ConfiguredTransform++;
  if (buildCounterGoogleCloudDatapipelinesV1ConfiguredTransform < 3) {
    checkGoogleCloudDatapipelinesV1Row(o.config!);
    unittest.expect(
      o.uniformResourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1ConfiguredTransform--;
}

core.Map<core.String, core.double> buildUnnamed3() => {
      'x': 42.0,
      'y': 42.0,
    };

void checkUnnamed3(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42.0),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42.0),
  );
}

core.int buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails = 0;
api.GoogleCloudDatapipelinesV1DataflowJobDetails
    buildGoogleCloudDatapipelinesV1DataflowJobDetails() {
  final o = api.GoogleCloudDatapipelinesV1DataflowJobDetails();
  buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails++;
  if (buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails < 3) {
    o.currentWorkers = 42;
    o.resourceInfo = buildUnnamed3();
    o.sdkVersion = buildGoogleCloudDatapipelinesV1SdkVersion();
  }
  buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails--;
  return o;
}

void checkGoogleCloudDatapipelinesV1DataflowJobDetails(
    api.GoogleCloudDatapipelinesV1DataflowJobDetails o) {
  buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails++;
  if (buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails < 3) {
    unittest.expect(
      o.currentWorkers!,
      unittest.equals(42),
    );
    checkUnnamed3(o.resourceInfo!);
    checkGoogleCloudDatapipelinesV1SdkVersion(o.sdkVersion!);
  }
  buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails--;
}

core.int buildCounterGoogleCloudDatapipelinesV1EnumerationValue = 0;
api.GoogleCloudDatapipelinesV1EnumerationValue
    buildGoogleCloudDatapipelinesV1EnumerationValue() {
  final o = api.GoogleCloudDatapipelinesV1EnumerationValue();
  buildCounterGoogleCloudDatapipelinesV1EnumerationValue++;
  if (buildCounterGoogleCloudDatapipelinesV1EnumerationValue < 3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1EnumerationValue--;
  return o;
}

void checkGoogleCloudDatapipelinesV1EnumerationValue(
    api.GoogleCloudDatapipelinesV1EnumerationValue o) {
  buildCounterGoogleCloudDatapipelinesV1EnumerationValue++;
  if (buildCounterGoogleCloudDatapipelinesV1EnumerationValue < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1EnumerationValue--;
}

core.int buildCounterGoogleCloudDatapipelinesV1Field = 0;
api.GoogleCloudDatapipelinesV1Field buildGoogleCloudDatapipelinesV1Field() {
  final o = api.GoogleCloudDatapipelinesV1Field();
  buildCounterGoogleCloudDatapipelinesV1Field++;
  if (buildCounterGoogleCloudDatapipelinesV1Field < 3) {
    o.name = 'foo';
    o.type = buildGoogleCloudDatapipelinesV1FieldType();
  }
  buildCounterGoogleCloudDatapipelinesV1Field--;
  return o;
}

void checkGoogleCloudDatapipelinesV1Field(
    api.GoogleCloudDatapipelinesV1Field o) {
  buildCounterGoogleCloudDatapipelinesV1Field++;
  if (buildCounterGoogleCloudDatapipelinesV1Field < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatapipelinesV1FieldType(o.type!);
  }
  buildCounterGoogleCloudDatapipelinesV1Field--;
}

core.int buildCounterGoogleCloudDatapipelinesV1FieldType = 0;
api.GoogleCloudDatapipelinesV1FieldType
    buildGoogleCloudDatapipelinesV1FieldType() {
  final o = api.GoogleCloudDatapipelinesV1FieldType();
  buildCounterGoogleCloudDatapipelinesV1FieldType++;
  if (buildCounterGoogleCloudDatapipelinesV1FieldType < 3) {
    o.collectionElementType = buildGoogleCloudDatapipelinesV1FieldType();
    o.logicalType = buildGoogleCloudDatapipelinesV1LogicalType();
    o.mapType = buildGoogleCloudDatapipelinesV1MapType();
    o.nullable = true;
    o.rowSchema = buildGoogleCloudDatapipelinesV1Schema();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1FieldType--;
  return o;
}

void checkGoogleCloudDatapipelinesV1FieldType(
    api.GoogleCloudDatapipelinesV1FieldType o) {
  buildCounterGoogleCloudDatapipelinesV1FieldType++;
  if (buildCounterGoogleCloudDatapipelinesV1FieldType < 3) {
    checkGoogleCloudDatapipelinesV1FieldType(o.collectionElementType!);
    checkGoogleCloudDatapipelinesV1LogicalType(o.logicalType!);
    checkGoogleCloudDatapipelinesV1MapType(o.mapType!);
    unittest.expect(o.nullable!, unittest.isTrue);
    checkGoogleCloudDatapipelinesV1Schema(o.rowSchema!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1FieldType--;
}

core.int buildCounterGoogleCloudDatapipelinesV1FieldValue = 0;
api.GoogleCloudDatapipelinesV1FieldValue
    buildGoogleCloudDatapipelinesV1FieldValue() {
  final o = api.GoogleCloudDatapipelinesV1FieldValue();
  buildCounterGoogleCloudDatapipelinesV1FieldValue++;
  if (buildCounterGoogleCloudDatapipelinesV1FieldValue < 3) {
    o.arrayValue = buildGoogleCloudDatapipelinesV1ArrayValue();
    o.atomicValue = buildGoogleCloudDatapipelinesV1AtomicValue();
    o.enumValue = buildGoogleCloudDatapipelinesV1EnumerationValue();
    o.fixedBytesValue = buildGoogleCloudDatapipelinesV1FixedBytesValue();
    o.iterableValue = buildGoogleCloudDatapipelinesV1IterableValue();
    o.mapValue = buildGoogleCloudDatapipelinesV1MapValue();
    o.rowValue = buildGoogleCloudDatapipelinesV1Row();
  }
  buildCounterGoogleCloudDatapipelinesV1FieldValue--;
  return o;
}

void checkGoogleCloudDatapipelinesV1FieldValue(
    api.GoogleCloudDatapipelinesV1FieldValue o) {
  buildCounterGoogleCloudDatapipelinesV1FieldValue++;
  if (buildCounterGoogleCloudDatapipelinesV1FieldValue < 3) {
    checkGoogleCloudDatapipelinesV1ArrayValue(o.arrayValue!);
    checkGoogleCloudDatapipelinesV1AtomicValue(o.atomicValue!);
    checkGoogleCloudDatapipelinesV1EnumerationValue(o.enumValue!);
    checkGoogleCloudDatapipelinesV1FixedBytesValue(o.fixedBytesValue!);
    checkGoogleCloudDatapipelinesV1IterableValue(o.iterableValue!);
    checkGoogleCloudDatapipelinesV1MapValue(o.mapValue!);
    checkGoogleCloudDatapipelinesV1Row(o.rowValue!);
  }
  buildCounterGoogleCloudDatapipelinesV1FieldValue--;
}

core.int buildCounterGoogleCloudDatapipelinesV1FixedBytesValue = 0;
api.GoogleCloudDatapipelinesV1FixedBytesValue
    buildGoogleCloudDatapipelinesV1FixedBytesValue() {
  final o = api.GoogleCloudDatapipelinesV1FixedBytesValue();
  buildCounterGoogleCloudDatapipelinesV1FixedBytesValue++;
  if (buildCounterGoogleCloudDatapipelinesV1FixedBytesValue < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1FixedBytesValue--;
  return o;
}

void checkGoogleCloudDatapipelinesV1FixedBytesValue(
    api.GoogleCloudDatapipelinesV1FixedBytesValue o) {
  buildCounterGoogleCloudDatapipelinesV1FixedBytesValue++;
  if (buildCounterGoogleCloudDatapipelinesV1FixedBytesValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1FixedBytesValue--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment =
    0;
api.GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment
    buildGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment() {
  final o = api.GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment();
  buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment++;
  if (buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment <
      3) {
    o.additionalExperiments = buildUnnamed4();
    o.additionalUserLabels = buildUnnamed5();
    o.enableStreamingEngine = true;
    o.flexrsGoal = 'foo';
    o.ipConfiguration = 'foo';
    o.kmsKeyName = 'foo';
    o.machineType = 'foo';
    o.maxWorkers = 42;
    o.network = 'foo';
    o.numWorkers = 42;
    o.serviceAccountEmail = 'foo';
    o.subnetwork = 'foo';
    o.tempLocation = 'foo';
    o.workerRegion = 'foo';
    o.workerZone = 'foo';
    o.zone = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment--;
  return o;
}

void checkGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment(
    api.GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment o) {
  buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment++;
  if (buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment <
      3) {
    checkUnnamed4(o.additionalExperiments!);
    checkUnnamed5(o.additionalUserLabels!);
    unittest.expect(o.enableStreamingEngine!, unittest.isTrue);
    unittest.expect(
      o.flexrsGoal!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipConfiguration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tempLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment--;
}

core.List<api.GoogleCloudDatapipelinesV1FieldValue> buildUnnamed6() => [
      buildGoogleCloudDatapipelinesV1FieldValue(),
      buildGoogleCloudDatapipelinesV1FieldValue(),
    ];

void checkUnnamed6(core.List<api.GoogleCloudDatapipelinesV1FieldValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatapipelinesV1FieldValue(o[0]);
  checkGoogleCloudDatapipelinesV1FieldValue(o[1]);
}

core.int buildCounterGoogleCloudDatapipelinesV1IterableValue = 0;
api.GoogleCloudDatapipelinesV1IterableValue
    buildGoogleCloudDatapipelinesV1IterableValue() {
  final o = api.GoogleCloudDatapipelinesV1IterableValue();
  buildCounterGoogleCloudDatapipelinesV1IterableValue++;
  if (buildCounterGoogleCloudDatapipelinesV1IterableValue < 3) {
    o.elements = buildUnnamed6();
  }
  buildCounterGoogleCloudDatapipelinesV1IterableValue--;
  return o;
}

void checkGoogleCloudDatapipelinesV1IterableValue(
    api.GoogleCloudDatapipelinesV1IterableValue o) {
  buildCounterGoogleCloudDatapipelinesV1IterableValue++;
  if (buildCounterGoogleCloudDatapipelinesV1IterableValue < 3) {
    checkUnnamed6(o.elements!);
  }
  buildCounterGoogleCloudDatapipelinesV1IterableValue--;
}

core.int buildCounterGoogleCloudDatapipelinesV1Job = 0;
api.GoogleCloudDatapipelinesV1Job buildGoogleCloudDatapipelinesV1Job() {
  final o = api.GoogleCloudDatapipelinesV1Job();
  buildCounterGoogleCloudDatapipelinesV1Job++;
  if (buildCounterGoogleCloudDatapipelinesV1Job < 3) {
    o.createTime = 'foo';
    o.dataflowJobDetails = buildGoogleCloudDatapipelinesV1DataflowJobDetails();
    o.endTime = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDatapipelinesV1Job--;
  return o;
}

void checkGoogleCloudDatapipelinesV1Job(api.GoogleCloudDatapipelinesV1Job o) {
  buildCounterGoogleCloudDatapipelinesV1Job++;
  if (buildCounterGoogleCloudDatapipelinesV1Job < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatapipelinesV1DataflowJobDetails(o.dataflowJobDetails!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.status!);
  }
  buildCounterGoogleCloudDatapipelinesV1Job--;
}

core.Map<core.String, core.String> buildUnnamed7() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter = 0;
api.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter
    buildGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter() {
  final o = api.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter();
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter < 3) {
    o.containerSpecGcsPath = 'foo';
    o.environment =
        buildGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment();
    o.jobName = 'foo';
    o.launchOptions = buildUnnamed7();
    o.parameters = buildUnnamed8();
    o.transformNameMappings = buildUnnamed9();
    o.update = true;
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter(
    api.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter o) {
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter < 3) {
    unittest.expect(
      o.containerSpecGcsPath!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment(
        o.environment!);
    unittest.expect(
      o.jobName!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.launchOptions!);
    checkUnnamed8(o.parameters!);
    checkUnnamed9(o.transformNameMappings!);
    unittest.expect(o.update!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter--;
}

core.int buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest = 0;
api.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest
    buildGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest() {
  final o = api.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest();
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest < 3) {
    o.launchParameter =
        buildGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter();
    o.location = 'foo';
    o.projectId = 'foo';
    o.validateOnly = true;
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest(
    api.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest o) {
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest < 3) {
    checkGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter(
        o.launchParameter!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest--;
}

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters = 0;
api.GoogleCloudDatapipelinesV1LaunchTemplateParameters
    buildGoogleCloudDatapipelinesV1LaunchTemplateParameters() {
  final o = api.GoogleCloudDatapipelinesV1LaunchTemplateParameters();
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters < 3) {
    o.environment = buildGoogleCloudDatapipelinesV1RuntimeEnvironment();
    o.jobName = 'foo';
    o.parameters = buildUnnamed10();
    o.transformNameMapping = buildUnnamed11();
    o.update = true;
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LaunchTemplateParameters(
    api.GoogleCloudDatapipelinesV1LaunchTemplateParameters o) {
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters < 3) {
    checkGoogleCloudDatapipelinesV1RuntimeEnvironment(o.environment!);
    unittest.expect(
      o.jobName!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.parameters!);
    checkUnnamed11(o.transformNameMapping!);
    unittest.expect(o.update!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters--;
}

core.int buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest = 0;
api.GoogleCloudDatapipelinesV1LaunchTemplateRequest
    buildGoogleCloudDatapipelinesV1LaunchTemplateRequest() {
  final o = api.GoogleCloudDatapipelinesV1LaunchTemplateRequest();
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest < 3) {
    o.gcsPath = 'foo';
    o.launchParameters =
        buildGoogleCloudDatapipelinesV1LaunchTemplateParameters();
    o.location = 'foo';
    o.projectId = 'foo';
    o.validateOnly = true;
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LaunchTemplateRequest(
    api.GoogleCloudDatapipelinesV1LaunchTemplateRequest o) {
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest < 3) {
    unittest.expect(
      o.gcsPath!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatapipelinesV1LaunchTemplateParameters(
        o.launchParameters!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest--;
}

core.List<api.GoogleCloudDatapipelinesV1Job> buildUnnamed12() => [
      buildGoogleCloudDatapipelinesV1Job(),
      buildGoogleCloudDatapipelinesV1Job(),
    ];

void checkUnnamed12(core.List<api.GoogleCloudDatapipelinesV1Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatapipelinesV1Job(o[0]);
  checkGoogleCloudDatapipelinesV1Job(o[1]);
}

core.int buildCounterGoogleCloudDatapipelinesV1ListJobsResponse = 0;
api.GoogleCloudDatapipelinesV1ListJobsResponse
    buildGoogleCloudDatapipelinesV1ListJobsResponse() {
  final o = api.GoogleCloudDatapipelinesV1ListJobsResponse();
  buildCounterGoogleCloudDatapipelinesV1ListJobsResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1ListJobsResponse < 3) {
    o.jobs = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1ListJobsResponse--;
  return o;
}

void checkGoogleCloudDatapipelinesV1ListJobsResponse(
    api.GoogleCloudDatapipelinesV1ListJobsResponse o) {
  buildCounterGoogleCloudDatapipelinesV1ListJobsResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1ListJobsResponse < 3) {
    checkUnnamed12(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1ListJobsResponse--;
}

core.List<api.GoogleCloudDatapipelinesV1Pipeline> buildUnnamed13() => [
      buildGoogleCloudDatapipelinesV1Pipeline(),
      buildGoogleCloudDatapipelinesV1Pipeline(),
    ];

void checkUnnamed13(core.List<api.GoogleCloudDatapipelinesV1Pipeline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatapipelinesV1Pipeline(o[0]);
  checkGoogleCloudDatapipelinesV1Pipeline(o[1]);
}

core.int buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse = 0;
api.GoogleCloudDatapipelinesV1ListPipelinesResponse
    buildGoogleCloudDatapipelinesV1ListPipelinesResponse() {
  final o = api.GoogleCloudDatapipelinesV1ListPipelinesResponse();
  buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse < 3) {
    o.nextPageToken = 'foo';
    o.pipelines = buildUnnamed13();
  }
  buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse--;
  return o;
}

void checkGoogleCloudDatapipelinesV1ListPipelinesResponse(
    api.GoogleCloudDatapipelinesV1ListPipelinesResponse o) {
  buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.pipelines!);
  }
  buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse--;
}

core.int buildCounterGoogleCloudDatapipelinesV1LogicalType = 0;
api.GoogleCloudDatapipelinesV1LogicalType
    buildGoogleCloudDatapipelinesV1LogicalType() {
  final o = api.GoogleCloudDatapipelinesV1LogicalType();
  buildCounterGoogleCloudDatapipelinesV1LogicalType++;
  if (buildCounterGoogleCloudDatapipelinesV1LogicalType < 3) {
    o.enumerationType =
        buildGoogleCloudDatapipelinesV1LogicalTypeEnumerationType();
    o.fixedBytes = buildGoogleCloudDatapipelinesV1LogicalTypeFixedBytes();
  }
  buildCounterGoogleCloudDatapipelinesV1LogicalType--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LogicalType(
    api.GoogleCloudDatapipelinesV1LogicalType o) {
  buildCounterGoogleCloudDatapipelinesV1LogicalType++;
  if (buildCounterGoogleCloudDatapipelinesV1LogicalType < 3) {
    checkGoogleCloudDatapipelinesV1LogicalTypeEnumerationType(
        o.enumerationType!);
    checkGoogleCloudDatapipelinesV1LogicalTypeFixedBytes(o.fixedBytes!);
  }
  buildCounterGoogleCloudDatapipelinesV1LogicalType--;
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

core.int buildCounterGoogleCloudDatapipelinesV1LogicalTypeEnumerationType = 0;
api.GoogleCloudDatapipelinesV1LogicalTypeEnumerationType
    buildGoogleCloudDatapipelinesV1LogicalTypeEnumerationType() {
  final o = api.GoogleCloudDatapipelinesV1LogicalTypeEnumerationType();
  buildCounterGoogleCloudDatapipelinesV1LogicalTypeEnumerationType++;
  if (buildCounterGoogleCloudDatapipelinesV1LogicalTypeEnumerationType < 3) {
    o.values = buildUnnamed14();
  }
  buildCounterGoogleCloudDatapipelinesV1LogicalTypeEnumerationType--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LogicalTypeEnumerationType(
    api.GoogleCloudDatapipelinesV1LogicalTypeEnumerationType o) {
  buildCounterGoogleCloudDatapipelinesV1LogicalTypeEnumerationType++;
  if (buildCounterGoogleCloudDatapipelinesV1LogicalTypeEnumerationType < 3) {
    checkUnnamed14(o.values!);
  }
  buildCounterGoogleCloudDatapipelinesV1LogicalTypeEnumerationType--;
}

core.int buildCounterGoogleCloudDatapipelinesV1LogicalTypeFixedBytes = 0;
api.GoogleCloudDatapipelinesV1LogicalTypeFixedBytes
    buildGoogleCloudDatapipelinesV1LogicalTypeFixedBytes() {
  final o = api.GoogleCloudDatapipelinesV1LogicalTypeFixedBytes();
  buildCounterGoogleCloudDatapipelinesV1LogicalTypeFixedBytes++;
  if (buildCounterGoogleCloudDatapipelinesV1LogicalTypeFixedBytes < 3) {
    o.sizeBytes = 42;
  }
  buildCounterGoogleCloudDatapipelinesV1LogicalTypeFixedBytes--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LogicalTypeFixedBytes(
    api.GoogleCloudDatapipelinesV1LogicalTypeFixedBytes o) {
  buildCounterGoogleCloudDatapipelinesV1LogicalTypeFixedBytes++;
  if (buildCounterGoogleCloudDatapipelinesV1LogicalTypeFixedBytes < 3) {
    unittest.expect(
      o.sizeBytes!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1LogicalTypeFixedBytes--;
}

core.int buildCounterGoogleCloudDatapipelinesV1MapType = 0;
api.GoogleCloudDatapipelinesV1MapType buildGoogleCloudDatapipelinesV1MapType() {
  final o = api.GoogleCloudDatapipelinesV1MapType();
  buildCounterGoogleCloudDatapipelinesV1MapType++;
  if (buildCounterGoogleCloudDatapipelinesV1MapType < 3) {
    o.mapKeyType = buildGoogleCloudDatapipelinesV1FieldType();
    o.mapValueType = buildGoogleCloudDatapipelinesV1FieldType();
  }
  buildCounterGoogleCloudDatapipelinesV1MapType--;
  return o;
}

void checkGoogleCloudDatapipelinesV1MapType(
    api.GoogleCloudDatapipelinesV1MapType o) {
  buildCounterGoogleCloudDatapipelinesV1MapType++;
  if (buildCounterGoogleCloudDatapipelinesV1MapType < 3) {
    checkGoogleCloudDatapipelinesV1FieldType(o.mapKeyType!);
    checkGoogleCloudDatapipelinesV1FieldType(o.mapValueType!);
  }
  buildCounterGoogleCloudDatapipelinesV1MapType--;
}

core.List<api.GoogleCloudDatapipelinesV1MapValueEntry> buildUnnamed15() => [
      buildGoogleCloudDatapipelinesV1MapValueEntry(),
      buildGoogleCloudDatapipelinesV1MapValueEntry(),
    ];

void checkUnnamed15(core.List<api.GoogleCloudDatapipelinesV1MapValueEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatapipelinesV1MapValueEntry(o[0]);
  checkGoogleCloudDatapipelinesV1MapValueEntry(o[1]);
}

core.int buildCounterGoogleCloudDatapipelinesV1MapValue = 0;
api.GoogleCloudDatapipelinesV1MapValue
    buildGoogleCloudDatapipelinesV1MapValue() {
  final o = api.GoogleCloudDatapipelinesV1MapValue();
  buildCounterGoogleCloudDatapipelinesV1MapValue++;
  if (buildCounterGoogleCloudDatapipelinesV1MapValue < 3) {
    o.entries = buildUnnamed15();
  }
  buildCounterGoogleCloudDatapipelinesV1MapValue--;
  return o;
}

void checkGoogleCloudDatapipelinesV1MapValue(
    api.GoogleCloudDatapipelinesV1MapValue o) {
  buildCounterGoogleCloudDatapipelinesV1MapValue++;
  if (buildCounterGoogleCloudDatapipelinesV1MapValue < 3) {
    checkUnnamed15(o.entries!);
  }
  buildCounterGoogleCloudDatapipelinesV1MapValue--;
}

core.int buildCounterGoogleCloudDatapipelinesV1MapValueEntry = 0;
api.GoogleCloudDatapipelinesV1MapValueEntry
    buildGoogleCloudDatapipelinesV1MapValueEntry() {
  final o = api.GoogleCloudDatapipelinesV1MapValueEntry();
  buildCounterGoogleCloudDatapipelinesV1MapValueEntry++;
  if (buildCounterGoogleCloudDatapipelinesV1MapValueEntry < 3) {
    o.key = buildGoogleCloudDatapipelinesV1FieldValue();
    o.value = buildGoogleCloudDatapipelinesV1FieldValue();
  }
  buildCounterGoogleCloudDatapipelinesV1MapValueEntry--;
  return o;
}

void checkGoogleCloudDatapipelinesV1MapValueEntry(
    api.GoogleCloudDatapipelinesV1MapValueEntry o) {
  buildCounterGoogleCloudDatapipelinesV1MapValueEntry++;
  if (buildCounterGoogleCloudDatapipelinesV1MapValueEntry < 3) {
    checkGoogleCloudDatapipelinesV1FieldValue(o.key!);
    checkGoogleCloudDatapipelinesV1FieldValue(o.value!);
  }
  buildCounterGoogleCloudDatapipelinesV1MapValueEntry--;
}

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDatapipelinesV1Pipeline = 0;
api.GoogleCloudDatapipelinesV1Pipeline
    buildGoogleCloudDatapipelinesV1Pipeline() {
  final o = api.GoogleCloudDatapipelinesV1Pipeline();
  buildCounterGoogleCloudDatapipelinesV1Pipeline++;
  if (buildCounterGoogleCloudDatapipelinesV1Pipeline < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.jobCount = 42;
    o.lastUpdateTime = 'foo';
    o.name = 'foo';
    o.pipelineSources = buildUnnamed16();
    o.scheduleInfo = buildGoogleCloudDatapipelinesV1ScheduleSpec();
    o.schedulerServiceAccountEmail = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.workload = buildGoogleCloudDatapipelinesV1Workload();
  }
  buildCounterGoogleCloudDatapipelinesV1Pipeline--;
  return o;
}

void checkGoogleCloudDatapipelinesV1Pipeline(
    api.GoogleCloudDatapipelinesV1Pipeline o) {
  buildCounterGoogleCloudDatapipelinesV1Pipeline++;
  if (buildCounterGoogleCloudDatapipelinesV1Pipeline < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.pipelineSources!);
    checkGoogleCloudDatapipelinesV1ScheduleSpec(o.scheduleInfo!);
    unittest.expect(
      o.schedulerServiceAccountEmail!,
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
    checkGoogleCloudDatapipelinesV1Workload(o.workload!);
  }
  buildCounterGoogleCloudDatapipelinesV1Pipeline--;
}

core.int buildCounterGoogleCloudDatapipelinesV1RawSchemaInfo = 0;
api.GoogleCloudDatapipelinesV1RawSchemaInfo
    buildGoogleCloudDatapipelinesV1RawSchemaInfo() {
  final o = api.GoogleCloudDatapipelinesV1RawSchemaInfo();
  buildCounterGoogleCloudDatapipelinesV1RawSchemaInfo++;
  if (buildCounterGoogleCloudDatapipelinesV1RawSchemaInfo < 3) {
    o.rawSchema = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1RawSchemaInfo--;
  return o;
}

void checkGoogleCloudDatapipelinesV1RawSchemaInfo(
    api.GoogleCloudDatapipelinesV1RawSchemaInfo o) {
  buildCounterGoogleCloudDatapipelinesV1RawSchemaInfo++;
  if (buildCounterGoogleCloudDatapipelinesV1RawSchemaInfo < 3) {
    unittest.expect(
      o.rawSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1RawSchemaInfo--;
}

core.List<api.GoogleCloudDatapipelinesV1FieldValue> buildUnnamed17() => [
      buildGoogleCloudDatapipelinesV1FieldValue(),
      buildGoogleCloudDatapipelinesV1FieldValue(),
    ];

void checkUnnamed17(core.List<api.GoogleCloudDatapipelinesV1FieldValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatapipelinesV1FieldValue(o[0]);
  checkGoogleCloudDatapipelinesV1FieldValue(o[1]);
}

core.int buildCounterGoogleCloudDatapipelinesV1Row = 0;
api.GoogleCloudDatapipelinesV1Row buildGoogleCloudDatapipelinesV1Row() {
  final o = api.GoogleCloudDatapipelinesV1Row();
  buildCounterGoogleCloudDatapipelinesV1Row++;
  if (buildCounterGoogleCloudDatapipelinesV1Row < 3) {
    o.schema = buildGoogleCloudDatapipelinesV1SchemaSource();
    o.values = buildUnnamed17();
  }
  buildCounterGoogleCloudDatapipelinesV1Row--;
  return o;
}

void checkGoogleCloudDatapipelinesV1Row(api.GoogleCloudDatapipelinesV1Row o) {
  buildCounterGoogleCloudDatapipelinesV1Row++;
  if (buildCounterGoogleCloudDatapipelinesV1Row < 3) {
    checkGoogleCloudDatapipelinesV1SchemaSource(o.schema!);
    checkUnnamed17(o.values!);
  }
  buildCounterGoogleCloudDatapipelinesV1Row--;
}

core.int buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest = 0;
api.GoogleCloudDatapipelinesV1RunPipelineRequest
    buildGoogleCloudDatapipelinesV1RunPipelineRequest() {
  final o = api.GoogleCloudDatapipelinesV1RunPipelineRequest();
  buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest < 3) {}
  buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest--;
  return o;
}

void checkGoogleCloudDatapipelinesV1RunPipelineRequest(
    api.GoogleCloudDatapipelinesV1RunPipelineRequest o) {
  buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest < 3) {}
  buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest--;
}

core.int buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse = 0;
api.GoogleCloudDatapipelinesV1RunPipelineResponse
    buildGoogleCloudDatapipelinesV1RunPipelineResponse() {
  final o = api.GoogleCloudDatapipelinesV1RunPipelineResponse();
  buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse < 3) {
    o.job = buildGoogleCloudDatapipelinesV1Job();
  }
  buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse--;
  return o;
}

void checkGoogleCloudDatapipelinesV1RunPipelineResponse(
    api.GoogleCloudDatapipelinesV1RunPipelineResponse o) {
  buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse < 3) {
    checkGoogleCloudDatapipelinesV1Job(o.job!);
  }
  buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse--;
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

core.int buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment = 0;
api.GoogleCloudDatapipelinesV1RuntimeEnvironment
    buildGoogleCloudDatapipelinesV1RuntimeEnvironment() {
  final o = api.GoogleCloudDatapipelinesV1RuntimeEnvironment();
  buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment++;
  if (buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment < 3) {
    o.additionalExperiments = buildUnnamed18();
    o.additionalUserLabels = buildUnnamed19();
    o.bypassTempDirValidation = true;
    o.enableStreamingEngine = true;
    o.ipConfiguration = 'foo';
    o.kmsKeyName = 'foo';
    o.machineType = 'foo';
    o.maxWorkers = 42;
    o.network = 'foo';
    o.numWorkers = 42;
    o.serviceAccountEmail = 'foo';
    o.subnetwork = 'foo';
    o.tempLocation = 'foo';
    o.workerRegion = 'foo';
    o.workerZone = 'foo';
    o.zone = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment--;
  return o;
}

void checkGoogleCloudDatapipelinesV1RuntimeEnvironment(
    api.GoogleCloudDatapipelinesV1RuntimeEnvironment o) {
  buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment++;
  if (buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment < 3) {
    checkUnnamed18(o.additionalExperiments!);
    checkUnnamed19(o.additionalUserLabels!);
    unittest.expect(o.bypassTempDirValidation!, unittest.isTrue);
    unittest.expect(o.enableStreamingEngine!, unittest.isTrue);
    unittest.expect(
      o.ipConfiguration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tempLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment--;
}

core.int buildCounterGoogleCloudDatapipelinesV1ScheduleSpec = 0;
api.GoogleCloudDatapipelinesV1ScheduleSpec
    buildGoogleCloudDatapipelinesV1ScheduleSpec() {
  final o = api.GoogleCloudDatapipelinesV1ScheduleSpec();
  buildCounterGoogleCloudDatapipelinesV1ScheduleSpec++;
  if (buildCounterGoogleCloudDatapipelinesV1ScheduleSpec < 3) {
    o.nextJobTime = 'foo';
    o.schedule = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1ScheduleSpec--;
  return o;
}

void checkGoogleCloudDatapipelinesV1ScheduleSpec(
    api.GoogleCloudDatapipelinesV1ScheduleSpec o) {
  buildCounterGoogleCloudDatapipelinesV1ScheduleSpec++;
  if (buildCounterGoogleCloudDatapipelinesV1ScheduleSpec < 3) {
    unittest.expect(
      o.nextJobTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1ScheduleSpec--;
}

core.List<api.GoogleCloudDatapipelinesV1Field> buildUnnamed20() => [
      buildGoogleCloudDatapipelinesV1Field(),
      buildGoogleCloudDatapipelinesV1Field(),
    ];

void checkUnnamed20(core.List<api.GoogleCloudDatapipelinesV1Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatapipelinesV1Field(o[0]);
  checkGoogleCloudDatapipelinesV1Field(o[1]);
}

core.int buildCounterGoogleCloudDatapipelinesV1Schema = 0;
api.GoogleCloudDatapipelinesV1Schema buildGoogleCloudDatapipelinesV1Schema() {
  final o = api.GoogleCloudDatapipelinesV1Schema();
  buildCounterGoogleCloudDatapipelinesV1Schema++;
  if (buildCounterGoogleCloudDatapipelinesV1Schema < 3) {
    o.fields = buildUnnamed20();
    o.referenceId = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1Schema--;
  return o;
}

void checkGoogleCloudDatapipelinesV1Schema(
    api.GoogleCloudDatapipelinesV1Schema o) {
  buildCounterGoogleCloudDatapipelinesV1Schema++;
  if (buildCounterGoogleCloudDatapipelinesV1Schema < 3) {
    checkUnnamed20(o.fields!);
    unittest.expect(
      o.referenceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1Schema--;
}

core.int buildCounterGoogleCloudDatapipelinesV1SchemaSource = 0;
api.GoogleCloudDatapipelinesV1SchemaSource
    buildGoogleCloudDatapipelinesV1SchemaSource() {
  final o = api.GoogleCloudDatapipelinesV1SchemaSource();
  buildCounterGoogleCloudDatapipelinesV1SchemaSource++;
  if (buildCounterGoogleCloudDatapipelinesV1SchemaSource < 3) {
    o.localSchema = buildGoogleCloudDatapipelinesV1Schema();
    o.referenceId = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1SchemaSource--;
  return o;
}

void checkGoogleCloudDatapipelinesV1SchemaSource(
    api.GoogleCloudDatapipelinesV1SchemaSource o) {
  buildCounterGoogleCloudDatapipelinesV1SchemaSource++;
  if (buildCounterGoogleCloudDatapipelinesV1SchemaSource < 3) {
    checkGoogleCloudDatapipelinesV1Schema(o.localSchema!);
    unittest.expect(
      o.referenceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1SchemaSource--;
}

core.int buildCounterGoogleCloudDatapipelinesV1SdkVersion = 0;
api.GoogleCloudDatapipelinesV1SdkVersion
    buildGoogleCloudDatapipelinesV1SdkVersion() {
  final o = api.GoogleCloudDatapipelinesV1SdkVersion();
  buildCounterGoogleCloudDatapipelinesV1SdkVersion++;
  if (buildCounterGoogleCloudDatapipelinesV1SdkVersion < 3) {
    o.sdkSupportStatus = 'foo';
    o.version = 'foo';
    o.versionDisplayName = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1SdkVersion--;
  return o;
}

void checkGoogleCloudDatapipelinesV1SdkVersion(
    api.GoogleCloudDatapipelinesV1SdkVersion o) {
  buildCounterGoogleCloudDatapipelinesV1SdkVersion++;
  if (buildCounterGoogleCloudDatapipelinesV1SdkVersion < 3) {
    unittest.expect(
      o.sdkSupportStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionDisplayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1SdkVersion--;
}

core.int buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest = 0;
api.GoogleCloudDatapipelinesV1StopPipelineRequest
    buildGoogleCloudDatapipelinesV1StopPipelineRequest() {
  final o = api.GoogleCloudDatapipelinesV1StopPipelineRequest();
  buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest < 3) {}
  buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest--;
  return o;
}

void checkGoogleCloudDatapipelinesV1StopPipelineRequest(
    api.GoogleCloudDatapipelinesV1StopPipelineRequest o) {
  buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest < 3) {}
  buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest--;
}

core.int buildCounterGoogleCloudDatapipelinesV1TransformDescription = 0;
api.GoogleCloudDatapipelinesV1TransformDescription
    buildGoogleCloudDatapipelinesV1TransformDescription() {
  final o = api.GoogleCloudDatapipelinesV1TransformDescription();
  buildCounterGoogleCloudDatapipelinesV1TransformDescription++;
  if (buildCounterGoogleCloudDatapipelinesV1TransformDescription < 3) {
    o.name = 'foo';
    o.options = buildGoogleCloudDatapipelinesV1Schema();
    o.uniformResourceName = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1TransformDescription--;
  return o;
}

void checkGoogleCloudDatapipelinesV1TransformDescription(
    api.GoogleCloudDatapipelinesV1TransformDescription o) {
  buildCounterGoogleCloudDatapipelinesV1TransformDescription++;
  if (buildCounterGoogleCloudDatapipelinesV1TransformDescription < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatapipelinesV1Schema(o.options!);
    unittest.expect(
      o.uniformResourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1TransformDescription--;
}

core.int buildCounterGoogleCloudDatapipelinesV1Workload = 0;
api.GoogleCloudDatapipelinesV1Workload
    buildGoogleCloudDatapipelinesV1Workload() {
  final o = api.GoogleCloudDatapipelinesV1Workload();
  buildCounterGoogleCloudDatapipelinesV1Workload++;
  if (buildCounterGoogleCloudDatapipelinesV1Workload < 3) {
    o.dataflowFlexTemplateRequest =
        buildGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest();
    o.dataflowLaunchTemplateRequest =
        buildGoogleCloudDatapipelinesV1LaunchTemplateRequest();
  }
  buildCounterGoogleCloudDatapipelinesV1Workload--;
  return o;
}

void checkGoogleCloudDatapipelinesV1Workload(
    api.GoogleCloudDatapipelinesV1Workload o) {
  buildCounterGoogleCloudDatapipelinesV1Workload++;
  if (buildCounterGoogleCloudDatapipelinesV1Workload < 3) {
    checkGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest(
        o.dataflowFlexTemplateRequest!);
    checkGoogleCloudDatapipelinesV1LaunchTemplateRequest(
        o.dataflowLaunchTemplateRequest!);
  }
  buildCounterGoogleCloudDatapipelinesV1Workload--;
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

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed22() => [
      buildUnnamed21(),
      buildUnnamed21(),
    ];

void checkUnnamed22(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed21(o[0]);
  checkUnnamed21(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed22();
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
    checkUnnamed22(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
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

core.int buildCounterGoogleTypeDecimal = 0;
api.GoogleTypeDecimal buildGoogleTypeDecimal() {
  final o = api.GoogleTypeDecimal();
  buildCounterGoogleTypeDecimal++;
  if (buildCounterGoogleTypeDecimal < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleTypeDecimal--;
  return o;
}

void checkGoogleTypeDecimal(api.GoogleTypeDecimal o) {
  buildCounterGoogleTypeDecimal++;
  if (buildCounterGoogleTypeDecimal < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeDecimal--;
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

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-GoogleCloudDatapipelinesV1ArrayValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1ArrayValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1ArrayValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1ArrayValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1AtomicValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1AtomicValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1AtomicValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1AtomicValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1ComputeSchemaRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1ComputeSchemaRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1ComputeSchemaRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1ComputeSchemaRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1ConfiguredTransform',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1ConfiguredTransform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1ConfiguredTransform.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1ConfiguredTransform(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1DataflowJobDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1DataflowJobDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1DataflowJobDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1DataflowJobDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1EnumerationValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1EnumerationValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1EnumerationValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1EnumerationValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1Field();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1Field.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1Field(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1FieldType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1FieldType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1FieldType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1FieldType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1FieldValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1FieldValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1FieldValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1FieldValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1FixedBytesValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1FixedBytesValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1FixedBytesValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1FixedBytesValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1IterableValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1IterableValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1IterableValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1IterableValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1Job();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1Job.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1Job(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatapipelinesV1LaunchTemplateParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LaunchTemplateParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatapipelinesV1LaunchTemplateParameters.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LaunchTemplateParameters(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1LaunchTemplateRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LaunchTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1LaunchTemplateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LaunchTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1ListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1ListJobsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1ListPipelinesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1ListPipelinesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1ListPipelinesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1ListPipelinesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1LogicalType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LogicalType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1LogicalType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LogicalType(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatapipelinesV1LogicalTypeEnumerationType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LogicalTypeEnumerationType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatapipelinesV1LogicalTypeEnumerationType.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LogicalTypeEnumerationType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1LogicalTypeFixedBytes',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LogicalTypeFixedBytes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1LogicalTypeFixedBytes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LogicalTypeFixedBytes(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1MapType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1MapType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1MapType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1MapType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1MapValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1MapValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1MapValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1MapValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1MapValueEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1MapValueEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1MapValueEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1MapValueEntry(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1Pipeline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1Pipeline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1Pipeline.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1Pipeline(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1RawSchemaInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1RawSchemaInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1RawSchemaInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1RawSchemaInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1Row', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1Row();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1Row.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1Row(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1RunPipelineRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1RunPipelineRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1RunPipelineRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1RunPipelineRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1RunPipelineResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1RunPipelineResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1RunPipelineResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1RunPipelineResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1RuntimeEnvironment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1RuntimeEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1RuntimeEnvironment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1RuntimeEnvironment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1ScheduleSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1ScheduleSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1ScheduleSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1ScheduleSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1Schema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1Schema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1Schema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1SchemaSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1SchemaSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1SchemaSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1SchemaSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1SdkVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1SdkVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1SdkVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1SdkVersion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1StopPipelineRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1StopPipelineRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1StopPipelineRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1StopPipelineRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1TransformDescription',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1TransformDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1TransformDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1TransformDescription(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1Workload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1Workload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1Workload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1Workload(od);
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

  unittest.group('obj-schema-GoogleTypeDateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDateTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDateTime(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDecimal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDecimal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDecimal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDecimal(od);
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
    unittest.test('method--computeSchema', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations;
      final arg_request = buildGoogleCloudDatapipelinesV1ComputeSchemaRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatapipelinesV1ComputeSchemaRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatapipelinesV1ComputeSchemaRequest(obj);

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
            convert.json.encode(buildGoogleCloudDatapipelinesV1Schema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.computeSchema(arg_request, arg_location,
          $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1Schema(
          response as api.GoogleCloudDatapipelinesV1Schema);
    });

    unittest.test('method--listPipelines', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDatapipelinesV1ListPipelinesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listPipelines(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1ListPipelinesResponse(
          response as api.GoogleCloudDatapipelinesV1ListPipelinesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsPipelinesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
      final arg_request = buildGoogleCloudDatapipelinesV1Pipeline();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatapipelinesV1Pipeline.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatapipelinesV1Pipeline(obj);

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
            convert.json.encode(buildGoogleCloudDatapipelinesV1Pipeline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1Pipeline(
          response as api.GoogleCloudDatapipelinesV1Pipeline);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
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
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
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
            convert.json.encode(buildGoogleCloudDatapipelinesV1Pipeline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1Pipeline(
          response as api.GoogleCloudDatapipelinesV1Pipeline);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
      final arg_request = buildGoogleCloudDatapipelinesV1Pipeline();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatapipelinesV1Pipeline.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatapipelinesV1Pipeline(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDatapipelinesV1Pipeline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1Pipeline(
          response as api.GoogleCloudDatapipelinesV1Pipeline);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
      final arg_request = buildGoogleCloudDatapipelinesV1RunPipelineRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatapipelinesV1RunPipelineRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatapipelinesV1RunPipelineRequest(obj);

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
            .encode(buildGoogleCloudDatapipelinesV1RunPipelineResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1RunPipelineResponse(
          response as api.GoogleCloudDatapipelinesV1RunPipelineResponse);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
      final arg_request = buildGoogleCloudDatapipelinesV1StopPipelineRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatapipelinesV1StopPipelineRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatapipelinesV1StopPipelineRequest(obj);

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
            convert.json.encode(buildGoogleCloudDatapipelinesV1Pipeline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1Pipeline(
          response as api.GoogleCloudDatapipelinesV1Pipeline);
    });
  });

  unittest.group('resource-ProjectsLocationsPipelinesJobsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines.jobs;
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
            .encode(buildGoogleCloudDatapipelinesV1ListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1ListJobsResponse(
          response as api.GoogleCloudDatapipelinesV1ListJobsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTransformDescriptionsResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res =
          api.DatapipelinesApi(mock).projects.locations.transformDescriptions;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed23();
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
          queryMap['names']!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse(
          response as api
              .GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DatapipelinesApi(mock).projects.locations.transformDescriptions;
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
            .encode(buildGoogleCloudDatapipelinesV1TransformDescription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1TransformDescription(
          response as api.GoogleCloudDatapipelinesV1TransformDescription);
    });
  });
}
