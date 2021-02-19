Auto-generated Dart libraries for accessing [Google APIs][libs].

## Usage

First, obtain OAuth 2.0 access credentials. This can be done using the
`googleapis_auth` package. Your application can access APIs on behalf of a
user or using a service account.

After obtaining credentials, an API from the `googleapis` package can be
accessed with an authenticated HTTP client.

## Example

The following command line application lists files in Google Drive by using a
service account.

Create a `pubspec.yaml` file with the `googleapis_auth` and `googleapis`
dependencies.

```yaml
...
dependencies:
  googleapis: any
  googleapis_auth: any
```

Create a service account in the Google Cloud Console and save the credential
information.

Then create a Dart application to list files in a specific project. *In the
example below, files from the `dart-on-cloud` project are listed.*

```dart
// bin/list_files.dart

import 'package:googleapis/storage/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

final _credentials = ServiceAccountCredentials.fromJson(r'''
{
  "private_key_id": ...,
  "private_key": ...,
  "client_email": ...,
  "client_id": ...,
  "type": "service_account"
}
''');

const _scopes = [StorageApi.devstorageReadOnlyScope];

Future<void> main() async {
  final httpClient = await clientViaServiceAccount(_credentials, _scopes);
  try {
    final storage = StorageApi(httpClient);

    final buckets = await storage.buckets.list('dart-on-cloud');
    print('Received ${buckets.items.length} bucket names:');
    for (var file in buckets.items) {
      print(file.name);
    }
  } finally {
    httpClient.close();
  }
}
```

[libs]: https://developers.google.com/discovery/libraries/

## Available Google APIs

The following is a list of APIs that are currently available inside this
package.

#### Ad Exchange Buyer API II - adexchangebuyer2 v2beta1

Accesses the latest features for managing Authorized Buyers accounts, Real-Time Bidding configurations and auction metrics, and Marketplace programmatic deals.

Official API documentation: https://developers.google.com/authorized-buyers/apis/reference/rest/

#### Google Workspace Alert Center API - alertcenter v1beta1

Manages alerts on issues affecting your domain.

Official API documentation: https://developers.google.com/admin-sdk/alertcenter/

#### Google Analytics Admin API - analyticsadmin v1alpha

Official API documentation: http://code.google.com/apis/analytics/docs/mgmt/home.html

#### Google Analytics Data API - analyticsdata v1alpha

Accesses report data in Google Analytics.

Official API documentation: https://developers.google.com/analytics/devguides/reporting/data/v1/

#### Area120 Tables API - area120tables v1alpha1

Official API documentation: https://support.google.com/area120-tables/answer/10011390

#### BigQuery Connection API - bigqueryconnection v1beta1

Allows users to manage BigQuery connections to external data sources.

Official API documentation: https://cloud.google.com/bigquery/

#### Error Reporting API - clouderrorreporting v1beta1

Groups and counts similar errors from cloud services and applications, reports new errors, and provides access to error groups and their associated errors. 

Official API documentation: https://cloud.google.com/error-reporting/

#### Container Analysis API - containeranalysis v1beta1

An implementation of the Grafeas API, which stores, and enables querying and retrieval of critical metadata about all of your software artifacts.

Official API documentation: https://cloud.google.com/container-analysis/api/reference/rest/

#### Google Cloud Data Catalog API - datacatalog v1beta1

A fully managed and highly scalable data discovery and metadata management service. 

Official API documentation: https://cloud.google.com/data-catalog/docs/

#### Dataflow API - dataflow v1b3

Manages Google Cloud Dataflow projects on Google Cloud Platform.

Official API documentation: https://cloud.google.com/dataflow

#### Data Labeling API - datalabeling v1beta1

Public API for Google Cloud AI Data Labeling Service.

Official API documentation: https://cloud.google.com/data-labeling/docs/

#### Database Migration API - datamigration v1beta1

Manage Cloud Database Migration Service resources on Google Cloud Platform.

Official API documentation: https://cloud.google.com/database-migration/

#### Cloud Document AI API - documentai v1beta3

Service to parse structured information from unstructured or semi-structured documents using state-of-the-art Google AI such as natural language, computer vision, translation, and AutoML.

Official API documentation: https://cloud.google.com/document-ai/docs/

#### Cloud Domains API - domains v1beta1

Enables management and configuration of domain names.

Official API documentation: https://cloud.google.com/domains/

#### Fact Check Tools API - factchecktools v1alpha1

Official API documentation: https://developers.google.com/fact-check/tools/api/

#### Firebase Management API - firebase v1beta1

The Firebase Management API enables programmatic setup and management of Firebase projects, including a project's Firebase resources and Firebase apps.

Official API documentation: https://firebase.google.com

#### Firebase Realtime Database Management API - firebasedatabase v1beta

The Firebase Realtime Database Management API enables programmatic provisioning and management of Realtime Database instances.

Official API documentation: https://firebase.google.com/docs/reference/rest/database/database-management/rest/

#### Cloud Life Sciences API - lifesciences v2beta

Cloud Life Sciences is a suite of services and tools for managing, processing, and transforming life sciences data.

Official API documentation: https://cloud.google.com/life-sciences

#### Dataproc Metastore API - metastore v1beta

The Dataproc Metastore API is used to manage the lifecycle and configuration of metastore services.

Official API documentation: https://cloud.google.com/dataproc-metastore/docs

#### Network Connectivity API - networkconnectivity v1alpha1

The Network Connectivity API will be home to various services which provide information pertaining to network connectivity.

Official API documentation: https://cloud.google.com/network-connectivity/docs

#### Policy Simulator API - policysimulator v1beta1

Official API documentation: https://cloud.google.com/iam/docs/simulating-access

#### Certificate Authority API - privateca v1beta1

The Certificate Authority Service API is a highly-available, scalable service that enables you to simplify and automate the management of private certificate authorities (CAs) while staying in control of your private keys." 

Official API documentation: https://cloud.google.com/

#### SAS Portal API (Testing) - prod_tt_sasportal v1alpha1

Official API documentation: https://developers.google.com/spectrum-access-system/

#### Recommendations AI (Beta) - recommendationengine v1beta1

Note that we now highly recommend new customers to use Retail API, which incorporates the GA version of the Recommendations AI funtionalities. To enable Retail API, please visit https://console.cloud.google.com/apis/library/retail.googleapis.com. The Recommendations AI service enables customers to build end-to-end personalized recommendation systems without requiring a high level of expertise in machine learning, recommendation system, or Google Cloud.

Official API documentation: https://cloud.google.com/recommendations-ai/docs

#### SAS Portal API - sasportal v1alpha1

Official API documentation: https://developers.google.com/spectrum-access-system/

#### Cloud SQL Admin API - sqladmin v1beta4

API for Cloud SQL database instance management

Official API documentation: https://developers.google.com/cloud-sql/

#### Cloud Tool Results API - toolresults v1beta3

API to publish and access results from developer tools.

Official API documentation: https://firebase.google.com/docs/test-lab/

#### Transcoder API - transcoder v1beta1

This API converts video files into formats suitable for consumer distribution. 

Official API documentation: https://cloud.google.com/transcoder/docs/

