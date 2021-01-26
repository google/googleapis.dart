// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library googleapis_auth.auth;

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import 'src/auth_http_utils.dart';
import 'src/crypto/pem.dart';
import 'src/crypto/rsa.dart';
import 'src/http_client_base.dart';
import 'src/utils.dart';

/// An OAuth2 access token.
class AccessToken {
  /// The token type, usually "Bearer"
  final String type;

  /// The access token data.
  final String data;

  /// Time at which the token will be expired (UTC time)
  final DateTime expiry;

  /// [expiry] must be a UTC `DateTime`.
  AccessToken(this.type, this.data, this.expiry) {
    if (!expiry.isUtc) {
      throw ArgumentError('The expiry date must be a Utc DateTime.');
    }
  }

  bool get hasExpired => DateTime.now().toUtc().isAfter(expiry);

  @override
  String toString() => 'AccessToken(type=$type, data=$data, expiry=$expiry)';
}

/// OAuth2 Credentials.
class AccessCredentials {
  /// An access token.
  final AccessToken accessToken;

  /// A refresh token, which can be used to refresh the access credentials.
  final String? refreshToken;

  /// A JWT used in calls to Google APIs that accept an id_token param.
  final String? idToken;

  /// Scopes these credentials are valid for.
  final List<String> scopes;

  AccessCredentials(
    this.accessToken,
    this.refreshToken,
    this.scopes, {
    this.idToken,
  });
}

/// Represents the client application's credentials.
class ClientId {
  /// The identifier used to identify this application to the server.
  final String identifier;

  /// The client secret used to identify this application to the server.
  final String? secret;

  ClientId(this.identifier, this.secret);

  ClientId.serviceAccount(this.identifier) : secret = null;
}

/// Represents credentials for a service account.
class ServiceAccountCredentials {
  /// The email address of this service account.
  final String email;

  /// The clientId.
  final ClientId clientId;

  /// Private key.
  final String privateKey;

  /// Impersonated user, if any. If not impersonating any user this is `null`.
  final String? impersonatedUser;

  /// Private key as an [RSAPrivateKey].
  final RSAPrivateKey privateRSAKey;

  /// Creates a new [ServiceAccountCredentials] from JSON.
  ///
  /// [json] can be either a [Map] or a JSON map encoded as a [String].
  ///
  /// The optional named argument [impersonatedUser] is used to set the user
  /// to impersonate if impersonating a user.
  factory ServiceAccountCredentials.fromJson(json, {String? impersonatedUser}) {
    if (json is String) {
      json = jsonDecode(json);
    }
    if (json is! Map) {
      throw ArgumentError('json must be a Map or a String encoding a Map.');
    }
    final identifier = json['client_id'] as String?;
    final privateKey = json['private_key'] as String?;
    final email = json['client_email'] as String?;
    final type = json['type'];

    if (type != 'service_account') {
      throw ArgumentError(
        'The given credentials are not of type '
        'service_account (was: $type).',
      );
    }

    if (identifier == null || privateKey == null || email == null) {
      throw ArgumentError(
        'The given credentials do not contain all the '
        'fields: client_id, private_key and client_email.',
      );
    }

    final clientId = ClientId(identifier, null);
    return ServiceAccountCredentials(
      email,
      clientId,
      privateKey,
      impersonatedUser: impersonatedUser,
    );
  }

  /// Creates a new [ServiceAccountCredentials].
  ///
  /// [email] is the e-mail address of the service account.
  ///
  /// [clientId] is the client ID for the service account.
  ///
  /// [privateKey] is the base 64 encoded, unencrypted private key, including
  /// the '-----BEGIN PRIVATE KEY-----' and '-----END PRIVATE KEY-----'
  /// boundaries.
  ///
  /// The optional named argument [impersonatedUser] is used to set the user
  /// to impersonate if impersonating a user is needed.
  ServiceAccountCredentials(
    this.email,
    this.clientId,
    this.privateKey, {
    this.impersonatedUser,
  }) : privateRSAKey = keyFromString(privateKey);
}

/// A authenticated HTTP client.
abstract class AuthClient implements Client {
  /// The credentials currently used for making HTTP requests.
  AccessCredentials get credentials;
}

/// A autorefreshing, authenticated HTTP client.
abstract class AutoRefreshingAuthClient implements AuthClient {
  /// A broadcast stream of [AccessCredentials].
  ///
  /// A listener will get notified when new [AccessCredentials] were obtained.
  Stream<AccessCredentials> get credentialUpdates;
}

