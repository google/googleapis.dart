// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

@TestOn('vm')
library;

import 'dart:async';
import 'dart:convert';

import 'package:googleapis_auth/src/oauth2_flows/metadata_server.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  const apiUrl = 'http://metadata.google.internal/computeMetadata/v1';
  const apiHeaderKey = 'Metadata-Flavor';
  const apiHeaderValue = 'Google';
  const tokenUrl = '$apiUrl/instance/service-accounts/default/token';
  const scopesUrl = '$apiUrl/instance/service-accounts/default/scopes';
  const universeUrl = '$apiUrl/universe/universe-domain';

  Future<Response> successfulAccessToken(Request request) async {
    expect(request.method, 'GET');
    expect(request.url.toString(), tokenUrl);
    expect(request.headers, containsPair(apiHeaderKey, apiHeaderValue));

    final body = jsonEncode({
      'access_token': 'atok',
      'expires_in': 3600,
      'token_type': 'Bearer',
    });
    return Response(body, 200, headers: jsonContentType);
  }

  Future<Response> invalidAccessToken(Request request) async {
    expect(request.method, 'GET');
    expect(request.url.toString(), tokenUrl);
    expect(request.headers, containsPair(apiHeaderKey, apiHeaderValue));

    final body = jsonEncode({
      // Missing 'expires_in' entry
      'access_token': 'atok',
      'token_type': 'Bearer',
    });
    return Response(body, 200, headers: jsonContentType);
  }

  Future<Response> successfulScopes(Request request) {
    expect(request.method, 'GET');
    expect(request.url.toString(), scopesUrl);
    expect(request.headers, containsPair(apiHeaderKey, apiHeaderValue));

    return Future.value(Response('s1\ns2', 200));
  }

  Future<Response> successfulUniverse(
    Request request, {
    String body = 'googleapis.com',
    int statusCode = 200,
  }) {
    expect(request.method, 'GET');
    expect(request.url.toString(), universeUrl);
    expect(request.headers, containsPair(apiHeaderKey, apiHeaderValue));

    return Future.value(Response(body, statusCode));
  }

  Client metadataMock({
    Future<Response> Function(Request)? onToken,
    Future<Response> Function(Request)? onScopes,
    Future<Response> Function(Request)? onUniverse,
    int? count,
  }) {
    Future<Response> handler(Request request) {
      final url = request.url.toString();
      if (url == tokenUrl) {
        return (onToken ?? successfulAccessToken)(request);
      }
      if (url == scopesUrl) {
        return (onScopes ?? successfulScopes)(request);
      }
      if (url == universeUrl) {
        return (onUniverse ?? successfulUniverse)(request);
      }
      fail('Unexpected URL $url');
    }

    return mockClient(
      count != null ? expectAsync1(handler, count: count) : handler,
      expectClose: false,
    );
  }

  test('successful run', () async {
    final flow = MetadataServerAuthorizationFlow(metadataMock(count: 3));

    final credentials = await flow.run(refresh: true);
    expect(credentials.accessToken.data, 'atok');
    expect(credentials.accessToken.type, 'Bearer');
    expect(credentials.scopes, ['s1', 's2']);
    expect(credentials.universeDomain, 'googleapis.com');
    expectExpiryOneHourFromNow(credentials.accessToken);
  });

  test('successful run with custom universe domain', () async {
    final flow = MetadataServerAuthorizationFlow(
      metadataMock(
        count: 3,
        onUniverse: (r) => successfulUniverse(r, body: 'S3NSAPIS.FR\n'),
      ),
    );

    final credentials = await flow.run(refresh: true);
    expect(credentials.universeDomain, 's3nsapis.fr');
  });

  test('falls back to default universe domain on 404 or empty body', () async {
    for (final (status, body) in [(404, 'Not Found'), (200, '   ')]) {
      final flow = MetadataServerAuthorizationFlow(
        metadataMock(
          count: 3,
          onUniverse: (r) =>
              successfulUniverse(r, statusCode: status, body: body),
        ),
      );

      final credentials = await flow.run(refresh: true);
      expect(credentials.universeDomain, 'googleapis.com');
    }
  });

  test('throws on non-404 error from universe-domain endpoint', () async {
    final flow = MetadataServerAuthorizationFlow(
      metadataMock(
        count: 3,
        onUniverse: (r) => successfulUniverse(r, statusCode: 500, body: 'boom'),
      ),
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
    for (final badBody in [
      'googleapis.com@evil.com',
      's3nsapis.fr/evil',
      '<html>error</html>',
    ]) {
      final flow = MetadataServerAuthorizationFlow(
        metadataMock(
          count: 3,
          onUniverse: (r) => successfulUniverse(r, body: badBody),
        ),
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
        onUniverse: (r) {
          universeRequests++;
          return successfulUniverse(r, body: 's3nsapis.fr');
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
      metadataMock(count: 1, onToken: invalidAccessToken),
    );
    await expectLater(
      flow.run(refresh: true),
      throwsA(isServerRequestFailedException),
    );
  });

  test('throws on token transport error', () async {
    final flow = MetadataServerAuthorizationFlow(
      metadataMock(
        count: 1,
        onToken: (_) => transportFailure.get(Uri.http('failure')),
      ),
    );
    await expectLater(flow.run(refresh: true), throwsA(isTransportException));
  });

  test('throws on scopes transport error', () async {
    final flow = MetadataServerAuthorizationFlow(
      metadataMock(
        count: 2,
        onScopes: (_) => transportFailure.get(Uri.http('failure')),
      ),
    );
    await expectLater(flow.run(refresh: true), throwsA(isTransportException));
  });
}
