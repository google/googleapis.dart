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

#### Abusive Experience Report API - abusiveexperiencereport v1

Views Abusive Experience Report data, and gets a list of sites that have a significant number of abusive experiences.

Official API documentation: https://developers.google.com/abusive-experience-report/

#### Accelerated Mobile Pages (AMP) URL API - acceleratedmobilepageurl v1

Retrieves the list of AMP URLs (and equivalent AMP Cache URLs) for a given list of public URL(s).


Official API documentation: https://developers.google.com/amp/cache/

#### Access Context Manager API - accesscontextmanager v1

An API for setting attribute based access control to requests to GCP services.

Official API documentation: https://cloud.google.com/access-context-manager/docs/reference/rest/

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) Ad Exchange Buyer API - adexchangebuyer v1.3

Accesses your bidding-account information, submits creatives for validation, finds available direct deals, and retrieves performance reports.

Official API documentation: https://developers.google.com/ad-exchange/buyer-rest

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) Ad Exchange Buyer API - adexchangebuyer v1.4

Accesses your bidding-account information, submits creatives for validation, finds available direct deals, and retrieves performance reports.

Official API documentation: https://developers.google.com/ad-exchange/buyer-rest

#### Ad Experience Report API - adexperiencereport v1

Views Ad Experience Report data, and gets a list of sites that have a significant number of annoying ads.

Official API documentation: https://developers.google.com/ad-experience-report/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Admin Data Transfer API - admin datatransfer_v1

Transfers user data from one user to another.

Official API documentation: https://developers.google.com/admin-sdk/data-transfer/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Admin Directory API - admin directory_v1

Manages enterprise resources such as users and groups, administrative notifications, security features, and more.

Official API documentation: https://developers.google.com/admin-sdk/directory/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Admin Reports API - admin reports_v1

Fetches reports for the administrators of G Suite customers about the usage, collaboration, security, and risk for their users.

Official API documentation: https://developers.google.com/admin-sdk/reports/

#### ![Logo](https://www.google.com/images/icons/product/adsense-16.png) AdSense Management API - adsense v1.4

Accesses AdSense publishers' inventory and generates performance reports.

Official API documentation: https://developers.google.com/adsense/management/

#### ![Logo](https://www.google.com/images/icons/product/adsense-16.png) AdSense Host API - adsensehost v4.1

Generates performance reports, generates ad codes, and provides publisher management capabilities for AdSense Hosts.

Official API documentation: https://developers.google.com/adsense/host/

#### ![Logo](https://www.google.com/images/icons/product/analytics-16.png) Google Analytics API - analytics v3

Views and manages your Google Analytics data.

Official API documentation: https://developers.google.com/analytics/

#### Analytics Reporting API - analyticsreporting v4

Accesses Analytics report data.

Official API documentation: https://developers.google.com/analytics/devguides/reporting/core/v4/

#### Android Device Provisioning Partner API - androiddeviceprovisioning v1

Automates Android zero-touch enrollment for device resellers, customers, and EMMs.

Official API documentation: https://developers.google.com/zero-touch/

#### ![Logo](https://www.google.com/images/icons/product/android-16.png) Google Play EMM API - androidenterprise v1

Manages the deployment of apps to Android for Work users.

Official API documentation: https://developers.google.com/android/work/play/emm-api

#### Android Management API - androidmanagement v1

The Android Management API provides remote enterprise management of Android devices and apps.

Official API documentation: https://developers.google.com/android/management

#### ![Logo](https://www.google.com/images/icons/product/android-16.png) Google Play Developer API - androidpublisher v2

Accesses Android application developers' Google Play accounts.

Official API documentation: https://developers.google.com/android-publisher

#### ![Logo](https://www.google.com/images/icons/product/android-16.png) Google Play Developer API - androidpublisher v3

Accesses Android application developers' Google Play accounts.

Official API documentation: https://developers.google.com/android-publisher

#### App Engine Admin API - appengine v1

Provisions and manages developers' App Engine applications.

Official API documentation: https://cloud.google.com/appengine/docs/admin-api/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Drive Activity API - appsactivity v1

