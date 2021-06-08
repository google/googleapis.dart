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

import 'package:googleapis/keep/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed2404() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2404(core.List<core.String> o) {
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

core.int buildCounterAttachment = 0;
api.Attachment buildAttachment() {
  var o = api.Attachment();
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    o.mimeType = buildUnnamed2404();
    o.name = 'foo';
  }
  buildCounterAttachment--;
  return o;
}

void checkAttachment(api.Attachment o) {
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    checkUnnamed2404(o.mimeType!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttachment--;
}

core.List<api.CreatePermissionRequest> buildUnnamed2405() {
  var o = <api.CreatePermissionRequest>[];
  o.add(buildCreatePermissionRequest());
  o.add(buildCreatePermissionRequest());
  return o;
}

void checkUnnamed2405(core.List<api.CreatePermissionRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreatePermissionRequest(o[0] as api.CreatePermissionRequest);
  checkCreatePermissionRequest(o[1] as api.CreatePermissionRequest);
}

core.int buildCounterBatchCreatePermissionsRequest = 0;
api.BatchCreatePermissionsRequest buildBatchCreatePermissionsRequest() {
  var o = api.BatchCreatePermissionsRequest();
  buildCounterBatchCreatePermissionsRequest++;
  if (buildCounterBatchCreatePermissionsRequest < 3) {
    o.requests = buildUnnamed2405();
  }
  buildCounterBatchCreatePermissionsRequest--;
  return o;
}

void checkBatchCreatePermissionsRequest(api.BatchCreatePermissionsRequest o) {
  buildCounterBatchCreatePermissionsRequest++;
  if (buildCounterBatchCreatePermissionsRequest < 3) {
    checkUnnamed2405(o.requests!);
  }
  buildCounterBatchCreatePermissionsRequest--;
}

core.List<api.Permission> buildUnnamed2406() {
  var o = <api.Permission>[];
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

void checkUnnamed2406(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0] as api.Permission);
  checkPermission(o[1] as api.Permission);
}

core.int buildCounterBatchCreatePermissionsResponse = 0;
api.BatchCreatePermissionsResponse buildBatchCreatePermissionsResponse() {
  var o = api.BatchCreatePermissionsResponse();
  buildCounterBatchCreatePermissionsResponse++;
  if (buildCounterBatchCreatePermissionsResponse < 3) {
    o.permissions = buildUnnamed2406();
  }
  buildCounterBatchCreatePermissionsResponse--;
  return o;
}

void checkBatchCreatePermissionsResponse(api.BatchCreatePermissionsResponse o) {
  buildCounterBatchCreatePermissionsResponse++;
  if (buildCounterBatchCreatePermissionsResponse < 3) {
    checkUnnamed2406(o.permissions!);
  }
  buildCounterBatchCreatePermissionsResponse--;
}

