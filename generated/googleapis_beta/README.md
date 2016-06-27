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

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Ad Exchange Buyer API II - adexchangebuyer2 v2beta1

Accesses the latest features for managing Ad Exchange accounts and Real-Time Bidding configurations.

Official API documentation: https://developers.google.com/ad-exchange/buyer-rest/guides/client-access/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google App Engine Admin API - appengine v1beta4

Provisions and manages App Engine applications.

Official API documentation: https://cloud.google.com/appengine/docs/admin-api/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google App Engine Admin API - appengine v1beta5

Provisions and manages App Engine applications.

Official API documentation: https://cloud.google.com/appengine/docs/admin-api/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Compute Engine Autoscaler API - autoscaler v1beta2

The Google Compute Engine Autoscaler API provides autoscaling for groups of Cloud VMs.

Official API documentation: http://developers.google.com/compute/docs/autoscaler

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Stackdriver Error Reporting API - clouderrorreporting v1beta1

Stackdriver Error Reporting groups and counts similar errors from cloud services. The Stackdriver Error Reporting API provides read access to error groups and their associated errors.


Official API documentation: https://cloud.google.com/error-reporting/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Cloud Monitoring API - cloudmonitoring v2beta2

Accesses Google Cloud Monitoring data.

Official API documentation: https://cloud.google.com/monitoring/v2beta2/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Resource Manager API - cloudresourcemanager v1beta1

The Google Cloud Resource Manager API provides methods for creating, reading, and updating project metadata.

Official API documentation: https://cloud.google.com/resource-manager

#### ![Logo](https://www.google.com/images/icons/product/compute_engine-16.png) Cloud User Accounts API - clouduseraccounts beta

Creates and manages users and groups for accessing Google Compute Engine virtual machines.

Official API documentation: https://cloud.google.com/compute/docs/access/user-accounts/api/latest/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Dataflow API - dataflow v1b3

Develops and executes data processing patterns like ETL, batch computation, and continuous computation.

Official API documentation: https://cloud.google.com/dataflow

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Dataproc API - dataproc v1beta1

Manages Hadoop-based clusters and jobs on Google Cloud Platform.

Official API documentation: https://cloud.google.com/dataproc/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Datastore API - datastore v1beta2

Stores and queries data in Google Cloud Datastore.

Official API documentation: https://developers.google.com/datastore/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Datastore API - datastore v1beta3

Accesses the schemaless NoSQL database to provide fully managed, robust, scalable storage for your application.


Official API documentation: https://cloud.google.com/datastore/

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) DCM/DFA Reporting And Trafficking API - dfareporting v2.5beta1

Manages your DoubleClick Campaign Manager ad campaigns and reports.

Official API documentation: https://developers.google.com/doubleclick-advertisers/reporting/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud DNS API - dns v2beta1

Configures and serves authoritative DNS records.

Official API documentation: https://developers.google.com/cloud-dns

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Genomics API - genomics v1beta2

Provides access to Genomics data.

Official API documentation: https://developers.google.com/genomics/v1beta2/reference

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Logging API - logging v2beta1

Writes log entries and manages your logs, log sinks, and logs-based metrics.

Official API documentation: https://cloud.google.com/logging/docs/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Proximity Beacon API - proximitybeacon v1beta1

Registers, manages, indexes, and searches beacons.

Official API documentation: https://developers.google.com/beacons/proximity/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Pub/Sub API - pubsub v1beta2

Provides reliable, many-to-many, asynchronous messaging between applications.

Official API documentation: https://cloud.google.com/pubsub/docs

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Compute Engine Instance Group Manager API - replicapool v1beta2

[Deprecated. Please use Instance Group Manager in Compute API] Provides groups of homogenous Compute Engine instances.

Official API documentation: https://developers.google.com/compute/docs/instance-groups/manager/v1beta2

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Compute Engine Instance Group Updater API - replicapoolupdater v1beta1

Updates groups of Compute Engine instances.

Official API documentation: https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Resource Views API - resourceviews v1beta1

The Resource View API allows users to create and manage logical sets of Google Compute Engine instances.

Official API documentation: https://developers.google.com/compute/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Compute Engine Instance Groups API - resourceviews v1beta2

The Resource View API allows users to create and manage logical sets of Google Compute Engine instances.

Official API documentation: https://developers.google.com/compute/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud RuntimeConfig API - runtimeconfig v1beta1

Provides capabilities for dynamic configuration and coordination for applications running on Google Cloud Platform.


Official API documentation: https://cloud.google.com/deployment-manager/runtime-configurator/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Cloud SQL Administration API - sqladmin v1beta3

Creates and configures Cloud SQL instances, which provide fully-managed MySQL databases.

Official API documentation: https://cloud.google.com/sql/docs/reference/latest

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Cloud SQL Administration API - sqladmin v1beta4

Creates and configures Cloud SQL instances, which provide fully-managed MySQL databases.

Official API documentation: https://cloud.google.com/sql/docs/reference/latest

#### ![Logo](https://www.google.com/images/icons/product/app_engine-16.png) TaskQueue API - taskqueue v1beta2

Accesses a Google App Engine Pull Task Queue over REST.

Official API documentation: https://developers.google.com/appengine/docs/python/taskqueue/rest

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Cloud Tool Results API - toolresults v1beta3

Reads and publishes results from Cloud Test Lab.

Official API documentation: https://developers.google.com/cloud-test-lab/

