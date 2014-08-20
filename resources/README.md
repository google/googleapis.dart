# Package of Google APIs

## Description

This repository contains auto-generated client libraries for accessing 
Google APIs using dart. It has the usual dart package layout.

## Usage

The first step is to obtain oauth2 access credentials. This can be done using
the `googleapis_auth` package. Your application can access APIs on behalf of a
user or using a service account.

After obtaining credentials, an API from the `googleapis` package can be
accessed with an authenticated HTTP client.

The following is an example of a command line application which lists files
in Google Drive by using a service account. 

Create a `pubspec.yaml` file with the `googleapis_auth` and `googleapis`
dependencies.

    ...
    dependencies:
      googleapis: any
      googleapis_auth: any

Create a service account in the Google Cloud Console and save the credential
information. After that the Cloud Storage API can be accessed like this:

    import 'package:googleapis/storage/v1.dart';
    import 'package:googleapis_auth/auth_io.dart';

    final Credentials = new ServiceAccountCredentials.fromJson(r'''
    {
      "private_key_id": ...,
      "private_key": ...,
      "client_email": ...,
      "client_id": ...,
      "type": "service_account"
    }
    ''');

    void main() {
      clientViaServiceAccount(Credentials,
                              [StorageApi.DevstorageReadOnlyScope]).then((http) {
        var storage = new StorageApi(http);
        storage.buckets.list('dart-on-cloud').then((buckets) {
          print("Received ${buckets.items.length} bucket names:");
          for (var file in buckets.items) {
            print(file.name);
          }
        });
      });
    }
