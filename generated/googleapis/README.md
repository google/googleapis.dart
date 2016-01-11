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

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) Ad Exchange Buyer API - adexchangebuyer v1.3

Accesses your bidding-account information, submits creatives for validation, finds available direct deals, and retrieves performance reports.

Official API documentation: https://developers.google.com/ad-exchange/buyer-rest

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) Ad Exchange Buyer API - adexchangebuyer v1.4

Accesses your bidding-account information, submits creatives for validation, finds available direct deals, and retrieves performance reports.

Official API documentation: https://developers.google.com/ad-exchange/buyer-rest

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) Ad Exchange Seller API - adexchangeseller v1.1

Gives Ad Exchange seller users access to their inventory and the ability to generate reports

Official API documentation: https://developers.google.com/ad-exchange/seller-rest/

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) Ad Exchange Seller API - adexchangeseller v2.0

Gives Ad Exchange seller users access to their inventory and the ability to generate reports

Official API documentation: https://developers.google.com/ad-exchange/seller-rest/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Admin Data Transfer API - admin datatransfer_v1

Admin Data Transfer API lets you transfer user data from one user to another.

Official API documentation: https://developers.google.com/admin-sdk/data-transfer/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Admin Directory API - admin directory_v1

The Admin SDK Directory API lets you view and manage enterprise resources such as users and groups, administrative notifications, security features, and more.

Official API documentation: https://developers.google.com/admin-sdk/directory/

#### ![Logo](https://www.google.com/images/icons/product/googlemail-16.png) Email Migration API v2 - admin email_migration_v2

Email Migration API lets you migrate emails of users to Google backends.

Official API documentation: https://developers.google.com/admin-sdk/email-migration/v2/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Admin Reports API - admin reports_v1

Allows the administrators of Google Apps customers to fetch reports about the usage, collaboration, security and risk for their users.

Official API documentation: https://developers.google.com/admin-sdk/reports/

#### ![Logo](https://www.google.com/images/icons/product/adsense-16.png) AdSense Management API - adsense v1.4

Gives AdSense publishers access to their inventory and the ability to generate reports

Official API documentation: https://developers.google.com/adsense/management/

#### ![Logo](https://www.google.com/images/icons/product/adsense-16.png) AdSense Host API - adsensehost v4.1

Gives AdSense Hosts access to report generation, ad code generation, and publisher management capabilities.

Official API documentation: https://developers.google.com/adsense/host/

#### ![Logo](https://www.google.com/images/icons/product/analytics-16.png) Google Analytics API - analytics v3

View and manage your Google Analytics data

Official API documentation: https://developers.google.com/analytics/

#### ![Logo](https://www.google.com/images/icons/product/android-16.png) Google Play EMM API - androidenterprise v1

Allows MDMs/EMMs and enterprises to manage the deployment of apps to Android for Work users.

Official API documentation: https://developers.google.com/android/work/play/emm-api

#### ![Logo](https://www.google.com/images/icons/product/android-16.png) Google Play Developer API - androidpublisher v2

Lets Android application developers access their Google Play accounts.

Official API documentation: https://developers.google.com/android-publisher

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Apps Activity API - appsactivity v1

Provides a historical view of activity.

Official API documentation: https://developers.google.com/google-apps/activity/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google App State API - appstate v1

The Google App State API.

Official API documentation: https://developers.google.com/games/services/web/api/states

#### ![Logo](https://www.google.com/images/icons/product/search-16.gif) BigQuery API - bigquery v2

A data platform for customers to create, manage, share and query data.

Official API documentation: https://cloud.google.com/bigquery/

#### ![Logo](https://www.google.com/images/icons/product/blogger-16.png) Blogger API - blogger v3

API for access to the data within Blogger.

Official API documentation: https://developers.google.com/blogger/docs/3.0/getting_started

#### ![Logo](https://www.google.com/images/icons/product/ebooks-16.png) Books API - books v1

Lets you search for books and manage your Google Books library.

Official API documentation: https://developers.google.com/books/docs/v1/getting_started

#### ![Logo](http://www.google.com/images/icons/product/calendar-16.png) Calendar API - calendar v3

Lets you manipulate events and other calendar data.

Official API documentation: https://developers.google.com/google-apps/calendar/firstapp

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Civic Information API - civicinfo v2

