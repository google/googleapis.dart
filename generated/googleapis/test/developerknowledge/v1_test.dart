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

core.List<api.AnswerCitation> buildUnnamed0() => [
  buildAnswerCitation(),
  buildAnswerCitation(),
];

void checkUnnamed0(core.List<api.AnswerCitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnswerCitation(o[0]);
  checkAnswerCitation(o[1]);
}

core.List<api.AnswerReference> buildUnnamed1() => [
  buildAnswerReference(),
  buildAnswerReference(),
];

void checkUnnamed1(core.List<api.AnswerReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnswerReference(o[0]);
  checkAnswerReference(o[1]);
}

core.int buildCounterAnswer = 0;
api.Answer buildAnswer() {
  final o = api.Answer();
  buildCounterAnswer++;
  if (buildCounterAnswer < 3) {
    o.answerText = 'foo';
    o.citations = buildUnnamed0();
    o.references = buildUnnamed1();
  }
  buildCounterAnswer--;
  return o;
}

void checkAnswer(api.Answer o) {
  buildCounterAnswer++;
  if (buildCounterAnswer < 3) {
    unittest.expect(o.answerText!, unittest.equals('foo'));
    checkUnnamed0(o.citations!);
    checkUnnamed1(o.references!);
  }
  buildCounterAnswer--;
}

core.List<api.CitationSource> buildUnnamed2() => [
  buildCitationSource(),
  buildCitationSource(),
];

void checkUnnamed2(core.List<api.CitationSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCitationSource(o[0]);
  checkCitationSource(o[1]);
}

core.int buildCounterAnswerCitation = 0;
api.AnswerCitation buildAnswerCitation() {
  final o = api.AnswerCitation();
  buildCounterAnswerCitation++;
  if (buildCounterAnswerCitation < 3) {
    o.endIndex = 42;
    o.sources = buildUnnamed2();
    o.startIndex = 42;
  }
  buildCounterAnswerCitation--;
  return o;
}

void checkAnswerCitation(api.AnswerCitation o) {
  buildCounterAnswerCitation++;
  if (buildCounterAnswerCitation < 3) {
    unittest.expect(o.endIndex!, unittest.equals(42));
    checkUnnamed2(o.sources!);
    unittest.expect(o.startIndex!, unittest.equals(42));
  }
  buildCounterAnswerCitation--;
}

core.int buildCounterAnswerQueryRequest = 0;
api.AnswerQueryRequest buildAnswerQueryRequest() {
  final o = api.AnswerQueryRequest();
  buildCounterAnswerQueryRequest++;
  if (buildCounterAnswerQueryRequest < 3) {
    o.query = 'foo';
  }
  buildCounterAnswerQueryRequest--;
  return o;
}

