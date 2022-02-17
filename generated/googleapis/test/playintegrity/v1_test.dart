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

import 'package:googleapis/playintegrity/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccountDetails = 0;
api.AccountDetails buildAccountDetails() {
  final o = api.AccountDetails();
  buildCounterAccountDetails++;
  if (buildCounterAccountDetails < 3) {
    o.appLicensingVerdict = 'foo';
  }
  buildCounterAccountDetails--;
  return o;
}

void checkAccountDetails(api.AccountDetails o) {
  buildCounterAccountDetails++;
  if (buildCounterAccountDetails < 3) {
    unittest.expect(
      o.appLicensingVerdict!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountDetails--;
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

core.int buildCounterAppIntegrity = 0;
api.AppIntegrity buildAppIntegrity() {
  final o = api.AppIntegrity();
  buildCounterAppIntegrity++;
  if (buildCounterAppIntegrity < 3) {
    o.appRecognitionVerdict = 'foo';
    o.certificateSha256Digest = buildUnnamed0();
    o.packageName = 'foo';
    o.versionCode = 'foo';
  }
  buildCounterAppIntegrity--;
  return o;
}

void checkAppIntegrity(api.AppIntegrity o) {
  buildCounterAppIntegrity++;
  if (buildCounterAppIntegrity < 3) {
    unittest.expect(
      o.appRecognitionVerdict!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.certificateSha256Digest!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppIntegrity--;
}

core.int buildCounterDecodeIntegrityTokenRequest = 0;
api.DecodeIntegrityTokenRequest buildDecodeIntegrityTokenRequest() {
  final o = api.DecodeIntegrityTokenRequest();
  buildCounterDecodeIntegrityTokenRequest++;
  if (buildCounterDecodeIntegrityTokenRequest < 3) {
    o.integrityToken = 'foo';
  }
  buildCounterDecodeIntegrityTokenRequest--;
  return o;
}

void checkDecodeIntegrityTokenRequest(api.DecodeIntegrityTokenRequest o) {
  buildCounterDecodeIntegrityTokenRequest++;
  if (buildCounterDecodeIntegrityTokenRequest < 3) {
    unittest.expect(
      o.integrityToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterDecodeIntegrityTokenRequest--;
}

core.int buildCounterDecodeIntegrityTokenResponse = 0;
api.DecodeIntegrityTokenResponse buildDecodeIntegrityTokenResponse() {
  final o = api.DecodeIntegrityTokenResponse();
  buildCounterDecodeIntegrityTokenResponse++;
  if (buildCounterDecodeIntegrityTokenResponse < 3) {
    o.tokenPayloadExternal = buildTokenPayloadExternal();
  }
  buildCounterDecodeIntegrityTokenResponse--;
  return o;
}

void checkDecodeIntegrityTokenResponse(api.DecodeIntegrityTokenResponse o) {
  buildCounterDecodeIntegrityTokenResponse++;
  if (buildCounterDecodeIntegrityTokenResponse < 3) {
    checkTokenPayloadExternal(o.tokenPayloadExternal!);
  }
  buildCounterDecodeIntegrityTokenResponse--;
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

core.int buildCounterDeviceIntegrity = 0;
api.DeviceIntegrity buildDeviceIntegrity() {
  final o = api.DeviceIntegrity();
  buildCounterDeviceIntegrity++;
  if (buildCounterDeviceIntegrity < 3) {
    o.deviceRecognitionVerdict = buildUnnamed1();
  }
  buildCounterDeviceIntegrity--;
  return o;
}

void checkDeviceIntegrity(api.DeviceIntegrity o) {
  buildCounterDeviceIntegrity++;
  if (buildCounterDeviceIntegrity < 3) {
    checkUnnamed1(o.deviceRecognitionVerdict!);
  }
  buildCounterDeviceIntegrity--;
}

core.int buildCounterRequestDetails = 0;
api.RequestDetails buildRequestDetails() {
  final o = api.RequestDetails();
  buildCounterRequestDetails++;
  if (buildCounterRequestDetails < 3) {
    o.nonce = 'foo';
    o.requestPackageName = 'foo';
    o.timestampMillis = 'foo';
  }
  buildCounterRequestDetails--;
  return o;
}

void checkRequestDetails(api.RequestDetails o) {
  buildCounterRequestDetails++;
  if (buildCounterRequestDetails < 3) {
    unittest.expect(
      o.nonce!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestPackageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestDetails--;
}

core.int buildCounterTestingDetails = 0;
api.TestingDetails buildTestingDetails() {
  final o = api.TestingDetails();
  buildCounterTestingDetails++;
  if (buildCounterTestingDetails < 3) {
    o.isTestingResponse = true;
  }
  buildCounterTestingDetails--;
  return o;
}

void checkTestingDetails(api.TestingDetails o) {
  buildCounterTestingDetails++;
  if (buildCounterTestingDetails < 3) {
    unittest.expect(o.isTestingResponse!, unittest.isTrue);
  }
  buildCounterTestingDetails--;
}

core.int buildCounterTokenPayloadExternal = 0;
api.TokenPayloadExternal buildTokenPayloadExternal() {
  final o = api.TokenPayloadExternal();
  buildCounterTokenPayloadExternal++;
  if (buildCounterTokenPayloadExternal < 3) {
    o.accountDetails = buildAccountDetails();
    o.appIntegrity = buildAppIntegrity();
    o.deviceIntegrity = buildDeviceIntegrity();
    o.requestDetails = buildRequestDetails();
    o.testingDetails = buildTestingDetails();
  }
  buildCounterTokenPayloadExternal--;
  return o;
}

void checkTokenPayloadExternal(api.TokenPayloadExternal o) {
  buildCounterTokenPayloadExternal++;
  if (buildCounterTokenPayloadExternal < 3) {
    checkAccountDetails(o.accountDetails!);
    checkAppIntegrity(o.appIntegrity!);
    checkDeviceIntegrity(o.deviceIntegrity!);
    checkRequestDetails(o.requestDetails!);
    checkTestingDetails(o.testingDetails!);
  }
  buildCounterTokenPayloadExternal--;
}

void main() {
  unittest.group('obj-schema-AccountDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountDetails(od);
    });
  });

  unittest.group('obj-schema-AppIntegrity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppIntegrity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppIntegrity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppIntegrity(od);
    });
  });

  unittest.group('obj-schema-DecodeIntegrityTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDecodeIntegrityTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DecodeIntegrityTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDecodeIntegrityTokenRequest(od);
    });
  });

  unittest.group('obj-schema-DecodeIntegrityTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDecodeIntegrityTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DecodeIntegrityTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDecodeIntegrityTokenResponse(od);
    });
  });

  unittest.group('obj-schema-DeviceIntegrity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceIntegrity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceIntegrity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceIntegrity(od);
    });
  });

  unittest.group('obj-schema-RequestDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestDetails(od);
    });
  });

  unittest.group('obj-schema-TestingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestingDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestingDetails(od);
    });
  });

  unittest.group('obj-schema-TokenPayloadExternal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTokenPayloadExternal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TokenPayloadExternal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTokenPayloadExternal(od);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--decodeIntegrityToken', () async {
      final mock = HttpServerMock();
      final res = api.PlayIntegrityApi(mock).v1;
      final arg_request = buildDecodeIntegrityTokenRequest();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DecodeIntegrityTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDecodeIntegrityTokenRequest(obj);

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
        final resp = convert.json.encode(buildDecodeIntegrityTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.decodeIntegrityToken(
          arg_request, arg_packageName,
          $fields: arg_$fields);
      checkDecodeIntegrityTokenResponse(
          response as api.DecodeIntegrityTokenResponse);
    });
  });
}
