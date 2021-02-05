// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/area120tables/v1alpha1.dart' as api;

import '../test_shared.dart';

core.List<api.CreateRowRequest> buildUnnamed7526() {
  var o = <api.CreateRowRequest>[];
  o.add(buildCreateRowRequest());
  o.add(buildCreateRowRequest());
  return o;
}

void checkUnnamed7526(core.List<api.CreateRowRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateRowRequest(o[0] as api.CreateRowRequest);
  checkCreateRowRequest(o[1] as api.CreateRowRequest);
}

core.int buildCounterBatchCreateRowsRequest = 0;
api.BatchCreateRowsRequest buildBatchCreateRowsRequest() {
  var o = api.BatchCreateRowsRequest();
  buildCounterBatchCreateRowsRequest++;
  if (buildCounterBatchCreateRowsRequest < 3) {
    o.requests = buildUnnamed7526();
  }
  buildCounterBatchCreateRowsRequest--;
  return o;
}

void checkBatchCreateRowsRequest(api.BatchCreateRowsRequest o) {
  buildCounterBatchCreateRowsRequest++;
  if (buildCounterBatchCreateRowsRequest < 3) {
    checkUnnamed7526(o.requests);
  }
  buildCounterBatchCreateRowsRequest--;
}

core.List<api.Row> buildUnnamed7527() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7527(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.int buildCounterBatchCreateRowsResponse = 0;
api.BatchCreateRowsResponse buildBatchCreateRowsResponse() {
  var o = api.BatchCreateRowsResponse();
  buildCounterBatchCreateRowsResponse++;
  if (buildCounterBatchCreateRowsResponse < 3) {
    o.rows = buildUnnamed7527();
  }
  buildCounterBatchCreateRowsResponse--;
  return o;
}

void checkBatchCreateRowsResponse(api.BatchCreateRowsResponse o) {
  buildCounterBatchCreateRowsResponse++;
  if (buildCounterBatchCreateRowsResponse < 3) {
    checkUnnamed7527(o.rows);
  }
  buildCounterBatchCreateRowsResponse--;
}

core.List<core.String> buildUnnamed7528() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7528(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteRowsRequest = 0;
api.BatchDeleteRowsRequest buildBatchDeleteRowsRequest() {
  var o = api.BatchDeleteRowsRequest();
  buildCounterBatchDeleteRowsRequest++;
  if (buildCounterBatchDeleteRowsRequest < 3) {
    o.names = buildUnnamed7528();
  }
  buildCounterBatchDeleteRowsRequest--;
  return o;
}

void checkBatchDeleteRowsRequest(api.BatchDeleteRowsRequest o) {
  buildCounterBatchDeleteRowsRequest++;
  if (buildCounterBatchDeleteRowsRequest < 3) {
    checkUnnamed7528(o.names);
  }
  buildCounterBatchDeleteRowsRequest--;
}

core.List<api.UpdateRowRequest> buildUnnamed7529() {
  var o = <api.UpdateRowRequest>[];
  o.add(buildUpdateRowRequest());
  o.add(buildUpdateRowRequest());
  return o;
}

void checkUnnamed7529(core.List<api.UpdateRowRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateRowRequest(o[0] as api.UpdateRowRequest);
  checkUpdateRowRequest(o[1] as api.UpdateRowRequest);
}

core.int buildCounterBatchUpdateRowsRequest = 0;
api.BatchUpdateRowsRequest buildBatchUpdateRowsRequest() {
  var o = api.BatchUpdateRowsRequest();
  buildCounterBatchUpdateRowsRequest++;
  if (buildCounterBatchUpdateRowsRequest < 3) {
    o.requests = buildUnnamed7529();
  }
  buildCounterBatchUpdateRowsRequest--;
  return o;
}

void checkBatchUpdateRowsRequest(api.BatchUpdateRowsRequest o) {
  buildCounterBatchUpdateRowsRequest++;
  if (buildCounterBatchUpdateRowsRequest < 3) {
    checkUnnamed7529(o.requests);
  }
  buildCounterBatchUpdateRowsRequest--;
}

core.List<api.Row> buildUnnamed7530() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7530(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.int buildCounterBatchUpdateRowsResponse = 0;
api.BatchUpdateRowsResponse buildBatchUpdateRowsResponse() {
  var o = api.BatchUpdateRowsResponse();
  buildCounterBatchUpdateRowsResponse++;
  if (buildCounterBatchUpdateRowsResponse < 3) {
    o.rows = buildUnnamed7530();
  }
  buildCounterBatchUpdateRowsResponse--;
  return o;
}

void checkBatchUpdateRowsResponse(api.BatchUpdateRowsResponse o) {
  buildCounterBatchUpdateRowsResponse++;
  if (buildCounterBatchUpdateRowsResponse < 3) {
    checkUnnamed7530(o.rows);
  }
  buildCounterBatchUpdateRowsResponse--;
}

core.List<api.LabeledItem> buildUnnamed7531() {
  var o = <api.LabeledItem>[];
  o.add(buildLabeledItem());
  o.add(buildLabeledItem());
  return o;
}

void checkUnnamed7531(core.List<api.LabeledItem> o) {
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
    o.labels = buildUnnamed7531();
    o.lookupDetails = buildLookupDetails();
    o.name = 'foo';
    o.relationshipDetails = buildRelationshipDetails();
  }
  buildCounterColumnDescription--;
  return o;
}

void checkColumnDescription(api.ColumnDescription o) {
  buildCounterColumnDescription++;
  if (buildCounterColumnDescription < 3) {
    unittest.expect(o.dataType, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed7531(o.labels);
    checkLookupDetails(o.lookupDetails as api.LookupDetails);
    unittest.expect(o.name, unittest.equals('foo'));
    checkRelationshipDetails(o.relationshipDetails as api.RelationshipDetails);
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
    unittest.expect(o.parent, unittest.equals('foo'));
    checkRow(o.row as api.Row);
    unittest.expect(o.view, unittest.equals('foo'));
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLabeledItem--;
}

core.List<api.Row> buildUnnamed7532() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed7532(core.List<api.Row> o) {
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
    o.rows = buildUnnamed7532();
  }
  buildCounterListRowsResponse--;
  return o;
}

void checkListRowsResponse(api.ListRowsResponse o) {
  buildCounterListRowsResponse++;
  if (buildCounterListRowsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7532(o.rows);
  }
  buildCounterListRowsResponse--;
}

core.List<api.Table> buildUnnamed7533() {
  var o = <api.Table>[];
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

void checkUnnamed7533(core.List<api.Table> o) {
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
    o.tables = buildUnnamed7533();
  }
  buildCounterListTablesResponse--;
  return o;
}

void checkListTablesResponse(api.ListTablesResponse o) {
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7533(o.tables);
  }
  buildCounterListTablesResponse--;
}

core.List<api.Workspace> buildUnnamed7534() {
  var o = <api.Workspace>[];
  o.add(buildWorkspace());
  o.add(buildWorkspace());
  return o;
}

void checkUnnamed7534(core.List<api.Workspace> o) {
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
    o.workspaces = buildUnnamed7534();
  }
  buildCounterListWorkspacesResponse--;
  return o;
}

void checkListWorkspacesResponse(api.ListWorkspacesResponse o) {
  buildCounterListWorkspacesResponse++;
  if (buildCounterListWorkspacesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7534(o.workspaces);
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
    unittest.expect(o.relationshipColumn, unittest.equals('foo'));
    unittest.expect(o.relationshipColumnId, unittest.equals('foo'));
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
    unittest.expect(o.linkedTable, unittest.equals('foo'));
  }
  buildCounterRelationshipDetails--;
}

core.Map<core.String, core.Object> buildUnnamed7535() {
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

void checkUnnamed7535(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  var o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.name = 'foo';
    o.values = buildUnnamed7535();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7535(o.values);
  }
  buildCounterRow--;
}

core.List<api.ColumnDescription> buildUnnamed7536() {
  var o = <api.ColumnDescription>[];
  o.add(buildColumnDescription());
  o.add(buildColumnDescription());
  return o;
}

void checkUnnamed7536(core.List<api.ColumnDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnDescription(o[0] as api.ColumnDescription);
  checkColumnDescription(o[1] as api.ColumnDescription);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  var o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columns = buildUnnamed7536();
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkUnnamed7536(o.columns);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
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
    checkRow(o.row as api.Row);
    unittest.expect(o.updateMask, unittest.equals('foo'));
    unittest.expect(o.view, unittest.equals('foo'));
  }
  buildCounterUpdateRowRequest--;
}

