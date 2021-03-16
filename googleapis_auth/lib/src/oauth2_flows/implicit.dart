// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:html' as html;
import 'dart:js' as js;

import '../access_credentials.dart';
import '../access_token.dart';
import '../exceptions.dart';
import '../response_type.dart';
import '../utils.dart';

// This will be overridden by tests.
String gapiUrl = 'https://apis.google.com/js/client.js';

// According to the CSP3 spec a nonce must be a valid base64 string.
// https://w3c.github.io/webappsec-csp/#grammardef-base64-value
final _noncePattern = RegExp('^[\\w+\/_-]+[=]{0,2}\$');

/// This class performs the implicit browser-based oauth2 flow.
///
/// It has to be used in two steps:
///
/// 1. First call initialize() and wait until the Future completes successfully
///    - loads the 'gapi' JavaScript library into the current document
///    - wait until the library signals it is ready
///
/// 2. Call login() as often as needed.
///    - will call the 'gapi' JavaScript lib to trigger an oauth2 browser flow
///      => This might create a popup which asks the user for consent.
///    - will wait until the flow is completed (successfully or not)
///      => Completes with AccessToken or an Exception.
/// 3. Call loginHybrid() as often as needed.
///    - will call the 'gapi' JavaScript lib to trigger an oauth2 browser flow
///      => This might create a popup which asks the user for consent.
///    - will wait until the flow is completed (successfully or not)
///      => Completes with a tuple [AccessCredentials cred, String authCode]
///         or an Exception.
class ImplicitFlow {
  static const callbackTimeout = Duration(seconds: 20);

  final String _clientId;
  final List<String> _scopes;

  /// The pending result of an earlier call to [initialize], if any.
  ///
  /// There can be multiple [ImplicitFlow] objects in an application,
  /// but the gapi JS library should only ever be loaded once. If
  /// it's called again while a previous initialization is still pending,
  /// this will be returned.
  static Future<void>? _pendingInitialization;

  ImplicitFlow(this._clientId, this._scopes);

  /// Readies the flow for calls to [login] by loading the 'gapi'
  /// JavaScript library, or returning the [Future] of a pending
  /// initialization if any object has called this method already.
  Future<void> initialize() {
    if (_pendingInitialization != null) {
      return _pendingInitialization!;
    }

    final completer = Completer();

    final timeout = Timer(callbackTimeout, () {
      _pendingInitialization = null;
      completer.completeError(Exception(
          'Timed out while waiting for the gapi.auth library to load.'));
    });

    js.context['dartGapiLoaded'] = () {
      timeout.cancel();
      try {
        final gapi = _gapiAuth;
        try {
          gapi.callMethod('init', [completer.complete]);
          // ignore: avoid_catching_errors
        } on NoSuchMethodError {
          throw StateError('gapi.auth not loaded.');
        }
      } catch (error, stack) {
        _pendingInitialization = null;
        if (!completer.isCompleted) {
          completer.completeError(error, stack);
        }
      }
    };

    final script = _createScript();
    script.src = '$gapiUrl?onload=dartGapiLoaded';
    script.onError.first.then((errorEvent) {
      timeout.cancel();
      _pendingInitialization = null;
      if (!completer.isCompleted) {
        // script loading errors can still happen after timeouts
        completer.completeError(Exception('Failed to load gapi library.'));
      }
    });
    html.document.body!.append(script);

    _pendingInitialization = completer.future;
    return completer.future;
  }

  Future<LoginResult> loginHybrid(
          {bool force = false, bool immediate = false, String? loginHint}) =>
      _login(force, immediate, true, loginHint, null);

  Future<AccessCredentials> login(
          {bool force = false,
          bool immediate = false,
          String? loginHint,
          List<ResponseType>? responseTypes}) async =>
      (await _login(force, immediate, false, loginHint, responseTypes))
          .credential;