/// Thrown if an attempt to refresh a token failed.
class RefreshFailedException implements Exception {
  final String message;

  RefreshFailedException(this.message);

  @override
  String toString() => message;
}

/// Thrown if an attempt to make an authorized request failed.
class AccessDeniedException implements Exception {
  final String message;

  AccessDeniedException(this.message);

  @override
  String toString() => message;
}

/// Thrown if user did not give his consent.
class UserConsentException implements Exception {
  final String message;

  UserConsentException(this.message);

  @override
  String toString() => message;
}

/// Obtain an `http.Client` which automatically authenticates
/// requests using [credentials].
///
/// Note that the returned `RequestHandler` will not auto-refresh the given
/// [credentials].
///
/// The user is responsible for closing the returned HTTP [Client].
/// Closing the returned [Client] will not close [baseClient].
AuthClient authenticatedClient(
    Client baseClient, AccessCredentials credentials) {
  if (credentials.accessToken.type != 'Bearer') {
    throw ArgumentError('Only Bearer access tokens are accepted.');
  }
  return AuthenticatedClient(baseClient, credentials);
}

/// Obtain an `http.Client` which automatically refreshes [credentials]
/// before they expire. Uses [baseClient] as a base for making authenticated
/// http requests and for refreshing [credentials].
///
/// The user is responsible for closing the returned HTTP [Client].
/// Closing the returned [Client] will not close [baseClient].
AutoRefreshingAuthClient autoRefreshingClient(
    ClientId clientId, AccessCredentials credentials, Client baseClient) {
  if (credentials.accessToken.type != 'Bearer') {
    throw ArgumentError('Only Bearer access tokens are accepted.');
  }
  if (credentials.refreshToken == null) {
    throw ArgumentError('Refresh token in AccessCredentials was `null`.');
  }
  return AutoRefreshingClient(baseClient, clientId, credentials);
}

/// Tries to obtain refreshed [AccessCredentials] based on [credentials] using
/// [client].
Future<AccessCredentials> refreshCredentials(
    ClientId clientId, AccessCredentials credentials, Client client) async {
  final formValues = [
    'client_id=${Uri.encodeComponent(clientId.identifier)}',
    'client_secret=${Uri.encodeComponent(clientId.secret!)}',
    'refresh_token=${Uri.encodeComponent(credentials.refreshToken!)}',
    'grant_type=refresh_token',
  ];

  final body =
      Stream<List<int>>.fromIterable([(ascii.encode(formValues.join('&')))]);
  final request = RequestImpl('POST', _googleTokenUri, body);
  request.headers['content-type'] = 'application/x-www-form-urlencoded';

  final response = await client.send(request);
  var contentType = response.headers['content-type'];
  contentType = contentType?.toLowerCase();

  if (contentType == null ||
      (!contentType.contains('json') && !contentType.contains('javascript'))) {
    await response.stream.drain().catchError((_) {});
    throw Exception('Server responded with invalid content type: $contentType. '
        'Expected json response.');
  }

  final jsonMap = await response.stream
      .transform(ascii.decoder)
      .transform(json.decoder)
      .first as Map;

  final idToken = jsonMap['id_token'] as String?;
  final token = jsonMap['access_token'] as String?;
  final seconds = jsonMap['expires_in'];
  final tokenType = jsonMap['token_type'] as String?;
  final error = jsonMap['error'];

  if (response.statusCode != 200 && error != null) {
    throw RefreshFailedException('Refreshing attempt failed. '
        'Response was ${response.statusCode}. Error message was $error.');
  }

  if (token == null ||
      seconds is! int ||
      tokenType == null ||
      tokenType != 'Bearer') {
    throw Exception('Refresing attempt failed. '
        'Invalid server response.');
  }

  return AccessCredentials(
    AccessToken(tokenType, token, expiryDate(seconds)),
    credentials.refreshToken,
    credentials.scopes,
    idToken: idToken,
  );
}

/// Available response types that can be requested when using the implicit
/// browser login flow.
///
/// More information about these values can be found here:
/// https://developers.google.com/identity/protocols/OpenIDConnect#response-type
enum ResponseType {
  /// Requests an access code.  This triggers the basic rather than the implicit
  /// flow.
  code,

  /// Requests the user's identity token when running the implicit flow.
  idToken,

  /// Requests the user's current permissions.
  permission,

  /// Requests the user's access token when running the implicit flow.
  token,
}

final _googleTokenUri = Uri.parse('https://accounts.google.com/o/oauth2/token');