core.List<api.Table> buildUnnamed7537() {
  var o = <api.Table>[];
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

void checkUnnamed7537(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0] as api.Table);
  checkTable(o[1] as api.Table);
}

core.int buildCounterWorkspace = 0;
api.Workspace buildWorkspace() {
  var o = api.Workspace();
  buildCounterWorkspace++;
  if (buildCounterWorkspace < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.tables = buildUnnamed7537();
  }
  buildCounterWorkspace--;
  return o;
}

void checkWorkspace(api.Workspace o) {
  buildCounterWorkspace++;
  if (buildCounterWorkspace < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7537(o.tables);
  }
  buildCounterWorkspace--;
}

void main() {
  unittest.group('obj-schema-BatchCreateRowsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchCreateRowsRequest();
      var od = api.BatchCreateRowsRequest.fromJson(o.toJson());
      checkBatchCreateRowsRequest(od as api.BatchCreateRowsRequest);
    });
  });

  unittest.group('obj-schema-BatchCreateRowsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchCreateRowsResponse();
      var od = api.BatchCreateRowsResponse.fromJson(o.toJson());
      checkBatchCreateRowsResponse(od as api.BatchCreateRowsResponse);
    });
  });

  unittest.group('obj-schema-BatchDeleteRowsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchDeleteRowsRequest();
      var od = api.BatchDeleteRowsRequest.fromJson(o.toJson());
      checkBatchDeleteRowsRequest(od as api.BatchDeleteRowsRequest);
    });
  });

  unittest.group('obj-schema-BatchUpdateRowsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdateRowsRequest();
      var od = api.BatchUpdateRowsRequest.fromJson(o.toJson());
      checkBatchUpdateRowsRequest(od as api.BatchUpdateRowsRequest);
    });
  });

  unittest.group('obj-schema-BatchUpdateRowsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdateRowsResponse();
      var od = api.BatchUpdateRowsResponse.fromJson(o.toJson());
      checkBatchUpdateRowsResponse(od as api.BatchUpdateRowsResponse);
    });
  });

  unittest.group('obj-schema-ColumnDescription', () {
    unittest.test('to-json--from-json', () {
      var o = buildColumnDescription();
      var od = api.ColumnDescription.fromJson(o.toJson());
      checkColumnDescription(od as api.ColumnDescription);
    });
  });

  unittest.group('obj-schema-CreateRowRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateRowRequest();
      var od = api.CreateRowRequest.fromJson(o.toJson());
      checkCreateRowRequest(od as api.CreateRowRequest);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-LabeledItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildLabeledItem();
      var od = api.LabeledItem.fromJson(o.toJson());
      checkLabeledItem(od as api.LabeledItem);
    });
  });

  unittest.group('obj-schema-ListRowsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListRowsResponse();
      var od = api.ListRowsResponse.fromJson(o.toJson());
      checkListRowsResponse(od as api.ListRowsResponse);
    });
  });

  unittest.group('obj-schema-ListTablesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTablesResponse();
      var od = api.ListTablesResponse.fromJson(o.toJson());
      checkListTablesResponse(od as api.ListTablesResponse);
    });
  });

  unittest.group('obj-schema-ListWorkspacesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListWorkspacesResponse();
      var od = api.ListWorkspacesResponse.fromJson(o.toJson());
      checkListWorkspacesResponse(od as api.ListWorkspacesResponse);
    });
  });

  unittest.group('obj-schema-LookupDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLookupDetails();
      var od = api.LookupDetails.fromJson(o.toJson());
      checkLookupDetails(od as api.LookupDetails);
    });
  });

  unittest.group('obj-schema-RelationshipDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildRelationshipDetails();
      var od = api.RelationshipDetails.fromJson(o.toJson());
      checkRelationshipDetails(od as api.RelationshipDetails);
    });
  });

  unittest.group('obj-schema-Row', () {
    unittest.test('to-json--from-json', () {
      var o = buildRow();
      var od = api.Row.fromJson(o.toJson());
      checkRow(od as api.Row);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () {
      var o = buildTable();
      var od = api.Table.fromJson(o.toJson());
      checkTable(od as api.Table);
    });
  });

  unittest.group('obj-schema-UpdateRowRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateRowRequest();
      var od = api.UpdateRowRequest.fromJson(o.toJson());
      checkUpdateRowRequest(od as api.UpdateRowRequest);
    });
  });

  unittest.group('obj-schema-Workspace', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkspace();
      var od = api.Workspace.fromJson(o.toJson());
      checkWorkspace(od as api.Workspace);
    });
  });

  unittest.group('resource-TablesResource', () {
    unittest.test('method--get', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response as api.Table);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1alpha1/tables"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTablesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTablesResponse(response as api.ListTablesResponse);
      })));
    });
  });

  unittest.group('resource-TablesRowsResource', () {
    unittest.test('method--batchCreate', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchCreateRowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchCreateRowsResponse(response as api.BatchCreateRowsResponse);
      })));
    });

    unittest.test('method--batchDelete', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--batchUpdate', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchUpdateRowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdateRowsResponse(response as api.BatchUpdateRowsResponse);
      })));
    });

    unittest.test('method--create', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRow(response as api.Row);
      })));
    });

    unittest.test('method--delete', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
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
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRow(response as api.Row);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.Area120TablesApi(mock).tables.rows;
      var arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRowsResponse(response as api.ListRowsResponse);
      })));
    });

    unittest.test('method--patch', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRow(response as api.Row);
      })));
    });
  });

  unittest.group('resource-WorkspacesResource', () {
    unittest.test('method--get', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWorkspace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWorkspace(response as api.Workspace);
      })));
    });

    unittest.test('method--list', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1alpha1/workspaces"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListWorkspacesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListWorkspacesResponse(response as api.ListWorkspacesResponse);
      })));
    });
  });
}
