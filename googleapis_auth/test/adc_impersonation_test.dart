// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

@TestOn('vm')
library;

import 'dart:convert';
import 'dart:io';

import 'package:googleapis_auth/src/adc_utils.dart'
    show fromApplicationsCredentialsFile;
import 'package:googleapis_auth/src/known_uris.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

import 'src/adc_test_utils.dart';
import 'test_utils.dart';

const _targetPath =
    '/v1/projects/-/serviceAccounts/target@example.com:generateAccessToken';
const _targetEncodedPath =
    '/v1/projects/-/serviceAccounts/target%40example.com:generateAccessToken';

Map<String, Object?> _impersonatedJson({
  required String impersonationUrl,
  required Map<String, Object?> sourceCredentials,
  List<String>? delegates,
  String? quotaProjectId,
  String? universeDomain,
}) => {
  'type': 'impersonated_service_account',
  'service_account_impersonation_url': impersonationUrl,
  'source_credentials': sourceCredentials,
  'delegates': ?delegates,
  'quota_project_id': ?quotaProjectId,
  'universe_domain': ?universeDomain,
};

void main() {
  test('impersonated_service_account credentials', () async {
    await d
        .file(
          'creds.json',
          json.encode({
            'type': 'impersonated_service_account',
            'service_account_impersonation_url':
                'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/target@example.com:generateAccessToken',
            'source_credentials': {
              'client_id': 'id',
              'client_secret': 'secret',
              'refresh_token': 'refresh',
              'type': 'authorized_user',
            },
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('creds.json')),
      'test-credentials-file',
      ['target_scope'], // Scopes for the TARGET service account
      mockClient(expectClose: false, (Request request) async {
        final url = request.url;

        // 1. Source Credential Refresh (authorized_user)
        if (url == googleOauth2TokenEndpoint) {
          expect(request.method, 'POST');
          // Expect standard refresh body
          expect(request.body, contains('grant_type=refresh_token'));
          expect(request.body, contains('refresh_token=refresh'));

          return Response(
            jsonEncode({
              'token_type': 'Bearer',
              'access_token': 'source_atoken',
              'expires_in': 3600,
            }),
            200,
            headers: jsonContentType,
          );
        }

        // 2. Impersonation Call (generateAccessToken)
        if (url.path.endsWith(':generateAccessToken')) {
          expect(request.method, 'POST');
          // Must use SOURCE token
          expect(request.headers['Authorization'], 'Bearer source_atoken');

          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['scope'], ['target_scope']);

          // Use UTC time for expiry to satisfy AccessToken requirement
          return Response(
            jsonEncode({
              'accessToken': 'target_atoken',
              'expireTime': DateTime.now()
                  .toUtc()
                  .add(const Duration(hours: 1))
                  .toIso8601String(),
            }),
            200,
            headers: jsonContentType,
          );
        }

        // 3. Target API Call
        if (url.toString() == 'https://storage.googleapis.com/b/bucket/o/obj') {
          expect(request.method, 'GET');
          // Must use TARGET token
          expect(request.headers['Authorization'], 'Bearer target_atoken');
          return Response('hello world', 200);
        }

        return Response('not found: $url', 404);
      }),
    );

    // Initial credentials might be empty or expired until first request,
    // BUT clientViaServiceAccountImpersonation fetches initial token
    // Yes: "final credentials = await impersonatedClient
    //     .generateAccessToken();"
    // So 'c' should already have valid credentials.
    expect(c.credentials.accessToken.data, 'target_atoken');

    final r = await c.get(
      Uri.https('storage.googleapis.com', '/b/bucket/o/obj'),
    );
    expect(r.statusCode, 200);
    expect(r.body, 'hello world');

    c.close();
  });

  test('impersonated_service_account with TPC service_account source uses TPC '
      'IAM host and forwards delegates and quota project', () async {
    const tpcStorageUrl = 'https://storage.s3nsapis.fr/b/bucket/o/obj';
    final c = await loadAdcCreds(
      _impersonatedJson(
        impersonationUrl:
            'https://iamcredentials.s3nsapis.fr$_targetEncodedPath',
        delegates: const ['projects/-/serviceAccounts/mid@example.com'],
        quotaProjectId: 'tpc-quota',
        sourceCredentials: serviceAccountJson(
          email: 'source@tpc.iam.gserviceaccount.com',
          clientId: 'id',
          privateKeyId: 'k1',
          universeDomain: 's3nsapis.fr',
        ),
      ),
      routeMockClient({
        'https://iamcredentials.s3nsapis.fr$_targetEncodedPath': (request) {
          expect(request.method, 'POST');
          final authHeader = request.headers['Authorization']!;
          expect(authHeader, startsWith('Bearer '));
          decodeJwt(authHeader.substring('Bearer '.length));

          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['scope'], ['target_scope']);
          expect(body['delegates'], [
            'projects/-/serviceAccounts/mid@example.com',
          ]);
          return iamTokenResponse(token: 'tpc_target_token');
        },
        tpcStorageUrl: (request) {
          expect(
            request.headers,
            containsPair('Authorization', 'Bearer tpc_target_token'),
          );
          expect(
            request.headers,
            containsPair('X-Goog-User-Project', 'tpc-quota'),
          );
          return Response('tpc impersonated ok', 200);
        },
      }, count: 2),
      scopes: const ['target_scope'],
    );
    expect(c.credentials.accessToken.data, 'tpc_target_token');
    expect(c.credentials.universeDomain, 's3nsapis.fr');

    final r = await c.get(Uri.parse(tpcStorageUrl));
    expect(r.statusCode, 200);
    expect(r.body, 'tpc impersonated ok');
    c.close();
  });

  test('impersonated_service_account backed by TPC external_account uses TPC '
      'IAM host', () async {
    await d.file('ext_source_token.txt', 'ext-jwt').create();
    final c = await loadAdcCreds(
      _impersonatedJson(
        impersonationUrl:
            'https://iamcredentials.{universe_domain}$_targetPath',
        sourceCredentials: externalAccountJson(
          d.path('ext_source_token.txt'),
          audience: 'tpc-aud',
          tokenUrl: 'https://sts.s3nsapis.fr/v1/token',
        ),
      ),
      routeMockClient({
        'https://sts.s3nsapis.fr/v1/token': (_) =>
            oauthTokenResponse(token: 'tpc_sts_token'),
        'https://iamcredentials.s3nsapis.fr$_targetEncodedPath': (request) {
          expect(request.headers['Authorization'], 'Bearer tpc_sts_token');
          return iamTokenResponse(token: 'tpc_impersonated_token');
        },
      }, count: 2),
      scopes: const ['target_scope'],
    );
    expect(c.credentials.accessToken.data, 'tpc_impersonated_token');
    expect(c.credentials.universeDomain, 's3nsapis.fr');
    c.close();
  });

  test('impersonated_service_account rejects cross-universe mismatch before '
      'network calls', () async {
    await d.file('ext_mismatch_token.txt', 'ext-jwt').create();

    final mismatchedSources = <(String, Map<String, Object?>)>[
      (
        'external_account TPC source -> googleapis.com',
        _impersonatedJson(
          impersonationUrl: 'https://iamcredentials.googleapis.com$_targetPath',
          sourceCredentials: externalAccountJson(
            d.path('ext_mismatch_token.txt'),
            audience: 'tpc-aud',
            tokenUrl: 'https://sts.s3nsapis.fr/v1/token',
          ),
        ),
      ),
      (
        'service_account TPC source -> googleapis.com',
        _impersonatedJson(
          impersonationUrl: 'https://iamcredentials.googleapis.com$_targetPath',
          sourceCredentials: serviceAccountJson(
            email: 'source@tpc.iam.gserviceaccount.com',
            clientId: 'id',
            privateKeyId: null,
            universeDomain: 's3nsapis.fr',
          ),
        ),
      ),
      (
        'nested impersonated_service_account googleapis.com -> TPC',
        _impersonatedJson(
          universeDomain: 's3nsapis.fr',
          impersonationUrl: 'https://iamcredentials.s3nsapis.fr$_targetPath',
          sourceCredentials: _impersonatedJson(
            impersonationUrl:
                'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/mid@example.com:generateAccessToken',
            sourceCredentials: authorizedUserJson,
          ),
        ),
      ),
    ];

    for (final (i, (label, config)) in mismatchedSources.indexed) {
      await expectAdcError(
        config,
        'Universe domain mismatch',
        scopes: const ['target_scope'],
        fileName: 'tpc_impersonated_mismatch_$i.json',
        reason: 'Case failed: $label',
      );
    }
  });

  test('impersonated_service_account supports mTLS, REP, and custom proxy '
      'endpoints without universe corruption', () async {
    for (final (label, iamOrigin) in [
      ('mtls', 'https://iamcredentials.mtls.s3nsapis.fr'),
      ('rep', 'https://iamcredentials.eu-west9.rep.s3nsapis.fr'),
      ('proxy', 'https://iam-proxy.corp.example'),
    ]) {
      final c = await loadAdcCreds(
        _impersonatedJson(
          impersonationUrl: '$iamOrigin$_targetPath',
          sourceCredentials: serviceAccountJson(
            email: 'source@tpc.iam.gserviceaccount.com',
            clientId: 'id',
            privateKeyId: 'k1',
            universeDomain: 's3nsapis.fr',
          ),
        ),
        routeMockClient({
          '$iamOrigin$_targetEncodedPath': (_) =>
              iamTokenResponse(token: 'tok-$label'),
        }, count: 1),
        scopes: const ['target_scope'],
        fileName: 'tpc_imp_$label.json',
      );
      expect(c.credentials.accessToken.data, 'tok-$label');
      expect(c.credentials.universeDomain, 's3nsapis.fr');
      c.close();
    }
  });
}
