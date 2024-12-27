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

import 'package:googleapis/playintegrity/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccountActivity = 0;
api.AccountActivity buildAccountActivity() {
  final o = api.AccountActivity();
  buildCounterAccountActivity++;
  if (buildCounterAccountActivity < 3) {
    o.activityLevel = 'foo';
  }
  buildCounterAccountActivity--;
  return o;
}

void checkAccountActivity(api.AccountActivity o) {
  buildCounterAccountActivity++;
  if (buildCounterAccountActivity < 3) {
    unittest.expect(o.activityLevel!, unittest.equals('foo'));
  }
  buildCounterAccountActivity--;
}

core.int buildCounterAccountDetails = 0;
api.AccountDetails buildAccountDetails() {
  final o = api.AccountDetails();
  buildCounterAccountDetails++;
  if (buildCounterAccountDetails < 3) {
    o.accountActivity = buildAccountActivity();
    o.appLicensingVerdict = 'foo';
  }
  buildCounterAccountDetails--;
  return o;
}

void checkAccountDetails(api.AccountDetails o) {
  buildCounterAccountDetails++;
  if (buildCounterAccountDetails < 3) {
    checkAccountActivity(o.accountActivity!);
    unittest.expect(o.appLicensingVerdict!, unittest.equals('foo'));
  }
  buildCounterAccountDetails--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppAccessRiskVerdict = 0;
api.AppAccessRiskVerdict buildAppAccessRiskVerdict() {
  final o = api.AppAccessRiskVerdict();
  buildCounterAppAccessRiskVerdict++;
  if (buildCounterAppAccessRiskVerdict < 3) {
    o.appsDetected = buildUnnamed0();
    o.otherApps = 'foo';
    o.playOrSystemApps = 'foo';
  }
  buildCounterAppAccessRiskVerdict--;
  return o;
}

void checkAppAccessRiskVerdict(api.AppAccessRiskVerdict o) {
  buildCounterAppAccessRiskVerdict++;
  if (buildCounterAppAccessRiskVerdict < 3) {
    checkUnnamed0(o.appsDetected!);
    unittest.expect(o.otherApps!, unittest.equals('foo'));
    unittest.expect(o.playOrSystemApps!, unittest.equals('foo'));
  }
  buildCounterAppAccessRiskVerdict--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppIntegrity = 0;
api.AppIntegrity buildAppIntegrity() {
  final o = api.AppIntegrity();
  buildCounterAppIntegrity++;
  if (buildCounterAppIntegrity < 3) {
    o.appRecognitionVerdict = 'foo';
    o.certificateSha256Digest = buildUnnamed1();
    o.packageName = 'foo';
    o.versionCode = 'foo';
  }
  buildCounterAppIntegrity--;
  return o;
}

void checkAppIntegrity(api.AppIntegrity o) {
  buildCounterAppIntegrity++;
  if (buildCounterAppIntegrity < 3) {
    unittest.expect(o.appRecognitionVerdict!, unittest.equals('foo'));
    checkUnnamed1(o.certificateSha256Digest!);
    unittest.expect(o.packageName!, unittest.equals('foo'));
    unittest.expect(o.versionCode!, unittest.equals('foo'));
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
    unittest.expect(o.integrityToken!, unittest.equals('foo'));
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

core.int buildCounterDeviceAttributes = 0;
api.DeviceAttributes buildDeviceAttributes() {
  final o = api.DeviceAttributes();
  buildCounterDeviceAttributes++;
  if (buildCounterDeviceAttributes < 3) {
    o.sdkVersion = 42;
  }
  buildCounterDeviceAttributes--;
  return o;
}

void checkDeviceAttributes(api.DeviceAttributes o) {
  buildCounterDeviceAttributes++;
  if (buildCounterDeviceAttributes < 3) {
    unittest.expect(o.sdkVersion!, unittest.equals(42));
  }
  buildCounterDeviceAttributes--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeviceIntegrity = 0;
api.DeviceIntegrity buildDeviceIntegrity() {
  final o = api.DeviceIntegrity();
  buildCounterDeviceIntegrity++;
  if (buildCounterDeviceIntegrity < 3) {
    o.deviceAttributes = buildDeviceAttributes();
    o.deviceRecall = buildDeviceRecall();
    o.deviceRecognitionVerdict = buildUnnamed2();
    o.legacyDeviceRecognitionVerdict = buildUnnamed3();
    o.recentDeviceActivity = buildRecentDeviceActivity();
  }
  buildCounterDeviceIntegrity--;
  return o;
}

void checkDeviceIntegrity(api.DeviceIntegrity o) {
  buildCounterDeviceIntegrity++;
  if (buildCounterDeviceIntegrity < 3) {
    checkDeviceAttributes(o.deviceAttributes!);
    checkDeviceRecall(o.deviceRecall!);
    checkUnnamed2(o.deviceRecognitionVerdict!);
    checkUnnamed3(o.legacyDeviceRecognitionVerdict!);
    checkRecentDeviceActivity(o.recentDeviceActivity!);
  }
  buildCounterDeviceIntegrity--;
}

core.int buildCounterDeviceRecall = 0;
api.DeviceRecall buildDeviceRecall() {
  final o = api.DeviceRecall();
  buildCounterDeviceRecall++;
  if (buildCounterDeviceRecall < 3) {
    o.values = buildValues();
    o.writeDates = buildWriteDates();
  }
  buildCounterDeviceRecall--;
  return o;
}

void checkDeviceRecall(api.DeviceRecall o) {
  buildCounterDeviceRecall++;
  if (buildCounterDeviceRecall < 3) {
    checkValues(o.values!);
    checkWriteDates(o.writeDates!);
  }
  buildCounterDeviceRecall--;
}

core.int buildCounterEnvironmentDetails = 0;
api.EnvironmentDetails buildEnvironmentDetails() {
  final o = api.EnvironmentDetails();
  buildCounterEnvironmentDetails++;
  if (buildCounterEnvironmentDetails < 3) {
    o.appAccessRiskVerdict = buildAppAccessRiskVerdict();
    o.playProtectVerdict = 'foo';
  }
  buildCounterEnvironmentDetails--;
  return o;
}

void checkEnvironmentDetails(api.EnvironmentDetails o) {
  buildCounterEnvironmentDetails++;
  if (buildCounterEnvironmentDetails < 3) {
    checkAppAccessRiskVerdict(o.appAccessRiskVerdict!);
    unittest.expect(o.playProtectVerdict!, unittest.equals('foo'));
  }
  buildCounterEnvironmentDetails--;
}

core.int buildCounterRecentDeviceActivity = 0;
api.RecentDeviceActivity buildRecentDeviceActivity() {
  final o = api.RecentDeviceActivity();
  buildCounterRecentDeviceActivity++;
  if (buildCounterRecentDeviceActivity < 3) {
    o.deviceActivityLevel = 'foo';
  }
  buildCounterRecentDeviceActivity--;
  return o;
}

void checkRecentDeviceActivity(api.RecentDeviceActivity o) {
  buildCounterRecentDeviceActivity++;
  if (buildCounterRecentDeviceActivity < 3) {
    unittest.expect(o.deviceActivityLevel!, unittest.equals('foo'));
  }
  buildCounterRecentDeviceActivity--;
}

core.int buildCounterRequestDetails = 0;
api.RequestDetails buildRequestDetails() {
  final o = api.RequestDetails();
  buildCounterRequestDetails++;
  if (buildCounterRequestDetails < 3) {
    o.nonce = 'foo';
    o.requestHash = 'foo';
    o.requestPackageName = 'foo';
    o.timestampMillis = 'foo';
  }
  buildCounterRequestDetails--;
  return o;
}

void checkRequestDetails(api.RequestDetails o) {
  buildCounterRequestDetails++;
  if (buildCounterRequestDetails < 3) {
    unittest.expect(o.nonce!, unittest.equals('foo'));
    unittest.expect(o.requestHash!, unittest.equals('foo'));
    unittest.expect(o.requestPackageName!, unittest.equals('foo'));
    unittest.expect(o.timestampMillis!, unittest.equals('foo'));
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
    o.environmentDetails = buildEnvironmentDetails();
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
    checkEnvironmentDetails(o.environmentDetails!);
    checkRequestDetails(o.requestDetails!);
    checkTestingDetails(o.testingDetails!);
  }
  buildCounterTokenPayloadExternal--;
}

core.int buildCounterValues = 0;
api.Values buildValues() {
  final o = api.Values();
  buildCounterValues++;
  if (buildCounterValues < 3) {
    o.bitFirst = true;
    o.bitSecond = true;
    o.bitThird = true;
  }
  buildCounterValues--;
  return o;
}

void checkValues(api.Values o) {
  buildCounterValues++;
  if (buildCounterValues < 3) {
    unittest.expect(o.bitFirst!, unittest.isTrue);
    unittest.expect(o.bitSecond!, unittest.isTrue);
    unittest.expect(o.bitThird!, unittest.isTrue);
  }
  buildCounterValues--;
}

core.int buildCounterWriteDates = 0;
api.WriteDates buildWriteDates() {
  final o = api.WriteDates();
  buildCounterWriteDates++;
  if (buildCounterWriteDates < 3) {
    o.yyyymmFirst = 42;
    o.yyyymmSecond = 42;
    o.yyyymmThird = 42;
  }
  buildCounterWriteDates--;
  return o;
}

void checkWriteDates(api.WriteDates o) {
  buildCounterWriteDates++;
  if (buildCounterWriteDates < 3) {
    unittest.expect(o.yyyymmFirst!, unittest.equals(42));
    unittest.expect(o.yyyymmSecond!, unittest.equals(42));
    unittest.expect(o.yyyymmThird!, unittest.equals(42));
  }
  buildCounterWriteDates--;
}

core.int buildCounterWriteDeviceRecallRequest = 0;
api.WriteDeviceRecallRequest buildWriteDeviceRecallRequest() {
  final o = api.WriteDeviceRecallRequest();
  buildCounterWriteDeviceRecallRequest++;
  if (buildCounterWriteDeviceRecallRequest < 3) {
    o.integrityToken = 'foo';
    o.newValues = buildValues();
  }
  buildCounterWriteDeviceRecallRequest--;
  return o;
}

void checkWriteDeviceRecallRequest(api.WriteDeviceRecallRequest o) {
  buildCounterWriteDeviceRecallRequest++;
  if (buildCounterWriteDeviceRecallRequest < 3) {
    unittest.expect(o.integrityToken!, unittest.equals('foo'));
    checkValues(o.newValues!);
  }
  buildCounterWriteDeviceRecallRequest--;
}

core.int buildCounterWriteDeviceRecallResponse = 0;
api.WriteDeviceRecallResponse buildWriteDeviceRecallResponse() {
  final o = api.WriteDeviceRecallResponse();
  buildCounterWriteDeviceRecallResponse++;
  if (buildCounterWriteDeviceRecallResponse < 3) {}
  buildCounterWriteDeviceRecallResponse--;
  return o;
}

void checkWriteDeviceRecallResponse(api.WriteDeviceRecallResponse o) {
  buildCounterWriteDeviceRecallResponse++;
  if (buildCounterWriteDeviceRecallResponse < 3) {}
  buildCounterWriteDeviceRecallResponse--;
}

void main() {
  unittest.group('obj-schema-AccountActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountActivity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccountActivity(od);
    });
  });

  unittest.group('obj-schema-AccountDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccountDetails(od);
    });
  });

  unittest.group('obj-schema-AppAccessRiskVerdict', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppAccessRiskVerdict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppAccessRiskVerdict.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppAccessRiskVerdict(od);
    });
  });

  unittest.group('obj-schema-AppIntegrity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppIntegrity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppIntegrity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppIntegrity(od);
    });
  });

  unittest.group('obj-schema-DecodeIntegrityTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDecodeIntegrityTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DecodeIntegrityTokenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDecodeIntegrityTokenRequest(od);
    });
  });

  unittest.group('obj-schema-DecodeIntegrityTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDecodeIntegrityTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DecodeIntegrityTokenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDecodeIntegrityTokenResponse(od);
    });
  });

  unittest.group('obj-schema-DeviceAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceAttributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceAttributes(od);
    });
  });

  unittest.group('obj-schema-DeviceIntegrity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceIntegrity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceIntegrity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceIntegrity(od);
    });
  });

  unittest.group('obj-schema-DeviceRecall', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceRecall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceRecall.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceRecall(od);
    });
  });

  unittest.group('obj-schema-EnvironmentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironmentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvironmentDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironmentDetails(od);
    });
  });

  unittest.group('obj-schema-RecentDeviceActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecentDeviceActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecentDeviceActivity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRecentDeviceActivity(od);
    });
  });

  unittest.group('obj-schema-RequestDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequestDetails(od);
    });
  });

  unittest.group('obj-schema-TestingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestingDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestingDetails(od);
    });
  });

  unittest.group('obj-schema-TokenPayloadExternal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTokenPayloadExternal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TokenPayloadExternal.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTokenPayloadExternal(od);
    });
  });

  unittest.group('obj-schema-Values', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Values.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValues(od);
    });
  });

  unittest.group('obj-schema-WriteDates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteDates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteDates.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteDates(od);
    });
  });

  unittest.group('obj-schema-WriteDeviceRecallRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteDeviceRecallRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteDeviceRecallRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteDeviceRecallRequest(od);
    });
  });

  unittest.group('obj-schema-WriteDeviceRecallResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteDeviceRecallResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteDeviceRecallResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteDeviceRecallResponse(od);
    });
  });

  unittest.group('resource-DeviceRecallResource', () {
    unittest.test('method--write', () async {
      final mock = HttpServerMock();
      final res = api.PlayIntegrityApi(mock).deviceRecall;
      final arg_request = buildWriteDeviceRecallRequest();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WriteDeviceRecallRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWriteDeviceRecallRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWriteDeviceRecallResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.write(
        arg_request,
        arg_packageName,
        $fields: arg_$fields,
      );
      checkWriteDeviceRecallResponse(response as api.WriteDeviceRecallResponse);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--decodeIntegrityToken', () async {
      final mock = HttpServerMock();
      final res = api.PlayIntegrityApi(mock).v1;
      final arg_request = buildDecodeIntegrityTokenRequest();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DecodeIntegrityTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDecodeIntegrityTokenRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDecodeIntegrityTokenResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.decodeIntegrityToken(
        arg_request,
        arg_packageName,
        $fields: arg_$fields,
      );
      checkDecodeIntegrityTokenResponse(
        response as api.DecodeIntegrityTokenResponse,
      );
    });
  });
}
