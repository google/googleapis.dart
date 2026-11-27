// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';

import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:googleapis_auth/src/auth_http_utils.dart';
import 'package:googleapis_auth/src/impersonated_auth_client.dart';
import 'package:googleapis_auth/src/oauth2_flows/base_flow.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

final _tomorrow = DateTime.now().toUtc().add(const Duration(days: 1));
final _yesterday = DateTime.now().toUtc().subtract(const Duration(days: 1));

AccessCredentials _credentials(
  String token,
  DateTime expiry, {
  String? refreshToken,
}) => AccessCredentials(AccessToken('Bearer', token, expiry), refreshToken, [
  's1',
]);

/// A client that fails the test if it is used.
Client get _noNetwork =>
    MockClient((request) async => fail('Unexpected request to ${request.url}'));

Future<Response> _refreshResponse(Request request) async => Response(
  jsonEncode({
    'token_type': 'Bearer',
    'access_token': 'new-token',
    'expires_in': 3600,
  }),
  200,
  headers: jsonContentType,
);

class _CountingFlow extends BaseFlow {
  int runs = 0;
  final List<AccessCredentials> results;

  _CountingFlow(this.results);

  @override
  Future<AccessCredentials> run() async => results[runs++];
}

class _CustomAuthClient extends BaseClient implements AuthClient {
  @override
  final AccessCredentials credentials;

  _CustomAuthClient(this.credentials);

  @override
  Future<StreamedResponse> send(BaseRequest request) =>
      throw UnimplementedError();
}