An API for accessing civic information.

Official API documentation: https://developers.google.com/civic-information

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Classroom API - classroom v1

Google Classroom API

Official API documentation: https://developers.google.com/classroom/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Billing API - cloudbilling v1

Retrieves Google Developers Console billing accounts and associates them with projects.

Official API documentation: https://cloud.google.com/billing/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Debugger API - clouddebugger v2

Lets you examine the stack and variables of your running application without stopping or slowing it down.

Official API documentation: https://cloud.google.com/tools/cloud-debugger

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Network Performance Monitoring API - cloudlatencytest v2

A Test API to report latency data.

Official API documentation: 

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Trace API - cloudtrace v1

The Cloud Trace API allows you to send traces to and retrieve traces from Google Cloud Trace.

Official API documentation: https://cloud.google.com/tools/cloud-trace

#### ![Logo](https://www.google.com/images/icons/product/compute_engine-16.png) Compute Engine API - compute v1

API for the Google Compute Engine service.

Official API documentation: https://developers.google.com/compute/docs/reference/latest/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Container Engine API - container v1

The Google Container Engine API is used for building and managing container based applications, powered by the open source Kubernetes technology.

Official API documentation: https://cloud.google.com/container-engine/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Content API for Shopping - content v2

Manage product items, inventory, and Merchant Center accounts for Google Shopping.

Official API documentation: https://developers.google.com/shopping-content

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Content API for Shopping - content v2sandbox

Manage product items, inventory, and Merchant Center accounts for Google Shopping.

Official API documentation: https://developers.google.com/shopping-content

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Maps Coordinate API - coordinate v1

Lets you view and manage jobs in a Coordinate team.

Official API documentation: https://developers.google.com/coordinate/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) CustomSearch API - customsearch v1

Lets you search over a website or collection of websites

Official API documentation: https://developers.google.com/custom-search/v1/using_rest

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Dataproc API - dataproc v1

An API for managing Hadoop-based clusters and jobs on Google Cloud Platform.

Official API documentation: https://cloud.google.com/dataproc/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Deployment Manager API - deploymentmanager v2

The Deployment Manager API allows users to declaratively configure, deploy and run complex solutions on the Google Cloud Platform.

Official API documentation: https://cloud.google.com/deployment-manager/

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) DFA Reporting API - dfareporting v1.3

Lets you create, run and download reports.

Official API documentation: https://developers.google.com/doubleclick-advertisers/reporting/

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) DCM/DFA Reporting And Trafficking API - dfareporting v2.0

Manage your DoubleClick Campaign Manager ad campaigns and reports.

Official API documentation: https://developers.google.com/doubleclick-advertisers/reporting/

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) DCM/DFA Reporting And Trafficking API - dfareporting v2.1

Manage your DoubleClick Campaign Manager ad campaigns and reports.

Official API documentation: https://developers.google.com/doubleclick-advertisers/reporting/

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) DCM/DFA Reporting And Trafficking API - dfareporting v2.2

Manage your DoubleClick Campaign Manager ad campaigns and reports.

Official API documentation: https://developers.google.com/doubleclick-advertisers/reporting/

#### ![Logo](https://www.google.com/images/icons/product/doubleclick-16.gif) DCM/DFA Reporting And Trafficking API - dfareporting v2.3

Manage your DoubleClick Campaign Manager ad campaigns and reports.

Official API documentation: https://developers.google.com/doubleclick-advertisers/reporting/

#### ![Logo](http://www.google.com/images/icons/feature/filing_cabinet_search-g16.png) APIs Discovery Service - discovery v1

Lets you discover information about other Google APIs, such as what APIs are available, the resource and method details for each API.

Official API documentation: https://developers.google.com/discovery/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud DNS API - dns v1

The Google Cloud DNS API provides services for configuring and serving authoritative DNS records.

Official API documentation: https://developers.google.com/cloud-dns

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) DoubleClick Bid Manager API - doubleclickbidmanager v1

API for viewing and managing your reports in DoubleClick Bid Manager.

Official API documentation: https://developers.google.com/bid-manager/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) DoubleClick Search API - doubleclicksearch v2

Report and modify your advertising data in DoubleClick Search (for example, campaigns, ad groups, keywords, and conversions).

