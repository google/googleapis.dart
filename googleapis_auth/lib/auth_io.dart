// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:http/http.dart';

import 'src/access_credentials.dart';
import 'src/adc_utils.dart';
import 'src/auth_client.dart';
import 'src/auth_functions.dart';
import 'src/auth_http_utils.dart';
import 'src/client_id.dart';
import 'src/http_client_base.dart';
import 'src/metadata_server_client.dart' show clientViaMetadataServer;
import 'src/oauth2_flows/auth_code.dart';
import 'src/service_account_credentials.dart';
import 'src/typedefs.dart';

export 'googleapis_auth.dart';
export 'src/metadata_server_client.dart';
export 'src/service_account_client.dart';
export 'src/typedefs.dart';

/// Create a client using
/// [Application Default Credentials](https://cloud.google.com/docs/authentication/production).
///
/// Looks for credentials in the following order of preference:
///  1. A JSON file whose path is specified by `GOOGLE_APPLICATION_CREDENTIALS`,
///     this file typically contains [exported service account keys][svc-keys].
///  2. A JSON file created by
///     [`gcloud auth application-default login`][gcloud-login]
///     in a well-known location (`%APPDATA%/gcloud/application_default_credentials.json`
///     on Windows and `$HOME/.config/gcloud/application_default_credentials.json` on Linux/Mac).
///  3. On Google Compute Engine and App Engine Flex we fetch credentials from
///     [GCE metadata service][metadata].
///
/// [metadata]: https://cloud.google.com/compute/docs/storing-retrieving-metadata
/// [svc-keys]: https://cloud.google.com/docs/authentication/getting-started
/// [gcloud-login]: https://cloud.google.com/sdk/gcloud/reference/auth/application-default/login
Future<AutoRefreshingAuthClient> clientViaApplicationDefaultCredentials({
  required List<String> scopes,
  Client? baseClient,
}) async {
  if (baseClient == null) {
    baseClient = Client();
  } else {
    baseClient = nonClosingClient(baseClient);
  }

  // If env var specifies a file to load credentials from we'll do that.
  final credsEnv = Platform.environment['GOOGLE_APPLICATION_CREDENTIALS'];
  if (credsEnv != null && credsEnv.isNotEmpty) {
    // If env var is specific and not empty, we always try to load, even if
    // the file doesn't exist.
    return await fromApplicationsCredentialsFile(
      File(credsEnv),
      'GOOGLE_APPLICATION_CREDENTIALS',
      scopes,
      baseClient,
    );
  }

  // Attempt to use file created by `gcloud auth application-default login`
  File credFile;
  if (Platform.isWindows) {
    credFile = File.fromUri(Uri.directory(Platform.environment['APPDATA']!)
        .resolve('gcloud/application_default_credentials.json'));
  } else {
    credFile = File.fromUri(Uri.directory(Platform.environment['HOME']!)
        .resolve('.config/gcloud/application_default_credentials.json'));
  }
  // Only try to load from credFile if it exists.
  if (await credFile.exists()) {
    return await fromApplicationsCredentialsFile(
      credFile,
      '`gcloud auth application-default login`',
      scopes,
      baseClient,
    );
  }

  return await clientViaMetadataServer(baseClient: baseClient);
}

/// Obtains oauth2 credentials and returns an authenticated HTTP client.
///
/// See [obtainAccessCredentialsViaUserConsent] for specifics about the
/// arguments used for obtaining access credentials.
///
/// Once access credentials have been obtained, this function will complete
/// with an auto-refreshing HTTP client. Once the `AccessCredentials` expire
/// it will use it's refresh token (if available) to obtain new credentials.
/// See [autoRefreshingClient] for more information.
///
/// If [baseClient] is not given, one will be automatically created. It will be
/// used for making authenticated HTTP requests.
///
/// The user is responsible for closing the returned HTTP [Client].
/// Closing the returned [Client] will not close [baseClient].
Future<AutoRefreshingAuthClient> clientViaUserConsent(
    ClientId clientId, List<String> scopes, PromptUserForConsent userPrompt,
    {Client? baseClient}) async {
  var closeUnderlyingClient = false;
  if (baseClient == null) {
    baseClient = Client();
    closeUnderlyingClient = true;
  }

  final flow = AuthorizationCodeGrantServerFlow(
      clientId, scopes, baseClient, userPrompt);

  AccessCredentials credentials;

  try {
    credentials = await flow.run();
  } catch (e) {
    if (closeUnderlyingClient) {
      baseClient.close();
    }
    rethrow;
  }
  return AutoRefreshingClient(baseClient, clientId, credentials,
      closeUnderlyingClient: closeUnderlyingClient);
}

