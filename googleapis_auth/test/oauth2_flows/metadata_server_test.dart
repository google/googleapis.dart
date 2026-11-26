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

  test('successful run', () async {
    final flow = MetadataServerAuthorizationFlow(
      mockClient(
        expectAsync1((request) {
          final url = request.url.toString();
          if (url == tokenUrl) {
            return successfulAccessToken(request);
          } else if (url == scopesUrl) {
            return successfulScopes(request);
          } else if (url == universeUrl) {
            return successfulUniverse(request);
          } else {
            fail(
              'Invalid URL $url '
              '(expected: $tokenUrl, $scopesUrl, or $universeUrl).',
            );
          }
        }, count: 3),
        expectClose: false,
      ),
    );

    final credentials = await flow.run(refresh: true);
    expect(credentials.accessToken.data, 'atok');
    expect(credentials.accessToken.type, 'Bearer');
    expect(credentials.scopes, ['s1', 's2']);
    expect(credentials.universeDomain, 'googleapis.com');
    expectExpiryOneHourFromNow(credentials.accessToken);
  });

  test('successful run with custom universe domain', () async {
    final flow = MetadataServerAuthorizationFlow(
      mockClient(
        expectAsync1((request) {
          final url = request.url.toString();
          if (url == tokenUrl) {
            return successfulAccessToken(request);
          } else if (url == scopesUrl) {
            return successfulScopes(request);
          } else if (url == universeUrl) {
            return successfulUniverse(request, body: 's3nsapis.fr\n');
          } else {
            fail('Unexpected URL $url');
          }
        }, count: 3),
        expectClose: false,
      ),
    );

    final credentials = await flow.run(refresh: true);
    expect(credentials.universeDomain, 's3nsapis.fr');
  });

  test('falls back to default universe domain on 404 or empty body', () async {
    for (final (status, body) in [(404, 'Not Found'), (200, '   ')]) {
      final flow = MetadataServerAuthorizationFlow(
        mockClient((request) {
          final url = request.url.toString();
          if (url == tokenUrl) return successfulAccessToken(request);
          if (url == scopesUrl) return successfulScopes(request);
          if (url == universeUrl) {
            return successfulUniverse(request, statusCode: status, body: body);
          }
          fail('Unexpected URL $url');
        }, expectClose: false),
      );

      final credentials = await flow.run(refresh: true);
      expect(credentials.universeDomain, 'googleapis.com');
    }
  });

  test('throws on non-404 error from universe-domain endpoint', () async {
    final flow = MetadataServerAuthorizationFlow(
      mockClient((request) {
        final url = request.url.toString();
        if (url == tokenUrl) return successfulAccessToken(request);
        if (url == scopesUrl) return successfulScopes(request);
        if (url == universeUrl) {
          return successfulUniverse(request, statusCode: 500, body: 'boom');
        }
        fail('Unexpected URL $url');
      }, expectClose: false),
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

  test('caches universe domain across runs unless refresh is true', () async {
    var universeRequests = 0;
    final flow = MetadataServerAuthorizationFlow(
      mockClient((request) {
        final url = request.url.toString();
        if (url == tokenUrl) return successfulAccessToken(request);
        if (url == scopesUrl) return successfulScopes(request);
        if (url == universeUrl) {
          universeRequests++;
          return successfulUniverse(request, body: 's3nsapis.fr');
        }
        fail('Unexpected URL $url');
      }, expectClose: false),
    );

    final first = await flow.run();
    final second = await flow.run();
    expect(first.universeDomain, 's3nsapis.fr');
    expect(second.universeDomain, 's3nsapis.fr');
    expect(universeRequests, 1);

    await flow.run(refresh: true);
    expect(universeRequests, 2);
  });

  test('throws on invalid server response', () {
    var requestNr = 0;
    final flow = MetadataServerAuthorizationFlow(
      mockClient(
        expectAsync1((request) {
          if (requestNr++ == 0) {
            return invalidAccessToken(request);
          } else {
            return successfulScopes(request);
          }
        }),
        expectClose: false,
      ),
    );
    // parseAccessToken still throws ServerRequestFailedException if keys are
    // missing
    expect(flow.run(refresh: true), throwsA(isServerRequestFailedException));
  });

  test('throws on token transport error', () {
    var requestNr = 0;
    final flow = MetadataServerAuthorizationFlow(
      mockClient(
        expectAsync1((request) {
          if (requestNr++ == 0) {
            return transportFailure.get(Uri.http('failure'));
          } else {
            return successfulScopes(request);
          }
        }),
        expectClose: false,
      ),
    );
    // getMetadataValue does not wrap custom TransportException
    expect(flow.run(refresh: true), throwsA(isTransportException));
  });

  test('throws on scopes transport error', () {
    var requestNr = 0;
    final flow = MetadataServerAuthorizationFlow(
      mockClient(
        expectAsync1((request) {
          if (requestNr++ == 0) {
            return successfulAccessToken(request);
          } else {
            return transportFailure.get(Uri.http('failure'));
          }
        }, count: 2),
        expectClose: false,
      ),
    );
    // getMetadataValue does not wrap custom TransportException
    expect(flow.run(refresh: true), throwsA(isTransportException));
  });
}