Provides a historical view of activity.

Official API documentation: https://developers.google.com/google-apps/activity/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google App State API - appstate v1

The Google App State API.

Official API documentation: https://developers.google.com/games/services/web/api/states

#### ![Logo](https://www.google.com/images/icons/product/search-16.gif) BigQuery API - bigquery v2

A data platform for customers to create, manage, share and query data.

Official API documentation: https://cloud.google.com/bigquery/

#### BigQuery Data Transfer API - bigquerydatatransfer v1

Schedule queries or transfer external data from SaaS applications to Google BigQuery on a regular basis.

Official API documentation: https://cloud.google.com/bigquery/

#### Cloud Bigtable Admin API - bigtableadmin v2

Administer your Cloud Bigtable tables and instances.

Official API documentation: https://cloud.google.com/bigtable/

#### ![Logo](https://www.google.com/images/icons/product/blogger-16.png) Blogger API - blogger v3

API for access to the data within Blogger.

Official API documentation: https://developers.google.com/blogger/docs/3.0/getting_started

#### ![Logo](https://www.google.com/images/icons/product/ebooks-16.png) Books API - books v1

Searches for books and manages your Google Books library.

Official API documentation: https://developers.google.com/books/docs/v1/getting_started

#### Calendar API - calendar v3

Manipulates events and other calendar data.

Official API documentation: https://developers.google.com/google-apps/calendar/firstapp

#### Hangouts Chat API - chat v1

Enables bots to fetch information and perform actions in Hangouts Chat.

Official API documentation: https://developers.google.com/hangouts/chat

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Civic Information API - civicinfo v2

Provides polling places, early vote locations, contest data, election officials, and government representatives for U.S. residential addresses.

Official API documentation: https://developers.google.com/civic-information

#### Google Classroom API - classroom v1

Manages classes, rosters, and invitations in Google Classroom.

Official API documentation: https://developers.google.com/classroom/

#### Cloud Asset API - cloudasset v1

The cloud asset API manages the history and inventory of cloud resources.

Official API documentation: https://cloud.google.com/resource-manager/docs/cloud-asset-inventory/quickstart-cloud-asset-inventory

#### Cloud Billing API - cloudbilling v1

Allows developers to manage billing for their Google Cloud Platform projects
    programmatically.

Official API documentation: https://cloud.google.com/billing/

#### Cloud Build API - cloudbuild v1

Creates and manages builds on Google Cloud Platform.

Official API documentation: https://cloud.google.com/cloud-build/docs/

#### Stackdriver Debugger API - clouddebugger v2

Examines the call stack and variables of a running application without stopping or slowing it down.


Official API documentation: https://cloud.google.com/debugger

#### Cloud Functions API - cloudfunctions v1

Manages lightweight user-provided functions executed in response to events.

Official API documentation: https://cloud.google.com/functions

#### Cloud Identity API - cloudidentity v1

API for provisioning and managing identity resources.

Official API documentation: https://cloud.google.com/identity/

#### Cloud IoT API - cloudiot v1

Registers and manages IoT (Internet of Things) devices that connect to the Google Cloud Platform.


Official API documentation: https://cloud.google.com/iot

#### Cloud Key Management Service (KMS) API - cloudkms v1

Manages keys and performs cryptographic operations in a central cloud service, for direct use by other cloud resources and applications.


Official API documentation: https://cloud.google.com/kms/

#### Stackdriver Profiler API - cloudprofiler v2

Manages continuous profiling information.

Official API documentation: https://cloud.google.com/profiler/

#### Cloud Resource Manager API - cloudresourcemanager v1

Creates, reads, and updates metadata for Google Cloud Platform resource containers.

Official API documentation: https://cloud.google.com/resource-manager

#### Cloud Resource Manager API - cloudresourcemanager v2

Creates, reads, and updates metadata for Google Cloud Platform resource containers.

Official API documentation: https://cloud.google.com/resource-manager

#### Cloud Scheduler API - cloudscheduler v1

Creates and manages jobs run on a regular recurring schedule.

Official API documentation: https://cloud.google.com/scheduler/

#### Cloud Search API - cloudsearch v1

