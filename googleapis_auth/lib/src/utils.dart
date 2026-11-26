// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';

import 'package:http/http.dart' show Client, Request, StreamedResponse;
import 'package:http_parser/http_parser.dart';

import 'access_token.dart';
import 'auth_endpoints.dart';
import 'exceptions.dart';
import 'version.dart';

/// Due to differences of clock speed, network latency, etc. we
/// will shorten expiry dates by 20 seconds.
const maxExpectedTimeDiffInSeconds = 20;

/// The default universe domain for Google Cloud services.
///
/// The universe domain is the root domain for Google Cloud API endpoints.
/// The default is `googleapis.com`.
///
/// Trusted Partner Cloud (TPC) and Google Distributed Cloud (GDC) environments
/// may use a different universe domain.
const defaultUniverseDomain = 'googleapis.com';

const _dnsLabelPattern = r'[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?';

final _universeDomainRegExp = RegExp(
  '^$_dnsLabelPattern(?:\\.$_dnsLabelPattern)+\$',
);

final _regionalIamHostRegExp = RegExp(
  '^$_dnsLabelPattern-iamcredentials\\.(.+)\$',
);

final _pscIamHostRegExp = RegExp(
  '^iamcredentials-$_dnsLabelPattern\\.p\\.(.+)\$',
);

final _regionalStsHostRegExp = RegExp('^$_dnsLabelPattern-sts\\.(.+)\$');

final _pscStsHostRegExp = RegExp('^sts-$_dnsLabelPattern\\.p\\.(.+)\$');

final _repPrefixRegExp = RegExp('^$_dnsLabelPattern\\.rep\\.(.+)\$');

/// Returns the normalized (lowercased) DNS hostname for [universeDomain], or
/// `null` if [universeDomain] is not a valid DNS domain name.
String? tryNormalizeUniverseDomain(String universeDomain) {
  final normalized = universeDomain.toLowerCase();
  if (normalized.length > 253 || !_universeDomainRegExp.hasMatch(normalized)) {
    return null;
  }
  return normalized;
}

/// Normalizes and validates [universeDomain].
///
/// Returns [defaultUniverseDomain] when [universeDomain] is `null` or empty.
/// Lowercases valid DNS hostnames and throws [ArgumentError] for whitespace or
/// malformed domain names.
String normalizeUniverseDomain(
  String? universeDomain, {
  String name = 'universeDomain',
}) {
  if (universeDomain == null || universeDomain.isEmpty) {
    return defaultUniverseDomain;
  }
  final normalized = tryNormalizeUniverseDomain(universeDomain);
  if (normalized == null) {
    throw ArgumentError.value(
      universeDomain,
      name,
      'Invalid universe domain: must be a valid DNS domain name.',
    );
  }
  return normalized;
}

/// Whether [host] refers to a loopback address.
bool isLoopbackHost(String host) {
  final lower = host.toLowerCase();
  return lower == 'localhost' || lower == '127.0.0.1' || lower == '::1';
}

/// Validates an OAuth 2.0 or STS token endpoint [uri].
///
/// Requires `https` (or `http` for loopback hosts), non-empty host, no
/// userinfo, and no fragment.
Uri validateTokenUri(Uri uri, {String name = 'tokenUri'}) {
  if (!uri.hasScheme || uri.host.isEmpty) {
    throw ArgumentError.value(
      uri,
      name,
      'Invalid $name: must be a valid absolute URI.',
    );
  }
  if (uri.userInfo.isNotEmpty || uri.hasFragment) {
    throw ArgumentError.value(
      uri,
      name,
      'Invalid $name: must not contain userinfo or a fragment.',
    );
  }
  if (uri.scheme != 'https' &&
      !(uri.scheme == 'http' && isLoopbackHost(uri.host))) {
    throw ArgumentError.value(
      uri,
      name,
      'Invalid $name: must use https (or http for localhost).',
    );
  }
  return uri;
}

String? _stripEndpointModifiers(String candidate) {
  var result = candidate;
  if (result.startsWith('mtls.')) {
    result = result.substring('mtls.'.length);
    final repMatch = _repPrefixRegExp.firstMatch(result);
    if (repMatch != null) {
      result = repMatch.group(1)!;
    }
  } else {
    final repMatch = _repPrefixRegExp.firstMatch(result);
    if (repMatch != null) {
      result = repMatch.group(1)!;
      if (result.startsWith('mtls.')) {
        result = result.substring('mtls.'.length);
      }
    }
  }
  return tryNormalizeUniverseDomain(result);
}

