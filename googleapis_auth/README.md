Provides support for obtaining OAuth 2.0 credentials and authenticated HTTP
clients to access Google APIs.

This package also provides convenience functionality for automatically
refreshing OAuth 2.0 credentials.

> [!WARNING] Do _**NOT**_ use this package (`package:googleapis_auth`) with a
> [Flutter](https://flutter.dev/) application.
>
> Use
> [package:extension_google_sign_in_as_googleapis_auth](https://pub.dev/packages/extension_google_sign_in_as_googleapis_auth)
> instead. The Flutter walkthrough is
> [Google APIs](https://docs.flutter.dev/data-and-backend/google-apis).

## Getting Credentials

Using this package requires creating a Google Cloud project and obtaining
application credentials for the specific application type.

1. Create a Google Cloud project in the
   [Google Cloud Console](https://console.cloud.google.com/).
2. Enable every API your application will call under **APIs & Services >
   Library**.
3. Create credentials under **APIs & Services > Credentials**
   ([Credentials](https://console.cloud.google.com/apis/credentials)).

The authentication flow you choose depends on your application type.

### Application Default Credentials (ADC)

If you are building a server-side application running on Google Cloud (Compute
Engine, App Engine, Cloud Run) or testing locally with the Google Cloud CLI
(`gcloud auth application-default login`), use Application Default Credentials
(ADC).

This transparently falls back to the Compute Engine metadata server when running
on GCP, or uses the `GOOGLE_APPLICATION_CREDENTIALS` environment variable if
set.

```dart
import 'package:googleapis_auth/auth_io.dart';

Future<void> main() async {
  final client = await clientViaApplicationDefaultCredentials(
    scopes: ['https://www.googleapis.com/auth/cloud-platform'],
  );

  // The authenticated HTTP client can now access APIs.
  // ...

  // Remember to close the client when you are finished with it.
  client.close();
}
```

### Service Account

If you want your application to act autonomously and access data, you can
directly use a Service Account. Create a service account under **IAM & Admin >
Service accounts**, then add a JSON key (**Keys > Add key > Create new key >
JSON**). Service accounts are not created from the OAuth client ID
application-type list.

```dart
import 'dart:io';

import 'package:googleapis_auth/auth_io.dart';

Future<void> main() async {
  final jsonCredentials = File('path/to/credentials.json').readAsStringSync();
  final accountCredentials =
      ServiceAccountCredentials.fromJson(jsonCredentials);

  final client = await clientViaServiceAccount(
    accountCredentials,
    ['https://www.googleapis.com/auth/cloud-platform'],
  );

  // The authenticated HTTP client can now access APIs.
  // ...

  client.close();
}
```

**Note:** For some APIs, a service account must impersonate a user. The
`ServiceAccountCredentials` constructors have an optional `impersonatedUser`
argument for this. See
[Perform Google Workspace Domain-Wide Delegation of Authority](https://developers.google.com/admin-sdk/directory/v1/guides/delegation)
for the additional security configuration this requires.

### Installed Application / Desktop

For a Dart command-line or installed application, create an OAuth client ID and
choose **Desktop app**. The console shows both a client ID and a client secret.

```dart
import 'package:googleapis_auth/auth_io.dart';

Future<void> main() async {
  final clientId = ClientId(
    'YOUR_CLIENT_ID.apps.googleusercontent.com',
    'YOUR_CLIENT_SECRET',
  );

  // This flow will start a local HTTP server to listen for the redirect.
  final client = await clientViaUserConsent(
    clientId,
    ['https://www.googleapis.com/auth/cloud-platform'],
    (url) {
      print('Please go to the following URL and grant access:');
      print('  => $url');
      print('');
    },
  );

  // The authenticated HTTP client can now access APIs.
  // ...

  client.close();
}
```

**Note:** Desktop app and Web application clients are issued a client secret;
`ClientId.secret` is optional because some client types and providers omit it.
Android and iOS clients are issued only a client ID and are not usable with this
package's user-consent flows.

### Client-side Web Application

For client-side web applications, create an OAuth client ID and choose **Web
application**. You must set the **Authorized JavaScript origins** to the URLs
where your application will be served (e.g. `http://localhost:8080` for local
testing).

```dart
import 'package:googleapis_auth/auth_browser.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final credentials = await requestAccessCredentials(
    clientId: 'YOUR_CLIENT_ID.apps.googleusercontent.com',
    scopes: ['https://www.googleapis.com/auth/cloud-platform'],
  );

  // You can now obtain an authenticated HTTP client.
  final client = authenticatedClient(
    http.Client(),
    credentials,
    closeUnderlyingClient: true,
  );

  // The authenticated HTTP client can now access APIs.
  // ...

  client.close();
}
```

### Accessing Public Data with API Key

Some APIs can be accessed using an API key without OAuth 2.0. Create an API key
under **APIs & Services > Credentials > Create credentials > API key**. Restrict
it by HTTP referrers for browser apps, or IP addresses for server apps.

The API key is used for quota and billing purposes and should not be disclosed
to third parties.

```dart
import 'package:googleapis_auth/auth_io.dart';

void main() {
  final client = clientViaApiKey('YOUR_API_KEY');

  // The client can now be used to make REST calls to Google APIs.
  // ...

  client.close();
}
```

## Using a non-Google authentication provider

This package is designed to work with Google's OAuth 2.0 flow, but it can be
used with other OAuth providers as well. Subclass `AuthEndpoints` and provide
authorization and token URIs.

```dart
import 'package:googleapis_auth/auth_io.dart';

class MicrosoftAuthEndpoints extends AuthEndpoints {
  const MicrosoftAuthEndpoints();

  @override
  Uri get authorizationEndpoint =>
      Uri.https('login.microsoftonline.com', 'common/oauth2/v2.0/authorize');

  @override
  Uri get tokenEndpoint =>
      Uri.https('login.microsoftonline.com', 'common/oauth2/v2.0/token');
}
```

Use it to obtain credentials:

```dart
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final clientId = ClientId('my-client-id', 'my-client-secret');
  final baseClient = http.Client();

  final credentials = await obtainAccessCredentialsViaUserConsent(
    clientId,
    ['scope1', 'scope2'],
    baseClient,
    (url) {
      print('Please go to the following URL and grant access:');
      print('  => $url');
      print('');
    },
    authEndpoints: const MicrosoftAuthEndpoints(),
  );

  // The baseClient used to obtain credentials should be closed.
  baseClient.close();

  final client = authenticatedClient(
    http.Client(),
    credentials,
    closeUnderlyingClient: true,
  );
  // ...
  client.close();
}
```

## More Information

- [Google Cloud Console Credentials](https://console.cloud.google.com/apis/credentials)
- [OAuth 2.0 to Access Google APIs](https://developers.google.com/identity/protocols/oauth2)
