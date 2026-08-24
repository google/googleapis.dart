// Copyright 2021 Google LLC
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

import 'package:googleapis/sts/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleIdentityStsV1ExchangeTokenRequest = 0;
api.GoogleIdentityStsV1ExchangeTokenRequest
buildGoogleIdentityStsV1ExchangeTokenRequest() {
  final o = api.GoogleIdentityStsV1ExchangeTokenRequest();
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenRequest < 3) {
    o.audience = 'foo';
    o.grantType = 'foo';
    o.options = 'foo';
    o.requestedTokenType = 'foo';
    o.scope = 'foo';
    o.subjectToken = 'foo';
    o.subjectTokenType = 'foo';
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest--;
  return o;
}

void checkGoogleIdentityStsV1ExchangeTokenRequest(
  api.GoogleIdentityStsV1ExchangeTokenRequest o,
) {
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenRequest < 3) {
    unittest.expect(o.audience!, unittest.equals('foo'));
    unittest.expect(o.grantType!, unittest.equals('foo'));
    unittest.expect(o.options!, unittest.equals('foo'));
    unittest.expect(o.requestedTokenType!, unittest.equals('foo'));
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.subjectToken!, unittest.equals('foo'));
    unittest.expect(o.subjectTokenType!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest--;
}

core.int buildCounterGoogleIdentityStsV1ExchangeTokenResponse = 0;
api.GoogleIdentityStsV1ExchangeTokenResponse
buildGoogleIdentityStsV1ExchangeTokenResponse() {
  final o = api.GoogleIdentityStsV1ExchangeTokenResponse();
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenResponse < 3) {
    o.accessBoundarySessionKey = 'foo';
    o.accessToken = 'foo';
    o.expiresIn = 42;
    o.issuedTokenType = 'foo';
    o.tokenType = 'foo';
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse--;
  return o;
}