/// Extracts and validates the universe domain from an IAM Credentials API host
/// (`iamcredentials.<universe>`, `<region>-iamcredentials.<universe>`,
/// `iamcredentials.mtls.<universe>`, `iamcredentials.<region>.rep.<universe>`,
/// or Private Service Connect `iamcredentials-<psc>.p.<universe>`).
///
/// Returns `null` if [host] is not a recognized IAM Credentials API host.
String? universeDomainFromIamHost(String host) {
  final lower = host.toLowerCase();
  final candidate = lower.startsWith('iamcredentials.')
      ? lower.substring('iamcredentials.'.length)
      : (_regionalIamHostRegExp.firstMatch(lower) ??
                _pscIamHostRegExp.firstMatch(lower))
            ?.group(1);
  return candidate == null ? null : _stripEndpointModifiers(candidate);
}

/// Extracts and validates the universe domain from an STS API host
/// (`sts.<universe>`, `<region>-sts.<universe>`, `sts.mtls.<universe>`,
/// `sts.<region>.rep.<universe>`, or Private Service Connect
/// `sts-<psc>.p.<universe>`).
///
/// Returns `null` if [host] is not a recognized STS API host.
String? universeDomainFromStsHost(String host) {
  final lower = host.toLowerCase();
  final candidate = lower.startsWith('sts.')
      ? lower.substring('sts.'.length)
      : (_regionalStsHostRegExp.firstMatch(lower) ??
                _pscStsHostRegExp.firstMatch(lower))
            ?.group(1);
  return candidate == null ? null : _stripEndpointModifiers(candidate);
}

/// Validates and normalizes an IAM Credentials API base [endpoint] URL for
/// [expectedUniverse].
///
/// Requires `https` (or `http` for loopback hosts), non-empty host, no
/// userinfo, query, or fragment, and an empty or `/` path. When
/// [expectedUniverse] is non-null, rejects recognized IAM hosts belonging to a
/// different universe.
String validateIamEndpoint(
  String endpoint,
  String? expectedUniverse, {
  String name = 'endpoint',
}) {
  final uri = Uri.tryParse(endpoint);
  if (uri == null || !uri.hasScheme || uri.host.isEmpty) {
    throw ArgumentError.value(
      endpoint,
      name,
      'Invalid $name: must be a valid absolute URL.',
    );
  }
  if (uri.userInfo.isNotEmpty || uri.hasQuery || uri.hasFragment) {
    throw ArgumentError.value(
      endpoint,
      name,
      'Invalid $name: must not contain userinfo, query, or fragment.',
    );
  }
  if (uri.path.isNotEmpty && uri.path != '/') {
    throw ArgumentError.value(
      endpoint,
      name,
      'Invalid $name: must be a base origin URL without a path.',
    );
  }
  if (uri.scheme != 'https' &&
      !(uri.scheme == 'http' && isLoopbackHost(uri.host))) {
    throw ArgumentError.value(
      endpoint,
      name,
      'Invalid $name: must use https (or http for localhost).',
    );
  }
  final endpointUniverse = universeDomainFromIamHost(uri.host);
  if (expectedUniverse != null &&
      endpointUniverse != null &&
      endpointUniverse != expectedUniverse) {
    throw ArgumentError.value(
      endpoint,
      name,
      'Endpoint universe "$endpointUniverse" does not match credential '
      'universe "$expectedUniverse".',
    );
  }
  return uri.origin;
}

/// Validates that [authEndpoints] is compatible with [universeDomain].
///
/// Rejects [GoogleAuthEndpoints] (`oauth2.googleapis.com`) when
/// [universeDomain] is non-default to prevent leaking credentials across
/// universes.
void validateAuthEndpointsForUniverse(
  AuthEndpoints authEndpoints,
  String universeDomain,
) {
  if (universeDomain != defaultUniverseDomain &&
      authEndpoints is GoogleAuthEndpoints) {
    throw ArgumentError.value(
      authEndpoints,
      'authEndpoints',
      'Cannot use default GoogleAuthEndpoints (oauth2.googleapis.com) with '
          'non-default universe domain "$universeDomain". Provide a custom '
          'AuthEndpoints implementation.',
    );
  }
}

