// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:googleapis_auth/src/auth_http_utils.dart';
import 'package:googleapis_auth/src/http_client_base.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

class DelegatingClientImpl extends DelegatingClient {
  DelegatingClientImpl(super.base, {required super.closeUnderlyingClient});

  @override
  Future<StreamedResponse> send(BaseRequest request) =>
      throw UnsupportedError('Not supported');
}

final _defaultResponse = Response('', 500);

Future<Response> _defaultResponseHandler(Request _) async => _defaultResponse;

void main() {
  group('DelegatingClient', () {
    test('not-close-underlying-client', () {
      final mock = mockClient(_defaultResponseHandler, expectClose: false);
      DelegatingClientImpl(mock, closeUnderlyingClient: false).close();
    });

    test('close-underlying-client', () {
      final mock = mockClient(_defaultResponseHandler);
      DelegatingClientImpl(mock, closeUnderlyingClient: true).close();
    });

    test('close-several-times throws StateError', () {
      final mock = mockClient(_defaultResponseHandler);
      final delegate = DelegatingClientImpl(mock, closeUnderlyingClient: true);
      delegate.close();
      expect(delegate.close, throwsStateError);
    });
  });

  group('RefCountedClient', () {
    test('not-close-underlying-client', () {
      final mock = mockClient(_defaultResponseHandler, expectClose: false);
      final client = RefCountedClient(mock, initialRefCount: 3);
      client.close();
      client.close();
    });

    test('close-underlying-client', () {
      final mock = mockClient(_defaultResponseHandler);
      final client = RefCountedClient(mock, initialRefCount: 3);
      client.close();
      client.close();
      client.close();
    });

    test('acquire-release', () {
      final mock = mockClient(_defaultResponseHandler);
      final client = RefCountedClient(mock);
      client.acquire();
      client.release();
      client.acquire();
      client.release();
      client.release();
    });

    test('close-several-times throws StateError', () {
      final mock = mockClient(_defaultResponseHandler);
      final client = RefCountedClient(mock);
      client.close();
      expect(client.close, throwsStateError);
    });
  });

  group('ApiKeyClient', () {
    const key = 'foo%?bar';
    final keyEncoded = 'key=${Uri.encodeQueryComponent(key)}';

    RequestImpl request(String url) => RequestImpl('GET', Uri.parse(url));
    Future<Response> responseF() =>
        Future<Response>.value(Response.bytes([], 200));

    test('no-query-string adds key', () {
      final mock = mockClient((Request request) {
        expect('${request.url}', 'http://localhost/abc?$keyEncoded');
        return responseF();
      });

      final client = ApiKeyClient(mock, key);
      expect(client.send(request('http://localhost/abc')), completes);
      client.close();
    });

    test('with-query-string adds key', () {
      final mock = mockClient((Request request) {
        expect('${request.url}', 'http://localhost/abc?x&$keyEncoded');
        return responseF();
      });

      final client = ApiKeyClient(mock, key);
      expect(client.send(request('http://localhost/abc?x')), completes);
      client.close();
    });

    test('with-existing-key throws ArgumentError', () {
      final mock = mockClient(expectAsync1(_defaultResponseHandler, count: 0));

      final client = ApiKeyClient(mock, key);
      expect(
        client.send(request('http://localhost/abc?key=a')),
        throwsArgumentError,
      );
      client.close();
    });
  });

  test('nonClosingClient does not close underlying client', () {
    final mock = mockClient(_defaultResponseHandler, expectClose: false);
    nonClosingClient(mock).close();
  });
}
