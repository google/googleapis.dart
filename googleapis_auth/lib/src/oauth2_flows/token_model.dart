import 'dart:async';
import 'dart:js_interop';

import 'package:google_identity_services_web/loader.dart' as gis_loader;
import 'package:google_identity_services_web/oauth2.dart';

import '../access_credentials.dart';
import '../access_token.dart';
import '../authentication_exception.dart';
import '../utils.dart';

@JS('google.accounts.id')
external _GoogleAccountsId get _googleAccountsId;

extension type _GoogleAccountsId._(JSObject _) implements JSObject {
  external void setLogLevel(String logLevel);
}

/// Obtains [AccessCredentials] using the
/// [Google Identity Services](https://developers.google.com/identity/oauth2/web/guides/overview)
/// token model.
///
/// The returned [AccessCredentials] will *always* have a `null` value for
/// [AccessCredentials.refreshToken] and
/// [AccessCredentials.idToken].
///
/// See
/// [Choose a user authorization model](https://developers.google.com/identity/oauth2/web/guides/choose-authorization-model)
/// to understand the tradeoffs between using this function and
/// [requestAuthorizationCode].
///
/// See https://developers.google.com/identity/oauth2/web/guides/use-token-model
/// and https://developers.google.com/identity/oauth2/web/reference/js-reference
/// for more details.
Future<AccessCredentials> requestAccessCredentials({
  required String clientId,
  required Iterable<String> scopes,
  String prompt = 'select_account',
  @Deprecated('Undocumented feature. Do not include in production code.')
  String? logLevel,
}) async {
  await gis_loader.loadWebSdk();
  if (logLevel != null) {
    _googleAccountsId.setLogLevel(logLevel);
  }

  final completer = Completer<AccessCredentials>();

  void callback(TokenResponse response) {
    if (response.error != null) {
      completer.completeError(
        AuthenticationException(
          response.error!,
          errorDescription: response.error_description,
          errorUri: response.error_uri,
        ),
      );
      return;
    }

    final token = AccessToken(
      response.token_type!,
      response.access_token!,
      expiryDate(response.expires_in!),
    );

    final creds = AccessCredentials(token, null, response.scope);

    completer.complete(creds);
  }

  void errorCallback(GoogleIdentityServicesError? error) {
    if (error != null) {
      completer.completeError(
        AuthenticationException(
          error.type.toString(),
          errorDescription: error.message,
          errorUri:
              'https://developers.google.com/identity/oauth2/web/reference/js-reference#TokenClientConfig',
        ),
      );
    }
  }

  final config = TokenClientConfig(
    callback: callback,
    client_id: clientId,
    scope: scopes.toList(),
    prompt: prompt,
    error_callback: errorCallback,
  );

  final client = oauth2.initTokenClient(config);

  client.requestAccessToken();

  return completer.future;
}

/// Obtains [CodeResponse] using the
/// [Google Identity Services](https://developers.google.com/identity/oauth2/web/guides/overview)
/// code model.
///
/// See
/// [Choose a user authorization model](https://developers.google.com/identity/oauth2/web/guides/choose-authorization-model)
/// to understand the tradeoffs between using this function and
/// [requestAccessCredentials].
///
/// See https://developers.google.com/identity/oauth2/web/guides/use-code-model
/// and https://developers.google.com/identity/oauth2/web/reference/js-reference
/// for more details.
Future<CodeResponse> requestAuthorizationCode({
  required String clientId,
  required Iterable<String> scopes,
  String? state,
  String? hint,
  String? hostedDomain,
  @Deprecated('Undocumented feature. Do not include in production code.')
  String? logLevel,
}) async {
  await gis_loader.loadWebSdk();
  if (logLevel != null) {
    _googleAccountsId.setLogLevel(logLevel);
  }

  final completer = Completer<CodeResponse>();

  void callback(CodeResponse response) {
    if (response.error != null) {
      completer.completeError(
        AuthenticationException(
          response.error!,
          errorDescription: response.error_description,
          errorUri: response.error_uri,
        ),
      );
      return;
    }

    completer.complete(response);
  }

  void errorCallback(GoogleIdentityServicesError? error) {
    if (error != null) {
      completer.completeError(
        AuthenticationException(
          error.type.toString(),
          errorDescription: error.message,
          errorUri:
              'https://developers.google.com/identity/oauth2/web/reference/js-reference#TokenClientConfig',
        ),
      );
    }
  }

  final config = CodeClientConfig(
    callback: callback,
    client_id: clientId,
    scope: scopes.toList(),
    state: state,
    login_hint: hint,
    hd: hostedDomain,
    error_callback: errorCallback,
  );

  final client = oauth2.initCodeClient(config);

  client.requestCode();

  return completer.future;
}

/// Revokes all of the scopes that the user granted to the app.
///
/// A valid [accessTokenValue] is required to revoke the permission.
Future<void> revokeConsent(String accessTokenValue) {
  final completer = Completer<void>();

  void done(TokenRevocationResponse arg) {
    completer.complete();
  }

  oauth2.revoke(accessTokenValue, done);

  return completer.future;
}
