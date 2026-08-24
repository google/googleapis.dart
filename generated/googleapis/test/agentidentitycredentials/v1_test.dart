// Copyright 2026 Google LLC
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

import 'package:googleapis/agentidentitycredentials/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudAgentidentitycredentialsV1ConsentRejected = 0;
api.GoogleCloudAgentidentitycredentialsV1ConsentRejected
buildGoogleCloudAgentidentitycredentialsV1ConsentRejected() {
  final o = api.GoogleCloudAgentidentitycredentialsV1ConsentRejected();
  buildCounterGoogleCloudAgentidentitycredentialsV1ConsentRejected++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1ConsentRejected < 3) {}
  buildCounterGoogleCloudAgentidentitycredentialsV1ConsentRejected--;
  return o;
}

void checkGoogleCloudAgentidentitycredentialsV1ConsentRejected(
  api.GoogleCloudAgentidentitycredentialsV1ConsentRejected o,
) {
  buildCounterGoogleCloudAgentidentitycredentialsV1ConsentRejected++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1ConsentRejected < 3) {}
  buildCounterGoogleCloudAgentidentitycredentialsV1ConsentRejected--;
}

core.int
buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest = 0;
api.GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest
buildGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest() {
  final o =
      api.GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest();
  buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest <
      3) {
    o.consentNonce = 'foo';
    o.userId = 'foo';
    o.userIdValidationState = 'foo';
  }
  buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest--;
  return o;
}

void checkGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest(
  api.GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest o,
) {
  buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest <
      3) {
    unittest.expect(o.consentNonce!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
    unittest.expect(o.userIdValidationState!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest--;
}

core.int
buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse =
    0;
api.GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse
buildGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse() {
  final o =
      api.GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse();
  buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse <
      3) {}
  buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse--;
  return o;
}

void checkGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse(
  api.GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse o,
) {
  buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse <
      3) {}
  buildCounterGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse--;
}

core.int buildCounterGoogleCloudAgentidentitycredentialsV1Pending = 0;
api.GoogleCloudAgentidentitycredentialsV1Pending
buildGoogleCloudAgentidentitycredentialsV1Pending() {
  final o = api.GoogleCloudAgentidentitycredentialsV1Pending();
  buildCounterGoogleCloudAgentidentitycredentialsV1Pending++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1Pending < 3) {}
  buildCounterGoogleCloudAgentidentitycredentialsV1Pending--;
  return o;
}

void checkGoogleCloudAgentidentitycredentialsV1Pending(
  api.GoogleCloudAgentidentitycredentialsV1Pending o,
) {
  buildCounterGoogleCloudAgentidentitycredentialsV1Pending++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1Pending < 3) {}
  buildCounterGoogleCloudAgentidentitycredentialsV1Pending--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest = 0;
api.GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest
buildGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest() {
  final o =
      api.GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest();
  buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest <
      3) {
    o.continueUri = 'foo';
    o.forceRefreshToken = 'foo';
    o.scopes = buildUnnamed0();
    o.userId = 'foo';
  }
  buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest--;
  return o;
}

void checkGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest(
  api.GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest o,
) {
  buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest <
      3) {
    unittest.expect(o.continueUri!, unittest.equals('foo'));
    unittest.expect(o.forceRefreshToken!, unittest.equals('foo'));
    checkUnnamed0(o.scopes!);
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest--;
}

core.int
buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse =
    0;
api.GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse
buildGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse() {
  final o =
      api.GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse();
  buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse <
      3) {
    o.consentRejected =
        buildGoogleCloudAgentidentitycredentialsV1ConsentRejected();
    o.pending = buildGoogleCloudAgentidentitycredentialsV1Pending();
    o.success = buildGoogleCloudAgentidentitycredentialsV1Success();
    o.uriConsentRequired =
        buildGoogleCloudAgentidentitycredentialsV1UriConsentRequired();
  }
  buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse--;
  return o;
}

void checkGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse(
  api.GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse o,
) {
  buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse <
      3) {
    checkGoogleCloudAgentidentitycredentialsV1ConsentRejected(
      o.consentRejected!,
    );
    checkGoogleCloudAgentidentitycredentialsV1Pending(o.pending!);
    checkGoogleCloudAgentidentitycredentialsV1Success(o.success!);
    checkGoogleCloudAgentidentitycredentialsV1UriConsentRequired(
      o.uriConsentRequired!,
    );
  }
  buildCounterGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAgentidentitycredentialsV1Success = 0;
