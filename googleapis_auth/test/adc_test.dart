// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

@TestOn('vm')
library;

import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:googleapis_auth/src/adc_utils.dart'
    show fromApplicationsCredentialsFile;
import 'package:googleapis_auth/src/known_uris.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;
import 'package:test_process/test_process.dart';

import 'src/adc_test_utils.dart';
import 'test_utils.dart';

const _tpcStorageUrl = 'https://storage.s3nsapis.fr/b/bucket/o/obj';
const _gduStsUrl = 'https://sts.googleapis.com/v1/token';
const _tpcStsUrl = 'https://sts.s3nsapis.fr/v1/token';
const _gduIamPath =
    '/v1/projects/-/serviceAccounts/foo@bar.iam.gserviceaccount.com:generateAccessToken';
const _gduIamEncodedPath =
    '/v1/projects/-/serviceAccounts/foo%40bar.iam.gserviceaccount.com:generateAccessToken';

void main() {
  test('authorized_user credentials', () async {
    await d
        .file(
          'creds.json',
          json.encode({
            'client_id': 'id',
            'client_secret': 'secret',
            'refresh_token': 'refresh',
            'type': 'authorized_user',
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('creds.json')),
      'test-credentials-file',
      [],
      mockClient((Request request) async {
        final url = request.url;
        if (url == googleOauth2TokenEndpoint) {
          expect(request.method, 'POST');
          expect(
            request.body,
            'client_id=id&'
            'client_secret=secret&'
            'refresh_token=refresh&'
            'grant_type=refresh_token',
          );
          final body = jsonEncode({
            'token_type': 'Bearer',
            'access_token': 'atoken',
            'expires_in': 3600,
          });
          return Response(body, 200, headers: jsonContentType);
        }
        if (url.toString() == 'https://storage.googleapis.com/b/bucket/o/obj') {
          expect(request.method, 'GET');
          expect(
            request.headers,
            containsPair('Authorization', 'Bearer atoken'),
          );
          expect(request.headers, isNot(contains('X-Goog-User-Project')));
          return Response('hello world', 200);
        }
        return Response('bad', 404);
      }),
    );
    expect(c.credentials.accessToken.data, 'atoken');

    final r = await c.get(
      Uri.https('storage.googleapis.com', '/b/bucket/o/obj'),
    );
    expect(r.statusCode, 200);
    expect(r.body, 'hello world');

    c.close();
  });

  group('GOOGLE_CLOUD_QUOTA_PROJECT environment variable', () {
    late String quotaProjectPrint;

    setUpAll(() async {
      final packageUri = await Isolate.resolvePackageUri(
        Uri.parse('package:googleapis_auth/'),
      );
      quotaProjectPrint = packageUri!
          .resolve('../test/src/quota_project_print.dart')
          .toFilePath();
    });

    Future<void> writeCreds({String? quotaProjectId}) => d
        .file(
          'quota_project_env_creds.json',
          json.encode({
            'client_id': 'id',
            'client_secret': 'secret',
            'refresh_token': 'refresh',
            'type': 'authorized_user',
            'quota_project_id': ?quotaProjectId,
          }),
        )
        .create();

    test('is used when credentials have no quota_project_id', () async {
      await writeCreds();

      final proc = await TestProcess.start(
        Platform.resolvedExecutable,
        [quotaProjectPrint, d.path('quota_project_env_creds.json')],
        environment: {'GOOGLE_CLOUD_QUOTA_PROJECT': 'env-project'},
        includeParentEnvironment: false,
      );

      await expectLater(proc.stdout, emits('env-project'));
      await proc.shouldExit(0);
    });

    test('takes precedence over quota_project_id in credentials', () async {
      await writeCreds(quotaProjectId: 'file-project');

      final proc = await TestProcess.start(
        Platform.resolvedExecutable,
        [quotaProjectPrint, d.path('quota_project_env_creds.json')],
        environment: {'GOOGLE_CLOUD_QUOTA_PROJECT': 'env-project'},
        includeParentEnvironment: false,
      );

      await expectLater(proc.stdout, emits('env-project'));
      await proc.shouldExit(0);
    });
  });

  test('authorized_user credentials with quota_project_id', () async {
    await d
        .file(
          'creds.json',
          json.encode({
            'client_id': 'id',
            'client_secret': 'secret',
            'refresh_token': 'refresh',
            'type': 'authorized_user',
            'quota_project_id': 'project',
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('creds.json')),
      'test-credentials-file',
      [],
      mockClient((Request request) async {
        final url = request.url;
        if (url == googleOauth2TokenEndpoint) {
          expect(request.method, 'POST');
          expect(
            request.body,
            'client_id=id&'
            'client_secret=secret&'
            'refresh_token=refresh&'
            'grant_type=refresh_token',
          );
          final body = jsonEncode({
            'token_type': 'Bearer',
            'access_token': 'atoken',
            'expires_in': 3600,
          });
          return Response(body, 200, headers: jsonContentType);
        }
        if (url.toString() == 'https://storage.googleapis.com/b/bucket/o/obj') {
          expect(request.method, 'GET');
          expect(
            request.headers,
            containsPair('Authorization', 'Bearer atoken'),
          );
          expect(
            request.headers,
            containsPair('X-Goog-User-Project', 'project'),
          );
          return Response('hello world', 200);
        }
        return Response('bad', 404);
      }),
    );
    expect(c.credentials.accessToken.data, 'atoken');

    final r = await c.get(
      Uri.https('storage.googleapis.com', '/b/bucket/o/obj'),
    );
    expect(r.statusCode, 200);
    expect(r.body, 'hello world');

    c.close();
  });

  test('service_account credentials with quota_project_id', () async {
    await d
        .file(
          'creds.json',
          json.encode({
            'private_key_id': 'id',
            'private_key': testPrivateKeyString,
            'client_email': 'test@example.com',
            'client_id': 'client_id',
            'type': 'service_account',
            'quota_project_id': 'test-quota-project',
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('creds.json')),
      'test-credentials-file',
      ['https://www.googleapis.com/auth/cloud-platform'],
      mockClient(
        expectAsync1((Request request) async {
          final url = request.url;
          if (url == googleOauth2TokenEndpoint) {
            expect(request.method, 'POST');
            return Response(
              jsonEncode({
                'access_token': 'atoken',
                'token_type': 'Bearer',
                'expires_in': 3600,
              }),
              200,
              headers: jsonContentType,
            );
          }
          if (url.toString() ==
              'https://storage.googleapis.com/b/bucket/o/obj') {
            expect(request.method, 'GET');
            expect(
              request.headers,
              containsPair('X-Goog-User-Project', 'test-quota-project'),
            );
            return Response('hello world', 200);
          }
          return Response('bad', 404);
        }, count: 2),
        expectClose: false,
      ),
    );
    expect(c.credentials.accessToken.data, 'atoken');

    final r = await c.get(
      Uri.https('storage.googleapis.com', '/b/bucket/o/obj'),
    );
    expect(r.statusCode, 200);
    expect(r.body, 'hello world');

    c.close();
  });

  test('external_account credentials (WIF)', () async {
    await d.file('subject_token.txt', 'my-subject-token').create();

    await d
        .file(
          'creds.json',
          json.encode({
            'type': 'external_account',
            'audience': 'my-audience',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.googleapis.com/v1/token',
            'credential_source': {'file': d.path('subject_token.txt')},
            'quota_project_id': 'project',
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('creds.json')),
      'test-credentials-file',
      ['s1'],
      mockClient(expectClose: false, (Request request) async {
        final url = request.url;
        if (url.toString() == 'https://sts.googleapis.com/v1/token') {
          expect(request.method, 'POST');
          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['audience'], 'my-audience');
          expect(body['subjectToken'], 'my-subject-token');
          return Response(
            jsonEncode({
              'token_type': 'Bearer',
              'access_token': 'atoken',
              'expires_in': 3600,
            }),
            200,
            headers: jsonContentType,
          );
        }
        if (url.toString() == 'https://storage.googleapis.com/b/bucket/o/obj') {
          expect(request.method, 'GET');
          expect(
            request.headers,
            containsPair('Authorization', 'Bearer atoken'),
          );
          expect(
            request.headers,
            containsPair('X-Goog-User-Project', 'project'),
          );
          return Response('hello world', 200);
        }
        return Response('bad', 404);
      }),
    );
    expect(c.credentials.accessToken.data, 'atoken');

    final r = await c.get(
      Uri.https('storage.googleapis.com', '/b/bucket/o/obj'),
    );
    expect(r.statusCode, 200);
    expect(r.body, 'hello world');

    c.close();
  });

  test('external_account credentials (WIF) with impersonation', () async {
    await d.file('subject_token2.txt', 'my-subject-token2').create();

    await d
        .file(
          'creds2.json',
          json.encode({
            'type': 'external_account',
            'audience': 'my-audience',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'service_account_impersonation_url':
                'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/foo@bar.iam.gserviceaccount.com:generateAccessToken',
            'token_url': 'https://sts.googleapis.com/v1/token',
            'credential_source': {'file': d.path('subject_token2.txt')},
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('creds2.json')),
      'test-credentials-file',
      ['s1'],
      mockClient(expectClose: false, (Request request) async {
        final url = request.url;
        if (url.toString() == 'https://sts.googleapis.com/v1/token') {
          return Response(
            jsonEncode({
              'token_type': 'Bearer',
              'access_token': 'atoken',
              'expires_in': 3600,
            }),
            200,
            headers: jsonContentType,
          );
        }
        if (url.toString() ==
            'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/foo%40bar.iam.gserviceaccount.com:generateAccessToken') {
          expect(request.method, 'POST');
          expect(
            request.headers,
            containsPair('Authorization', 'Bearer atoken'),
          );
          return Response(
            jsonEncode({
              'accessToken': 'impersonated-token',
              'expireTime': '2014-10-02T15:01:23.045123456Z',
            }),
            200,
            headers: jsonContentType,
          );
        }
        if (url.toString() == 'https://storage.googleapis.com/b/bucket/o/obj') {
          expect(request.method, 'GET');
          expect(
            request.headers,
            containsPair('Authorization', 'Bearer impersonated-token'),
          );
          return Response('hello world', 200);
        }
        return Response('bad url: $url', 404);
      }),
    );
    expect(c.credentials.accessToken.data, 'impersonated-token');

    final r = await c.get(
      Uri.https('storage.googleapis.com', '/b/bucket/o/obj'),
    );
    expect(r.statusCode, 200);
    expect(r.body, 'hello world');

    c.close();
  });

  _tpcAdcTests();
}

void _tpcAdcTests() {
  Future<String> writeSubjectToken([
    String fileName = 'subject_token.txt',
    String token = 'my-subject-token',
  ]) async {
    await d.file(fileName, token).create();
    return d.path(fileName);
  }

  test(
    'authorized_user rejects non-default universe_domain and invalid token_uri',
    () async {
      for (final (label, extra, expectedText) in [
        (
          'non-default universe_domain',
          {'universe_domain': 's3nsapis.fr'},
          'universe_domain',
        ),
        (
          'TPC token_uri',
          {'token_uri': 'https://oauth2.s3nsapis.fr/token'},
          'token_uri',
        ),
        (
          'userinfo token_uri',
          {'token_uri': 'https://user@oauth2.googleapis.com/token'},
          'token_uri',
        ),
        (
          'http token_uri',
          {'token_uri': 'http://oauth2.googleapis.com/token'},
          'token_uri',
        ),
        ('non-string token_uri', {'token_uri': 123}, 'token_uri'),
      ]) {
        await expectAdcError(
          {...authorizedUserJson, ...extra},
          expectedText,
          scopes: const [],
          fileName: 'bad_user_${label.replaceAll(' ', '_')}.json',
          reason: 'Case failed: $label',
        );
      }
    },
  );

  test(
    'authorized_user accepts canonical Google OAuth2 token_uri values',
    () async {
      for (final (idx, tokenUri) in [
        'https://oauth2.googleapis.com/token',
        'https://oauth2.mtls.googleapis.com/token',
        'https://accounts.google.com/o/oauth2/token',
        'https://www.googleapis.com/oauth2/v4/token',
      ].indexed) {
        final client = await loadAdcCreds(
          {
            ...authorizedUserJson,
            'universe_domain': 'GOOGLEAPIS.COM',
            'token_uri': tokenUri,
          },
          routeMockClient(
            {'$googleOauth2TokenEndpoint': (_) => oauthTokenResponse()},
            count: 1,
            expectClose: true,
          ),
          scopes: const [],
          fileName: 'ok_user_$idx.json',
        );
        expect(client.credentials.universeDomain, 'googleapis.com');
        client.close();
      }
    },
  );

  test('external_account with TPC impersonation uses TPC IAM host', () async {
    final tokenFile = await writeSubjectToken('tpc_token.txt', 'tpc-token');
    final c = await loadAdcCreds(
      externalAccountJson(
        tokenFile,
        audience: 'tpc-audience',
        tokenUrl: _tpcStsUrl,
        impersonationUrl: 'https://iamcredentials.s3nsapis.fr$_gduIamPath',
        quotaProjectId: 'tpc-quota',
      ),
      routeMockClient({
        _tpcStsUrl: (_) => oauthTokenResponse(token: 'tpc-sts-token'),
        'https://iamcredentials.s3nsapis.fr$_gduIamEncodedPath': (request) {
          expect(request.method, 'POST');
          expect(
            request.headers,
            containsPair('Authorization', 'Bearer tpc-sts-token'),
          );
          return iamTokenResponse(token: 'tpc-impersonated-token');
        },
        _tpcStorageUrl: (request) {
          expect(
            request.headers,
            containsPair('Authorization', 'Bearer tpc-impersonated-token'),
          );
          expect(
            request.headers,
            containsPair('X-Goog-User-Project', 'tpc-quota'),
          );
          return Response('tpc ok', 200);
        },
      }, count: 3),
    );
    expect(c.credentials.accessToken.data, 'tpc-impersonated-token');
    expect(c.credentials.universeDomain, 's3nsapis.fr');

    final r = await c.get(Uri.parse(_tpcStorageUrl));
    expect(r.statusCode, 200);
    expect(r.body, 'tpc ok');
    c.close();
  });

  test('external_account substitutes {universe_domain} in token_url and '
      'regional impersonation host', () async {
    final tokenFile = await writeSubjectToken('tpc_token3.txt', 'tpc-token3');
    final c = await loadAdcCreds(
      externalAccountJson(
        tokenFile,
        universeDomain: 'S3NSAPIS.FR',
        tokenUrl: 'https://sts.{universe_domain}/v1/token',
        impersonationUrl:
            'https://eu-west9-iamcredentials.{universe_domain}$_gduIamPath',
      ),
      routeMockClient({
        _tpcStsUrl: (_) => oauthTokenResponse(token: 'tpc-sts-token'),
        'https://eu-west9-iamcredentials.s3nsapis.fr$_gduIamEncodedPath': (_) =>
            iamTokenResponse(token: 'regional-impersonated-token'),
      }, count: 2),
    );
    expect(c.credentials.accessToken.data, 'regional-impersonated-token');
    expect(c.credentials.universeDomain, 's3nsapis.fr');
    c.close();
  });

  test(
    'external_account defaults omitted token_url per universe_domain',
    () async {
      final tokenFile = await writeSubjectToken('default_sts_token.txt');
      for (final (name, universe, expectedUrl, expectedUniverse) in [
        ('ext_default.json', null, _gduStsUrl, 'googleapis.com'),
        ('ext_tpc.json', 's3nsapis.fr', _tpcStsUrl, 's3nsapis.fr'),
      ]) {
        final client = await loadAdcCreds(
          externalAccountJson(
            tokenFile,
            tokenUrl: null,
            universeDomain: universe,
          ),
          routeMockClient({
            expectedUrl: (_) => oauthTokenResponse(token: 'sts-tok'),
          }, count: 1),
          fileName: name,
        );
        expect(client.credentials.universeDomain, expectedUniverse);
        client.close();
      }
    },
  );

  test('external_account supports mTLS, REP, PSC, proxy, and localhost '
      'STS and IAM endpoints', () async {
    final tokenFile = await writeSubjectToken('endpoint_variants_token.txt');
    const saPath =
        '/v1/projects/-/serviceAccounts/sa@p.iam.gserviceaccount.com:generateAccessToken';
    const saEncodedPath =
        '/v1/projects/-/serviceAccounts/sa%40p.iam.gserviceaccount.com:generateAccessToken';

    for (final (label, stsUrl, iamOrigin) in [
      (
        'mtls',
        'https://sts.mtls.s3nsapis.fr/v1/token',
        'https://iamcredentials.mtls.s3nsapis.fr',
      ),
      (
        'rep',
        'https://sts.eu-west9.rep.s3nsapis.fr/v1/token',
        'https://iamcredentials.eu-west9.rep.s3nsapis.fr',
      ),
      (
        'psc',
        'https://sts-mypsc.p.s3nsapis.fr/v1/token',
        'https://iamcredentials-mypsc.p.s3nsapis.fr',
      ),
      (
        'proxy',
        'https://proxy.corp.example/v1/token',
        'https://iam-proxy.corp.example',
      ),
      ('localhost', 'http://localhost:8080/v1/token', 'http://localhost:8081'),
    ]) {
      final client = await loadAdcCreds(
        externalAccountJson(
          tokenFile,
          universeDomain: 's3nsapis.fr',
          tokenUrl: stsUrl,
          impersonationUrl: '$iamOrigin$saPath',
        ),
        routeMockClient({
          stsUrl: (_) => oauthTokenResponse(token: 'sts-$label'),
          '$iamOrigin$saEncodedPath': (_) =>
              iamTokenResponse(token: 'imp-$label'),
        }, count: 2),
        fileName: 'ext_variant_$label.json',
      );
      expect(client.credentials.accessToken.data, 'imp-$label');
      expect(client.credentials.universeDomain, 's3nsapis.fr');
      client.close();
    }
  });

  test('external_account rejects invalid, mismatched, and untrusted '
      'configs before network calls', () async {
    final tokenFile = await writeSubjectToken('sec_token.txt', 'token');
    const saPath =
        '/v1/projects/-/serviceAccounts/sa@p.iam.gserviceaccount.com:generateAccessToken';

    final badConfigs = <(String, Map<String, Object?>, String)>[
      (
        'inferred cross-universe mismatch',
        externalAccountJson(
          tokenFile,
          tokenUrl: _tpcStsUrl,
          impersonationUrl: 'https://iamcredentials.googleapis.com$saPath',
        ),
        'Universe domain mismatch',
      ),
      (
        'non-HTTPS impersonation URL',
        externalAccountJson(
          tokenFile,
          impersonationUrl: 'http://iamcredentials.googleapis.com$saPath',
        ),
        'https',
      ),
      (
        'cleartext token_url',
        externalAccountJson(
          tokenFile,
          tokenUrl: 'http://sts.s3nsapis.fr/v1/token',
        ),
        'https',
      ),
      (
        'mTLS cross-universe mismatch in token_url',
        externalAccountJson(
          tokenFile,
          universeDomain: 's3nsapis.fr',
          tokenUrl: 'https://sts.mtls.googleapis.com/v1/token',
        ),
        'Universe domain mismatch',
      ),
      (
        'REP cross-universe mismatch in impersonation URL',
        externalAccountJson(
          tokenFile,
          universeDomain: 's3nsapis.fr',
          tokenUrl: _tpcStsUrl,
          impersonationUrl:
              'https://iamcredentials.us-central1.rep.googleapis.com$saPath',
        ),
        'Universe domain mismatch',
      ),
      (
        'PSC cross-universe mismatch in token_url',
        externalAccountJson(
          tokenFile,
          universeDomain: 's3nsapis.fr',
          tokenUrl: 'https://sts-mypsc.p.googleapis.com/v1/token',
        ),
        'Universe domain mismatch',
      ),
      (
        'userinfo in token_url',
        externalAccountJson(
          tokenFile,
          tokenUrl: 'https://sts.s3nsapis.fr@evil.com/v1/token',
        ),
        'userinfo',
      ),
      (
        'injected universe_domain',
        externalAccountJson(
          tokenFile,
          universeDomain: 'googleapis.com@evil.com',
          tokenUrl: 'https://sts.{universe_domain}/v1/token',
        ),
        'Invalid universe_domain',
      ),
      (
        'TPC universe_domain with hardcoded googleapis.com token_url',
        externalAccountJson(tokenFile, universeDomain: 's3nsapis.fr'),
        'Universe domain mismatch',
      ),
      (
        'unanchored impersonation path prefix',
        externalAccountJson(
          tokenFile,
          impersonationUrl: 'https://iamcredentials.googleapis.com/evil$saPath',
        ),
        'path',
      ),
      (
        'userinfo/query in impersonation URL',
        externalAccountJson(
          tokenFile,
          impersonationUrl:
              'https://user@iamcredentials.googleapis.com$saPath?x=1',
        ),
        'userinfo',
      ),
      (
        'non-string token_url',
        externalAccountJson(tokenFile, overrides: {'token_url': 123}),
        'token_url',
      ),
      (
        'non-string quota_project_id',
        externalAccountJson(tokenFile, overrides: {'quota_project_id': 123}),
        'quota_project_id',
      ),
      (
        'non-string service_account_impersonation_url',
        externalAccountJson(
          tokenFile,
          overrides: {'service_account_impersonation_url': 42},
        ),
        'service_account_impersonation_url',
      ),
    ];

    for (final (i, (label, config, expected)) in badConfigs.indexed) {
      await expectAdcError(
        config,
        expected,
        fileName: 'bad_ext_$i.json',
        reason: 'Case failed: $label',
      );
    }
  });
}
