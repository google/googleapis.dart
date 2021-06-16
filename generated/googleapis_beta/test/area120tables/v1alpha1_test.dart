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

import 'package:googleapis_beta/area120tables/v1alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.CreateRowRequest> buildUnnamed8485() {
  var o = <api.CreateRowRequest>[];
  o.add(buildCreateRowRequest());
  o.add(buildCreateRowRequest());
  return o;
}

void checkUnnamed8485(core.List<api.CreateRowRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateRowRequest(o[0] as api.CreateRowRequest);
  checkCreateRowRequest(o[1] as api.CreateRowRequest);
}

core.int buildCounterBatchCreateRowsRequest = 0;
api.BatchCreateRowsRequest buildBatchCreateRowsRequest() {
  var o = api.BatchCreateRowsRequest();
  buildCounterBatchCreateRowsRequest++;
  if (buildCounterBatchCreateRowsRequest < 3) {
    o.requests = buildUnnamed8485();
  }
  buildCounterBatchCreateRowsRequest--;
  return o;
}

void checkBatchCreateRowsRequest(api.BatchCreateRowsRequest o) {
  buildCounterBatchCreateRowsRequest++;
  if (buildCounterBatchCreateRowsRequest < 3) {
    checkUnnamed8485(o.requests!);
  }
  buildCounterBatchCreateRowsRequest--;
}