Official API documentation: https://developers.google.com/doubleclick-search/

#### ![Logo](https://ssl.gstatic.com/docs/doclist/images/drive_icon_16.png) Drive API - drive v2

The API to interact with Drive.

Official API documentation: https://developers.google.com/drive/

#### ![Logo](https://ssl.gstatic.com/docs/doclist/images/drive_icon_16.png) Drive API - drive v3

The API to interact with Drive.

Official API documentation: https://developers.google.com/drive/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Fitness - fitness v1

Google Fit API

Official API documentation: https://developers.google.com/fit/rest/

#### ![Logo](https://www.google.com/images/icons/product/freebase-16.png) Freebase Search - freebase v1

Find Freebase entities using textual queries and other constraints.

Official API documentation: https://developers.google.com/freebase/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Fusion Tables API - fusiontables v1

API for working with Fusion Tables data.

Official API documentation: https://developers.google.com/fusiontables

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Fusion Tables API - fusiontables v2

API for working with Fusion Tables data.

Official API documentation: https://developers.google.com/fusiontables

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Play Game Services API - games v1

The API for Google Play Game Services.

Official API documentation: https://developers.google.com/games/services/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Play Game Services Publishing API - gamesConfiguration v1configuration

The Publishing API for Google Play Game Services.

Official API documentation: https://developers.google.com/games/services

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Play Game Services Management API - gamesManagement v1management

The Management API for Google Play Game Services.

Official API documentation: https://developers.google.com/games/services

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Genomics API - genomics v1

An API to store, process, explore, and share genomic data. It supports reference-based alignements, genetic variants, and reference genomes. This API provides an implementation of the Global Alliance for Genomics and Health (GA4GH) v0.5.1 API as well as several extensions.

Official API documentation: 

#### ![Logo](https://www.google.com/images/icons/product/googlemail-16.png) Gmail API - gmail v1

The Gmail REST API.

Official API documentation: https://developers.google.com/gmail/api/

#### ![Logo](http://www.google.com/images/icons/product/discussions-16.gif) Groups Migration API - groupsmigration v1

Groups Migration Api.

Official API documentation: https://developers.google.com/google-apps/groups-migration/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Groups Settings API - groupssettings v1

Lets you manage permission levels and related settings of a group.

Official API documentation: https://developers.google.com/google-apps/groups-settings/get_started

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Identity Toolkit API - identitytoolkit v3

Help the third party sites to implement federated login.

Official API documentation: https://developers.google.com/identity-toolkit/v3/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Knowledge Graph Search API - kgsearch v1

Knowledge Graph Search API allows developers to search the Google Knowledge Graph for entities.

Official API documentation: https://developers.google.com/knowledge-graph/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Enterprise License Manager API - licensing v1

Licensing API to view and manage license for your domain.

Official API documentation: https://developers.google.com/google-apps/licensing/

#### ![Logo](https://www.google.com/images/icons/product/maps_engine-16.png) Google Maps Engine API - mapsengine v1

The Google Maps Engine API allows developers to store and query geospatial vector and raster data.

Official API documentation: https://developers.google.com/maps-engine/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Mirror API - mirror v1

API for interacting with Glass users via the timeline.

Official API documentation: https://developers.google.com/glass

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google OAuth2 API - oauth2 v2

Lets you access OAuth2 protocol related APIs.

Official API documentation: https://developers.google.com/accounts/docs/OAuth2

#### ![Logo](https://www.google.com/images/icons/product/pagespeed-16.png) PageSpeed Insights API - pagespeedonline v1

Lets you analyze the performance of a web page and get tailored suggestions to make that page faster.

Official API documentation: https://developers.google.com/speed/docs/insights/v1/getting_started

#### ![Logo](https://www.google.com/images/icons/product/pagespeed-16.png) PageSpeed Insights API - pagespeedonline v2

Lets you analyze the performance of a web page and get tailored suggestions to make that page faster.

Official API documentation: https://developers.google.com/speed/docs/insights/v2/getting-started

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Partners API - partners v2

Lets advertisers search certified companies and create contact leads with them, and also audits the usage of clients.

Official API documentation: https://developers.google.com/partners/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Play Movies Partner API - playmoviespartner v1