Cloud Search provides cloud-based search capabilities over G Suite data.  The Cloud Search API allows indexing of non-G Suite data into Cloud Search.

Official API documentation: https://developers.google.com/cloud-search/docs/guides/

#### Cloud Shell API - cloudshell v1

Allows users to start, configure, and connect to interactive shell sessions running in the cloud.


Official API documentation: https://cloud.google.com/shell/docs/

#### Cloud Tasks API - cloudtasks v2

Manages the execution of large numbers of distributed requests.

Official API documentation: https://cloud.google.com/tasks/

#### Stackdriver Trace API - cloudtrace v2

Sends application trace data to Stackdriver Trace for viewing. Trace data is collected for all App Engine applications by default. Trace data from other applications can be provided using this API. This library is used to interact with the Trace API directly. If you are looking to instrument your application for Stackdriver Trace, we recommend using OpenCensus.


Official API documentation: https://cloud.google.com/trace

#### Cloud Composer API - composer v1

Manages Apache Airflow environments on Google Cloud Platform.

Official API documentation: https://cloud.google.com/composer/

#### ![Logo](https://www.google.com/images/icons/product/compute_engine-16.png) Compute Engine API - compute v1

Creates and runs virtual machines on Google Cloud Platform.

Official API documentation: https://developers.google.com/compute/docs/reference/latest/

#### Kubernetes Engine API - container v1

Builds and manages container-based applications, powered by the open source Kubernetes technology.

Official API documentation: https://cloud.google.com/container-engine/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Content API for Shopping - content v2.1

Manages product items, inventory, and Merchant Center accounts for Google Shopping.

Official API documentation: https://developers.google.com/shopping-content

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) CustomSearch API - customsearch v1

Searches over a website or collection of websites

Official API documentation: https://developers.google.com/custom-search/v1/using_rest

#### Cloud Dataproc API - dataproc v1

Manages Hadoop-based clusters and jobs on Google Cloud Platform.

Official API documentation: https://cloud.google.com/dataproc/

#### Cloud Datastore API - datastore v1

Accesses the schemaless NoSQL database to provide fully managed, robust, scalable storage for your application.


Official API documentation: https://cloud.google.com/datastore/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Cloud Deployment Manager API - deploymentmanager v2

Declares, configures, and deploys complex solutions on Google Cloud Platform.

Official API documentation: https://cloud.google.com/deployment-manager/

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) DCM/DFA Reporting And Trafficking API - dfareporting v3.3

Manages your DoubleClick Campaign Manager ad campaigns and reports.

Official API documentation: https://developers.google.com/doubleclick-advertisers/

#### Dialogflow API - dialogflow v2

Builds conversational interfaces (for example, chatbots, and voice-powered apps and devices).

Official API documentation: https://cloud.google.com/dialogflow/

#### Digital Asset Links API - digitalassetlinks v1

Discovers relationships between online assets such as websites or mobile apps.

Official API documentation: https://developers.google.com/digital-asset-links/

#### API Discovery Service - discovery v1

Provides information about other Google APIs, such as what APIs are available, the resource, and method details for each API.

Official API documentation: https://developers.google.com/discovery/

#### Cloud Data Loss Prevention (DLP) API - dlp v2

Provides methods for detection, risk analysis, and de-identification of privacy-sensitive fragments in text, images, and Google Cloud Platform storage repositories.

Official API documentation: https://cloud.google.com/dlp/docs/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Cloud DNS API - dns v1

Configures and serves authoritative DNS records.

Official API documentation: https://developers.google.com/cloud-dns

#### Google Docs API - docs v1

Reads and writes Google Docs documents.

Official API documentation: https://developers.google.com/docs/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) DoubleClick Bid Manager API - doubleclickbidmanager v1

API for viewing and managing your reports in DoubleClick Bid Manager.

Official API documentation: https://developers.google.com/bid-manager/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) DoubleClick Search API - doubleclicksearch v2

Reports and modifies your advertising data in DoubleClick Search (for example, campaigns, ad groups, keywords, and conversions).

Official API documentation: https://developers.google.com/doubleclick-search/

