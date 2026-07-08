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
}
