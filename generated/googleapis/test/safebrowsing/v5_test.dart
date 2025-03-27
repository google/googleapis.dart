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

import 'package:googleapis/safebrowsing/v5.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleSecuritySafebrowsingV5HashList> buildUnnamed0() => [
      buildGoogleSecuritySafebrowsingV5HashList(),
      buildGoogleSecuritySafebrowsingV5HashList(),
    ];

void checkUnnamed0(core.List<api.GoogleSecuritySafebrowsingV5HashList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV5HashList(o[0]);
  checkGoogleSecuritySafebrowsingV5HashList(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV5BatchGetHashListsResponse = 0;
api.GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
    buildGoogleSecuritySafebrowsingV5BatchGetHashListsResponse() {
  final o = api.GoogleSecuritySafebrowsingV5BatchGetHashListsResponse();
  buildCounterGoogleSecuritySafebrowsingV5BatchGetHashListsResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV5BatchGetHashListsResponse < 3) {
    o.hashLists = buildUnnamed0();
  }
  buildCounterGoogleSecuritySafebrowsingV5BatchGetHashListsResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5BatchGetHashListsResponse(
    api.GoogleSecuritySafebrowsingV5BatchGetHashListsResponse o) {
  buildCounterGoogleSecuritySafebrowsingV5BatchGetHashListsResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV5BatchGetHashListsResponse < 3) {
    checkUnnamed0(o.hashLists!);
  }
  buildCounterGoogleSecuritySafebrowsingV5BatchGetHashListsResponse--;
}

core.List<api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail>
    buildUnnamed1() => [
          buildGoogleSecuritySafebrowsingV5FullHashFullHashDetail(),
          buildGoogleSecuritySafebrowsingV5FullHashFullHashDetail(),
        ];

void checkUnnamed1(
    core.List<api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV5FullHashFullHashDetail(o[0]);
  checkGoogleSecuritySafebrowsingV5FullHashFullHashDetail(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV5FullHash = 0;
api.GoogleSecuritySafebrowsingV5FullHash
    buildGoogleSecuritySafebrowsingV5FullHash() {
  final o = api.GoogleSecuritySafebrowsingV5FullHash();
  buildCounterGoogleSecuritySafebrowsingV5FullHash++;
  if (buildCounterGoogleSecuritySafebrowsingV5FullHash < 3) {
    o.fullHash = 'foo';
    o.fullHashDetails = buildUnnamed1();
  }
  buildCounterGoogleSecuritySafebrowsingV5FullHash--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5FullHash(
    api.GoogleSecuritySafebrowsingV5FullHash o) {
  buildCounterGoogleSecuritySafebrowsingV5FullHash++;
  if (buildCounterGoogleSecuritySafebrowsingV5FullHash < 3) {
    unittest.expect(
      o.fullHash!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.fullHashDetails!);
  }
  buildCounterGoogleSecuritySafebrowsingV5FullHash--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail = 0;
api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail
    buildGoogleSecuritySafebrowsingV5FullHashFullHashDetail() {
  final o = api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail();
  buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail++;
  if (buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail < 3) {
    o.attributes = buildUnnamed2();
    o.threatType = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5FullHashFullHashDetail(
    api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail o) {
  buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail++;
  if (buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail < 3) {
    checkUnnamed2(o.attributes!);
    unittest.expect(
      o.threatType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail--;
}

core.int buildCounterGoogleSecuritySafebrowsingV5HashList = 0;
api.GoogleSecuritySafebrowsingV5HashList
    buildGoogleSecuritySafebrowsingV5HashList() {
  final o = api.GoogleSecuritySafebrowsingV5HashList();
  buildCounterGoogleSecuritySafebrowsingV5HashList++;
  if (buildCounterGoogleSecuritySafebrowsingV5HashList < 3) {
    o.additionsEightBytes =
        buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit();
    o.additionsFourBytes =
        buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit();
    o.additionsSixteenBytes =
        buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit();
    o.additionsThirtyTwoBytes =
        buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit();
    o.compressedRemovals =
        buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit();
    o.metadata = buildGoogleSecuritySafebrowsingV5HashListMetadata();
    o.minimumWaitDuration = 'foo';
    o.name = 'foo';
    o.partialUpdate = true;
    o.sha256Checksum = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV5HashList--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5HashList(
    api.GoogleSecuritySafebrowsingV5HashList o) {
  buildCounterGoogleSecuritySafebrowsingV5HashList++;
  if (buildCounterGoogleSecuritySafebrowsingV5HashList < 3) {
    checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit(
        o.additionsEightBytes!);
    checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit(
        o.additionsFourBytes!);
    checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit(
        o.additionsSixteenBytes!);
    checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit(
        o.additionsThirtyTwoBytes!);
    checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit(
        o.compressedRemovals!);
    checkGoogleSecuritySafebrowsingV5HashListMetadata(o.metadata!);
    unittest.expect(
      o.minimumWaitDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.partialUpdate!, unittest.isTrue);
    unittest.expect(
      o.sha256Checksum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV5HashList--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterGoogleSecuritySafebrowsingV5HashListMetadata = 0;
api.GoogleSecuritySafebrowsingV5HashListMetadata
    buildGoogleSecuritySafebrowsingV5HashListMetadata() {
  final o = api.GoogleSecuritySafebrowsingV5HashListMetadata();
  buildCounterGoogleSecuritySafebrowsingV5HashListMetadata++;
  if (buildCounterGoogleSecuritySafebrowsingV5HashListMetadata < 3) {
    o.description = 'foo';
    o.hashLength = 'foo';
    o.likelySafeTypes = buildUnnamed3();
    o.threatTypes = buildUnnamed4();
  }
  buildCounterGoogleSecuritySafebrowsingV5HashListMetadata--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5HashListMetadata(
    api.GoogleSecuritySafebrowsingV5HashListMetadata o) {
  buildCounterGoogleSecuritySafebrowsingV5HashListMetadata++;
  if (buildCounterGoogleSecuritySafebrowsingV5HashListMetadata < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashLength!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.likelySafeTypes!);
    checkUnnamed4(o.threatTypes!);
  }
  buildCounterGoogleSecuritySafebrowsingV5HashListMetadata--;
}

core.List<api.GoogleSecuritySafebrowsingV5HashList> buildUnnamed5() => [
      buildGoogleSecuritySafebrowsingV5HashList(),
      buildGoogleSecuritySafebrowsingV5HashList(),
    ];

void checkUnnamed5(core.List<api.GoogleSecuritySafebrowsingV5HashList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV5HashList(o[0]);
  checkGoogleSecuritySafebrowsingV5HashList(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV5ListHashListsResponse = 0;
api.GoogleSecuritySafebrowsingV5ListHashListsResponse
    buildGoogleSecuritySafebrowsingV5ListHashListsResponse() {
  final o = api.GoogleSecuritySafebrowsingV5ListHashListsResponse();
  buildCounterGoogleSecuritySafebrowsingV5ListHashListsResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV5ListHashListsResponse < 3) {
    o.hashLists = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV5ListHashListsResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5ListHashListsResponse(
    api.GoogleSecuritySafebrowsingV5ListHashListsResponse o) {
  buildCounterGoogleSecuritySafebrowsingV5ListHashListsResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV5ListHashListsResponse < 3) {
    checkUnnamed5(o.hashLists!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV5ListHashListsResponse--;
}

core.int buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit = 0;
api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
    buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit() {
  final o = api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit();
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit++;
  if (buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit < 3) {
    o.encodedData = 'foo';
    o.entriesCount = 42;
    o.firstValueHi = 'foo';
    o.firstValueLo = 'foo';
    o.riceParameter = 42;
  }
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit(
    api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit o) {
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit++;
  if (buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit < 3) {
    unittest.expect(
      o.encodedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entriesCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.firstValueHi!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstValueLo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.riceParameter!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit--;
}

core.int buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit = 0;
api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
    buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit() {
  final o = api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit();
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit++;
  if (buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit < 3) {
    o.encodedData = 'foo';
    o.entriesCount = 42;
    o.firstValueFirstPart = 'foo';
    o.firstValueFourthPart = 'foo';
    o.firstValueSecondPart = 'foo';
    o.firstValueThirdPart = 'foo';
    o.riceParameter = 42;
  }
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit(
    api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit o) {
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit++;
  if (buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit < 3) {
    unittest.expect(
      o.encodedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entriesCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.firstValueFirstPart!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstValueFourthPart!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstValueSecondPart!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstValueThirdPart!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.riceParameter!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit--;
}

core.int buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit = 0;
api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
    buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit() {
  final o = api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit();
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit++;
  if (buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit < 3) {
    o.encodedData = 'foo';
    o.entriesCount = 42;
    o.firstValue = 42;
    o.riceParameter = 42;
  }
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit(
    api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit o) {
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit++;
  if (buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit < 3) {
    unittest.expect(
      o.encodedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entriesCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.firstValue!,
      unittest.equals(42),
    );
    unittest.expect(
      o.riceParameter!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit--;
}

core.int buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit = 0;
api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
    buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit() {
  final o = api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit();
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit++;
  if (buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit < 3) {
    o.encodedData = 'foo';
    o.entriesCount = 42;
    o.firstValue = 'foo';
    o.riceParameter = 42;
  }
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit(
    api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit o) {
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit++;
  if (buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit < 3) {
    unittest.expect(
      o.encodedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entriesCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.firstValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.riceParameter!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit--;
}

core.List<api.GoogleSecuritySafebrowsingV5FullHash> buildUnnamed6() => [
      buildGoogleSecuritySafebrowsingV5FullHash(),
      buildGoogleSecuritySafebrowsingV5FullHash(),
    ];

void checkUnnamed6(core.List<api.GoogleSecuritySafebrowsingV5FullHash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV5FullHash(o[0]);
  checkGoogleSecuritySafebrowsingV5FullHash(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse = 0;
api.GoogleSecuritySafebrowsingV5SearchHashesResponse
    buildGoogleSecuritySafebrowsingV5SearchHashesResponse() {
  final o = api.GoogleSecuritySafebrowsingV5SearchHashesResponse();
  buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse < 3) {
    o.cacheDuration = 'foo';
    o.fullHashes = buildUnnamed6();
  }
  buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5SearchHashesResponse(
    api.GoogleSecuritySafebrowsingV5SearchHashesResponse o) {
  buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse < 3) {
    unittest.expect(
      o.cacheDuration!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.fullHashes!);
  }
  buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

void main() {
  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV5BatchGetHashListsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5BatchGetHashListsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV5BatchGetHashListsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5BatchGetHashListsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV5FullHash', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5FullHash();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV5FullHash.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5FullHash(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV5FullHashFullHashDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5FullHashFullHashDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5FullHashFullHashDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV5HashList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5HashList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV5HashList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5HashList(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV5HashListMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5HashListMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV5HashListMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5HashListMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV5ListHashListsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5ListHashListsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV5ListHashListsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5ListHashListsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV5SearchHashesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5SearchHashesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV5SearchHashesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5SearchHashesResponse(od);
    });
  });

  unittest.group('resource-HashListResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).hashList;
      final arg_name = 'foo';
      final arg_sizeConstraints_maxDatabaseEntries = 42;
      final arg_sizeConstraints_maxUpdateEntries = 42;
      final arg_version = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v5/hashList/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_name'),
        );

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
          core.int.parse(queryMap['sizeConstraints.maxDatabaseEntries']!.first),
          unittest.equals(arg_sizeConstraints_maxDatabaseEntries),
        );
        unittest.expect(
          core.int.parse(queryMap['sizeConstraints.maxUpdateEntries']!.first),
          unittest.equals(arg_sizeConstraints_maxUpdateEntries),
        );
        unittest.expect(
          queryMap['version']!.first,
          unittest.equals(arg_version),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleSecuritySafebrowsingV5HashList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          sizeConstraints_maxDatabaseEntries:
              arg_sizeConstraints_maxDatabaseEntries,
          sizeConstraints_maxUpdateEntries:
              arg_sizeConstraints_maxUpdateEntries,
          version: arg_version,
          $fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV5HashList(
          response as api.GoogleSecuritySafebrowsingV5HashList);
    });
  });

  unittest.group('resource-HashListsResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).hashLists;
      final arg_names = buildUnnamed7();
      final arg_sizeConstraints_maxDatabaseEntries = 42;
      final arg_sizeConstraints_maxUpdateEntries = 42;
      final arg_version = buildUnnamed8();
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v5/hashLists:batchGet'),
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
        unittest.expect(
          queryMap['names']!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          core.int.parse(queryMap['sizeConstraints.maxDatabaseEntries']!.first),
          unittest.equals(arg_sizeConstraints_maxDatabaseEntries),
        );
        unittest.expect(
          core.int.parse(queryMap['sizeConstraints.maxUpdateEntries']!.first),
          unittest.equals(arg_sizeConstraints_maxUpdateEntries),
        );
        unittest.expect(
          queryMap['version']!,
          unittest.equals(arg_version),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleSecuritySafebrowsingV5BatchGetHashListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(
          names: arg_names,
          sizeConstraints_maxDatabaseEntries:
              arg_sizeConstraints_maxDatabaseEntries,
          sizeConstraints_maxUpdateEntries:
              arg_sizeConstraints_maxUpdateEntries,
          version: arg_version,
          $fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV5BatchGetHashListsResponse(response
          as api.GoogleSecuritySafebrowsingV5BatchGetHashListsResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).hashLists;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v5/hashLists'),
        );
        pathOffset += 12;

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
            .encode(buildGoogleSecuritySafebrowsingV5ListHashListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV5ListHashListsResponse(
          response as api.GoogleSecuritySafebrowsingV5ListHashListsResponse);
    });
  });

  unittest.group('resource-HashesResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).hashes;
      final arg_hashPrefixes = buildUnnamed9();
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v5/hashes:search'),
        );
        pathOffset += 16;

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
          queryMap['hashPrefixes']!,
          unittest.equals(arg_hashPrefixes),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleSecuritySafebrowsingV5SearchHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          hashPrefixes: arg_hashPrefixes, $fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV5SearchHashesResponse(
          response as api.GoogleSecuritySafebrowsingV5SearchHashesResponse);
    });
  });
}