core.List<core.String> buildUnnamed2407() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2407(core.List<core.String> o) {
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

core.int buildCounterBatchDeletePermissionsRequest = 0;
api.BatchDeletePermissionsRequest buildBatchDeletePermissionsRequest() {
  var o = api.BatchDeletePermissionsRequest();
  buildCounterBatchDeletePermissionsRequest++;
  if (buildCounterBatchDeletePermissionsRequest < 3) {
    o.names = buildUnnamed2407();
  }
  buildCounterBatchDeletePermissionsRequest--;
  return o;
}

void checkBatchDeletePermissionsRequest(api.BatchDeletePermissionsRequest o) {
  buildCounterBatchDeletePermissionsRequest++;
  if (buildCounterBatchDeletePermissionsRequest < 3) {
    checkUnnamed2407(o.names!);
  }
  buildCounterBatchDeletePermissionsRequest--;
}

core.int buildCounterCreatePermissionRequest = 0;
api.CreatePermissionRequest buildCreatePermissionRequest() {
  var o = api.CreatePermissionRequest();
  buildCounterCreatePermissionRequest++;
  if (buildCounterCreatePermissionRequest < 3) {
    o.parent = 'foo';
    o.permission = buildPermission();
  }
  buildCounterCreatePermissionRequest--;
  return o;
}

void checkCreatePermissionRequest(api.CreatePermissionRequest o) {
  buildCounterCreatePermissionRequest++;
  if (buildCounterCreatePermissionRequest < 3) {
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkPermission(o.permission! as api.Permission);
  }
  buildCounterCreatePermissionRequest--;
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

core.int buildCounterFamily = 0;
api.Family buildFamily() {
  var o = api.Family();
  buildCounterFamily++;
  if (buildCounterFamily < 3) {}
  buildCounterFamily--;
  return o;
}

void checkFamily(api.Family o) {
  buildCounterFamily++;
  if (buildCounterFamily < 3) {}
  buildCounterFamily--;
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  var o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.email = 'foo';
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroup--;
}

core.List<api.ListItem> buildUnnamed2408() {
  var o = <api.ListItem>[];
  o.add(buildListItem());
  o.add(buildListItem());
  return o;
}

void checkUnnamed2408(core.List<api.ListItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListItem(o[0] as api.ListItem);
  checkListItem(o[1] as api.ListItem);
}

core.int buildCounterListContent = 0;
api.ListContent buildListContent() {
  var o = api.ListContent();
  buildCounterListContent++;
  if (buildCounterListContent < 3) {
    o.listItems = buildUnnamed2408();
  }
  buildCounterListContent--;
  return o;
}

void checkListContent(api.ListContent o) {
  buildCounterListContent++;
  if (buildCounterListContent < 3) {
    checkUnnamed2408(o.listItems!);
  }
  buildCounterListContent--;
}

core.List<api.ListItem> buildUnnamed2409() {
  var o = <api.ListItem>[];
  o.add(buildListItem());
  o.add(buildListItem());
  return o;
}

void checkUnnamed2409(core.List<api.ListItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListItem(o[0] as api.ListItem);
  checkListItem(o[1] as api.ListItem);
}

core.int buildCounterListItem = 0;
api.ListItem buildListItem() {
  var o = api.ListItem();
  buildCounterListItem++;
  if (buildCounterListItem < 3) {
    o.checked = true;
    o.childListItems = buildUnnamed2409();
    o.text = buildTextContent();
  }
  buildCounterListItem--;
  return o;
}

void checkListItem(api.ListItem o) {
  buildCounterListItem++;
  if (buildCounterListItem < 3) {
    unittest.expect(o.checked!, unittest.isTrue);
    checkUnnamed2409(o.childListItems!);
    checkTextContent(o.text! as api.TextContent);
  }
  buildCounterListItem--;
}

core.List<api.Note> buildUnnamed2410() {
  var o = <api.Note>[];
  o.add(buildNote());
  o.add(buildNote());
  return o;
}

void checkUnnamed2410(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0] as api.Note);
  checkNote(o[1] as api.Note);
}

core.int buildCounterListNotesResponse = 0;
api.ListNotesResponse buildListNotesResponse() {
  var o = api.ListNotesResponse();
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    o.nextPageToken = 'foo';
    o.notes = buildUnnamed2410();
  }
  buildCounterListNotesResponse--;
  return o;
}

void checkListNotesResponse(api.ListNotesResponse o) {
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2410(o.notes!);
  }
  buildCounterListNotesResponse--;
}

core.List<api.Attachment> buildUnnamed2411() {
  var o = <api.Attachment>[];
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

void checkUnnamed2411(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0] as api.Attachment);
  checkAttachment(o[1] as api.Attachment);
}

core.List<api.Permission> buildUnnamed2412() {
  var o = <api.Permission>[];
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

void checkUnnamed2412(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0] as api.Permission);
  checkPermission(o[1] as api.Permission);
}

core.int buildCounterNote = 0;
api.Note buildNote() {
  var o = api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.attachments = buildUnnamed2411();
    o.body = buildSection();
    o.createTime = 'foo';
    o.name = 'foo';
    o.permissions = buildUnnamed2412();
    o.title = 'foo';
    o.trashTime = 'foo';
    o.trashed = true;
    o.updateTime = 'foo';
  }
  buildCounterNote--;
  return o;
}

void checkNote(api.Note o) {
  buildCounterNote++;
  if (buildCounterNote < 3) {
    checkUnnamed2411(o.attachments!);
    checkSection(o.body! as api.Section);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2412(o.permissions!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trashTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.trashed!, unittest.isTrue);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterNote--;
}

core.int buildCounterPermission = 0;
api.Permission buildPermission() {
  var o = api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.deleted = true;
    o.email = 'foo';
    o.family = buildFamily();
    o.group = buildGroup();
    o.name = 'foo';
    o.role = 'foo';
    o.user = buildUser();
  }
  buildCounterPermission--;
  return o;
}

void checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    checkFamily(o.family! as api.Family);
    checkGroup(o.group! as api.Group);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    checkUser(o.user! as api.User);
  }
  buildCounterPermission--;
}