core.List<api.Row> buildUnnamed8486() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed8486(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.int buildCounterBatchCreateRowsResponse = 0;
api.BatchCreateRowsResponse buildBatchCreateRowsResponse() {
  var o = api.BatchCreateRowsResponse();
  buildCounterBatchCreateRowsResponse++;
  if (buildCounterBatchCreateRowsResponse < 3) {
    o.rows = buildUnnamed8486();
  }
  buildCounterBatchCreateRowsResponse--;
  return o;
}

void checkBatchCreateRowsResponse(api.BatchCreateRowsResponse o) {
  buildCounterBatchCreateRowsResponse++;
  if (buildCounterBatchCreateRowsResponse < 3) {
    checkUnnamed8486(o.rows!);
  }
  buildCounterBatchCreateRowsResponse--;
}

core.List<core.String> buildUnnamed8487() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8487(core.List<core.String> o) {
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

core.int buildCounterBatchDeleteRowsRequest = 0;
api.BatchDeleteRowsRequest buildBatchDeleteRowsRequest() {
  var o = api.BatchDeleteRowsRequest();
  buildCounterBatchDeleteRowsRequest++;
  if (buildCounterBatchDeleteRowsRequest < 3) {
    o.names = buildUnnamed8487();
  }
  buildCounterBatchDeleteRowsRequest--;
  return o;
}

void checkBatchDeleteRowsRequest(api.BatchDeleteRowsRequest o) {
  buildCounterBatchDeleteRowsRequest++;
  if (buildCounterBatchDeleteRowsRequest < 3) {
    checkUnnamed8487(o.names!);
  }
  buildCounterBatchDeleteRowsRequest--;
}

core.List<api.UpdateRowRequest> buildUnnamed8488() {
  var o = <api.UpdateRowRequest>[];
  o.add(buildUpdateRowRequest());
  o.add(buildUpdateRowRequest());
  return o;
}

void checkUnnamed8488(core.List<api.UpdateRowRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateRowRequest(o[0] as api.UpdateRowRequest);
  checkUpdateRowRequest(o[1] as api.UpdateRowRequest);
}

core.int buildCounterBatchUpdateRowsRequest = 0;
api.BatchUpdateRowsRequest buildBatchUpdateRowsRequest() {
  var o = api.BatchUpdateRowsRequest();
  buildCounterBatchUpdateRowsRequest++;
  if (buildCounterBatchUpdateRowsRequest < 3) {
    o.requests = buildUnnamed8488();
  }
  buildCounterBatchUpdateRowsRequest--;
  return o;
}

void checkBatchUpdateRowsRequest(api.BatchUpdateRowsRequest o) {
  buildCounterBatchUpdateRowsRequest++;
  if (buildCounterBatchUpdateRowsRequest < 3) {
    checkUnnamed8488(o.requests!);
  }
  buildCounterBatchUpdateRowsRequest--;
}

core.List<api.Row> buildUnnamed8489() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed8489(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.int buildCounterBatchUpdateRowsResponse = 0;
api.BatchUpdateRowsResponse buildBatchUpdateRowsResponse() {
  var o = api.BatchUpdateRowsResponse();
  buildCounterBatchUpdateRowsResponse++;
  if (buildCounterBatchUpdateRowsResponse < 3) {
    o.rows = buildUnnamed8489();
  }
  buildCounterBatchUpdateRowsResponse--;
  return o;
}

void checkBatchUpdateRowsResponse(api.BatchUpdateRowsResponse o) {
  buildCounterBatchUpdateRowsResponse++;
  if (buildCounterBatchUpdateRowsResponse < 3) {
    checkUnnamed8489(o.rows!);
  }
  buildCounterBatchUpdateRowsResponse--;
}

core.List<api.LabeledItem> buildUnnamed8490() {
  var o = <api.LabeledItem>[];
  o.add(buildLabeledItem());
  o.add(buildLabeledItem());
  return o;
}

void checkUnnamed8490(core.List<api.LabeledItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabeledItem(o[0] as api.LabeledItem);
  checkLabeledItem(o[1] as api.LabeledItem);
}

core.int buildCounterColumnDescription = 0;
api.ColumnDescription buildColumnDescription() {
  var o = api.ColumnDescription();
  buildCounterColumnDescription++;
  if (buildCounterColumnDescription < 3) {
    o.dataType = 'foo';
    o.id = 'foo';
    o.labels = buildUnnamed8490();
    o.lookupDetails = buildLookupDetails();
    o.multipleValuesDisallowed = true;
    o.name = 'foo';
    o.relationshipDetails = buildRelationshipDetails();
  }
  buildCounterColumnDescription--;
  return o;
}

void checkColumnDescription(api.ColumnDescription o) {
  buildCounterColumnDescription++;
  if (buildCounterColumnDescription < 3) {
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed8490(o.labels!);
    checkLookupDetails(o.lookupDetails! as api.LookupDetails);
    unittest.expect(o.multipleValuesDisallowed!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRelationshipDetails(o.relationshipDetails! as api.RelationshipDetails);
  }
  buildCounterColumnDescription--;
}

core.int buildCounterCreateRowRequest = 0;
api.CreateRowRequest buildCreateRowRequest() {
  var o = api.CreateRowRequest();
  buildCounterCreateRowRequest++;
  if (buildCounterCreateRowRequest < 3) {
    o.parent = 'foo';
    o.row = buildRow();
    o.view = 'foo';
  }
  buildCounterCreateRowRequest--;
  return o;
}

void checkCreateRowRequest(api.CreateRowRequest o) {
  buildCounterCreateRowRequest++;
  if (buildCounterCreateRowRequest < 3) {
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkRow(o.row! as api.Row);
    unittest.expect(
      o.view!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateRowRequest--;
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

core.int buildCounterLabeledItem = 0;
api.LabeledItem buildLabeledItem() {
  var o = api.LabeledItem();
  buildCounterLabeledItem++;
  if (buildCounterLabeledItem < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterLabeledItem--;
  return o;
}

void checkLabeledItem(api.LabeledItem o) {
  buildCounterLabeledItem++;
  if (buildCounterLabeledItem < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabeledItem--;
}

core.List<api.Row> buildUnnamed8491() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed8491(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.int buildCounterListRowsResponse = 0;
api.ListRowsResponse buildListRowsResponse() {
  var o = api.ListRowsResponse();
  buildCounterListRowsResponse++;
  if (buildCounterListRowsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed8491();
  }
  buildCounterListRowsResponse--;
  return o;
}

void checkListRowsResponse(api.ListRowsResponse o) {
  buildCounterListRowsResponse++;
  if (buildCounterListRowsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8491(o.rows!);
  }
  buildCounterListRowsResponse--;
}

core.List<api.Table> buildUnnamed8492() {
  var o = <api.Table>[];
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

void checkUnnamed8492(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0] as api.Table);
  checkTable(o[1] as api.Table);
}

core.int buildCounterListTablesResponse = 0;
api.ListTablesResponse buildListTablesResponse() {
  var o = api.ListTablesResponse();
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    o.nextPageToken = 'foo';
    o.tables = buildUnnamed8492();
  }
  buildCounterListTablesResponse--;
  return o;
}

void checkListTablesResponse(api.ListTablesResponse o) {
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8492(o.tables!);
  }
  buildCounterListTablesResponse--;
}

core.List<api.Workspace> buildUnnamed8493() {
  var o = <api.Workspace>[];
  o.add(buildWorkspace());
  o.add(buildWorkspace());
  return o;
}

void checkUnnamed8493(core.List<api.Workspace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkspace(o[0] as api.Workspace);
  checkWorkspace(o[1] as api.Workspace);
}

core.int buildCounterListWorkspacesResponse = 0;
api.ListWorkspacesResponse buildListWorkspacesResponse() {
  var o = api.ListWorkspacesResponse();
  buildCounterListWorkspacesResponse++;
  if (buildCounterListWorkspacesResponse < 3) {
    o.nextPageToken = 'foo';
    o.workspaces = buildUnnamed8493();
  }
  buildCounterListWorkspacesResponse--;
  return o;
}

void checkListWorkspacesResponse(api.ListWorkspacesResponse o) {
  buildCounterListWorkspacesResponse++;
  if (buildCounterListWorkspacesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8493(o.workspaces!);
  }
  buildCounterListWorkspacesResponse--;
}

core.int buildCounterLookupDetails = 0;
api.LookupDetails buildLookupDetails() {
  var o = api.LookupDetails();
  buildCounterLookupDetails++;
  if (buildCounterLookupDetails < 3) {
    o.relationshipColumn = 'foo';
    o.relationshipColumnId = 'foo';
  }
  buildCounterLookupDetails--;
  return o;
}

void checkLookupDetails(api.LookupDetails o) {
  buildCounterLookupDetails++;
  if (buildCounterLookupDetails < 3) {
    unittest.expect(
      o.relationshipColumn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relationshipColumnId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLookupDetails--;
}

core.int buildCounterRelationshipDetails = 0;
api.RelationshipDetails buildRelationshipDetails() {
  var o = api.RelationshipDetails();
  buildCounterRelationshipDetails++;
  if (buildCounterRelationshipDetails < 3) {
    o.linkedTable = 'foo';
  }
  buildCounterRelationshipDetails--;
  return o;
}

void checkRelationshipDetails(api.RelationshipDetails o) {
  buildCounterRelationshipDetails++;
  if (buildCounterRelationshipDetails < 3) {
    unittest.expect(
      o.linkedTable!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelationshipDetails--;
}

core.Map<core.String, core.Object> buildUnnamed8494() {
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

void checkUnnamed8494(core.Map<core.String, core.Object> o) {
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

core.int buildCounterRow = 0;
api.Row buildRow() {
  var o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.values = buildUnnamed8494();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed8494(o.values!);
  }
  buildCounterRow--;
}

core.int buildCounterSavedView = 0;
api.SavedView buildSavedView() {
  var o = api.SavedView();
  buildCounterSavedView++;
  if (buildCounterSavedView < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterSavedView--;
  return o;
}

void checkSavedView(api.SavedView o) {
  buildCounterSavedView++;
  if (buildCounterSavedView < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSavedView--;
}

core.List<api.ColumnDescription> buildUnnamed8495() {
  var o = <api.ColumnDescription>[];
  o.add(buildColumnDescription());
  o.add(buildColumnDescription());
  return o;
}

void checkUnnamed8495(core.List<api.ColumnDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnDescription(o[0] as api.ColumnDescription);
  checkColumnDescription(o[1] as api.ColumnDescription);
}

core.List<api.SavedView> buildUnnamed8496() {
  var o = <api.SavedView>[];
  o.add(buildSavedView());
  o.add(buildSavedView());
  return o;
}

void checkUnnamed8496(core.List<api.SavedView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSavedView(o[0] as api.SavedView);
  checkSavedView(o[1] as api.SavedView);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  var o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columns = buildUnnamed8495();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.savedViews = buildUnnamed8496();
    o.updateTime = 'foo';
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkUnnamed8495(o.columns!);
    unittest.expect(
      o.createTime!,
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
    checkUnnamed8496(o.savedViews!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTable--;
}

core.int buildCounterUpdateRowRequest = 0;
api.UpdateRowRequest buildUpdateRowRequest() {
  var o = api.UpdateRowRequest();
  buildCounterUpdateRowRequest++;
  if (buildCounterUpdateRowRequest < 3) {
    o.row = buildRow();
    o.updateMask = 'foo';
    o.view = 'foo';
  }
  buildCounterUpdateRowRequest--;
  return o;
}

void checkUpdateRowRequest(api.UpdateRowRequest o) {
  buildCounterUpdateRowRequest++;
  if (buildCounterUpdateRowRequest < 3) {
    checkRow(o.row! as api.Row);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.view!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateRowRequest--;
}

core.List<api.Table> buildUnnamed8497() {
  var o = <api.Table>[];
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

void checkUnnamed8497(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0] as api.Table);
  checkTable(o[1] as api.Table);
}

core.int buildCounterWorkspace = 0;
api.Workspace buildWorkspace() {
  var o = api.Workspace();
  buildCounterWorkspace++;
  if (buildCounterWorkspace < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.tables = buildUnnamed8497();
    o.updateTime = 'foo';
  }
  buildCounterWorkspace--;
  return o;
}

void checkWorkspace(api.Workspace o) {
  buildCounterWorkspace++;
  if (buildCounterWorkspace < 3) {
    unittest.expect(
      o.createTime!,
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
    checkUnnamed8497(o.tables!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkspace--;
}

void main() {
  unittest.group('obj-schema-BatchCreateRowsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreateRowsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreateRowsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateRowsRequest(od as api.BatchCreateRowsRequest);
    });
  });

  unittest.group('obj-schema-BatchCreateRowsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreateRowsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreateRowsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateRowsResponse(od as api.BatchCreateRowsResponse);
    });
  });

  unittest.group('obj-schema-BatchDeleteRowsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchDeleteRowsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchDeleteRowsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteRowsRequest(od as api.BatchDeleteRowsRequest);
    });
  });

  unittest.group('obj-schema-BatchUpdateRowsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchUpdateRowsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchUpdateRowsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateRowsRequest(od as api.BatchUpdateRowsRequest);
    });
  });

  unittest.group('obj-schema-BatchUpdateRowsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchUpdateRowsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchUpdateRowsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateRowsResponse(od as api.BatchUpdateRowsResponse);
    });
  });

  unittest.group('obj-schema-ColumnDescription', () {
    unittest.test('to-json--from-json', () async {
      var o = buildColumnDescription();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ColumnDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkColumnDescription(od as api.ColumnDescription);
    });
  });

  unittest.group('obj-schema-CreateRowRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCreateRowRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CreateRowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateRowRequest(od as api.CreateRowRequest);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-LabeledItem', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLabeledItem();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LabeledItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLabeledItem(od as api.LabeledItem);
    });
  });

  unittest.group('obj-schema-ListRowsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListRowsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListRowsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRowsResponse(od as api.ListRowsResponse);
    });
  });

  unittest.group('obj-schema-ListTablesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListTablesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListTablesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTablesResponse(od as api.ListTablesResponse);
    });
  });

  unittest.group('obj-schema-ListWorkspacesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListWorkspacesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListWorkspacesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkspacesResponse(od as api.ListWorkspacesResponse);
    });
  });

  unittest.group('obj-schema-LookupDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLookupDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LookupDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupDetails(od as api.LookupDetails);
    });
  });

  unittest.group('obj-schema-RelationshipDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRelationshipDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RelationshipDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelationshipDetails(od as api.RelationshipDetails);
    });
  });

  unittest.group('obj-schema-Row', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Row.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRow(od as api.Row);
    });
  });

  unittest.group('obj-schema-SavedView', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSavedView();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.SavedView.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSavedView(od as api.SavedView);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTable();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Table.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTable(od as api.Table);
    });
  });

  unittest.group('obj-schema-UpdateRowRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUpdateRowRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UpdateRowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateRowRequest(od as api.UpdateRowRequest);
    });
  });

  unittest.group('obj-schema-Workspace', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWorkspace();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Workspace.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWorkspace(od as api.Workspace);
    });
  });

  unittest.group('resource-TablesResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1alpha1/"),
        );
        pathOffset += 9;
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
        var resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTable(response as api.Table);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables;
      var arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("v1alpha1/tables"),
        );
        pathOffset += 15;

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
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
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
        var resp = convert.json.encode(buildListTablesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTablesResponse(response as api.ListTablesResponse);
    });
  });

  unittest.group('resource-TablesRowsResource', () {
    unittest.test('method--batchCreate', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables.rows;
      var arg_request = buildBatchCreateRowsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchCreateRowsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateRowsRequest(obj as api.BatchCreateRowsRequest);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1alpha1/"),
        );
        pathOffset += 9;
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
        var resp = convert.json.encode(buildBatchCreateRowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchCreateRowsResponse(response as api.BatchCreateRowsResponse);
    });

    unittest.test('method--batchDelete', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables.rows;
      var arg_request = buildBatchDeleteRowsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchDeleteRowsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeleteRowsRequest(obj as api.BatchDeleteRowsRequest);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1alpha1/"),
        );
        pathOffset += 9;
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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--batchUpdate', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables.rows;
      var arg_request = buildBatchUpdateRowsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchUpdateRowsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateRowsRequest(obj as api.BatchUpdateRowsRequest);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1alpha1/"),
        );
        pathOffset += 9;
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
        var resp = convert.json.encode(buildBatchUpdateRowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchUpdateRowsResponse(response as api.BatchUpdateRowsResponse);
    });

    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables.rows;
      var arg_request = buildRow();
      var arg_parent = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Row.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRow(obj as api.Row);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1alpha1/"),
        );
        pathOffset += 9;
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
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          view: arg_view, $fields: arg_$fields);
      checkRow(response as api.Row);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables.rows;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1alpha1/"),
        );
        pathOffset += 9;
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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables.rows;
      var arg_name = 'foo';
      var arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1alpha1/"),
        );
        pathOffset += 9;
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
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkRow(response as api.Row);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables.rows;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1alpha1/"),
        );
        pathOffset += 9;
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
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
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
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListRowsResponse(response as api.ListRowsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables.rows;
      var arg_request = buildRow();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Row.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRow(obj as api.Row);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1alpha1/"),
        );
        pathOffset += 9;
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, view: arg_view, $fields: arg_$fields);
      checkRow(response as api.Row);
    });
  });

  unittest.group('resource-WorkspacesResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).workspaces;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1alpha1/"),
        );
        pathOffset += 9;
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
        var resp = convert.json.encode(buildWorkspace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkspace(response as api.Workspace);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).workspaces;
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals("v1alpha1/workspaces"),
        );
        pathOffset += 19;

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
        var resp = convert.json.encode(buildListWorkspacesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListWorkspacesResponse(response as api.ListWorkspacesResponse);
    });
  });
}