void checkAnswerQueryRequest(api.AnswerQueryRequest o) {
  buildCounterAnswerQueryRequest++;
  if (buildCounterAnswerQueryRequest < 3) {
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterAnswerQueryRequest--;
}

core.int buildCounterAnswerQueryResponse = 0;
api.AnswerQueryResponse buildAnswerQueryResponse() {
  final o = api.AnswerQueryResponse();
  buildCounterAnswerQueryResponse++;
  if (buildCounterAnswerQueryResponse < 3) {
    o.answer = buildAnswer();
  }
  buildCounterAnswerQueryResponse--;
  return o;
}

void checkAnswerQueryResponse(api.AnswerQueryResponse o) {
  buildCounterAnswerQueryResponse++;
  if (buildCounterAnswerQueryResponse < 3) {
    checkAnswer(o.answer!);
  }
  buildCounterAnswerQueryResponse--;
}

core.int buildCounterAnswerReference = 0;
api.AnswerReference buildAnswerReference() {
  final o = api.AnswerReference();
  buildCounterAnswerReference++;
  if (buildCounterAnswerReference < 3) {
    o.documentReference = buildDocumentReference();
  }
  buildCounterAnswerReference--;
  return o;
}

void checkAnswerReference(api.AnswerReference o) {
  buildCounterAnswerReference++;
  if (buildCounterAnswerReference < 3) {
    checkDocumentReference(o.documentReference!);
  }
  buildCounterAnswerReference--;
}

core.List<api.Document> buildUnnamed3() => [buildDocument(), buildDocument()];

void checkUnnamed3(core.List<api.Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocument(o[0]);
  checkDocument(o[1]);
}

core.int buildCounterBatchGetDocumentsResponse = 0;
api.BatchGetDocumentsResponse buildBatchGetDocumentsResponse() {
  final o = api.BatchGetDocumentsResponse();
  buildCounterBatchGetDocumentsResponse++;
  if (buildCounterBatchGetDocumentsResponse < 3) {
    o.documents = buildUnnamed3();
  }
  buildCounterBatchGetDocumentsResponse--;
  return o;
}

void checkBatchGetDocumentsResponse(api.BatchGetDocumentsResponse o) {
  buildCounterBatchGetDocumentsResponse++;
  if (buildCounterBatchGetDocumentsResponse < 3) {
    checkUnnamed3(o.documents!);
  }
  buildCounterBatchGetDocumentsResponse--;
}

core.int buildCounterCitationSource = 0;
api.CitationSource buildCitationSource() {
  final o = api.CitationSource();
  buildCounterCitationSource++;
  if (buildCounterCitationSource < 3) {
    o.referenceIndex = 42;
  }
  buildCounterCitationSource--;
  return o;
}

void checkCitationSource(api.CitationSource o) {
  buildCounterCitationSource++;
  if (buildCounterCitationSource < 3) {
    unittest.expect(o.referenceIndex!, unittest.equals(42));
  }
  buildCounterCitationSource--;
}

core.int buildCounterDocument = 0;
api.Document buildDocument() {
  final o = api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.content = 'foo';
    o.contentLengthBytes = 42;
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
    unittest.expect(o.contentLengthBytes!, unittest.equals(42));
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
    o.relevanceScore = 42.0;
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
    unittest.expect(o.relevanceScore!, unittest.equals(42.0));
  }
  buildCounterDocumentChunk--;
}

core.int buildCounterDocumentReference = 0;
api.DocumentReference buildDocumentReference() {
  final o = api.DocumentReference();
  buildCounterDocumentReference++;
  if (buildCounterDocumentReference < 3) {
    o.documentChunk = buildDocumentChunk();
  }
  buildCounterDocumentReference--;
  return o;
}

void checkDocumentReference(api.DocumentReference o) {
  buildCounterDocumentReference++;
  if (buildCounterDocumentReference < 3) {
    checkDocumentChunk(o.documentChunk!);
  }
  buildCounterDocumentReference--;
}

core.List<api.DocumentChunk> buildUnnamed4() => [
  buildDocumentChunk(),
  buildDocumentChunk(),
];

void checkUnnamed4(core.List<api.DocumentChunk> o) {
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
    o.results = buildUnnamed4();
  }
  buildCounterSearchDocumentChunksResponse--;
  return o;
}

void checkSearchDocumentChunksResponse(api.SearchDocumentChunksResponse o) {
  buildCounterSearchDocumentChunksResponse++;
  if (buildCounterSearchDocumentChunksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed4(o.results!);
  }
  buildCounterSearchDocumentChunksResponse--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Answer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Answer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnswer(od);
    });
  });

  unittest.group('obj-schema-AnswerCitation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnswerCitation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnswerCitation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnswerCitation(od);
    });
  });

  unittest.group('obj-schema-AnswerQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnswerQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnswerQueryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnswerQueryRequest(od);
    });
  });

  unittest.group('obj-schema-AnswerQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnswerQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnswerQueryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnswerQueryResponse(od);
    });
  });

  unittest.group('obj-schema-AnswerReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnswerReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnswerReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnswerReference(od);
    });
  });

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

  unittest.group('obj-schema-CitationSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCitationSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CitationSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCitationSource(od);
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

  unittest.group('obj-schema-DocumentReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentReference(od);
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
      final arg_names = buildUnnamed5();
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

  unittest.group('resource-V1Resource', () {
    unittest.test('method--answerQuery', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperKnowledgeApi(mock).v1;
      final arg_request = buildAnswerQueryRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AnswerQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAnswerQueryRequest(obj);

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
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('v1:answerQuery'),
          );
          pathOffset += 14;

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAnswerQueryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.answerQuery(arg_request, $fields: arg_$fields);
      checkAnswerQueryResponse(response as api.AnswerQueryResponse);
    });
  });
}
