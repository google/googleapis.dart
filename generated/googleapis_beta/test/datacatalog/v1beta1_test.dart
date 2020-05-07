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

buildUnnamed6014() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6014(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed6014();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed6014(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
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

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
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
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
buildGetPolicyOptions() {
  var o = new api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(o.requestedPolicyVersion, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec = 0;
buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec() {
  var o = new api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec < 3) {
    o.dataset = "foo";
    o.shardCount = "foo";
    o.tablePrefix = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec(
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
buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec() {
  var o = new api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec();
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec < 3) {
    o.tableSourceType = "foo";
    o.tableSpec = buildGoogleCloudDatacatalogV1beta1TableSpec();
    o.viewSpec = buildGoogleCloudDatacatalogV1beta1ViewSpec();
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1BigQueryTableSpec(
    api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec < 3) {
    unittest.expect(o.tableSourceType, unittest.equals('foo'));
    checkGoogleCloudDatacatalogV1beta1TableSpec(o.tableSpec);
    checkGoogleCloudDatacatalogV1beta1ViewSpec(o.viewSpec);
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec--;
}

buildUnnamed6015() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema>();
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  return o;
}

checkUnnamed6015(core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[0]);
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema = 0;
buildGoogleCloudDatacatalogV1beta1ColumnSchema() {
  var o = new api.GoogleCloudDatacatalogV1beta1ColumnSchema();
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema < 3) {
    o.column = "foo";
    o.description = "foo";
    o.mode = "foo";
    o.subcolumns = buildUnnamed6015();
    o.type = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1ColumnSchema(
    api.GoogleCloudDatacatalogV1beta1ColumnSchema o) {
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema < 3) {
    unittest.expect(o.column, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.mode, unittest.equals('foo'));
    checkUnnamed6015(o.subcolumns);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Entry = 0;
buildGoogleCloudDatacatalogV1beta1Entry() {
  var o = new api.GoogleCloudDatacatalogV1beta1Entry();
  buildCounterGoogleCloudDatacatalogV1beta1Entry++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Entry < 3) {
    o.bigqueryDateShardedSpec =
        buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
    o.bigqueryTableSpec = buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec();
    o.description = "foo";
    o.displayName = "foo";
    o.gcsFilesetSpec = buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec();
    o.integratedSystem = "foo";
    o.linkedResource = "foo";
    o.name = "foo";
    o.schema = buildGoogleCloudDatacatalogV1beta1Schema();
    o.sourceSystemTimestamps =
        buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
    o.type = "foo";
    o.userSpecifiedSystem = "foo";
    o.userSpecifiedType = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1Entry--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1Entry(
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
buildGoogleCloudDatacatalogV1beta1EntryGroup() {
  var o = new api.GoogleCloudDatacatalogV1beta1EntryGroup();
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup++;
  if (buildCounterGoogleCloudDatacatalogV1beta1EntryGroup < 3) {
    o.dataCatalogTimestamps =
        buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1EntryGroup(
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

buildUnnamed6016() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>();
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  return o;
}

checkUnnamed6016(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse = 0;
buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse() {
  var o = new api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse < 3) {
    o.taxonomies = buildUnnamed6016();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse < 3) {
    checkUnnamed6016(o.taxonomies);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldType = 0;
buildGoogleCloudDatacatalogV1beta1FieldType() {
  var o = new api.GoogleCloudDatacatalogV1beta1FieldType();
  buildCounterGoogleCloudDatacatalogV1beta1FieldType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldType < 3) {
    o.enumType = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType();
    o.primitiveType = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldType--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1FieldType(
    api.GoogleCloudDatacatalogV1beta1FieldType o) {
  buildCounterGoogleCloudDatacatalogV1beta1FieldType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldType < 3) {
    checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(o.enumType);
    unittest.expect(o.primitiveType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldType--;
}

buildUnnamed6017() {
  var o = new core
      .List<api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue>();
  o.add(buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue());
  o.add(buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue());
  return o;
}

checkUnnamed6017(
    core.List<api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(o[0]);
  checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType = 0;
buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType() {
  var o = new api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType();
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType < 3) {
    o.allowedValues = buildUnnamed6017();
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(
    api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType o) {
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType < 3) {
    checkUnnamed6017(o.allowedValues);
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue =
    0;
buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue() {
  var o = new api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue();
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue < 3) {
    o.displayName = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(
    api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue o) {
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec = 0;
buildGoogleCloudDatacatalogV1beta1GcsFileSpec() {
  var o = new api.GoogleCloudDatacatalogV1beta1GcsFileSpec();
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec < 3) {
    o.filePath = "foo";
    o.gcsTimestamps = buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
    o.sizeBytes = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1GcsFileSpec(
    api.GoogleCloudDatacatalogV1beta1GcsFileSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec < 3) {
    unittest.expect(o.filePath, unittest.equals('foo'));
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(o.gcsTimestamps);
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec--;
}

buildUnnamed6018() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6018(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6019() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1GcsFileSpec>();
  o.add(buildGoogleCloudDatacatalogV1beta1GcsFileSpec());
  o.add(buildGoogleCloudDatacatalogV1beta1GcsFileSpec());
  return o;
}

checkUnnamed6019(core.List<api.GoogleCloudDatacatalogV1beta1GcsFileSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1GcsFileSpec(o[0]);
  checkGoogleCloudDatacatalogV1beta1GcsFileSpec(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec = 0;
buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec() {
  var o = new api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec();
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec < 3) {
    o.filePatterns = buildUnnamed6018();
    o.sampleGcsFileSpecs = buildUnnamed6019();
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(
    api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec < 3) {
    checkUnnamed6018(o.filePatterns);
    checkUnnamed6019(o.sampleGcsFileSpecs);
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest = 0;
buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest() {
  var o = new api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest < 3) {
    o.inlineSource = buildGoogleCloudDatacatalogV1beta1InlineSource();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(
    api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest o) {
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest < 3) {
    checkGoogleCloudDatacatalogV1beta1InlineSource(o.inlineSource);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest--;
}

buildUnnamed6020() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy>();
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  return o;
}

checkUnnamed6020(core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse = 0;
buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse() {
  var o = new api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse < 3) {
    o.taxonomies = buildUnnamed6020();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse < 3) {
    checkUnnamed6020(o.taxonomies);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse--;
}

buildUnnamed6021() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>();
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  return o;
}

checkUnnamed6021(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1InlineSource = 0;
buildGoogleCloudDatacatalogV1beta1InlineSource() {
  var o = new api.GoogleCloudDatacatalogV1beta1InlineSource();
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource++;
  if (buildCounterGoogleCloudDatacatalogV1beta1InlineSource < 3) {
    o.taxonomies = buildUnnamed6021();
  }
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1InlineSource(
    api.GoogleCloudDatacatalogV1beta1InlineSource o) {
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource++;
  if (buildCounterGoogleCloudDatacatalogV1beta1InlineSource < 3) {
    checkUnnamed6021(o.taxonomies);
  }
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource--;
}

buildUnnamed6022() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1Entry>();
  o.add(buildGoogleCloudDatacatalogV1beta1Entry());
  o.add(buildGoogleCloudDatacatalogV1beta1Entry());
  return o;
}

checkUnnamed6022(core.List<api.GoogleCloudDatacatalogV1beta1Entry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Entry(o[0]);
  checkGoogleCloudDatacatalogV1beta1Entry(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse = 0;
buildGoogleCloudDatacatalogV1beta1ListEntriesResponse() {
  var o = new api.GoogleCloudDatacatalogV1beta1ListEntriesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse < 3) {
    o.entries = buildUnnamed6022();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(
    api.GoogleCloudDatacatalogV1beta1ListEntriesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse < 3) {
    checkUnnamed6022(o.entries);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse--;
}

buildUnnamed6023() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1EntryGroup>();
  o.add(buildGoogleCloudDatacatalogV1beta1EntryGroup());
  o.add(buildGoogleCloudDatacatalogV1beta1EntryGroup());
  return o;
}

checkUnnamed6023(core.List<api.GoogleCloudDatacatalogV1beta1EntryGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1EntryGroup(o[0]);
  checkGoogleCloudDatacatalogV1beta1EntryGroup(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse = 0;
buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse() {
  var o = new api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse < 3) {
    o.entryGroups = buildUnnamed6023();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(
    api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse < 3) {
    checkUnnamed6023(o.entryGroups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse--;
}

buildUnnamed6024() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1PolicyTag>();
  o.add(buildGoogleCloudDatacatalogV1beta1PolicyTag());
  o.add(buildGoogleCloudDatacatalogV1beta1PolicyTag());
  return o;
}

checkUnnamed6024(core.List<api.GoogleCloudDatacatalogV1beta1PolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1PolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1beta1PolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse = 0;
buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse() {
  var o = new api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse < 3) {
    o.nextPageToken = "foo";
    o.policyTags = buildUnnamed6024();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(
    api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6024(o.policyTags);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse--;
}

buildUnnamed6025() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1Tag>();
  o.add(buildGoogleCloudDatacatalogV1beta1Tag());
  o.add(buildGoogleCloudDatacatalogV1beta1Tag());
  return o;
}

checkUnnamed6025(core.List<api.GoogleCloudDatacatalogV1beta1Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Tag(o[0]);
  checkGoogleCloudDatacatalogV1beta1Tag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse = 0;
buildGoogleCloudDatacatalogV1beta1ListTagsResponse() {
  var o = new api.GoogleCloudDatacatalogV1beta1ListTagsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse < 3) {
    o.nextPageToken = "foo";
    o.tags = buildUnnamed6025();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1ListTagsResponse(
    api.GoogleCloudDatacatalogV1beta1ListTagsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6025(o.tags);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse--;
}

buildUnnamed6026() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy>();
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  return o;
}

checkUnnamed6026(core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[0]);
  checkGoogleCloudDatacatalogV1beta1Taxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse = 0;
buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse() {
  var o = new api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse < 3) {
    o.nextPageToken = "foo";
    o.taxonomies = buildUnnamed6026();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6026(o.taxonomies);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse--;
}

buildUnnamed6027() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6027(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatacatalogV1beta1PolicyTag = 0;
buildGoogleCloudDatacatalogV1beta1PolicyTag() {
  var o = new api.GoogleCloudDatacatalogV1beta1PolicyTag();
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1PolicyTag < 3) {
    o.childPolicyTags = buildUnnamed6027();
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.parentPolicyTag = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1PolicyTag(
    api.GoogleCloudDatacatalogV1beta1PolicyTag o) {
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1PolicyTag < 3) {
    checkUnnamed6027(o.childPolicyTags);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentPolicyTag, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag--;
}

core.int
    buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest = 0;
buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest() {
  var o = new api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest <
      3) {
    o.newTagTemplateFieldId = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(
    api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest o) {
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest <
      3) {
    unittest.expect(o.newTagTemplateFieldId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest--;
}

buildUnnamed6028() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema>();
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  return o;
}

checkUnnamed6028(core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[0]);
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Schema = 0;
buildGoogleCloudDatacatalogV1beta1Schema() {
  var o = new api.GoogleCloudDatacatalogV1beta1Schema();
  buildCounterGoogleCloudDatacatalogV1beta1Schema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Schema < 3) {
    o.columns = buildUnnamed6028();
  }
  buildCounterGoogleCloudDatacatalogV1beta1Schema--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1Schema(
    api.GoogleCloudDatacatalogV1beta1Schema o) {
  buildCounterGoogleCloudDatacatalogV1beta1Schema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Schema < 3) {
    checkUnnamed6028(o.columns);
  }
  buildCounterGoogleCloudDatacatalogV1beta1Schema--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest = 0;
buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest() {
  var o = new api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest < 3) {
    o.orderBy = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
    o.query = "foo";
    o.scope = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(
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

buildUnnamed6029() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6029(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6030() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6030(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope = 0;
buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope() {
  var o = new api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope < 3) {
    o.includeGcpPublicDatasets = true;
    o.includeOrgIds = buildUnnamed6029();
    o.includeProjectIds = buildUnnamed6030();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope < 3) {
    unittest.expect(o.includeGcpPublicDatasets, unittest.isTrue);
    checkUnnamed6029(o.includeOrgIds);
    checkUnnamed6030(o.includeProjectIds);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope--;
}

buildUnnamed6031() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1SearchCatalogResult>();
  o.add(buildGoogleCloudDatacatalogV1beta1SearchCatalogResult());
  o.add(buildGoogleCloudDatacatalogV1beta1SearchCatalogResult());
  return o;
}

checkUnnamed6031(
    core.List<api.GoogleCloudDatacatalogV1beta1SearchCatalogResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(o[0]);
  checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse = 0;
buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse() {
  var o = new api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse < 3) {
    o.nextPageToken = "foo";
    o.results = buildUnnamed6031();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6031(o.results);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult = 0;
buildGoogleCloudDatacatalogV1beta1SearchCatalogResult() {
  var o = new api.GoogleCloudDatacatalogV1beta1SearchCatalogResult();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult < 3) {
    o.linkedResource = "foo";
    o.relativeResourceName = "foo";
    o.searchResultSubtype = "foo";
    o.searchResultType = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(
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

buildUnnamed6032() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>();
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  return o;
}

checkUnnamed6032(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag = 0;
buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag() {
  var o = new api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag();
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag < 3) {
    o.childPolicyTags = buildUnnamed6032();
    o.description = "foo";
    o.displayName = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(
    api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag o) {
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag < 3) {
    checkUnnamed6032(o.childPolicyTags);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag--;
}

buildUnnamed6033() {
  var o = new core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>();
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  return o;
}

checkUnnamed6033(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy = 0;
buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy() {
  var o = new api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy();
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.policyTags = buildUnnamed6033();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(
    api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy o) {
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed6033(o.policyTags);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps = 0;
buildGoogleCloudDatacatalogV1beta1SystemTimestamps() {
  var o = new api.GoogleCloudDatacatalogV1beta1SystemTimestamps();
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps < 3) {
    o.createTime = "foo";
    o.expireTime = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1SystemTimestamps(
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
buildGoogleCloudDatacatalogV1beta1TableSpec() {
  var o = new api.GoogleCloudDatacatalogV1beta1TableSpec();
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TableSpec < 3) {
    o.groupedEntry = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1TableSpec(
    api.GoogleCloudDatacatalogV1beta1TableSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TableSpec < 3) {
    unittest.expect(o.groupedEntry, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec--;
}

buildUnnamed6034() {
  var o =
      new core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagField>();
  o["x"] = buildGoogleCloudDatacatalogV1beta1TagField();
  o["y"] = buildGoogleCloudDatacatalogV1beta1TagField();
  return o;
}

checkUnnamed6034(
    core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1TagField(o["x"]);
  checkGoogleCloudDatacatalogV1beta1TagField(o["y"]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Tag = 0;
buildGoogleCloudDatacatalogV1beta1Tag() {
  var o = new api.GoogleCloudDatacatalogV1beta1Tag();
  buildCounterGoogleCloudDatacatalogV1beta1Tag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Tag < 3) {
    o.column = "foo";
    o.fields = buildUnnamed6034();
    o.name = "foo";
    o.template = "foo";
    o.templateDisplayName = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1Tag--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1Tag(api.GoogleCloudDatacatalogV1beta1Tag o) {
  buildCounterGoogleCloudDatacatalogV1beta1Tag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Tag < 3) {
    unittest.expect(o.column, unittest.equals('foo'));
    checkUnnamed6034(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.template, unittest.equals('foo'));
    unittest.expect(o.templateDisplayName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1Tag--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagField = 0;
buildGoogleCloudDatacatalogV1beta1TagField() {
  var o = new api.GoogleCloudDatacatalogV1beta1TagField();
  buildCounterGoogleCloudDatacatalogV1beta1TagField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagField < 3) {
    o.boolValue = true;
    o.displayName = "foo";
    o.doubleValue = 42.0;
    o.enumValue = buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue();
    o.order = 42;
    o.stringValue = "foo";
    o.timestampValue = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagField--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1TagField(
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
buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue() {
  var o = new api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue();
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue < 3) {
    o.displayName = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1TagFieldEnumValue(
    api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue--;
}

buildUnnamed6035() {
  var o = new core
      .Map<core.String, api.GoogleCloudDatacatalogV1beta1TagTemplateField>();
  o["x"] = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
  o["y"] = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
  return o;
}

checkUnnamed6035(
    core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagTemplateField>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1TagTemplateField(o["x"]);
  checkGoogleCloudDatacatalogV1beta1TagTemplateField(o["y"]);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagTemplate = 0;
buildGoogleCloudDatacatalogV1beta1TagTemplate() {
  var o = new api.GoogleCloudDatacatalogV1beta1TagTemplate();
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplate < 3) {
    o.displayName = "foo";
    o.fields = buildUnnamed6035();
    o.name = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1TagTemplate(
    api.GoogleCloudDatacatalogV1beta1TagTemplate o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplate < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed6035(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField = 0;
buildGoogleCloudDatacatalogV1beta1TagTemplateField() {
  var o = new api.GoogleCloudDatacatalogV1beta1TagTemplateField();
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField < 3) {
    o.displayName = "foo";
    o.isRequired = true;
    o.name = "foo";
    o.order = 42;
    o.type = buildGoogleCloudDatacatalogV1beta1FieldType();
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1TagTemplateField(
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

buildUnnamed6036() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6036(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Taxonomy = 0;
buildGoogleCloudDatacatalogV1beta1Taxonomy() {
  var o = new api.GoogleCloudDatacatalogV1beta1Taxonomy();
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Taxonomy < 3) {
    o.activatedPolicyTypes = buildUnnamed6036();
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1Taxonomy(
    api.GoogleCloudDatacatalogV1beta1Taxonomy o) {
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Taxonomy < 3) {
    checkUnnamed6036(o.activatedPolicyTypes);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ViewSpec = 0;
buildGoogleCloudDatacatalogV1beta1ViewSpec() {
  var o = new api.GoogleCloudDatacatalogV1beta1ViewSpec();
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ViewSpec < 3) {
    o.viewQuery = "foo";
  }
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec--;
  return o;
}

checkGoogleCloudDatacatalogV1beta1ViewSpec(
    api.GoogleCloudDatacatalogV1beta1ViewSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ViewSpec < 3) {
    unittest.expect(o.viewQuery, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec--;
}

buildUnnamed6037() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed6037(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed6037();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed6037(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
  }
  buildCounterSetIamPolicyRequest--;
}

buildUnnamed6038() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6038(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed6038();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed6038(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed6039() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6039(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed6039();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed6039(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

buildUnnamed6040() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6040(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GetPolicyOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetPolicyOptions();
      var od = new api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
      var od =
          new api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1BigQueryTableSpec",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec();
      var od = new api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1BigQueryTableSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1ColumnSchema", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1ColumnSchema();
      var od = new api.GoogleCloudDatacatalogV1beta1ColumnSchema.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1ColumnSchema(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1Entry", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1Entry();
      var od = new api.GoogleCloudDatacatalogV1beta1Entry.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1Entry(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1EntryGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      var od =
          new api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1EntryGroup(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse();
      var od = new api
              .GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1FieldType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1FieldType();
      var od =
          new api.GoogleCloudDatacatalogV1beta1FieldType.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1FieldType(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1FieldTypeEnumType",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType();
      var od = new api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue();
      var od = new api
              .GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1GcsFileSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1GcsFileSpec();
      var od =
          new api.GoogleCloudDatacatalogV1beta1GcsFileSpec.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1GcsFileSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1GcsFilesetSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec();
      var od = new api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
      var od =
          new api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse();
      var od = new api
              .GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1InlineSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1InlineSource();
      var od = new api.GoogleCloudDatacatalogV1beta1InlineSource.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1InlineSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1ListEntriesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1ListEntriesResponse();
      var od =
          new api.GoogleCloudDatacatalogV1beta1ListEntriesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse();
      var od =
          new api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse();
      var od =
          new api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1ListTagsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1ListTagsResponse();
      var od = new api.GoogleCloudDatacatalogV1beta1ListTagsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1ListTagsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse();
      var od =
          new api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1PolicyTag", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      var od =
          new api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1PolicyTag(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
      var od = new api
              .GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1Schema", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1Schema();
      var od = new api.GoogleCloudDatacatalogV1beta1Schema.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1Schema(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest();
      var od =
          new api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
      var od = new api
              .GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse();
      var od =
          new api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogResult",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogResult();
      var od =
          new api.GoogleCloudDatacatalogV1beta1SearchCatalogResult.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1SerializedPolicyTag",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag();
      var od =
          new api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag.fromJson(
              o.toJson());
      checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1SerializedTaxonomy",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy();
      var od = new api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1SystemTimestamps",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
      var od = new api.GoogleCloudDatacatalogV1beta1SystemTimestamps.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1SystemTimestamps(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1TableSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1TableSpec();
      var od =
          new api.GoogleCloudDatacatalogV1beta1TableSpec.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1TableSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1Tag", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1Tag();
      var od = new api.GoogleCloudDatacatalogV1beta1Tag.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1Tag(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1TagField", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1TagField();
      var od =
          new api.GoogleCloudDatacatalogV1beta1TagField.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1TagField(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1TagFieldEnumValue",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue();
      var od = new api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1TagFieldEnumValue(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1TagTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      var od =
          new api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1TagTemplate(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1TagTemplateField",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      var od = new api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(
          o.toJson());
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1Taxonomy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      var od =
          new api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1Taxonomy(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDatacatalogV1beta1ViewSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDatacatalogV1beta1ViewSpec();
      var od =
          new api.GoogleCloudDatacatalogV1beta1ViewSpec.fromJson(o.toJson());
      checkGoogleCloudDatacatalogV1beta1ViewSpec(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("resource-CatalogResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.CatalogResourceApi res = new api.DatacatalogApi(mock).catalog;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest.fromJson(
                json);
        checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1beta1/catalog:search"));
        pathOffset += 22;

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
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(response);
      })));
    });
  });

  unittest.group("resource-EntriesResourceApi", () {
    unittest.test("method--lookup", () {
      var mock = new HttpServerMock();
      api.EntriesResourceApi res = new api.DatacatalogApi(mock).entries;
      var arg_linkedResource = "foo";
      var arg_sqlResource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1beta1/entries:lookup"));
        pathOffset += 22;

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
        unittest.expect(queryMap["linkedResource"].first,
            unittest.equals(arg_linkedResource));
        unittest.expect(
            queryMap["sqlResource"].first, unittest.equals(arg_sqlResource));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-ProjectsLocationsEntryGroupsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      var arg_parent = "foo";
      var arg_entryGroupId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1EntryGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["entryGroupId"].first, unittest.equals(arg_entryGroupId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              entryGroupId: arg_entryGroupId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1EntryGroup(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_name = "foo";
      var arg_force = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_name = "foo";
      var arg_readMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, readMask: arg_readMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1EntryGroup(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_parent = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1EntryGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1EntryGroup(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsEntryGroupsEntriesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Entry();
      var arg_parent = "foo";
      var arg_entryId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDatacatalogV1beta1Entry.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Entry(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["entryId"].first, unittest.equals(arg_entryId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              entryId: arg_entryId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Entry(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Entry(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_parent = "foo";
      var arg_readMask = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListEntriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              readMask: arg_readMask,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Entry();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDatacatalogV1beta1Entry.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Entry(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Entry(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsEntryGroupsEntriesTagsResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesTagsResourceApi res =
          new api.DatacatalogApi(mock)
              .projects
              .locations
              .entryGroups
              .entries
              .tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDatacatalogV1beta1Tag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Tag(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesTagsResourceApi res =
          new api.DatacatalogApi(mock)
              .projects
              .locations
              .entryGroups
              .entries
              .tags;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesTagsResourceApi res =
          new api.DatacatalogApi(mock)
              .projects
              .locations
              .entryGroups
              .entries
              .tags;
      var arg_parent = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListTagsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListTagsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsEntriesTagsResourceApi res =
          new api.DatacatalogApi(mock)
              .projects
              .locations
              .entryGroups
              .entries
              .tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDatacatalogV1beta1Tag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Tag(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsEntryGroupsTagsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDatacatalogV1beta1Tag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Tag(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.tags;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.tags;
      var arg_parent = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListTagsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListTagsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsEntryGroupsTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.entryGroups.tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDatacatalogV1beta1Tag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Tag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Tag(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsTagTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      var arg_parent = "foo";
      var arg_tagTemplateId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1TagTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(queryMap["tagTemplateId"].first,
            unittest.equals(arg_tagTemplateId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              tagTemplateId: arg_tagTemplateId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplate(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_name = "foo";
      var arg_force = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplate(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1TagTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplate(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsTagTemplatesFieldsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesFieldsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      var arg_parent = "foo";
      var arg_tagTemplateFieldId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(
                json);
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(queryMap["tagTemplateFieldId"].first,
            unittest.equals(arg_tagTemplateFieldId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              tagTemplateFieldId: arg_tagTemplateFieldId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesFieldsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_name = "foo";
      var arg_force = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesFieldsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(
                json);
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(response);
      })));
    });

    unittest.test("method--rename", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTagTemplatesFieldsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest.fromJson(
            json);
        checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rename(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsTaxonomiesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Taxonomy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Taxonomy(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--export", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_parent = "foo";
      var arg_taxonomies = buildUnnamed6040();
      var arg_serializedTaxonomies = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["taxonomies"], unittest.equals(arg_taxonomies));
        unittest.expect(queryMap["serializedTaxonomies"].first,
            unittest.equals("$arg_serializedTaxonomies"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_parent,
              taxonomies: arg_taxonomies,
              serializedTaxonomies: arg_serializedTaxonomies,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Taxonomy(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest.fromJson(
            json);
        checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_parent = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1Taxonomy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1Taxonomy(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsTaxonomiesPolicyTagsResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1PolicyTag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1PolicyTag(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1PolicyTag(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(json);
        checkGoogleCloudDatacatalogV1beta1PolicyTag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatacatalogV1beta1PolicyTag(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTaxonomiesPolicyTagsResourceApi res =
          new api.DatacatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });
}
