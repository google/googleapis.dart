// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/dataportability/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterInitiatePortabilityArchiveRequest = 0;
api.InitiatePortabilityArchiveRequest buildInitiatePortabilityArchiveRequest() {
  final o = api.InitiatePortabilityArchiveRequest();
  buildCounterInitiatePortabilityArchiveRequest++;
  if (buildCounterInitiatePortabilityArchiveRequest < 3) {
    o.resources = buildUnnamed0();
  }
  buildCounterInitiatePortabilityArchiveRequest--;
  return o;
}

void checkInitiatePortabilityArchiveRequest(
    api.InitiatePortabilityArchiveRequest o) {
  buildCounterInitiatePortabilityArchiveRequest++;
  if (buildCounterInitiatePortabilityArchiveRequest < 3) {
    checkUnnamed0(o.resources!);
  }
  buildCounterInitiatePortabilityArchiveRequest--;
}

core.int buildCounterInitiatePortabilityArchiveResponse = 0;
api.InitiatePortabilityArchiveResponse
    buildInitiatePortabilityArchiveResponse() {
  final o = api.InitiatePortabilityArchiveResponse();
  buildCounterInitiatePortabilityArchiveResponse++;
  if (buildCounterInitiatePortabilityArchiveResponse < 3) {
    o.archiveJobId = 'foo';
  }
  buildCounterInitiatePortabilityArchiveResponse--;
  return o;
}

void checkInitiatePortabilityArchiveResponse(
    api.InitiatePortabilityArchiveResponse o) {
  buildCounterInitiatePortabilityArchiveResponse++;
  if (buildCounterInitiatePortabilityArchiveResponse < 3) {
    unittest.expect(
      o.archiveJobId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInitiatePortabilityArchiveResponse--;
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

core.int buildCounterPortabilityArchiveState = 0;
api.PortabilityArchiveState buildPortabilityArchiveState() {
  final o = api.PortabilityArchiveState();
  buildCounterPortabilityArchiveState++;
  if (buildCounterPortabilityArchiveState < 3) {
    o.name = 'foo';
    o.state = 'foo';
    o.urls = buildUnnamed1();
  }
  buildCounterPortabilityArchiveState--;
  return o;
}

void checkPortabilityArchiveState(api.PortabilityArchiveState o) {
  buildCounterPortabilityArchiveState++;
  if (buildCounterPortabilityArchiveState < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.urls!);
  }
  buildCounterPortabilityArchiveState--;
}

core.int buildCounterResetAuthorizationRequest = 0;
api.ResetAuthorizationRequest buildResetAuthorizationRequest() {
  final o = api.ResetAuthorizationRequest();
  buildCounterResetAuthorizationRequest++;
  if (buildCounterResetAuthorizationRequest < 3) {}
  buildCounterResetAuthorizationRequest--;
  return o;
}

void checkResetAuthorizationRequest(api.ResetAuthorizationRequest o) {
  buildCounterResetAuthorizationRequest++;
  if (buildCounterResetAuthorizationRequest < 3) {}
  buildCounterResetAuthorizationRequest--;
}

core.int buildCounterRetryPortabilityArchiveRequest = 0;
api.RetryPortabilityArchiveRequest buildRetryPortabilityArchiveRequest() {
  final o = api.RetryPortabilityArchiveRequest();
  buildCounterRetryPortabilityArchiveRequest++;
  if (buildCounterRetryPortabilityArchiveRequest < 3) {}
  buildCounterRetryPortabilityArchiveRequest--;
  return o;
}

void checkRetryPortabilityArchiveRequest(api.RetryPortabilityArchiveRequest o) {
  buildCounterRetryPortabilityArchiveRequest++;
  if (buildCounterRetryPortabilityArchiveRequest < 3) {}
  buildCounterRetryPortabilityArchiveRequest--;
}

core.int buildCounterRetryPortabilityArchiveResponse = 0;
api.RetryPortabilityArchiveResponse buildRetryPortabilityArchiveResponse() {
  final o = api.RetryPortabilityArchiveResponse();
  buildCounterRetryPortabilityArchiveResponse++;
  if (buildCounterRetryPortabilityArchiveResponse < 3) {
    o.archiveJobId = 'foo';
  }
  buildCounterRetryPortabilityArchiveResponse--;
  return o;
}

void checkRetryPortabilityArchiveResponse(
    api.RetryPortabilityArchiveResponse o) {
  buildCounterRetryPortabilityArchiveResponse++;
  if (buildCounterRetryPortabilityArchiveResponse < 3) {
    unittest.expect(
      o.archiveJobId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRetryPortabilityArchiveResponse--;
}

void main() {
  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-InitiatePortabilityArchiveRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInitiatePortabilityArchiveRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InitiatePortabilityArchiveRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInitiatePortabilityArchiveRequest(od);
    });
  });

  unittest.group('obj-schema-InitiatePortabilityArchiveResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInitiatePortabilityArchiveResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InitiatePortabilityArchiveResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInitiatePortabilityArchiveResponse(od);
    });
  });

  unittest.group('obj-schema-PortabilityArchiveState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPortabilityArchiveState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PortabilityArchiveState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPortabilityArchiveState(od);
    });
  });

  unittest.group('obj-schema-ResetAuthorizationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetAuthorizationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetAuthorizationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetAuthorizationRequest(od);
    });
  });

  unittest.group('obj-schema-RetryPortabilityArchiveRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryPortabilityArchiveRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryPortabilityArchiveRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetryPortabilityArchiveRequest(od);
    });
  });

  unittest.group('obj-schema-RetryPortabilityArchiveResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryPortabilityArchiveResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryPortabilityArchiveResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetryPortabilityArchiveResponse(od);
    });
  });

  unittest.group('resource-ArchiveJobsResource', () {
    unittest.test('method--getPortabilityArchiveState', () async {
      final mock = HttpServerMock();
      final res = api.DataPortabilityApi(mock).archiveJobs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPortabilityArchiveState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getPortabilityArchiveState(arg_name, $fields: arg_$fields);
      checkPortabilityArchiveState(response as api.PortabilityArchiveState);
    });

    unittest.test('method--retry', () async {
      final mock = HttpServerMock();
      final res = api.DataPortabilityApi(mock).archiveJobs;
      final arg_request = buildRetryPortabilityArchiveRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RetryPortabilityArchiveRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRetryPortabilityArchiveRequest(obj);

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
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildRetryPortabilityArchiveResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.retry(arg_request, arg_name, $fields: arg_$fields);
      checkRetryPortabilityArchiveResponse(
          response as api.RetryPortabilityArchiveResponse);
    });
  });

  unittest.group('resource-AuthorizationResource', () {
    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.DataPortabilityApi(mock).authorization;
      final arg_request = buildResetAuthorizationRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResetAuthorizationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetAuthorizationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('v1/authorization:reset'),
        );
        pathOffset += 22;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reset(arg_request, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-PortabilityArchiveResource', () {
    unittest.test('method--initiate', () async {
      final mock = HttpServerMock();
      final res = api.DataPortabilityApi(mock).portabilityArchive;
      final arg_request = buildInitiatePortabilityArchiveRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InitiatePortabilityArchiveRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInitiatePortabilityArchiveRequest(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('v1/portabilityArchive:initiate'),
        );
        pathOffset += 30;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildInitiatePortabilityArchiveResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.initiate(arg_request, $fields: arg_$fields);
      checkInitiatePortabilityArchiveResponse(
          response as api.InitiatePortabilityArchiveResponse);
    });
  });
}
