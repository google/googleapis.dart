// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis_beta.datacatalog.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/datacatalog/v1beta1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<core.String> buildUnnamed5843() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5843(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.bindingId = 'foo';
    o.condition = buildExpr();
    o.members = buildUnnamed5843();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkExpr(o.condition);
    checkUnnamed5843(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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
  var o = api.Expr();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  var o = api.GetIamPolicyRequest();
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
    checkGetPolicyOptions(o.options);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  var o = api.GetPolicyOptions();
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
    unittest.expect(o.requestedPolicyVersion, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec = 0;
api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec
    buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
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
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.shardCount, unittest.equals('foo'));
    unittest.expect(o.tablePrefix, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec = 0;
api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec
    buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec();
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
    unittest.expect(o.tableSourceType, unittest.equals('foo'));
    checkGoogleCloudDatacatalogV1beta1TableSpec(o.tableSpec);
    checkGoogleCloudDatacatalogV1beta1ViewSpec(o.viewSpec);
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec--;
}

core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> buildUnnamed5844() {
  var o = <api.GoogleCloudDatacatalogV1beta1ColumnSchema>[];
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  return o;
}

void checkUnnamed5844(
    core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[0]);
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema = 0;
api.GoogleCloudDatacatalogV1beta1ColumnSchema
    buildGoogleCloudDatacatalogV1beta1ColumnSchema() {
  var o = api.GoogleCloudDatacatalogV1beta1ColumnSchema();
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema < 3) {
    o.column = 'foo';
    o.description = 'foo';
    o.mode = 'foo';
    o.subcolumns = buildUnnamed5844();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ColumnSchema(
    api.GoogleCloudDatacatalogV1beta1ColumnSchema o) {
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema < 3) {
    unittest.expect(o.column, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.mode, unittest.equals('foo'));
    checkUnnamed5844(o.subcolumns);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Entry = 0;
api.GoogleCloudDatacatalogV1beta1Entry
    buildGoogleCloudDatacatalogV1beta1Entry() {
  var o = api.GoogleCloudDatacatalogV1beta1Entry();
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
        o.bigqueryDateShardedSpec);
    checkGoogleCloudDatacatalogV1beta1BigQueryTableSpec(o.bigqueryTableSpec);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(o.gcsFilesetSpec);
    unittest.expect(o.integratedSystem, unittest.equals('foo'));
    unittest.expect(o.linkedResource, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudDatacatalogV1beta1Schema(o.schema);
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(
        o.sourceSystemTimestamps);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.userSpecifiedSystem, unittest.equals('foo'));
    unittest.expect(o.userSpecifiedType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1Entry--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1EntryGroup = 0;
api.GoogleCloudDatacatalogV1beta1EntryGroup
    buildGoogleCloudDatacatalogV1beta1EntryGroup() {
  var o = api.GoogleCloudDatacatalogV1beta1EntryGroup();
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
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(o.dataCatalogTimestamps);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>
    buildUnnamed5845() {
  var o = <api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>[];
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  return o;
}

void checkUnnamed5845(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse
    buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse < 3) {
    o.taxonomies = buildUnnamed5845();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse < 3) {
    checkUnnamed5845(o.taxonomies);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldType = 0;
api.GoogleCloudDatacatalogV1beta1FieldType
    buildGoogleCloudDatacatalogV1beta1FieldType() {
  var o = api.GoogleCloudDatacatalogV1beta1FieldType();
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
    checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(o.enumType);
    unittest.expect(o.primitiveType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldType--;
}

core.List<api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue>
    buildUnnamed5846() {
  var o = <api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue>[];
  o.add(buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue());
  o.add(buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue());
  return o;
}

void checkUnnamed5846(
    core.List<api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(o[0]);
  checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType = 0;
api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType
    buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType() {
  var o = api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType();
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType < 3) {
    o.allowedValues = buildUnnamed5846();
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(
    api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType o) {
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType < 3) {
    checkUnnamed5846(o.allowedValues);
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue =
    0;
api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue
    buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue() {
  var o = api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec = 0;
api.GoogleCloudDatacatalogV1beta1GcsFileSpec
    buildGoogleCloudDatacatalogV1beta1GcsFileSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1GcsFileSpec();
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
    unittest.expect(o.filePath, unittest.equals('foo'));
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(o.gcsTimestamps);
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec--;
}

core.List<core.String> buildUnnamed5847() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5847(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDatacatalogV1beta1GcsFileSpec> buildUnnamed5848() {
  var o = <api.GoogleCloudDatacatalogV1beta1GcsFileSpec>[];
  o.add(buildGoogleCloudDatacatalogV1beta1GcsFileSpec());
  o.add(buildGoogleCloudDatacatalogV1beta1GcsFileSpec());
  return o;
}

void checkUnnamed5848(
    core.List<api.GoogleCloudDatacatalogV1beta1GcsFileSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1GcsFileSpec(o[0]);
  checkGoogleCloudDatacatalogV1beta1GcsFileSpec(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec = 0;
api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec
    buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec();
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec < 3) {
    o.filePatterns = buildUnnamed5847();
    o.sampleGcsFileSpecs = buildUnnamed5848();
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(
    api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec < 3) {
    checkUnnamed5847(o.filePatterns);
    checkUnnamed5848(o.sampleGcsFileSpecs);
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest = 0;
api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest
    buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest() {
  var o = api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
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
    checkGoogleCloudDatacatalogV1beta1InlineSource(o.inlineSource);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> buildUnnamed5849() {
  var o = <api.GoogleCloudDatacatalogV1beta1Taxonomy>[];
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  return o;
}

void checkUnnamed5849(core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse
    buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse < 3) {
    o.taxonomies = buildUnnamed5849();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse < 3) {
    checkUnnamed5849(o.taxonomies);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>
    buildUnnamed5850() {
  var o = <api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>[];
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  return o;
}

void checkUnnamed5850(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1InlineSource = 0;
api.GoogleCloudDatacatalogV1beta1InlineSource
    buildGoogleCloudDatacatalogV1beta1InlineSource() {
  var o = api.GoogleCloudDatacatalogV1beta1InlineSource();
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource++;
  if (buildCounterGoogleCloudDatacatalogV1beta1InlineSource < 3) {
    o.taxonomies = buildUnnamed5850();
  }
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1InlineSource(
    api.GoogleCloudDatacatalogV1beta1InlineSource o) {
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource++;
  if (buildCounterGoogleCloudDatacatalogV1beta1InlineSource < 3) {
    checkUnnamed5850(o.taxonomies);
  }
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Entry> buildUnnamed5851() {
  var o = <api.GoogleCloudDatacatalogV1beta1Entry>[];
  o.add(buildGoogleCloudDatacatalogV1beta1Entry());
  o.add(buildGoogleCloudDatacatalogV1beta1Entry());
  return o;
}

void checkUnnamed5851(core.List<api.GoogleCloudDatacatalogV1beta1Entry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Entry(o[0]);
  checkGoogleCloudDatacatalogV1beta1Entry(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListEntriesResponse
    buildGoogleCloudDatacatalogV1beta1ListEntriesResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ListEntriesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse < 3) {
    o.entries = buildUnnamed5851();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(
    api.GoogleCloudDatacatalogV1beta1ListEntriesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse < 3) {
    checkUnnamed5851(o.entries);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1EntryGroup> buildUnnamed5852() {
  var o = <api.GoogleCloudDatacatalogV1beta1EntryGroup>[];
  o.add(buildGoogleCloudDatacatalogV1beta1EntryGroup());
  o.add(buildGoogleCloudDatacatalogV1beta1EntryGroup());
  return o;
}

void checkUnnamed5852(
    core.List<api.GoogleCloudDatacatalogV1beta1EntryGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1EntryGroup(o[0]);
  checkGoogleCloudDatacatalogV1beta1EntryGroup(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse
    buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse < 3) {
    o.entryGroups = buildUnnamed5852();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(
    api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse < 3) {
    checkUnnamed5852(o.entryGroups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1PolicyTag> buildUnnamed5853() {
  var o = <api.GoogleCloudDatacatalogV1beta1PolicyTag>[];
  o.add(buildGoogleCloudDatacatalogV1beta1PolicyTag());
  o.add(buildGoogleCloudDatacatalogV1beta1PolicyTag());
  return o;
}

void checkUnnamed5853(core.List<api.GoogleCloudDatacatalogV1beta1PolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1PolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1beta1PolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse
    buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.policyTags = buildUnnamed5853();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(
    api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5853(o.policyTags);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Tag> buildUnnamed5854() {
  var o = <api.GoogleCloudDatacatalogV1beta1Tag>[];
  o.add(buildGoogleCloudDatacatalogV1beta1Tag());
  o.add(buildGoogleCloudDatacatalogV1beta1Tag());
  return o;
}

void checkUnnamed5854(core.List<api.GoogleCloudDatacatalogV1beta1Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Tag(o[0]);
  checkGoogleCloudDatacatalogV1beta1Tag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListTagsResponse
    buildGoogleCloudDatacatalogV1beta1ListTagsResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ListTagsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tags = buildUnnamed5854();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListTagsResponse(
    api.GoogleCloudDatacatalogV1beta1ListTagsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5854(o.tags);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> buildUnnamed5855() {
  var o = <api.GoogleCloudDatacatalogV1beta1Taxonomy>[];
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  return o;
}

void checkUnnamed5855(core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse
    buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse < 3) {
    o.nextPageToken = 'foo';
    o.taxonomies = buildUnnamed5855();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5855(o.taxonomies);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse--;
}

core.List<core.String> buildUnnamed5856() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5856(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatacatalogV1beta1PolicyTag = 0;
api.GoogleCloudDatacatalogV1beta1PolicyTag
    buildGoogleCloudDatacatalogV1beta1PolicyTag() {
  var o = api.GoogleCloudDatacatalogV1beta1PolicyTag();
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1PolicyTag < 3) {
    o.childPolicyTags = buildUnnamed5856();
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
    checkUnnamed5856(o.childPolicyTags);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentPolicyTag, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag--;
}

core.int
    buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest =
    0;
api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest
    buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest() {
  var o =
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
    unittest.expect(o.newEnumValueDisplayName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest--;
}

core.int
    buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest = 0;
api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
    buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest() {
  var o = api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
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
    unittest.expect(o.newTagTemplateFieldId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest--;
}

core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> buildUnnamed5857() {
  var o = <api.GoogleCloudDatacatalogV1beta1ColumnSchema>[];
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  return o;
}

void checkUnnamed5857(
    core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[0]);
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Schema = 0;
api.GoogleCloudDatacatalogV1beta1Schema
    buildGoogleCloudDatacatalogV1beta1Schema() {
  var o = api.GoogleCloudDatacatalogV1beta1Schema();
  buildCounterGoogleCloudDatacatalogV1beta1Schema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Schema < 3) {
    o.columns = buildUnnamed5857();
  }
  buildCounterGoogleCloudDatacatalogV1beta1Schema--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1Schema(
    api.GoogleCloudDatacatalogV1beta1Schema o) {
  buildCounterGoogleCloudDatacatalogV1beta1Schema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Schema < 3) {
    checkUnnamed5857(o.columns);
  }
  buildCounterGoogleCloudDatacatalogV1beta1Schema--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest
    buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest() {
  var o = api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest();
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
    unittest.expect(o.orderBy, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(o.scope);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest--;
}

core.List<core.String> buildUnnamed5858() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5858(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5859() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5859(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5860() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5860(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope
    buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope() {
  var o = api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope < 3) {
    o.includeGcpPublicDatasets = true;
    o.includeOrgIds = buildUnnamed5858();
    o.includeProjectIds = buildUnnamed5859();
    o.restrictedLocations = buildUnnamed5860();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope < 3) {
    unittest.expect(o.includeGcpPublicDatasets, unittest.isTrue);
    checkUnnamed5858(o.includeOrgIds);
    checkUnnamed5859(o.includeProjectIds);
    checkUnnamed5860(o.restrictedLocations);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SearchCatalogResult>
    buildUnnamed5861() {
  var o = <api.GoogleCloudDatacatalogV1beta1SearchCatalogResult>[];
  o.add(buildGoogleCloudDatacatalogV1beta1SearchCatalogResult());
  o.add(buildGoogleCloudDatacatalogV1beta1SearchCatalogResult());
  return o;
}

void checkUnnamed5861(
    core.List<api.GoogleCloudDatacatalogV1beta1SearchCatalogResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(o[0]);
  checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(o[1]);
}

core.List<core.String> buildUnnamed5862() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5862(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse
    buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed5861();
    o.unreachable = buildUnnamed5862();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5861(o.results);
    checkUnnamed5862(o.unreachable);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogResult
    buildGoogleCloudDatacatalogV1beta1SearchCatalogResult() {
  var o = api.GoogleCloudDatacatalogV1beta1SearchCatalogResult();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult < 3) {
    o.linkedResource = 'foo';
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
    unittest.expect(o.linkedResource, unittest.equals('foo'));
    unittest.expect(o.relativeResourceName, unittest.equals('foo'));
    unittest.expect(o.searchResultSubtype, unittest.equals('foo'));
    unittest.expect(o.searchResultType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>
    buildUnnamed5863() {
  var o = <api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>[];
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  return o;
}

void checkUnnamed5863(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag = 0;
api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag
    buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag() {
  var o = api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag();
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag < 3) {
    o.childPolicyTags = buildUnnamed5863();
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
    checkUnnamed5863(o.childPolicyTags);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.policyTag, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>
    buildUnnamed5864() {
  var o = <api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>[];
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  return o;
}

void checkUnnamed5864(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy = 0;
api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy
    buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy() {
  var o = api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy();
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.policyTags = buildUnnamed5864();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(
    api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy o) {
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5864(o.policyTags);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps = 0;
api.GoogleCloudDatacatalogV1beta1SystemTimestamps
    buildGoogleCloudDatacatalogV1beta1SystemTimestamps() {
  var o = api.GoogleCloudDatacatalogV1beta1SystemTimestamps();
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
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TableSpec = 0;
api.GoogleCloudDatacatalogV1beta1TableSpec
    buildGoogleCloudDatacatalogV1beta1TableSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1TableSpec();
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
    unittest.expect(o.groupedEntry, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagField>
    buildUnnamed5865() {
  var o = <core.String, api.GoogleCloudDatacatalogV1beta1TagField>{};
  o['x'] = buildGoogleCloudDatacatalogV1beta1TagField();
  o['y'] = buildGoogleCloudDatacatalogV1beta1TagField();
  return o;
}

void checkUnnamed5865(
    core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1TagField(o['x']);
  checkGoogleCloudDatacatalogV1beta1TagField(o['y']);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Tag = 0;
api.GoogleCloudDatacatalogV1beta1Tag buildGoogleCloudDatacatalogV1beta1Tag() {
  var o = api.GoogleCloudDatacatalogV1beta1Tag();
  buildCounterGoogleCloudDatacatalogV1beta1Tag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Tag < 3) {
    o.column = 'foo';
    o.fields = buildUnnamed5865();
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
    unittest.expect(o.column, unittest.equals('foo'));
    checkUnnamed5865(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.template, unittest.equals('foo'));
    unittest.expect(o.templateDisplayName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1Tag--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagField = 0;
api.GoogleCloudDatacatalogV1beta1TagField
    buildGoogleCloudDatacatalogV1beta1TagField() {
  var o = api.GoogleCloudDatacatalogV1beta1TagField();
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
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    checkGoogleCloudDatacatalogV1beta1TagFieldEnumValue(o.enumValue);
    unittest.expect(o.order, unittest.equals(42));
    unittest.expect(o.stringValue, unittest.equals('foo'));
    unittest.expect(o.timestampValue, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagField--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue = 0;
api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue
    buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue() {
  var o = api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagTemplateField>
    buildUnnamed5866() {
  var o = <core.String, api.GoogleCloudDatacatalogV1beta1TagTemplateField>{};
  o['x'] = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
  o['y'] = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
  return o;
}

void checkUnnamed5866(
    core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagTemplateField>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1TagTemplateField(o['x']);
  checkGoogleCloudDatacatalogV1beta1TagTemplateField(o['y']);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagTemplate = 0;
api.GoogleCloudDatacatalogV1beta1TagTemplate
    buildGoogleCloudDatacatalogV1beta1TagTemplate() {
  var o = api.GoogleCloudDatacatalogV1beta1TagTemplate();
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplate < 3) {
    o.displayName = 'foo';
    o.fields = buildUnnamed5866();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TagTemplate(
    api.GoogleCloudDatacatalogV1beta1TagTemplate o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplate < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5866(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField = 0;
api.GoogleCloudDatacatalogV1beta1TagTemplateField
    buildGoogleCloudDatacatalogV1beta1TagTemplateField() {
  var o = api.GoogleCloudDatacatalogV1beta1TagTemplateField();
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField < 3) {
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.isRequired, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.order, unittest.equals(42));
    checkGoogleCloudDatacatalogV1beta1FieldType(o.type);
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField--;
}

core.List<core.String> buildUnnamed5867() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5867(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Taxonomy = 0;
api.GoogleCloudDatacatalogV1beta1Taxonomy
    buildGoogleCloudDatacatalogV1beta1Taxonomy() {
  var o = api.GoogleCloudDatacatalogV1beta1Taxonomy();
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Taxonomy < 3) {
    o.activatedPolicyTypes = buildUnnamed5867();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1Taxonomy(
    api.GoogleCloudDatacatalogV1beta1Taxonomy o) {
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Taxonomy < 3) {
    checkUnnamed5867(o.activatedPolicyTypes);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ViewSpec = 0;
api.GoogleCloudDatacatalogV1beta1ViewSpec
    buildGoogleCloudDatacatalogV1beta1ViewSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1ViewSpec();
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
    unittest.expect(o.viewQuery, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec--;
}

core.List<api.Binding> buildUnnamed5868() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed5868(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed5868();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed5868(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
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
    checkPolicy(o.policy);
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed5869() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5869(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed5869();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed5869(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed5870() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5870(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed5870();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed5870(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed5871() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5871(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetIamPolicyRequest();
      var od = api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetPolicyOptions();
      var od = api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
      var od =
          api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1BigQueryTableSpec',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec();
      var od = api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1BigQueryTableSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ColumnSchema', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1ColumnSchema();
      var od =
          api.GoogleCloudDatacatalogV1beta1ColumnSchema.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1ColumnSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Entry', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1Entry();
      var od = api.GoogleCloudDatacatalogV1beta1Entry.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1Entry(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1EntryGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      var od = api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1EntryGroup(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse();
      var od =
          api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1FieldType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1FieldType();
      var od = api.GoogleCloudDatacatalogV1beta1FieldType.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1FieldType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1FieldTypeEnumType',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType();
      var od = api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue();
      var od =
          api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1GcsFileSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1GcsFileSpec();
      var od =
          api.GoogleCloudDatacatalogV1beta1GcsFileSpec.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1GcsFileSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1GcsFilesetSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec();
      var od =
          api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
      var od =
          api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse();
      var od =
          api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1InlineSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1InlineSource();
      var od =
          api.GoogleCloudDatacatalogV1beta1InlineSource.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1InlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ListEntriesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1ListEntriesResponse();
      var od = api.GoogleCloudDatacatalogV1beta1ListEntriesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse();
      var od =
          api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse();
      var od = api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ListTagsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1ListTagsResponse();
      var od = api.GoogleCloudDatacatalogV1beta1ListTagsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1ListTagsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse();
      var od = api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1PolicyTag', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      var od = api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1PolicyTag(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest();
      var od =
          api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest
              .fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
      var od = api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
          .fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Schema', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1Schema();
      var od = api.GoogleCloudDatacatalogV1beta1Schema.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1Schema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest();
      var od = api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
      var od =
          api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse();
      var od = api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogResult',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogResult();
      var od = api.GoogleCloudDatacatalogV1beta1SearchCatalogResult.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SerializedPolicyTag',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag();
      var od = api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SerializedTaxonomy',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy();
      var od = api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SystemTimestamps',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
      var od = api.GoogleCloudDatacatalogV1beta1SystemTimestamps.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1SystemTimestamps(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TableSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1TableSpec();
      var od = api.GoogleCloudDatacatalogV1beta1TableSpec.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1TableSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Tag', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1Tag();
      var od = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1Tag(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagField', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1TagField();
      var od = api.GoogleCloudDatacatalogV1beta1TagField.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1TagField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagFieldEnumValue',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue();
      var od = api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1TagFieldEnumValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagTemplate', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      var od =
          api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1TagTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagTemplateField',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      var od = api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Taxonomy', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      var od = api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1Taxonomy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ViewSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatacatalogV1beta1ViewSpec();
      var od = api.GoogleCloudDatacatalogV1beta1ViewSpec.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1ViewSpec(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('resource-CatalogResourceApi', () {
    unittest.test('method--search', () {
      var mock = HttpServerMock();
      api.CatalogResourceApi res = api.DatacatalogApi(mock).catalog;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest.fromJson(
                json);
        checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1beta1/catalog:search"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(response);
      })));
    });
  });

  unittest.group('resource-EntriesResourceApi', () {
    unittest.test('method--lookup', () {
      var mock = HttpServerMock();
      api.EntriesResourceApi res = api.DatacatalogApi(mock).entries;
      var arg_linkedResource = 'foo';
      var arg_sqlResource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1beta1/entries:lookup"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["linkedResource"].first,
            unittest.equals(arg_linkedResource));
        unittest.expect(
            queryMap["sqlResource"].first, unittest.equals(arg_sqlResource));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookup(
              linkedResource: arg_linkedResource,
              sqlResource: arg_sqlResource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Entry(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      var arg_parent = 'foo';
      var arg_entryGroupId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1EntryGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["entryGroupId"].first, unittest.equals(arg_entryGroupId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              entryGroupId: arg_entryGroupId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1EntryGroup(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_name = 'foo';
      var arg_readMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, readMask: arg_readMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1EntryGroup(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1EntryGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1EntryGroup(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsEntriesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Entry();
      var arg_parent = 'foo';
      var arg_entryId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Entry.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Entry(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["entryId"].first, unittest.equals(arg_entryId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              entryId: arg_entryId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Entry(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Entry(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_readMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListEntriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              readMask: arg_readMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Entry();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Entry.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Entry(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Entry(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsEntriesTagsResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries.tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Tag(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries.tags;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries.tags;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListTagsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.entries.tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Tag(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsTagsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Tag(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.tags;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.tags;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListTagsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsEntryGroupsTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.entryGroups.tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Tag(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsTagTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      var arg_parent = 'foo';
      var arg_tagTemplateId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1TagTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["tagTemplateId"].first,
            unittest.equals(arg_tagTemplateId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              tagTemplateId: arg_tagTemplateId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplate(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplate(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1TagTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplate(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsTagTemplatesFieldsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesFieldsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      var arg_parent = 'foo';
      var arg_tagTemplateFieldId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["tagTemplateFieldId"].first,
            unittest.equals(arg_tagTemplateFieldId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              tagTemplateFieldId: arg_tagTemplateFieldId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesFieldsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesFieldsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(response);
      })));
    });

    unittest.test('method--rename', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesFieldsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
            .fromJson(json);
        checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rename(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(response);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsTagTemplatesFieldsEnumValuesResourceApi', () {
    unittest.test('method--rename', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTagTemplatesFieldsEnumValuesResourceApi res =
          api.DatacatalogApi(mock)
              .projects
              .locations
              .tagTemplates
              .fields
              .enumValues;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest
                .fromJson(json);
        checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest(
            obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rename(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsTaxonomiesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Taxonomy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Taxonomy(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--export', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_parent = 'foo';
      var arg_serializedTaxonomies = true;
      var arg_taxonomies = buildUnnamed5871();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["serializedTaxonomies"].first,
            unittest.equals("$arg_serializedTaxonomies"));
        unittest.expect(
            queryMap["taxonomies"], unittest.equals(arg_taxonomies));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_parent,
              serializedTaxonomies: arg_serializedTaxonomies,
              taxonomies: arg_taxonomies,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Taxonomy(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--import', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest.fromJson(
                json);
        checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Taxonomy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Taxonomy(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsTaxonomiesPolicyTagsResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1PolicyTag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1PolicyTag(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1PolicyTag(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1PolicyTag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1PolicyTag(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });
}
