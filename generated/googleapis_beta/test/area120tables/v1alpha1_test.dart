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

import 'package:googleapis_beta/area120tables/v1alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.CreateRowRequest> buildUnnamed8646() => [
      buildCreateRowRequest(),
      buildCreateRowRequest(),
    ];

void checkUnnamed8646(core.List<api.CreateRowRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateRowRequest(o[0]);
  checkCreateRowRequest(o[1]);
}

core.int buildCounterBatchCreateRowsRequest = 0;
api.BatchCreateRowsRequest buildBatchCreateRowsRequest() {
  final o = api.BatchCreateRowsRequest();
  buildCounterBatchCreateRowsRequest++;
  if (buildCounterBatchCreateRowsRequest < 3) {
    o.requests = buildUnnamed8646();
  }
  buildCounterBatchCreateRowsRequest--;
  return o;
}

void checkBatchCreateRowsRequest(api.BatchCreateRowsRequest o) {
  buildCounterBatchCreateRowsRequest++;
  if (buildCounterBatchCreateRowsRequest < 3) {
    checkUnnamed8646(o.requests!);
  }
  buildCounterBatchCreateRowsRequest--;
}

core.List<api.Row> buildUnnamed8647() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed8647(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterBatchCreateRowsResponse = 0;
api.BatchCreateRowsResponse buildBatchCreateRowsResponse() {
  final o = api.BatchCreateRowsResponse();
  buildCounterBatchCreateRowsResponse++;
  if (buildCounterBatchCreateRowsResponse < 3) {
    o.rows = buildUnnamed8647();
  }
  buildCounterBatchCreateRowsResponse--;
  return o;
}

void checkBatchCreateRowsResponse(api.BatchCreateRowsResponse o) {
  buildCounterBatchCreateRowsResponse++;
  if (buildCounterBatchCreateRowsResponse < 3) {
    checkUnnamed8647(o.rows!);
  }
  buildCounterBatchCreateRowsResponse--;
}

core.List<core.String> buildUnnamed8648() => [
      'foo',
      'foo',
    ];

void checkUnnamed8648(core.List<core.String> o) {
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
  final o = api.BatchDeleteRowsRequest();
  buildCounterBatchDeleteRowsRequest++;
  if (buildCounterBatchDeleteRowsRequest < 3) {
    o.names = buildUnnamed8648();
  }
  buildCounterBatchDeleteRowsRequest--;
  return o;
}

void checkBatchDeleteRowsRequest(api.BatchDeleteRowsRequest o) {
  buildCounterBatchDeleteRowsRequest++;
  if (buildCounterBatchDeleteRowsRequest < 3) {
    checkUnnamed8648(o.names!);
  }
  buildCounterBatchDeleteRowsRequest--;
}

core.List<api.UpdateRowRequest> buildUnnamed8649() => [
      buildUpdateRowRequest(),
      buildUpdateRowRequest(),
    ];

void checkUnnamed8649(core.List<api.UpdateRowRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateRowRequest(o[0]);
  checkUpdateRowRequest(o[1]);
}

core.int buildCounterBatchUpdateRowsRequest = 0;
api.BatchUpdateRowsRequest buildBatchUpdateRowsRequest() {
  final o = api.BatchUpdateRowsRequest();
  buildCounterBatchUpdateRowsRequest++;
  if (buildCounterBatchUpdateRowsRequest < 3) {
    o.requests = buildUnnamed8649();
  }
  buildCounterBatchUpdateRowsRequest--;
  return o;
}

void checkBatchUpdateRowsRequest(api.BatchUpdateRowsRequest o) {
  buildCounterBatchUpdateRowsRequest++;
  if (buildCounterBatchUpdateRowsRequest < 3) {
    checkUnnamed8649(o.requests!);
  }
  buildCounterBatchUpdateRowsRequest--;
}

core.List<api.Row> buildUnnamed8650() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed8650(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterBatchUpdateRowsResponse = 0;
api.BatchUpdateRowsResponse buildBatchUpdateRowsResponse() {
  final o = api.BatchUpdateRowsResponse();
  buildCounterBatchUpdateRowsResponse++;
  if (buildCounterBatchUpdateRowsResponse < 3) {
    o.rows = buildUnnamed8650();
  }
  buildCounterBatchUpdateRowsResponse--;
  return o;
}

void checkBatchUpdateRowsResponse(api.BatchUpdateRowsResponse o) {
  buildCounterBatchUpdateRowsResponse++;
  if (buildCounterBatchUpdateRowsResponse < 3) {
    checkUnnamed8650(o.rows!);
  }
  buildCounterBatchUpdateRowsResponse--;
}

core.List<api.LabeledItem> buildUnnamed8651() => [
      buildLabeledItem(),
      buildLabeledItem(),
    ];

void checkUnnamed8651(core.List<api.LabeledItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabeledItem(o[0]);
  checkLabeledItem(o[1]);
}

core.int buildCounterColumnDescription = 0;
api.ColumnDescription buildColumnDescription() {
  final o = api.ColumnDescription();
  buildCounterColumnDescription++;
  if (buildCounterColumnDescription < 3) {
    o.dataType = 'foo';
    o.id = 'foo';
    o.labels = buildUnnamed8651();
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
    checkUnnamed8651(o.labels!);
    checkLookupDetails(o.lookupDetails!);
    unittest.expect(o.multipleValuesDisallowed!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRelationshipDetails(o.relationshipDetails!);
  }
  buildCounterColumnDescription--;
}

core.int buildCounterCreateRowRequest = 0;
api.CreateRowRequest buildCreateRowRequest() {
  final o = api.CreateRowRequest();
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
    checkRow(o.row!);
    unittest.expect(
      o.view!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateRowRequest--;
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

core.int buildCounterLabeledItem = 0;
api.LabeledItem buildLabeledItem() {
  final o = api.LabeledItem();
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

core.List<api.Row> buildUnnamed8652() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed8652(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterListRowsResponse = 0;
api.ListRowsResponse buildListRowsResponse() {
  final o = api.ListRowsResponse();
  buildCounterListRowsResponse++;
  if (buildCounterListRowsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed8652();
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
    checkUnnamed8652(o.rows!);
  }
  buildCounterListRowsResponse--;
}

core.List<api.Table> buildUnnamed8653() => [
      buildTable(),
      buildTable(),
    ];

void checkUnnamed8653(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterListTablesResponse = 0;
api.ListTablesResponse buildListTablesResponse() {
  final o = api.ListTablesResponse();
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    o.nextPageToken = 'foo';
    o.tables = buildUnnamed8653();
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
    checkUnnamed8653(o.tables!);
  }
  buildCounterListTablesResponse--;
}

core.List<api.Workspace> buildUnnamed8654() => [
      buildWorkspace(),
      buildWorkspace(),
    ];

void checkUnnamed8654(core.List<api.Workspace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkspace(o[0]);
  checkWorkspace(o[1]);
}

core.int buildCounterListWorkspacesResponse = 0;
api.ListWorkspacesResponse buildListWorkspacesResponse() {
  final o = api.ListWorkspacesResponse();
  buildCounterListWorkspacesResponse++;
  if (buildCounterListWorkspacesResponse < 3) {
    o.nextPageToken = 'foo';
    o.workspaces = buildUnnamed8654();
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
    checkUnnamed8654(o.workspaces!);
  }
  buildCounterListWorkspacesResponse--;
}

core.int buildCounterLookupDetails = 0;
api.LookupDetails buildLookupDetails() {
  final o = api.LookupDetails();
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
  final o = api.RelationshipDetails();
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

core.Map<core.String, core.Object> buildUnnamed8655() => {
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

void checkUnnamed8655(core.Map<core.String, core.Object> o) {
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
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.values = buildUnnamed8655();
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
    checkUnnamed8655(o.values!);
  }
  buildCounterRow--;
}

core.int buildCounterSavedView = 0;
api.SavedView buildSavedView() {
  final o = api.SavedView();
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

core.List<api.ColumnDescription> buildUnnamed8656() => [
      buildColumnDescription(),
      buildColumnDescription(),
    ];

void checkUnnamed8656(core.List<api.ColumnDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnDescription(o[0]);
  checkColumnDescription(o[1]);
}

core.List<api.SavedView> buildUnnamed8657() => [
      buildSavedView(),
      buildSavedView(),
    ];

void checkUnnamed8657(core.List<api.SavedView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSavedView(o[0]);
  checkSavedView(o[1]);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  final o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columns = buildUnnamed8656();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.savedViews = buildUnnamed8657();
    o.updateTime = 'foo';
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkUnnamed8656(o.columns!);
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
    checkUnnamed8657(o.savedViews!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTable--;
}

core.int buildCounterUpdateRowRequest = 0;
api.UpdateRowRequest buildUpdateRowRequest() {
  final o = api.UpdateRowRequest();
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
    checkRow(o.row!);
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

core.List<api.Table> buildUnnamed8658() => [
      buildTable(),
      buildTable(),
    ];

void checkUnnamed8658(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterWorkspace = 0;
api.Workspace buildWorkspace() {
  final o = api.Workspace();
  buildCounterWorkspace++;
  if (buildCounterWorkspace < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.tables = buildUnnamed8658();
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
    checkUnnamed8658(o.tables!);
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
      final o = buildBatchCreateRowsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateRowsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateRowsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateRowsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateRowsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateRowsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateRowsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteRowsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteRowsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteRowsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteRowsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateRowsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateRowsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateRowsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateRowsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateRowsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateRowsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateRowsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateRowsResponse(od);
    });
  });

  unittest.group('obj-schema-ColumnDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkColumnDescription(od);
    });
  });

  unittest.group('obj-schema-CreateRowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateRowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateRowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateRowRequest(od);
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

  unittest.group('obj-schema-LabeledItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabeledItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabeledItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLabeledItem(od);
    });
  });

  unittest.group('obj-schema-ListRowsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRowsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRowsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRowsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTablesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTablesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTablesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTablesResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkspacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkspacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkspacesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkspacesResponse(od);
    });
  });

  unittest.group('obj-schema-LookupDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupDetails(od);
    });
  });

  unittest.group('obj-schema-RelationshipDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelationshipDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelationshipDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelationshipDetails(od);
    });
  });

  unittest.group('obj-schema-Row', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Row.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRow(od);
    });
  });

  unittest.group('obj-schema-SavedView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSavedView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SavedView.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSavedView(od);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Table.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTable(od);
    });
  });

  unittest.group('obj-schema-UpdateRowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateRowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateRowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateRowRequest(od);
    });
  });

  unittest.group('obj-schema-Workspace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkspace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Workspace.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWorkspace(od);
    });
  });

  unittest.group('resource-TablesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).tables;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTable(response as api.Table);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).tables;
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1alpha1/tables'),
        );
        pathOffset += 15;

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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListTablesResponse());
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
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).tables.rows;
      final arg_request = buildBatchCreateRowsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateRowsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateRowsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildBatchCreateRowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchCreateRowsResponse(response as api.BatchCreateRowsResponse);
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).tables.rows;
      final arg_request = buildBatchDeleteRowsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchDeleteRowsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeleteRowsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).tables.rows;
      final arg_request = buildBatchUpdateRowsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateRowsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateRowsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildBatchUpdateRowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchUpdateRowsResponse(response as api.BatchUpdateRowsResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).tables.rows;
      final arg_request = buildRow();
      final arg_parent = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Row.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRow(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          view: arg_view, $fields: arg_$fields);
      checkRow(response as api.Row);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).tables.rows;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
      final res = api.Area120TablesApi(mock).tables.rows;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkRow(response as api.Row);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).tables.rows;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRowsResponse());
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
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).tables.rows;
      final arg_request = buildRow();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Row.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRow(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, view: arg_view, $fields: arg_$fields);
      checkRow(response as api.Row);
    });
  });

  unittest.group('resource-WorkspacesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).workspaces;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildWorkspace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkspace(response as api.Workspace);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.Area120TablesApi(mock).workspaces;
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('v1alpha1/workspaces'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildListWorkspacesResponse());
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