core.int buildCounterSection = 0;
api.Section buildSection() {
  var o = api.Section();
  buildCounterSection++;
  if (buildCounterSection < 3) {
    o.list = buildListContent();
    o.text = buildTextContent();
  }
  buildCounterSection--;
  return o;
}

void checkSection(api.Section o) {
  buildCounterSection++;
  if (buildCounterSection < 3) {
    checkListContent(o.list! as api.ListContent);
    checkTextContent(o.text! as api.TextContent);
  }
  buildCounterSection--;
}

core.int buildCounterTextContent = 0;
api.TextContent buildTextContent() {
  var o = api.TextContent();
  buildCounterTextContent++;
  if (buildCounterTextContent < 3) {
    o.text = 'foo';
  }
  buildCounterTextContent--;
  return o;
}

void checkTextContent(api.TextContent o) {
  buildCounterTextContent++;
  if (buildCounterTextContent < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextContent--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.email = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

void main() {
  unittest.group('obj-schema-Attachment', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAttachment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Attachment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttachment(od as api.Attachment);
    });
  });

  unittest.group('obj-schema-BatchCreatePermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreatePermissionsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreatePermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreatePermissionsRequest(
          od as api.BatchCreatePermissionsRequest);
    });
  });

  unittest.group('obj-schema-BatchCreatePermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreatePermissionsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreatePermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreatePermissionsResponse(
          od as api.BatchCreatePermissionsResponse);
    });
  });

  unittest.group('obj-schema-BatchDeletePermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchDeletePermissionsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchDeletePermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeletePermissionsRequest(
          od as api.BatchDeletePermissionsRequest);
    });
  });

  unittest.group('obj-schema-CreatePermissionRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCreatePermissionRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CreatePermissionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreatePermissionRequest(od as api.CreatePermissionRequest);
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

  unittest.group('obj-schema-Family', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFamily();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Family.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFamily(od as api.Family);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGroup();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od as api.Group);
    });
  });

  unittest.group('obj-schema-ListContent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListContent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListContent(od as api.ListContent);
    });
  });

  unittest.group('obj-schema-ListItem', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListItem();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ListItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkListItem(od as api.ListItem);
    });
  });

  unittest.group('obj-schema-ListNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListNotesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNotesResponse(od as api.ListNotesResponse);
    });
  });

  unittest.group('obj-schema-Note', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNote();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Note.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNote(od as api.Note);
    });
  });

  unittest.group('obj-schema-Permission', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPermission();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Permission.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPermission(od as api.Permission);
    });
  });

  unittest.group('obj-schema-Section', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Section.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSection(od as api.Section);
    });
  });

  unittest.group('obj-schema-TextContent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTextContent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TextContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextContent(od as api.TextContent);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUser();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od as api.User);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.KeepApi(mock).media;
      var arg_name = 'foo';
      var arg_mimeType = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
          queryMap["mimeType"]!.first,
          unittest.equals(arg_mimeType),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAttachment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.download(arg_name,
          mimeType: arg_mimeType, $fields: arg_$fields);
      checkAttachment(response as api.Attachment);
    });
  });

  unittest.group('resource-NotesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.KeepApi(mock).notes;
      var arg_request = buildNote();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Note.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNote(obj as api.Note);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1/notes"),
        );
        pathOffset += 8;

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
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.KeepApi(mock).notes;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
      var res = api.KeepApi(mock).notes;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.KeepApi(mock).notes;
      var arg_filter = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1/notes"),
        );
        pathOffset += 8;

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
        var resp = convert.json.encode(buildListNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNotesResponse(response as api.ListNotesResponse);
    });
  });

  unittest.group('resource-NotesPermissionsResource', () {
    unittest.test('method--batchCreate', () async {
      var mock = HttpServerMock();
      var res = api.KeepApi(mock).notes.permissions;
      var arg_request = buildBatchCreatePermissionsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchCreatePermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreatePermissionsRequest(
            obj as api.BatchCreatePermissionsRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
        var resp = convert.json.encode(buildBatchCreatePermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchCreatePermissionsResponse(
          response as api.BatchCreatePermissionsResponse);
    });

    unittest.test('method--batchDelete', () async {
      var mock = HttpServerMock();
      var res = api.KeepApi(mock).notes.permissions;
      var arg_request = buildBatchDeletePermissionsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchDeletePermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeletePermissionsRequest(
            obj as api.BatchDeletePermissionsRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
  });
}