#### ![Logo](https://ssl.gstatic.com/docs/doclist/images/drive_icon_16.png) Drive API - drive v2

Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.

Official API documentation: https://developers.google.com/drive/

#### ![Logo](https://ssl.gstatic.com/docs/doclist/images/drive_icon_16.png) Drive API - drive v3

Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.

Official API documentation: https://developers.google.com/drive/

#### Drive Activity API - driveactivity v2

Provides a historical view of activity in Google Drive.

Official API documentation: https://developers.google.com/drive/activity/

#### Firebase Cloud Messaging API - fcm v1

FCM send API that provides a cross-platform messaging solution to reliably deliver messages at no cost.

Official API documentation: https://firebase.google.com/docs/cloud-messaging

#### Cloud Filestore API - file v1

The Cloud Filestore API is used for creating and managing cloud file servers.

Official API documentation: https://cloud.google.com/filestore/

#### Firebase Dynamic Links API - firebasedynamiclinks v1

Programmatically creates and manages Firebase Dynamic Links.

Official API documentation: https://firebase.google.com/docs/dynamic-links/

#### Firebase Rules API - firebaserules v1

Creates and manages rules that determine when a Firebase Rules-enabled service should permit a request.


Official API documentation: https://firebase.google.com/docs/storage/security

#### Cloud Firestore API - firestore v1

Accesses the NoSQL document database built for automatic scaling, high performance, and ease of application development.


Official API documentation: https://cloud.google.com/firestore

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Fitness - fitness v1

Stores and accesses user data in the fitness store from apps on any platform.

Official API documentation: https://developers.google.com/fit/rest/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Fusion Tables API - fusiontables v1

API for working with Fusion Tables data.

Official API documentation: https://developers.google.com/fusiontables

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Fusion Tables API - fusiontables v2

API for working with Fusion Tables data.

Official API documentation: https://developers.google.com/fusiontables

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Play Game Services API - games v1

The API for Google Play Game Services.

Official API documentation: https://developers.google.com/games/services/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Play Game Services Publishing API - gamesConfiguration v1configuration

The Publishing API for Google Play Game Services.

Official API documentation: https://developers.google.com/games/services

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Play Game Services Management API - gamesManagement v1management

The Management API for Google Play Game Services.

Official API documentation: https://developers.google.com/games/services

#### Genomics API - genomics v1

Uploads, processes, queries, and searches Genomics data in the cloud.

Official API documentation: https://cloud.google.com/genomics

#### ![Logo](https://www.google.com/images/icons/product/googlemail-16.png) Gmail API - gmail v1

Access Gmail mailboxes including sending user email.

Official API documentation: https://developers.google.com/gmail/api/

#### ![Logo](https://www.google.com/images/icons/product/discussions-16.gif) Groups Migration API - groupsmigration v1

Groups Migration Api.

Official API documentation: https://developers.google.com/google-apps/groups-migration/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Groups Settings API - groupssettings v1

Manages permission levels and related settings of a group.

Official API documentation: https://developers.google.com/google-apps/groups-settings/get_started

#### Identity and Access Management (IAM) API - iam v1

Manages identity and access control for Google Cloud Platform resources, including the creation of service accounts, which you can use to authenticate to Google and make API calls.

Official API documentation: https://cloud.google.com/iam/

#### IAM Service Account Credentials API - iamcredentials v1

Creates short-lived, limited-privilege credentials for IAM service accounts.

Official API documentation: https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials

#### Cloud Identity-Aware Proxy API - iap v1

Controls access to cloud applications running on Google Cloud Platform.

Official API documentation: https://cloud.google.com/iap

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Identity Toolkit API - identitytoolkit v3

Help the third party sites to implement federated login.

Official API documentation: https://developers.google.com/identity-toolkit/v3/

#### Indexing API - indexing v3

Notifies Google when your web pages change.

Official API documentation: https://developers.google.com/search/apis/indexing-api/

#### Cloud Talent Solution API - jobs v2

Cloud Talent Solution provides the capability to create, read, update, and delete job postings, as well as search jobs based on keywords and filters.