void checkGoogleIdentityStsV1ExchangeTokenResponse(
  api.GoogleIdentityStsV1ExchangeTokenResponse o,
) {
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenResponse < 3) {
    unittest.expect(o.accessBoundarySessionKey!, unittest.equals('foo'));
    unittest.expect(o.accessToken!, unittest.equals('foo'));
    unittest.expect(o.expiresIn!, unittest.equals(42));
    unittest.expect(o.issuedTokenType!, unittest.equals('foo'));
    unittest.expect(o.tokenType!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse--;
}

core.int buildCounterGoogleIdentityStsV1Jwk = 0;
api.GoogleIdentityStsV1Jwk buildGoogleIdentityStsV1Jwk() {
  final o = api.GoogleIdentityStsV1Jwk();
  buildCounterGoogleIdentityStsV1Jwk++;
  if (buildCounterGoogleIdentityStsV1Jwk < 3) {
    o.alg = 'foo';
    o.e = 'foo';
    o.kid = 'foo';
    o.kty = 'foo';
    o.n = 'foo';
    o.use = 'foo';
  }
  buildCounterGoogleIdentityStsV1Jwk--;
  return o;
}

void checkGoogleIdentityStsV1Jwk(api.GoogleIdentityStsV1Jwk o) {
  buildCounterGoogleIdentityStsV1Jwk++;
  if (buildCounterGoogleIdentityStsV1Jwk < 3) {
    unittest.expect(o.alg!, unittest.equals('foo'));
    unittest.expect(o.e!, unittest.equals('foo'));
    unittest.expect(o.kid!, unittest.equals('foo'));
    unittest.expect(o.kty!, unittest.equals('foo'));
    unittest.expect(o.n!, unittest.equals('foo'));
    unittest.expect(o.use!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityStsV1Jwk--;
}

core.List<api.GoogleIdentityStsV1Jwk> buildUnnamed0() => [
  buildGoogleIdentityStsV1Jwk(),
  buildGoogleIdentityStsV1Jwk(),
];

void checkUnnamed0(core.List<api.GoogleIdentityStsV1Jwk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityStsV1Jwk(o[0]);
  checkGoogleIdentityStsV1Jwk(o[1]);
}

core.int buildCounterGoogleIdentityStsV1Jwks = 0;
api.GoogleIdentityStsV1Jwks buildGoogleIdentityStsV1Jwks() {
  final o = api.GoogleIdentityStsV1Jwks();
  buildCounterGoogleIdentityStsV1Jwks++;
  if (buildCounterGoogleIdentityStsV1Jwks < 3) {
    o.keys = buildUnnamed0();
  }
  buildCounterGoogleIdentityStsV1Jwks--;
  return o;
}

void checkGoogleIdentityStsV1Jwks(api.GoogleIdentityStsV1Jwks o) {
  buildCounterGoogleIdentityStsV1Jwks++;
  if (buildCounterGoogleIdentityStsV1Jwks < 3) {
    checkUnnamed0(o.keys!);
  }
  buildCounterGoogleIdentityStsV1Jwks--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.int buildCounterGoogleIdentityStsV1OpenIdProviderConfig = 0;
api.GoogleIdentityStsV1OpenIdProviderConfig
buildGoogleIdentityStsV1OpenIdProviderConfig() {
  final o = api.GoogleIdentityStsV1OpenIdProviderConfig();
  buildCounterGoogleIdentityStsV1OpenIdProviderConfig++;
  if (buildCounterGoogleIdentityStsV1OpenIdProviderConfig < 3) {
    o.authorizationEndpoint = 'foo';
    o.idTokenSigningAlgValuesSupported = buildUnnamed1();
    o.issuer = 'foo';
    o.jwksUri = 'foo';
    o.responseTypesSupported = buildUnnamed2();
    o.subjectTypesSupported = buildUnnamed3();
    o.tokenEndpoint = 'foo';
  }
  buildCounterGoogleIdentityStsV1OpenIdProviderConfig--;
  return o;
}

void checkGoogleIdentityStsV1OpenIdProviderConfig(
  api.GoogleIdentityStsV1OpenIdProviderConfig o,
) {
  buildCounterGoogleIdentityStsV1OpenIdProviderConfig++;
  if (buildCounterGoogleIdentityStsV1OpenIdProviderConfig < 3) {
    unittest.expect(o.authorizationEndpoint!, unittest.equals('foo'));
    checkUnnamed1(o.idTokenSigningAlgValuesSupported!);
    unittest.expect(o.issuer!, unittest.equals('foo'));
    unittest.expect(o.jwksUri!, unittest.equals('foo'));
    checkUnnamed2(o.responseTypesSupported!);
    checkUnnamed3(o.subjectTypesSupported!);
    unittest.expect(o.tokenEndpoint!, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityStsV1OpenIdProviderConfig--;
}

void main() {
  unittest.group('obj-schema-GoogleIdentityStsV1ExchangeTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1ExchangeTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1ExchangeTokenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIdentityStsV1ExchangeTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1ExchangeTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1ExchangeTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1ExchangeTokenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIdentityStsV1ExchangeTokenResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1Jwk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1Jwk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1Jwk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIdentityStsV1Jwk(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1Jwks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1Jwks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1Jwks.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIdentityStsV1Jwks(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1OpenIdProviderConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1OpenIdProviderConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1OpenIdProviderConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIdentityStsV1OpenIdProviderConfig(od);
    });
  });

  unittest.group(
    'resource-OrganizationsLocationsWorkloadIdentityPoolsOpenidResource',
    () {
      unittest.test('method--getJwks', () async {
        final mock = HttpServerMock();
        final res = api.CloudSecurityTokenApi(
          mock,
        ).organizations.locations.workloadIdentityPools.openid;
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
            final resp = convert.json.encode(buildGoogleIdentityStsV1Jwks());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getJwks(arg_name, $fields: arg_$fields);
        checkGoogleIdentityStsV1Jwks(response as api.GoogleIdentityStsV1Jwks);
      });
    },
  );

  unittest.group(
    'resource-OrganizationsLocationsWorkloadIdentityPoolsWellKnownResource',
    () {
      unittest.test('method--getOpenidConfiguration', () async {
        final mock = HttpServerMock();
        final res = api.CloudSecurityTokenApi(
          mock,
        ).organizations.locations.workloadIdentityPools.wellKnown;
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
            final resp = convert.json.encode(
              buildGoogleIdentityStsV1OpenIdProviderConfig(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getOpenidConfiguration(
          arg_name,
          $fields: arg_$fields,
        );
        checkGoogleIdentityStsV1OpenIdProviderConfig(
          response as api.GoogleIdentityStsV1OpenIdProviderConfig,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsWorkloadIdentityPoolsOpenidResource',
    () {
      unittest.test('method--getJwks', () async {
        final mock = HttpServerMock();
        final res = api.CloudSecurityTokenApi(
          mock,
        ).projects.locations.workloadIdentityPools.openid;
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
            final resp = convert.json.encode(buildGoogleIdentityStsV1Jwks());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getJwks(arg_name, $fields: arg_$fields);
        checkGoogleIdentityStsV1Jwks(response as api.GoogleIdentityStsV1Jwks);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsWorkloadIdentityPoolsWellKnownResource',
    () {
      unittest.test('method--getOpenidConfiguration', () async {
        final mock = HttpServerMock();
        final res = api.CloudSecurityTokenApi(
          mock,
        ).projects.locations.workloadIdentityPools.wellKnown;
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
            final resp = convert.json.encode(
              buildGoogleIdentityStsV1OpenIdProviderConfig(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.getOpenidConfiguration(
          arg_name,
          $fields: arg_$fields,
        );
        checkGoogleIdentityStsV1OpenIdProviderConfig(
          response as api.GoogleIdentityStsV1OpenIdProviderConfig,
        );
      });
    },
  );

  unittest.group('resource-V1Resource', () {
    unittest.test('method--token', () async {
      final mock = HttpServerMock();
      final res = api.CloudSecurityTokenApi(mock).v1;
      final arg_request = buildGoogleIdentityStsV1ExchangeTokenRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIdentityStsV1ExchangeTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIdentityStsV1ExchangeTokenRequest(obj);

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
            unittest.equals('v1/token'),
          );
          pathOffset += 8;

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
            buildGoogleIdentityStsV1ExchangeTokenResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.token(arg_request, $fields: arg_$fields);
      checkGoogleIdentityStsV1ExchangeTokenResponse(
        response as api.GoogleIdentityStsV1ExchangeTokenResponse,
      );
    });
  });
}
