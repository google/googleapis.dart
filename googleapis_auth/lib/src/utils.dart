// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:http/http.dart' show Client, Request, StreamedResponse;
import 'package:http_parser/http_parser.dart';

import 'access_token.dart';
import 'auth_endpoints.dart';
import 'exceptions.dart';

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
///
/// See https://cloud.google.com/apis/design/glossary#universe_domain
const defaultUniverseDomain = 'googleapis.com';

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
