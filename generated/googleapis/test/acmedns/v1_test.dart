// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/acmedns/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AcmeTxtRecord> buildUnnamed0() => [
      buildAcmeTxtRecord(),
      buildAcmeTxtRecord(),
    ];

void checkUnnamed0(core.List<api.AcmeTxtRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcmeTxtRecord(o[0]);
  checkAcmeTxtRecord(o[1]);
}

core.int buildCounterAcmeChallengeSet = 0;
api.AcmeChallengeSet buildAcmeChallengeSet() {
  final o = api.AcmeChallengeSet();
  buildCounterAcmeChallengeSet++;
  if (buildCounterAcmeChallengeSet < 3) {
    o.record = buildUnnamed0();
  }
  buildCounterAcmeChallengeSet--;
  return o;
}

void checkAcmeChallengeSet(api.AcmeChallengeSet o) {
  buildCounterAcmeChallengeSet++;
  if (buildCounterAcmeChallengeSet < 3) {
    checkUnnamed0(o.record!);
  }
  buildCounterAcmeChallengeSet--;
}

core.int buildCounterAcmeTxtRecord = 0;
api.AcmeTxtRecord buildAcmeTxtRecord() {
  final o = api.AcmeTxtRecord();
  buildCounterAcmeTxtRecord++;
  if (buildCounterAcmeTxtRecord < 3) {
    o.digest = 'foo';
    o.fqdn = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAcmeTxtRecord--;
  return o;
}

void checkAcmeTxtRecord(api.AcmeTxtRecord o) {
  buildCounterAcmeTxtRecord++;
  if (buildCounterAcmeTxtRecord < 3) {
    unittest.expect(
      o.digest!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fqdn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAcmeTxtRecord--;
}

core.List<api.AcmeTxtRecord> buildUnnamed1() => [
      buildAcmeTxtRecord(),
      buildAcmeTxtRecord(),
    ];

void checkUnnamed1(core.List<api.AcmeTxtRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcmeTxtRecord(o[0]);
  checkAcmeTxtRecord(o[1]);
}

core.List<api.AcmeTxtRecord> buildUnnamed2() => [
      buildAcmeTxtRecord(),
      buildAcmeTxtRecord(),
    ];

void checkUnnamed2(core.List<api.AcmeTxtRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcmeTxtRecord(o[0]);
  checkAcmeTxtRecord(o[1]);
}

core.int buildCounterRotateChallengesRequest = 0;
api.RotateChallengesRequest buildRotateChallengesRequest() {
  final o = api.RotateChallengesRequest();
  buildCounterRotateChallengesRequest++;
  if (buildCounterRotateChallengesRequest < 3) {
    o.accessToken = 'foo';
    o.keepExpiredRecords = true;
    o.recordsToAdd = buildUnnamed1();
    o.recordsToRemove = buildUnnamed2();
  }
  buildCounterRotateChallengesRequest--;
  return o;
}

void checkRotateChallengesRequest(api.RotateChallengesRequest o) {
  buildCounterRotateChallengesRequest++;
  if (buildCounterRotateChallengesRequest < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(o.keepExpiredRecords!, unittest.isTrue);
    checkUnnamed1(o.recordsToAdd!);
    checkUnnamed2(o.recordsToRemove!);
  }
  buildCounterRotateChallengesRequest--;
}

void main() {
  unittest.group('obj-schema-AcmeChallengeSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcmeChallengeSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcmeChallengeSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcmeChallengeSet(od);
    });
  });

  unittest.group('obj-schema-AcmeTxtRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcmeTxtRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcmeTxtRecord.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcmeTxtRecord(od);
    });
  });

  unittest.group('obj-schema-RotateChallengesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRotateChallengesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RotateChallengesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRotateChallengesRequest(od);
    });
  });

  unittest.group('resource-AcmeChallengeSetsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ACMEDNSApi(mock).acmeChallengeSets;
      final arg_rootDomain = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v1/acmeChallengeSets/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_rootDomain'),
        );

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
        final resp = convert.json.encode(buildAcmeChallengeSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_rootDomain, $fields: arg_$fields);
      checkAcmeChallengeSet(response as api.AcmeChallengeSet);
    });

    unittest.test('method--rotateChallenges', () async {
      final mock = HttpServerMock();
      final res = api.ACMEDNSApi(mock).acmeChallengeSets;
      final arg_request = buildRotateChallengesRequest();
      final arg_rootDomain = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RotateChallengesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRotateChallengesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v1/acmeChallengeSets/'),
        );
        pathOffset += 21;
        index = path.indexOf(':rotateChallenges', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_rootDomain'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals(':rotateChallenges'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildAcmeChallengeSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.rotateChallenges(arg_request, arg_rootDomain,
          $fields: arg_$fields);
      checkAcmeChallengeSet(response as api.AcmeChallengeSet);
    });
  });
}
