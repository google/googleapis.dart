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

import 'package:googleapis/versionhistory/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  final o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.channelType = 'foo';
    o.name = 'foo';
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(
      o.channelType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannel--;
}

core.int buildCounterInterval = 0;
api.Interval buildInterval() {
  final o = api.Interval();
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterInterval--;
  return o;
}

void checkInterval(api.Interval o) {
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInterval--;
}

core.List<api.Channel> buildUnnamed0() => [
      buildChannel(),
      buildChannel(),
    ];

void checkUnnamed0(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.int buildCounterListChannelsResponse = 0;
api.ListChannelsResponse buildListChannelsResponse() {
  final o = api.ListChannelsResponse();
  buildCounterListChannelsResponse++;
  if (buildCounterListChannelsResponse < 3) {
    o.channels = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListChannelsResponse--;
  return o;
}

void checkListChannelsResponse(api.ListChannelsResponse o) {
  buildCounterListChannelsResponse++;
  if (buildCounterListChannelsResponse < 3) {
    checkUnnamed0(o.channels!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListChannelsResponse--;
}

core.List<api.Platform> buildUnnamed1() => [
      buildPlatform(),
      buildPlatform(),
    ];

void checkUnnamed1(core.List<api.Platform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlatform(o[0]);
  checkPlatform(o[1]);
}

core.int buildCounterListPlatformsResponse = 0;
api.ListPlatformsResponse buildListPlatformsResponse() {
  final o = api.ListPlatformsResponse();
  buildCounterListPlatformsResponse++;
  if (buildCounterListPlatformsResponse < 3) {
    o.nextPageToken = 'foo';
    o.platforms = buildUnnamed1();
  }
  buildCounterListPlatformsResponse--;
  return o;
}

void checkListPlatformsResponse(api.ListPlatformsResponse o) {
  buildCounterListPlatformsResponse++;
  if (buildCounterListPlatformsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.platforms!);
  }
  buildCounterListPlatformsResponse--;
}

core.List<api.Release> buildUnnamed2() => [
      buildRelease(),
      buildRelease(),
    ];

void checkUnnamed2(core.List<api.Release> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelease(o[0]);
  checkRelease(o[1]);
}

core.int buildCounterListReleasesResponse = 0;
api.ListReleasesResponse buildListReleasesResponse() {
  final o = api.ListReleasesResponse();
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.releases = buildUnnamed2();
  }
  buildCounterListReleasesResponse--;
  return o;
}

void checkListReleasesResponse(api.ListReleasesResponse o) {
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.releases!);
  }
  buildCounterListReleasesResponse--;
}

core.List<api.Version> buildUnnamed3() => [
      buildVersion(),
      buildVersion(),
    ];

void checkUnnamed3(core.List<api.Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersion(o[0]);
  checkVersion(o[1]);
}

core.int buildCounterListVersionsResponse = 0;
api.ListVersionsResponse buildListVersionsResponse() {
  final o = api.ListVersionsResponse();
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.versions = buildUnnamed3();
  }
  buildCounterListVersionsResponse--;
  return o;
}

void checkListVersionsResponse(api.ListVersionsResponse o) {
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.versions!);
  }
  buildCounterListVersionsResponse--;
}

core.int buildCounterPlatform = 0;
api.Platform buildPlatform() {
  final o = api.Platform();
  buildCounterPlatform++;
  if (buildCounterPlatform < 3) {
    o.name = 'foo';
    o.platformType = 'foo';
  }
  buildCounterPlatform--;
  return o;
}

void checkPlatform(api.Platform o) {
  buildCounterPlatform++;
  if (buildCounterPlatform < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platformType!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlatform--;
}

core.int buildCounterRelease = 0;
api.Release buildRelease() {
  final o = api.Release();
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    o.fraction = 42.0;
    o.name = 'foo';
    o.serving = buildInterval();
    o.version = 'foo';
  }
  buildCounterRelease--;
  return o;
}

void checkRelease(api.Release o) {
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    unittest.expect(
      o.fraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkInterval(o.serving!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelease--;
}

core.int buildCounterVersion = 0;
api.Version buildVersion() {
  final o = api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterVersion--;
  return o;
}

void checkVersion(api.Version o) {
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterVersion--;
}

void main() {
  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Channel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Interval.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInterval(od);
    });
  });

  unittest.group('obj-schema-ListChannelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListChannelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListChannelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListChannelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPlatformsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPlatformsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPlatformsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPlatformsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReleasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReleasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReleasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReleasesResponse(od);
    });
  });

  unittest.group('obj-schema-ListVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-Platform', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Platform.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPlatform(od);
    });
  });

  unittest.group('obj-schema-Release', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Release.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRelease(od);
    });
  });

  unittest.group('obj-schema-Version', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Version.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVersion(od);
    });
  });

  unittest.group('resource-PlatformsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VersionHistoryApi(mock).platforms;
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
        final resp = convert.json.encode(buildListPlatformsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPlatformsResponse(response as api.ListPlatformsResponse);
    });
  });

  unittest.group('resource-PlatformsChannelsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VersionHistoryApi(mock).platforms.channels;
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
        final resp = convert.json.encode(buildListChannelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListChannelsResponse(response as api.ListChannelsResponse);
    });
  });

  unittest.group('resource-PlatformsChannelsVersionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VersionHistoryApi(mock).platforms.channels.versions;
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
        final resp = convert.json.encode(buildListVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVersionsResponse(response as api.ListVersionsResponse);
    });
  });

  unittest.group('resource-PlatformsChannelsVersionsReleasesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.VersionHistoryApi(mock).platforms.channels.versions.releases;
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
        final resp = convert.json.encode(buildListReleasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReleasesResponse(response as api.ListReleasesResponse);
    });
  });
}
