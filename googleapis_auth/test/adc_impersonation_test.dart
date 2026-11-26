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
import 'package:googleapis_auth/src/exceptions.dart';
import 'package:googleapis_auth/src/known_uris.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

import 'test_utils.dart';

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
    await d
        .file(
          'tpc_impersonated_sa.json',
          json.encode({
            'type': 'impersonated_service_account',
            'service_account_impersonation_url':
                'https://iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/target%40example.com:generateAccessToken',
            'delegates': ['projects/-/serviceAccounts/mid@example.com'],
            'quota_project_id': 'tpc-quota',
            'source_credentials': {
              'type': 'service_account',
              'client_id': 'id',
              'client_email': 'source@tpc.iam.gserviceaccount.com',
              'private_key_id': 'k1',
              'private_key': testPrivateKeyString,
              'universe_domain': 's3nsapis.fr',
            },
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('tpc_impersonated_sa.json')),
      'test-credentials-file',
      ['target_scope'],
      mockClient(
        expectAsync1((Request request) async {
          final url = request.url;
          expect(url.host, isNot('oauth2.googleapis.com'));
          expect(url.host, isNot('iamcredentials.googleapis.com'));

          if (url.toString() ==
              'https://iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/target%40example.com:generateAccessToken') {
            expect(request.method, 'POST');
            // Self-signed JWT from TPC service account source
            final authHeader = request.headers['Authorization']!;
            expect(authHeader, startsWith('Bearer '));
            expect(
              authHeader.substring('Bearer '.length).split('.'),
              hasLength(3),
            );

            final body = jsonDecode(request.body) as Map<String, dynamic>;
            expect(body['scope'], ['target_scope']);
            expect(body['delegates'], [
              'projects/-/serviceAccounts/mid@example.com',
            ]);

            return Response(
              jsonEncode({
                'accessToken': 'tpc_target_token',
                'expireTime': DateTime.now()
                    .toUtc()
                    .add(const Duration(hours: 1))
                    .toIso8601String(),
              }),
              200,
              headers: jsonContentType,
            );
          }

          if (url.toString() == 'https://storage.s3nsapis.fr/b/bucket/o/obj') {
            expect(
              request.headers,
              containsPair('Authorization', 'Bearer tpc_target_token'),
            );
            expect(
              request.headers,
              containsPair('X-Goog-User-Project', 'tpc-quota'),
            );
            return Response('tpc impersonated ok', 200);
          }

          fail('Unexpected HTTP request to $url');
        }, count: 2),
        expectClose: false,
      ),
    );

    expect(c.credentials.accessToken.data, 'tpc_target_token');
    expect(c.credentials.universeDomain, 's3nsapis.fr');

    final r = await c.get(Uri.https('storage.s3nsapis.fr', '/b/bucket/o/obj'));
    expect(r.statusCode, 200);
    expect(r.body, 'tpc impersonated ok');

    c.close();
  });

  test('impersonated_service_account backed by TPC external_account uses TPC '
      'IAM host', () async {
    await d.file('ext_source_token.txt', 'ext-jwt').create();
    await d
        .file(
          'tpc_impersonated_ext.json',
          json.encode({
            'type': 'impersonated_service_account',
            'service_account_impersonation_url':
                'https://iamcredentials.{universe_domain}/v1/projects/-/serviceAccounts/target@example.com:generateAccessToken',
            'source_credentials': {
              'type': 'external_account',
              'audience': 'tpc-aud',
              'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
              'token_url': 'https://sts.s3nsapis.fr/v1/token',
              'credential_source': {'file': d.path('ext_source_token.txt')},
            },
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('tpc_impersonated_ext.json')),
      'test-credentials-file',
      ['target_scope'],
      mockClient(
        expectAsync1((Request request) async {
          final url = request.url;
          expect(url.host, isNot('iamcredentials.googleapis.com'));
          if (url.toString() == 'https://sts.s3nsapis.fr/v1/token') {
            return Response(
              jsonEncode({
                'token_type': 'Bearer',
                'access_token': 'tpc_sts_token',
                'expires_in': 3600,
              }),
              200,
              headers: jsonContentType,
            );
          }
          if (url.toString() ==
              'https://iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/target%40example.com:generateAccessToken') {
            expect(request.headers['Authorization'], 'Bearer tpc_sts_token');
            return Response(
              jsonEncode({
                'accessToken': 'tpc_impersonated_token',
                'expireTime': DateTime.now()
                    .toUtc()
                    .add(const Duration(hours: 1))
                    .toIso8601String(),
              }),
              200,
              headers: jsonContentType,
            );
          }
          fail('Unexpected HTTP request to $url');
        }, count: 2),
        expectClose: false,
      ),
    );

    expect(c.credentials.accessToken.data, 'tpc_impersonated_token');
    expect(c.credentials.universeDomain, 's3nsapis.fr');
    c.close();
  });

  test('impersonated_service_account rejects cross-universe mismatch before '
      'network calls', () async {
    await d.file('ext_mismatch_token.txt', 'ext-jwt').create();
    final neverClient = mockClient(
      (request) async =>
          fail('Should not issue HTTP request to ${request.url}'),
      expectClose: false,
    );

    final mismatchedSources = <(String, Map<String, dynamic>)>[
      (
        'external_account TPC source -> googleapis.com',
        {
          'type': 'impersonated_service_account',
          'service_account_impersonation_url':
              'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/target@example.com:generateAccessToken',
          'source_credentials': {
            'type': 'external_account',
            'audience': 'tpc-aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.s3nsapis.fr/v1/token',
            'credential_source': {'file': d.path('ext_mismatch_token.txt')},
          },
        },
      ),
      (
        'service_account TPC source -> googleapis.com',
        {
          'type': 'impersonated_service_account',
          'service_account_impersonation_url':
              'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/target@example.com:generateAccessToken',
          'source_credentials': {
            'type': 'service_account',
            'client_id': 'id',
            'client_email': 'source@tpc.iam.gserviceaccount.com',
            'private_key': testPrivateKeyString,
            'universe_domain': 's3nsapis.fr',
          },
        },
      ),
      (
        'nested impersonated_service_account googleapis.com -> TPC',
        {
          'type': 'impersonated_service_account',
          'universe_domain': 's3nsapis.fr',
          'service_account_impersonation_url':
              'https://iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/target@example.com:generateAccessToken',
          'source_credentials': {
            'type': 'impersonated_service_account',
            'service_account_impersonation_url':
                'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/mid@example.com:generateAccessToken',
            'source_credentials': {
              'type': 'authorized_user',
              'client_id': 'id',
              'client_secret': 'secret',
              'refresh_token': 'refresh',
            },
          },
        },
      ),
    ];

    for (var i = 0; i < mismatchedSources.length; i++) {
      final (label, config) = mismatchedSources[i];
      final name = 'tpc_impersonated_mismatch_$i.json';
      await d.file(name, json.encode(config)).create();

      await expectLater(
        fromApplicationsCredentialsFile(
          File(d.path(name)),
          'test-credentials-file',
          ['target_scope'],
          neverClient,
        ),
        throwsA(
          isA<CredentialsFileException>().having(
            (e) => e.message,
            'message',
            contains('Universe domain mismatch'),
          ),
        ),
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
      final name = 'tpc_imp_$label.json';
      await d
          .file(
            name,
            json.encode({
              'type': 'impersonated_service_account',
              'service_account_impersonation_url':
                  '$iamOrigin/v1/projects/-/serviceAccounts/target@example.com:generateAccessToken',
              'source_credentials': {
                'type': 'service_account',
                'client_id': 'id',
                'client_email': 'source@tpc.iam.gserviceaccount.com',
                'private_key_id': 'k1',
                'private_key': testPrivateKeyString,
                'universe_domain': 's3nsapis.fr',
              },
            }),
          )
          .create();

      final c = await fromApplicationsCredentialsFile(
        File(d.path(name)),
        'test-credentials-file',
        ['target_scope'],
        mockClient(
          expectAsync1((Request request) async {
            expect(
              request.url.toString(),
              '$iamOrigin/v1/projects/-/serviceAccounts/target%40example.com:generateAccessToken',
            );
            return Response(
              jsonEncode({
                'accessToken': 'tok-$label',
                'expireTime': DateTime.now()
                    .toUtc()
                    .add(const Duration(hours: 1))
                    .toIso8601String(),
              }),
              200,
              headers: jsonContentType,
            );
          }),
          expectClose: false,
        ),
      );
      expect(c.credentials.accessToken.data, 'tok-$label');
      expect(c.credentials.universeDomain, 's3nsapis.fr');
      c.close();
    }
  });
}
