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

## Available Google APIs

The following is a list of APIs that are currently available inside this
package.

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Compute Engine Autoscaler API - autoscaler v1beta2

The Google Compute Engine Autoscaler API provides autoscaling for groups of Cloud VMs.

Official API documentation: http://developers.google.com/compute/docs/autoscaler

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Cloud Monitoring API - cloudmonitoring v2beta1

API for accessing Google Cloud and API monitoring data.

Official API documentation: https://developers.google.com/cloud-monitoring/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Container Engine API - container v1beta1

The Google Container Engine API is used for building and managing container based applications, powered by the open source Kubernetes technology.

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Datastore API - datastore v1beta2

API for accessing Google Cloud Datastore.

Official API documentation: https://developers.google.com/datastore/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud DNS API - dns v1beta1

The Google Cloud DNS API provides services for configuring and serving authoritative DNS records.

Official API documentation: https://developers.google.com/cloud-dns

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Genomics API - genomics v1beta

Provides access to Genomics data.

Official API documentation: https://developers.google.com/genomics/v1beta/reference

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Genomics API - genomics v1beta2

Provides access to Genomics data.

Official API documentation: https://developers.google.com/genomics/v1beta2/reference

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Deployment Manager API - manager v1beta2

The Deployment Manager API allows users to declaratively configure, deploy and run complex solutions on the Google Cloud Platform.

Official API documentation: https://developers.google.com/deployment-manager/

#### ![Logo](https://www.google.com/images/icons/product/search-16.gif) Cloud Pub/Sub API - pubsub v1beta1

Provides reliable, many-to-many, asynchronous messaging between applications.

Official API documentation: https://developers.google.com/pubsub/v1beta1

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Compute Engine Instance Group Manager API - replicapool v1beta2

The Google Compute Engine Instance Group Manager API provides groups of homogenous Compute Engine Instances.

Official API documentation: https://developers.google.com/compute/docs/instance-groups/manager/v1beta2

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Compute Engine Instance Group Updater API - replicapoolupdater v1beta1

The Google Compute Engine Instance Group Updater API provides services for updating groups of Compute Engine Instances.

Official API documentation: 

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Resource Views API - resourceviews v1beta1

The Resource View API allows users to create and manage logical sets of Google Compute Engine instances.

Official API documentation: https://developers.google.com/compute/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Resource Views API - resourceviews v1beta2

The Resource View API allows users to create and manage logical sets of Google Compute Engine instances.

Official API documentation: https://developers.google.com/compute/

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Cloud SQL Administration API - sqladmin v1beta3

API for Cloud SQL database instance management.

Official API documentation: https://developers.google.com/cloud-sql/docs/admin-api/

#### ![Logo](http://www.google.com/images/icons/product/app_engine-16.png) TaskQueue API - taskqueue v1beta2

Lets you access a Google App Engine Pull Task Queue over REST.

Official API documentation: https://developers.google.com/appengine/docs/python/taskqueue/rest

