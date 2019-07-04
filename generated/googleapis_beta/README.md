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

Then create a Dart application to list files in a spececific project. *In the
example below, files from the `dart-on-cloud` project are listed.*

```dart
// bin/list_files.dart

import 'package:googleapis/storage/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

final _credentials = new ServiceAccountCredentials.fromJson(r'''
{
  "private_key_id": ...,
  "private_key": ...,
  "client_email": ...,
  "client_id": ...,
  "type": "service_account"
}
''');

const _SCOPES = const [StorageApi.DevstorageReadOnlyScope];

void main() {
  clientViaServiceAccount(_credentials, _SCOPES).then((http_client) {
    var storage = new StorageApi(http_client);
    storage.buckets.list('dart-on-cloud').then((buckets) {
      print("Received ${buckets.items.length} bucket names:");
      for (var file in buckets.items) {
        print(file.name);
      }
    });
  });
}
```

[libs]: https://developers.google.com/discovery/libraries/

## Available Google APIs

The following is a list of APIs that are currently available inside this
package.

#### Access Approval API - accessapproval v1beta1

An API for controlling access to data by Google personnel.

Official API documentation: https://cloud.google.com/access-approval/docs

#### Ad Exchange Buyer API II - adexchangebuyer2 v2beta1

Accesses the latest features for managing Authorized Buyers accounts, Real-Time Bidding configurations and auction metrics, and Marketplace programmatic deals.

Official API documentation: https://developers.google.com/authorized-buyers/apis/reference/rest/

#### G Suite Alert Center API - alertcenter v1beta1

Manages alerts on issues affecting your domain.

Official API documentation: https://developers.google.com/admin-sdk/alertcenter/

#### App Engine Admin API - appengine v1beta

Provisions and manages developers' App Engine applications.

Official API documentation: https://cloud.google.com/appengine/docs/admin-api/

#### Binary Authorization API - binaryauthorization v1beta1

The management interface for Binary Authorization, a system providing policy control for images deployed to Kubernetes Engine clusters.


Official API documentation: https://cloud.google.com/binary-authorization/

#### Stackdriver Error Reporting API - clouderrorreporting v1beta1

Groups and counts similar errors from cloud services and applications, reports new errors, and provides access to error groups and their associated errors.


Official API documentation: https://cloud.google.com/error-reporting/

#### Cloud Private Catalog API - cloudprivatecatalog v1beta1

Enable cloud users to discover enterprise catalogs and products in their organizations.

Official API documentation: https://cloud.google.com/private-catalog/

#### Cloud Private Catalog Producer API - cloudprivatecatalogproducer v1beta1

Enables cloud users to manage and share enterprise catalogs intheir organizations.

Official API documentation: https://cloud.google.com/private-catalog/

#### Cloud Resource Manager API - cloudresourcemanager v1beta1

Creates, reads, and updates metadata for Google Cloud Platform resource containers.

Official API documentation: https://cloud.google.com/resource-manager

#### Perspective Comment Analyzer API - commentanalyzer v1alpha1

The Perspective Comment Analyzer API provides information about the potential impact of a comment on a conversation (e.g. it can provide a score for the "toxicity" of a comment). Users can leverage the "SuggestCommentScore" method to submit corrections to improve Perspective over time. Users can set the "doNotStore" flag to ensure that all submitted comments are automatically deleted after scores are returned.

Official API documentation: https://github.com/conversationai/perspectiveapi/blob/master/README.md

#### Container Analysis API - containeranalysis v1beta1

An implementation of the Grafeas API, which stores, and enables querying and retrieval of critical metadata about all of your software artifacts.

Official API documentation: https://cloud.google.com/container-analysis/api/reference/rest/

#### Dataflow API - dataflow v1b3

Manages Google Cloud Dataflow projects on Google Cloud Platform.

Official API documentation: https://cloud.google.com/dataflow

#### Cloud Data Fusion API - datafusion v1beta1

