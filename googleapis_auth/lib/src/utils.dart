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
