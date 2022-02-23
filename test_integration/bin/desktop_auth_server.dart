import 'dart:collection';
import 'dart:io';

import 'package:googleapis_auth/auth_io.dart';
import 'package:googleapis_auth/src/oauth2_flows/auth_code.dart';
import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:test_integration/shared.dart';
import 'package:test_integration/test_integration.dart';

Future<void> main() async {
  await _Server.create();
}

class _Server {
  static const _redirectPath = 'redirect';
  final _cache = SplayTreeSet<CacheEntry>();
  final HttpServer _server;
  final _client = http.Client();

  final ClientId _clientId = openClientId();

  _Server(this._server);

  late final serverUri =
      Uri.http('${_server.address.host}:${_server.port}', '');

  late final serverRedirectUri =
      serverUri.replace(pathSegments: [_redirectPath]).toString();

  static Future<_Server> create() async {
    final server = await HttpServer.bind('localhost', 8080);
    // Enable content compression
    server.autoCompress = true;

    final instance = _Server(server);

    final handler = const Pipeline()
        .addMiddleware(logRequests())
        .addHandler(instance._handler);

    shelf_io.serveRequests(server, handler);

    print('Serving at ${instance.serverUri}');

    return instance;
  }

  Future<Response> _handler(Request request) async {
    print('cache size: ${_cache.length}');
    if (request.method == 'GET') {
      final path = request.url.path;
      switch (path) {
        case '':
          final entry = _nextEntry();

          final redirectUri = createAuthenticationUri(
            codeVerifier: entry.codeVerifier,
            state: entry.state,
            clientId: _clientId.identifier,
            scopes: ['https://www.googleapis.com/auth/userinfo.profile'],
            redirectUri: serverRedirectUri,
          );

          return Response.seeOther(redirectUri);

        case _redirectPath:
          final queryParams = request.url.queryParameters;

          final entries = _cache
              .where((element) => element.state == queryParams['state'])
              .toSet();

          if (entries.length != 1) {
            throw StateError('Could not find an entry for this response!');
          }

          final code = queryParams['code'];

          if (code == null) {
            throw StateError('The code query param is required, but missing!');
          }

          final entry = entries.single;

          final credentials = await obtainAccessCredentialsViaCodeExchange(
            _client,
            _clientId,
            code,
            codeVerifier: entry.codeVerifier,
            redirectUrl: serverRedirectUri,
          );

          _cache.remove(entry);

          return Response.ok(
            prettyJsonEncode(credentials),
            headers: {'Content-Type': 'application/json'},
          );
      }
    }

    return Response.notFound('Sorry!');
  }

  CacheEntry _nextEntry() {
    _purgeCache();
    final entry = CacheEntry();
    _cache.add(entry);
    return entry;
  }

  void _purgeCache() {
    CacheEntry? first;
    for (;;) {
      first = _cache.isEmpty ? null : _cache.first;
      if (first?.expired == true) {
        print('Removing old cache entry: $first');
        _cache.remove(first);
      } else {
        break;
      }
    }
  }
}

class CacheEntry extends Comparable<CacheEntry> {
  final DateTime created;
  final String codeVerifier;
  final String state;

  CacheEntry._(this.created, this.codeVerifier, this.state);

  factory CacheEntry() =>
      CacheEntry._(DateTime.now(), createCodeVerifier(), randomState());

  bool get expired =>
      DateTime.now().difference(created) > const Duration(minutes: 1);

  @override
  int compareTo(CacheEntry other) {
    var value = created.compareTo(other.created);
    if (value == 0) {
      value = codeVerifier.compareTo(other.codeVerifier);
    }
    if (value == 0) {
      value = state.compareTo(other.state);
    }
    return value;
  }
}