Official API documentation: https://cloud.google.com/talent-solution/job-search/docs/

#### Cloud Talent Solution API - jobs v3

Cloud Talent Solution provides the capability to create, read, update, and delete job postings, as well as search jobs based on keywords and filters.


Official API documentation: https://cloud.google.com/talent-solution/job-search/docs/

#### Knowledge Graph Search API - kgsearch v1

Searches the Google Knowledge Graph for entities.

Official API documentation: https://developers.google.com/knowledge-graph/

#### Cloud Natural Language API - language v1

Provides natural language understanding technologies, such as sentiment analysis, entity recognition, entity sentiment analysis, and other text annotations, to developers.

Official API documentation: https://cloud.google.com/natural-language/

#### Library Agent API - libraryagent v1

A simple Google Example Library API.

Official API documentation: https://cloud.google.com/docs/quota

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Enterprise License Manager API - licensing v1

Views and manages licenses for your domain.

Official API documentation: https://developers.google.com/google-apps/licensing/

#### Stackdriver Logging API - logging v2

Writes log entries and manages your Stackdriver Logging configuration. The table entries below are presented in alphabetical order, not in order of common use. For explanations of the concepts found in the table entries, read the Stackdriver Logging documentation.

Official API documentation: https://cloud.google.com/logging/docs/

#### Manufacturer Center API - manufacturers v1

Public API for managing Manufacturer Center related data.

Official API documentation: https://developers.google.com/manufacturers/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Mirror API - mirror v1

Interacts with Glass users via the timeline.

Official API documentation: https://developers.google.com/glass

#### Cloud Machine Learning Engine - ml v1

An API to enable creating and using machine learning models.

Official API documentation: https://cloud.google.com/ml/

#### Stackdriver Monitoring API - monitoring v3

Manages your Stackdriver Monitoring data and configurations. Most projects must be associated with a Stackdriver account, with a few exceptions as noted on the individual method pages. The table entries below are presented in alphabetical order, not in order of common use. For explanations of the concepts found in the table entries, read the Stackdriver Monitoring documentation.

Official API documentation: https://cloud.google.com/monitoring/api/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google OAuth2 API - oauth2 v2

Obtains end-user authorization grants for use with other Google APIs.

Official API documentation: https://developers.google.com/accounts/docs/OAuth2

#### Cloud OS Login API - oslogin v1

You can use OS Login to manage access to your VM instances using IAM roles. For more information, read [OS Login](/compute/docs/oslogin/).

Official API documentation: https://cloud.google.com/compute/docs/oslogin/

#### ![Logo](https://www.google.com/images/icons/product/pagespeed-16.png) PageSpeed Insights API - pagespeedonline v5

Analyzes the performance of a web page and provides tailored suggestions to make that page faster.

Official API documentation: https://developers.google.com/speed/docs/insights/v5/get-started

#### People API - people v1

Provides access to information about profiles and contacts.

Official API documentation: https://developers.google.com/people/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Play Custom App Publishing API - playcustomapp v1

An API to publish custom Android apps.

Official API documentation: https://developers.google.com/android/work/play/custom-app-api

#### Google+ API - plus v1

Builds on top of the Google+ platform.

Official API documentation: https://developers.google.com/+/api/

#### Google+ Domains API - plusDomains v1

Builds on top of the Google+ platform for Google Apps Domains.

Official API documentation: https://developers.google.com/+/domains/

#### Poly API - poly v1

The Poly API provides read access to assets hosted on <a href="https://poly.google.com">poly.google.com</a> to all, and upload access to <a href="https://poly.google.com">poly.google.com</a> for whitelisted accounts.


Official API documentation: https://developers.google.com/poly/

#### Cloud Pub/Sub API - pubsub v1

Provides reliable, many-to-many, asynchronous messaging between applications.


Official API documentation: https://cloud.google.com/pubsub/docs

#### Google Cloud Memorystore for Redis API - redis v1

Creates and manages Redis instances on the Google Cloud Platform.

Official API documentation: https://cloud.google.com/memorystore/docs/redis/

#### Remote Build Execution API - remotebuildexecution v2

