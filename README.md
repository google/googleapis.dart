Dart packages for accessing RESTful Google APIs described by the
[API Discovery Service](https://developers.google.com/discovery), along with
OAuth 2.0 authentication helpers.

> [!IMPORTANT]
>
> Most future Google API and Google Cloud client development for Dart is
> happening in
> [googleapis/google-cloud-dart](https://github.com/googleapis/google-cloud-dart).
> If you are targeting Google Cloud services, check `google-cloud-dart` first.
> Several Cloud APIs in `package:googleapis` (including Cloud Storage,
> Firestore, Secret Manager, Cloud Logging, IAM, Cloud Functions, Cloud Tasks,
> Compute Engine, and Natural Language) are already deprecated in favor of
> `google_cloud_*` packages.
>
> Use the packages in this repository for Google Workspace (Drive, Gmail,
> Calendar, Sheets, Docs), YouTube, and other Discovery-based Google APIs not
> yet covered by `google-cloud-dart`.

## Packages

| Package                                             | Description                                                                                       | Version                                                                                                                      |
| --------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| [googleapis](generated/googleapis/)                 | Generated Dart libraries for stable Google APIs described by the API Discovery Service.           | [![pub package](https://img.shields.io/pub/v/googleapis.svg)](https://pub.dev/packages/googleapis)                           |
| [googleapis_beta](generated/googleapis_beta/)       | Generated Dart libraries for beta and preview Google APIs described by the API Discovery Service. | [![pub package](https://img.shields.io/pub/v/googleapis_beta.svg)](https://pub.dev/packages/googleapis_beta)                 |
| [googleapis_auth](googleapis_auth/)                 | Obtain OAuth 2.0 access credentials and authenticated HTTP clients for Google services.           | [![pub package](https://img.shields.io/pub/v/googleapis_auth.svg)](https://pub.dev/packages/googleapis_auth)                 |
| [discoveryapis_generator](discoveryapis_generator/) | Generate Dart API client packages from API Discovery Service documents.                           | [![pub package](https://img.shields.io/pub/v/discoveryapis_generator.svg)](https://pub.dev/packages/discoveryapis_generator) |
| [_discoveryapis_commons](discoveryapis_commons/)    | Shared runtime support used by generated Discovery API packages (not intended for direct use).    | [![pub package](https://img.shields.io/pub/v/_discoveryapis_commons.svg)](https://pub.dev/packages/_discoveryapis_commons)   |

## Getting started

1. **Find your API**: Browse the available generated libraries and API
   documentation on pub.dev for
   [package:googleapis](https://pub.dev/packages/googleapis) and
   [package:googleapis_beta](https://pub.dev/packages/googleapis_beta).
2. **Set up a Google Cloud project**: Create a project in the
   [Google Cloud console](https://console.cloud.google.com/) and enable each API
   your application calls under **APIs & Services > Library**.
3. **Authenticate requests**:
   - **Dart CLI, server, and web applications**: Refer to
     [googleapis_auth/README.md](googleapis_auth/README.md) for Application
     Default Credentials (ADC), service accounts, desktop user consent, browser
     OAuth 2.0, and API keys.
   - **Flutter applications**: Do **not** use `package:googleapis_auth` directly
     in Flutter apps. Use
     [package:extension_google_sign_in_as_googleapis_auth](https://pub.dev/packages/extension_google_sign_in_as_googleapis_auth)
     and follow the
     [Flutter Google APIs guide](https://docs.flutter.dev/data-and-backend/google-apis).

### Example

```dart
import 'package:googleapis/drive/v3.dart';
import 'package:googleapis_auth/auth_io.dart';

Future<void> main() async {
  final httpClient = await clientViaApplicationDefaultCredentials(
    scopes: [DriveApi.driveMetadataReadonlyScope],
  );
  try {
    final drive = DriveApi(httpClient);
    final fileList = await drive.files.list(pageSize: 10);
    for (final file in fileList.files ?? const <File>[]) {
      print('${file.name} (${file.id})');
    }
  } finally {
    httpClient.close();
  }
}
```

## Contributing

Refer to [CONTRIBUTING.md](CONTRIBUTING.md) for Contributor License Agreement
(CLA) and pull request guidelines.

### Workspace setup

This repository is configured as a
[Dart pub workspace](https://dart.dev/tools/pub/workspaces). Resolve
dependencies for all packages from the repository root:

```console
$ dart pub get
```

### Working on individual packages

When changing a standalone package such as `googleapis_auth` or
`discoveryapis_commons`, run analysis, formatting checks, and tests inside that
package directory:

```console
$ cd googleapis_auth
$ dart analyze --fatal-infos
$ dart format --output=none --set-exit-if-changed .
$ dart test
```

If you modify `discoveryapis_generator`, also regenerate the test fixture
package from the repository root and verify there are no unexpected diffs:

```console
$ ./tool/verify_examples_setup.sh
$ git diff
```

### Regenerating `googleapis` and `googleapis_beta`

1. Fetch the latest discovery documents from the
   [googleapis/discovery-artifact-manager](https://github.com/googleapis/discovery-artifact-manager)
   submodule, apply patches from `overrides/`, and update `config.yaml`:

   ```console
   $ ./tool/download.sh
   ```

2. Review changes in `config.yaml` and `discovery/` to decide whether a minor or
   major version bump is needed. Update `version:` in `config.yaml` and the
   corresponding changelog under `resources/googleapis/CHANGELOG.md` or
   `resources/googleapis_beta/CHANGELOG.md`.

3. Regenerate `generated/googleapis` and `generated/googleapis_beta` and refresh
   workspace resolution:

   ```console
   $ ./tool/local_rebuild.sh
   ```

4. Validate configuration, analysis, and tests:

   ```console
   $ (cd generator && dart analyze --fatal-infos && dart test)
   $ (cd generated/googleapis && dart analyze --fatal-infos && dart test)
   $ (cd generated/googleapis_beta && dart analyze --fatal-infos && dart test)
   ```

### Discovery document overrides

To patch an upstream discovery document in `discovery/` (for example, to work
around an upstream schema bug), edit the JSON file under `discovery/` and write
the unified diff to `overrides/`:

```console
$ git diff discovery/googleapis/<api>.json > overrides/<name>.diff
```

When the override corresponds to a GitHub issue, name the diff after the issue
number (for example, `overrides/i123.diff`). `./tool/download.sh` automatically
applies all `overrides/*.diff` patches with `git apply`.
