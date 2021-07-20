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

import 'package:googleapis/keep/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed2419() => [
      'foo',
      'foo',
    ];

void checkUnnamed2419(core.List<core.String> o) {
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
  final o = api.Attachment();
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    o.mimeType = buildUnnamed2419();
    o.name = 'foo';
  }
  buildCounterAttachment--;
  return o;
}

void checkAttachment(api.Attachment o) {
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    checkUnnamed2419(o.mimeType!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttachment--;
}

core.List<api.CreatePermissionRequest> buildUnnamed2420() => [
      buildCreatePermissionRequest(),
      buildCreatePermissionRequest(),
    ];

void checkUnnamed2420(core.List<api.CreatePermissionRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreatePermissionRequest(o[0]);
  checkCreatePermissionRequest(o[1]);
}

core.int buildCounterBatchCreatePermissionsRequest = 0;
api.BatchCreatePermissionsRequest buildBatchCreatePermissionsRequest() {
  final o = api.BatchCreatePermissionsRequest();
  buildCounterBatchCreatePermissionsRequest++;
  if (buildCounterBatchCreatePermissionsRequest < 3) {
    o.requests = buildUnnamed2420();
  }
  buildCounterBatchCreatePermissionsRequest--;
  return o;
}

void checkBatchCreatePermissionsRequest(api.BatchCreatePermissionsRequest o) {
  buildCounterBatchCreatePermissionsRequest++;
  if (buildCounterBatchCreatePermissionsRequest < 3) {
    checkUnnamed2420(o.requests!);
  }
  buildCounterBatchCreatePermissionsRequest--;
}

core.List<api.Permission> buildUnnamed2421() => [
      buildPermission(),
      buildPermission(),
    ];

void checkUnnamed2421(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterBatchCreatePermissionsResponse = 0;
api.BatchCreatePermissionsResponse buildBatchCreatePermissionsResponse() {
  final o = api.BatchCreatePermissionsResponse();
  buildCounterBatchCreatePermissionsResponse++;
  if (buildCounterBatchCreatePermissionsResponse < 3) {
    o.permissions = buildUnnamed2421();
  }
  buildCounterBatchCreatePermissionsResponse--;
  return o;
}

void checkBatchCreatePermissionsResponse(api.BatchCreatePermissionsResponse o) {
  buildCounterBatchCreatePermissionsResponse++;
  if (buildCounterBatchCreatePermissionsResponse < 3) {
    checkUnnamed2421(o.permissions!);
  }
  buildCounterBatchCreatePermissionsResponse--;
}

core.List<core.String> buildUnnamed2422() => [
      'foo',
      'foo',
    ];

void checkUnnamed2422(core.List<core.String> o) {
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
  final o = api.BatchDeletePermissionsRequest();
  buildCounterBatchDeletePermissionsRequest++;
  if (buildCounterBatchDeletePermissionsRequest < 3) {
    o.names = buildUnnamed2422();
  }
  buildCounterBatchDeletePermissionsRequest--;
  return o;
}

void checkBatchDeletePermissionsRequest(api.BatchDeletePermissionsRequest o) {
  buildCounterBatchDeletePermissionsRequest++;
  if (buildCounterBatchDeletePermissionsRequest < 3) {
    checkUnnamed2422(o.names!);
  }
  buildCounterBatchDeletePermissionsRequest--;
}

core.int buildCounterCreatePermissionRequest = 0;
api.CreatePermissionRequest buildCreatePermissionRequest() {
  final o = api.CreatePermissionRequest();
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
    checkPermission(o.permission!);
  }
  buildCounterCreatePermissionRequest--;
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

core.int buildCounterFamily = 0;
api.Family buildFamily() {
  final o = api.Family();
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
  final o = api.Group();
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

core.List<api.ListItem> buildUnnamed2423() => [
      buildListItem(),
      buildListItem(),
    ];

void checkUnnamed2423(core.List<api.ListItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListItem(o[0]);
  checkListItem(o[1]);
}

core.int buildCounterListContent = 0;
api.ListContent buildListContent() {
  final o = api.ListContent();
  buildCounterListContent++;
  if (buildCounterListContent < 3) {
    o.listItems = buildUnnamed2423();
  }
  buildCounterListContent--;
  return o;
}

void checkListContent(api.ListContent o) {
  buildCounterListContent++;
  if (buildCounterListContent < 3) {
    checkUnnamed2423(o.listItems!);
  }
  buildCounterListContent--;
}

core.List<api.ListItem> buildUnnamed2424() => [
      buildListItem(),
      buildListItem(),
    ];

void checkUnnamed2424(core.List<api.ListItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListItem(o[0]);
  checkListItem(o[1]);
}

core.int buildCounterListItem = 0;
api.ListItem buildListItem() {
  final o = api.ListItem();
  buildCounterListItem++;
  if (buildCounterListItem < 3) {
    o.checked = true;
    o.childListItems = buildUnnamed2424();
    o.text = buildTextContent();
  }
  buildCounterListItem--;
  return o;
}

void checkListItem(api.ListItem o) {
  buildCounterListItem++;
  if (buildCounterListItem < 3) {
    unittest.expect(o.checked!, unittest.isTrue);
    checkUnnamed2424(o.childListItems!);
    checkTextContent(o.text!);
  }
  buildCounterListItem--;
}

core.List<api.Note> buildUnnamed2425() => [
      buildNote(),
      buildNote(),
    ];

void checkUnnamed2425(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.int buildCounterListNotesResponse = 0;
api.ListNotesResponse buildListNotesResponse() {
  final o = api.ListNotesResponse();
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    o.nextPageToken = 'foo';
    o.notes = buildUnnamed2425();
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
    checkUnnamed2425(o.notes!);
  }
  buildCounterListNotesResponse--;
}

core.List<api.Attachment> buildUnnamed2426() => [
      buildAttachment(),
      buildAttachment(),
    ];

void checkUnnamed2426(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.List<api.Permission> buildUnnamed2427() => [
      buildPermission(),
      buildPermission(),
    ];

void checkUnnamed2427(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterNote = 0;
api.Note buildNote() {
  final o = api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.attachments = buildUnnamed2426();
    o.body = buildSection();
    o.createTime = 'foo';
    o.name = 'foo';
    o.permissions = buildUnnamed2427();
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
    checkUnnamed2426(o.attachments!);
    checkSection(o.body!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2427(o.permissions!);
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
  final o = api.Permission();
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
    checkFamily(o.family!);
    checkGroup(o.group!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    checkUser(o.user!);
  }
  buildCounterPermission--;
}

core.int buildCounterSection = 0;
api.Section buildSection() {
  final o = api.Section();
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
    checkListContent(o.list!);
    checkTextContent(o.text!);
  }
  buildCounterSection--;
}

core.int buildCounterTextContent = 0;
api.TextContent buildTextContent() {
  final o = api.TextContent();
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
  final o = api.User();
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
      final o = buildAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attachment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttachment(od);
    });
  });

  unittest.group('obj-schema-BatchCreatePermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreatePermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreatePermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreatePermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreatePermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreatePermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreatePermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreatePermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchDeletePermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeletePermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeletePermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeletePermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-CreatePermissionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreatePermissionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreatePermissionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreatePermissionRequest(od);
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

  unittest.group('obj-schema-Family', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFamily();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Family.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFamily(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-ListContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListContent(od);
    });
  });

  unittest.group('obj-schema-ListItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ListItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkListItem(od);
    });
  });

  unittest.group('obj-schema-ListNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNotesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNotesResponse(od);
    });
  });

  unittest.group('obj-schema-Note', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Note.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNote(od);
    });
  });

  unittest.group('obj-schema-Permission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Permission.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPermission(od);
    });
  });

  unittest.group('obj-schema-Section', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Section.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSection(od);
    });
  });

  unittest.group('obj-schema-TextContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextContent(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.KeepApi(mock).media;
      final arg_name = 'foo';
      final arg_mimeType = 'foo';
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
          queryMap['mimeType']!.first,
          unittest.equals(arg_mimeType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAttachment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.download(arg_name,
          mimeType: arg_mimeType, $fields: arg_$fields);
      checkAttachment(response as api.Attachment);
    });
  });

  unittest.group('resource-NotesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.KeepApi(mock).notes;
      final arg_request = buildNote();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Note.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNote(obj);

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
          unittest.equals('v1/notes'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.KeepApi(mock).notes;
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
      final res = api.KeepApi(mock).notes;
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
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.KeepApi(mock).notes;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1/notes'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildListNotesResponse());
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
      final mock = HttpServerMock();
      final res = api.KeepApi(mock).notes.permissions;
      final arg_request = buildBatchCreatePermissionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreatePermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreatePermissionsRequest(obj);

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
        final resp = convert.json.encode(buildBatchCreatePermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchCreatePermissionsResponse(
          response as api.BatchCreatePermissionsResponse);
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.KeepApi(mock).notes.permissions;
      final arg_request = buildBatchDeletePermissionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchDeletePermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeletePermissionsRequest(obj);

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
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });
}