void main() {
  group('AuthenticatedClient', () {
    test('returns authorization header without a network call', () async {
      final client = authenticatedClient(
        _noNetwork,
        _credentials('token', _tomorrow),
      );
      expect(await client.requestHeaders(), {'authorization': 'Bearer token'});
    });

    test('adds x-goog-user-project when a quota project is set', () async {
      final client = authenticatedClient(
        _noNetwork,
        _credentials('token', _tomorrow),
        quotaProject: 'my-project',
      );
      expect(await client.requestHeaders(), {
        'authorization': 'Bearer token',
        'x-goog-user-project': 'my-project',
      });
    });

    test('returns an unmodifiable map', () async {
      final client = authenticatedClient(
        _noNetwork,
        _credentials('token', _tomorrow),
      );
      final headers = await client.requestHeaders();
      expect(() => headers['authorization'] = 'x', throwsUnsupportedError);
    });

    test('send() keeps its header names and adds x-goog-api-client', () async {
      final recording = RecordingClient();
      final client = authenticatedClient(
        recording,
        _credentials('token', _tomorrow),
        quotaProject: 'my-project',
      );
      await client.get(Uri.parse('https://example.com'));

      expect(recording.request.headers, {
        'Authorization': 'Bearer token',
        'X-Goog-User-Project': 'my-project',
        'x-goog-api-client': isNotEmpty,
      });
      final sent = recording.request.headers.map(
        (key, value) => MapEntry(key.toLowerCase(), value),
      );
      final headers = await client.requestHeaders();
      expect(headers, {
        'authorization': sent['authorization'],
        'x-goog-user-project': sent['x-goog-user-project'],
      });
    });
  });

  group('AutoRefreshingClient', () {
    test('valid token: no network call', () async {
      final client = AutoRefreshingClient(
        _noNetwork,
        const GoogleAuthEndpoints(),
        ClientId('id', 'secret'),
        _credentials('token', _tomorrow, refreshToken: 'refresh'),
        quotaProject: 'my-project',
      );
      expect(await client.requestHeaders(), {
        'authorization': 'Bearer token',
        'x-goog-user-project': 'my-project',
      });
    });

    test('expired token: refreshes once and notifies', () async {
      var refreshes = 0;
      final client = AutoRefreshingClient(
        MockClient((request) {
          refreshes++;
          return _refreshResponse(request);
        }),
        const GoogleAuthEndpoints(),
        ClientId('id', 'secret'),
        _credentials('old-token', _yesterday, refreshToken: 'refresh'),
      );
      final updates = <AccessCredentials>[];
      client.credentialUpdates.listen(updates.add);

      expect(await client.requestHeaders(), {
        'authorization': 'Bearer new-token',
      });
      expect(await client.requestHeaders(), {
        'authorization': 'Bearer new-token',
      });
      expect(refreshes, 1);
      expect(updates.single.accessToken.data, 'new-token');
      expect(client.credentials.accessToken.data, 'new-token');
    });
  });

  group('flow client', () {
    test('valid token: no refresh', () async {
      final flow = _CountingFlow([_credentials('token', _tomorrow)]);
      final client = await clientFromFlow(
        (_) => flow,
        baseClient: _noNetwork,
        quotaProject: 'my-project',
      );
      expect(await client.requestHeaders(), {
        'authorization': 'Bearer token',
        'x-goog-user-project': 'my-project',
      });
      expect(flow.runs, 1);
    });

    test('expired token: runs the flow once and notifies', () async {
      final flow = _CountingFlow([
        _credentials('old-token', _yesterday),
        _credentials('new-token', _tomorrow),
      ]);
      final client = await clientFromFlow((_) => flow, baseClient: _noNetwork);
      final updates = <AccessCredentials>[];
      client.credentialUpdates.listen(updates.add);

      final headers1 = await client.requestHeaders();
      final headers2 = await client.requestHeaders();
      expect(headers1, {'authorization': 'Bearer new-token'});
      expect(headers2, {'authorization': 'Bearer new-token'});
      expect(flow.runs, 2);
      expect(updates.single.accessToken.data, 'new-token');
    });
  });

  group('ImpersonatedAuthClient', () {
    Client iamClient(List<DateTime> expiries, void Function() onCall) =>
        MockClient((request) async {
          final expiry = expiries.removeAt(0);
          onCall();
          return Response(
            jsonEncode({
              'accessToken': 'token-${expiries.length}',
              'expireTime': expiry.toIso8601String(),
            }),
            200,
            headers: jsonContentType,
          );
        });

    AuthClient sourceClient(Client base) =>
        authenticatedClient(base, _credentials('source', _tomorrow));

    test('valid token: no network call', () async {
      var calls = 0;
      final client = await clientViaServiceAccountImpersonation(
        sourceClient: sourceClient(iamClient([_tomorrow], () => calls++)),
        targetServiceAccount: 'target@project.iam.gserviceaccount.com',
        targetScopes: ['s1'],
        baseClient: _noNetwork,
      );
      expect(calls, 1);
      expect(await client.requestHeaders(), {
        'authorization': 'Bearer token-0',
      });
      expect(calls, 1);
    });

    test('expired token: refreshes once and notifies', () async {
      var calls = 0;
      final client = await clientViaServiceAccountImpersonation(
        sourceClient: sourceClient(
          iamClient([_yesterday, _tomorrow], () => calls++),
        ),
        targetServiceAccount: 'target@project.iam.gserviceaccount.com',
        targetScopes: ['s1'],
        baseClient: _noNetwork,
      );
      final updates = <AccessCredentials>[];
      client.credentialUpdates.listen(updates.add);

      final headers1 = await client.requestHeaders();
      final headers2 = await client.requestHeaders();
      expect(headers1, {'authorization': 'Bearer token-0'});
      expect(headers2, {'authorization': 'Bearer token-0'});
      expect(calls, 2);
      expect(updates.single.accessToken.data, 'token-0');
    });
  });

  group('other AuthClient implementations', () {
    test('fall back to the current access token', () async {
      final client = _CustomAuthClient(_credentials('custom', _yesterday));
      final headers = await client.requestHeaders();
      expect(headers, {'authorization': 'Bearer custom'});
      expect(() => headers['authorization'] = 'x', throwsUnsupportedError);
    });
  });
}
