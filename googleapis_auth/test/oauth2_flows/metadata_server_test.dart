// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

@TestOn('vm')
library;

import 'dart:async';

import 'package:googleapis_auth/src/oauth2_flows/metadata_server.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  const apiUrl = 'http://metadata.google.internal/computeMetadata/v1';
  const tokenUrl = '$apiUrl/instance/service-accounts/default/token';
  const scopesUrl = '$apiUrl/instance/service-accounts/default/scopes';
  const universeUrl = '$apiUrl/universe/universe-domain';

  void expectMetadataRequest(Request request) {
    expect(request.method, 'GET');
    expect(request.headers, containsPair('Metadata-Flavor', 'Google'));
  }

  Client metadataMock({
    FutureOr<Response> Function(Request)? onToken,
    FutureOr<Response> Function(Request)? onScopes,
    FutureOr<Response> Function(Request)? onUniverse,
    int? count,
  }) => routeMockClient({
    tokenUrl: (r) {
      expectMetadataRequest(r);
      return onToken != null ? onToken(r) : oauthTokenResponse(token: 'atok');
    },
    scopesUrl: (r) {
      expectMetadataRequest(r);
      return onScopes != null ? onScopes(r) : Response('s1\ns2', 200);
    },
    universeUrl: (r) {
      expectMetadataRequest(r);
      return onUniverse != null
          ? onUniverse(r)
          : Response('googleapis.com', 200);
    },
  }, count: count);

  test('successful run', () async {
    final flow = MetadataServerAuthorizationFlow(metadataMock(count: 3));

    final credentials = await flow.run(refresh: true);
    expect(credentials.accessToken.data, 'atok');
    expect(credentials.accessToken.type, 'Bearer');
    expect(credentials.scopes, ['s1', 's2']);
    expect(credentials.universeDomain, 'googleapis.com');
    expectExpiryOneHourFromNow(credentials.accessToken);
  });

  test(
    'resolves custom universe domain and falls back on 404 or empty',
    () async {
      for (final (status, body, expected) in [
        (200, 'S3NSAPIS.FR\n', 's3nsapis.fr'),
        (404, 'Not Found', 'googleapis.com'),
        (200, '   ', 'googleapis.com'),
      ]) {
        final flow = MetadataServerAuthorizationFlow(
          metadataMock(count: 3, onUniverse: (_) => Response(body, status)),
        );
        final credentials = await flow.run(refresh: true);
        expect(credentials.universeDomain, expected);
      }
    },
  );

  test('throws on non-404 error from universe-domain endpoint', () async {
    final flow = MetadataServerAuthorizationFlow(
      metadataMock(count: 3, onUniverse: (_) => Response('boom', 500)),
    );

    await expectLater(
      flow.run(refresh: true),
      throwsA(
        isServerRequestFailedException.having(
          (e) => e.statusCode,
          'statusCode',
          500,
        ),
      ),
    );
  });

  test('rejects malformed universe domain body from metadata server', () async {
    for (final badBody in ['googleapis.com@evil.com', '<html>error</html>']) {
      final flow = MetadataServerAuthorizationFlow(
        metadataMock(count: 3, onUniverse: (_) => Response(badBody, 200)),
      );
      await expectLater(
        flow.run(refresh: true),
        throwsA(
          isServerRequestFailedException.having(
            (e) => e.message,
            'message',
            contains('invalid universe domain'),
          ),
        ),
        reason: 'Should reject "$badBody"',
      );
    }
  });

  test('caches universe domain across runs unless refresh is true', () async {
    var universeRequests = 0;
    final flow = MetadataServerAuthorizationFlow(
      metadataMock(
        onUniverse: (_) {
          universeRequests++;
          return Response('s3nsapis.fr', 200);
        },
      ),
    );

    final first = await flow.run();
    final second = await flow.run();
    expect(first.universeDomain, 's3nsapis.fr');
    expect(second.universeDomain, 's3nsapis.fr');
    expect(universeRequests, 1);

    await flow.run(refresh: true);
    expect(universeRequests, 2);
  });

  test('throws on invalid server response', () async {
    final flow = MetadataServerAuthorizationFlow(
      metadataMock(
        count: 1,
        onToken: (_) => jsonResponse({
          // Missing 'expires_in' entry
          'access_token': 'atok',
          'token_type': 'Bearer',
        }),
      ),
    );
    await expectLater(
      flow.run(refresh: true),
      throwsA(isServerRequestFailedException),
    );
  });

  test('throws on token transport error', () async {
    final flow = MetadataServerAuthorizationFlow(
      metadataMock(count: 1, onToken: (_) => throw TransportException()),
    );
    await expectLater(flow.run(refresh: true), throwsA(isTransportException));
  });

  test('throws on scopes transport error', () async {
    final flow = MetadataServerAuthorizationFlow(
      metadataMock(count: 2, onScopes: (_) => throw TransportException()),
    );
    await expectLater(flow.run(refresh: true), throwsA(isTransportException));
  });

  test('times out if universe-domain endpoint stalls', () async {
    final flow = MetadataServerAuthorizationFlow(
      metadataMock(count: 3, onUniverse: (_) => Completer<Response>().future),
      universeDomainTimeout: const Duration(milliseconds: 20),
    );
    await expectLater(
      flow.run(refresh: true),
      throwsA(isA<TimeoutException>()),
    );
  });
}
