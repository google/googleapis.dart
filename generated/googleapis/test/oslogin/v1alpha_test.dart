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

import 'package:googleapis/oslogin/v1alpha.dart' as api;
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

core.int
buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest =
    0;
api.GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest
buildGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest() {
  final o =
      api.GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest();
  buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest++;
  if (buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest <
      3) {
    o.appEngineInstance = 'foo';
    o.computeInstance = 'foo';
    o.serviceAccount = 'foo';
    o.sshPublicKey = 'foo';
  }
  buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest--;
  return o;
}

void checkGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest(
  api.GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest o,
) {
  buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest++;
  if (buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest <
      3) {
    unittest.expect(o.appEngineInstance!, unittest.equals('foo'));
    unittest.expect(o.computeInstance!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.sshPublicKey!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest--;
}

core.int
buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse =
    0;
api.GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse
buildGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse() {
  final o =
      api.GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse();
  buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse++;
  if (buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse <
      3) {
    o.signedSshPublicKey = 'foo';
  }
  buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse--;
  return o;
}

void checkGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse(
  api.GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse o,
) {
  buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse++;
  if (buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse <
      3) {
    unittest.expect(o.signedSshPublicKey!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse--;
}

core.int buildCounterImportSshPublicKeyResponse = 0;
api.ImportSshPublicKeyResponse buildImportSshPublicKeyResponse() {
  final o = api.ImportSshPublicKeyResponse();
  buildCounterImportSshPublicKeyResponse++;
  if (buildCounterImportSshPublicKeyResponse < 3) {
    o.details = 'foo';
    o.loginProfile = buildLoginProfile();
  }
  buildCounterImportSshPublicKeyResponse--;
  return o;
}

void checkImportSshPublicKeyResponse(api.ImportSshPublicKeyResponse o) {
  buildCounterImportSshPublicKeyResponse++;
  if (buildCounterImportSshPublicKeyResponse < 3) {
    unittest.expect(o.details!, unittest.equals('foo'));
    checkLoginProfile(o.loginProfile!);
  }
  buildCounterImportSshPublicKeyResponse--;
}

core.List<api.PosixAccount> buildUnnamed0() => [
  buildPosixAccount(),
  buildPosixAccount(),
];

void checkUnnamed0(core.List<api.PosixAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosixAccount(o[0]);
  checkPosixAccount(o[1]);
}

core.List<api.SecurityKey> buildUnnamed1() => [
  buildSecurityKey(),
  buildSecurityKey(),
];

void checkUnnamed1(core.List<api.SecurityKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecurityKey(o[0]);
  checkSecurityKey(o[1]);
}

core.Map<core.String, api.SshPublicKey> buildUnnamed2() => {
  'x': buildSshPublicKey(),
  'y': buildSshPublicKey(),
};

void checkUnnamed2(core.Map<core.String, api.SshPublicKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSshPublicKey(o['x']!);
  checkSshPublicKey(o['y']!);
}

core.int buildCounterLoginProfile = 0;
api.LoginProfile buildLoginProfile() {
  final o = api.LoginProfile();
  buildCounterLoginProfile++;
  if (buildCounterLoginProfile < 3) {
    o.name = 'foo';
    o.posixAccounts = buildUnnamed0();
    o.securityKeys = buildUnnamed1();
    o.sshPublicKeys = buildUnnamed2();
  }
  buildCounterLoginProfile--;
  return o;
}

void checkLoginProfile(api.LoginProfile o) {
  buildCounterLoginProfile++;
  if (buildCounterLoginProfile < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed0(o.posixAccounts!);
    checkUnnamed1(o.securityKeys!);
    checkUnnamed2(o.sshPublicKeys!);
  }
  buildCounterLoginProfile--;
}

core.int buildCounterPosixAccount = 0;
api.PosixAccount buildPosixAccount() {
  final o = api.PosixAccount();
  buildCounterPosixAccount++;
  if (buildCounterPosixAccount < 3) {
    o.accountId = 'foo';
    o.gecos = 'foo';
    o.gid = 'foo';
    o.homeDirectory = 'foo';
    o.name = 'foo';
    o.operatingSystemType = 'foo';
    o.primary = true;
    o.shell = 'foo';
    o.systemId = 'foo';
    o.uid = 'foo';
    o.username = 'foo';
  }
  buildCounterPosixAccount--;
  return o;
}

void checkPosixAccount(api.PosixAccount o) {
  buildCounterPosixAccount++;
  if (buildCounterPosixAccount < 3) {
    unittest.expect(o.accountId!, unittest.equals('foo'));
    unittest.expect(o.gecos!, unittest.equals('foo'));
    unittest.expect(o.gid!, unittest.equals('foo'));
    unittest.expect(o.homeDirectory!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.operatingSystemType!, unittest.equals('foo'));
    unittest.expect(o.primary!, unittest.isTrue);
    unittest.expect(o.shell!, unittest.equals('foo'));
    unittest.expect(o.systemId!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterPosixAccount--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProvisionPosixAccountRequest = 0;
api.ProvisionPosixAccountRequest buildProvisionPosixAccountRequest() {
  final o = api.ProvisionPosixAccountRequest();
  buildCounterProvisionPosixAccountRequest++;
  if (buildCounterProvisionPosixAccountRequest < 3) {
    o.regions = buildUnnamed3();
  }
  buildCounterProvisionPosixAccountRequest--;
  return o;
}

void checkProvisionPosixAccountRequest(api.ProvisionPosixAccountRequest o) {
  buildCounterProvisionPosixAccountRequest++;
  if (buildCounterProvisionPosixAccountRequest < 3) {
    checkUnnamed3(o.regions!);
  }
  buildCounterProvisionPosixAccountRequest--;
}

core.int buildCounterSecurityKey = 0;
api.SecurityKey buildSecurityKey() {
  final o = api.SecurityKey();
  buildCounterSecurityKey++;
  if (buildCounterSecurityKey < 3) {
    o.deviceNickname = 'foo';
    o.privateKey = 'foo';
    o.publicKey = 'foo';
    o.universalTwoFactor = buildUniversalTwoFactor();
    o.webAuthn = buildWebAuthn();
  }
  buildCounterSecurityKey--;
  return o;
}

void checkSecurityKey(api.SecurityKey o) {
  buildCounterSecurityKey++;
  if (buildCounterSecurityKey < 3) {
    unittest.expect(o.deviceNickname!, unittest.equals('foo'));
    unittest.expect(o.privateKey!, unittest.equals('foo'));
    unittest.expect(o.publicKey!, unittest.equals('foo'));
    checkUniversalTwoFactor(o.universalTwoFactor!);
    checkWebAuthn(o.webAuthn!);
  }
  buildCounterSecurityKey--;
}

core.int buildCounterSignSshPublicKeyRequest = 0;
api.SignSshPublicKeyRequest buildSignSshPublicKeyRequest() {
  final o = api.SignSshPublicKeyRequest();
  buildCounterSignSshPublicKeyRequest++;
  if (buildCounterSignSshPublicKeyRequest < 3) {
    o.sshPublicKey = 'foo';
  }
  buildCounterSignSshPublicKeyRequest--;
  return o;
}

void checkSignSshPublicKeyRequest(api.SignSshPublicKeyRequest o) {
  buildCounterSignSshPublicKeyRequest++;
  if (buildCounterSignSshPublicKeyRequest < 3) {
    unittest.expect(o.sshPublicKey!, unittest.equals('foo'));
  }
  buildCounterSignSshPublicKeyRequest--;
}

core.int buildCounterSignSshPublicKeyResponse = 0;
api.SignSshPublicKeyResponse buildSignSshPublicKeyResponse() {
  final o = api.SignSshPublicKeyResponse();
  buildCounterSignSshPublicKeyResponse++;
  if (buildCounterSignSshPublicKeyResponse < 3) {
    o.signedSshPublicKey = 'foo';
  }
  buildCounterSignSshPublicKeyResponse--;
  return o;
}

void checkSignSshPublicKeyResponse(api.SignSshPublicKeyResponse o) {
  buildCounterSignSshPublicKeyResponse++;
  if (buildCounterSignSshPublicKeyResponse < 3) {
    unittest.expect(o.signedSshPublicKey!, unittest.equals('foo'));
  }
  buildCounterSignSshPublicKeyResponse--;
}

core.int buildCounterSshPublicKey = 0;
api.SshPublicKey buildSshPublicKey() {
  final o = api.SshPublicKey();
  buildCounterSshPublicKey++;
  if (buildCounterSshPublicKey < 3) {
    o.expirationTimeUsec = 'foo';
    o.fingerprint = 'foo';
    o.key = 'foo';
    o.name = 'foo';
  }
  buildCounterSshPublicKey--;
  return o;
}

void checkSshPublicKey(api.SshPublicKey o) {
  buildCounterSshPublicKey++;
  if (buildCounterSshPublicKey < 3) {
    unittest.expect(o.expirationTimeUsec!, unittest.equals('foo'));
    unittest.expect(o.fingerprint!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSshPublicKey--;
}

core.int buildCounterUniversalTwoFactor = 0;
api.UniversalTwoFactor buildUniversalTwoFactor() {
  final o = api.UniversalTwoFactor();
  buildCounterUniversalTwoFactor++;
  if (buildCounterUniversalTwoFactor < 3) {
    o.appId = 'foo';
  }
  buildCounterUniversalTwoFactor--;
  return o;
}

void checkUniversalTwoFactor(api.UniversalTwoFactor o) {
  buildCounterUniversalTwoFactor++;
  if (buildCounterUniversalTwoFactor < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
  }
  buildCounterUniversalTwoFactor--;
}

core.int buildCounterWebAuthn = 0;
api.WebAuthn buildWebAuthn() {
  final o = api.WebAuthn();
  buildCounterWebAuthn++;
  if (buildCounterWebAuthn < 3) {
    o.rpId = 'foo';
  }
  buildCounterWebAuthn--;
  return o;
}

void checkWebAuthn(api.WebAuthn o) {
  buildCounterWebAuthn++;
  if (buildCounterWebAuthn < 3) {
    unittest.expect(o.rpId!, unittest.equals('foo'));
  }
  buildCounterWebAuthn--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-ImportSshPublicKeyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportSshPublicKeyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportSshPublicKeyResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportSshPublicKeyResponse(od);
    });
  });

  unittest.group('obj-schema-LoginProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoginProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoginProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoginProfile(od);
    });
  });

  unittest.group('obj-schema-PosixAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosixAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosixAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPosixAccount(od);
    });
  });

  unittest.group('obj-schema-ProvisionPosixAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvisionPosixAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProvisionPosixAccountRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProvisionPosixAccountRequest(od);
    });
  });

  unittest.group('obj-schema-SecurityKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityKey(od);
    });
  });

  unittest.group('obj-schema-SignSshPublicKeyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignSshPublicKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignSshPublicKeyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSignSshPublicKeyRequest(od);
    });
  });

  unittest.group('obj-schema-SignSshPublicKeyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignSshPublicKeyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignSshPublicKeyResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSignSshPublicKeyResponse(od);
    });
  });

  unittest.group('obj-schema-SshPublicKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSshPublicKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SshPublicKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSshPublicKey(od);
    });
  });

  unittest.group('obj-schema-UniversalTwoFactor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUniversalTwoFactor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UniversalTwoFactor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUniversalTwoFactor(od);
    });
  });

  unittest.group('obj-schema-WebAuthn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebAuthn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebAuthn.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWebAuthn(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--signSshPublicKey', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signSshPublicKey(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse(
        response
            as api.GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse,
      );
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--getLoginProfile', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).users;
      final arg_name = 'foo';
      final arg_operatingSystemType = 'foo';
      final arg_projectId = 'foo';
      final arg_systemId = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            queryMap['operatingSystemType']!.first,
            unittest.equals(arg_operatingSystemType),
          );
          unittest.expect(
            queryMap['projectId']!.first,
            unittest.equals(arg_projectId),
          );
          unittest.expect(
            queryMap['systemId']!.first,
            unittest.equals(arg_systemId),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLoginProfile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getLoginProfile(
        arg_name,
        operatingSystemType: arg_operatingSystemType,
        projectId: arg_projectId,
        systemId: arg_systemId,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkLoginProfile(response as api.LoginProfile);
    });

    unittest.test('method--importSshPublicKey', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).users;
      final arg_request = buildSshPublicKey();
      final arg_parent = 'foo';
      final arg_projectId = 'foo';
      final arg_regions = buildUnnamed4();
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SshPublicKey.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSshPublicKey(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            queryMap['projectId']!.first,
            unittest.equals(arg_projectId),
          );
          unittest.expect(queryMap['regions']!, unittest.equals(arg_regions));
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildImportSshPublicKeyResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.importSshPublicKey(
        arg_request,
        arg_parent,
        projectId: arg_projectId,
        regions: arg_regions,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkImportSshPublicKeyResponse(
        response as api.ImportSshPublicKeyResponse,
      );
    });
  });

  unittest.group('resource-UsersProjectsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).users.projects;
      final arg_name = 'foo';
      final arg_operatingSystemType = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            queryMap['operatingSystemType']!.first,
            unittest.equals(arg_operatingSystemType),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        operatingSystemType: arg_operatingSystemType,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--provisionPosixAccount', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).users.projects;
      final arg_request = buildProvisionPosixAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProvisionPosixAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkProvisionPosixAccountRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildPosixAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.provisionPosixAccount(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPosixAccount(response as api.PosixAccount);
    });
  });

  unittest.group('resource-UsersProjectsLocationsResource', () {
    unittest.test('method--signSshPublicKey', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).users.projects.locations;
      final arg_request = buildSignSshPublicKeyRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SignSshPublicKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSignSshPublicKeyRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildSignSshPublicKeyResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signSshPublicKey(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSignSshPublicKeyResponse(response as api.SignSshPublicKeyResponse);
    });
  });

  unittest.group('resource-UsersProjectsZonesResource', () {
    unittest.test('method--signSshPublicKey', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).users.projects.zones;
      final arg_request = buildSignSshPublicKeyRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SignSshPublicKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSignSshPublicKeyRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildSignSshPublicKeyResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signSshPublicKey(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSignSshPublicKeyResponse(response as api.SignSshPublicKeyResponse);
    });
  });

  unittest.group('resource-UsersSshPublicKeysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).users.sshPublicKeys;
      final arg_request = buildSshPublicKey();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SshPublicKey.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSshPublicKey(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildSshPublicKey());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSshPublicKey(response as api.SshPublicKey);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).users.sshPublicKeys;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).users.sshPublicKeys;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildSshPublicKey());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSshPublicKey(response as api.SshPublicKey);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudOSLoginApi(mock).users.sshPublicKeys;
      final arg_request = buildSshPublicKey();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SshPublicKey.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSshPublicKey(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSshPublicKey());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSshPublicKey(response as api.SshPublicKey);
    });
  });
}