/// Obtains oauth2 credentials and returns an authenticated HTTP client.
///
/// See [obtainAccessCredentialsViaUserConsentManual] for specifics about the
/// arguments used for obtaining access credentials.
///
/// Once access credentials have been obtained, this function will complete
/// with an auto-refreshing HTTP client. Once the `AccessCredentials` expire
/// it will use it's refresh token (if available) to obtain new credentials.
/// See [autoRefreshingClient] for more information.
///
/// If [baseClient] is not given, one will be automatically created. It will be
/// used for making authenticated HTTP requests.
///
/// The user is responsible for closing the returned HTTP [Client].
/// Closing the returned [Client] will not close [baseClient].
Future<AutoRefreshingAuthClient> clientViaUserConsentManual(ClientId clientId,
    List<String> scopes, PromptUserForConsentManual userPrompt,
    {Client? baseClient}) async {
  var closeUnderlyingClient = false;
  if (baseClient == null) {
    baseClient = Client();
    closeUnderlyingClient = true;
  }

  final flow = AuthorizationCodeGrantManualFlow(
      clientId, scopes, baseClient, userPrompt);

  AccessCredentials credentials;

  try {
    credentials = await flow.run();
  } catch (e) {
    if (closeUnderlyingClient) {
      baseClient.close();
    }
    rethrow;
  }

  return AutoRefreshingClient(baseClient, clientId, credentials,
      closeUnderlyingClient: closeUnderlyingClient);
}

/// Obtain oauth2 [AccessCredentials] using the oauth2 authentication code flow.
///
/// The returned future will complete with `AccessCredentials` if the user
/// has given the application access to it's data. Otherwise the future will
/// complete with a `UserConsentException`.
///
/// In case another error occurs the returned future will complete with an
/// `Exception`.
///
/// [userPrompt] will be used for directing the user/user-agent to a URI. See
/// [PromptUserForConsent] for more information.
///
/// [client] will be used for obtaining `AccessCredentials` from an
/// authorization code.
///
/// The [ClientId] can be obtained in the Google Cloud Console.
Future<AccessCredentials> obtainAccessCredentialsViaUserConsent(
        ClientId clientId,
        List<String> scopes,
        Client client,
        PromptUserForConsent userPrompt) =>
    AuthorizationCodeGrantServerFlow(clientId, scopes, client, userPrompt)
        .run();

/// Obtain oauth2 [AccessCredentials] using the oauth2 authentication code flow.
///
/// The returned future will complete with `AccessCredentials` if the user
/// has given the application access to it's data. Otherwise the future will
/// complete with a `UserConsentException`.
///
/// In case another error occurs the returned future will complete with an
/// `Exception`.
///
/// [userPrompt] will be used for directing the user/user-agent to a URI. See
/// [PromptUserForConsentManual] for more information.
///
/// [client] will be used for obtaining `AccessCredentials` from an
/// authorization code.
///
/// The [ClientId] can be obtained in the Google Cloud Console.
Future<AccessCredentials> obtainAccessCredentialsViaUserConsentManual(
        ClientId clientId,
        List<String> scopes,
        Client client,
        PromptUserForConsentManual userPrompt) =>
    AuthorizationCodeGrantManualFlow(clientId, scopes, client, userPrompt)
        .run();

/// Obtain oauth2 [AccessCredentials] by exchanging an authorization code.
///
/// Running a hybrid oauth2 flow as described in the
/// `googleapis_auth.auth_browser` library results in a `HybridFlowResult` which
/// contains short-lived [AccessCredentials] for the client and an authorization
/// code. This authorization code needs to be transferred to the server, which
/// can exchange it against long-lived [AccessCredentials].
///
/// If the authorization code was obtained using the mentioned hybrid flow, the
/// [redirectUrl] must be `"postmessage"` (default).
///
/// If you obtained the authorization code using a different mechanism, the
/// [redirectUrl] must be the same that was used to obtain the code.
///
/// NOTE: Only the server application will know the `client secret` - which is
/// necessary to exchange an authorization code against access tokens.
///
/// NOTE: It is important to transmit the authorization code in a secure manner
/// to the server. You should use "anti-request forgery state tokens" to guard
/// against "cross site request forgery" attacks.
/// An example on how to do this can be found here:
///   https://developers.google.com/+/web/signin/server-side-flow
Future<AccessCredentials> obtainAccessCredentialsViaCodeExchange(
        Client baseClient, ClientId clientId, String code,
        {String redirectUrl = 'postmessage'}) =>
    obtainAccessCredentialsUsingCode(clientId, code, redirectUrl, baseClient);
