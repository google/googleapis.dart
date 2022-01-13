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

import 'package:googleapis/mybusinessqanda/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAnswer = 0;
api.Answer buildAnswer() {
  final o = api.Answer();
  buildCounterAnswer++;
  if (buildCounterAnswer < 3) {
    o.author = buildAuthor();
    o.createTime = 'foo';
    o.name = 'foo';
    o.text = 'foo';
    o.updateTime = 'foo';
    o.upvoteCount = 42;
  }
  buildCounterAnswer--;
  return o;
}

void checkAnswer(api.Answer o) {
  buildCounterAnswer++;
  if (buildCounterAnswer < 3) {
    checkAuthor(o.author!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.upvoteCount!,
      unittest.equals(42),
    );
  }
  buildCounterAnswer--;
}

core.int buildCounterAuthor = 0;
api.Author buildAuthor() {
  final o = api.Author();
  buildCounterAuthor++;
  if (buildCounterAuthor < 3) {
    o.displayName = 'foo';
    o.profilePhotoUri = 'foo';
    o.type = 'foo';
  }
  buildCounterAuthor--;
  return o;
}

void checkAuthor(api.Author o) {
  buildCounterAuthor++;
  if (buildCounterAuthor < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profilePhotoUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthor--;
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

core.List<api.Answer> buildUnnamed0() => [
      buildAnswer(),
      buildAnswer(),
    ];

void checkUnnamed0(core.List<api.Answer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnswer(o[0]);
  checkAnswer(o[1]);
}

core.int buildCounterListAnswersResponse = 0;
api.ListAnswersResponse buildListAnswersResponse() {
  final o = api.ListAnswersResponse();
  buildCounterListAnswersResponse++;
  if (buildCounterListAnswersResponse < 3) {
    o.answers = buildUnnamed0();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListAnswersResponse--;
  return o;
}

void checkListAnswersResponse(api.ListAnswersResponse o) {
  buildCounterListAnswersResponse++;
  if (buildCounterListAnswersResponse < 3) {
    checkUnnamed0(o.answers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListAnswersResponse--;
}

core.List<api.Question> buildUnnamed1() => [
      buildQuestion(),
      buildQuestion(),
    ];

void checkUnnamed1(core.List<api.Question> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuestion(o[0]);
  checkQuestion(o[1]);
}

core.int buildCounterListQuestionsResponse = 0;
api.ListQuestionsResponse buildListQuestionsResponse() {
  final o = api.ListQuestionsResponse();
  buildCounterListQuestionsResponse++;
  if (buildCounterListQuestionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.questions = buildUnnamed1();
    o.totalSize = 42;
  }
  buildCounterListQuestionsResponse--;
  return o;
}

void checkListQuestionsResponse(api.ListQuestionsResponse o) {
  buildCounterListQuestionsResponse++;
  if (buildCounterListQuestionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.questions!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListQuestionsResponse--;
}

core.List<api.Answer> buildUnnamed2() => [
      buildAnswer(),
      buildAnswer(),
    ];

void checkUnnamed2(core.List<api.Answer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnswer(o[0]);
  checkAnswer(o[1]);
}

core.int buildCounterQuestion = 0;
api.Question buildQuestion() {
  final o = api.Question();
  buildCounterQuestion++;
  if (buildCounterQuestion < 3) {
    o.author = buildAuthor();
    o.createTime = 'foo';
    o.name = 'foo';
    o.text = 'foo';
    o.topAnswers = buildUnnamed2();
    o.totalAnswerCount = 42;
    o.updateTime = 'foo';
    o.upvoteCount = 42;
  }
  buildCounterQuestion--;
  return o;
}

void checkQuestion(api.Question o) {
  buildCounterQuestion++;
  if (buildCounterQuestion < 3) {
    checkAuthor(o.author!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.topAnswers!);
    unittest.expect(
      o.totalAnswerCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.upvoteCount!,
      unittest.equals(42),
    );
  }
  buildCounterQuestion--;
}

core.int buildCounterUpsertAnswerRequest = 0;
api.UpsertAnswerRequest buildUpsertAnswerRequest() {
  final o = api.UpsertAnswerRequest();
  buildCounterUpsertAnswerRequest++;
  if (buildCounterUpsertAnswerRequest < 3) {
    o.answer = buildAnswer();
  }
  buildCounterUpsertAnswerRequest--;
  return o;
}

void checkUpsertAnswerRequest(api.UpsertAnswerRequest o) {
  buildCounterUpsertAnswerRequest++;
  if (buildCounterUpsertAnswerRequest < 3) {
    checkAnswer(o.answer!);
  }
  buildCounterUpsertAnswerRequest--;
}

void main() {
  unittest.group('obj-schema-Answer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Answer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAnswer(od);
    });
  });

  unittest.group('obj-schema-Author', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Author.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAuthor(od);
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

  unittest.group('obj-schema-ListAnswersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAnswersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAnswersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAnswersResponse(od);
    });
  });

  unittest.group('obj-schema-ListQuestionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListQuestionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListQuestionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListQuestionsResponse(od);
    });
  });

  unittest.group('obj-schema-Question', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Question.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuestion(od);
    });
  });

  unittest.group('obj-schema-UpsertAnswerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpsertAnswerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpsertAnswerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpsertAnswerRequest(od);
    });
  });

  unittest.group('resource-LocationsQuestionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessQ_AApi(mock).locations.questions;
      final arg_request = buildQuestion();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Question.fromJson(json as core.Map<core.String, core.dynamic>);
        checkQuestion(obj);

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
        final resp = convert.json.encode(buildQuestion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkQuestion(response as api.Question);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessQ_AApi(mock).locations.questions;
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

    unittest.test('method--deleteAnswers', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessQ_AApi(mock).locations.questions;
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
      final response = await res.deleteAnswers(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessQ_AApi(mock).locations.questions;
      final arg_parent = 'foo';
      final arg_answersPerQuestion = 42;
      final arg_filter = 'foo';
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
          core.int.parse(queryMap['answersPerQuestion']!.first),
          unittest.equals(arg_answersPerQuestion),
        );
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListQuestionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          answersPerQuestion: arg_answersPerQuestion,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListQuestionsResponse(response as api.ListQuestionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessQ_AApi(mock).locations.questions;
      final arg_request = buildQuestion();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Question.fromJson(json as core.Map<core.String, core.dynamic>);
        checkQuestion(obj);

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
        final resp = convert.json.encode(buildQuestion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkQuestion(response as api.Question);
    });
  });

  unittest.group('resource-LocationsQuestionsAnswersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessQ_AApi(mock).locations.questions.answers;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListAnswersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAnswersResponse(response as api.ListAnswersResponse);
    });

    unittest.test('method--upsert', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessQ_AApi(mock).locations.questions.answers;
      final arg_request = buildUpsertAnswerRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpsertAnswerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpsertAnswerRequest(obj);

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
        final resp = convert.json.encode(buildAnswer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upsert(arg_request, arg_parent, $fields: arg_$fields);
      checkAnswer(response as api.Answer);
    });
  });
}
