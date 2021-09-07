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

import 'package:googleapis_beta/datacatalog/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed7892() => [
      'foo',
      'foo',
    ];

void checkUnnamed7892(core.List<core.String> o) {
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed7892();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed7892(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
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

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
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
  buildCounterExpr--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  final o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options!);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  final o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(
      o.requestedPolicyVersion!,
      unittest.equals(42),
    );
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec = 0;
api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec
    buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec() {
  final o = api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec < 3) {
    o.dataset = 'foo';
    o.shardCount = 'foo';
    o.tablePrefix = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec(
    api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec < 3) {
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shardCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tablePrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec = 0;
api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec
    buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec() {
  final o = api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec();
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec < 3) {
    o.tableSourceType = 'foo';
    o.tableSpec = buildGoogleCloudDatacatalogV1beta1TableSpec();
    o.viewSpec = buildGoogleCloudDatacatalogV1beta1ViewSpec();
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1BigQueryTableSpec(
    api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec < 3) {
    unittest.expect(
      o.tableSourceType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1TableSpec(o.tableSpec!);
    checkGoogleCloudDatacatalogV1beta1ViewSpec(o.viewSpec!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec--;
}

core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> buildUnnamed7893() => [
      buildGoogleCloudDatacatalogV1beta1ColumnSchema(),
      buildGoogleCloudDatacatalogV1beta1ColumnSchema(),
    ];

void checkUnnamed7893(
    core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[0]);
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema = 0;
api.GoogleCloudDatacatalogV1beta1ColumnSchema
    buildGoogleCloudDatacatalogV1beta1ColumnSchema() {
  final o = api.GoogleCloudDatacatalogV1beta1ColumnSchema();
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema < 3) {
    o.column = 'foo';
    o.description = 'foo';
    o.mode = 'foo';
    o.subcolumns = buildUnnamed7893();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ColumnSchema(
    api.GoogleCloudDatacatalogV1beta1ColumnSchema o) {
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    checkUnnamed7893(o.subcolumns!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Entry = 0;
api.GoogleCloudDatacatalogV1beta1Entry
    buildGoogleCloudDatacatalogV1beta1Entry() {
  final o = api.GoogleCloudDatacatalogV1beta1Entry();
  buildCounterGoogleCloudDatacatalogV1beta1Entry++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Entry < 3) {
    o.bigqueryDateShardedSpec =
        buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
    o.bigqueryTableSpec = buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec();
    o.description = 'foo';
    o.displayName = 'foo';
    o.gcsFilesetSpec = buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec();
    o.integratedSystem = 'foo';
    o.linkedResource = 'foo';
    o.name = 'foo';
    o.schema = buildGoogleCloudDatacatalogV1beta1Schema();
    o.sourceSystemTimestamps =
        buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
    o.type = 'foo';
    o.usageSignal = buildGoogleCloudDatacatalogV1beta1UsageSignal();
    o.userSpecifiedSystem = 'foo';
    o.userSpecifiedType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1Entry--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1Entry(
    api.GoogleCloudDatacatalogV1beta1Entry o) {
  buildCounterGoogleCloudDatacatalogV1beta1Entry++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Entry < 3) {
    checkGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec(
        o.bigqueryDateShardedSpec!);
    checkGoogleCloudDatacatalogV1beta1BigQueryTableSpec(o.bigqueryTableSpec!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(o.gcsFilesetSpec!);
    unittest.expect(
      o.integratedSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkedResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1Schema(o.schema!);
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(
        o.sourceSystemTimestamps!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1UsageSignal(o.usageSignal!);
    unittest.expect(
      o.userSpecifiedSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userSpecifiedType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1Entry--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1EntryGroup = 0;
api.GoogleCloudDatacatalogV1beta1EntryGroup
    buildGoogleCloudDatacatalogV1beta1EntryGroup() {
  final o = api.GoogleCloudDatacatalogV1beta1EntryGroup();
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup++;
  if (buildCounterGoogleCloudDatacatalogV1beta1EntryGroup < 3) {
    o.dataCatalogTimestamps =
        buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1EntryGroup(
    api.GoogleCloudDatacatalogV1beta1EntryGroup o) {
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup++;
  if (buildCounterGoogleCloudDatacatalogV1beta1EntryGroup < 3) {
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(
        o.dataCatalogTimestamps!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>
    buildUnnamed7894() => [
          buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy(),
          buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy(),
        ];

void checkUnnamed7894(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse
    buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse() {
  final o = api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse < 3) {
    o.taxonomies = buildUnnamed7894();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse < 3) {
    checkUnnamed7894(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldType = 0;
api.GoogleCloudDatacatalogV1beta1FieldType
    buildGoogleCloudDatacatalogV1beta1FieldType() {
  final o = api.GoogleCloudDatacatalogV1beta1FieldType();
  buildCounterGoogleCloudDatacatalogV1beta1FieldType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldType < 3) {
    o.enumType = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType();
    o.primitiveType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldType--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1FieldType(
    api.GoogleCloudDatacatalogV1beta1FieldType o) {
  buildCounterGoogleCloudDatacatalogV1beta1FieldType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldType < 3) {
    checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(o.enumType!);
    unittest.expect(
      o.primitiveType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldType--;
}

core.List<api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue>
    buildUnnamed7895() => [
          buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(),
          buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(),
        ];

void checkUnnamed7895(
    core.List<api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(o[0]);
  checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType = 0;
api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType
    buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType() {
  final o = api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType();
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType < 3) {
    o.allowedValues = buildUnnamed7895();
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(
    api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType o) {
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType < 3) {
    checkUnnamed7895(o.allowedValues!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue =
    0;
api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue
    buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue() {
  final o = api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue();
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue < 3) {
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(
    api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue o) {
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec = 0;
api.GoogleCloudDatacatalogV1beta1GcsFileSpec
    buildGoogleCloudDatacatalogV1beta1GcsFileSpec() {
  final o = api.GoogleCloudDatacatalogV1beta1GcsFileSpec();
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec < 3) {
    o.filePath = 'foo';
    o.gcsTimestamps = buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
    o.sizeBytes = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1GcsFileSpec(
    api.GoogleCloudDatacatalogV1beta1GcsFileSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec < 3) {
    unittest.expect(
      o.filePath!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(o.gcsTimestamps!);
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec--;
}

core.List<core.String> buildUnnamed7896() => [
      'foo',
      'foo',
    ];

void checkUnnamed7896(core.List<core.String> o) {
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

core.List<api.GoogleCloudDatacatalogV1beta1GcsFileSpec> buildUnnamed7897() => [
      buildGoogleCloudDatacatalogV1beta1GcsFileSpec(),
      buildGoogleCloudDatacatalogV1beta1GcsFileSpec(),
    ];

void checkUnnamed7897(
    core.List<api.GoogleCloudDatacatalogV1beta1GcsFileSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1GcsFileSpec(o[0]);
  checkGoogleCloudDatacatalogV1beta1GcsFileSpec(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec = 0;
api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec
    buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec() {
  final o = api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec();
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec < 3) {
    o.filePatterns = buildUnnamed7896();
    o.sampleGcsFileSpecs = buildUnnamed7897();
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(
    api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec < 3) {
    checkUnnamed7896(o.filePatterns!);
    checkUnnamed7897(o.sampleGcsFileSpecs!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest = 0;
api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest
    buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest() {
  final o = api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest < 3) {
    o.inlineSource = buildGoogleCloudDatacatalogV1beta1InlineSource();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(
    api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest o) {
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest < 3) {
    checkGoogleCloudDatacatalogV1beta1InlineSource(o.inlineSource!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> buildUnnamed7898() => [
      buildGoogleCloudDatacatalogV1beta1Taxonomy(),
      buildGoogleCloudDatacatalogV1beta1Taxonomy(),
    ];

void checkUnnamed7898(core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse
    buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse() {
  final o = api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse < 3) {
    o.taxonomies = buildUnnamed7898();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse < 3) {
    checkUnnamed7898(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>
    buildUnnamed7899() => [
          buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy(),
          buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy(),
        ];

void checkUnnamed7899(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1InlineSource = 0;
api.GoogleCloudDatacatalogV1beta1InlineSource
    buildGoogleCloudDatacatalogV1beta1InlineSource() {
  final o = api.GoogleCloudDatacatalogV1beta1InlineSource();
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource++;
  if (buildCounterGoogleCloudDatacatalogV1beta1InlineSource < 3) {
    o.taxonomies = buildUnnamed7899();
  }
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1InlineSource(
    api.GoogleCloudDatacatalogV1beta1InlineSource o) {
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource++;
  if (buildCounterGoogleCloudDatacatalogV1beta1InlineSource < 3) {
    checkUnnamed7899(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Entry> buildUnnamed7900() => [
      buildGoogleCloudDatacatalogV1beta1Entry(),
      buildGoogleCloudDatacatalogV1beta1Entry(),
    ];

void checkUnnamed7900(core.List<api.GoogleCloudDatacatalogV1beta1Entry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Entry(o[0]);
  checkGoogleCloudDatacatalogV1beta1Entry(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListEntriesResponse
    buildGoogleCloudDatacatalogV1beta1ListEntriesResponse() {
  final o = api.GoogleCloudDatacatalogV1beta1ListEntriesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse < 3) {
    o.entries = buildUnnamed7900();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(
    api.GoogleCloudDatacatalogV1beta1ListEntriesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse < 3) {
    checkUnnamed7900(o.entries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1EntryGroup> buildUnnamed7901() => [
      buildGoogleCloudDatacatalogV1beta1EntryGroup(),
      buildGoogleCloudDatacatalogV1beta1EntryGroup(),
    ];

void checkUnnamed7901(
    core.List<api.GoogleCloudDatacatalogV1beta1EntryGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1EntryGroup(o[0]);
  checkGoogleCloudDatacatalogV1beta1EntryGroup(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse
    buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse() {
  final o = api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse < 3) {
    o.entryGroups = buildUnnamed7901();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(
    api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse < 3) {
    checkUnnamed7901(o.entryGroups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1PolicyTag> buildUnnamed7902() => [
      buildGoogleCloudDatacatalogV1beta1PolicyTag(),
      buildGoogleCloudDatacatalogV1beta1PolicyTag(),
    ];

void checkUnnamed7902(core.List<api.GoogleCloudDatacatalogV1beta1PolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1PolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1beta1PolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse
    buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse() {
  final o = api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.policyTags = buildUnnamed7902();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(
    api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7902(o.policyTags!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Tag> buildUnnamed7903() => [
      buildGoogleCloudDatacatalogV1beta1Tag(),
      buildGoogleCloudDatacatalogV1beta1Tag(),
    ];

void checkUnnamed7903(core.List<api.GoogleCloudDatacatalogV1beta1Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Tag(o[0]);
  checkGoogleCloudDatacatalogV1beta1Tag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListTagsResponse
    buildGoogleCloudDatacatalogV1beta1ListTagsResponse() {
  final o = api.GoogleCloudDatacatalogV1beta1ListTagsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tags = buildUnnamed7903();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListTagsResponse(
    api.GoogleCloudDatacatalogV1beta1ListTagsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7903(o.tags!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> buildUnnamed7904() => [
      buildGoogleCloudDatacatalogV1beta1Taxonomy(),
      buildGoogleCloudDatacatalogV1beta1Taxonomy(),
    ];

void checkUnnamed7904(core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse
    buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse() {
  final o = api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse < 3) {
    o.nextPageToken = 'foo';
    o.taxonomies = buildUnnamed7904();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7904(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse--;
}

core.List<core.String> buildUnnamed7905() => [
      'foo',
      'foo',
    ];

void checkUnnamed7905(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatacatalogV1beta1PolicyTag = 0;
api.GoogleCloudDatacatalogV1beta1PolicyTag
    buildGoogleCloudDatacatalogV1beta1PolicyTag() {
  final o = api.GoogleCloudDatacatalogV1beta1PolicyTag();
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1PolicyTag < 3) {
    o.childPolicyTags = buildUnnamed7905();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.parentPolicyTag = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1PolicyTag(
    api.GoogleCloudDatacatalogV1beta1PolicyTag o) {
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1PolicyTag < 3) {
    checkUnnamed7905(o.childPolicyTags!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentPolicyTag!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag--;
}

core.int
    buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest =
    0;
api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest
    buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest() {
  final o =
      api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest();
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest <
      3) {
    o.newEnumValueDisplayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest(
    api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest o) {
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest <
      3) {
    unittest.expect(
      o.newEnumValueDisplayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest--;
}

core.int
    buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest = 0;
api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
    buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest() {
  final o = api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest <
      3) {
    o.newTagTemplateFieldId = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(
    api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest o) {
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest <
      3) {
    unittest.expect(
      o.newTagTemplateFieldId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest--;
}

core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> buildUnnamed7906() => [
      buildGoogleCloudDatacatalogV1beta1ColumnSchema(),
      buildGoogleCloudDatacatalogV1beta1ColumnSchema(),
    ];

void checkUnnamed7906(
    core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[0]);
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Schema = 0;
api.GoogleCloudDatacatalogV1beta1Schema
    buildGoogleCloudDatacatalogV1beta1Schema() {
  final o = api.GoogleCloudDatacatalogV1beta1Schema();
  buildCounterGoogleCloudDatacatalogV1beta1Schema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Schema < 3) {
    o.columns = buildUnnamed7906();
  }
  buildCounterGoogleCloudDatacatalogV1beta1Schema--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1Schema(
    api.GoogleCloudDatacatalogV1beta1Schema o) {
  buildCounterGoogleCloudDatacatalogV1beta1Schema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Schema < 3) {
    checkUnnamed7906(o.columns!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1Schema--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest
    buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest() {
  final o = api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest < 3) {
    o.orderBy = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = 'foo';
    o.scope = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest < 3) {
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
      o.query!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(o.scope!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest--;
}

core.List<core.String> buildUnnamed7907() => [
      'foo',
      'foo',
    ];

void checkUnnamed7907(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7908() => [
      'foo',
      'foo',
    ];

void checkUnnamed7908(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7909() => [
      'foo',
      'foo',
    ];

void checkUnnamed7909(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope
    buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope() {
  final o = api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope < 3) {
    o.includeGcpPublicDatasets = true;
    o.includeOrgIds = buildUnnamed7907();
    o.includeProjectIds = buildUnnamed7908();
    o.restrictedLocations = buildUnnamed7909();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope < 3) {
    unittest.expect(o.includeGcpPublicDatasets!, unittest.isTrue);
    checkUnnamed7907(o.includeOrgIds!);
    checkUnnamed7908(o.includeProjectIds!);
    checkUnnamed7909(o.restrictedLocations!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SearchCatalogResult>
    buildUnnamed7910() => [
          buildGoogleCloudDatacatalogV1beta1SearchCatalogResult(),
          buildGoogleCloudDatacatalogV1beta1SearchCatalogResult(),
        ];

void checkUnnamed7910(
    core.List<api.GoogleCloudDatacatalogV1beta1SearchCatalogResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(o[0]);
  checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(o[1]);
}

core.List<core.String> buildUnnamed7911() => [
      'foo',
      'foo',
    ];

void checkUnnamed7911(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse
    buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse() {
  final o = api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed7910();
    o.unreachable = buildUnnamed7911();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7910(o.results!);
    checkUnnamed7911(o.unreachable!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogResult
    buildGoogleCloudDatacatalogV1beta1SearchCatalogResult() {
  final o = api.GoogleCloudDatacatalogV1beta1SearchCatalogResult();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult < 3) {
    o.linkedResource = 'foo';
    o.modifyTime = 'foo';
    o.relativeResourceName = 'foo';
    o.searchResultSubtype = 'foo';
    o.searchResultType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogResult o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult < 3) {
    unittest.expect(
      o.linkedResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modifyTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchResultSubtype!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchResultType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>
    buildUnnamed7912() => [
          buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag(),
          buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag(),
        ];

void checkUnnamed7912(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag = 0;
api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag
    buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag() {
  final o = api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag();
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag < 3) {
    o.childPolicyTags = buildUnnamed7912();
    o.description = 'foo';
    o.displayName = 'foo';
    o.policyTag = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(
    api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag o) {
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag < 3) {
    checkUnnamed7912(o.childPolicyTags!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policyTag!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag--;
}

core.List<core.String> buildUnnamed7913() => [
      'foo',
      'foo',
    ];

void checkUnnamed7913(core.List<core.String> o) {
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

core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>
    buildUnnamed7914() => [
          buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag(),
          buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag(),
        ];

void checkUnnamed7914(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy = 0;
api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy
    buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy() {
  final o = api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy();
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy < 3) {
    o.activatedPolicyTypes = buildUnnamed7913();
    o.description = 'foo';
    o.displayName = 'foo';
    o.policyTags = buildUnnamed7914();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(
    api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy o) {
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy < 3) {
    checkUnnamed7913(o.activatedPolicyTypes!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed7914(o.policyTags!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps = 0;
api.GoogleCloudDatacatalogV1beta1SystemTimestamps
    buildGoogleCloudDatacatalogV1beta1SystemTimestamps() {
  final o = api.GoogleCloudDatacatalogV1beta1SystemTimestamps();
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps < 3) {
    o.createTime = 'foo';
    o.expireTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SystemTimestamps(
    api.GoogleCloudDatacatalogV1beta1SystemTimestamps o) {
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TableSpec = 0;
api.GoogleCloudDatacatalogV1beta1TableSpec
    buildGoogleCloudDatacatalogV1beta1TableSpec() {
  final o = api.GoogleCloudDatacatalogV1beta1TableSpec();
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TableSpec < 3) {
    o.groupedEntry = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TableSpec(
    api.GoogleCloudDatacatalogV1beta1TableSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TableSpec < 3) {
    unittest.expect(
      o.groupedEntry!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagField>
    buildUnnamed7915() => {
          'x': buildGoogleCloudDatacatalogV1beta1TagField(),
          'y': buildGoogleCloudDatacatalogV1beta1TagField(),
        };

void checkUnnamed7915(
    core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1TagField(o['x']!);
  checkGoogleCloudDatacatalogV1beta1TagField(o['y']!);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Tag = 0;
api.GoogleCloudDatacatalogV1beta1Tag buildGoogleCloudDatacatalogV1beta1Tag() {
  final o = api.GoogleCloudDatacatalogV1beta1Tag();
  buildCounterGoogleCloudDatacatalogV1beta1Tag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Tag < 3) {
    o.column = 'foo';
    o.fields = buildUnnamed7915();
    o.name = 'foo';
    o.template = 'foo';
    o.templateDisplayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1Tag--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1Tag(
    api.GoogleCloudDatacatalogV1beta1Tag o) {
  buildCounterGoogleCloudDatacatalogV1beta1Tag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Tag < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    checkUnnamed7915(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.template!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateDisplayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1Tag--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagField = 0;
api.GoogleCloudDatacatalogV1beta1TagField
    buildGoogleCloudDatacatalogV1beta1TagField() {
  final o = api.GoogleCloudDatacatalogV1beta1TagField();
  buildCounterGoogleCloudDatacatalogV1beta1TagField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagField < 3) {
    o.boolValue = true;
    o.displayName = 'foo';
    o.doubleValue = 42.0;
    o.enumValue = buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue();
    o.order = 42;
    o.stringValue = 'foo';
    o.timestampValue = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagField--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TagField(
    api.GoogleCloudDatacatalogV1beta1TagField o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagField < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDatacatalogV1beta1TagFieldEnumValue(o.enumValue!);
    unittest.expect(
      o.order!,
      unittest.equals(42),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagField--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue = 0;
api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue
    buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue() {
  final o = api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue();
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue < 3) {
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TagFieldEnumValue(
    api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagTemplateField>
    buildUnnamed7916() => {
          'x': buildGoogleCloudDatacatalogV1beta1TagTemplateField(),
          'y': buildGoogleCloudDatacatalogV1beta1TagTemplateField(),
        };

void checkUnnamed7916(
    core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagTemplateField>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1TagTemplateField(o['x']!);
  checkGoogleCloudDatacatalogV1beta1TagTemplateField(o['y']!);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagTemplate = 0;
api.GoogleCloudDatacatalogV1beta1TagTemplate
    buildGoogleCloudDatacatalogV1beta1TagTemplate() {
  final o = api.GoogleCloudDatacatalogV1beta1TagTemplate();
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplate < 3) {
    o.displayName = 'foo';
    o.fields = buildUnnamed7916();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TagTemplate(
    api.GoogleCloudDatacatalogV1beta1TagTemplate o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplate < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed7916(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField = 0;
api.GoogleCloudDatacatalogV1beta1TagTemplateField
    buildGoogleCloudDatacatalogV1beta1TagTemplateField() {
  final o = api.GoogleCloudDatacatalogV1beta1TagTemplateField();
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.isRequired = true;
    o.name = 'foo';
    o.order = 42;
    o.type = buildGoogleCloudDatacatalogV1beta1FieldType();
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TagTemplateField(
    api.GoogleCloudDatacatalogV1beta1TagTemplateField o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isRequired!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.order!,
      unittest.equals(42),
    );
    checkGoogleCloudDatacatalogV1beta1FieldType(o.type!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField--;
}

core.List<core.String> buildUnnamed7917() => [
      'foo',
      'foo',
    ];

void checkUnnamed7917(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatacatalogV1beta1Taxonomy = 0;
api.GoogleCloudDatacatalogV1beta1Taxonomy
    buildGoogleCloudDatacatalogV1beta1Taxonomy() {
  final o = api.GoogleCloudDatacatalogV1beta1Taxonomy();
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Taxonomy < 3) {
    o.activatedPolicyTypes = buildUnnamed7917();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.policyTagCount = 42;
    o.taxonomyTimestamps = buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
  }
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1Taxonomy(
    api.GoogleCloudDatacatalogV1beta1Taxonomy o) {
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Taxonomy < 3) {
    checkUnnamed7917(o.activatedPolicyTypes!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policyTagCount!,
      unittest.equals(42),
    );
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(o.taxonomyTimestamps!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1beta1UsageStats>
    buildUnnamed7918() => {
          'x': buildGoogleCloudDatacatalogV1beta1UsageStats(),
          'y': buildGoogleCloudDatacatalogV1beta1UsageStats(),
        };

void checkUnnamed7918(
    core.Map<core.String, api.GoogleCloudDatacatalogV1beta1UsageStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1UsageStats(o['x']!);
  checkGoogleCloudDatacatalogV1beta1UsageStats(o['y']!);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1UsageSignal = 0;
api.GoogleCloudDatacatalogV1beta1UsageSignal
    buildGoogleCloudDatacatalogV1beta1UsageSignal() {
  final o = api.GoogleCloudDatacatalogV1beta1UsageSignal();
  buildCounterGoogleCloudDatacatalogV1beta1UsageSignal++;
  if (buildCounterGoogleCloudDatacatalogV1beta1UsageSignal < 3) {
    o.updateTime = 'foo';
    o.usageWithinTimeRange = buildUnnamed7918();
  }
  buildCounterGoogleCloudDatacatalogV1beta1UsageSignal--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1UsageSignal(
    api.GoogleCloudDatacatalogV1beta1UsageSignal o) {
  buildCounterGoogleCloudDatacatalogV1beta1UsageSignal++;
  if (buildCounterGoogleCloudDatacatalogV1beta1UsageSignal < 3) {
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7918(o.usageWithinTimeRange!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1UsageSignal--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1UsageStats = 0;
api.GoogleCloudDatacatalogV1beta1UsageStats
    buildGoogleCloudDatacatalogV1beta1UsageStats() {
  final o = api.GoogleCloudDatacatalogV1beta1UsageStats();
  buildCounterGoogleCloudDatacatalogV1beta1UsageStats++;
  if (buildCounterGoogleCloudDatacatalogV1beta1UsageStats < 3) {
    o.totalCancellations = 42.0;
    o.totalCompletions = 42.0;
    o.totalExecutionTimeForCompletionsMillis = 42.0;
    o.totalFailures = 42.0;
  }
  buildCounterGoogleCloudDatacatalogV1beta1UsageStats--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1UsageStats(
    api.GoogleCloudDatacatalogV1beta1UsageStats o) {
  buildCounterGoogleCloudDatacatalogV1beta1UsageStats++;
  if (buildCounterGoogleCloudDatacatalogV1beta1UsageStats < 3) {
    unittest.expect(
      o.totalCancellations!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalCompletions!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalExecutionTimeForCompletionsMillis!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalFailures!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1UsageStats--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ViewSpec = 0;
api.GoogleCloudDatacatalogV1beta1ViewSpec
    buildGoogleCloudDatacatalogV1beta1ViewSpec() {
  final o = api.GoogleCloudDatacatalogV1beta1ViewSpec();
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ViewSpec < 3) {
    o.viewQuery = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ViewSpec(
    api.GoogleCloudDatacatalogV1beta1ViewSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ViewSpec < 3) {
    unittest.expect(
      o.viewQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec--;
}

core.List<api.Binding> buildUnnamed7919() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed7919(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed7919();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed7919(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed7920() => [
      'foo',
      'foo',
    ];

void checkUnnamed7920(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed7920();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed7920(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed7921() => [
      'foo',
      'foo',
    ];

void checkUnnamed7921(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed7921();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed7921(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed7922() => [
      'foo',
      'foo',
    ];

void checkUnnamed7922(core.List<core.String> o) {
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
  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
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

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPolicyOptions(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1BigQueryTableSpec',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1BigQueryTableSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ColumnSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1ColumnSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1ColumnSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ColumnSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Entry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1Entry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1Entry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1Entry(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1EntryGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1EntryGroup(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1FieldType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1FieldType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1FieldType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1FieldType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1FieldTypeEnumType',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1GcsFileSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1GcsFileSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1GcsFileSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1GcsFileSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1GcsFilesetSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1InlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1InlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1InlineSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1InlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ListEntriesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1ListEntriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1ListEntriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ListTagsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1ListTagsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1ListTagsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ListTagsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1PolicyTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1PolicyTag(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1Schema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1Schema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1Schema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1SearchCatalogResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1SearchCatalogResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SerializedPolicyTag',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SerializedTaxonomy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SystemTimestamps',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1SystemTimestamps.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SystemTimestamps(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TableSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1TableSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1TableSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1TableSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Tag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1Tag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1Tag(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1TagField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1TagField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1TagField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagFieldEnumValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1TagFieldEnumValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1TagTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagTemplateField',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Taxonomy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1Taxonomy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1UsageSignal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1UsageSignal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1UsageSignal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1UsageSignal(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1UsageStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1UsageStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1UsageStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1UsageStats(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ViewSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1beta1ViewSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1beta1ViewSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ViewSpec(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('resource-CatalogResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).catalog;
      final arg_request =
          buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(obj);

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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('v1beta1/catalog:search'),
        );
        pathOffset += 22;

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
            .encode(buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_request, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(
          response as api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse);
    });
  });

  unittest.group('resource-EntriesResource', () {
    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).entries;
      final arg_linkedResource = 'foo';
      final arg_sqlResource = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('v1beta1/entries:lookup'),
        );
        pathOffset += 22;

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
          queryMap['linkedResource']!.first,
          unittest.equals(arg_linkedResource),
        );
        unittest.expect(
          queryMap['sqlResource']!.first,
          unittest.equals(arg_sqlResource),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(
          linkedResource: arg_linkedResource,
          sqlResource: arg_sqlResource,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Entry(
          response as api.GoogleCloudDatacatalogV1beta1Entry);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      final arg_request = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      final arg_parent = 'foo';
      final arg_entryGroupId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1EntryGroup(obj);

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
          unittest.equals('v1beta1/'),
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
          queryMap['entryGroupId']!.first,
          unittest.equals(arg_entryGroupId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          entryGroupId: arg_entryGroupId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1EntryGroup(
          response as api.GoogleCloudDatacatalogV1beta1EntryGroup);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      final arg_name = 'foo';
      final arg_force = true;
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
          unittest.equals('v1beta1/'),
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
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
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      final arg_name = 'foo';
      final arg_readMask = 'foo';
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
          unittest.equals('v1beta1/'),
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, readMask: arg_readMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1EntryGroup(
          response as api.GoogleCloudDatacatalogV1beta1EntryGroup);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups;
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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      final arg_request = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1EntryGroup(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1EntryGroup(
          response as api.GoogleCloudDatacatalogV1beta1EntryGroup);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsEntriesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      final arg_request = buildGoogleCloudDatacatalogV1beta1Entry();
      final arg_parent = 'foo';
      final arg_entryId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1Entry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Entry(obj);

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
          unittest.equals('v1beta1/'),
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
          queryMap['entryId']!.first,
          unittest.equals(arg_entryId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          entryId: arg_entryId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Entry(
          response as api.GoogleCloudDatacatalogV1beta1Entry);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Entry(
          response as api.GoogleCloudDatacatalogV1beta1Entry);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          unittest.equals('v1beta1/'),
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListEntriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListEntriesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      final arg_request = buildGoogleCloudDatacatalogV1beta1Entry();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1Entry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Entry(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Entry(
          response as api.GoogleCloudDatacatalogV1beta1Entry);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsEntriesTagsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries.tags;
      final arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Tag(
          response as api.GoogleCloudDatacatalogV1beta1Tag);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries.tags;
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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries.tags;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatacatalogV1beta1ListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListTagsResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListTagsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries.tags;
      final arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Tag(
          response as api.GoogleCloudDatacatalogV1beta1Tag);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsTagsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups.tags;
      final arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Tag(
          response as api.GoogleCloudDatacatalogV1beta1Tag);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups.tags;
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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups.tags;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatacatalogV1beta1ListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListTagsResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListTagsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups.tags;
      final arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Tag(
          response as api.GoogleCloudDatacatalogV1beta1Tag);
    });
  });

  unittest.group('resource-ProjectsLocationsTagTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      final arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      final arg_parent = 'foo';
      final arg_tagTemplateId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1TagTemplate(obj);

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
          unittest.equals('v1beta1/'),
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
          queryMap['tagTemplateId']!.first,
          unittest.equals(arg_tagTemplateId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          tagTemplateId: arg_tagTemplateId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplate(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      final arg_name = 'foo';
      final arg_force = true;
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
          unittest.equals('v1beta1/'),
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
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
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplate(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplate);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      final arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1TagTemplate(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplate(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplate);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTagTemplatesFieldsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.tagTemplates.fields;
      final arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      final arg_parent = 'foo';
      final arg_tagTemplateFieldId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(obj);

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
          unittest.equals('v1beta1/'),
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
          queryMap['tagTemplateFieldId']!.first,
          unittest.equals(arg_tagTemplateFieldId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          tagTemplateFieldId: arg_tagTemplateFieldId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.tagTemplates.fields;
      final arg_name = 'foo';
      final arg_force = true;
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
          unittest.equals('v1beta1/'),
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
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
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.tagTemplates.fields;
      final arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
    });

    unittest.test('method--rename', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.tagTemplates.fields;
      final arg_request =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(obj);

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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rename(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsTagTemplatesFieldsEnumValuesResource', () {
    unittest.test('method--rename', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock)
          .projects
          .locations
          .tagTemplates
          .fields
          .enumValues;
      final arg_request =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest(
            obj);

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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rename(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
    });
  });

  unittest.group('resource-ProjectsLocationsTaxonomiesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_request = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Taxonomy(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Taxonomy(
          response as api.GoogleCloudDatacatalogV1beta1Taxonomy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_parent = 'foo';
      final arg_serializedTaxonomies = true;
      final arg_taxonomies = buildUnnamed7922();
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
          unittest.equals('v1beta1/'),
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
          queryMap['serializedTaxonomies']!.first,
          unittest.equals('$arg_serializedTaxonomies'),
        );
        unittest.expect(
          queryMap['taxonomies']!,
          unittest.equals(arg_taxonomies),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.export(arg_parent,
          serializedTaxonomies: arg_serializedTaxonomies,
          taxonomies: arg_taxonomies,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(response
          as api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Taxonomy(
          response as api.GoogleCloudDatacatalogV1beta1Taxonomy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_request =
          buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(obj);

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
          unittest.equals('v1beta1/'),
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
            buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(response
          as api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_request = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Taxonomy(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Taxonomy(
          response as api.GoogleCloudDatacatalogV1beta1Taxonomy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTaxonomiesPolicyTagsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      final arg_request = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1PolicyTag(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1PolicyTag(
          response as api.GoogleCloudDatacatalogV1beta1PolicyTag);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1PolicyTag(
          response as api.GoogleCloudDatacatalogV1beta1PolicyTag);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      final arg_request = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1PolicyTag(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1PolicyTag(
          response as api.GoogleCloudDatacatalogV1beta1PolicyTag);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });
}
