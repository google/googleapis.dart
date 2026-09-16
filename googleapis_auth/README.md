Provides support for obtaining OAuth2 credentials to access Google APIs.

This package also provides convenience functionality for:

- obtaining authenticated HTTP clients
- automatically refreshing OAuth2 credentials

> [!WARNING]
> Do _**NOT**_ use this package (`package:googleapis_auth`) with a
> [Flutter](https://flutter.dev/) application.
>
> Use
> [package:extension_google_sign_in_as_googleapis_auth](https://pub.dev/packages/extension_google_sign_in_as_googleapis_auth)
> instead. The Flutter walkthrough is
> [Google APIs](https://docs.flutter.dev/data-and-backend/google-apis).

### Using this package

Using this package requires creating a Google Cloud project and obtaining
application credentials for the specific application type. The steps required
are:

- Create a Google Cloud project in the
  [Google Cloud Console](https://console.cloud.google.com/)
- Enable every API the application will call under
  **APIs & Services > Library**
- Create credentials under **APIs & Services > Credentials**
  ([Credentials](https://console.cloud.google.com/apis/credentials))
- Use the `googleapis_auth` package to obtain access credentials / obtain an
  authenticated HTTP client.

There is no **Installed application > Other** option in the current console;
choose **Desktop app** for a Dart VM or command-line application.

**Desktop app** and **Web application** clients are issued a client secret;
`ClientId.secret` is optional because some client types and providers omit it.
**Android** and **iOS** clients are issued only a client ID and are not usable
with this package's user-consent flows. Flutter applications should use
[package:extension_google_sign_in_as_googleapis_auth](https://pub.dev/packages/extension_google_sign_in_as_googleapis_auth)
instead, as described in the
[Flutter Google APIs guide](https://docs.flutter.dev/data-and-backend/google-apis).

Depending on the application type, there are different ways to achieve the third
and fourth step. The following is a list of supported OAuth2 flows with a
description of these two steps.

#### Client-side Web Application

For client-side only web applications create an OAuth client ID under
**APIs & Services > Credentials > Create credentials > OAuth client ID**.
Choose **Web application**. For client-side only applications, no
`Redirect URIs` are necessary. The `Authorized JavaScript origins` setting must
be set to all URLs on which your application will be served (e.g.
http://localhost:8080 for local testing).

After the Client ID has been created, you can obtain access credentials via

```dart
import 'package:googleapis_auth/auth_browser.dart';

// Initialize the browser oauth2 flow functionality then use it to obtain
// credentials.
Future<AccessCredentials> obtainCredentials() => requestAccessCredentials(
      clientId: '....apps.googleusercontent.com',
      scopes: ['scope1', 'scope2'],
    );
```

or obtain an authenticated HTTP client via

```dart
import 'package:googleapis_auth/auth_browser.dart';
import 'package:http/http.dart' as http;

Future<AuthClient> obtainClient() async {
  final credentials = await requestAccessCredentials(
    clientId: '....apps.googleusercontent.com',
    scopes: ['scope1', 'scope2'],
  );

  return authenticatedClient(http.Client(), credentials);
}
```

#### Installed application / Desktop

For a Dart command-line or other installed app, create an OAuth client ID and
choose **Desktop app**. The console shows both a client ID and a client secret.
Use them with `ClientId` and the user-consent helpers in
`package:googleapis_auth/auth_io.dart` (the flow listens on localhost for the
redirect).

```dart
import 'package:googleapis_auth/auth_io.dart';

Future<AuthClient> obtainAuthenticatedClient() async {
  final clientId = ClientId(
    '....apps.googleusercontent.com',
    '....',
  );
  final client = await clientViaUserConsent(
    clientId,
    ['scope1', 'scope2'],
    (url) {
      print('Please go to the following URL and grant access:');
      print('  => $url');
      print('');
    },
  );
  return client; // Remember to close the client when you are finished with it.
}
```

#### Autonomous Application / Service Account

If an application wants to act autonomously and access e.g. data from a Google
Cloud Project, then a Service Account can be created. In this case no user
authorization is involved.

Create a service account under **IAM & Admin > Service accounts**, then add a
JSON key (**Keys > Add key > Create new key > JSON**). That JSON document
contains a private RSA key used for obtaining access credentials. Service
accounts are not created from the OAuth client ID application-type list.

After the service account was created, you can obtain access credentials via

```dart
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;

// Use service account credentials to obtain oauth credentials.
Future<AccessCredentials> obtainCredentials() async {
  final accountCredentials = ServiceAccountCredentials.fromJson({
    'private_key_id': '<please fill in>',
    'private_key': '<please fill in>',
    'client_email': '<please fill in>@developer.gserviceaccount.com',
    'client_id': '<please fill in>.apps.googleusercontent.com',
    'type': 'service_account'
  });
  final scopes = ['scope1', 'scope2'];

  final client = http.Client();
  final credentials = await obtainAccessCredentialsViaServiceAccount(
          accountCredentials, scopes, client);

  client.close();
  return credentials;
}
```

or an authenticated HTTP client via

```dart
import 'package:googleapis_auth/auth_io.dart';

// Use service account credentials to get an authenticated and auto refreshing
// client.
Future<AuthClient> obtainAuthenticatedClient() async {
  final accountCredentials = ServiceAccountCredentials.fromJson({
    'private_key_id': '<please fill in>',
    'private_key': '<please fill in>',
    'client_email': '<please fill in>@developer.gserviceaccount.com',
    'client_id': '<please fill in>.apps.googleusercontent.com',
    'type': 'service_account'
  });
  final scopes = ['scope1'];

  final AuthClient client =
  await clientViaServiceAccount(accountCredentials, scopes);

  return client; // Remember to close the client when you are finished with it.
}
```

The authenticated HTTP client can now access APIs.

##### Impersonation

For some APIs the use of a service account also requires to impersonate a user.
To support that the `ServiceAccountCredentials` constructors have an optional
argument `impersonatedUser` to specify the user to impersonate.

One example of this are the Google Apps APIs. See
[Perform Google Apps Domain-Wide Delegation of Authority](https://developers.google.com/admin-sdk/directory/v1/guides/delegation)
for information on the additional security configuration required to enable this
for a service account.

#### Autonomous Application / Compute Engine using metadata service

If an application wants to act autonomously and access e.g. data from a Google
Cloud Project, then a Service Account can be used. In case the application is
running on a ComputeEngine VM it is possible to start a VM with a set of scopes
the VM is allowed to use. See the
[documentation](https://cloud.google.com/compute/docs/access/create-enable-service-accounts-for-instances#using)
for further information.

Here is an example of using the metadata service for obtaining access
credentials on a ComputeEngine VM.

```dart
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;

// Use the metadata service to obtain oauth credentials.
Future<AccessCredentials> obtainCredentials() async {
  final client = http.Client();

  final credentials =
  await obtainAccessCredentialsViaMetadataServer(client);

  client.close();
  return credentials;
}
```

or an authenticated HTTP client via

```dart
import 'package:googleapis_auth/auth_io.dart';

// Use the metadata service to get an authenticated and auto refreshing client.
Future<AuthClient> obtainAuthenticatedClient() async {
  final AuthClient client = await clientViaMetadataServer();

  return client; // Remember to close the client when you are finished with it.
}
```

The authenticated HTTP client can now access APIs.

#### Accessing Public Data with API Key

It is possible to access some APIs by just using an API key without OAuth2.

Create an API key under **APIs & Services > Credentials > Create credentials >
API key**. Restrict it afterwards: HTTP referrers for browser apps, or IP
addresses for server apps. There is no separate "Public API access" section.

Note that the ApiKey is used for quota and billing purposes and should not be
disclosed to third parties.

Here is an example of getting an HTTP client which uses an API key for making
HTTP requests.

```dart
import 'package:googleapis_auth/auth_io.dart';

var client = clientViaApiKey('<api-key-from-devconsole>');
// [client] can now be used to make REST calls to Google APIs.

...

client.close();
```

### Using a non-Google authentication provider

This package is designed to work with Google's OAuth flow, but it can be used
with other OAuth providers as well. To do this, you need to subclass
`AuthEndpoints` and provide authorization and token uris. For example:

```dart
import 'package:googleapis_auth/auth_io.dart';

class MicrosoftAuthEndpoints extends AuthEndpoints {
  @override
  Uri get authorizationEndpoint =>
      Uri.https('login.microsoftonline.com', 'common/oauth2/v2.0/authorize');

  @override
  Uri get tokenEndpoint =>
      Uri.https('login.microsoftonline.com', 'common/oauth2/v2.0/token');
}
```

This can then be used to obtain credentials:

```dart
final clientId = ClientId('my-client-id', 'my-client-secret');
final credentials = await obtainAccessCredentialsViaUserConsent(
  clientId,
  ['scope1', 'scope2'],
  client,
  (url) {
    print('Please go to the following URL and grant access:');
    print('  => $url');
    print('');
  },
  authEndpoints: MicrosoftAuthEndpoints(),
);
```

### More information

More information can be obtained from official Google Developers documentation:

- [OAuth2 to Access Google APIs](https://developers.google.com/identity/protocols/oauth2)
- [OAuth2 Playground](https://developers.google.com/oauthplayground/)
