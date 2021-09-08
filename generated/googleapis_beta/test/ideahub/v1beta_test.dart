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

import 'package:googleapis_beta/ideahub/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleSearchIdeahubV1betaAvailableLocale = 0;
api.GoogleSearchIdeahubV1betaAvailableLocale
    buildGoogleSearchIdeahubV1betaAvailableLocale() {
  final o = api.GoogleSearchIdeahubV1betaAvailableLocale();
  buildCounterGoogleSearchIdeahubV1betaAvailableLocale++;
  if (buildCounterGoogleSearchIdeahubV1betaAvailableLocale < 3) {
    o.locale = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleSearchIdeahubV1betaAvailableLocale--;
  return o;
}

void checkGoogleSearchIdeahubV1betaAvailableLocale(
    api.GoogleSearchIdeahubV1betaAvailableLocale o) {
  buildCounterGoogleSearchIdeahubV1betaAvailableLocale++;
  if (buildCounterGoogleSearchIdeahubV1betaAvailableLocale < 3) {
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSearchIdeahubV1betaAvailableLocale--;
}

core.List<api.GoogleSearchIdeahubV1betaTopic> buildUnnamed8559() => [
      buildGoogleSearchIdeahubV1betaTopic(),
      buildGoogleSearchIdeahubV1betaTopic(),
    ];

void checkUnnamed8559(core.List<api.GoogleSearchIdeahubV1betaTopic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSearchIdeahubV1betaTopic(o[0]);
  checkGoogleSearchIdeahubV1betaTopic(o[1]);
}

core.int buildCounterGoogleSearchIdeahubV1betaIdea = 0;
api.GoogleSearchIdeahubV1betaIdea buildGoogleSearchIdeahubV1betaIdea() {
  final o = api.GoogleSearchIdeahubV1betaIdea();
  buildCounterGoogleSearchIdeahubV1betaIdea++;
  if (buildCounterGoogleSearchIdeahubV1betaIdea < 3) {
    o.name = 'foo';
    o.text = 'foo';
    o.topics = buildUnnamed8559();
  }
  buildCounterGoogleSearchIdeahubV1betaIdea--;
  return o;
}

void checkGoogleSearchIdeahubV1betaIdea(api.GoogleSearchIdeahubV1betaIdea o) {
  buildCounterGoogleSearchIdeahubV1betaIdea++;
  if (buildCounterGoogleSearchIdeahubV1betaIdea < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed8559(o.topics!);
  }
  buildCounterGoogleSearchIdeahubV1betaIdea--;
}

core.int buildCounterGoogleSearchIdeahubV1betaIdeaState = 0;
api.GoogleSearchIdeahubV1betaIdeaState
    buildGoogleSearchIdeahubV1betaIdeaState() {
  final o = api.GoogleSearchIdeahubV1betaIdeaState();
  buildCounterGoogleSearchIdeahubV1betaIdeaState++;
  if (buildCounterGoogleSearchIdeahubV1betaIdeaState < 3) {
    o.dismissed = true;
    o.name = 'foo';
    o.saved = true;
  }
  buildCounterGoogleSearchIdeahubV1betaIdeaState--;
  return o;
}

void checkGoogleSearchIdeahubV1betaIdeaState(
    api.GoogleSearchIdeahubV1betaIdeaState o) {
  buildCounterGoogleSearchIdeahubV1betaIdeaState++;
  if (buildCounterGoogleSearchIdeahubV1betaIdeaState < 3) {
    unittest.expect(o.dismissed!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.saved!, unittest.isTrue);
  }
  buildCounterGoogleSearchIdeahubV1betaIdeaState--;
}

core.List<api.GoogleSearchIdeahubV1betaAvailableLocale> buildUnnamed8560() => [
      buildGoogleSearchIdeahubV1betaAvailableLocale(),
      buildGoogleSearchIdeahubV1betaAvailableLocale(),
    ];

void checkUnnamed8560(
    core.List<api.GoogleSearchIdeahubV1betaAvailableLocale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSearchIdeahubV1betaAvailableLocale(o[0]);
  checkGoogleSearchIdeahubV1betaAvailableLocale(o[1]);
}

core.int buildCounterGoogleSearchIdeahubV1betaListAvailableLocalesResponse = 0;
api.GoogleSearchIdeahubV1betaListAvailableLocalesResponse
    buildGoogleSearchIdeahubV1betaListAvailableLocalesResponse() {
  final o = api.GoogleSearchIdeahubV1betaListAvailableLocalesResponse();
  buildCounterGoogleSearchIdeahubV1betaListAvailableLocalesResponse++;
  if (buildCounterGoogleSearchIdeahubV1betaListAvailableLocalesResponse < 3) {
    o.availableLocales = buildUnnamed8560();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleSearchIdeahubV1betaListAvailableLocalesResponse--;
  return o;
}

void checkGoogleSearchIdeahubV1betaListAvailableLocalesResponse(
    api.GoogleSearchIdeahubV1betaListAvailableLocalesResponse o) {
  buildCounterGoogleSearchIdeahubV1betaListAvailableLocalesResponse++;
  if (buildCounterGoogleSearchIdeahubV1betaListAvailableLocalesResponse < 3) {
    checkUnnamed8560(o.availableLocales!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSearchIdeahubV1betaListAvailableLocalesResponse--;
}

core.List<api.GoogleSearchIdeahubV1betaIdea> buildUnnamed8561() => [
      buildGoogleSearchIdeahubV1betaIdea(),
      buildGoogleSearchIdeahubV1betaIdea(),
    ];

void checkUnnamed8561(core.List<api.GoogleSearchIdeahubV1betaIdea> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSearchIdeahubV1betaIdea(o[0]);
  checkGoogleSearchIdeahubV1betaIdea(o[1]);
}

core.int buildCounterGoogleSearchIdeahubV1betaListIdeasResponse = 0;
api.GoogleSearchIdeahubV1betaListIdeasResponse
    buildGoogleSearchIdeahubV1betaListIdeasResponse() {
  final o = api.GoogleSearchIdeahubV1betaListIdeasResponse();
  buildCounterGoogleSearchIdeahubV1betaListIdeasResponse++;
  if (buildCounterGoogleSearchIdeahubV1betaListIdeasResponse < 3) {
    o.ideas = buildUnnamed8561();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleSearchIdeahubV1betaListIdeasResponse--;
  return o;
}

void checkGoogleSearchIdeahubV1betaListIdeasResponse(
    api.GoogleSearchIdeahubV1betaListIdeasResponse o) {
  buildCounterGoogleSearchIdeahubV1betaListIdeasResponse++;
  if (buildCounterGoogleSearchIdeahubV1betaListIdeasResponse < 3) {
    checkUnnamed8561(o.ideas!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSearchIdeahubV1betaListIdeasResponse--;
}

core.int buildCounterGoogleSearchIdeahubV1betaTopic = 0;
api.GoogleSearchIdeahubV1betaTopic buildGoogleSearchIdeahubV1betaTopic() {
  final o = api.GoogleSearchIdeahubV1betaTopic();
  buildCounterGoogleSearchIdeahubV1betaTopic++;
  if (buildCounterGoogleSearchIdeahubV1betaTopic < 3) {
    o.displayName = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleSearchIdeahubV1betaTopic--;
  return o;
}

void checkGoogleSearchIdeahubV1betaTopic(api.GoogleSearchIdeahubV1betaTopic o) {
  buildCounterGoogleSearchIdeahubV1betaTopic++;
  if (buildCounterGoogleSearchIdeahubV1betaTopic < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSearchIdeahubV1betaTopic--;
}

core.int buildCounterGoogleSearchIdeahubV1betaTopicState = 0;
api.GoogleSearchIdeahubV1betaTopicState
    buildGoogleSearchIdeahubV1betaTopicState() {
  final o = api.GoogleSearchIdeahubV1betaTopicState();
  buildCounterGoogleSearchIdeahubV1betaTopicState++;
  if (buildCounterGoogleSearchIdeahubV1betaTopicState < 3) {
    o.dismissed = true;
    o.name = 'foo';
    o.saved = true;
  }
  buildCounterGoogleSearchIdeahubV1betaTopicState--;
  return o;
}

void checkGoogleSearchIdeahubV1betaTopicState(
    api.GoogleSearchIdeahubV1betaTopicState o) {
  buildCounterGoogleSearchIdeahubV1betaTopicState++;
  if (buildCounterGoogleSearchIdeahubV1betaTopicState < 3) {
    unittest.expect(o.dismissed!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.saved!, unittest.isTrue);
  }
  buildCounterGoogleSearchIdeahubV1betaTopicState--;
}

void main() {
  unittest.group('obj-schema-GoogleSearchIdeahubV1betaAvailableLocale', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSearchIdeahubV1betaAvailableLocale();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSearchIdeahubV1betaAvailableLocale.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSearchIdeahubV1betaAvailableLocale(od);
    });
  });

  unittest.group('obj-schema-GoogleSearchIdeahubV1betaIdea', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSearchIdeahubV1betaIdea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSearchIdeahubV1betaIdea.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSearchIdeahubV1betaIdea(od);
    });
  });

  unittest.group('obj-schema-GoogleSearchIdeahubV1betaIdeaState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSearchIdeahubV1betaIdeaState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSearchIdeahubV1betaIdeaState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSearchIdeahubV1betaIdeaState(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSearchIdeahubV1betaListAvailableLocalesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSearchIdeahubV1betaListAvailableLocalesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSearchIdeahubV1betaListAvailableLocalesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSearchIdeahubV1betaListAvailableLocalesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleSearchIdeahubV1betaListIdeasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSearchIdeahubV1betaListIdeasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSearchIdeahubV1betaListIdeasResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSearchIdeahubV1betaListIdeasResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleSearchIdeahubV1betaTopic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSearchIdeahubV1betaTopic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSearchIdeahubV1betaTopic.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSearchIdeahubV1betaTopic(od);
    });
  });

  unittest.group('obj-schema-GoogleSearchIdeahubV1betaTopicState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSearchIdeahubV1betaTopicState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSearchIdeahubV1betaTopicState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSearchIdeahubV1betaTopicState(od);
    });
  });

  unittest.group('resource-PlatformsPropertiesIdeaStatesResource', () {
    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IdeahubApi(mock).platforms.properties.ideaStates;
      final arg_request = buildGoogleSearchIdeahubV1betaIdeaState();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleSearchIdeahubV1betaIdeaState.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleSearchIdeahubV1betaIdeaState(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            convert.json.encode(buildGoogleSearchIdeahubV1betaIdeaState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleSearchIdeahubV1betaIdeaState(
          response as api.GoogleSearchIdeahubV1betaIdeaState);
    });
  });

  unittest.group('resource-PlatformsPropertiesIdeasResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IdeahubApi(mock).platforms.properties.ideas;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleSearchIdeahubV1betaListIdeasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleSearchIdeahubV1betaListIdeasResponse(
          response as api.GoogleSearchIdeahubV1betaListIdeasResponse);
    });
  });

  unittest.group('resource-PlatformsPropertiesLocalesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IdeahubApi(mock).platforms.properties.locales;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleSearchIdeahubV1betaListAvailableLocalesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleSearchIdeahubV1betaListAvailableLocalesResponse(response
          as api.GoogleSearchIdeahubV1betaListAvailableLocalesResponse);
    });
  });

  unittest.group('resource-PlatformsPropertiesTopicStatesResource', () {
    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IdeahubApi(mock).platforms.properties.topicStates;
      final arg_request = buildGoogleSearchIdeahubV1betaTopicState();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleSearchIdeahubV1betaTopicState.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleSearchIdeahubV1betaTopicState(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            convert.json.encode(buildGoogleSearchIdeahubV1betaTopicState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleSearchIdeahubV1betaTopicState(
          response as api.GoogleSearchIdeahubV1betaTopicState);
    });
  });
}
