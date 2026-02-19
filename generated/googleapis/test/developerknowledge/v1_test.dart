// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/developerknowledge/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Document> buildUnnamed0() => [buildDocument(), buildDocument()];

void checkUnnamed0(core.List<api.Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocument(o[0]);
  checkDocument(o[1]);
}

core.int buildCounterBatchGetDocumentsResponse = 0;
api.BatchGetDocumentsResponse buildBatchGetDocumentsResponse() {
  final o = api.BatchGetDocumentsResponse();
  buildCounterBatchGetDocumentsResponse++;
  if (buildCounterBatchGetDocumentsResponse < 3) {
    o.documents = buildUnnamed0();
  }
  buildCounterBatchGetDocumentsResponse--;
  return o;
}

void checkBatchGetDocumentsResponse(api.BatchGetDocumentsResponse o) {
  buildCounterBatchGetDocumentsResponse++;
  if (buildCounterBatchGetDocumentsResponse < 3) {
    checkUnnamed0(o.documents!);
  }
  buildCounterBatchGetDocumentsResponse--;
}

core.int buildCounterDocument = 0;
api.Document buildDocument() {
  final o = api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.content = 'foo';
    o.dataSource = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.title = 'foo';
    o.updateTime = 'foo';
    o.uri = 'foo';
    o.view = 'foo';
  }
  buildCounterDocument--;
  return o;
}

void checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.dataSource!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.view!, unittest.equals('foo'));
  }
  buildCounterDocument--;
}

core.int buildCounterDocumentChunk = 0;
api.DocumentChunk buildDocumentChunk() {
  final o = api.DocumentChunk();
  buildCounterDocumentChunk++;
  if (buildCounterDocumentChunk < 3) {
    o.content = 'foo';
    o.document = buildDocument();
    o.id = 'foo';
    o.parent = 'foo';
  }
  buildCounterDocumentChunk--;
  return o;
}

void checkDocumentChunk(api.DocumentChunk o) {
  buildCounterDocumentChunk++;
  if (buildCounterDocumentChunk < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    checkDocument(o.document!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
  }
  buildCounterDocumentChunk--;
}

core.List<api.DocumentChunk> buildUnnamed1() => [
  buildDocumentChunk(),
  buildDocumentChunk(),
];

void checkUnnamed1(core.List<api.DocumentChunk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocumentChunk(o[0]);
  checkDocumentChunk(o[1]);
}

core.int buildCounterSearchDocumentChunksResponse = 0;
api.SearchDocumentChunksResponse buildSearchDocumentChunksResponse() {
  final o = api.SearchDocumentChunksResponse();
  buildCounterSearchDocumentChunksResponse++;
  if (buildCounterSearchDocumentChunksResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed1();
  }
  buildCounterSearchDocumentChunksResponse--;
  return o;
}

void checkSearchDocumentChunksResponse(api.SearchDocumentChunksResponse o) {
  buildCounterSearchDocumentChunksResponse++;
  if (buildCounterSearchDocumentChunksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed1(o.results!);
  }
  buildCounterSearchDocumentChunksResponse--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-BatchGetDocumentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetDocumentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchGetDocumentsResponse(od);
    });
  });

  unittest.group('obj-schema-Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Document.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocument(od);
    });
  });

  unittest.group('obj-schema-DocumentChunk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentChunk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentChunk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentChunk(od);
    });
  });

  unittest.group('obj-schema-SearchDocumentChunksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchDocumentChunksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchDocumentChunksResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchDocumentChunksResponse(od);
    });
  });

  unittest.group('resource-DocumentsResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperKnowledgeApi(mock).documents;
      final arg_names = buildUnnamed2();
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 21),
            unittest.equals('v1/documents:batchGet'),
          );
          pathOffset += 21;

          final query = req.url.query;
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
          unittest.expect(queryMap['names']!, unittest.equals(arg_names));
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBatchGetDocumentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchGet(
        names: arg_names,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkBatchGetDocumentsResponse(response as api.BatchGetDocumentsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperKnowledgeApi(mock).documents;
      final arg_name = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDocument());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkDocument(response as api.Document);
    });

    unittest.test('method--searchDocumentChunks', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperKnowledgeApi(mock).documents;
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('v1/documents:searchDocumentChunks'),
          );
          pathOffset += 33;

          final query = req.url.query;
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
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSearchDocumentChunksResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchDocumentChunks(
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        query: arg_query,
        $fields: arg_$fields,
      );
      checkSearchDocumentChunksResponse(
        response as api.SearchDocumentChunksResponse,
      );
    });
  });
}