  // Completes with either credentials or a tuple of credentials and authCode.
  //  hybrid  =>  [AccessCredentials credentials, String authCode]
  // !hybrid  =>  AccessCredentials
  //
  // Alternatively, the response types can be set directly if `hybrid` is not
  // set to `true`.
  Future<LoginResult> _login(bool force, bool immediate, bool hybrid,
      String? loginHint, List<ResponseType>? responseTypes) {
    assert(hybrid != true || responseTypes?.isNotEmpty != true);

    final completer = Completer<LoginResult>();

    final gapi = _gapiAuth;

    final json = {
      'client_id': _clientId,
      'immediate': immediate,
      'approval_prompt': force ? 'force' : 'auto',
      'response_type': responseTypes?.isNotEmpty == true
          ? responseTypes!.map(_responseTypeToString).join(' ')
          : hybrid
              ? 'code token'
              : 'token',
      'scope': _scopes.join(' '),
      'access_type': hybrid ? 'offline' : 'online',
    };

    if (loginHint != null) {
      json['login_hint'] = loginHint;
    }

    gapi.callMethod('authorize', [
      js.JsObject.jsify(json),
      (js.JsObject jsTokenObject) {
        final tokenType = jsTokenObject['token_type'];
        final token = jsTokenObject['access_token'] as String?;
        final expiresInRaw = jsTokenObject['expires_in'];
        final code = jsTokenObject['code'] as String?;
        final error = jsTokenObject['error'];
        final details = jsTokenObject['details'] as String?;
        final idToken = jsTokenObject['id_token'] as String?;

        int? expiresIn;
        if (expiresInRaw is String) {
          expiresIn = int.parse(expiresInRaw);
        }
        if (error != null) {
          html.window.console.debug(jsTokenObject);
          completer.completeError(
            UserConsentException(
              'Failed to get user consent: $error.',
              details: details,
            ),
          );
        } else if (token == null ||
            expiresIn == null ||
            tokenType != 'Bearer') {
          completer.completeError(
            Exception(
                'Failed to obtain user consent. Invalid server response.'),
          );
        } else if (responseTypes?.contains(ResponseType.idToken) == true &&
            idToken?.isNotEmpty != true) {
          completer.completeError(
              Exception('Expected to get id_token, but did not.'));
        } else {
          final accessToken =
              AccessToken('Bearer', token, expiryDate(expiresIn));
          final credentials =
              AccessCredentials(accessToken, null, _scopes, idToken: idToken);

          if (hybrid) {
            if (code == null) {
              completer.completeError(
                Exception('Expected to get auth code '
                    'from server in hybrid flow, but did not.'),
              );
              return;
            }
            completer.complete(LoginResult(credentials, code: code));
          } else {
            completer.complete(LoginResult(credentials));
          }
        }
      }
    ]);

    return completer.future;
  }
}

class LoginResult {
  final AccessCredentials credential;
  final String? code;

  LoginResult(this.credential, {this.code});
}

/// Convert [responseType] to string value expected by `gapi.auth.authorize`.
String _responseTypeToString(ResponseType responseType) {
  String result;

  switch (responseType) {
    case ResponseType.code:
      result = 'code';
      break;

    case ResponseType.idToken:
      result = 'id_token';
      break;

    case ResponseType.permission:
      result = 'permission';
      break;

    case ResponseType.token:
      result = 'token';
      break;

    default:
      throw ArgumentError('Unknown response type: $responseType');
  }

  return result;
}

/// Creates a script that will run properly when strict CSP is enforced.
///
/// More specifically, the script has the correct `nonce` value set.
final html.ScriptElement Function() _createScript = (() {
  final nonce = _getNonce();
  if (nonce == null) return () => html.ScriptElement();

  return () => html.ScriptElement()..nonce = nonce;
})();

/// Returns CSP nonce, if set for any script tag.
String? _getNonce({html.Window? window}) {
  final currentWindow = window ?? html.window;
  final elements = currentWindow.document.querySelectorAll('script');
  for (final element in elements) {
    final nonceValue =
        (element as html.HtmlElement).nonce ?? element.attributes['nonce'];
    if (nonceValue != null && _noncePattern.hasMatch(nonceValue)) {
      return nonceValue;
    }
  }
  return null;
}

js.JsObject get _gapiAuth =>
    (js.context['gapi'] as js.JsObject)['auth'] as js.JsObject;