Supplies a Remote Execution API service for tools such as bazel.

Official API documentation: https://cloud.google.com/remote-build-execution/docs/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Enterprise Apps Reseller API - reseller v1

Creates and manages your customers and their subscriptions.

Official API documentation: https://developers.google.com/google-apps/reseller/

#### Cloud Run API - run v1

Deploy and manage user provided container images that scale automatically based on HTTP traffic.

Official API documentation: https://cloud.google.com/run/

#### Cloud Runtime Configuration API - runtimeconfig v1

The Runtime Configurator allows you to dynamically configure and expose variables through Google Cloud Platform. In addition, you can also set Watchers and Waiters that will watch for changes to your data and return based on certain conditions.

Official API documentation: https://cloud.google.com/deployment-manager/runtime-configurator/

#### Safe Browsing API - safebrowsing v4

Enables client applications to check web resources (most commonly URLs) against Google-generated lists of unsafe web resources.

Official API documentation: https://developers.google.com/safe-browsing/

#### Apps Script API - script v1

Manages and executes Google Apps Script projects.


Official API documentation: https://developers.google.com/apps-script/api/

#### Google Search Console URL Testing Tools API - searchconsole v1

Provides tools for running validation tests against single URLs

Official API documentation: https://developers.google.com/webmaster-tools/search-console-api/

#### Cloud Security Command Center API - securitycenter v1

Cloud Security Command Center API provides access to temporal views of assets and findings within an organization.

Official API documentation: https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview

#### Service Broker API - servicebroker v1

The Google Cloud Platform Service Broker API provides Google hosted
implementation of the Open Service Broker API
(https://www.openservicebrokerapi.org/).


Official API documentation: https://cloud.google.com/kubernetes-engine/docs/concepts/add-on/service-broker

#### Service Consumer Management API - serviceconsumermanagement v1

Manages the service consumers of a Service Infrastructure service.

Official API documentation: https://cloud.google.com/service-consumer-management/docs/overview

#### Service Control API - servicecontrol v1

Provides control plane functionality to managed services, such as logging, monitoring, and status checks.

Official API documentation: https://cloud.google.com/service-control/

#### Service Management API - servicemanagement v1

Google Service Management allows service producers to publish their services on Google Cloud Platform so that they can be discovered and used by service consumers.

Official API documentation: https://cloud.google.com/service-management/

#### Service Networking API - servicenetworking v1

Provides automatic management of network configurations necessary for certain services.

Official API documentation: https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started

#### Service Usage API - serviceusage v1

Enables services that service consumers want to use on Google Cloud Platform, lists the available or enabled services, or disables services that service consumers no longer use.

Official API documentation: https://cloud.google.com/service-usage/

#### Google Sheets API - sheets v4

Reads and writes Google Sheets.

Official API documentation: https://developers.google.com/sheets/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Site Verification API - siteVerification v1

Verifies ownership of websites or domains with Google.

Official API documentation: https://developers.google.com/site-verification/

#### Google Slides API - slides v1

Reads and writes Google Slides presentations.

Official API documentation: https://developers.google.com/slides/

#### Cloud Source Repositories API - sourcerepo v1

Accesses source code repositories hosted by Google.

Official API documentation: https://cloud.google.com/source-repositories/docs/apis

#### Cloud Spanner API - spanner v1

Cloud Spanner is a managed, mission-critical, globally consistent and scalable relational database service.

Official API documentation: https://cloud.google.com/spanner/

#### Cloud Speech-to-Text API - speech v1

Converts audio to text by applying powerful neural network models.

Official API documentation: https://cloud.google.com/speech-to-text/docs/quickstart-protocol

#### ![Logo](https://www.google.com/images/icons/product/cloud_storage-16.png) Cloud Storage JSON API - storage v1

Stores and retrieves potentially large, immutable data objects.

Official API documentation: https://developers.google.com/storage/docs/json_api/

#### Storage Transfer API - storagetransfer v1

Transfers data from external data sources to a Google Cloud Storage bucket or between Google Cloud Storage buckets.

Official API documentation: https://cloud.google.com/storage-transfer/docs

#### Street View Publish API - streetviewpublish v1

Publishes 360 photos to Google Maps, along with position, orientation, and connectivity metadata. Apps can offer an interface for positioning, connecting, and uploading user-generated Street View images.


Official API documentation: https://developers.google.com/streetview/publish/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Surveys API - surveys v2

Creates and conducts surveys, lists the surveys that an authenticated user owns, and retrieves survey results and information about specified surveys.

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Tag Manager API - tagmanager v1

Accesses Tag Manager accounts and containers.

Official API documentation: https://developers.google.com/tag-manager/api/v1/

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Tag Manager API - tagmanager v2

Accesses Tag Manager accounts and containers.

Official API documentation: https://developers.google.com/tag-manager/api/v2/

#### ![Logo](https://www.google.com/images/icons/product/tasks-16.png) Tasks API - tasks v1

Manages your tasks and task lists.

Official API documentation: https://developers.google.com/google-apps/tasks/firstapp

#### Cloud Testing API - testing v1

Allows developers to run automated tests for their mobile applications on Google infrastructure.

Official API documentation: https://developers.google.com/cloud-test-lab/

#### Cloud Text-to-Speech API - texttospeech v1

Synthesizes natural-sounding speech by applying powerful neural network models.

Official API documentation: https://cloud.google.com/text-to-speech/

#### Cloud TPU API - tpu v1

TPU API provides customers with access to Google TPU technology.

Official API documentation: https://cloud.google.com/tpu/

#### ![Logo](https://www.google.com/images/icons/product/translate-16.png) Google Cloud Translation API - translate v2

The Google Cloud Translation API lets websites and programs integrate with
    Google Translate programmatically.

Official API documentation: https://code.google.com/apis/language/translate/v2/getting_started.html

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) URL Shortener API - urlshortener v1

