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
import 'package:googleapis_auth/src/exceptions.dart';
import 'package:googleapis_auth/src/known_uris.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;
import 'package:test_process/test_process.dart';

import 'test_utils.dart';

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

  test('external_account with TPC impersonation uses TPC IAM host', () async {
    await d.file('tpc_subject_token.txt', 'tpc-subject-token').create();

    await d
        .file(
          'tpc_wif.json',
          json.encode({
            'type': 'external_account',
            'audience': 'tpc-audience',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.s3nsapis.fr/v1/token',
            'service_account_impersonation_url':
                'https://iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/foo@bar.iam.gserviceaccount.com:generateAccessToken',
            'credential_source': {'file': d.path('tpc_subject_token.txt')},
            'quota_project_id': 'tpc-quota',
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('tpc_wif.json')),
      'test-credentials-file',
      ['s1'],
      mockClient(
        expectAsync1((Request request) async {
          final url = request.url;
          expect(url.host, isNot('iamcredentials.googleapis.com'));
          if (url.toString() == 'https://sts.s3nsapis.fr/v1/token') {
            return Response(
              jsonEncode({
                'token_type': 'Bearer',
                'access_token': 'tpc-sts-token',
                'expires_in': 3600,
              }),
              200,
              headers: jsonContentType,
            );
          }
          if (url.toString() ==
              'https://iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/foo%40bar.iam.gserviceaccount.com:generateAccessToken') {
            expect(request.method, 'POST');
            expect(
              request.headers,
              containsPair('Authorization', 'Bearer tpc-sts-token'),
            );
            return Response(
              jsonEncode({
                'accessToken': 'tpc-impersonated-token',
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
              containsPair('Authorization', 'Bearer tpc-impersonated-token'),
            );
            expect(
              request.headers,
              containsPair('X-Goog-User-Project', 'tpc-quota'),
            );
            return Response('tpc ok', 200);
          }
          fail('Unexpected HTTP request to $url');
        }, count: 3),
        expectClose: false,
      ),
    );

    expect(c.credentials.accessToken.data, 'tpc-impersonated-token');
    expect(c.credentials.universeDomain, 's3nsapis.fr');

    final r = await c.get(Uri.https('storage.s3nsapis.fr', '/b/bucket/o/obj'));
    expect(r.statusCode, 200);
    expect(r.body, 'tpc ok');

    c.close();
  });

  test('external_account substitutes {universe_domain} in token_url and '
      'regional impersonation host', () async {
    await d.file('tpc_subject_token3.txt', 'tpc-subject-token3').create();

    await d
        .file(
          'tpc_wif_regional.json',
          json.encode({
            'type': 'external_account',
            'universe_domain': 'S3NSAPIS.FR',
            'audience': 'tpc-audience',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.{universe_domain}/v1/token',
            'service_account_impersonation_url':
                'https://eu-west9-iamcredentials.{universe_domain}/v1/projects/-/serviceAccounts/foo@bar.iam.gserviceaccount.com:generateAccessToken',
            'credential_source': {'file': d.path('tpc_subject_token3.txt')},
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('tpc_wif_regional.json')),
      'test-credentials-file',
      ['s1'],
      mockClient(
        expectAsync1((Request request) async {
          final url = request.url.toString();
          if (url == 'https://sts.s3nsapis.fr/v1/token') {
            return Response(
              jsonEncode({
                'token_type': 'Bearer',
                'access_token': 'tpc-sts-token',
                'expires_in': 3600,
              }),
              200,
              headers: jsonContentType,
            );
          }
          if (url ==
              'https://eu-west9-iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/foo%40bar.iam.gserviceaccount.com:generateAccessToken') {
            return Response(
              jsonEncode({
                'accessToken': 'regional-impersonated-token',
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

    expect(c.credentials.accessToken.data, 'regional-impersonated-token');
    expect(c.credentials.universeDomain, 's3nsapis.fr');
    c.close();
  });

  test('external_account rejects cross-universe mismatch', () async {
    await d.file('tpc_mismatch_token.txt', 'tpc-subject-token').create();

    await d
        .file(
          'tpc_mismatch.json',
          json.encode({
            'type': 'external_account',
            'audience': 'tpc-audience',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.s3nsapis.fr/v1/token',
            'service_account_impersonation_url':
                'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/foo@bar.iam.gserviceaccount.com:generateAccessToken',
            'credential_source': {'file': d.path('tpc_mismatch_token.txt')},
          }),
        )
        .create();

    await expectLater(
      fromApplicationsCredentialsFile(
        File(d.path('tpc_mismatch.json')),
        'test-credentials-file',
        ['s1'],
        mockClient(
          (request) async =>
              fail('Should not issue HTTP request to ${request.url}'),
          expectClose: false,
        ),
      ),
      throwsA(
        isA<CredentialsFileException>().having(
          (e) => e.message,
          'message',
          contains('Universe domain mismatch'),
        ),
      ),
    );
  });

  test(
    'external_account rejects non-HTTPS impersonation URL before STS exchange',
    () async {
      await d.file('http_imp_token.txt', 'token').create();
      await d
          .file(
            'http_imp.json',
            json.encode({
              'type': 'external_account',
              'audience': 'aud',
              'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
              'token_url': 'https://sts.googleapis.com/v1/token',
              'service_account_impersonation_url':
                  'http://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/foo@bar.iam.gserviceaccount.com:generateAccessToken',
              'credential_source': {'file': d.path('http_imp_token.txt')},
            }),
          )
          .create();

      await expectLater(
        fromApplicationsCredentialsFile(
          File(d.path('http_imp.json')),
          'test-credentials-file',
          ['s1'],
          mockClient(
            (request) async =>
                fail('Should not issue HTTP request to ${request.url}'),
            expectClose: false,
          ),
        ),
        throwsA(
          isArgumentError.having(
            (e) => e.message,
            'message',
            contains('https'),
          ),
        ),
      );
    },
  );

  test(
    'external_account rejects untrusted/malformed URLs and injected universe',
    () async {
      await d.file('sec_token.txt', 'token').create();
      final neverClient = mockClient(
        (request) async =>
            fail('Should not issue HTTP request to ${request.url}'),
        expectClose: false,
      );

      final badConfigs = <(String, Map<String, dynamic>, Matcher)>[
        (
          'cleartext token_url',
          {
            'type': 'external_account',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'http://sts.s3nsapis.fr/v1/token',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isA<CredentialsFileException>().having(
            (e) => e.message,
            'message',
            contains('https'),
          ),
        ),
        (
          'arbitrary non-STS token_url host',
          {
            'type': 'external_account',
            'universe_domain': 's3nsapis.fr',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://attacker.example/v1/token',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isA<CredentialsFileException>().having(
            (e) => e.message,
            'message',
            contains('STS API host'),
          ),
        ),
        (
          'multi-label regional spoof in token_url',
          {
            'type': 'external_account',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://attacker.com-sts.googleapis.com/v1/token',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isA<CredentialsFileException>().having(
            (e) => e.message,
            'message',
            contains('STS API host'),
          ),
        ),
        (
          'userinfo in token_url',
          {
            'type': 'external_account',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.s3nsapis.fr@evil.com/v1/token',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isA<CredentialsFileException>().having(
            (e) => e.message,
            'message',
            contains('userinfo'),
          ),
        ),
        (
          'injected universe_domain',
          {
            'type': 'external_account',
            'universe_domain': 'googleapis.com@evil.com',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.{universe_domain}/v1/token',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isA<CredentialsFileException>().having(
            (e) => e.message,
            'message',
            contains('Invalid universe_domain'),
          ),
        ),
        (
          'TPC universe_domain with hardcoded googleapis.com token_url',
          {
            'type': 'external_account',
            'universe_domain': 's3nsapis.fr',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.googleapis.com/v1/token',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isA<CredentialsFileException>().having(
            (e) => e.message,
            'message',
            contains('Universe domain mismatch'),
          ),
        ),
        (
          'arbitrary non-IAM impersonation host',
          {
            'type': 'external_account',
            'universe_domain': 's3nsapis.fr',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.s3nsapis.fr/v1/token',
            'service_account_impersonation_url':
                'https://attacker.example/v1/projects/-/serviceAccounts/sa@p.iam.gserviceaccount.com:generateAccessToken',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isArgumentError.having(
            (e) => e.message,
            'message',
            contains('IAM Credentials API host'),
          ),
        ),
        (
          'unanchored impersonation path prefix',
          {
            'type': 'external_account',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.googleapis.com/v1/token',
            'service_account_impersonation_url':
                'https://iamcredentials.googleapis.com/evil/v1/projects/-/serviceAccounts/sa@p.iam.gserviceaccount.com:generateAccessToken',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isArgumentError.having((e) => e.message, 'message', contains('path')),
        ),
        (
          'multi-label regional IAM spoof',
          {
            'type': 'external_account',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.googleapis.com/v1/token',
            'service_account_impersonation_url':
                'https://attacker.com-iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/sa@p.iam.gserviceaccount.com:generateAccessToken',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isArgumentError.having(
            (e) => e.message,
            'message',
            contains('IAM Credentials API host'),
          ),
        ),
        (
          'userinfo/query in impersonation URL',
          {
            'type': 'external_account',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.googleapis.com/v1/token',
            'service_account_impersonation_url':
                'https://user@iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/sa@p.iam.gserviceaccount.com:generateAccessToken?x=1',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isArgumentError.having(
            (e) => e.message,
            'message',
            contains('userinfo'),
          ),
        ),
        (
          'non-string quota_project_id',
          {
            'type': 'external_account',
            'quota_project_id': 123,
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.googleapis.com/v1/token',
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isA<CredentialsFileException>().having(
            (e) => e.message,
            'message',
            contains('quota_project_id'),
          ),
        ),
        (
          'non-string service_account_impersonation_url',
          {
            'type': 'external_account',
            'audience': 'aud',
            'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
            'token_url': 'https://sts.googleapis.com/v1/token',
            'service_account_impersonation_url': 42,
            'credential_source': {'file': d.path('sec_token.txt')},
          },
          isA<CredentialsFileException>().having(
            (e) => e.message,
            'message',
            contains('service_account_impersonation_url'),
          ),
        ),
      ];

      for (var i = 0; i < badConfigs.length; i++) {
        final (label, config, matcher) = badConfigs[i];
        final name = 'bad_ext_$i.json';
        await d.file(name, json.encode(config)).create();
        await expectLater(
          fromApplicationsCredentialsFile(
            File(d.path(name)),
            'test-credentials-file',
            ['s1'],
            neverClient,
          ),
          throwsA(matcher),
          reason: 'Case failed: $label',
        );
      }
    },
  );

  test(
    'authorized_user rejects non-default universe_domain and token_uri',
    () async {
      final neverClient = mockClient(
        (request) async =>
            fail('Should not issue HTTP request to ${request.url}'),
        expectClose: false,
      );

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
        final filename = 'bad_user_${label.replaceAll(' ', '_')}.json';
        await d
            .file(
              filename,
              json.encode({
                'client_id': 'id',
                'client_secret': 'secret',
                'refresh_token': 'refresh',
                'type': 'authorized_user',
                ...extra,
              }),
            )
            .create();

        await expectLater(
          fromApplicationsCredentialsFile(
            File(d.path(filename)),
            'test-credentials-file',
            [],
            neverClient,
          ),
          throwsA(
            isA<CredentialsFileException>().having(
              (e) => e.message,
              'message',
              contains(expectedText),
            ),
          ),
          reason: 'Case failed: $label',
        );
      }

      // Accepts explicit default googleapis.com token_uri and universe_domain.
      await d
          .file(
            'ok_user.json',
            json.encode({
              'client_id': 'id',
              'client_secret': 'secret',
              'refresh_token': 'refresh',
              'type': 'authorized_user',
              'universe_domain': 'GOOGLEAPIS.COM',
              'token_uri': 'https://oauth2.googleapis.com/token',
            }),
          )
          .create();
      final client = await fromApplicationsCredentialsFile(
        File(d.path('ok_user.json')),
        'test-credentials-file',
        [],
        mockClient(
          expectAsync1((request) async {
            expect(request.url, googleOauth2TokenEndpoint);
            return Response(
              jsonEncode({
                'token_type': 'Bearer',
                'access_token': 'atoken',
                'expires_in': 3600,
              }),
              200,
              headers: jsonContentType,
            );
          }),
        ),
      );
      expect(client.credentials.universeDomain, 'googleapis.com');
      client.close();
    },
  );
}