Lets Google Play Movies Partners get the delivery status of their titles.

Official API documentation: https://developers.google.com/playmoviespartner/

#### ![Logo](http://www.google.com/images/icons/product/gplus-16.png) Google+ API - plus v1

The Google+ API enables developers to build on top of the Google+ platform.

Official API documentation: https://developers.google.com/+/api/

#### ![Logo](http://www.google.com/images/icons/product/gplus-16.png) Google+ Domains API - plusDomains v1

The Google+ API enables developers to build on top of the Google+ platform.

Official API documentation: https://developers.google.com/+/domains/

#### ![Logo](https://www.google.com/images/icons/feature/predictionapi-16.png) Prediction API - prediction v1.6

Lets you access a cloud hosted machine learning service that makes it easy to build smart apps

Official API documentation: https://developers.google.com/prediction/docs/developer-guide

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Pub/Sub API - pubsub v1

Provides reliable, many-to-many, asynchronous messaging between applications.

Official API documentation: https://cloud.google.com/pubsub/docs

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) QPX Express API - qpxExpress v1

Lets you find the least expensive flights between an origin and a destination.

Official API documentation: http://developers.google.com/qpx-express

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Enterprise Apps Reseller API - reseller v1

Lets you create and manage your customers and their subscriptions.

Official API documentation: https://developers.google.com/google-apps/reseller/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Enterprise Apps Reseller API - reseller v1sandbox

Lets you create and manage your customers and their subscriptions.

Official API documentation: https://developers.google.com/google-apps/reseller/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Apps Script Execution API - script v1

An API for executing Google Apps Script projects.

Official API documentation: https://developers.google.com/apps-script/execution/rest/v1/run

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Site Verification API - siteVerification v1

Lets you programatically verify ownership of websites or domains with Google.

Official API documentation: https://developers.google.com/site-verification/

#### ![Logo](https://www.google.com/images/icons/product/cloud_storage-16.png) Cloud Storage JSON API - storage v1

Lets you store and retrieve potentially-large, immutable data objects.

Official API documentation: https://developers.google.com/storage/docs/json_api/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Storage Transfer API - storagetransfer v1

Transfers data from external data sources to a Google Cloud Storage bucket or between Google Cloud Storage buckets.

Official API documentation: https://cloud.google.com/storage/transfer

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Tag Manager API - tagmanager v1

API for accessing Tag Manager accounts and containers.

Official API documentation: https://developers.google.com/tag-manager/api/v1/

#### ![Logo](https://www.google.com/images/icons/product/tasks-16.png) Tasks API - tasks v1

Lets you manage your tasks and task lists.

Official API documentation: https://developers.google.com/google-apps/tasks/firstapp

#### ![Logo](https://www.google.com/images/icons/product/translate-16.png) Translate API - translate v2

Lets you translate text from one language to another

Official API documentation: https://developers.google.com/translate/v2/using_rest

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) URL Shortener API - urlshortener v1

Lets you create, inspect, and manage goo.gl short URLs

Official API documentation: https://developers.google.com/url-shortener/v1/getting_started

#### ![Logo](http://www.google.com/images/icons/feature/font_api-16.png) Google Fonts Developer API - webfonts v1

The Google Fonts Developer API.

Official API documentation: https://developers.google.com/fonts/docs/developer_api

#### ![Logo](https://www.google.com/images/icons/product/webmaster_tools-16.png) Search Console API - webmasters v3

Lets you view Google Search Console data for your verified sites.

Official API documentation: https://developers.google.com/webmaster-tools/

#### ![Logo](https://www.google.com/images/icons/product/youtube-16.png) YouTube Data API - youtube v3

Programmatic access to YouTube features.

Official API documentation: https://developers.google.com/youtube/v3

#### ![Logo](https://www.google.com/images/icons/product/youtube-16.png) YouTube Analytics API - youtubeAnalytics v1

Retrieve your YouTube Analytics reports.

Official API documentation: http://developers.google.com/youtube/analytics/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) YouTube Reporting API - youtubereporting v1

An API to schedule reporting jobs and download the resulting bulk data reports about YouTube channels, videos etc. in the form of CSV files.

Official API documentation: https://developers.google.com/youtube/reporting/v1/reports/