api.GoogleCloudAgentidentitycredentialsV1Success
buildGoogleCloudAgentidentitycredentialsV1Success() {
  final o = api.GoogleCloudAgentidentitycredentialsV1Success();
  buildCounterGoogleCloudAgentidentitycredentialsV1Success++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1Success < 3) {
    o.expireTime = 'foo';
    o.header = 'foo';
    o.scopes = buildUnnamed1();
    o.token = 'foo';
  }
  buildCounterGoogleCloudAgentidentitycredentialsV1Success--;
  return o;
}

void checkGoogleCloudAgentidentitycredentialsV1Success(
  api.GoogleCloudAgentidentitycredentialsV1Success o,
) {
  buildCounterGoogleCloudAgentidentitycredentialsV1Success++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1Success < 3) {
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.header!, unittest.equals('foo'));
    checkUnnamed1(o.scopes!);
    unittest.expect(o.token!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAgentidentitycredentialsV1Success--;
}

core.int buildCounterGoogleCloudAgentidentitycredentialsV1UriConsentRequired =
    0;
api.GoogleCloudAgentidentitycredentialsV1UriConsentRequired
buildGoogleCloudAgentidentitycredentialsV1UriConsentRequired() {
  final o = api.GoogleCloudAgentidentitycredentialsV1UriConsentRequired();
  buildCounterGoogleCloudAgentidentitycredentialsV1UriConsentRequired++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1UriConsentRequired < 3) {
    o.authorizationUri = 'foo';
    o.consentNonce = 'foo';
    o.uid = 'foo';
  }
  buildCounterGoogleCloudAgentidentitycredentialsV1UriConsentRequired--;
  return o;
}

void checkGoogleCloudAgentidentitycredentialsV1UriConsentRequired(
  api.GoogleCloudAgentidentitycredentialsV1UriConsentRequired o,
) {
  buildCounterGoogleCloudAgentidentitycredentialsV1UriConsentRequired++;
  if (buildCounterGoogleCloudAgentidentitycredentialsV1UriConsentRequired < 3) {
    unittest.expect(o.authorizationUri!, unittest.equals('foo'));
    unittest.expect(o.consentNonce!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAgentidentitycredentialsV1UriConsentRequired--;
}

void main() {
  unittest.group(
    'obj-schema-GoogleCloudAgentidentitycredentialsV1ConsentRejected',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudAgentidentitycredentialsV1ConsentRejected();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAgentidentitycredentialsV1ConsentRejected.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAgentidentitycredentialsV1ConsentRejected(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAgentidentitycredentialsV1Pending', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAgentidentitycredentialsV1Pending();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAgentidentitycredentialsV1Pending.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAgentidentitycredentialsV1Pending(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudAgentidentitycredentialsV1Success', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAgentidentitycredentialsV1Success();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAgentidentitycredentialsV1Success.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAgentidentitycredentialsV1Success(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudAgentidentitycredentialsV1UriConsentRequired',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudAgentidentitycredentialsV1UriConsentRequired();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudAgentidentitycredentialsV1UriConsentRequired.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudAgentidentitycredentialsV1UriConsentRequired(od);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsAuthProvidersCredentialsResource', () {
    unittest.test('method--finalize', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityCredentialsApi(
        mock,
      ).projects.locations.authProviders.credentials;
      final arg_request =
          buildGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest();
      final arg_authProvider = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest(
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
            buildGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.finalize(
        arg_request,
        arg_authProvider,
        $fields: arg_$fields,
      );
      checkGoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse(
        response
            as api.GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse,
      );
    });

    unittest.test('method--retrieve', () async {
      final mock = HttpServerMock();
      final res = api.AgentIdentityCredentialsApi(
        mock,
      ).projects.locations.authProviders.credentials;
      final arg_request =
          buildGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest();
      final arg_authProvider = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest(
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
            buildGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.retrieve(
        arg_request,
        arg_authProvider,
        $fields: arg_$fields,
      );
      checkGoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse(
        response
            as api.GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse,
      );
    });
  });
}