Lets you create, inspect, and manage goo.gl short URLs

Official API documentation: https://developers.google.com/url-shortener/v1/getting_started

#### G Suite Vault API - vault v1

Archiving and eDiscovery for G Suite.

Official API documentation: https://developers.google.com/vault

#### Cloud Video Intelligence API - videointelligence v1

Detects objects, explicit content, and scene changes in videos. It also specifies the region for annotation and transcribes speech to text. Supports both asynchronous API and streaming API.

Official API documentation: https://cloud.google.com/video-intelligence/docs/

#### Cloud Vision API - vision v1

Integrates Google Vision features, including image labeling, face, logo, and landmark detection, optical character recognition (OCR), and detection of explicit content, into applications.

Official API documentation: https://cloud.google.com/vision/

#### ![Logo](https://www.google.com/images/icons/feature/font_api-16.png) Google Fonts Developer API - webfonts v1

Accesses the metadata for all families served by Google Fonts, providing a list of families currently available (including available styles and a list of supported script subsets).

Official API documentation: https://developers.google.com/fonts/docs/developer_api

#### ![Logo](https://www.google.com/images/icons/product/webmaster_tools-16.png) Search Console API - webmasters v3

View Google Search Console data for your verified sites.

Official API documentation: https://developers.google.com/webmaster-tools/

#### Web Security Scanner API - websecurityscanner v1

Scans your Compute and App Engine apps for common web vulnerabilities.

Official API documentation: https://cloud.google.com/security-scanner/

#### ![Logo](https://www.google.com/images/icons/product/youtube-16.png) YouTube Data API - youtube v3

Supports core YouTube features, such as uploading videos, creating and managing playlists, searching for content, and much more.

Official API documentation: https://developers.google.com/youtube/v3

#### YouTube Analytics API - youtubeAnalytics v1

Retrieves your YouTube Analytics data.

Official API documentation: https://developers.google.com/youtube/analytics

#### YouTube Analytics API - youtubeAnalytics v2

Retrieves your YouTube Analytics data.

Official API documentation: https://developers.google.com/youtube/analytics

#### YouTube Reporting API - youtubereporting v1

Schedules reporting jobs containing your YouTube Analytics data and downloads the resulting bulk data reports in the form of CSV files.

Official API documentation: https://developers.google.com/youtube/reporting/v1/reports/