Cloud Data Fusion is a fully-managed, cloud native, enterprise data integration service for
    quickly building and managing data pipelines. It provides a graphical interface to increase
    time efficiency and reduce complexity, and allows business users, developers, and data
    scientists to easily and reliably build scalable data integration solutions to cleanse,
    prepare, blend, transfer and transform data without having to wrestle with infrastructure.

Official API documentation: https://cloud.google.com/data-fusion/docs

#### Dialogflow API - dialogflow v2beta1

Builds conversational interfaces (for example, chatbots, and voice-powered apps and devices).

Official API documentation: https://cloud.google.com/dialogflow/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Cloud DNS API - dns v2beta1

Configures and serves authoritative DNS records.

Official API documentation: https://developers.google.com/cloud-dns

#### Fact Check Tools API - factchecktools v1alpha1



Official API documentation: https://developers.google.com/fact-check/tools/api/

#### Firebase Management API - firebase v1beta1

The Firebase Management API enables programmatic setup and management of Firebase projects, including a project's Firebase resources and Firebase apps.

Official API documentation: https://firebase.google.com

#### Firebase Hosting API - firebasehosting v1beta1

The Firebase Hosting REST API enables programmatic and customizable deployments to your Firebase-hosted sites. Use this REST API to deploy new or updated hosting configurations and content files.

Official API documentation: https://firebase.google.com/docs/hosting/

#### Cloud Healthcare API - healthcare v1beta1

Manage, store, and access healthcare data in Google Cloud Platform.

Official API documentation: https://cloud.google.com/healthcare

#### Cloud Natural Language API - language v1beta1

Provides natural language understanding technologies, such as sentiment analysis, entity recognition, entity sentiment analysis, and other text annotations, to developers.

Official API documentation: https://cloud.google.com/natural-language/

#### Cloud Natural Language API - language v1beta2

Provides natural language understanding technologies, such as sentiment analysis, entity recognition, entity sentiment analysis, and other text annotations, to developers.

Official API documentation: https://cloud.google.com/natural-language/

#### Cloud OS Login API - oslogin v1alpha

You can use OS Login to manage access to your VM instances using IAM roles. For more information, read [OS Login](/compute/docs/oslogin/).

Official API documentation: https://cloud.google.com/compute/docs/oslogin/

#### Cloud OS Login API - oslogin v1beta

You can use OS Login to manage access to your VM instances using IAM roles. For more information, read [OS Login](/compute/docs/oslogin/).

Official API documentation: https://cloud.google.com/compute/docs/oslogin/

#### Proximity Beacon API - proximitybeacon v1beta1

Registers, manages, indexes, and searches beacons.

Official API documentation: https://developers.google.com/beacons/proximity/

#### Cloud Pub/Sub API - pubsub v1beta2

Provides reliable, many-to-many, asynchronous messaging between applications.


Official API documentation: https://cloud.google.com/pubsub/docs

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Replica Pool API - replicapool v1beta1

The Replica Pool API allows users to declaratively provision and manage groups of Google Compute Engine instances based on a common template.

Official API documentation: https://developers.google.com/compute/docs/replica-pool/

#### Cloud Runtime Configuration API - runtimeconfig v1beta1

The Runtime Configurator allows you to dynamically configure and expose variables through Google Cloud Platform. In addition, you can also set Watchers and Waiters that will watch for changes to your data and return based on certain conditions.

Official API documentation: https://cloud.google.com/deployment-manager/runtime-configurator/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Cloud SQL Admin API - sqladmin v1beta4

Creates and manages Cloud SQL instances, which provide fully managed MySQL or PostgreSQL databases.

Official API documentation: https://cloud.google.com/sql/docs/reference/latest

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Cloud Tool Results API - toolresults v1beta3

Reads and publishes results from Firebase Test Lab.

Official API documentation: https://firebase.google.com/docs/test-lab/

#### Cloud TPU API - tpu v1alpha1

TPU API provides customers with access to Google TPU technology.

Official API documentation: https://cloud.google.com/tpu/

