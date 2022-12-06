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

import 'package:googleapis/datacatalog/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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
    o.members = buildUnnamed0();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed0(o.members!);
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

core.int buildCounterGoogleCloudDatacatalogV1BigQueryConnectionSpec = 0;
api.GoogleCloudDatacatalogV1BigQueryConnectionSpec
    buildGoogleCloudDatacatalogV1BigQueryConnectionSpec() {
  final o = api.GoogleCloudDatacatalogV1BigQueryConnectionSpec();
  buildCounterGoogleCloudDatacatalogV1BigQueryConnectionSpec++;
  if (buildCounterGoogleCloudDatacatalogV1BigQueryConnectionSpec < 3) {
    o.cloudSql = buildGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec();
    o.connectionType = 'foo';
    o.hasCredential = true;
  }
  buildCounterGoogleCloudDatacatalogV1BigQueryConnectionSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1BigQueryConnectionSpec(
    api.GoogleCloudDatacatalogV1BigQueryConnectionSpec o) {
  buildCounterGoogleCloudDatacatalogV1BigQueryConnectionSpec++;
  if (buildCounterGoogleCloudDatacatalogV1BigQueryConnectionSpec < 3) {
    checkGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec(o.cloudSql!);
    unittest.expect(
      o.connectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasCredential!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatacatalogV1BigQueryConnectionSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1BigQueryDateShardedSpec = 0;
api.GoogleCloudDatacatalogV1BigQueryDateShardedSpec
    buildGoogleCloudDatacatalogV1BigQueryDateShardedSpec() {
  final o = api.GoogleCloudDatacatalogV1BigQueryDateShardedSpec();
  buildCounterGoogleCloudDatacatalogV1BigQueryDateShardedSpec++;
  if (buildCounterGoogleCloudDatacatalogV1BigQueryDateShardedSpec < 3) {
    o.dataset = 'foo';
    o.latestShardResource = 'foo';
    o.shardCount = 'foo';
    o.tablePrefix = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1BigQueryDateShardedSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1BigQueryDateShardedSpec(
    api.GoogleCloudDatacatalogV1BigQueryDateShardedSpec o) {
  buildCounterGoogleCloudDatacatalogV1BigQueryDateShardedSpec++;
  if (buildCounterGoogleCloudDatacatalogV1BigQueryDateShardedSpec < 3) {
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestShardResource!,
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
  buildCounterGoogleCloudDatacatalogV1BigQueryDateShardedSpec--;
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

core.int buildCounterGoogleCloudDatacatalogV1BigQueryRoutineSpec = 0;
api.GoogleCloudDatacatalogV1BigQueryRoutineSpec
    buildGoogleCloudDatacatalogV1BigQueryRoutineSpec() {
  final o = api.GoogleCloudDatacatalogV1BigQueryRoutineSpec();
  buildCounterGoogleCloudDatacatalogV1BigQueryRoutineSpec++;
  if (buildCounterGoogleCloudDatacatalogV1BigQueryRoutineSpec < 3) {
    o.importedLibraries = buildUnnamed1();
  }
  buildCounterGoogleCloudDatacatalogV1BigQueryRoutineSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1BigQueryRoutineSpec(
    api.GoogleCloudDatacatalogV1BigQueryRoutineSpec o) {
  buildCounterGoogleCloudDatacatalogV1BigQueryRoutineSpec++;
  if (buildCounterGoogleCloudDatacatalogV1BigQueryRoutineSpec < 3) {
    checkUnnamed1(o.importedLibraries!);
  }
  buildCounterGoogleCloudDatacatalogV1BigQueryRoutineSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1BigQueryTableSpec = 0;
api.GoogleCloudDatacatalogV1BigQueryTableSpec
    buildGoogleCloudDatacatalogV1BigQueryTableSpec() {
  final o = api.GoogleCloudDatacatalogV1BigQueryTableSpec();
  buildCounterGoogleCloudDatacatalogV1BigQueryTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1BigQueryTableSpec < 3) {
    o.tableSourceType = 'foo';
    o.tableSpec = buildGoogleCloudDatacatalogV1TableSpec();
    o.viewSpec = buildGoogleCloudDatacatalogV1ViewSpec();
  }
  buildCounterGoogleCloudDatacatalogV1BigQueryTableSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1BigQueryTableSpec(
    api.GoogleCloudDatacatalogV1BigQueryTableSpec o) {
  buildCounterGoogleCloudDatacatalogV1BigQueryTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1BigQueryTableSpec < 3) {
    unittest.expect(
      o.tableSourceType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1TableSpec(o.tableSpec!);
    checkGoogleCloudDatacatalogV1ViewSpec(o.viewSpec!);
  }
  buildCounterGoogleCloudDatacatalogV1BigQueryTableSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1BusinessContext = 0;
api.GoogleCloudDatacatalogV1BusinessContext
    buildGoogleCloudDatacatalogV1BusinessContext() {
  final o = api.GoogleCloudDatacatalogV1BusinessContext();
  buildCounterGoogleCloudDatacatalogV1BusinessContext++;
  if (buildCounterGoogleCloudDatacatalogV1BusinessContext < 3) {
    o.contacts = buildGoogleCloudDatacatalogV1Contacts();
    o.entryOverview = buildGoogleCloudDatacatalogV1EntryOverview();
  }
  buildCounterGoogleCloudDatacatalogV1BusinessContext--;
  return o;
}

void checkGoogleCloudDatacatalogV1BusinessContext(
    api.GoogleCloudDatacatalogV1BusinessContext o) {
  buildCounterGoogleCloudDatacatalogV1BusinessContext++;
  if (buildCounterGoogleCloudDatacatalogV1BusinessContext < 3) {
    checkGoogleCloudDatacatalogV1Contacts(o.contacts!);
    checkGoogleCloudDatacatalogV1EntryOverview(o.entryOverview!);
  }
  buildCounterGoogleCloudDatacatalogV1BusinessContext--;
}

core.int buildCounterGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec = 0;
api.GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec
    buildGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec() {
  final o = api.GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec();
  buildCounterGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec++;
  if (buildCounterGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec < 3) {
    o.database = 'foo';
    o.instanceId = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec(
    api.GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec o) {
  buildCounterGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec++;
  if (buildCounterGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec < 3) {
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec--;
}

core.List<api.GoogleCloudDatacatalogV1ColumnSchema> buildUnnamed2() => [
      buildGoogleCloudDatacatalogV1ColumnSchema(),
      buildGoogleCloudDatacatalogV1ColumnSchema(),
    ];

void checkUnnamed2(core.List<api.GoogleCloudDatacatalogV1ColumnSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1ColumnSchema(o[0]);
  checkGoogleCloudDatacatalogV1ColumnSchema(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1ColumnSchema = 0;
api.GoogleCloudDatacatalogV1ColumnSchema
    buildGoogleCloudDatacatalogV1ColumnSchema() {
  final o = api.GoogleCloudDatacatalogV1ColumnSchema();
  buildCounterGoogleCloudDatacatalogV1ColumnSchema++;
  if (buildCounterGoogleCloudDatacatalogV1ColumnSchema < 3) {
    o.column = 'foo';
    o.description = 'foo';
    o.gcRule = 'foo';
    o.mode = 'foo';
    o.subcolumns = buildUnnamed2();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1ColumnSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1ColumnSchema(
    api.GoogleCloudDatacatalogV1ColumnSchema o) {
  buildCounterGoogleCloudDatacatalogV1ColumnSchema++;
  if (buildCounterGoogleCloudDatacatalogV1ColumnSchema < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcRule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.subcolumns!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1ColumnSchema--;
}

core.List<api.GoogleCloudDatacatalogV1ContactsPerson> buildUnnamed3() => [
      buildGoogleCloudDatacatalogV1ContactsPerson(),
      buildGoogleCloudDatacatalogV1ContactsPerson(),
    ];

void checkUnnamed3(core.List<api.GoogleCloudDatacatalogV1ContactsPerson> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1ContactsPerson(o[0]);
  checkGoogleCloudDatacatalogV1ContactsPerson(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1Contacts = 0;
api.GoogleCloudDatacatalogV1Contacts buildGoogleCloudDatacatalogV1Contacts() {
  final o = api.GoogleCloudDatacatalogV1Contacts();
  buildCounterGoogleCloudDatacatalogV1Contacts++;
  if (buildCounterGoogleCloudDatacatalogV1Contacts < 3) {
    o.people = buildUnnamed3();
  }
  buildCounterGoogleCloudDatacatalogV1Contacts--;
  return o;
}

void checkGoogleCloudDatacatalogV1Contacts(
    api.GoogleCloudDatacatalogV1Contacts o) {
  buildCounterGoogleCloudDatacatalogV1Contacts++;
  if (buildCounterGoogleCloudDatacatalogV1Contacts < 3) {
    checkUnnamed3(o.people!);
  }
  buildCounterGoogleCloudDatacatalogV1Contacts--;
}

core.int buildCounterGoogleCloudDatacatalogV1ContactsPerson = 0;
api.GoogleCloudDatacatalogV1ContactsPerson
    buildGoogleCloudDatacatalogV1ContactsPerson() {
  final o = api.GoogleCloudDatacatalogV1ContactsPerson();
  buildCounterGoogleCloudDatacatalogV1ContactsPerson++;
  if (buildCounterGoogleCloudDatacatalogV1ContactsPerson < 3) {
    o.designation = 'foo';
    o.email = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1ContactsPerson--;
  return o;
}

void checkGoogleCloudDatacatalogV1ContactsPerson(
    api.GoogleCloudDatacatalogV1ContactsPerson o) {
  buildCounterGoogleCloudDatacatalogV1ContactsPerson++;
  if (buildCounterGoogleCloudDatacatalogV1ContactsPerson < 3) {
    unittest.expect(
      o.designation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1ContactsPerson--;
}

core.int buildCounterGoogleCloudDatacatalogV1CrossRegionalSource = 0;
api.GoogleCloudDatacatalogV1CrossRegionalSource
    buildGoogleCloudDatacatalogV1CrossRegionalSource() {
  final o = api.GoogleCloudDatacatalogV1CrossRegionalSource();
  buildCounterGoogleCloudDatacatalogV1CrossRegionalSource++;
  if (buildCounterGoogleCloudDatacatalogV1CrossRegionalSource < 3) {
    o.taxonomy = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1CrossRegionalSource--;
  return o;
}

void checkGoogleCloudDatacatalogV1CrossRegionalSource(
    api.GoogleCloudDatacatalogV1CrossRegionalSource o) {
  buildCounterGoogleCloudDatacatalogV1CrossRegionalSource++;
  if (buildCounterGoogleCloudDatacatalogV1CrossRegionalSource < 3) {
    unittest.expect(
      o.taxonomy!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1CrossRegionalSource--;
}

core.int buildCounterGoogleCloudDatacatalogV1DataSource = 0;
api.GoogleCloudDatacatalogV1DataSource
    buildGoogleCloudDatacatalogV1DataSource() {
  final o = api.GoogleCloudDatacatalogV1DataSource();
  buildCounterGoogleCloudDatacatalogV1DataSource++;
  if (buildCounterGoogleCloudDatacatalogV1DataSource < 3) {
    o.resource = 'foo';
    o.service = 'foo';
    o.sourceEntry = 'foo';
    o.storageProperties = buildGoogleCloudDatacatalogV1StorageProperties();
  }
  buildCounterGoogleCloudDatacatalogV1DataSource--;
  return o;
}

void checkGoogleCloudDatacatalogV1DataSource(
    api.GoogleCloudDatacatalogV1DataSource o) {
  buildCounterGoogleCloudDatacatalogV1DataSource++;
  if (buildCounterGoogleCloudDatacatalogV1DataSource < 3) {
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceEntry!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1StorageProperties(o.storageProperties!);
  }
  buildCounterGoogleCloudDatacatalogV1DataSource--;
}

core.int buildCounterGoogleCloudDatacatalogV1DataSourceConnectionSpec = 0;
api.GoogleCloudDatacatalogV1DataSourceConnectionSpec
    buildGoogleCloudDatacatalogV1DataSourceConnectionSpec() {
  final o = api.GoogleCloudDatacatalogV1DataSourceConnectionSpec();
  buildCounterGoogleCloudDatacatalogV1DataSourceConnectionSpec++;
  if (buildCounterGoogleCloudDatacatalogV1DataSourceConnectionSpec < 3) {
    o.bigqueryConnectionSpec =
        buildGoogleCloudDatacatalogV1BigQueryConnectionSpec();
  }
  buildCounterGoogleCloudDatacatalogV1DataSourceConnectionSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1DataSourceConnectionSpec(
    api.GoogleCloudDatacatalogV1DataSourceConnectionSpec o) {
  buildCounterGoogleCloudDatacatalogV1DataSourceConnectionSpec++;
  if (buildCounterGoogleCloudDatacatalogV1DataSourceConnectionSpec < 3) {
    checkGoogleCloudDatacatalogV1BigQueryConnectionSpec(
        o.bigqueryConnectionSpec!);
  }
  buildCounterGoogleCloudDatacatalogV1DataSourceConnectionSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1DatabaseTableSpec = 0;
api.GoogleCloudDatacatalogV1DatabaseTableSpec
    buildGoogleCloudDatacatalogV1DatabaseTableSpec() {
  final o = api.GoogleCloudDatacatalogV1DatabaseTableSpec();
  buildCounterGoogleCloudDatacatalogV1DatabaseTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1DatabaseTableSpec < 3) {
    o.dataplexTable = buildGoogleCloudDatacatalogV1DataplexTableSpec();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1DatabaseTableSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1DatabaseTableSpec(
    api.GoogleCloudDatacatalogV1DatabaseTableSpec o) {
  buildCounterGoogleCloudDatacatalogV1DatabaseTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1DatabaseTableSpec < 3) {
    checkGoogleCloudDatacatalogV1DataplexTableSpec(o.dataplexTable!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1DatabaseTableSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1DataplexExternalTable = 0;
api.GoogleCloudDatacatalogV1DataplexExternalTable
    buildGoogleCloudDatacatalogV1DataplexExternalTable() {
  final o = api.GoogleCloudDatacatalogV1DataplexExternalTable();
  buildCounterGoogleCloudDatacatalogV1DataplexExternalTable++;
  if (buildCounterGoogleCloudDatacatalogV1DataplexExternalTable < 3) {
    o.dataCatalogEntry = 'foo';
    o.fullyQualifiedName = 'foo';
    o.googleCloudResource = 'foo';
    o.system = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1DataplexExternalTable--;
  return o;
}

void checkGoogleCloudDatacatalogV1DataplexExternalTable(
    api.GoogleCloudDatacatalogV1DataplexExternalTable o) {
  buildCounterGoogleCloudDatacatalogV1DataplexExternalTable++;
  if (buildCounterGoogleCloudDatacatalogV1DataplexExternalTable < 3) {
    unittest.expect(
      o.dataCatalogEntry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullyQualifiedName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleCloudResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.system!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1DataplexExternalTable--;
}

core.int buildCounterGoogleCloudDatacatalogV1DataplexFilesetSpec = 0;
api.GoogleCloudDatacatalogV1DataplexFilesetSpec
    buildGoogleCloudDatacatalogV1DataplexFilesetSpec() {
  final o = api.GoogleCloudDatacatalogV1DataplexFilesetSpec();
  buildCounterGoogleCloudDatacatalogV1DataplexFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1DataplexFilesetSpec < 3) {
    o.dataplexSpec = buildGoogleCloudDatacatalogV1DataplexSpec();
  }
  buildCounterGoogleCloudDatacatalogV1DataplexFilesetSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1DataplexFilesetSpec(
    api.GoogleCloudDatacatalogV1DataplexFilesetSpec o) {
  buildCounterGoogleCloudDatacatalogV1DataplexFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1DataplexFilesetSpec < 3) {
    checkGoogleCloudDatacatalogV1DataplexSpec(o.dataplexSpec!);
  }
  buildCounterGoogleCloudDatacatalogV1DataplexFilesetSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1DataplexSpec = 0;
api.GoogleCloudDatacatalogV1DataplexSpec
    buildGoogleCloudDatacatalogV1DataplexSpec() {
  final o = api.GoogleCloudDatacatalogV1DataplexSpec();
  buildCounterGoogleCloudDatacatalogV1DataplexSpec++;
  if (buildCounterGoogleCloudDatacatalogV1DataplexSpec < 3) {
    o.asset = 'foo';
    o.compressionFormat = 'foo';
    o.dataFormat = buildGoogleCloudDatacatalogV1PhysicalSchema();
    o.projectId = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1DataplexSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1DataplexSpec(
    api.GoogleCloudDatacatalogV1DataplexSpec o) {
  buildCounterGoogleCloudDatacatalogV1DataplexSpec++;
  if (buildCounterGoogleCloudDatacatalogV1DataplexSpec < 3) {
    unittest.expect(
      o.asset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.compressionFormat!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1PhysicalSchema(o.dataFormat!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1DataplexSpec--;
}

core.List<api.GoogleCloudDatacatalogV1DataplexExternalTable> buildUnnamed4() =>
    [
      buildGoogleCloudDatacatalogV1DataplexExternalTable(),
      buildGoogleCloudDatacatalogV1DataplexExternalTable(),
    ];

void checkUnnamed4(
    core.List<api.GoogleCloudDatacatalogV1DataplexExternalTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1DataplexExternalTable(o[0]);
  checkGoogleCloudDatacatalogV1DataplexExternalTable(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1DataplexTableSpec = 0;
api.GoogleCloudDatacatalogV1DataplexTableSpec
    buildGoogleCloudDatacatalogV1DataplexTableSpec() {
  final o = api.GoogleCloudDatacatalogV1DataplexTableSpec();
  buildCounterGoogleCloudDatacatalogV1DataplexTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1DataplexTableSpec < 3) {
    o.dataplexSpec = buildGoogleCloudDatacatalogV1DataplexSpec();
    o.externalTables = buildUnnamed4();
    o.userManaged = true;
  }
  buildCounterGoogleCloudDatacatalogV1DataplexTableSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1DataplexTableSpec(
    api.GoogleCloudDatacatalogV1DataplexTableSpec o) {
  buildCounterGoogleCloudDatacatalogV1DataplexTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1DataplexTableSpec < 3) {
    checkGoogleCloudDatacatalogV1DataplexSpec(o.dataplexSpec!);
    checkUnnamed4(o.externalTables!);
    unittest.expect(o.userManaged!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatacatalogV1DataplexTableSpec--;
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

core.int buildCounterGoogleCloudDatacatalogV1Entry = 0;
api.GoogleCloudDatacatalogV1Entry buildGoogleCloudDatacatalogV1Entry() {
  final o = api.GoogleCloudDatacatalogV1Entry();
  buildCounterGoogleCloudDatacatalogV1Entry++;
  if (buildCounterGoogleCloudDatacatalogV1Entry < 3) {
    o.bigqueryDateShardedSpec =
        buildGoogleCloudDatacatalogV1BigQueryDateShardedSpec();
    o.bigqueryTableSpec = buildGoogleCloudDatacatalogV1BigQueryTableSpec();
    o.businessContext = buildGoogleCloudDatacatalogV1BusinessContext();
    o.dataSource = buildGoogleCloudDatacatalogV1DataSource();
    o.dataSourceConnectionSpec =
        buildGoogleCloudDatacatalogV1DataSourceConnectionSpec();
    o.databaseTableSpec = buildGoogleCloudDatacatalogV1DatabaseTableSpec();
    o.description = 'foo';
    o.displayName = 'foo';
    o.filesetSpec = buildGoogleCloudDatacatalogV1FilesetSpec();
    o.fullyQualifiedName = 'foo';
    o.gcsFilesetSpec = buildGoogleCloudDatacatalogV1GcsFilesetSpec();
    o.integratedSystem = 'foo';
    o.labels = buildUnnamed5();
    o.linkedResource = 'foo';
    o.name = 'foo';
    o.personalDetails = buildGoogleCloudDatacatalogV1PersonalDetails();
    o.routineSpec = buildGoogleCloudDatacatalogV1RoutineSpec();
    o.schema = buildGoogleCloudDatacatalogV1Schema();
    o.sourceSystemTimestamps = buildGoogleCloudDatacatalogV1SystemTimestamps();
    o.type = 'foo';
    o.usageSignal = buildGoogleCloudDatacatalogV1UsageSignal();
    o.userSpecifiedSystem = 'foo';
    o.userSpecifiedType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1Entry--;
  return o;
}

void checkGoogleCloudDatacatalogV1Entry(api.GoogleCloudDatacatalogV1Entry o) {
  buildCounterGoogleCloudDatacatalogV1Entry++;
  if (buildCounterGoogleCloudDatacatalogV1Entry < 3) {
    checkGoogleCloudDatacatalogV1BigQueryDateShardedSpec(
        o.bigqueryDateShardedSpec!);
    checkGoogleCloudDatacatalogV1BigQueryTableSpec(o.bigqueryTableSpec!);
    checkGoogleCloudDatacatalogV1BusinessContext(o.businessContext!);
    checkGoogleCloudDatacatalogV1DataSource(o.dataSource!);
    checkGoogleCloudDatacatalogV1DataSourceConnectionSpec(
        o.dataSourceConnectionSpec!);
    checkGoogleCloudDatacatalogV1DatabaseTableSpec(o.databaseTableSpec!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1FilesetSpec(o.filesetSpec!);
    unittest.expect(
      o.fullyQualifiedName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1GcsFilesetSpec(o.gcsFilesetSpec!);
    unittest.expect(
      o.integratedSystem!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.labels!);
    unittest.expect(
      o.linkedResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1PersonalDetails(o.personalDetails!);
    checkGoogleCloudDatacatalogV1RoutineSpec(o.routineSpec!);
    checkGoogleCloudDatacatalogV1Schema(o.schema!);
    checkGoogleCloudDatacatalogV1SystemTimestamps(o.sourceSystemTimestamps!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1UsageSignal(o.usageSignal!);
    unittest.expect(
      o.userSpecifiedSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userSpecifiedType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1Entry--;
}

core.int buildCounterGoogleCloudDatacatalogV1EntryGroup = 0;
api.GoogleCloudDatacatalogV1EntryGroup
    buildGoogleCloudDatacatalogV1EntryGroup() {
  final o = api.GoogleCloudDatacatalogV1EntryGroup();
  buildCounterGoogleCloudDatacatalogV1EntryGroup++;
  if (buildCounterGoogleCloudDatacatalogV1EntryGroup < 3) {
    o.dataCatalogTimestamps = buildGoogleCloudDatacatalogV1SystemTimestamps();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1EntryGroup--;
  return o;
}

void checkGoogleCloudDatacatalogV1EntryGroup(
    api.GoogleCloudDatacatalogV1EntryGroup o) {
  buildCounterGoogleCloudDatacatalogV1EntryGroup++;
  if (buildCounterGoogleCloudDatacatalogV1EntryGroup < 3) {
    checkGoogleCloudDatacatalogV1SystemTimestamps(o.dataCatalogTimestamps!);
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
  buildCounterGoogleCloudDatacatalogV1EntryGroup--;
}

core.int buildCounterGoogleCloudDatacatalogV1EntryOverview = 0;
api.GoogleCloudDatacatalogV1EntryOverview
    buildGoogleCloudDatacatalogV1EntryOverview() {
  final o = api.GoogleCloudDatacatalogV1EntryOverview();
  buildCounterGoogleCloudDatacatalogV1EntryOverview++;
  if (buildCounterGoogleCloudDatacatalogV1EntryOverview < 3) {
    o.overview = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1EntryOverview--;
  return o;
}

void checkGoogleCloudDatacatalogV1EntryOverview(
    api.GoogleCloudDatacatalogV1EntryOverview o) {
  buildCounterGoogleCloudDatacatalogV1EntryOverview++;
  if (buildCounterGoogleCloudDatacatalogV1EntryOverview < 3) {
    unittest.expect(
      o.overview!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1EntryOverview--;
}

core.List<api.GoogleCloudDatacatalogV1SerializedTaxonomy> buildUnnamed6() => [
      buildGoogleCloudDatacatalogV1SerializedTaxonomy(),
      buildGoogleCloudDatacatalogV1SerializedTaxonomy(),
    ];

void checkUnnamed6(
    core.List<api.GoogleCloudDatacatalogV1SerializedTaxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1SerializedTaxonomy(o[0]);
  checkGoogleCloudDatacatalogV1SerializedTaxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1ExportTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1ExportTaxonomiesResponse
    buildGoogleCloudDatacatalogV1ExportTaxonomiesResponse() {
  final o = api.GoogleCloudDatacatalogV1ExportTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1ExportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ExportTaxonomiesResponse < 3) {
    o.taxonomies = buildUnnamed6();
  }
  buildCounterGoogleCloudDatacatalogV1ExportTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1ExportTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1ExportTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1ExportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ExportTaxonomiesResponse < 3) {
    checkUnnamed6(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1ExportTaxonomiesResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1FieldType = 0;
api.GoogleCloudDatacatalogV1FieldType buildGoogleCloudDatacatalogV1FieldType() {
  final o = api.GoogleCloudDatacatalogV1FieldType();
  buildCounterGoogleCloudDatacatalogV1FieldType++;
  if (buildCounterGoogleCloudDatacatalogV1FieldType < 3) {
    o.enumType = buildGoogleCloudDatacatalogV1FieldTypeEnumType();
    o.primitiveType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1FieldType--;
  return o;
}

void checkGoogleCloudDatacatalogV1FieldType(
    api.GoogleCloudDatacatalogV1FieldType o) {
  buildCounterGoogleCloudDatacatalogV1FieldType++;
  if (buildCounterGoogleCloudDatacatalogV1FieldType < 3) {
    checkGoogleCloudDatacatalogV1FieldTypeEnumType(o.enumType!);
    unittest.expect(
      o.primitiveType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1FieldType--;
}

core.List<api.GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue>
    buildUnnamed7() => [
          buildGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue(),
          buildGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue(),
        ];

void checkUnnamed7(
    core.List<api.GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue(o[0]);
  checkGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1FieldTypeEnumType = 0;
api.GoogleCloudDatacatalogV1FieldTypeEnumType
    buildGoogleCloudDatacatalogV1FieldTypeEnumType() {
  final o = api.GoogleCloudDatacatalogV1FieldTypeEnumType();
  buildCounterGoogleCloudDatacatalogV1FieldTypeEnumType++;
  if (buildCounterGoogleCloudDatacatalogV1FieldTypeEnumType < 3) {
    o.allowedValues = buildUnnamed7();
  }
  buildCounterGoogleCloudDatacatalogV1FieldTypeEnumType--;
  return o;
}

void checkGoogleCloudDatacatalogV1FieldTypeEnumType(
    api.GoogleCloudDatacatalogV1FieldTypeEnumType o) {
  buildCounterGoogleCloudDatacatalogV1FieldTypeEnumType++;
  if (buildCounterGoogleCloudDatacatalogV1FieldTypeEnumType < 3) {
    checkUnnamed7(o.allowedValues!);
  }
  buildCounterGoogleCloudDatacatalogV1FieldTypeEnumType--;
}

core.int buildCounterGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue = 0;
api.GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue
    buildGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue() {
  final o = api.GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue();
  buildCounterGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue < 3) {
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue--;
  return o;
}

void checkGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue(
    api.GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue o) {
  buildCounterGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue--;
}

core.int buildCounterGoogleCloudDatacatalogV1FilesetSpec = 0;
api.GoogleCloudDatacatalogV1FilesetSpec
    buildGoogleCloudDatacatalogV1FilesetSpec() {
  final o = api.GoogleCloudDatacatalogV1FilesetSpec();
  buildCounterGoogleCloudDatacatalogV1FilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1FilesetSpec < 3) {
    o.dataplexFileset = buildGoogleCloudDatacatalogV1DataplexFilesetSpec();
  }
  buildCounterGoogleCloudDatacatalogV1FilesetSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1FilesetSpec(
    api.GoogleCloudDatacatalogV1FilesetSpec o) {
  buildCounterGoogleCloudDatacatalogV1FilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1FilesetSpec < 3) {
    checkGoogleCloudDatacatalogV1DataplexFilesetSpec(o.dataplexFileset!);
  }
  buildCounterGoogleCloudDatacatalogV1FilesetSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1GcsFileSpec = 0;
api.GoogleCloudDatacatalogV1GcsFileSpec
    buildGoogleCloudDatacatalogV1GcsFileSpec() {
  final o = api.GoogleCloudDatacatalogV1GcsFileSpec();
  buildCounterGoogleCloudDatacatalogV1GcsFileSpec++;
  if (buildCounterGoogleCloudDatacatalogV1GcsFileSpec < 3) {
    o.filePath = 'foo';
    o.gcsTimestamps = buildGoogleCloudDatacatalogV1SystemTimestamps();
    o.sizeBytes = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1GcsFileSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1GcsFileSpec(
    api.GoogleCloudDatacatalogV1GcsFileSpec o) {
  buildCounterGoogleCloudDatacatalogV1GcsFileSpec++;
  if (buildCounterGoogleCloudDatacatalogV1GcsFileSpec < 3) {
    unittest.expect(
      o.filePath!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1SystemTimestamps(o.gcsTimestamps!);
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1GcsFileSpec--;
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

core.List<api.GoogleCloudDatacatalogV1GcsFileSpec> buildUnnamed9() => [
      buildGoogleCloudDatacatalogV1GcsFileSpec(),
      buildGoogleCloudDatacatalogV1GcsFileSpec(),
    ];

void checkUnnamed9(core.List<api.GoogleCloudDatacatalogV1GcsFileSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1GcsFileSpec(o[0]);
  checkGoogleCloudDatacatalogV1GcsFileSpec(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1GcsFilesetSpec = 0;
api.GoogleCloudDatacatalogV1GcsFilesetSpec
    buildGoogleCloudDatacatalogV1GcsFilesetSpec() {
  final o = api.GoogleCloudDatacatalogV1GcsFilesetSpec();
  buildCounterGoogleCloudDatacatalogV1GcsFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1GcsFilesetSpec < 3) {
    o.filePatterns = buildUnnamed8();
    o.sampleGcsFileSpecs = buildUnnamed9();
  }
  buildCounterGoogleCloudDatacatalogV1GcsFilesetSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1GcsFilesetSpec(
    api.GoogleCloudDatacatalogV1GcsFilesetSpec o) {
  buildCounterGoogleCloudDatacatalogV1GcsFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1GcsFilesetSpec < 3) {
    checkUnnamed8(o.filePatterns!);
    checkUnnamed9(o.sampleGcsFileSpecs!);
  }
  buildCounterGoogleCloudDatacatalogV1GcsFilesetSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesRequest = 0;
api.GoogleCloudDatacatalogV1ImportTaxonomiesRequest
    buildGoogleCloudDatacatalogV1ImportTaxonomiesRequest() {
  final o = api.GoogleCloudDatacatalogV1ImportTaxonomiesRequest();
  buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesRequest++;
  if (buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesRequest < 3) {
    o.crossRegionalSource = buildGoogleCloudDatacatalogV1CrossRegionalSource();
    o.inlineSource = buildGoogleCloudDatacatalogV1InlineSource();
  }
  buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1ImportTaxonomiesRequest(
    api.GoogleCloudDatacatalogV1ImportTaxonomiesRequest o) {
  buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesRequest++;
  if (buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesRequest < 3) {
    checkGoogleCloudDatacatalogV1CrossRegionalSource(o.crossRegionalSource!);
    checkGoogleCloudDatacatalogV1InlineSource(o.inlineSource!);
  }
  buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesRequest--;
}

core.List<api.GoogleCloudDatacatalogV1Taxonomy> buildUnnamed10() => [
      buildGoogleCloudDatacatalogV1Taxonomy(),
      buildGoogleCloudDatacatalogV1Taxonomy(),
    ];

void checkUnnamed10(core.List<api.GoogleCloudDatacatalogV1Taxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1Taxonomy(o[0]);
  checkGoogleCloudDatacatalogV1Taxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1ImportTaxonomiesResponse
    buildGoogleCloudDatacatalogV1ImportTaxonomiesResponse() {
  final o = api.GoogleCloudDatacatalogV1ImportTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesResponse < 3) {
    o.taxonomies = buildUnnamed10();
  }
  buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1ImportTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1ImportTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesResponse < 3) {
    checkUnnamed10(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1ImportTaxonomiesResponse--;
}

core.List<api.GoogleCloudDatacatalogV1SerializedTaxonomy> buildUnnamed11() => [
      buildGoogleCloudDatacatalogV1SerializedTaxonomy(),
      buildGoogleCloudDatacatalogV1SerializedTaxonomy(),
    ];

void checkUnnamed11(
    core.List<api.GoogleCloudDatacatalogV1SerializedTaxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1SerializedTaxonomy(o[0]);
  checkGoogleCloudDatacatalogV1SerializedTaxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1InlineSource = 0;
api.GoogleCloudDatacatalogV1InlineSource
    buildGoogleCloudDatacatalogV1InlineSource() {
  final o = api.GoogleCloudDatacatalogV1InlineSource();
  buildCounterGoogleCloudDatacatalogV1InlineSource++;
  if (buildCounterGoogleCloudDatacatalogV1InlineSource < 3) {
    o.taxonomies = buildUnnamed11();
  }
  buildCounterGoogleCloudDatacatalogV1InlineSource--;
  return o;
}

void checkGoogleCloudDatacatalogV1InlineSource(
    api.GoogleCloudDatacatalogV1InlineSource o) {
  buildCounterGoogleCloudDatacatalogV1InlineSource++;
  if (buildCounterGoogleCloudDatacatalogV1InlineSource < 3) {
    checkUnnamed11(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1InlineSource--;
}

core.List<api.GoogleCloudDatacatalogV1Entry> buildUnnamed12() => [
      buildGoogleCloudDatacatalogV1Entry(),
      buildGoogleCloudDatacatalogV1Entry(),
    ];

void checkUnnamed12(core.List<api.GoogleCloudDatacatalogV1Entry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1Entry(o[0]);
  checkGoogleCloudDatacatalogV1Entry(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1ListEntriesResponse = 0;
api.GoogleCloudDatacatalogV1ListEntriesResponse
    buildGoogleCloudDatacatalogV1ListEntriesResponse() {
  final o = api.GoogleCloudDatacatalogV1ListEntriesResponse();
  buildCounterGoogleCloudDatacatalogV1ListEntriesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ListEntriesResponse < 3) {
    o.entries = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1ListEntriesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1ListEntriesResponse(
    api.GoogleCloudDatacatalogV1ListEntriesResponse o) {
  buildCounterGoogleCloudDatacatalogV1ListEntriesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ListEntriesResponse < 3) {
    checkUnnamed12(o.entries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1ListEntriesResponse--;
}

core.List<api.GoogleCloudDatacatalogV1EntryGroup> buildUnnamed13() => [
      buildGoogleCloudDatacatalogV1EntryGroup(),
      buildGoogleCloudDatacatalogV1EntryGroup(),
    ];

void checkUnnamed13(core.List<api.GoogleCloudDatacatalogV1EntryGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1EntryGroup(o[0]);
  checkGoogleCloudDatacatalogV1EntryGroup(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1ListEntryGroupsResponse = 0;
api.GoogleCloudDatacatalogV1ListEntryGroupsResponse
    buildGoogleCloudDatacatalogV1ListEntryGroupsResponse() {
  final o = api.GoogleCloudDatacatalogV1ListEntryGroupsResponse();
  buildCounterGoogleCloudDatacatalogV1ListEntryGroupsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ListEntryGroupsResponse < 3) {
    o.entryGroups = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1ListEntryGroupsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1ListEntryGroupsResponse(
    api.GoogleCloudDatacatalogV1ListEntryGroupsResponse o) {
  buildCounterGoogleCloudDatacatalogV1ListEntryGroupsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ListEntryGroupsResponse < 3) {
    checkUnnamed13(o.entryGroups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1ListEntryGroupsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1PolicyTag> buildUnnamed14() => [
      buildGoogleCloudDatacatalogV1PolicyTag(),
      buildGoogleCloudDatacatalogV1PolicyTag(),
    ];

void checkUnnamed14(core.List<api.GoogleCloudDatacatalogV1PolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1PolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1PolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1ListPolicyTagsResponse = 0;
api.GoogleCloudDatacatalogV1ListPolicyTagsResponse
    buildGoogleCloudDatacatalogV1ListPolicyTagsResponse() {
  final o = api.GoogleCloudDatacatalogV1ListPolicyTagsResponse();
  buildCounterGoogleCloudDatacatalogV1ListPolicyTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ListPolicyTagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.policyTags = buildUnnamed14();
  }
  buildCounterGoogleCloudDatacatalogV1ListPolicyTagsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1ListPolicyTagsResponse(
    api.GoogleCloudDatacatalogV1ListPolicyTagsResponse o) {
  buildCounterGoogleCloudDatacatalogV1ListPolicyTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ListPolicyTagsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.policyTags!);
  }
  buildCounterGoogleCloudDatacatalogV1ListPolicyTagsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1Tag> buildUnnamed15() => [
      buildGoogleCloudDatacatalogV1Tag(),
      buildGoogleCloudDatacatalogV1Tag(),
    ];

void checkUnnamed15(core.List<api.GoogleCloudDatacatalogV1Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1Tag(o[0]);
  checkGoogleCloudDatacatalogV1Tag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1ListTagsResponse = 0;
api.GoogleCloudDatacatalogV1ListTagsResponse
    buildGoogleCloudDatacatalogV1ListTagsResponse() {
  final o = api.GoogleCloudDatacatalogV1ListTagsResponse();
  buildCounterGoogleCloudDatacatalogV1ListTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ListTagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tags = buildUnnamed15();
  }
  buildCounterGoogleCloudDatacatalogV1ListTagsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1ListTagsResponse(
    api.GoogleCloudDatacatalogV1ListTagsResponse o) {
  buildCounterGoogleCloudDatacatalogV1ListTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ListTagsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.tags!);
  }
  buildCounterGoogleCloudDatacatalogV1ListTagsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1Taxonomy> buildUnnamed16() => [
      buildGoogleCloudDatacatalogV1Taxonomy(),
      buildGoogleCloudDatacatalogV1Taxonomy(),
    ];

void checkUnnamed16(core.List<api.GoogleCloudDatacatalogV1Taxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1Taxonomy(o[0]);
  checkGoogleCloudDatacatalogV1Taxonomy(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1ListTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1ListTaxonomiesResponse
    buildGoogleCloudDatacatalogV1ListTaxonomiesResponse() {
  final o = api.GoogleCloudDatacatalogV1ListTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1ListTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ListTaxonomiesResponse < 3) {
    o.nextPageToken = 'foo';
    o.taxonomies = buildUnnamed16();
  }
  buildCounterGoogleCloudDatacatalogV1ListTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1ListTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1ListTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1ListTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1ListTaxonomiesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1ListTaxonomiesResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1ModifyEntryContactsRequest = 0;
api.GoogleCloudDatacatalogV1ModifyEntryContactsRequest
    buildGoogleCloudDatacatalogV1ModifyEntryContactsRequest() {
  final o = api.GoogleCloudDatacatalogV1ModifyEntryContactsRequest();
  buildCounterGoogleCloudDatacatalogV1ModifyEntryContactsRequest++;
  if (buildCounterGoogleCloudDatacatalogV1ModifyEntryContactsRequest < 3) {
    o.contacts = buildGoogleCloudDatacatalogV1Contacts();
  }
  buildCounterGoogleCloudDatacatalogV1ModifyEntryContactsRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1ModifyEntryContactsRequest(
    api.GoogleCloudDatacatalogV1ModifyEntryContactsRequest o) {
  buildCounterGoogleCloudDatacatalogV1ModifyEntryContactsRequest++;
  if (buildCounterGoogleCloudDatacatalogV1ModifyEntryContactsRequest < 3) {
    checkGoogleCloudDatacatalogV1Contacts(o.contacts!);
  }
  buildCounterGoogleCloudDatacatalogV1ModifyEntryContactsRequest--;
}

core.int buildCounterGoogleCloudDatacatalogV1ModifyEntryOverviewRequest = 0;
api.GoogleCloudDatacatalogV1ModifyEntryOverviewRequest
    buildGoogleCloudDatacatalogV1ModifyEntryOverviewRequest() {
  final o = api.GoogleCloudDatacatalogV1ModifyEntryOverviewRequest();
  buildCounterGoogleCloudDatacatalogV1ModifyEntryOverviewRequest++;
  if (buildCounterGoogleCloudDatacatalogV1ModifyEntryOverviewRequest < 3) {
    o.entryOverview = buildGoogleCloudDatacatalogV1EntryOverview();
  }
  buildCounterGoogleCloudDatacatalogV1ModifyEntryOverviewRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1ModifyEntryOverviewRequest(
    api.GoogleCloudDatacatalogV1ModifyEntryOverviewRequest o) {
  buildCounterGoogleCloudDatacatalogV1ModifyEntryOverviewRequest++;
  if (buildCounterGoogleCloudDatacatalogV1ModifyEntryOverviewRequest < 3) {
    checkGoogleCloudDatacatalogV1EntryOverview(o.entryOverview!);
  }
  buildCounterGoogleCloudDatacatalogV1ModifyEntryOverviewRequest--;
}

core.int buildCounterGoogleCloudDatacatalogV1PersonalDetails = 0;
api.GoogleCloudDatacatalogV1PersonalDetails
    buildGoogleCloudDatacatalogV1PersonalDetails() {
  final o = api.GoogleCloudDatacatalogV1PersonalDetails();
  buildCounterGoogleCloudDatacatalogV1PersonalDetails++;
  if (buildCounterGoogleCloudDatacatalogV1PersonalDetails < 3) {
    o.starTime = 'foo';
    o.starred = true;
  }
  buildCounterGoogleCloudDatacatalogV1PersonalDetails--;
  return o;
}

void checkGoogleCloudDatacatalogV1PersonalDetails(
    api.GoogleCloudDatacatalogV1PersonalDetails o) {
  buildCounterGoogleCloudDatacatalogV1PersonalDetails++;
  if (buildCounterGoogleCloudDatacatalogV1PersonalDetails < 3) {
    unittest.expect(
      o.starTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.starred!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatacatalogV1PersonalDetails--;
}

core.int buildCounterGoogleCloudDatacatalogV1PhysicalSchema = 0;
api.GoogleCloudDatacatalogV1PhysicalSchema
    buildGoogleCloudDatacatalogV1PhysicalSchema() {
  final o = api.GoogleCloudDatacatalogV1PhysicalSchema();
  buildCounterGoogleCloudDatacatalogV1PhysicalSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchema < 3) {
    o.avro = buildGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema();
    o.csv = buildGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema();
    o.orc = buildGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema();
    o.parquet = buildGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema();
    o.protobuf = buildGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema();
    o.thrift = buildGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema();
  }
  buildCounterGoogleCloudDatacatalogV1PhysicalSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1PhysicalSchema(
    api.GoogleCloudDatacatalogV1PhysicalSchema o) {
  buildCounterGoogleCloudDatacatalogV1PhysicalSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchema < 3) {
    checkGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema(o.avro!);
    checkGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema(o.csv!);
    checkGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema(o.orc!);
    checkGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema(o.parquet!);
    checkGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema(o.protobuf!);
    checkGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema(o.thrift!);
  }
  buildCounterGoogleCloudDatacatalogV1PhysicalSchema--;
}

core.int buildCounterGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema = 0;
api.GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema
    buildGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema() {
  final o = api.GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema();
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema(
    api.GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema o) {
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema--;
}

core.int buildCounterGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema = 0;
api.GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema
    buildGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema() {
  final o = api.GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema();
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema < 3) {}
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema(
    api.GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema o) {
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema < 3) {}
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema--;
}

core.int buildCounterGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema = 0;
api.GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema
    buildGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema() {
  final o = api.GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema();
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema < 3) {}
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema(
    api.GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema o) {
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema < 3) {}
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema--;
}

core.int buildCounterGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema = 0;
api.GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema
    buildGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema() {
  final o = api.GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema();
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema < 3) {}
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema(
    api.GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema o) {
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema < 3) {}
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema--;
}

core.int buildCounterGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema = 0;
api.GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema
    buildGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema() {
  final o = api.GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema();
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema(
    api.GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema o) {
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema--;
}

core.int buildCounterGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema = 0;
api.GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema
    buildGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema() {
  final o = api.GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema();
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema(
    api.GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema o) {
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema++;
  if (buildCounterGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema--;
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

core.int buildCounterGoogleCloudDatacatalogV1PolicyTag = 0;
api.GoogleCloudDatacatalogV1PolicyTag buildGoogleCloudDatacatalogV1PolicyTag() {
  final o = api.GoogleCloudDatacatalogV1PolicyTag();
  buildCounterGoogleCloudDatacatalogV1PolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1PolicyTag < 3) {
    o.childPolicyTags = buildUnnamed17();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.parentPolicyTag = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1PolicyTag--;
  return o;
}

void checkGoogleCloudDatacatalogV1PolicyTag(
    api.GoogleCloudDatacatalogV1PolicyTag o) {
  buildCounterGoogleCloudDatacatalogV1PolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1PolicyTag < 3) {
    checkUnnamed17(o.childPolicyTags!);
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
  buildCounterGoogleCloudDatacatalogV1PolicyTag--;
}

core.int
    buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest =
    0;
api.GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest
    buildGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest() {
  final o =
      api.GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest();
  buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest++;
  if (buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest <
      3) {
    o.newEnumValueDisplayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest(
    api.GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest o) {
  buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest++;
  if (buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest <
      3) {
    unittest.expect(
      o.newEnumValueDisplayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest--;
}

core.int buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest = 0;
api.GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest
    buildGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest() {
  final o = api.GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest();
  buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest++;
  if (buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest < 3) {
    o.newTagTemplateFieldId = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest(
    api.GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest o) {
  buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest++;
  if (buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest < 3) {
    unittest.expect(
      o.newTagTemplateFieldId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest--;
}

core.int buildCounterGoogleCloudDatacatalogV1ReplaceTaxonomyRequest = 0;
api.GoogleCloudDatacatalogV1ReplaceTaxonomyRequest
    buildGoogleCloudDatacatalogV1ReplaceTaxonomyRequest() {
  final o = api.GoogleCloudDatacatalogV1ReplaceTaxonomyRequest();
  buildCounterGoogleCloudDatacatalogV1ReplaceTaxonomyRequest++;
  if (buildCounterGoogleCloudDatacatalogV1ReplaceTaxonomyRequest < 3) {
    o.serializedTaxonomy = buildGoogleCloudDatacatalogV1SerializedTaxonomy();
  }
  buildCounterGoogleCloudDatacatalogV1ReplaceTaxonomyRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1ReplaceTaxonomyRequest(
    api.GoogleCloudDatacatalogV1ReplaceTaxonomyRequest o) {
  buildCounterGoogleCloudDatacatalogV1ReplaceTaxonomyRequest++;
  if (buildCounterGoogleCloudDatacatalogV1ReplaceTaxonomyRequest < 3) {
    checkGoogleCloudDatacatalogV1SerializedTaxonomy(o.serializedTaxonomy!);
  }
  buildCounterGoogleCloudDatacatalogV1ReplaceTaxonomyRequest--;
}

core.List<api.GoogleCloudDatacatalogV1RoutineSpecArgument> buildUnnamed18() => [
      buildGoogleCloudDatacatalogV1RoutineSpecArgument(),
      buildGoogleCloudDatacatalogV1RoutineSpecArgument(),
    ];

void checkUnnamed18(
    core.List<api.GoogleCloudDatacatalogV1RoutineSpecArgument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1RoutineSpecArgument(o[0]);
  checkGoogleCloudDatacatalogV1RoutineSpecArgument(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1RoutineSpec = 0;
api.GoogleCloudDatacatalogV1RoutineSpec
    buildGoogleCloudDatacatalogV1RoutineSpec() {
  final o = api.GoogleCloudDatacatalogV1RoutineSpec();
  buildCounterGoogleCloudDatacatalogV1RoutineSpec++;
  if (buildCounterGoogleCloudDatacatalogV1RoutineSpec < 3) {
    o.bigqueryRoutineSpec = buildGoogleCloudDatacatalogV1BigQueryRoutineSpec();
    o.definitionBody = 'foo';
    o.language = 'foo';
    o.returnType = 'foo';
    o.routineArguments = buildUnnamed18();
    o.routineType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1RoutineSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1RoutineSpec(
    api.GoogleCloudDatacatalogV1RoutineSpec o) {
  buildCounterGoogleCloudDatacatalogV1RoutineSpec++;
  if (buildCounterGoogleCloudDatacatalogV1RoutineSpec < 3) {
    checkGoogleCloudDatacatalogV1BigQueryRoutineSpec(o.bigqueryRoutineSpec!);
    unittest.expect(
      o.definitionBody!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnType!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.routineArguments!);
    unittest.expect(
      o.routineType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1RoutineSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1RoutineSpecArgument = 0;
api.GoogleCloudDatacatalogV1RoutineSpecArgument
    buildGoogleCloudDatacatalogV1RoutineSpecArgument() {
  final o = api.GoogleCloudDatacatalogV1RoutineSpecArgument();
  buildCounterGoogleCloudDatacatalogV1RoutineSpecArgument++;
  if (buildCounterGoogleCloudDatacatalogV1RoutineSpecArgument < 3) {
    o.mode = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1RoutineSpecArgument--;
  return o;
}

void checkGoogleCloudDatacatalogV1RoutineSpecArgument(
    api.GoogleCloudDatacatalogV1RoutineSpecArgument o) {
  buildCounterGoogleCloudDatacatalogV1RoutineSpecArgument++;
  if (buildCounterGoogleCloudDatacatalogV1RoutineSpecArgument < 3) {
    unittest.expect(
      o.mode!,
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
  buildCounterGoogleCloudDatacatalogV1RoutineSpecArgument--;
}

core.List<api.GoogleCloudDatacatalogV1ColumnSchema> buildUnnamed19() => [
      buildGoogleCloudDatacatalogV1ColumnSchema(),
      buildGoogleCloudDatacatalogV1ColumnSchema(),
    ];

void checkUnnamed19(core.List<api.GoogleCloudDatacatalogV1ColumnSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1ColumnSchema(o[0]);
  checkGoogleCloudDatacatalogV1ColumnSchema(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1Schema = 0;
api.GoogleCloudDatacatalogV1Schema buildGoogleCloudDatacatalogV1Schema() {
  final o = api.GoogleCloudDatacatalogV1Schema();
  buildCounterGoogleCloudDatacatalogV1Schema++;
  if (buildCounterGoogleCloudDatacatalogV1Schema < 3) {
    o.columns = buildUnnamed19();
  }
  buildCounterGoogleCloudDatacatalogV1Schema--;
  return o;
}

void checkGoogleCloudDatacatalogV1Schema(api.GoogleCloudDatacatalogV1Schema o) {
  buildCounterGoogleCloudDatacatalogV1Schema++;
  if (buildCounterGoogleCloudDatacatalogV1Schema < 3) {
    checkUnnamed19(o.columns!);
  }
  buildCounterGoogleCloudDatacatalogV1Schema--;
}

core.int buildCounterGoogleCloudDatacatalogV1SearchCatalogRequest = 0;
api.GoogleCloudDatacatalogV1SearchCatalogRequest
    buildGoogleCloudDatacatalogV1SearchCatalogRequest() {
  final o = api.GoogleCloudDatacatalogV1SearchCatalogRequest();
  buildCounterGoogleCloudDatacatalogV1SearchCatalogRequest++;
  if (buildCounterGoogleCloudDatacatalogV1SearchCatalogRequest < 3) {
    o.orderBy = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = 'foo';
    o.scope = buildGoogleCloudDatacatalogV1SearchCatalogRequestScope();
  }
  buildCounterGoogleCloudDatacatalogV1SearchCatalogRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1SearchCatalogRequest(
    api.GoogleCloudDatacatalogV1SearchCatalogRequest o) {
  buildCounterGoogleCloudDatacatalogV1SearchCatalogRequest++;
  if (buildCounterGoogleCloudDatacatalogV1SearchCatalogRequest < 3) {
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
    checkGoogleCloudDatacatalogV1SearchCatalogRequestScope(o.scope!);
  }
  buildCounterGoogleCloudDatacatalogV1SearchCatalogRequest--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatacatalogV1SearchCatalogRequestScope = 0;
api.GoogleCloudDatacatalogV1SearchCatalogRequestScope
    buildGoogleCloudDatacatalogV1SearchCatalogRequestScope() {
  final o = api.GoogleCloudDatacatalogV1SearchCatalogRequestScope();
  buildCounterGoogleCloudDatacatalogV1SearchCatalogRequestScope++;
  if (buildCounterGoogleCloudDatacatalogV1SearchCatalogRequestScope < 3) {
    o.includeGcpPublicDatasets = true;
    o.includeOrgIds = buildUnnamed20();
    o.includeProjectIds = buildUnnamed21();
    o.includePublicTagTemplates = true;
    o.restrictedLocations = buildUnnamed22();
    o.starredOnly = true;
  }
  buildCounterGoogleCloudDatacatalogV1SearchCatalogRequestScope--;
  return o;
}

void checkGoogleCloudDatacatalogV1SearchCatalogRequestScope(
    api.GoogleCloudDatacatalogV1SearchCatalogRequestScope o) {
  buildCounterGoogleCloudDatacatalogV1SearchCatalogRequestScope++;
  if (buildCounterGoogleCloudDatacatalogV1SearchCatalogRequestScope < 3) {
    unittest.expect(o.includeGcpPublicDatasets!, unittest.isTrue);
    checkUnnamed20(o.includeOrgIds!);
    checkUnnamed21(o.includeProjectIds!);
    unittest.expect(o.includePublicTagTemplates!, unittest.isTrue);
    checkUnnamed22(o.restrictedLocations!);
    unittest.expect(o.starredOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatacatalogV1SearchCatalogRequestScope--;
}

core.List<api.GoogleCloudDatacatalogV1SearchCatalogResult> buildUnnamed23() => [
      buildGoogleCloudDatacatalogV1SearchCatalogResult(),
      buildGoogleCloudDatacatalogV1SearchCatalogResult(),
    ];

void checkUnnamed23(
    core.List<api.GoogleCloudDatacatalogV1SearchCatalogResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1SearchCatalogResult(o[0]);
  checkGoogleCloudDatacatalogV1SearchCatalogResult(o[1]);
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatacatalogV1SearchCatalogResponse = 0;
api.GoogleCloudDatacatalogV1SearchCatalogResponse
    buildGoogleCloudDatacatalogV1SearchCatalogResponse() {
  final o = api.GoogleCloudDatacatalogV1SearchCatalogResponse();
  buildCounterGoogleCloudDatacatalogV1SearchCatalogResponse++;
  if (buildCounterGoogleCloudDatacatalogV1SearchCatalogResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed23();
    o.unreachable = buildUnnamed24();
  }
  buildCounterGoogleCloudDatacatalogV1SearchCatalogResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1SearchCatalogResponse(
    api.GoogleCloudDatacatalogV1SearchCatalogResponse o) {
  buildCounterGoogleCloudDatacatalogV1SearchCatalogResponse++;
  if (buildCounterGoogleCloudDatacatalogV1SearchCatalogResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.results!);
    checkUnnamed24(o.unreachable!);
  }
  buildCounterGoogleCloudDatacatalogV1SearchCatalogResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1SearchCatalogResult = 0;
api.GoogleCloudDatacatalogV1SearchCatalogResult
    buildGoogleCloudDatacatalogV1SearchCatalogResult() {
  final o = api.GoogleCloudDatacatalogV1SearchCatalogResult();
  buildCounterGoogleCloudDatacatalogV1SearchCatalogResult++;
  if (buildCounterGoogleCloudDatacatalogV1SearchCatalogResult < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.fullyQualifiedName = 'foo';
    o.integratedSystem = 'foo';
    o.linkedResource = 'foo';
    o.modifyTime = 'foo';
    o.relativeResourceName = 'foo';
    o.searchResultSubtype = 'foo';
    o.searchResultType = 'foo';
    o.userSpecifiedSystem = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1SearchCatalogResult--;
  return o;
}

void checkGoogleCloudDatacatalogV1SearchCatalogResult(
    api.GoogleCloudDatacatalogV1SearchCatalogResult o) {
  buildCounterGoogleCloudDatacatalogV1SearchCatalogResult++;
  if (buildCounterGoogleCloudDatacatalogV1SearchCatalogResult < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullyQualifiedName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.integratedSystem!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.userSpecifiedSystem!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1SearchCatalogResult--;
}

core.List<api.GoogleCloudDatacatalogV1SerializedPolicyTag> buildUnnamed25() => [
      buildGoogleCloudDatacatalogV1SerializedPolicyTag(),
      buildGoogleCloudDatacatalogV1SerializedPolicyTag(),
    ];

void checkUnnamed25(
    core.List<api.GoogleCloudDatacatalogV1SerializedPolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1SerializedPolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1SerializedPolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1SerializedPolicyTag = 0;
api.GoogleCloudDatacatalogV1SerializedPolicyTag
    buildGoogleCloudDatacatalogV1SerializedPolicyTag() {
  final o = api.GoogleCloudDatacatalogV1SerializedPolicyTag();
  buildCounterGoogleCloudDatacatalogV1SerializedPolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1SerializedPolicyTag < 3) {
    o.childPolicyTags = buildUnnamed25();
    o.description = 'foo';
    o.displayName = 'foo';
    o.policyTag = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1SerializedPolicyTag--;
  return o;
}

void checkGoogleCloudDatacatalogV1SerializedPolicyTag(
    api.GoogleCloudDatacatalogV1SerializedPolicyTag o) {
  buildCounterGoogleCloudDatacatalogV1SerializedPolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1SerializedPolicyTag < 3) {
    checkUnnamed25(o.childPolicyTags!);
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
  buildCounterGoogleCloudDatacatalogV1SerializedPolicyTag--;
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.List<api.GoogleCloudDatacatalogV1SerializedPolicyTag> buildUnnamed27() => [
      buildGoogleCloudDatacatalogV1SerializedPolicyTag(),
      buildGoogleCloudDatacatalogV1SerializedPolicyTag(),
    ];

void checkUnnamed27(
    core.List<api.GoogleCloudDatacatalogV1SerializedPolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1SerializedPolicyTag(o[0]);
  checkGoogleCloudDatacatalogV1SerializedPolicyTag(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogV1SerializedTaxonomy = 0;
api.GoogleCloudDatacatalogV1SerializedTaxonomy
    buildGoogleCloudDatacatalogV1SerializedTaxonomy() {
  final o = api.GoogleCloudDatacatalogV1SerializedTaxonomy();
  buildCounterGoogleCloudDatacatalogV1SerializedTaxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1SerializedTaxonomy < 3) {
    o.activatedPolicyTypes = buildUnnamed26();
    o.description = 'foo';
    o.displayName = 'foo';
    o.policyTags = buildUnnamed27();
  }
  buildCounterGoogleCloudDatacatalogV1SerializedTaxonomy--;
  return o;
}

void checkGoogleCloudDatacatalogV1SerializedTaxonomy(
    api.GoogleCloudDatacatalogV1SerializedTaxonomy o) {
  buildCounterGoogleCloudDatacatalogV1SerializedTaxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1SerializedTaxonomy < 3) {
    checkUnnamed26(o.activatedPolicyTypes!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.policyTags!);
  }
  buildCounterGoogleCloudDatacatalogV1SerializedTaxonomy--;
}

core.int buildCounterGoogleCloudDatacatalogV1StarEntryRequest = 0;
api.GoogleCloudDatacatalogV1StarEntryRequest
    buildGoogleCloudDatacatalogV1StarEntryRequest() {
  final o = api.GoogleCloudDatacatalogV1StarEntryRequest();
  buildCounterGoogleCloudDatacatalogV1StarEntryRequest++;
  if (buildCounterGoogleCloudDatacatalogV1StarEntryRequest < 3) {}
  buildCounterGoogleCloudDatacatalogV1StarEntryRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1StarEntryRequest(
    api.GoogleCloudDatacatalogV1StarEntryRequest o) {
  buildCounterGoogleCloudDatacatalogV1StarEntryRequest++;
  if (buildCounterGoogleCloudDatacatalogV1StarEntryRequest < 3) {}
  buildCounterGoogleCloudDatacatalogV1StarEntryRequest--;
}

core.int buildCounterGoogleCloudDatacatalogV1StarEntryResponse = 0;
api.GoogleCloudDatacatalogV1StarEntryResponse
    buildGoogleCloudDatacatalogV1StarEntryResponse() {
  final o = api.GoogleCloudDatacatalogV1StarEntryResponse();
  buildCounterGoogleCloudDatacatalogV1StarEntryResponse++;
  if (buildCounterGoogleCloudDatacatalogV1StarEntryResponse < 3) {}
  buildCounterGoogleCloudDatacatalogV1StarEntryResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1StarEntryResponse(
    api.GoogleCloudDatacatalogV1StarEntryResponse o) {
  buildCounterGoogleCloudDatacatalogV1StarEntryResponse++;
  if (buildCounterGoogleCloudDatacatalogV1StarEntryResponse < 3) {}
  buildCounterGoogleCloudDatacatalogV1StarEntryResponse--;
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatacatalogV1StorageProperties = 0;
api.GoogleCloudDatacatalogV1StorageProperties
    buildGoogleCloudDatacatalogV1StorageProperties() {
  final o = api.GoogleCloudDatacatalogV1StorageProperties();
  buildCounterGoogleCloudDatacatalogV1StorageProperties++;
  if (buildCounterGoogleCloudDatacatalogV1StorageProperties < 3) {
    o.filePattern = buildUnnamed28();
    o.fileType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1StorageProperties--;
  return o;
}

void checkGoogleCloudDatacatalogV1StorageProperties(
    api.GoogleCloudDatacatalogV1StorageProperties o) {
  buildCounterGoogleCloudDatacatalogV1StorageProperties++;
  if (buildCounterGoogleCloudDatacatalogV1StorageProperties < 3) {
    checkUnnamed28(o.filePattern!);
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1StorageProperties--;
}

core.int buildCounterGoogleCloudDatacatalogV1SystemTimestamps = 0;
api.GoogleCloudDatacatalogV1SystemTimestamps
    buildGoogleCloudDatacatalogV1SystemTimestamps() {
  final o = api.GoogleCloudDatacatalogV1SystemTimestamps();
  buildCounterGoogleCloudDatacatalogV1SystemTimestamps++;
  if (buildCounterGoogleCloudDatacatalogV1SystemTimestamps < 3) {
    o.createTime = 'foo';
    o.expireTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1SystemTimestamps--;
  return o;
}

void checkGoogleCloudDatacatalogV1SystemTimestamps(
    api.GoogleCloudDatacatalogV1SystemTimestamps o) {
  buildCounterGoogleCloudDatacatalogV1SystemTimestamps++;
  if (buildCounterGoogleCloudDatacatalogV1SystemTimestamps < 3) {
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
  buildCounterGoogleCloudDatacatalogV1SystemTimestamps--;
}

core.int buildCounterGoogleCloudDatacatalogV1TableSpec = 0;
api.GoogleCloudDatacatalogV1TableSpec buildGoogleCloudDatacatalogV1TableSpec() {
  final o = api.GoogleCloudDatacatalogV1TableSpec();
  buildCounterGoogleCloudDatacatalogV1TableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1TableSpec < 3) {
    o.groupedEntry = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1TableSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1TableSpec(
    api.GoogleCloudDatacatalogV1TableSpec o) {
  buildCounterGoogleCloudDatacatalogV1TableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1TableSpec < 3) {
    unittest.expect(
      o.groupedEntry!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1TableSpec--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1TagField> buildUnnamed29() =>
    {
      'x': buildGoogleCloudDatacatalogV1TagField(),
      'y': buildGoogleCloudDatacatalogV1TagField(),
    };

void checkUnnamed29(
    core.Map<core.String, api.GoogleCloudDatacatalogV1TagField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1TagField(o['x']!);
  checkGoogleCloudDatacatalogV1TagField(o['y']!);
}

core.int buildCounterGoogleCloudDatacatalogV1Tag = 0;
api.GoogleCloudDatacatalogV1Tag buildGoogleCloudDatacatalogV1Tag() {
  final o = api.GoogleCloudDatacatalogV1Tag();
  buildCounterGoogleCloudDatacatalogV1Tag++;
  if (buildCounterGoogleCloudDatacatalogV1Tag < 3) {
    o.column = 'foo';
    o.fields = buildUnnamed29();
    o.name = 'foo';
    o.template = 'foo';
    o.templateDisplayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1Tag--;
  return o;
}

void checkGoogleCloudDatacatalogV1Tag(api.GoogleCloudDatacatalogV1Tag o) {
  buildCounterGoogleCloudDatacatalogV1Tag++;
  if (buildCounterGoogleCloudDatacatalogV1Tag < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.fields!);
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
  buildCounterGoogleCloudDatacatalogV1Tag--;
}

core.int buildCounterGoogleCloudDatacatalogV1TagField = 0;
api.GoogleCloudDatacatalogV1TagField buildGoogleCloudDatacatalogV1TagField() {
  final o = api.GoogleCloudDatacatalogV1TagField();
  buildCounterGoogleCloudDatacatalogV1TagField++;
  if (buildCounterGoogleCloudDatacatalogV1TagField < 3) {
    o.boolValue = true;
    o.displayName = 'foo';
    o.doubleValue = 42.0;
    o.enumValue = buildGoogleCloudDatacatalogV1TagFieldEnumValue();
    o.order = 42;
    o.richtextValue = 'foo';
    o.stringValue = 'foo';
    o.timestampValue = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1TagField--;
  return o;
}

void checkGoogleCloudDatacatalogV1TagField(
    api.GoogleCloudDatacatalogV1TagField o) {
  buildCounterGoogleCloudDatacatalogV1TagField++;
  if (buildCounterGoogleCloudDatacatalogV1TagField < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDatacatalogV1TagFieldEnumValue(o.enumValue!);
    unittest.expect(
      o.order!,
      unittest.equals(42),
    );
    unittest.expect(
      o.richtextValue!,
      unittest.equals('foo'),
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
  buildCounterGoogleCloudDatacatalogV1TagField--;
}

core.int buildCounterGoogleCloudDatacatalogV1TagFieldEnumValue = 0;
api.GoogleCloudDatacatalogV1TagFieldEnumValue
    buildGoogleCloudDatacatalogV1TagFieldEnumValue() {
  final o = api.GoogleCloudDatacatalogV1TagFieldEnumValue();
  buildCounterGoogleCloudDatacatalogV1TagFieldEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1TagFieldEnumValue < 3) {
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1TagFieldEnumValue--;
  return o;
}

void checkGoogleCloudDatacatalogV1TagFieldEnumValue(
    api.GoogleCloudDatacatalogV1TagFieldEnumValue o) {
  buildCounterGoogleCloudDatacatalogV1TagFieldEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1TagFieldEnumValue < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1TagFieldEnumValue--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1TagTemplateField>
    buildUnnamed30() => {
          'x': buildGoogleCloudDatacatalogV1TagTemplateField(),
          'y': buildGoogleCloudDatacatalogV1TagTemplateField(),
        };

void checkUnnamed30(
    core.Map<core.String, api.GoogleCloudDatacatalogV1TagTemplateField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1TagTemplateField(o['x']!);
  checkGoogleCloudDatacatalogV1TagTemplateField(o['y']!);
}

core.int buildCounterGoogleCloudDatacatalogV1TagTemplate = 0;
api.GoogleCloudDatacatalogV1TagTemplate
    buildGoogleCloudDatacatalogV1TagTemplate() {
  final o = api.GoogleCloudDatacatalogV1TagTemplate();
  buildCounterGoogleCloudDatacatalogV1TagTemplate++;
  if (buildCounterGoogleCloudDatacatalogV1TagTemplate < 3) {
    o.displayName = 'foo';
    o.fields = buildUnnamed30();
    o.isPubliclyReadable = true;
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1TagTemplate--;
  return o;
}

void checkGoogleCloudDatacatalogV1TagTemplate(
    api.GoogleCloudDatacatalogV1TagTemplate o) {
  buildCounterGoogleCloudDatacatalogV1TagTemplate++;
  if (buildCounterGoogleCloudDatacatalogV1TagTemplate < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.fields!);
    unittest.expect(o.isPubliclyReadable!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1TagTemplate--;
}

core.int buildCounterGoogleCloudDatacatalogV1TagTemplateField = 0;
api.GoogleCloudDatacatalogV1TagTemplateField
    buildGoogleCloudDatacatalogV1TagTemplateField() {
  final o = api.GoogleCloudDatacatalogV1TagTemplateField();
  buildCounterGoogleCloudDatacatalogV1TagTemplateField++;
  if (buildCounterGoogleCloudDatacatalogV1TagTemplateField < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.isRequired = true;
    o.name = 'foo';
    o.order = 42;
    o.type = buildGoogleCloudDatacatalogV1FieldType();
  }
  buildCounterGoogleCloudDatacatalogV1TagTemplateField--;
  return o;
}

void checkGoogleCloudDatacatalogV1TagTemplateField(
    api.GoogleCloudDatacatalogV1TagTemplateField o) {
  buildCounterGoogleCloudDatacatalogV1TagTemplateField++;
  if (buildCounterGoogleCloudDatacatalogV1TagTemplateField < 3) {
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
    checkGoogleCloudDatacatalogV1FieldType(o.type!);
  }
  buildCounterGoogleCloudDatacatalogV1TagTemplateField--;
}

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatacatalogV1Taxonomy = 0;
api.GoogleCloudDatacatalogV1Taxonomy buildGoogleCloudDatacatalogV1Taxonomy() {
  final o = api.GoogleCloudDatacatalogV1Taxonomy();
  buildCounterGoogleCloudDatacatalogV1Taxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1Taxonomy < 3) {
    o.activatedPolicyTypes = buildUnnamed31();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.policyTagCount = 42;
    o.taxonomyTimestamps = buildGoogleCloudDatacatalogV1SystemTimestamps();
  }
  buildCounterGoogleCloudDatacatalogV1Taxonomy--;
  return o;
}

void checkGoogleCloudDatacatalogV1Taxonomy(
    api.GoogleCloudDatacatalogV1Taxonomy o) {
  buildCounterGoogleCloudDatacatalogV1Taxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1Taxonomy < 3) {
    checkUnnamed31(o.activatedPolicyTypes!);
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
    checkGoogleCloudDatacatalogV1SystemTimestamps(o.taxonomyTimestamps!);
  }
  buildCounterGoogleCloudDatacatalogV1Taxonomy--;
}

core.int buildCounterGoogleCloudDatacatalogV1UnstarEntryRequest = 0;
api.GoogleCloudDatacatalogV1UnstarEntryRequest
    buildGoogleCloudDatacatalogV1UnstarEntryRequest() {
  final o = api.GoogleCloudDatacatalogV1UnstarEntryRequest();
  buildCounterGoogleCloudDatacatalogV1UnstarEntryRequest++;
  if (buildCounterGoogleCloudDatacatalogV1UnstarEntryRequest < 3) {}
  buildCounterGoogleCloudDatacatalogV1UnstarEntryRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1UnstarEntryRequest(
    api.GoogleCloudDatacatalogV1UnstarEntryRequest o) {
  buildCounterGoogleCloudDatacatalogV1UnstarEntryRequest++;
  if (buildCounterGoogleCloudDatacatalogV1UnstarEntryRequest < 3) {}
  buildCounterGoogleCloudDatacatalogV1UnstarEntryRequest--;
}

core.int buildCounterGoogleCloudDatacatalogV1UnstarEntryResponse = 0;
api.GoogleCloudDatacatalogV1UnstarEntryResponse
    buildGoogleCloudDatacatalogV1UnstarEntryResponse() {
  final o = api.GoogleCloudDatacatalogV1UnstarEntryResponse();
  buildCounterGoogleCloudDatacatalogV1UnstarEntryResponse++;
  if (buildCounterGoogleCloudDatacatalogV1UnstarEntryResponse < 3) {}
  buildCounterGoogleCloudDatacatalogV1UnstarEntryResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1UnstarEntryResponse(
    api.GoogleCloudDatacatalogV1UnstarEntryResponse o) {
  buildCounterGoogleCloudDatacatalogV1UnstarEntryResponse++;
  if (buildCounterGoogleCloudDatacatalogV1UnstarEntryResponse < 3) {}
  buildCounterGoogleCloudDatacatalogV1UnstarEntryResponse--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1UsageStats>
    buildUnnamed32() => {
          'x': buildGoogleCloudDatacatalogV1UsageStats(),
          'y': buildGoogleCloudDatacatalogV1UsageStats(),
        };

void checkUnnamed32(
    core.Map<core.String, api.GoogleCloudDatacatalogV1UsageStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1UsageStats(o['x']!);
  checkGoogleCloudDatacatalogV1UsageStats(o['y']!);
}

core.int buildCounterGoogleCloudDatacatalogV1UsageSignal = 0;
api.GoogleCloudDatacatalogV1UsageSignal
    buildGoogleCloudDatacatalogV1UsageSignal() {
  final o = api.GoogleCloudDatacatalogV1UsageSignal();
  buildCounterGoogleCloudDatacatalogV1UsageSignal++;
  if (buildCounterGoogleCloudDatacatalogV1UsageSignal < 3) {
    o.updateTime = 'foo';
    o.usageWithinTimeRange = buildUnnamed32();
  }
  buildCounterGoogleCloudDatacatalogV1UsageSignal--;
  return o;
}

void checkGoogleCloudDatacatalogV1UsageSignal(
    api.GoogleCloudDatacatalogV1UsageSignal o) {
  buildCounterGoogleCloudDatacatalogV1UsageSignal++;
  if (buildCounterGoogleCloudDatacatalogV1UsageSignal < 3) {
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.usageWithinTimeRange!);
  }
  buildCounterGoogleCloudDatacatalogV1UsageSignal--;
}

core.int buildCounterGoogleCloudDatacatalogV1UsageStats = 0;
api.GoogleCloudDatacatalogV1UsageStats
    buildGoogleCloudDatacatalogV1UsageStats() {
  final o = api.GoogleCloudDatacatalogV1UsageStats();
  buildCounterGoogleCloudDatacatalogV1UsageStats++;
  if (buildCounterGoogleCloudDatacatalogV1UsageStats < 3) {
    o.totalCancellations = 42.0;
    o.totalCompletions = 42.0;
    o.totalExecutionTimeForCompletionsMillis = 42.0;
    o.totalFailures = 42.0;
  }
  buildCounterGoogleCloudDatacatalogV1UsageStats--;
  return o;
}

void checkGoogleCloudDatacatalogV1UsageStats(
    api.GoogleCloudDatacatalogV1UsageStats o) {
  buildCounterGoogleCloudDatacatalogV1UsageStats++;
  if (buildCounterGoogleCloudDatacatalogV1UsageStats < 3) {
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
  buildCounterGoogleCloudDatacatalogV1UsageStats--;
}

core.int buildCounterGoogleCloudDatacatalogV1ViewSpec = 0;
api.GoogleCloudDatacatalogV1ViewSpec buildGoogleCloudDatacatalogV1ViewSpec() {
  final o = api.GoogleCloudDatacatalogV1ViewSpec();
  buildCounterGoogleCloudDatacatalogV1ViewSpec++;
  if (buildCounterGoogleCloudDatacatalogV1ViewSpec < 3) {
    o.viewQuery = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1ViewSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1ViewSpec(
    api.GoogleCloudDatacatalogV1ViewSpec o) {
  buildCounterGoogleCloudDatacatalogV1ViewSpec++;
  if (buildCounterGoogleCloudDatacatalogV1ViewSpec < 3) {
    unittest.expect(
      o.viewQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1ViewSpec--;
}

core.List<api.Binding> buildUnnamed33() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed33(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed33();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed33(o.bindings!);
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

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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
    o.permissions = buildUnnamed34();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed34(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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
    o.permissions = buildUnnamed35();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed35(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

  unittest.group('obj-schema-GoogleCloudDatacatalogV1BigQueryConnectionSpec',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1BigQueryConnectionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1BigQueryConnectionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1BigQueryConnectionSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1BigQueryDateShardedSpec',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1BigQueryDateShardedSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1BigQueryDateShardedSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1BigQueryDateShardedSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1BigQueryRoutineSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1BigQueryRoutineSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1BigQueryRoutineSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1BigQueryRoutineSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1BigQueryTableSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1BigQueryTableSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1BigQueryTableSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1BigQueryTableSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1BusinessContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1BusinessContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1BusinessContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1BusinessContext(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ColumnSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ColumnSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ColumnSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ColumnSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1Contacts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1Contacts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1Contacts.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1Contacts(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ContactsPerson', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ContactsPerson();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ContactsPerson.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ContactsPerson(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1CrossRegionalSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1CrossRegionalSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1CrossRegionalSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1CrossRegionalSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1DataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1DataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1DataSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1DataSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1DataSourceConnectionSpec',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1DataSourceConnectionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1DataSourceConnectionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1DataSourceConnectionSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1DatabaseTableSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1DatabaseTableSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1DatabaseTableSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1DatabaseTableSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1DataplexExternalTable',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1DataplexExternalTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1DataplexExternalTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1DataplexExternalTable(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1DataplexFilesetSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1DataplexFilesetSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1DataplexFilesetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1DataplexFilesetSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1DataplexSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1DataplexSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1DataplexSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1DataplexSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1DataplexTableSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1DataplexTableSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1DataplexTableSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1DataplexTableSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1Entry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1Entry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1Entry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1Entry(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1EntryGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1EntryGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1EntryGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1EntryGroup(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1EntryOverview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1EntryOverview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1EntryOverview.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1EntryOverview(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ExportTaxonomiesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ExportTaxonomiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ExportTaxonomiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ExportTaxonomiesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1FieldType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1FieldType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1FieldType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1FieldType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1FieldTypeEnumType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1FieldTypeEnumType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1FieldTypeEnumType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1FieldTypeEnumType(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1FilesetSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1FilesetSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1FilesetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1FilesetSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1GcsFileSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1GcsFileSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1GcsFileSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1GcsFileSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1GcsFilesetSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1GcsFilesetSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1GcsFilesetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1GcsFilesetSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ImportTaxonomiesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ImportTaxonomiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ImportTaxonomiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ImportTaxonomiesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ImportTaxonomiesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ImportTaxonomiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ImportTaxonomiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ImportTaxonomiesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1InlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1InlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1InlineSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1InlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ListEntriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ListEntriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ListEntriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ListEntriesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ListEntryGroupsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ListEntryGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ListEntryGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ListEntryGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ListPolicyTagsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ListPolicyTagsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ListPolicyTagsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ListPolicyTagsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ListTagsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ListTagsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ListTagsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ListTagsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ListTaxonomiesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ListTaxonomiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ListTaxonomiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ListTaxonomiesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1ModifyEntryContactsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ModifyEntryContactsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1ModifyEntryContactsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ModifyEntryContactsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1ModifyEntryOverviewRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ModifyEntryOverviewRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1ModifyEntryOverviewRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ModifyEntryOverviewRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1PersonalDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1PersonalDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1PersonalDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1PersonalDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1PhysicalSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1PhysicalSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1PhysicalSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1PhysicalSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1PhysicalSchemaAvroSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1PhysicalSchemaCsvSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1PhysicalSchemaOrcSchema(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1PhysicalSchemaParquetSchema(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1PhysicalSchemaThriftSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1PolicyTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1PolicyTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1PolicyTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1PolicyTag(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ReplaceTaxonomyRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ReplaceTaxonomyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ReplaceTaxonomyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ReplaceTaxonomyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1RoutineSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1RoutineSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1RoutineSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1RoutineSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1RoutineSpecArgument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1RoutineSpecArgument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1RoutineSpecArgument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1RoutineSpecArgument(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1Schema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1Schema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1Schema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1SearchCatalogRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1SearchCatalogRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1SearchCatalogRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1SearchCatalogRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1SearchCatalogRequestScope',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1SearchCatalogRequestScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1SearchCatalogRequestScope.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1SearchCatalogRequestScope(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1SearchCatalogResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1SearchCatalogResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1SearchCatalogResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1SearchCatalogResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1SearchCatalogResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1SearchCatalogResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1SearchCatalogResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1SearchCatalogResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1SerializedPolicyTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1SerializedPolicyTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1SerializedPolicyTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1SerializedPolicyTag(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1SerializedTaxonomy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1SerializedTaxonomy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1SerializedTaxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1SerializedTaxonomy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1StarEntryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1StarEntryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1StarEntryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1StarEntryRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1StarEntryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1StarEntryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1StarEntryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1StarEntryResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1StorageProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1StorageProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1StorageProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1StorageProperties(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1SystemTimestamps', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1SystemTimestamps();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1SystemTimestamps.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1SystemTimestamps(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1TableSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1TableSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1TableSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1TableSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1Tag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1Tag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1Tag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1Tag(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1TagField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1TagField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1TagField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1TagField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1TagFieldEnumValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1TagFieldEnumValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1TagFieldEnumValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1TagFieldEnumValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1TagTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1TagTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1TagTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1TagTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1TagTemplateField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1TagTemplateField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1TagTemplateField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1TagTemplateField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1Taxonomy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1Taxonomy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1Taxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1Taxonomy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1UnstarEntryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1UnstarEntryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1UnstarEntryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1UnstarEntryRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1UnstarEntryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1UnstarEntryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1UnstarEntryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1UnstarEntryResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1UsageSignal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1UsageSignal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1UsageSignal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1UsageSignal(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1UsageStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1UsageStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1UsageStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1UsageStats(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1ViewSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogV1ViewSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogV1ViewSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1ViewSpec(od);
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
      final arg_request = buildGoogleCloudDatacatalogV1SearchCatalogRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1SearchCatalogRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1SearchCatalogRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/catalog:search'),
        );
        pathOffset += 17;

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
            .encode(buildGoogleCloudDatacatalogV1SearchCatalogResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_request, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1SearchCatalogResponse(
          response as api.GoogleCloudDatacatalogV1SearchCatalogResponse);
    });
  });

  unittest.group('resource-EntriesResource', () {
    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).entries;
      final arg_fullyQualifiedName = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/entries:lookup'),
        );
        pathOffset += 17;

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
          queryMap['fullyQualifiedName']!.first,
          unittest.equals(arg_fullyQualifiedName),
        );
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
        final resp = convert.json.encode(buildGoogleCloudDatacatalogV1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(
          fullyQualifiedName: arg_fullyQualifiedName,
          linkedResource: arg_linkedResource,
          sqlResource: arg_sqlResource,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Entry(
          response as api.GoogleCloudDatacatalogV1Entry);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      final arg_request = buildGoogleCloudDatacatalogV1EntryGroup();
      final arg_parent = 'foo';
      final arg_entryGroupId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1EntryGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1EntryGroup(obj);

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
            convert.json.encode(buildGoogleCloudDatacatalogV1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          entryGroupId: arg_entryGroupId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1EntryGroup(
          response as api.GoogleCloudDatacatalogV1EntryGroup);
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
            convert.json.encode(buildGoogleCloudDatacatalogV1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, readMask: arg_readMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1EntryGroup(
          response as api.GoogleCloudDatacatalogV1EntryGroup);
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
            .encode(buildGoogleCloudDatacatalogV1ListEntryGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1ListEntryGroupsResponse(
          response as api.GoogleCloudDatacatalogV1ListEntryGroupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      final arg_request = buildGoogleCloudDatacatalogV1EntryGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1EntryGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1EntryGroup(obj);

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
            convert.json.encode(buildGoogleCloudDatacatalogV1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1EntryGroup(
          response as api.GoogleCloudDatacatalogV1EntryGroup);
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
      final arg_request = buildGoogleCloudDatacatalogV1Entry();
      final arg_parent = 'foo';
      final arg_entryId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1Entry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1Entry(obj);

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
        final resp = convert.json.encode(buildGoogleCloudDatacatalogV1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          entryId: arg_entryId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Entry(
          response as api.GoogleCloudDatacatalogV1Entry);
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
        final resp = convert.json.encode(buildGoogleCloudDatacatalogV1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Entry(
          response as api.GoogleCloudDatacatalogV1Entry);
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
            .encode(buildGoogleCloudDatacatalogV1ListEntriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1ListEntriesResponse(
          response as api.GoogleCloudDatacatalogV1ListEntriesResponse);
    });

    unittest.test('method--modifyEntryContacts', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      final arg_request =
          buildGoogleCloudDatacatalogV1ModifyEntryContactsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatacatalogV1ModifyEntryContactsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1ModifyEntryContactsRequest(obj);

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
            convert.json.encode(buildGoogleCloudDatacatalogV1Contacts());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modifyEntryContacts(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Contacts(
          response as api.GoogleCloudDatacatalogV1Contacts);
    });

    unittest.test('method--modifyEntryOverview', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      final arg_request =
          buildGoogleCloudDatacatalogV1ModifyEntryOverviewRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatacatalogV1ModifyEntryOverviewRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1ModifyEntryOverviewRequest(obj);

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
            convert.json.encode(buildGoogleCloudDatacatalogV1EntryOverview());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modifyEntryOverview(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1EntryOverview(
          response as api.GoogleCloudDatacatalogV1EntryOverview);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      final arg_request = buildGoogleCloudDatacatalogV1Entry();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1Entry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1Entry(obj);

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
        final resp = convert.json.encode(buildGoogleCloudDatacatalogV1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Entry(
          response as api.GoogleCloudDatacatalogV1Entry);
    });

    unittest.test('method--star', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      final arg_request = buildGoogleCloudDatacatalogV1StarEntryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1StarEntryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1StarEntryRequest(obj);

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
            .encode(buildGoogleCloudDatacatalogV1StarEntryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.star(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1StarEntryResponse(
          response as api.GoogleCloudDatacatalogV1StarEntryResponse);
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--unstar', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      final arg_request = buildGoogleCloudDatacatalogV1UnstarEntryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1UnstarEntryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1UnstarEntryRequest(obj);

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
            .encode(buildGoogleCloudDatacatalogV1UnstarEntryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.unstar(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1UnstarEntryResponse(
          response as api.GoogleCloudDatacatalogV1UnstarEntryResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsEntriesTagsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries.tags;
      final arg_request = buildGoogleCloudDatacatalogV1Tag();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1Tag(obj);

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
        final resp = convert.json.encode(buildGoogleCloudDatacatalogV1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Tag(
          response as api.GoogleCloudDatacatalogV1Tag);
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
            .encode(buildGoogleCloudDatacatalogV1ListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1ListTagsResponse(
          response as api.GoogleCloudDatacatalogV1ListTagsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries.tags;
      final arg_request = buildGoogleCloudDatacatalogV1Tag();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1Tag(obj);

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
        final resp = convert.json.encode(buildGoogleCloudDatacatalogV1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Tag(
          response as api.GoogleCloudDatacatalogV1Tag);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsTagsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups.tags;
      final arg_request = buildGoogleCloudDatacatalogV1Tag();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1Tag(obj);

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
        final resp = convert.json.encode(buildGoogleCloudDatacatalogV1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Tag(
          response as api.GoogleCloudDatacatalogV1Tag);
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
            .encode(buildGoogleCloudDatacatalogV1ListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1ListTagsResponse(
          response as api.GoogleCloudDatacatalogV1ListTagsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.entryGroups.tags;
      final arg_request = buildGoogleCloudDatacatalogV1Tag();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1Tag(obj);

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
        final resp = convert.json.encode(buildGoogleCloudDatacatalogV1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Tag(
          response as api.GoogleCloudDatacatalogV1Tag);
    });
  });

  unittest.group('resource-ProjectsLocationsTagTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      final arg_request = buildGoogleCloudDatacatalogV1TagTemplate();
      final arg_parent = 'foo';
      final arg_tagTemplateId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1TagTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1TagTemplate(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          tagTemplateId: arg_tagTemplateId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1TagTemplate(
          response as api.GoogleCloudDatacatalogV1TagTemplate);
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
            convert.json.encode(buildGoogleCloudDatacatalogV1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1TagTemplate(
          response as api.GoogleCloudDatacatalogV1TagTemplate);
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
      final arg_request = buildGoogleCloudDatacatalogV1TagTemplate();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1TagTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1TagTemplate(obj);

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
            convert.json.encode(buildGoogleCloudDatacatalogV1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1TagTemplate(
          response as api.GoogleCloudDatacatalogV1TagTemplate);
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
      final arg_request = buildGoogleCloudDatacatalogV1TagTemplateField();
      final arg_parent = 'foo';
      final arg_tagTemplateFieldId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1TagTemplateField.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1TagTemplateField(obj);

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
            .encode(buildGoogleCloudDatacatalogV1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          tagTemplateFieldId: arg_tagTemplateFieldId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1TagTemplateField);
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
      final arg_request = buildGoogleCloudDatacatalogV1TagTemplateField();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1TagTemplateField.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1TagTemplateField(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1TagTemplateField);
    });

    unittest.test('method--rename', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.tagTemplates.fields;
      final arg_request =
          buildGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1RenameTagTemplateFieldRequest(obj);

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
            .encode(buildGoogleCloudDatacatalogV1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rename(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1TagTemplateField);
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
          buildGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest(
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
            .encode(buildGoogleCloudDatacatalogV1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rename(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1TagTemplateField);
    });
  });

  unittest.group('resource-ProjectsLocationsTaxonomiesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_request = buildGoogleCloudDatacatalogV1Taxonomy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1Taxonomy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1Taxonomy(obj);

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
            convert.json.encode(buildGoogleCloudDatacatalogV1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Taxonomy(
          response as api.GoogleCloudDatacatalogV1Taxonomy);
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

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_parent = 'foo';
      final arg_serializedTaxonomies = true;
      final arg_taxonomies = buildUnnamed36();
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
        final resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1ExportTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.export(arg_parent,
          serializedTaxonomies: arg_serializedTaxonomies,
          taxonomies: arg_taxonomies,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1ExportTaxonomiesResponse(
          response as api.GoogleCloudDatacatalogV1ExportTaxonomiesResponse);
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
            convert.json.encode(buildGoogleCloudDatacatalogV1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Taxonomy(
          response as api.GoogleCloudDatacatalogV1Taxonomy);
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
          buildGoogleCloudDatacatalogV1ImportTaxonomiesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatacatalogV1ImportTaxonomiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1ImportTaxonomiesRequest(obj);

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
            .encode(buildGoogleCloudDatacatalogV1ImportTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1ImportTaxonomiesResponse(
          response as api.GoogleCloudDatacatalogV1ImportTaxonomiesResponse);
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
            .encode(buildGoogleCloudDatacatalogV1ListTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1ListTaxonomiesResponse(
          response as api.GoogleCloudDatacatalogV1ListTaxonomiesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_request = buildGoogleCloudDatacatalogV1Taxonomy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1Taxonomy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1Taxonomy(obj);

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
            convert.json.encode(buildGoogleCloudDatacatalogV1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Taxonomy(
          response as api.GoogleCloudDatacatalogV1Taxonomy);
    });

    unittest.test('method--replace', () async {
      final mock = HttpServerMock();
      final res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      final arg_request = buildGoogleCloudDatacatalogV1ReplaceTaxonomyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1ReplaceTaxonomyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1ReplaceTaxonomyRequest(obj);

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
            convert.json.encode(buildGoogleCloudDatacatalogV1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.replace(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1Taxonomy(
          response as api.GoogleCloudDatacatalogV1Taxonomy);
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
      final arg_request = buildGoogleCloudDatacatalogV1PolicyTag();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1PolicyTag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1PolicyTag(obj);

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
            convert.json.encode(buildGoogleCloudDatacatalogV1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1PolicyTag(
          response as api.GoogleCloudDatacatalogV1PolicyTag);
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
            convert.json.encode(buildGoogleCloudDatacatalogV1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1PolicyTag(
          response as api.GoogleCloudDatacatalogV1PolicyTag);
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
            .encode(buildGoogleCloudDatacatalogV1ListPolicyTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1ListPolicyTagsResponse(
          response as api.GoogleCloudDatacatalogV1ListPolicyTagsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      final arg_request = buildGoogleCloudDatacatalogV1PolicyTag();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatacatalogV1PolicyTag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1PolicyTag(obj);

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
            convert.json.encode(buildGoogleCloudDatacatalogV1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1PolicyTag(
          response as api.GoogleCloudDatacatalogV1PolicyTag);
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
