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

#### Ad Exchange Buyer API II - adexchangebuyer2 v2beta1

Accesses the latest features for managing Authorized Buyers accounts, Real-Time Bidding configurations and auction metrics, and Marketplace programmatic deals.

Official API documentation: https://developers.google.com/authorized-buyers/apis/reference/rest/

#### G Suite Alert Center API - alertcenter v1beta1

Manages alerts on issues affecting your domain.

Official API documentation: https://developers.google.com/admin-sdk/alertcenter/

#### App Engine Admin API - appengine v1beta

Provisions and manages developers' App Engine applications.

Official API documentation: https://cloud.google.com/appengine/docs/admin-api/

#### BigQuery Connection API - bigqueryconnection v1beta1

Allows users to manage BigQuery connections to external data sources.

Official API documentation: https://cloud.google.com/bigquery/

#### Cloud Billing Budget API - billingbudgets v1beta1

The Cloud Billing Budget API stores Cloud Billing budgets, which define a budget plan and the rules to execute as spend is tracked against that plan.

Official API documentation: https://cloud.google.com/billing/docs/how-to/budget-api-overview

#### Error Reporting API - clouderrorreporting v1beta1

Groups and counts similar errors from cloud services and applications, reports new errors, and provides access to error groups and their associated errors.


Official API documentation: https://cloud.google.com/error-reporting/

#### Cloud Resource Manager API - cloudresourcemanager v1beta1

Creates, reads, and updates metadata for Google Cloud Platform resource containers.

Official API documentation: https://cloud.google.com/resource-manager

#### Perspective Comment Analyzer API - commentanalyzer v1alpha1

The Perspective Comment Analyzer API provides information about the potential impact of a comment on a conversation (e.g. it can provide a score for the "toxicity" of a comment). Users can leverage the "SuggestCommentScore" method to submit corrections to improve Perspective over time. Users can set the "doNotStore" flag to ensure that all submitted comments are automatically deleted after scores are returned.

Official API documentation: https://github.com/conversationai/perspectiveapi/blob/master/README.md

#### Container Analysis API - containeranalysis v1beta1

An implementation of the Grafeas API, which stores, and enables querying and retrieval of critical metadata about all of your software artifacts.

Official API documentation: https://cloud.google.com/container-analysis/api/reference/rest/

#### Google Cloud Data Catalog API - datacatalog v1beta1

A fully managed and highly scalable data discovery and metadata management service.


Official API documentation: https://cloud.google.com/data-catalog/docs/

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

#### Firebase ML API - firebaseml v1beta2

Access custom machine learning models hosted via Firebase ML.

Official API documentation: https://firebase.google.com

#### Game Services API - gameservices v1beta

Deploy and manage infrastructure for global multiplayer gaming experiences.

Official API documentation: https://cloud.google.com/solutions/gaming/

#### Cloud Natural Language API - language v1beta1

Provides natural language understanding technologies, such as sentiment analysis, entity recognition, entity sentiment analysis, and other text annotations, to developers.

Official API documentation: https://cloud.google.com/natural-language/

#### Cloud Natural Language API - language v1beta2

Provides natural language understanding technologies, such as sentiment analysis, entity recognition, entity sentiment analysis, and other text annotations, to developers.

Official API documentation: https://cloud.google.com/natural-language/

#### Cloud Life Sciences API - lifesciences v2beta

Cloud Life Sciences is a suite of services and tools for managing, processing, and transforming life sciences data.

Official API documentation: https://cloud.google.com/life-sciences

#### Cloud Memorystore for Memcached API - memcache v1beta2

Google Cloud Memorystore for Memcached API is used for creating and managing Memcached instances in GCP.

Official API documentation: https://cloud.google.com/memorystore/

#### Network Management API - networkmanagement v1beta1

The Network Management API provides a collection of network performance monitoring and diagnostic capabilities.

Official API documentation: https://cloud.google.com/

#### Cloud OS Login API - oslogin v1alpha

You can use OS Login to manage access to your VM instances using IAM roles.

Official API documentation: https://cloud.google.com/compute/docs/oslogin/

#### Cloud OS Login API - oslogin v1beta

You can use OS Login to manage access to your VM instances using IAM roles.

Official API documentation: https://cloud.google.com/compute/docs/oslogin/

#### SAS Portal API (Testing) - prod_tt_sasportal v1alpha1



Official API documentation: https://developers.google.com/spectrum-access-system/

#### Cloud Pub/Sub API - pubsub v1beta2

Provides reliable, many-to-many, asynchronous messaging between applications.


Official API documentation: https://cloud.google.com/pubsub/docs

#### Recommender API - recommender v1beta1



Official API documentation: https://cloud.google.com/recommender/docs/

#### Cloud Runtime Configuration API - runtimeconfig v1beta1

The Runtime Configurator allows you to dynamically configure and expose variables through Google Cloud Platform. In addition, you can also set Watchers and Waiters that will watch for changes to your data and return based on certain conditions.

Official API documentation: https://cloud.google.com/deployment-manager/runtime-configurator/

#### SAS Portal API - sasportal v1alpha1



Official API documentation: https://developers.google.com/spectrum-access-system/

#### Service Directory API - servicedirectory v1beta1

Service Directory is a platform for discovering, publishing, and connecting services.


Official API documentation: https://cloud.google.com/service-directory

#### Cloud Speech-to-Text API - speech v2beta1

Converts audio to text by applying powerful neural network models.

Official API documentation: https://cloud.google.com/speech-to-text/docs/quickstart-protocol

#### Cloud SQL Admin API - sql v1beta4

API for Cloud SQL database instance management

Official API documentation: https://developers.google.com/cloud-sql/

#### Cloud Tool Results API - toolresults v1beta3

API to publish and access results from developer tools.

Official API documentation: https://firebase.google.com/docs/test-lab/

#### Cloud TPU API - tpu v1alpha1

TPU API provides customers with access to Google TPU technology.

Official API documentation: https://cloud.google.com/tpu/