AccessToken parseAccessToken(Map<String, dynamic> jsonMap) => switch (jsonMap) {
  {
    'token_type': 'Bearer',
    'access_token': final String accessToken,
    'expires_in': final int expiresIn,
  } =>
    AccessToken('Bearer', accessToken, expiryDate(expiresIn)),
  _ => throw ServerRequestFailedException(
    'Failed to exchange authorization code. Invalid server response.',
    responseContent: jsonMap,
  ),
};

/// Constructs a [DateTime] which is [seconds] seconds from now with
/// an offset of [maxExpectedTimeDiffInSeconds]. Result is UTC time.
DateTime expiryDate(int seconds) => DateTime.now().toUtc().add(
  Duration(seconds: seconds - maxExpectedTimeDiffInSeconds),
);

Future<Map<String, dynamic>> _readJsonMapFromResponse(
  StreamedResponse response,
) async {
  await _expectJsonResponse(response);

  Object? jsonValue;

  final bytes = await response.stream.toBytes();

  late String string;
  try {
    string = utf8.decode(bytes);
  } on FormatException catch (e) {
    throw ServerRequestFailedException(
      'The response was not valid UTF-8. '
      '$e',
      statusCode: response.statusCode,
      responseContent: bytes,
    );
  }

  try {
    jsonValue = jsonDecode(string);
  } on FormatException catch (e) {
    throw ServerRequestFailedException(
      'Could not decode the response as JSON. '
      '$e',
      statusCode: response.statusCode,
      responseContent: string,
    );
  }

  if (jsonValue is! Map<String, dynamic>) {
    throw ServerRequestFailedException(
      'The returned JSON response was not a Map.',
      statusCode: response.statusCode,
      responseContent: jsonValue,
    );
  }

  return jsonValue;
}

extension ClientExtensions on Client {
  Future<Map<String, dynamic>> requestJson(
    String method,
    Uri url,
    String errorHeader, {
    Map<String, String>? headers,
    Object? body,
  }) async {
    final request = Request(method, url);

    if (headers != null) {
      request.headers.addAll(headers);
    }
    addXGoogApiClientHeader(request.headers);
    switch (body) {
      case null:
        break;
      case final String body:
        request.body = body;
      case final List<int> body:
        request.bodyBytes = body;
      case final Map<String, String> body:
        request.bodyFields = body;
      case _:
        throw ArgumentError.value(body, 'body', 'Unsupported body type.');
    }

    final response = await send(request);
    final jsonMap = await _readJsonMapFromResponse(response);

    if (response.statusCode != 200) {
      final error = _errorStringFromJsonResponse(jsonMap);
      final message = [errorHeader, ?error].join(' ');
      throw ServerRequestFailedException(
        message,
        statusCode: response.statusCode,
        responseContent: jsonMap,
      );
    }

    return jsonMap;
  }

  Future<Map<String, dynamic>> oauthTokenRequest(
    Map<String, String> postValues, {
    required AuthEndpoints authEndpoints,
  }) async => requestJson(
    'POST',
    authEndpoints.tokenEndpoint,
    'Failed to obtain access credentials.',
    body: postValues,
  );
}

/// Returns an error string for [json] if it contains error data in keys
/// `error` and `error_description`.
///
/// Otherwise, returns `null`.
String? _errorStringFromJsonResponse(Map<String, dynamic> json) {
  final error = json['error'];
  final values = [
    if (error != null) 'Error: $error',
    json['error_description'],
  ].where((element) => element != null).join(' ');
  if (values.isEmpty) return null;
  return values;
}

Future<void> _expectJsonResponse(StreamedResponse response) async {
  final contentType = response.headers['content-type'];

  if (!_isJson(contentType)) {
    String? body;
    try {
      body = await response.stream.bytesToString();
    } catch (_) {
      /// We're already going to throw below
    }

    final message = contentType == null
        ? 'Server responded without a content type header.'
        : 'Server responded with invalid content type: $contentType. ';

    throw ServerRequestFailedException(
      '$message Expected a JSON response.',
      statusCode: response.statusCode,
      responseContent: body,
    );
  }
}

/// Follows https://mimesniff.spec.whatwg.org/#json-mime-type
bool _isJson(String? contentType) {
  if (contentType == null) return false;
  final mediaType = MediaType.parse(contentType);
  if (mediaType.mimeType == 'application/json') return true;
  if (mediaType.mimeType == 'text/json') return true;
  return mediaType.subtype.endsWith('+json');
}
