// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// BigQuery API - v2
///
/// A data platform for customers to create, manage, share and query data.
///
/// For more information, see <https://cloud.google.com/bigquery/>
///
/// Create an instance of [BigqueryApi] to access these resources:
///
/// - [DatasetsResource]
/// - [JobsResource]
/// - [ModelsResource]
/// - [ProjectsResource]
/// - [RoutinesResource]
/// - [RowAccessPoliciesResource]
/// - [TabledataResource]
/// - [TablesResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// A data platform for customers to create, manage, share and query data.
class BigqueryApi {
  /// View and manage your data in Google BigQuery and see the email address for
  /// your Google Account
  static const bigqueryScope = 'https://www.googleapis.com/auth/bigquery';

  /// Insert data into Google BigQuery
  static const bigqueryInsertdataScope =
      'https://www.googleapis.com/auth/bigquery.insertdata';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// Manage your data and permissions in Cloud Storage and see the email
  /// address for your Google Account
  static const devstorageFullControlScope =
      'https://www.googleapis.com/auth/devstorage.full_control';

  /// View your data in Google Cloud Storage
  static const devstorageReadOnlyScope =
      'https://www.googleapis.com/auth/devstorage.read_only';

  /// Manage your data in Cloud Storage and see the email address of your Google
  /// Account
  static const devstorageReadWriteScope =
      'https://www.googleapis.com/auth/devstorage.read_write';

  final commons.ApiRequester _requester;

  DatasetsResource get datasets => DatasetsResource(_requester);
  JobsResource get jobs => JobsResource(_requester);
  ModelsResource get models => ModelsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  RoutinesResource get routines => RoutinesResource(_requester);
  RowAccessPoliciesResource get rowAccessPolicies =>
      RowAccessPoliciesResource(_requester);
  TabledataResource get tabledata => TabledataResource(_requester);
  TablesResource get tables => TablesResource(_requester);

  BigqueryApi(http.Client client,
      {core.String rootUrl = 'https://bigquery.googleapis.com/',
      core.String servicePath = 'bigquery/v2/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class DatasetsResource {
  final commons.ApiRequester _requester;

  DatasetsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the dataset specified by the datasetId value.
  ///
  /// Before you can delete a dataset, you must delete all its tables, either
  /// manually or by specifying deleteContents. Immediately after deletion, you
  /// can create another dataset with the same name.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the dataset being deleted
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of dataset being deleted
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [deleteContents] - If True, delete all the tables in the dataset. If False
  /// and the dataset contains tables, the request will fail. Default is False
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String projectId,
    core.String datasetId, {
    core.bool? deleteContents,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleteContents != null) 'deleteContents': ['${deleteContents}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns the dataset specified by datasetID.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the requested dataset
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the requested dataset
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetView] - Optional. Specifies the view that determines which dataset
  /// information is returned. By default, metadata and ACL information are
  /// returned.
  /// Possible string values are:
  /// - "DATASET_VIEW_UNSPECIFIED" : The default value. Default to the FULL
  /// view.
  /// - "METADATA" : Includes metadata information for the dataset, such as
  /// location, etag, lastModifiedTime, etc.
  /// - "ACL" : Includes ACL information for the dataset, which defines dataset
  /// access for one or more entities.
  /// - "FULL" : Includes both dataset metadata and ACL information.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dataset> get(
    core.String projectId,
    core.String datasetId, {
    core.String? datasetView,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (datasetView != null) 'datasetView': [datasetView],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Dataset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new empty dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the new dataset
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dataset> insert(
    Dataset request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' + core.Uri.encodeFull('$projectId') + '/datasets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Dataset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all datasets in the specified project to which the user has been
  /// granted the READER dataset role.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the datasets to be listed
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [all] - Whether to list all datasets, including hidden ones
  ///
  /// [filter] - An expression for filtering the results of the request by
  /// label. The syntax is \"labels.\<name\>\[:\<value\>\]\". Multiple filters
  /// can be ANDed together by connecting with a space. Example:
  /// \"labels.department:receiving labels.active\". See \[Filtering datasets
  /// using
  /// labels\](/bigquery/docs/labeling-datasets#filtering_datasets_using_labels)
  /// for details.
  ///
  /// [maxResults] - The maximum number of results to return in a single
  /// response page. Leverage the page tokens to iterate through the entire
  /// collection.
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatasetList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatasetList> list(
    core.String projectId, {
    core.bool? all,
    core.String? filter,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (all != null) 'all': ['${all}'],
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' + core.Uri.encodeFull('$projectId') + '/datasets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DatasetList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates information in an existing dataset.
  ///
  /// The update method replaces the entire dataset resource, whereas the patch
  /// method only replaces fields that are provided in the submitted dataset
  /// resource. This method supports RFC5789 patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the dataset being updated
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the dataset being updated
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dataset> patch(
    Dataset request,
    core.String projectId,
    core.String datasetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Dataset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a dataset which is within time travel window based on datasetId.
  ///
  /// If a time is specified, the dataset version deleted at that time is
  /// undeleted, else the last live version is undeleted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the dataset to be undeleted
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of dataset being deleted
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dataset> undelete(
    UndeleteDatasetRequest request,
    core.String projectId,
    core.String datasetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Dataset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates information in an existing dataset.
  ///
  /// The update method replaces the entire dataset resource, whereas the patch
  /// method only replaces fields that are provided in the submitted dataset
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the dataset being updated
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the dataset being updated
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dataset> update(
    Dataset request,
    core.String projectId,
    core.String datasetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Dataset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class JobsResource {
  final commons.ApiRequester _requester;

  JobsResource(commons.ApiRequester client) : _requester = client;

  /// Requests that a job be cancelled.
  ///
  /// This call will return immediately, and the client will need to poll for
  /// the job status to see if the cancel completed successfully. Cancelled jobs
  /// may still incur costs.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the job to cancel
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [jobId] - Required. Job ID of the job to cancel
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [location] - The geographic location of the job. You must specify the
  /// location to run the job for the following scenarios: - If the location to
  /// run a job is not in the `us` or the `eu` multi-regional location - If the
  /// job's location is in a single region (for example, `us-central1`) For more
  /// information, see
  /// https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobCancelResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobCancelResponse> cancel(
    core.String projectId,
    core.String jobId, {
    core.String? location,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/jobs/' +
        core.Uri.encodeFull('$jobId') +
        '/cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return JobCancelResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Requests the deletion of the metadata of a job.
  ///
  /// This call returns when the job's metadata is deleted.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the job for which metadata is to be
  /// deleted.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [jobId] - Required. Job ID of the job for which metadata is to be deleted.
  /// If this is a parent job which has child jobs, the metadata from all child
  /// jobs will be deleted as well. Direct deletion of the metadata of child
  /// jobs is not allowed.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [location] - The geographic location of the job. Required. See details at:
  /// https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String projectId,
    core.String jobId, {
    core.String? location,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/jobs/' +
        core.Uri.encodeFull('$jobId') +
        '/delete';

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns information about a specific job.
  ///
  /// Job information is available for a six month period after creation.
  /// Requires that you're the person who ran the job, or have the Is Owner
  /// project role.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the requested job.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [jobId] - Required. Job ID of the requested job.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [location] - The geographic location of the job. You must specify the
  /// location to run the job for the following scenarios: - If the location to
  /// run a job is not in the `us` or the `eu` multi-regional location - If the
  /// job's location is in a single region (for example, `us-central1`) For more
  /// information, see
  /// https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(
    core.String projectId,
    core.String jobId, {
    core.String? location,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/jobs/' +
        core.Uri.encodeFull('$jobId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// RPC to get the results of a query job.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the query job.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [jobId] - Required. Job ID of the query job.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [formatOptions_useInt64Timestamp] - Optional. Output timestamp as usec
  /// int64. Default is false.
  ///
  /// [location] - The geographic location of the job. You must specify the
  /// location to run the job for the following scenarios: - If the location to
  /// run a job is not in the `us` or the `eu` multi-regional location - If the
  /// job's location is in a single region (for example, `us-central1`) For more
  /// information, see
  /// https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  ///
  /// [maxResults] - Maximum number of results to read.
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results.
  ///
  /// [startIndex] - Zero-based index of the starting row.
  ///
  /// [timeoutMs] - Optional: Specifies the maximum amount of time, in
  /// milliseconds, that the client is willing to wait for the query to
  /// complete. By default, this limit is 10 seconds (10,000 milliseconds). If
  /// the query is complete, the jobComplete field in the response is true. If
  /// the query has not yet completed, jobComplete is false. You can request a
  /// longer timeout period in the timeoutMs field. However, the call is not
  /// guaranteed to wait for the specified timeout; it typically returns after
  /// around 200 seconds (200,000 milliseconds), even if the query is not
  /// complete. If jobComplete is false, you can continue to wait for the query
  /// to complete by calling the getQueryResults method until the jobComplete
  /// field in the getQueryResults response is true.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetQueryResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetQueryResultsResponse> getQueryResults(
    core.String projectId,
    core.String jobId, {
    core.bool? formatOptions_useInt64Timestamp,
    core.String? location,
    core.int? maxResults,
    core.String? pageToken,
    core.String? startIndex,
    core.int? timeoutMs,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (formatOptions_useInt64Timestamp != null)
        'formatOptions.useInt64Timestamp': [
          '${formatOptions_useInt64Timestamp}'
        ],
      if (location != null) 'location': [location],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startIndex != null) 'startIndex': [startIndex],
      if (timeoutMs != null) 'timeoutMs': ['${timeoutMs}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/queries/' +
        core.Uri.encodeFull('$jobId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetQueryResultsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts a new asynchronous job.
  ///
  /// This API has two different kinds of endpoint URIs, as this method supports
  /// a variety of use cases. * The *Metadata* URI is used for most
  /// interactions, as it accepts the job configuration directly. * The *Upload*
  /// URI is ONLY for the case when you're sending both a load job configuration
  /// and a data stream together. In this case, the Upload URI accepts the job
  /// configuration and the data as two distinct multipart MIME parts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of project that will be billed for the job.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> insert(
    Job request,
    core.String projectId, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'projects/' + core.Uri.encodeFull('$projectId') + '/jobs';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/bigquery/v2/projects/' +
          core.Uri.encodeFull('$projectId') +
          '/jobs';
    } else {
      url_ = '/upload/bigquery/v2/projects/' +
          core.Uri.encodeFull('$projectId') +
          '/jobs';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all jobs that you started in the specified project.
  ///
  /// Job information is available for a six month period after creation. The
  /// job list is sorted in reverse chronological order, by job creation time.
  /// Requires the Can View project role, or the Is Owner project role if you
  /// set the allUsers property.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the jobs to list.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [allUsers] - Whether to display jobs owned by all users in the project.
  /// Default False.
  ///
  /// [maxCreationTime] - Max value for job creation time, in milliseconds since
  /// the POSIX epoch. If set, only jobs created before or at this timestamp are
  /// returned.
  ///
  /// [maxResults] - The maximum number of results to return in a single
  /// response page. Leverage the page tokens to iterate through the entire
  /// collection.
  ///
  /// [minCreationTime] - Min value for job creation time, in milliseconds since
  /// the POSIX epoch. If set, only jobs created after or at this timestamp are
  /// returned.
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results.
  ///
  /// [parentJobId] - If set, show only child jobs of the specified parent.
  /// Otherwise, show all top-level jobs.
  ///
  /// [projection] - Restrict information returned to a set of selected fields
  /// Possible string values are:
  /// - "full" : Includes all job data
  /// - "minimal" : Does not include the job configuration
  ///
  /// [stateFilter] - Filter for job state
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobList> list(
    core.String projectId, {
    core.bool? allUsers,
    core.String? maxCreationTime,
    core.int? maxResults,
    core.String? minCreationTime,
    core.String? pageToken,
    core.String? parentJobId,
    core.String? projection,
    core.List<core.String>? stateFilter,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allUsers != null) 'allUsers': ['${allUsers}'],
      if (maxCreationTime != null) 'maxCreationTime': [maxCreationTime],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (minCreationTime != null) 'minCreationTime': [minCreationTime],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parentJobId != null) 'parentJobId': [parentJobId],
      if (projection != null) 'projection': [projection],
      if (stateFilter != null) 'stateFilter': stateFilter,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' + core.Uri.encodeFull('$projectId') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return JobList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Runs a BigQuery SQL query synchronously and returns query results if the
  /// query completes within a specified timeout.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the query request.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryResponse> query(
    QueryRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' + core.Uri.encodeFull('$projectId') + '/queries';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return QueryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ModelsResource {
  final commons.ApiRequester _requester;

  ModelsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the model specified by modelId from the dataset.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the model to delete.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the model to delete.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [modelId] - Required. Model ID of the model to delete.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String projectId,
    core.String datasetId,
    core.String modelId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/models/' +
        core.Uri.encodeFull('$modelId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified model resource by model ID.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the requested model.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the requested model.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [modelId] - Required. Model ID of the requested model.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Model].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Model> get(
    core.String projectId,
    core.String datasetId,
    core.String modelId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/models/' +
        core.Uri.encodeFull('$modelId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Model.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all models in the specified dataset.
  ///
  /// Requires the READER dataset role. After retrieving the list of models, you
  /// can get information about a particular model by calling the models.get
  /// method.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the models to list.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the models to list.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [maxResults] - The maximum number of results to return in a single
  /// response page. Leverage the page tokens to iterate through the entire
  /// collection.
  ///
  /// [pageToken] - Page token, returned by a previous call to request the next
  /// page of results
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListModelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListModelsResponse> list(
    core.String projectId,
    core.String datasetId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/models';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListModelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patch specific fields in the specified model.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the model to patch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the model to patch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [modelId] - Required. Model ID of the model to patch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Model].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Model> patch(
    Model request,
    core.String projectId,
    core.String datasetId,
    core.String modelId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/models/' +
        core.Uri.encodeFull('$modelId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Model.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// RPC to get the service account for a project used for interactions with
  /// Google Cloud KMS
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetServiceAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetServiceAccountResponse> getServiceAccount(
    core.String projectId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'projects/' + core.Uri.encodeFull('$projectId') + '/serviceAccount';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetServiceAccountResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// RPC to list projects to which the user has been granted any project role.
  ///
  /// Users of this method are encouraged to consider the
  /// [Resource Manager](https://cloud.google.com/resource-manager/docs/) API,
  /// which provides the underlying data for this method and has more
  /// capabilities.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - `maxResults` unset returns all results, up to 50 per page.
  /// Additionally, the number of projects in a page may be fewer than
  /// `maxResults` because projects are retrieved and then filtered to only
  /// projects with the BigQuery API enabled.
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results. If not present, no further pages are present.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProjectList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProjectList> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'projects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProjectList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class RoutinesResource {
  final commons.ApiRequester _requester;

  RoutinesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the routine specified by routineId from the dataset.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the routine to delete
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the routine to delete
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [routineId] - Required. Routine ID of the routine to delete
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String projectId,
    core.String datasetId,
    core.String routineId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/routines/' +
        core.Uri.encodeFull('$routineId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified routine resource by routine ID.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the requested routine
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the requested routine
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [routineId] - Required. Routine ID of the requested routine
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [readMask] - If set, only the Routine fields in the field mask are
  /// returned in the response. If unset, all Routine fields are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Routine].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Routine> get(
    core.String projectId,
    core.String datasetId,
    core.String routineId, {
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/routines/' +
        core.Uri.encodeFull('$routineId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Routine.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/routines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new routine in the dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the new routine
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the new routine
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Routine].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Routine> insert(
    Routine request,
    core.String projectId,
    core.String datasetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/routines';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Routine.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all routines in the specified dataset.
  ///
  /// Requires the READER dataset role.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the routines to list
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the routines to list
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - If set, then only the Routines matching this filter are
  /// returned. The supported format is `routineType:{RoutineType}`, where
  /// `{RoutineType}` is a RoutineType enum. For example:
  /// `routineType:SCALAR_FUNCTION`.
  ///
  /// [maxResults] - The maximum number of results to return in a single
  /// response page. Leverage the page tokens to iterate through the entire
  /// collection.
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results
  ///
  /// [readMask] - If set, then only the Routine fields in the field mask, as
  /// well as project_id, dataset_id and routine_id, are returned in the
  /// response. If unset, then the following Routine fields are returned: etag,
  /// project_id, dataset_id, routine_id, routine_type, creation_time,
  /// last_modified_time, and language.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRoutinesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRoutinesResponse> list(
    core.String projectId,
    core.String datasetId, {
    core.String? filter,
    core.int? maxResults,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/routines';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRoutinesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/routines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates information in an existing routine.
  ///
  /// The update method replaces the entire Routine resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the routine to update
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the routine to update
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [routineId] - Required. Routine ID of the routine to update
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Routine].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Routine> update(
    Routine request,
    core.String projectId,
    core.String datasetId,
    core.String routineId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/routines/' +
        core.Uri.encodeFull('$routineId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Routine.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class RowAccessPoliciesResource {
  final commons.ApiRequester _requester;

  RowAccessPoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/tables/\[^/\]+/rowAccessPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all row access policies on the specified table.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the row access policies to list.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of row access policies to list.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tableId] - Required. Table ID of the table to list row access policies.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response
  /// page. Leverage the page tokens to iterate through the entire collection.
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRowAccessPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRowAccessPoliciesResponse> list(
    core.String projectId,
    core.String datasetId,
    core.String tableId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/tables/' +
        core.Uri.encodeFull('$tableId') +
        '/rowAccessPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRowAccessPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/tables/\[^/\]+/rowAccessPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class TabledataResource {
  final commons.ApiRequester _requester;

  TabledataResource(commons.ApiRequester client) : _requester = client;

  /// Streams data into BigQuery one record at a time without needing to run a
  /// load job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the destination.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the destination.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tableId] - Required. Table ID of the destination.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TableDataInsertAllResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TableDataInsertAllResponse> insertAll(
    TableDataInsertAllRequest request,
    core.String projectId,
    core.String datasetId,
    core.String tableId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/tables/' +
        core.Uri.encodeFull('$tableId') +
        '/insertAll';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TableDataInsertAllResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List the content of a table in rows.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project id of the table to list.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset id of the table to list.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tableId] - Required. Table id of the table to list.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [formatOptions_useInt64Timestamp] - Optional. Output timestamp as usec
  /// int64. Default is false.
  ///
  /// [maxResults] - Row limit of the table.
  ///
  /// [pageToken] - To retrieve the next page of table data, set this field to
  /// the string provided in the pageToken field of the response body from your
  /// previous call to tabledata.list.
  ///
  /// [selectedFields] - Subset of fields to return, supports select into sub
  /// fields. Example: selected_fields = "a,e.d.f";
  ///
  /// [startIndex] - Start row index of the table.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TableDataList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TableDataList> list(
    core.String projectId,
    core.String datasetId,
    core.String tableId, {
    core.bool? formatOptions_useInt64Timestamp,
    core.int? maxResults,
    core.String? pageToken,
    core.String? selectedFields,
    core.String? startIndex,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (formatOptions_useInt64Timestamp != null)
        'formatOptions.useInt64Timestamp': [
          '${formatOptions_useInt64Timestamp}'
        ],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (selectedFields != null) 'selectedFields': [selectedFields],
      if (startIndex != null) 'startIndex': [startIndex],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/tables/' +
        core.Uri.encodeFull('$tableId') +
        '/data';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TableDataList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class TablesResource {
  final commons.ApiRequester _requester;

  TablesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the table specified by tableId from the dataset.
  ///
  /// If the table contains data, all the data will be deleted.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the table to delete
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the table to delete
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tableId] - Required. Table ID of the table to delete
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String projectId,
    core.String datasetId,
    core.String tableId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/tables/' +
        core.Uri.encodeFull('$tableId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified table resource by table ID.
  ///
  /// This method does not return the data in the table, it only returns the
  /// table resource, which describes the structure of this table.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the requested table
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the requested table
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tableId] - Required. Table ID of the requested table
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [selectedFields] - List of table schema fields to return
  /// (comma-separated). If unspecified, all fields are returned. A fieldMask
  /// cannot be used here because the fields will automatically be converted
  /// from camelCase to snake_case and the conversion will fail if there are
  /// underscores. Since these are fields in BigQuery table schemas, underscores
  /// are allowed.
  ///
  /// [view] - Optional. Specifies the view that determines which table
  /// information is returned. By default, basic table information and storage
  /// statistics (STORAGE_STATS) are returned.
  /// Possible string values are:
  /// - "TABLE_METADATA_VIEW_UNSPECIFIED" : The default value. Default to the
  /// STORAGE_STATS view.
  /// - "BASIC" : Includes basic table information including schema and
  /// partitioning specification. This view does not include storage statistics
  /// such as numRows or numBytes. This view is significantly more efficient and
  /// should be used to support high query rates.
  /// - "STORAGE_STATS" : Includes all information in the BASIC view as well as
  /// storage statistics (numBytes, numLongTermBytes, numRows and
  /// lastModifiedTime).
  /// - "FULL" : Includes all table information, including storage statistics.
  /// It returns same information as STORAGE_STATS view, but may contain
  /// additional information in the future.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> get(
    core.String projectId,
    core.String datasetId,
    core.String tableId, {
    core.String? selectedFields,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (selectedFields != null) 'selectedFields': [selectedFields],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/tables/' +
        core.Uri.encodeFull('$tableId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new, empty table in the dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the new table
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the new table
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> insert(
    Table request,
    core.String projectId,
    core.String datasetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/tables';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all tables in the specified dataset.
  ///
  /// Requires the READER dataset role.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the tables to list
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the tables to list
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [maxResults] - The maximum number of results to return in a single
  /// response page. Leverage the page tokens to iterate through the entire
  /// collection.
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TableList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TableList> list(
    core.String projectId,
    core.String datasetId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/tables';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TableList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates information in an existing table.
  ///
  /// The update method replaces the entire table resource, whereas the patch
  /// method only replaces fields that are provided in the submitted table
  /// resource. This method supports RFC5789 patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the table to update
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the table to update
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tableId] - Required. Table ID of the table to update
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [autodetectSchema] - Optional. When true will autodetect schema, else will
  /// keep original schema
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> patch(
    Table request,
    core.String projectId,
    core.String datasetId,
    core.String tableId, {
    core.bool? autodetectSchema,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (autodetectSchema != null)
        'autodetect_schema': ['${autodetectSchema}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/tables/' +
        core.Uri.encodeFull('$tableId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates information in an existing table.
  ///
  /// The update method replaces the entire Table resource, whereas the patch
  /// method only replaces fields that are provided in the submitted Table
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID of the table to update
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [datasetId] - Required. Dataset ID of the table to update
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tableId] - Required. Table ID of the table to update
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [autodetectSchema] - Optional. When true will autodetect schema, else will
  /// keep original schema
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> update(
    Table request,
    core.String projectId,
    core.String datasetId,
    core.String tableId, {
    core.bool? autodetectSchema,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (autodetectSchema != null)
        'autodetect_schema': ['${autodetectSchema}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/tables/' +
        core.Uri.encodeFull('$tableId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Aggregate metrics for classification/classifier models.
///
/// For multi-class models, the metrics are either macro-averaged or
/// micro-averaged. When macro-averaged, the metrics are calculated for each
/// label and then an unweighted average is taken of those values. When
/// micro-averaged, the metric is calculated globally by counting the total
/// number of correctly predicted rows.
class AggregateClassificationMetrics {
  /// Accuracy is the fraction of predictions given the correct label.
  ///
  /// For multiclass this is a micro-averaged metric.
  core.double? accuracy;

  /// The F1 score is an average of recall and precision.
  ///
  /// For multiclass this is a macro-averaged metric.
  core.double? f1Score;

  /// Logarithmic Loss.
  ///
  /// For multiclass this is a macro-averaged metric.
  core.double? logLoss;

  /// Precision is the fraction of actual positive predictions that had positive
  /// actual labels.
  ///
  /// For multiclass this is a macro-averaged metric treating each class as a
  /// binary classifier.
  core.double? precision;

  /// Recall is the fraction of actual positive labels that were given a
  /// positive prediction.
  ///
  /// For multiclass this is a macro-averaged metric.
  core.double? recall;

  /// Area Under a ROC Curve.
  ///
  /// For multiclass this is a macro-averaged metric.
  core.double? rocAuc;

  /// Threshold at which the metrics are computed.
  ///
  /// For binary classification models this is the positive class threshold. For
  /// multi-class classfication models this is the confidence threshold.
  core.double? threshold;

  AggregateClassificationMetrics({
    this.accuracy,
    this.f1Score,
    this.logLoss,
    this.precision,
    this.recall,
    this.rocAuc,
    this.threshold,
  });

  AggregateClassificationMetrics.fromJson(core.Map json_)
      : this(
          accuracy: json_.containsKey('accuracy')
              ? (json_['accuracy'] as core.num).toDouble()
              : null,
          f1Score: json_.containsKey('f1Score')
              ? (json_['f1Score'] as core.num).toDouble()
              : null,
          logLoss: json_.containsKey('logLoss')
              ? (json_['logLoss'] as core.num).toDouble()
              : null,
          precision: json_.containsKey('precision')
              ? (json_['precision'] as core.num).toDouble()
              : null,
          recall: json_.containsKey('recall')
              ? (json_['recall'] as core.num).toDouble()
              : null,
          rocAuc: json_.containsKey('rocAuc')
              ? (json_['rocAuc'] as core.num).toDouble()
              : null,
          threshold: json_.containsKey('threshold')
              ? (json_['threshold'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accuracy != null) 'accuracy': accuracy!,
        if (f1Score != null) 'f1Score': f1Score!,
        if (logLoss != null) 'logLoss': logLoss!,
        if (precision != null) 'precision': precision!,
        if (recall != null) 'recall': recall!,
        if (rocAuc != null) 'rocAuc': rocAuc!,
        if (threshold != null) 'threshold': threshold!,
      };
}

/// Represents privacy policy associated with "aggregation threshold" method.
class AggregationThresholdPolicy {
  /// The privacy unit column(s) associated with this policy.
  ///
  /// For now, only one column per data source object (table, view) is allowed
  /// as a privacy unit column. Representing as a repeated field in metadata for
  /// extensibility to multiple columns in future. Duplicates and Repeated
  /// struct fields are not allowed. For nested fields, use dot notation
  /// ("outer.inner")
  ///
  /// Optional.
  core.List<core.String>? privacyUnitColumns;

  /// The threshold for the "aggregation threshold" policy.
  ///
  /// Optional.
  core.String? threshold;

  AggregationThresholdPolicy({
    this.privacyUnitColumns,
    this.threshold,
  });

  AggregationThresholdPolicy.fromJson(core.Map json_)
      : this(
          privacyUnitColumns: json_.containsKey('privacyUnitColumns')
              ? (json_['privacyUnitColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          threshold: json_.containsKey('threshold')
              ? json_['threshold'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privacyUnitColumns != null)
          'privacyUnitColumns': privacyUnitColumns!,
        if (threshold != null) 'threshold': threshold!,
      };
}

/// Input/output argument of a function or a stored procedure.
class Argument {
  /// Defaults to FIXED_TYPE.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ARGUMENT_KIND_UNSPECIFIED" : Default value.
  /// - "FIXED_TYPE" : The argument is a variable with fully specified type,
  /// which can be a struct or an array, but not a table.
  /// - "ANY_TYPE" : The argument is any type, including struct or array, but
  /// not a table. To be added: FIXED_TABLE, ANY_TABLE
  core.String? argumentKind;

  /// Required unless argument_kind = ANY_TYPE.
  StandardSqlDataType? dataType;

  /// Whether the argument is an aggregate function parameter.
  ///
  /// Must be Unset for routine types other than AGGREGATE_FUNCTION. For
  /// AGGREGATE_FUNCTION, if set to false, it is equivalent to adding "NOT
  /// AGGREGATE" clause in DDL; Otherwise, it is equivalent to omitting "NOT
  /// AGGREGATE" clause in DDL.
  ///
  /// Optional.
  core.bool? isAggregate;

  /// Specifies whether the argument is input or output.
  ///
  /// Can be set for procedures only.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Default value.
  /// - "IN" : The argument is input-only.
  /// - "OUT" : The argument is output-only.
  /// - "INOUT" : The argument is both an input and an output.
  core.String? mode;

  /// The name of this argument.
  ///
  /// Can be absent for function return argument.
  ///
  /// Optional.
  core.String? name;

  Argument({
    this.argumentKind,
    this.dataType,
    this.isAggregate,
    this.mode,
    this.name,
  });

  Argument.fromJson(core.Map json_)
      : this(
          argumentKind: json_.containsKey('argumentKind')
              ? json_['argumentKind'] as core.String
              : null,
          dataType: json_.containsKey('dataType')
              ? StandardSqlDataType.fromJson(
                  json_['dataType'] as core.Map<core.String, core.dynamic>)
              : null,
          isAggregate: json_.containsKey('isAggregate')
              ? json_['isAggregate'] as core.bool
              : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (argumentKind != null) 'argumentKind': argumentKind!,
        if (dataType != null) 'dataType': dataType!,
        if (isAggregate != null) 'isAggregate': isAggregate!,
        if (mode != null) 'mode': mode!,
        if (name != null) 'name': name!,
      };
}

/// Arima coefficients.
class ArimaCoefficients {
  /// Auto-regressive coefficients, an array of double.
  core.List<core.double>? autoRegressiveCoefficients;

  /// Intercept coefficient, just a double not an array.
  core.double? interceptCoefficient;

  /// Moving-average coefficients, an array of double.
  core.List<core.double>? movingAverageCoefficients;

  ArimaCoefficients({
    this.autoRegressiveCoefficients,
    this.interceptCoefficient,
    this.movingAverageCoefficients,
  });

  ArimaCoefficients.fromJson(core.Map json_)
      : this(
          autoRegressiveCoefficients:
              json_.containsKey('autoRegressiveCoefficients')
                  ? (json_['autoRegressiveCoefficients'] as core.List)
                      .map((value) => (value as core.num).toDouble())
                      .toList()
                  : null,
          interceptCoefficient: json_.containsKey('interceptCoefficient')
              ? (json_['interceptCoefficient'] as core.num).toDouble()
              : null,
          movingAverageCoefficients:
              json_.containsKey('movingAverageCoefficients')
                  ? (json_['movingAverageCoefficients'] as core.List)
                      .map((value) => (value as core.num).toDouble())
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoRegressiveCoefficients != null)
          'autoRegressiveCoefficients': autoRegressiveCoefficients!,
        if (interceptCoefficient != null)
          'interceptCoefficient': interceptCoefficient!,
        if (movingAverageCoefficients != null)
          'movingAverageCoefficients': movingAverageCoefficients!,
      };
}

/// ARIMA model fitting metrics.
class ArimaFittingMetrics {
  /// AIC.
  core.double? aic;

  /// Log-likelihood.
  core.double? logLikelihood;

  /// Variance.
  core.double? variance;

  ArimaFittingMetrics({
    this.aic,
    this.logLikelihood,
    this.variance,
  });

  ArimaFittingMetrics.fromJson(core.Map json_)
      : this(
          aic: json_.containsKey('aic')
              ? (json_['aic'] as core.num).toDouble()
              : null,
          logLikelihood: json_.containsKey('logLikelihood')
              ? (json_['logLikelihood'] as core.num).toDouble()
              : null,
          variance: json_.containsKey('variance')
              ? (json_['variance'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aic != null) 'aic': aic!,
        if (logLikelihood != null) 'logLikelihood': logLikelihood!,
        if (variance != null) 'variance': variance!,
      };
}

/// Model evaluation metrics for ARIMA forecasting models.
class ArimaForecastingMetrics {
  /// Arima model fitting metrics.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<ArimaFittingMetrics>? arimaFittingMetrics;

  /// Repeated as there can be many metric sets (one for each model) in
  /// auto-arima and the large-scale case.
  core.List<ArimaSingleModelForecastingMetrics>?
      arimaSingleModelForecastingMetrics;

  /// Whether Arima model fitted with drift or not.
  ///
  /// It is always false when d is not 1.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.bool>? hasDrift;

  /// Non-seasonal order.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<ArimaOrder>? nonSeasonalOrder;

  /// Seasonal periods.
  ///
  /// Repeated because multiple periods are supported for one time series.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? seasonalPeriods;

  /// Id to differentiate different time series for the large-scale case.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? timeSeriesId;

  ArimaForecastingMetrics({
    this.arimaFittingMetrics,
    this.arimaSingleModelForecastingMetrics,
    this.hasDrift,
    this.nonSeasonalOrder,
    this.seasonalPeriods,
    this.timeSeriesId,
  });

  ArimaForecastingMetrics.fromJson(core.Map json_)
      : this(
          arimaFittingMetrics: json_.containsKey('arimaFittingMetrics')
              ? (json_['arimaFittingMetrics'] as core.List)
                  .map((value) => ArimaFittingMetrics.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          arimaSingleModelForecastingMetrics: json_
                  .containsKey('arimaSingleModelForecastingMetrics')
              ? (json_['arimaSingleModelForecastingMetrics'] as core.List)
                  .map((value) => ArimaSingleModelForecastingMetrics.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          hasDrift: json_.containsKey('hasDrift')
              ? (json_['hasDrift'] as core.List)
                  .map((value) => value as core.bool)
                  .toList()
              : null,
          nonSeasonalOrder: json_.containsKey('nonSeasonalOrder')
              ? (json_['nonSeasonalOrder'] as core.List)
                  .map((value) => ArimaOrder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          seasonalPeriods: json_.containsKey('seasonalPeriods')
              ? (json_['seasonalPeriods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeSeriesId: json_.containsKey('timeSeriesId')
              ? (json_['timeSeriesId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arimaFittingMetrics != null)
          'arimaFittingMetrics': arimaFittingMetrics!,
        if (arimaSingleModelForecastingMetrics != null)
          'arimaSingleModelForecastingMetrics':
              arimaSingleModelForecastingMetrics!,
        if (hasDrift != null) 'hasDrift': hasDrift!,
        if (nonSeasonalOrder != null) 'nonSeasonalOrder': nonSeasonalOrder!,
        if (seasonalPeriods != null) 'seasonalPeriods': seasonalPeriods!,
        if (timeSeriesId != null) 'timeSeriesId': timeSeriesId!,
      };
}

/// Arima model information.
class ArimaModelInfo {
  /// Arima coefficients.
  ArimaCoefficients? arimaCoefficients;

  /// Arima fitting metrics.
  ArimaFittingMetrics? arimaFittingMetrics;

  /// Whether Arima model fitted with drift or not.
  ///
  /// It is always false when d is not 1.
  core.bool? hasDrift;

  /// If true, holiday_effect is a part of time series decomposition result.
  core.bool? hasHolidayEffect;

  /// If true, spikes_and_dips is a part of time series decomposition result.
  core.bool? hasSpikesAndDips;

  /// If true, step_changes is a part of time series decomposition result.
  core.bool? hasStepChanges;

  /// Non-seasonal order.
  ArimaOrder? nonSeasonalOrder;

  /// Seasonal periods.
  ///
  /// Repeated because multiple periods are supported for one time series.
  core.List<core.String>? seasonalPeriods;

  /// The time_series_id value for this time series.
  ///
  /// It will be one of the unique values from the time_series_id_column
  /// specified during ARIMA model training. Only present when
  /// time_series_id_column training option was used.
  core.String? timeSeriesId;

  /// The tuple of time_series_ids identifying this time series.
  ///
  /// It will be one of the unique tuples of values present in the
  /// time_series_id_columns specified during ARIMA model training. Only present
  /// when time_series_id_columns training option was used and the order of
  /// values here are same as the order of time_series_id_columns.
  core.List<core.String>? timeSeriesIds;

  ArimaModelInfo({
    this.arimaCoefficients,
    this.arimaFittingMetrics,
    this.hasDrift,
    this.hasHolidayEffect,
    this.hasSpikesAndDips,
    this.hasStepChanges,
    this.nonSeasonalOrder,
    this.seasonalPeriods,
    this.timeSeriesId,
    this.timeSeriesIds,
  });

  ArimaModelInfo.fromJson(core.Map json_)
      : this(
          arimaCoefficients: json_.containsKey('arimaCoefficients')
              ? ArimaCoefficients.fromJson(json_['arimaCoefficients']
                  as core.Map<core.String, core.dynamic>)
              : null,
          arimaFittingMetrics: json_.containsKey('arimaFittingMetrics')
              ? ArimaFittingMetrics.fromJson(json_['arimaFittingMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hasDrift: json_.containsKey('hasDrift')
              ? json_['hasDrift'] as core.bool
              : null,
          hasHolidayEffect: json_.containsKey('hasHolidayEffect')
              ? json_['hasHolidayEffect'] as core.bool
              : null,
          hasSpikesAndDips: json_.containsKey('hasSpikesAndDips')
              ? json_['hasSpikesAndDips'] as core.bool
              : null,
          hasStepChanges: json_.containsKey('hasStepChanges')
              ? json_['hasStepChanges'] as core.bool
              : null,
          nonSeasonalOrder: json_.containsKey('nonSeasonalOrder')
              ? ArimaOrder.fromJson(json_['nonSeasonalOrder']
                  as core.Map<core.String, core.dynamic>)
              : null,
          seasonalPeriods: json_.containsKey('seasonalPeriods')
              ? (json_['seasonalPeriods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeSeriesId: json_.containsKey('timeSeriesId')
              ? json_['timeSeriesId'] as core.String
              : null,
          timeSeriesIds: json_.containsKey('timeSeriesIds')
              ? (json_['timeSeriesIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arimaCoefficients != null) 'arimaCoefficients': arimaCoefficients!,
        if (arimaFittingMetrics != null)
          'arimaFittingMetrics': arimaFittingMetrics!,
        if (hasDrift != null) 'hasDrift': hasDrift!,
        if (hasHolidayEffect != null) 'hasHolidayEffect': hasHolidayEffect!,
        if (hasSpikesAndDips != null) 'hasSpikesAndDips': hasSpikesAndDips!,
        if (hasStepChanges != null) 'hasStepChanges': hasStepChanges!,
        if (nonSeasonalOrder != null) 'nonSeasonalOrder': nonSeasonalOrder!,
        if (seasonalPeriods != null) 'seasonalPeriods': seasonalPeriods!,
        if (timeSeriesId != null) 'timeSeriesId': timeSeriesId!,
        if (timeSeriesIds != null) 'timeSeriesIds': timeSeriesIds!,
      };
}

/// Arima order, can be used for both non-seasonal and seasonal parts.
class ArimaOrder {
  /// Order of the differencing part.
  core.String? d;

  /// Order of the autoregressive part.
  core.String? p;

  /// Order of the moving-average part.
  core.String? q;

  ArimaOrder({
    this.d,
    this.p,
    this.q,
  });

  ArimaOrder.fromJson(core.Map json_)
      : this(
          d: json_.containsKey('d') ? json_['d'] as core.String : null,
          p: json_.containsKey('p') ? json_['p'] as core.String : null,
          q: json_.containsKey('q') ? json_['q'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (d != null) 'd': d!,
        if (p != null) 'p': p!,
        if (q != null) 'q': q!,
      };
}

/// (Auto-)arima fitting result.
///
/// Wrap everything in ArimaResult for easier refactoring if we want to use
/// model-specific iteration results.
class ArimaResult {
  /// This message is repeated because there are multiple arima models fitted in
  /// auto-arima.
  ///
  /// For non-auto-arima model, its size is one.
  core.List<ArimaModelInfo>? arimaModelInfo;

  /// Seasonal periods.
  ///
  /// Repeated because multiple periods are supported for one time series.
  core.List<core.String>? seasonalPeriods;

  ArimaResult({
    this.arimaModelInfo,
    this.seasonalPeriods,
  });

  ArimaResult.fromJson(core.Map json_)
      : this(
          arimaModelInfo: json_.containsKey('arimaModelInfo')
              ? (json_['arimaModelInfo'] as core.List)
                  .map((value) => ArimaModelInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          seasonalPeriods: json_.containsKey('seasonalPeriods')
              ? (json_['seasonalPeriods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arimaModelInfo != null) 'arimaModelInfo': arimaModelInfo!,
        if (seasonalPeriods != null) 'seasonalPeriods': seasonalPeriods!,
      };
}

/// Model evaluation metrics for a single ARIMA forecasting model.
class ArimaSingleModelForecastingMetrics {
  /// Arima fitting metrics.
  ArimaFittingMetrics? arimaFittingMetrics;

  /// Is arima model fitted with drift or not.
  ///
  /// It is always false when d is not 1.
  core.bool? hasDrift;

  /// If true, holiday_effect is a part of time series decomposition result.
  core.bool? hasHolidayEffect;

  /// If true, spikes_and_dips is a part of time series decomposition result.
  core.bool? hasSpikesAndDips;

  /// If true, step_changes is a part of time series decomposition result.
  core.bool? hasStepChanges;

  /// Non-seasonal order.
  ArimaOrder? nonSeasonalOrder;

  /// Seasonal periods.
  ///
  /// Repeated because multiple periods are supported for one time series.
  core.List<core.String>? seasonalPeriods;

  /// The time_series_id value for this time series.
  ///
  /// It will be one of the unique values from the time_series_id_column
  /// specified during ARIMA model training. Only present when
  /// time_series_id_column training option was used.
  core.String? timeSeriesId;

  /// The tuple of time_series_ids identifying this time series.
  ///
  /// It will be one of the unique tuples of values present in the
  /// time_series_id_columns specified during ARIMA model training. Only present
  /// when time_series_id_columns training option was used and the order of
  /// values here are same as the order of time_series_id_columns.
  core.List<core.String>? timeSeriesIds;

  ArimaSingleModelForecastingMetrics({
    this.arimaFittingMetrics,
    this.hasDrift,
    this.hasHolidayEffect,
    this.hasSpikesAndDips,
    this.hasStepChanges,
    this.nonSeasonalOrder,
    this.seasonalPeriods,
    this.timeSeriesId,
    this.timeSeriesIds,
  });

  ArimaSingleModelForecastingMetrics.fromJson(core.Map json_)
      : this(
          arimaFittingMetrics: json_.containsKey('arimaFittingMetrics')
              ? ArimaFittingMetrics.fromJson(json_['arimaFittingMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hasDrift: json_.containsKey('hasDrift')
              ? json_['hasDrift'] as core.bool
              : null,
          hasHolidayEffect: json_.containsKey('hasHolidayEffect')
              ? json_['hasHolidayEffect'] as core.bool
              : null,
          hasSpikesAndDips: json_.containsKey('hasSpikesAndDips')
              ? json_['hasSpikesAndDips'] as core.bool
              : null,
          hasStepChanges: json_.containsKey('hasStepChanges')
              ? json_['hasStepChanges'] as core.bool
              : null,
          nonSeasonalOrder: json_.containsKey('nonSeasonalOrder')
              ? ArimaOrder.fromJson(json_['nonSeasonalOrder']
                  as core.Map<core.String, core.dynamic>)
              : null,
          seasonalPeriods: json_.containsKey('seasonalPeriods')
              ? (json_['seasonalPeriods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeSeriesId: json_.containsKey('timeSeriesId')
              ? json_['timeSeriesId'] as core.String
              : null,
          timeSeriesIds: json_.containsKey('timeSeriesIds')
              ? (json_['timeSeriesIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arimaFittingMetrics != null)
          'arimaFittingMetrics': arimaFittingMetrics!,
        if (hasDrift != null) 'hasDrift': hasDrift!,
        if (hasHolidayEffect != null) 'hasHolidayEffect': hasHolidayEffect!,
        if (hasSpikesAndDips != null) 'hasSpikesAndDips': hasSpikesAndDips!,
        if (hasStepChanges != null) 'hasStepChanges': hasStepChanges!,
        if (nonSeasonalOrder != null) 'nonSeasonalOrder': nonSeasonalOrder!,
        if (seasonalPeriods != null) 'seasonalPeriods': seasonalPeriods!,
        if (timeSeriesId != null) 'timeSeriesId': timeSeriesId!,
        if (timeSeriesIds != null) 'timeSeriesIds': timeSeriesIds!,
      };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// Options for external data sources.
class AvroOptions {
  /// If sourceFormat is set to "AVRO", indicates whether to interpret logical
  /// types as the corresponding BigQuery data type (for example, TIMESTAMP),
  /// instead of using the raw type (for example, INTEGER).
  ///
  /// Optional.
  core.bool? useAvroLogicalTypes;

  AvroOptions({
    this.useAvroLogicalTypes,
  });

  AvroOptions.fromJson(core.Map json_)
      : this(
          useAvroLogicalTypes: json_.containsKey('useAvroLogicalTypes')
              ? json_['useAvroLogicalTypes'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (useAvroLogicalTypes != null)
          'useAvroLogicalTypes': useAvroLogicalTypes!,
      };
}

/// Reason why BI Engine didn't accelerate the query (or sub-query).
class BiEngineReason {
  /// High-level BI Engine reason for partial or disabled acceleration
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : BiEngineReason not specified.
  /// - "NO_RESERVATION" : No reservation available for BI Engine acceleration.
  /// - "INSUFFICIENT_RESERVATION" : Not enough memory available for BI Engine
  /// acceleration.
  /// - "UNSUPPORTED_SQL_TEXT" : This particular SQL text is not supported for
  /// acceleration by BI Engine.
  /// - "INPUT_TOO_LARGE" : Input too large for acceleration by BI Engine.
  /// - "OTHER_REASON" : Catch-all code for all other cases for partial or
  /// disabled acceleration.
  /// - "TABLE_EXCLUDED" : One or more tables were not eligible for BI Engine
  /// acceleration.
  core.String? code;

  /// Free form human-readable reason for partial or disabled acceleration.
  ///
  /// Output only.
  core.String? message;

  BiEngineReason({
    this.code,
    this.message,
  });

  BiEngineReason.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (message != null) 'message': message!,
      };
}

/// Statistics for a BI Engine specific query.
///
/// Populated as part of JobStatistics2
class BiEngineStatistics {
  /// Specifies which mode of BI Engine acceleration was performed (if any).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BI_ENGINE_ACCELERATION_MODE_UNSPECIFIED" : BiEngineMode type not
  /// specified.
  /// - "BI_ENGINE_DISABLED" : BI Engine acceleration was attempted but
  /// disabled. bi_engine_reasons specifies a more detailed reason.
  /// - "PARTIAL_INPUT" : Some inputs were accelerated using BI Engine. See
  /// bi_engine_reasons for why parts of the query were not accelerated.
  /// - "FULL_INPUT" : All of the query inputs were accelerated using BI Engine.
  /// - "FULL_QUERY" : All of the query was accelerated using BI Engine.
  core.String? accelerationMode;

  /// Specifies which mode of BI Engine acceleration was performed (if any).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACCELERATION_MODE_UNSPECIFIED" : BiEngineMode type not specified.
  /// - "DISABLED" : BI Engine disabled the acceleration. bi_engine_reasons
  /// specifies a more detailed reason.
  /// - "PARTIAL" : Part of the query was accelerated using BI Engine. See
  /// bi_engine_reasons for why parts of the query were not accelerated.
  /// - "FULL" : All of the query was accelerated using BI Engine.
  core.String? biEngineMode;

  /// In case of DISABLED or PARTIAL bi_engine_mode, these contain the
  /// explanatory reasons as to why BI Engine could not accelerate.
  ///
  /// In case the full query was accelerated, this field is not populated.
  core.List<BiEngineReason>? biEngineReasons;

  BiEngineStatistics({
    this.accelerationMode,
    this.biEngineMode,
    this.biEngineReasons,
  });

  BiEngineStatistics.fromJson(core.Map json_)
      : this(
          accelerationMode: json_.containsKey('accelerationMode')
              ? json_['accelerationMode'] as core.String
              : null,
          biEngineMode: json_.containsKey('biEngineMode')
              ? json_['biEngineMode'] as core.String
              : null,
          biEngineReasons: json_.containsKey('biEngineReasons')
              ? (json_['biEngineReasons'] as core.List)
                  .map((value) => BiEngineReason.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accelerationMode != null) 'accelerationMode': accelerationMode!,
        if (biEngineMode != null) 'biEngineMode': biEngineMode!,
        if (biEngineReasons != null) 'biEngineReasons': biEngineReasons!,
      };
}

/// Configuration for BigLake managed tables.
class BigLakeConfiguration {
  /// The connection specifying the credentials to be used to read and write to
  /// external storage, such as Cloud Storage.
  ///
  /// The connection_id can have the form
  /// "\<project\_id\>.\<location\_id\>.\<connection\_id\>" or
  /// "projects/\<project\_id\>/locations/\<location\_id\>/connections/\<connection\_id\>".
  ///
  /// Required.
  core.String? connectionId;

  /// The file format the table data is stored in.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Default Value.
  /// - "PARQUET" : Apache Parquet format.
  core.String? fileFormat;

  /// The fully qualified location prefix of the external folder where table
  /// data is stored.
  ///
  /// The '*' wildcard character is not allowed. The URI should be in the format
  /// "gs://bucket/path_to_table/"
  ///
  /// Required.
  core.String? storageUri;

  /// The table format the metadata only snapshots are stored in.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TABLE_FORMAT_UNSPECIFIED" : Default Value.
  /// - "ICEBERG" : Apache Iceberg format.
  core.String? tableFormat;

  BigLakeConfiguration({
    this.connectionId,
    this.fileFormat,
    this.storageUri,
    this.tableFormat,
  });

  BigLakeConfiguration.fromJson(core.Map json_)
      : this(
          connectionId: json_.containsKey('connectionId')
              ? json_['connectionId'] as core.String
              : null,
          fileFormat: json_.containsKey('fileFormat')
              ? json_['fileFormat'] as core.String
              : null,
          storageUri: json_.containsKey('storageUri')
              ? json_['storageUri'] as core.String
              : null,
          tableFormat: json_.containsKey('tableFormat')
              ? json_['tableFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionId != null) 'connectionId': connectionId!,
        if (fileFormat != null) 'fileFormat': fileFormat!,
        if (storageUri != null) 'storageUri': storageUri!,
        if (tableFormat != null) 'tableFormat': tableFormat!,
      };
}

class BigQueryModelTraining {
  /// Deprecated.
  core.int? currentIteration;

  /// Deprecated.
  core.String? expectedTotalIterations;

  BigQueryModelTraining({
    this.currentIteration,
    this.expectedTotalIterations,
  });

  BigQueryModelTraining.fromJson(core.Map json_)
      : this(
          currentIteration: json_.containsKey('currentIteration')
              ? json_['currentIteration'] as core.int
              : null,
          expectedTotalIterations: json_.containsKey('expectedTotalIterations')
              ? json_['expectedTotalIterations'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentIteration != null) 'currentIteration': currentIteration!,
        if (expectedTotalIterations != null)
          'expectedTotalIterations': expectedTotalIterations!,
      };
}

/// Information related to a Bigtable column.
class BigtableColumn {
  /// The encoding of the values when the type is not STRING.
  ///
  /// Acceptable encoding values are: TEXT - indicates values are alphanumeric
  /// text strings. BINARY - indicates values are encoded using HBase
  /// Bytes.toBytes family of functions. 'encoding' can also be set at the
  /// column family level. However, the setting at this level takes precedence
  /// if 'encoding' is set at both levels.
  ///
  /// Optional.
  core.String? encoding;

  /// If the qualifier is not a valid BigQuery field identifier i.e. does not
  /// match a-zA-Z*, a valid identifier must be provided as the column field
  /// name and is used as field name in queries.
  ///
  /// Optional.
  core.String? fieldName;

  /// If this is set, only the latest version of value in this column are
  /// exposed.
  ///
  /// 'onlyReadLatest' can also be set at the column family level. However, the
  /// setting at this level takes precedence if 'onlyReadLatest' is set at both
  /// levels.
  ///
  /// Optional.
  core.bool? onlyReadLatest;

  /// Qualifier of the column.
  ///
  /// Columns in the parent column family that has this exact qualifier are
  /// exposed as . field. If the qualifier is valid UTF-8 string, it can be
  /// specified in the qualifier_string field. Otherwise, a base-64 encoded
  /// value must be set to qualifier_encoded. The column field name is the same
  /// as the column qualifier. However, if the qualifier is not a valid BigQuery
  /// field identifier i.e. does not match a-zA-Z*, a valid identifier must be
  /// provided as field_name.
  ///
  /// Required.
  core.String? qualifierEncoded;
  core.List<core.int> get qualifierEncodedAsBytes =>
      convert.base64.decode(qualifierEncoded!);

  set qualifierEncodedAsBytes(core.List<core.int> bytes_) {
    qualifierEncoded =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Qualifier string.
  core.String? qualifierString;

  /// The type to convert the value in cells of this column.
  ///
  /// The values are expected to be encoded using HBase Bytes.toBytes function
  /// when using the BINARY encoding value. Following BigQuery types are allowed
  /// (case-sensitive): * BYTES * STRING * INTEGER * FLOAT * BOOLEAN * JSON
  /// Default type is BYTES. 'type' can also be set at the column family level.
  /// However, the setting at this level takes precedence if 'type' is set at
  /// both levels.
  ///
  /// Optional.
  core.String? type;

  BigtableColumn({
    this.encoding,
    this.fieldName,
    this.onlyReadLatest,
    this.qualifierEncoded,
    this.qualifierString,
    this.type,
  });

  BigtableColumn.fromJson(core.Map json_)
      : this(
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
              : null,
          fieldName: json_.containsKey('fieldName')
              ? json_['fieldName'] as core.String
              : null,
          onlyReadLatest: json_.containsKey('onlyReadLatest')
              ? json_['onlyReadLatest'] as core.bool
              : null,
          qualifierEncoded: json_.containsKey('qualifierEncoded')
              ? json_['qualifierEncoded'] as core.String
              : null,
          qualifierString: json_.containsKey('qualifierString')
              ? json_['qualifierString'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encoding != null) 'encoding': encoding!,
        if (fieldName != null) 'fieldName': fieldName!,
        if (onlyReadLatest != null) 'onlyReadLatest': onlyReadLatest!,
        if (qualifierEncoded != null) 'qualifierEncoded': qualifierEncoded!,
        if (qualifierString != null) 'qualifierString': qualifierString!,
        if (type != null) 'type': type!,
      };
}

/// Information related to a Bigtable column family.
class BigtableColumnFamily {
  /// Lists of columns that should be exposed as individual fields as opposed to
  /// a list of (column name, value) pairs.
  ///
  /// All columns whose qualifier matches a qualifier in this list can be
  /// accessed as .. Other columns can be accessed as a list through .Column
  /// field.
  ///
  /// Optional.
  core.List<BigtableColumn>? columns;

  /// The encoding of the values when the type is not STRING.
  ///
  /// Acceptable encoding values are: TEXT - indicates values are alphanumeric
  /// text strings. BINARY - indicates values are encoded using HBase
  /// Bytes.toBytes family of functions. This can be overridden for a specific
  /// column by listing that column in 'columns' and specifying an encoding for
  /// it.
  ///
  /// Optional.
  core.String? encoding;

  /// Identifier of the column family.
  core.String? familyId;

  /// If this is set only the latest version of value are exposed for all
  /// columns in this column family.
  ///
  /// This can be overridden for a specific column by listing that column in
  /// 'columns' and specifying a different setting for that column.
  ///
  /// Optional.
  core.bool? onlyReadLatest;

  /// The type to convert the value in cells of this column family.
  ///
  /// The values are expected to be encoded using HBase Bytes.toBytes function
  /// when using the BINARY encoding value. Following BigQuery types are allowed
  /// (case-sensitive): * BYTES * STRING * INTEGER * FLOAT * BOOLEAN * JSON
  /// Default type is BYTES. This can be overridden for a specific column by
  /// listing that column in 'columns' and specifying a type for it.
  ///
  /// Optional.
  core.String? type;

  BigtableColumnFamily({
    this.columns,
    this.encoding,
    this.familyId,
    this.onlyReadLatest,
    this.type,
  });

  BigtableColumnFamily.fromJson(core.Map json_)
      : this(
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => BigtableColumn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
              : null,
          familyId: json_.containsKey('familyId')
              ? json_['familyId'] as core.String
              : null,
          onlyReadLatest: json_.containsKey('onlyReadLatest')
              ? json_['onlyReadLatest'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (encoding != null) 'encoding': encoding!,
        if (familyId != null) 'familyId': familyId!,
        if (onlyReadLatest != null) 'onlyReadLatest': onlyReadLatest!,
        if (type != null) 'type': type!,
      };
}

/// Options specific to Google Cloud Bigtable data sources.
class BigtableOptions {
  /// List of column families to expose in the table schema along with their
  /// types.
  ///
  /// This list restricts the column families that can be referenced in queries
  /// and specifies their value types. You can use this list to do type
  /// conversions - see the 'type' field for more details. If you leave this
  /// list empty, all column families are present in the table schema and their
  /// values are read as BYTES. During a query only the column families
  /// referenced in that query are read from Bigtable.
  ///
  /// Optional.
  core.List<BigtableColumnFamily>? columnFamilies;

  /// If field is true, then the column families that are not specified in
  /// columnFamilies list are not exposed in the table schema.
  ///
  /// Otherwise, they are read with BYTES type values. The default value is
  /// false.
  ///
  /// Optional.
  core.bool? ignoreUnspecifiedColumnFamilies;

  /// If field is true, then each column family will be read as a single JSON
  /// column.
  ///
  /// Otherwise they are read as a repeated cell structure containing
  /// timestamp/value tuples. The default value is false.
  ///
  /// Optional.
  core.bool? outputColumnFamiliesAsJson;

  /// If field is true, then the rowkey column families will be read and
  /// converted to string.
  ///
  /// Otherwise they are read with BYTES type values and users need to manually
  /// cast them with CAST if necessary. The default value is false.
  ///
  /// Optional.
  core.bool? readRowkeyAsString;

  BigtableOptions({
    this.columnFamilies,
    this.ignoreUnspecifiedColumnFamilies,
    this.outputColumnFamiliesAsJson,
    this.readRowkeyAsString,
  });

  BigtableOptions.fromJson(core.Map json_)
      : this(
          columnFamilies: json_.containsKey('columnFamilies')
              ? (json_['columnFamilies'] as core.List)
                  .map((value) => BigtableColumnFamily.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ignoreUnspecifiedColumnFamilies:
              json_.containsKey('ignoreUnspecifiedColumnFamilies')
                  ? json_['ignoreUnspecifiedColumnFamilies'] as core.bool
                  : null,
          outputColumnFamiliesAsJson:
              json_.containsKey('outputColumnFamiliesAsJson')
                  ? json_['outputColumnFamiliesAsJson'] as core.bool
                  : null,
          readRowkeyAsString: json_.containsKey('readRowkeyAsString')
              ? json_['readRowkeyAsString'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnFamilies != null) 'columnFamilies': columnFamilies!,
        if (ignoreUnspecifiedColumnFamilies != null)
          'ignoreUnspecifiedColumnFamilies': ignoreUnspecifiedColumnFamilies!,
        if (outputColumnFamiliesAsJson != null)
          'outputColumnFamiliesAsJson': outputColumnFamiliesAsJson!,
        if (readRowkeyAsString != null)
          'readRowkeyAsString': readRowkeyAsString!,
      };
}

/// Evaluation metrics for binary classification/classifier models.
class BinaryClassificationMetrics {
  /// Aggregate classification metrics.
  AggregateClassificationMetrics? aggregateClassificationMetrics;

  /// Binary confusion matrix at multiple thresholds.
  core.List<BinaryConfusionMatrix>? binaryConfusionMatrixList;

  /// Label representing the negative class.
  core.String? negativeLabel;

  /// Label representing the positive class.
  core.String? positiveLabel;

  BinaryClassificationMetrics({
    this.aggregateClassificationMetrics,
    this.binaryConfusionMatrixList,
    this.negativeLabel,
    this.positiveLabel,
  });

  BinaryClassificationMetrics.fromJson(core.Map json_)
      : this(
          aggregateClassificationMetrics:
              json_.containsKey('aggregateClassificationMetrics')
                  ? AggregateClassificationMetrics.fromJson(
                      json_['aggregateClassificationMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          binaryConfusionMatrixList:
              json_.containsKey('binaryConfusionMatrixList')
                  ? (json_['binaryConfusionMatrixList'] as core.List)
                      .map((value) => BinaryConfusionMatrix.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          negativeLabel: json_.containsKey('negativeLabel')
              ? json_['negativeLabel'] as core.String
              : null,
          positiveLabel: json_.containsKey('positiveLabel')
              ? json_['positiveLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregateClassificationMetrics != null)
          'aggregateClassificationMetrics': aggregateClassificationMetrics!,
        if (binaryConfusionMatrixList != null)
          'binaryConfusionMatrixList': binaryConfusionMatrixList!,
        if (negativeLabel != null) 'negativeLabel': negativeLabel!,
        if (positiveLabel != null) 'positiveLabel': positiveLabel!,
      };
}

/// Confusion matrix for binary classification models.
class BinaryConfusionMatrix {
  /// The fraction of predictions given the correct label.
  core.double? accuracy;

  /// The equally weighted average of recall and precision.
  core.double? f1Score;

  /// Number of false samples predicted as false.
  core.String? falseNegatives;

  /// Number of false samples predicted as true.
  core.String? falsePositives;

  /// Threshold value used when computing each of the following metric.
  core.double? positiveClassThreshold;

  /// The fraction of actual positive predictions that had positive actual
  /// labels.
  core.double? precision;

  /// The fraction of actual positive labels that were given a positive
  /// prediction.
  core.double? recall;

  /// Number of true samples predicted as false.
  core.String? trueNegatives;

  /// Number of true samples predicted as true.
  core.String? truePositives;

  BinaryConfusionMatrix({
    this.accuracy,
    this.f1Score,
    this.falseNegatives,
    this.falsePositives,
    this.positiveClassThreshold,
    this.precision,
    this.recall,
    this.trueNegatives,
    this.truePositives,
  });

  BinaryConfusionMatrix.fromJson(core.Map json_)
      : this(
          accuracy: json_.containsKey('accuracy')
              ? (json_['accuracy'] as core.num).toDouble()
              : null,
          f1Score: json_.containsKey('f1Score')
              ? (json_['f1Score'] as core.num).toDouble()
              : null,
          falseNegatives: json_.containsKey('falseNegatives')
              ? json_['falseNegatives'] as core.String
              : null,
          falsePositives: json_.containsKey('falsePositives')
              ? json_['falsePositives'] as core.String
              : null,
          positiveClassThreshold: json_.containsKey('positiveClassThreshold')
              ? (json_['positiveClassThreshold'] as core.num).toDouble()
              : null,
          precision: json_.containsKey('precision')
              ? (json_['precision'] as core.num).toDouble()
              : null,
          recall: json_.containsKey('recall')
              ? (json_['recall'] as core.num).toDouble()
              : null,
          trueNegatives: json_.containsKey('trueNegatives')
              ? json_['trueNegatives'] as core.String
              : null,
          truePositives: json_.containsKey('truePositives')
              ? json_['truePositives'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accuracy != null) 'accuracy': accuracy!,
        if (f1Score != null) 'f1Score': f1Score!,
        if (falseNegatives != null) 'falseNegatives': falseNegatives!,
        if (falsePositives != null) 'falsePositives': falsePositives!,
        if (positiveClassThreshold != null)
          'positiveClassThreshold': positiveClassThreshold!,
        if (precision != null) 'precision': precision!,
        if (recall != null) 'recall': recall!,
        if (trueNegatives != null) 'trueNegatives': trueNegatives!,
        if (truePositives != null) 'truePositives': truePositives!,
      };
}

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

class BqmlIterationResult {
  /// Deprecated.
  core.String? durationMs;

  /// Deprecated.
  core.double? evalLoss;

  /// Deprecated.
  core.int? index;

  /// Deprecated.
  core.double? learnRate;

  /// Deprecated.
  core.double? trainingLoss;

  BqmlIterationResult({
    this.durationMs,
    this.evalLoss,
    this.index,
    this.learnRate,
    this.trainingLoss,
  });

  BqmlIterationResult.fromJson(core.Map json_)
      : this(
          durationMs: json_.containsKey('durationMs')
              ? json_['durationMs'] as core.String
              : null,
          evalLoss: json_.containsKey('evalLoss')
              ? (json_['evalLoss'] as core.num).toDouble()
              : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          learnRate: json_.containsKey('learnRate')
              ? (json_['learnRate'] as core.num).toDouble()
              : null,
          trainingLoss: json_.containsKey('trainingLoss')
              ? (json_['trainingLoss'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (durationMs != null) 'durationMs': durationMs!,
        if (evalLoss != null) 'evalLoss': evalLoss!,
        if (index != null) 'index': index!,
        if (learnRate != null) 'learnRate': learnRate!,
        if (trainingLoss != null) 'trainingLoss': trainingLoss!,
      };
}

/// Deprecated.
class BqmlTrainingRunTrainingOptions {
  core.bool? earlyStop;
  core.double? l1Reg;
  core.double? l2Reg;
  core.double? learnRate;
  core.String? learnRateStrategy;
  core.double? lineSearchInitLearnRate;
  core.String? maxIteration;
  core.double? minRelProgress;
  core.bool? warmStart;

  BqmlTrainingRunTrainingOptions({
    this.earlyStop,
    this.l1Reg,
    this.l2Reg,
    this.learnRate,
    this.learnRateStrategy,
    this.lineSearchInitLearnRate,
    this.maxIteration,
    this.minRelProgress,
    this.warmStart,
  });

  BqmlTrainingRunTrainingOptions.fromJson(core.Map json_)
      : this(
          earlyStop: json_.containsKey('earlyStop')
              ? json_['earlyStop'] as core.bool
              : null,
          l1Reg: json_.containsKey('l1Reg')
              ? (json_['l1Reg'] as core.num).toDouble()
              : null,
          l2Reg: json_.containsKey('l2Reg')
              ? (json_['l2Reg'] as core.num).toDouble()
              : null,
          learnRate: json_.containsKey('learnRate')
              ? (json_['learnRate'] as core.num).toDouble()
              : null,
          learnRateStrategy: json_.containsKey('learnRateStrategy')
              ? json_['learnRateStrategy'] as core.String
              : null,
          lineSearchInitLearnRate: json_.containsKey('lineSearchInitLearnRate')
              ? (json_['lineSearchInitLearnRate'] as core.num).toDouble()
              : null,
          maxIteration: json_.containsKey('maxIteration')
              ? json_['maxIteration'] as core.String
              : null,
          minRelProgress: json_.containsKey('minRelProgress')
              ? (json_['minRelProgress'] as core.num).toDouble()
              : null,
          warmStart: json_.containsKey('warmStart')
              ? json_['warmStart'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (earlyStop != null) 'earlyStop': earlyStop!,
        if (l1Reg != null) 'l1Reg': l1Reg!,
        if (l2Reg != null) 'l2Reg': l2Reg!,
        if (learnRate != null) 'learnRate': learnRate!,
        if (learnRateStrategy != null) 'learnRateStrategy': learnRateStrategy!,
        if (lineSearchInitLearnRate != null)
          'lineSearchInitLearnRate': lineSearchInitLearnRate!,
        if (maxIteration != null) 'maxIteration': maxIteration!,
        if (minRelProgress != null) 'minRelProgress': minRelProgress!,
        if (warmStart != null) 'warmStart': warmStart!,
      };
}

class BqmlTrainingRun {
  /// Deprecated.
  core.List<BqmlIterationResult>? iterationResults;

  /// Deprecated.
  core.DateTime? startTime;

  /// Deprecated.
  core.String? state;

  /// Deprecated.
  BqmlTrainingRunTrainingOptions? trainingOptions;

  BqmlTrainingRun({
    this.iterationResults,
    this.startTime,
    this.state,
    this.trainingOptions,
  });

  BqmlTrainingRun.fromJson(core.Map json_)
      : this(
          iterationResults: json_.containsKey('iterationResults')
              ? (json_['iterationResults'] as core.List)
                  .map((value) => BqmlIterationResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startTime: json_.containsKey('startTime')
              ? core.DateTime.parse(json_['startTime'] as core.String)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          trainingOptions: json_.containsKey('trainingOptions')
              ? BqmlTrainingRunTrainingOptions.fromJson(json_['trainingOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iterationResults != null) 'iterationResults': iterationResults!,
        if (startTime != null)
          'startTime': startTime!.toUtc().toIso8601String(),
        if (state != null) 'state': state!,
        if (trainingOptions != null) 'trainingOptions': trainingOptions!,
      };
}

/// Representative value of a categorical feature.
class CategoricalValue {
  /// Counts of all categories for the categorical feature.
  ///
  /// If there are more than ten categories, we return top ten (by count) and
  /// return one more CategoryCount with category "_OTHER_" and count as
  /// aggregate counts of remaining categories.
  core.List<CategoryCount>? categoryCounts;

  CategoricalValue({
    this.categoryCounts,
  });

  CategoricalValue.fromJson(core.Map json_)
      : this(
          categoryCounts: json_.containsKey('categoryCounts')
              ? (json_['categoryCounts'] as core.List)
                  .map((value) => CategoryCount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoryCounts != null) 'categoryCounts': categoryCounts!,
      };
}

/// Represents the count of a single category within the cluster.
class CategoryCount {
  /// The name of category.
  core.String? category;

  /// The count of training samples matching the category within the cluster.
  core.String? count;

  CategoryCount({
    this.category,
    this.count,
  });

  CategoryCount.fromJson(core.Map json_)
      : this(
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (count != null) 'count': count!,
      };
}

/// Information about base table and clone time of a table clone.
class CloneDefinition {
  /// Reference describing the ID of the table that was cloned.
  ///
  /// Required.
  TableReference? baseTableReference;

  /// The time at which the base table was cloned.
  ///
  /// This value is reported in the JSON response using RFC3339 format.
  ///
  /// Required.
  core.DateTime? cloneTime;

  CloneDefinition({
    this.baseTableReference,
    this.cloneTime,
  });

  CloneDefinition.fromJson(core.Map json_)
      : this(
          baseTableReference: json_.containsKey('baseTableReference')
              ? TableReference.fromJson(json_['baseTableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cloneTime: json_.containsKey('cloneTime')
              ? core.DateTime.parse(json_['cloneTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseTableReference != null)
          'baseTableReference': baseTableReference!,
        if (cloneTime != null)
          'cloneTime': cloneTime!.toUtc().toIso8601String(),
      };
}

/// Message containing the information about one cluster.
class Cluster {
  /// Centroid id.
  core.String? centroidId;

  /// Count of training data rows that were assigned to this cluster.
  core.String? count;

  /// Values of highly variant features for this cluster.
  core.List<FeatureValue>? featureValues;

  Cluster({
    this.centroidId,
    this.count,
    this.featureValues,
  });

  Cluster.fromJson(core.Map json_)
      : this(
          centroidId: json_.containsKey('centroidId')
              ? json_['centroidId'] as core.String
              : null,
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          featureValues: json_.containsKey('featureValues')
              ? (json_['featureValues'] as core.List)
                  .map((value) => FeatureValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (centroidId != null) 'centroidId': centroidId!,
        if (count != null) 'count': count!,
        if (featureValues != null) 'featureValues': featureValues!,
      };
}

/// Information about a single cluster for clustering model.
class ClusterInfo {
  /// Centroid id.
  core.String? centroidId;

  /// Cluster radius, the average distance from centroid to each point assigned
  /// to the cluster.
  core.double? clusterRadius;

  /// Cluster size, the total number of points assigned to the cluster.
  core.String? clusterSize;

  ClusterInfo({
    this.centroidId,
    this.clusterRadius,
    this.clusterSize,
  });

  ClusterInfo.fromJson(core.Map json_)
      : this(
          centroidId: json_.containsKey('centroidId')
              ? json_['centroidId'] as core.String
              : null,
          clusterRadius: json_.containsKey('clusterRadius')
              ? (json_['clusterRadius'] as core.num).toDouble()
              : null,
          clusterSize: json_.containsKey('clusterSize')
              ? json_['clusterSize'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (centroidId != null) 'centroidId': centroidId!,
        if (clusterRadius != null) 'clusterRadius': clusterRadius!,
        if (clusterSize != null) 'clusterSize': clusterSize!,
      };
}

/// Configures table clustering.
class Clustering {
  /// One or more fields on which data should be clustered.
  ///
  /// Only top-level, non-repeated, simple-type fields are supported. The
  /// ordering of the clustering fields should be prioritized from most to least
  /// important for filtering purposes. Additional information on limitations
  /// can be found here:
  /// https://cloud.google.com/bigquery/docs/creating-clustered-tables#limitations
  core.List<core.String>? fields;

  Clustering({
    this.fields,
  });

  Clustering.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// Evaluation metrics for clustering models.
class ClusteringMetrics {
  /// Information for all clusters.
  core.List<Cluster>? clusters;

  /// Davies-Bouldin index.
  core.double? daviesBouldinIndex;

  /// Mean of squared distances between each sample to its cluster centroid.
  core.double? meanSquaredDistance;

  ClusteringMetrics({
    this.clusters,
    this.daviesBouldinIndex,
    this.meanSquaredDistance,
  });

  ClusteringMetrics.fromJson(core.Map json_)
      : this(
          clusters: json_.containsKey('clusters')
              ? (json_['clusters'] as core.List)
                  .map((value) => Cluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          daviesBouldinIndex: json_.containsKey('daviesBouldinIndex')
              ? (json_['daviesBouldinIndex'] as core.num).toDouble()
              : null,
          meanSquaredDistance: json_.containsKey('meanSquaredDistance')
              ? (json_['meanSquaredDistance'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusters != null) 'clusters': clusters!,
        if (daviesBouldinIndex != null)
          'daviesBouldinIndex': daviesBouldinIndex!,
        if (meanSquaredDistance != null)
          'meanSquaredDistance': meanSquaredDistance!,
      };
}

/// Confusion matrix for multi-class classification models.
class ConfusionMatrix {
  /// Confidence threshold used when computing the entries of the confusion
  /// matrix.
  core.double? confidenceThreshold;

  /// One row per actual label.
  core.List<Row>? rows;

  ConfusionMatrix({
    this.confidenceThreshold,
    this.rows,
  });

  ConfusionMatrix.fromJson(core.Map json_)
      : this(
          confidenceThreshold: json_.containsKey('confidenceThreshold')
              ? (json_['confidenceThreshold'] as core.num).toDouble()
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceThreshold != null)
          'confidenceThreshold': confidenceThreshold!,
        if (rows != null) 'rows': rows!,
      };
}

/// A connection-level property to customize query behavior.
///
/// Under JDBC, these correspond directly to connection properties passed to the
/// DriverManager. Under ODBC, these correspond to properties in the connection
/// string. Currently supported connection properties: * **dataset_project_id**:
/// represents the default project for datasets that are used in the query.
/// Setting the system variable `@@dataset_project_id` achieves the same
/// behavior. For more information about system variables, see:
/// https://cloud.google.com/bigquery/docs/reference/system-variables *
/// **time_zone**: represents the default timezone used to run the query. *
/// **session_id**: associates the query with a given session. *
/// **query_label**: associates the query with a given job label. If set, all
/// subsequent queries in a script or session will have this label. For the
/// format in which a you can specify a query label, see labels in the
/// JobConfiguration resource type:
/// https://cloud.google.com/bigquery/docs/reference/rest/v2/Job#jobconfiguration
/// Additional properties are allowed, but ignored. Specifying multiple
/// connection properties with the same key returns an error.
class ConnectionProperty {
  /// The key of the property to set.
  core.String? key;

  /// The value of the property to set.
  core.String? value;

  ConnectionProperty({
    this.key,
    this.value,
  });

  ConnectionProperty.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Information related to a CSV data source.
class CsvOptions {
  /// Indicates if BigQuery should accept rows that are missing trailing
  /// optional columns.
  ///
  /// If true, BigQuery treats missing trailing columns as null values. If
  /// false, records with missing trailing columns are treated as bad records,
  /// and if there are too many bad records, an invalid error is returned in the
  /// job result. The default value is false.
  ///
  /// Optional.
  core.bool? allowJaggedRows;

  /// Indicates if BigQuery should allow quoted data sections that contain
  /// newline characters in a CSV file.
  ///
  /// The default value is false.
  ///
  /// Optional.
  core.bool? allowQuotedNewlines;

  /// The character encoding of the data.
  ///
  /// The supported values are UTF-8, ISO-8859-1, UTF-16BE, UTF-16LE, UTF-32BE,
  /// and UTF-32LE. The default value is UTF-8. BigQuery decodes the data after
  /// the raw, binary data has been split using the values of the quote and
  /// fieldDelimiter properties.
  ///
  /// Optional.
  core.String? encoding;

  /// The separator character for fields in a CSV file.
  ///
  /// The separator is interpreted as a single byte. For files encoded in
  /// ISO-8859-1, any single character can be used as a separator. For files
  /// encoded in UTF-8, characters represented in decimal range 1-127
  /// (U+0001-U+007F) can be used without any modification. UTF-8 characters
  /// encoded with multiple bytes (i.e. U+0080 and above) will have only the
  /// first byte used for separating fields. The remaining bytes will be treated
  /// as a part of the field. BigQuery also supports the escape sequence "\t"
  /// (U+0009) to specify a tab separator. The default value is comma (",",
  /// U+002C).
  ///
  /// Optional.
  core.String? fieldDelimiter;

  /// A custom string that will represent a NULL value in CSV import data.
  ///
  /// Optional.
  core.String? nullMarker;

  /// Indicates if the embedded ASCII control characters (the first 32
  /// characters in the ASCII-table, from '\x00' to '\x1F') are preserved.
  ///
  /// Optional.
  core.bool? preserveAsciiControlCharacters;

  /// The value that is used to quote data sections in a CSV file.
  ///
  /// BigQuery converts the string to ISO-8859-1 encoding, and then uses the
  /// first byte of the encoded string to split the data in its raw, binary
  /// state. The default value is a double-quote ("). If your data does not
  /// contain quoted sections, set the property value to an empty string. If
  /// your data contains quoted newline characters, you must also set the
  /// allowQuotedNewlines property to true. To include the specific quote
  /// character within a quoted value, precede it with an additional matching
  /// quote character. For example, if you want to escape the default character
  /// ' " ', use ' "" '.
  ///
  /// Optional.
  core.String? quote;

  /// The number of rows at the top of a CSV file that BigQuery will skip when
  /// reading the data.
  ///
  /// The default value is 0. This property is useful if you have header rows in
  /// the file that should be skipped. When autodetect is on, the behavior is
  /// the following: * skipLeadingRows unspecified - Autodetect tries to detect
  /// headers in the first row. If they are not detected, the row is read as
  /// data. Otherwise data is read starting from the second row. *
  /// skipLeadingRows is 0 - Instructs autodetect that there are no headers and
  /// data should be read starting from the first row. * skipLeadingRows = N \>
  /// 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If
  /// headers are not detected, row N is just skipped. Otherwise row N is used
  /// to extract column names for the detected schema.
  ///
  /// Optional.
  core.String? skipLeadingRows;

  CsvOptions({
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.encoding,
    this.fieldDelimiter,
    this.nullMarker,
    this.preserveAsciiControlCharacters,
    this.quote,
    this.skipLeadingRows,
  });

  CsvOptions.fromJson(core.Map json_)
      : this(
          allowJaggedRows: json_.containsKey('allowJaggedRows')
              ? json_['allowJaggedRows'] as core.bool
              : null,
          allowQuotedNewlines: json_.containsKey('allowQuotedNewlines')
              ? json_['allowQuotedNewlines'] as core.bool
              : null,
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
              : null,
          fieldDelimiter: json_.containsKey('fieldDelimiter')
              ? json_['fieldDelimiter'] as core.String
              : null,
          nullMarker: json_.containsKey('nullMarker')
              ? json_['nullMarker'] as core.String
              : null,
          preserveAsciiControlCharacters:
              json_.containsKey('preserveAsciiControlCharacters')
                  ? json_['preserveAsciiControlCharacters'] as core.bool
                  : null,
          quote:
              json_.containsKey('quote') ? json_['quote'] as core.String : null,
          skipLeadingRows: json_.containsKey('skipLeadingRows')
              ? json_['skipLeadingRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowJaggedRows != null) 'allowJaggedRows': allowJaggedRows!,
        if (allowQuotedNewlines != null)
          'allowQuotedNewlines': allowQuotedNewlines!,
        if (encoding != null) 'encoding': encoding!,
        if (fieldDelimiter != null) 'fieldDelimiter': fieldDelimiter!,
        if (nullMarker != null) 'nullMarker': nullMarker!,
        if (preserveAsciiControlCharacters != null)
          'preserveAsciiControlCharacters': preserveAsciiControlCharacters!,
        if (quote != null) 'quote': quote!,
        if (skipLeadingRows != null) 'skipLeadingRows': skipLeadingRows!,
      };
}

/// Options for data format adjustments.
class DataFormatOptions {
  /// Output timestamp as usec int64.
  ///
  /// Default is false.
  ///
  /// Optional.
  core.bool? useInt64Timestamp;

  DataFormatOptions({
    this.useInt64Timestamp,
  });

  DataFormatOptions.fromJson(core.Map json_)
      : this(
          useInt64Timestamp: json_.containsKey('useInt64Timestamp')
              ? json_['useInt64Timestamp'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (useInt64Timestamp != null) 'useInt64Timestamp': useInt64Timestamp!,
      };
}

/// Statistics for data-masking.
class DataMaskingStatistics {
  /// Whether any accessed data was protected by the data masking.
  core.bool? dataMaskingApplied;

  DataMaskingStatistics({
    this.dataMaskingApplied,
  });

  DataMaskingStatistics.fromJson(core.Map json_)
      : this(
          dataMaskingApplied: json_.containsKey('dataMaskingApplied')
              ? json_['dataMaskingApplied'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataMaskingApplied != null)
          'dataMaskingApplied': dataMaskingApplied!,
      };
}

/// Data split result.
///
/// This contains references to the training and evaluation data tables that
/// were used to train the model.
class DataSplitResult {
  /// Table reference of the evaluation data after split.
  TableReference? evaluationTable;

  /// Table reference of the test data after split.
  TableReference? testTable;

  /// Table reference of the training data after split.
  TableReference? trainingTable;

  DataSplitResult({
    this.evaluationTable,
    this.testTable,
    this.trainingTable,
  });

  DataSplitResult.fromJson(core.Map json_)
      : this(
          evaluationTable: json_.containsKey('evaluationTable')
              ? TableReference.fromJson(json_['evaluationTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          testTable: json_.containsKey('testTable')
              ? TableReference.fromJson(
                  json_['testTable'] as core.Map<core.String, core.dynamic>)
              : null,
          trainingTable: json_.containsKey('trainingTable')
              ? TableReference.fromJson(
                  json_['trainingTable'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluationTable != null) 'evaluationTable': evaluationTable!,
        if (testTable != null) 'testTable': testTable!,
        if (trainingTable != null) 'trainingTable': trainingTable!,
      };
}

/// An object that defines dataset access for an entity.
class DatasetAccess {
  /// \[Pick one\] A grant authorizing all resources of a particular type in a
  /// particular dataset access to this dataset.
  ///
  /// Only views are supported for now. The role field is not required when this
  /// field is set. If that dataset is deleted and re-created, its access needs
  /// to be granted again via an update operation.
  DatasetAccessEntry? dataset;

  /// \[Pick one\] A domain to grant access to.
  ///
  /// Any users signed in with the domain specified will be granted the
  /// specified access. Example: "example.com". Maps to IAM policy member
  /// "domain:DOMAIN".
  core.String? domain;

  /// \[Pick one\] An email address of a Google Group to grant access to.
  ///
  /// Maps to IAM policy member "group:GROUP".
  core.String? groupByEmail;

  /// \[Pick one\] Some other type of member that appears in the IAM Policy but
  /// isn't a user, group, domain, or special group.
  core.String? iamMember;

  /// An IAM role ID that should be granted to the user, group, or domain
  /// specified in this access entry.
  ///
  /// The following legacy mappings will be applied: OWNER \<=\>
  /// roles/bigquery.dataOwner WRITER \<=\> roles/bigquery.dataEditor READER
  /// \<=\> roles/bigquery.dataViewer This field will accept any of the above
  /// formats, but will return only the legacy format. For example, if you set
  /// this field to "roles/bigquery.dataOwner", it will be returned back as
  /// "OWNER".
  core.String? role;

  /// \[Pick one\] A routine from a different dataset to grant access to.
  ///
  /// Queries executed against that routine will have read access to
  /// views/tables/routines in this dataset. Only UDF is supported for now. The
  /// role field is not required when this field is set. If that routine is
  /// updated by any user, access to the routine needs to be granted again via
  /// an update operation.
  RoutineReference? routine;

  /// \[Pick one\] A special group to grant access to.
  ///
  /// Possible values include: projectOwners: Owners of the enclosing project.
  /// projectReaders: Readers of the enclosing project. projectWriters: Writers
  /// of the enclosing project. allAuthenticatedUsers: All authenticated
  /// BigQuery users. Maps to similarly-named IAM members.
  core.String? specialGroup;

  /// \[Pick one\] An email address of a user to grant access to.
  ///
  /// For example: fred@example.com. Maps to IAM policy member "user:EMAIL" or
  /// "serviceAccount:EMAIL".
  core.String? userByEmail;

  /// \[Pick one\] A view from a different dataset to grant access to.
  ///
  /// Queries executed against that view will have read access to
  /// views/tables/routines in this dataset. The role field is not required when
  /// this field is set. If that view is updated by any user, access to the view
  /// needs to be granted again via an update operation.
  TableReference? view;

  DatasetAccess({
    this.dataset,
    this.domain,
    this.groupByEmail,
    this.iamMember,
    this.role,
    this.routine,
    this.specialGroup,
    this.userByEmail,
    this.view,
  });

  DatasetAccess.fromJson(core.Map json_)
      : this(
          dataset: json_.containsKey('dataset')
              ? DatasetAccessEntry.fromJson(
                  json_['dataset'] as core.Map<core.String, core.dynamic>)
              : null,
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          groupByEmail: json_.containsKey('groupByEmail')
              ? json_['groupByEmail'] as core.String
              : null,
          iamMember: json_.containsKey('iamMember')
              ? json_['iamMember'] as core.String
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          routine: json_.containsKey('routine')
              ? RoutineReference.fromJson(
                  json_['routine'] as core.Map<core.String, core.dynamic>)
              : null,
          specialGroup: json_.containsKey('specialGroup')
              ? json_['specialGroup'] as core.String
              : null,
          userByEmail: json_.containsKey('userByEmail')
              ? json_['userByEmail'] as core.String
              : null,
          view: json_.containsKey('view')
              ? TableReference.fromJson(
                  json_['view'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (domain != null) 'domain': domain!,
        if (groupByEmail != null) 'groupByEmail': groupByEmail!,
        if (iamMember != null) 'iamMember': iamMember!,
        if (role != null) 'role': role!,
        if (routine != null) 'routine': routine!,
        if (specialGroup != null) 'specialGroup': specialGroup!,
        if (userByEmail != null) 'userByEmail': userByEmail!,
        if (view != null) 'view': view!,
      };
}

/// A global tag managed by Resource Manager.
///
/// https://cloud.google.com/iam/docs/tags-access-control#definitions
class DatasetTags {
  /// The namespaced friendly name of the tag key, e.g. "12345/environment"
  /// where 12345 is org id.
  ///
  /// Required.
  core.String? tagKey;

  /// The friendly short name of the tag value, e.g. "production".
  ///
  /// Required.
  core.String? tagValue;

  DatasetTags({
    this.tagKey,
    this.tagValue,
  });

  DatasetTags.fromJson(core.Map json_)
      : this(
          tagKey: json_.containsKey('tagKey')
              ? json_['tagKey'] as core.String
              : null,
          tagValue: json_.containsKey('tagValue')
              ? json_['tagValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tagKey != null) 'tagKey': tagKey!,
        if (tagValue != null) 'tagValue': tagValue!,
      };
}

class Dataset {
  /// An array of objects that define dataset access for one or more entities.
  ///
  /// You can set this property when inserting or updating a dataset in order to
  /// control who is allowed to access the data. If unspecified at dataset
  /// creation time, BigQuery adds default dataset access for the following
  /// entities: access.specialGroup: projectReaders; access.role: READER;
  /// access.specialGroup: projectWriters; access.role: WRITER;
  /// access.specialGroup: projectOwners; access.role: OWNER;
  /// access.userByEmail: \[dataset creator email\]; access.role: OWNER;
  ///
  /// Optional.
  core.List<DatasetAccess>? access;

  /// The time when this dataset was created, in milliseconds since the epoch.
  ///
  /// Output only.
  core.String? creationTime;

  /// A reference that identifies the dataset.
  ///
  /// Required.
  DatasetReference? datasetReference;

  /// Defines the default collation specification of future tables created in
  /// the dataset.
  ///
  /// If a table is created in this dataset without table-level default
  /// collation, then the table inherits the dataset default collation, which is
  /// applied to the string fields that do not have explicit collation
  /// specified. A change to this field affects only tables created afterwards,
  /// and does not alter the existing tables. The following values are
  /// supported: * 'und:ci': undetermined locale, case insensitive. * '': empty
  /// string. Default to case-sensitive behavior.
  ///
  /// Optional.
  core.String? defaultCollation;

  /// The default encryption key for all tables in the dataset.
  ///
  /// Once this property is set, all newly-created partitioned tables in the
  /// dataset will have encryption key set to this value, unless table creation
  /// request (or query) overrides the key.
  EncryptionConfiguration? defaultEncryptionConfiguration;

  /// This default partition expiration, expressed in milliseconds.
  ///
  /// When new time-partitioned tables are created in a dataset where this
  /// property is set, the table will inherit this value, propagated as the
  /// `TimePartitioning.expirationMs` property on the new table. If you set
  /// `TimePartitioning.expirationMs` explicitly when creating a table, the
  /// `defaultPartitionExpirationMs` of the containing dataset is ignored. When
  /// creating a partitioned table, if `defaultPartitionExpirationMs` is set,
  /// the `defaultTableExpirationMs` value is ignored and the table will not be
  /// inherit a table expiration deadline.
  core.String? defaultPartitionExpirationMs;

  /// Defines the default rounding mode specification of new tables created
  /// within this dataset.
  ///
  /// During table creation, if this field is specified, the table within this
  /// dataset will inherit the default rounding mode of the dataset. Setting the
  /// default rounding mode on a table overrides this option. Existing tables in
  /// the dataset are unaffected. If columns are defined during that table
  /// creation, they will immediately inherit the table's default rounding mode,
  /// unless otherwise specified.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ROUNDING_MODE_UNSPECIFIED" : Unspecified will default to using
  /// ROUND_HALF_AWAY_FROM_ZERO.
  /// - "ROUND_HALF_AWAY_FROM_ZERO" : ROUND_HALF_AWAY_FROM_ZERO rounds half
  /// values away from zero when applying precision and scale upon writing of
  /// NUMERIC and BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 =\> 1 1.5,
  /// 1.6, 1.7, 1.8, 1.9 =\> 2
  /// - "ROUND_HALF_EVEN" : ROUND_HALF_EVEN rounds half values to the nearest
  /// even value when applying precision and scale upon writing of NUMERIC and
  /// BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 =\> 1 1.5 =\> 2 1.6,
  /// 1.7, 1.8, 1.9 =\> 2 2.5 =\> 2
  core.String? defaultRoundingMode;

  /// The default lifetime of all tables in the dataset, in milliseconds.
  ///
  /// The minimum lifetime value is 3600000 milliseconds (one hour). To clear an
  /// existing default expiration with a PATCH request, set to 0. Once this
  /// property is set, all newly-created tables in the dataset will have an
  /// expirationTime property set to the creation time plus the value in this
  /// property, and changing the value will only affect new tables, not existing
  /// ones. When the expirationTime for a given table is reached, that table
  /// will be deleted automatically. If a table's expirationTime is modified or
  /// removed before the table expires, or if you provide an explicit
  /// expirationTime when creating a table, that value takes precedence over the
  /// default expiration time indicated by this property.
  ///
  /// Optional.
  core.String? defaultTableExpirationMs;

  /// A user-friendly description of the dataset.
  ///
  /// Optional.
  core.String? description;

  /// A hash of the resource.
  ///
  /// Output only.
  core.String? etag;

  /// Options defining open source compatible datasets living in the BigQuery
  /// catalog.
  ///
  /// Contains metadata of open source database, schema or namespace represented
  /// by the current dataset.
  ///
  /// Optional.
  ExternalCatalogDatasetOptions? externalCatalogDatasetOptions;

  /// Reference to a read-only external dataset defined in data catalogs outside
  /// of BigQuery.
  ///
  /// Filled out when the dataset type is EXTERNAL.
  ///
  /// Optional.
  ExternalDatasetReference? externalDatasetReference;

  /// A descriptive name for the dataset.
  ///
  /// Optional.
  core.String? friendlyName;

  /// The fully-qualified unique name of the dataset in the format
  /// projectId:datasetId.
  ///
  /// The dataset name without the project name is given in the datasetId field.
  /// When creating a new dataset, leave this field blank, and instead specify
  /// the datasetId field.
  ///
  /// Output only.
  core.String? id;

  /// TRUE if the dataset and its table names are case-insensitive, otherwise
  /// FALSE.
  ///
  /// By default, this is FALSE, which means the dataset and its table names are
  /// case-sensitive. This field does not affect routine references.
  ///
  /// Optional.
  core.bool? isCaseInsensitive;

  /// The resource type.
  ///
  /// Output only.
  core.String? kind;

  /// The labels associated with this dataset.
  ///
  /// You can use these to organize and group your datasets. You can set this
  /// property when inserting or updating a dataset. See Creating and Updating
  /// Dataset Labels for more information.
  core.Map<core.String, core.String>? labels;

  /// The date when this dataset was last modified, in milliseconds since the
  /// epoch.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// Metadata about the LinkedDataset.
  ///
  /// Filled out when the dataset type is LINKED.
  ///
  /// Output only.
  LinkedDatasetMetadata? linkedDatasetMetadata;

  /// The source dataset reference when the dataset is of type LINKED.
  ///
  /// For all other dataset types it is not set. This field cannot be updated
  /// once it is set. Any attempt to update this field using Update and Patch
  /// API Operations will be ignored.
  ///
  /// Optional.
  LinkedDatasetSource? linkedDatasetSource;

  /// The geographic location where the dataset should reside.
  ///
  /// See https://cloud.google.com/bigquery/docs/locations for supported
  /// locations.
  core.String? location;

  /// Defines the time travel window in hours.
  ///
  /// The value can be from 48 to 168 hours (2 to 7 days). The default value is
  /// 168 hours if this is not set.
  ///
  /// Optional.
  core.String? maxTimeTravelHours;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// A URL that can be used to access the resource again.
  ///
  /// You can use this URL in Get or Update requests to the resource.
  ///
  /// Output only.
  core.String? selfLink;

  /// Updates storage_billing_model for the dataset.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STORAGE_BILLING_MODEL_UNSPECIFIED" : Value not set.
  /// - "LOGICAL" : Billing for logical bytes.
  /// - "PHYSICAL" : Billing for physical bytes.
  core.String? storageBillingModel;

  /// Tags for the Dataset.
  ///
  /// Output only.
  core.List<DatasetTags>? tags;

  /// Same as `type` in `ListFormatDataset`.
  ///
  /// The type of the dataset, one of: * DEFAULT - only accessible by owner and
  /// authorized accounts, * PUBLIC - accessible by everyone, * LINKED - linked
  /// dataset, * EXTERNAL - dataset with definition in external metadata
  /// catalog. -- *BIGLAKE_METASTORE - dataset that references a database
  /// created in BigLakeMetastore service. --
  ///
  /// Output only.
  core.String? type;

  Dataset({
    this.access,
    this.creationTime,
    this.datasetReference,
    this.defaultCollation,
    this.defaultEncryptionConfiguration,
    this.defaultPartitionExpirationMs,
    this.defaultRoundingMode,
    this.defaultTableExpirationMs,
    this.description,
    this.etag,
    this.externalCatalogDatasetOptions,
    this.externalDatasetReference,
    this.friendlyName,
    this.id,
    this.isCaseInsensitive,
    this.kind,
    this.labels,
    this.lastModifiedTime,
    this.linkedDatasetMetadata,
    this.linkedDatasetSource,
    this.location,
    this.maxTimeTravelHours,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.selfLink,
    this.storageBillingModel,
    this.tags,
    this.type,
  });

  Dataset.fromJson(core.Map json_)
      : this(
          access: json_.containsKey('access')
              ? (json_['access'] as core.List)
                  .map((value) => DatasetAccess.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          datasetReference: json_.containsKey('datasetReference')
              ? DatasetReference.fromJson(json_['datasetReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          defaultCollation: json_.containsKey('defaultCollation')
              ? json_['defaultCollation'] as core.String
              : null,
          defaultEncryptionConfiguration:
              json_.containsKey('defaultEncryptionConfiguration')
                  ? EncryptionConfiguration.fromJson(
                      json_['defaultEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          defaultPartitionExpirationMs:
              json_.containsKey('defaultPartitionExpirationMs')
                  ? json_['defaultPartitionExpirationMs'] as core.String
                  : null,
          defaultRoundingMode: json_.containsKey('defaultRoundingMode')
              ? json_['defaultRoundingMode'] as core.String
              : null,
          defaultTableExpirationMs:
              json_.containsKey('defaultTableExpirationMs')
                  ? json_['defaultTableExpirationMs'] as core.String
                  : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          externalCatalogDatasetOptions:
              json_.containsKey('externalCatalogDatasetOptions')
                  ? ExternalCatalogDatasetOptions.fromJson(
                      json_['externalCatalogDatasetOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          externalDatasetReference:
              json_.containsKey('externalDatasetReference')
                  ? ExternalDatasetReference.fromJson(
                      json_['externalDatasetReference']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          friendlyName: json_.containsKey('friendlyName')
              ? json_['friendlyName'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          isCaseInsensitive: json_.containsKey('isCaseInsensitive')
              ? json_['isCaseInsensitive'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          linkedDatasetMetadata: json_.containsKey('linkedDatasetMetadata')
              ? LinkedDatasetMetadata.fromJson(json_['linkedDatasetMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          linkedDatasetSource: json_.containsKey('linkedDatasetSource')
              ? LinkedDatasetSource.fromJson(json_['linkedDatasetSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          maxTimeTravelHours: json_.containsKey('maxTimeTravelHours')
              ? json_['maxTimeTravelHours'] as core.String
              : null,
          satisfiesPzi: json_.containsKey('satisfiesPzi')
              ? json_['satisfiesPzi'] as core.bool
              : null,
          satisfiesPzs: json_.containsKey('satisfiesPzs')
              ? json_['satisfiesPzs'] as core.bool
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          storageBillingModel: json_.containsKey('storageBillingModel')
              ? json_['storageBillingModel'] as core.String
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => DatasetTags.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (access != null) 'access': access!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (datasetReference != null) 'datasetReference': datasetReference!,
        if (defaultCollation != null) 'defaultCollation': defaultCollation!,
        if (defaultEncryptionConfiguration != null)
          'defaultEncryptionConfiguration': defaultEncryptionConfiguration!,
        if (defaultPartitionExpirationMs != null)
          'defaultPartitionExpirationMs': defaultPartitionExpirationMs!,
        if (defaultRoundingMode != null)
          'defaultRoundingMode': defaultRoundingMode!,
        if (defaultTableExpirationMs != null)
          'defaultTableExpirationMs': defaultTableExpirationMs!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (externalCatalogDatasetOptions != null)
          'externalCatalogDatasetOptions': externalCatalogDatasetOptions!,
        if (externalDatasetReference != null)
          'externalDatasetReference': externalDatasetReference!,
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (id != null) 'id': id!,
        if (isCaseInsensitive != null) 'isCaseInsensitive': isCaseInsensitive!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (linkedDatasetMetadata != null)
          'linkedDatasetMetadata': linkedDatasetMetadata!,
        if (linkedDatasetSource != null)
          'linkedDatasetSource': linkedDatasetSource!,
        if (location != null) 'location': location!,
        if (maxTimeTravelHours != null)
          'maxTimeTravelHours': maxTimeTravelHours!,
        if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (storageBillingModel != null)
          'storageBillingModel': storageBillingModel!,
        if (tags != null) 'tags': tags!,
        if (type != null) 'type': type!,
      };
}

/// Grants all resources of particular types in a particular dataset read access
/// to the current dataset.
///
/// Similar to how individually authorized views work, updates to any resource
/// granted through its dataset (including creation of new resources) requires
/// read permission to referenced resources, plus write permission to the
/// authorizing dataset.
class DatasetAccessEntry {
  /// The dataset this entry applies to
  DatasetReference? dataset;

  /// Which resources in the dataset this entry applies to.
  ///
  /// Currently, only views are supported, but additional target types may be
  /// added in the future.
  core.List<core.String>? targetTypes;

  DatasetAccessEntry({
    this.dataset,
    this.targetTypes,
  });

  DatasetAccessEntry.fromJson(core.Map json_)
      : this(
          dataset: json_.containsKey('dataset')
              ? DatasetReference.fromJson(
                  json_['dataset'] as core.Map<core.String, core.dynamic>)
              : null,
          targetTypes: json_.containsKey('targetTypes')
              ? (json_['targetTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (targetTypes != null) 'targetTypes': targetTypes!,
      };
}

/// A dataset resource with only a subset of fields, to be returned in a list of
/// datasets.
class DatasetListDatasets {
  /// The dataset reference.
  ///
  /// Use this property to access specific parts of the dataset's ID, such as
  /// project ID or dataset ID.
  DatasetReference? datasetReference;

  /// An alternate name for the dataset.
  ///
  /// The friendly name is purely decorative in nature.
  core.String? friendlyName;

  /// The fully-qualified, unique, opaque ID of the dataset.
  core.String? id;

  /// The resource type.
  ///
  /// This property always returns the value "bigquery#dataset"
  core.String? kind;

  /// The labels associated with this dataset.
  ///
  /// You can use these to organize and group your datasets.
  core.Map<core.String, core.String>? labels;

  /// The geographic location where the dataset resides.
  core.String? location;

  DatasetListDatasets({
    this.datasetReference,
    this.friendlyName,
    this.id,
    this.kind,
    this.labels,
    this.location,
  });

  DatasetListDatasets.fromJson(core.Map json_)
      : this(
          datasetReference: json_.containsKey('datasetReference')
              ? DatasetReference.fromJson(json_['datasetReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          friendlyName: json_.containsKey('friendlyName')
              ? json_['friendlyName'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetReference != null) 'datasetReference': datasetReference!,
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
      };
}

/// Response format for a page of results when listing datasets.
class DatasetList {
  /// An array of the dataset resources in the project.
  ///
  /// Each resource contains basic information. For full information about a
  /// particular dataset resource, use the Datasets: get method. This property
  /// is omitted when there are no datasets in the project.
  core.List<DatasetListDatasets>? datasets;

  /// A hash value of the results page.
  ///
  /// You can use this property to determine if the page has changed since the
  /// last request.
  ///
  /// Output only.
  core.String? etag;

  /// The resource type.
  ///
  /// This property always returns the value "bigquery#datasetList"
  ///
  /// Output only.
  core.String? kind;

  /// A token that can be used to request the next results page.
  ///
  /// This property is omitted on the final results page.
  core.String? nextPageToken;

  /// A list of skipped locations that were unreachable.
  ///
  /// For more information about BigQuery locations, see:
  /// https://cloud.google.com/bigquery/docs/locations. Example: "europe-west5"
  core.List<core.String>? unreachable;

  DatasetList({
    this.datasets,
    this.etag,
    this.kind,
    this.nextPageToken,
    this.unreachable,
  });

  DatasetList.fromJson(core.Map json_)
      : this(
          datasets: json_.containsKey('datasets')
              ? (json_['datasets'] as core.List)
                  .map((value) => DatasetListDatasets.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasets != null) 'datasets': datasets!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

class DatasetReference {
  /// A unique ID for this dataset, without the project name.
  ///
  /// The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores
  /// (_). The maximum length is 1,024 characters.
  ///
  /// Required.
  core.String? datasetId;

  /// The ID of the project containing this dataset.
  ///
  /// Optional.
  core.String? projectId;

  DatasetReference({
    this.datasetId,
    this.projectId,
  });

  DatasetReference.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Properties for the destination table.
class DestinationTableProperties {
  /// The description for the destination table.
  ///
  /// This will only be used if the destination table is newly created. If the
  /// table already exists and a value different than the current description is
  /// provided, the job will fail.
  ///
  /// Optional.
  core.String? description;

  /// Internal use only.
  core.DateTime? expirationTime;

  /// Friendly name for the destination table.
  ///
  /// If the table already exists, it should be same as the existing friendly
  /// name.
  ///
  /// Optional.
  core.String? friendlyName;

  /// The labels associated with this table.
  ///
  /// You can use these to organize and group your tables. This will only be
  /// used if the destination table is newly created. If the table already
  /// exists and labels are different than the current labels are provided, the
  /// job will fail.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  DestinationTableProperties({
    this.description,
    this.expirationTime,
    this.friendlyName,
    this.labels,
  });

  DestinationTableProperties.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          expirationTime: json_.containsKey('expirationTime')
              ? core.DateTime.parse(json_['expirationTime'] as core.String)
              : null,
          friendlyName: json_.containsKey('friendlyName')
              ? json_['friendlyName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expirationTime != null)
          'expirationTime': expirationTime!.toUtc().toIso8601String(),
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (labels != null) 'labels': labels!,
      };
}

/// Represents privacy policy associated with "differential privacy" method.
class DifferentialPrivacyPolicy {
  /// The total delta budget for all queries against the privacy-protected view.
  ///
  /// Each subscriber query against this view charges the amount of delta that
  /// is pre-defined by the contributor through the privacy policy
  /// delta_per_query field. If there is sufficient budget, then the subscriber
  /// query attempts to complete. It might still fail due to other reasons, in
  /// which case the charge is refunded. If there is insufficient budget the
  /// query is rejected. There might be multiple charge attempts if a single
  /// query references multiple views. In this case there must be sufficient
  /// budget for all charges or the query is rejected and charges are refunded
  /// in best effort. The budget does not have a refresh policy and can only be
  /// updated via ALTER VIEW or circumvented by creating a new view that can be
  /// queried with a fresh budget.
  ///
  /// Optional.
  core.double? deltaBudget;

  /// The delta value that is used per query.
  ///
  /// Delta represents the probability that any row will fail to be epsilon
  /// differentially private. Indicates the risk associated with exposing
  /// aggregate rows in the result of a query.
  ///
  /// Optional.
  core.double? deltaPerQuery;

  /// The total epsilon budget for all queries against the privacy-protected
  /// view.
  ///
  /// Each subscriber query against this view charges the amount of epsilon they
  /// request in their query. If there is sufficient budget, then the subscriber
  /// query attempts to complete. It might still fail due to other reasons, in
  /// which case the charge is refunded. If there is insufficient budget the
  /// query is rejected. There might be multiple charge attempts if a single
  /// query references multiple views. In this case there must be sufficient
  /// budget for all charges or the query is rejected and charges are refunded
  /// in best effort. The budget does not have a refresh policy and can only be
  /// updated via ALTER VIEW or circumvented by creating a new view that can be
  /// queried with a fresh budget.
  ///
  /// Optional.
  core.double? epsilonBudget;

  /// The maximum epsilon value that a query can consume.
  ///
  /// If the subscriber specifies epsilon as a parameter in a SELECT query, it
  /// must be less than or equal to this value. The epsilon parameter controls
  /// the amount of noise that is added to the groups — a higher epsilon means
  /// less noise.
  ///
  /// Optional.
  core.double? maxEpsilonPerQuery;

  /// The maximum groups contributed value that is used per query.
  ///
  /// Represents the maximum number of groups to which each protected entity can
  /// contribute. Changing this value does not improve or worsen privacy. The
  /// best value for accuracy and utility depends on the query and data.
  ///
  /// Optional.
  core.String? maxGroupsContributed;

  /// The privacy unit column associated with this policy.
  ///
  /// Differential privacy policies can only have one privacy unit column per
  /// data source object (table, view).
  ///
  /// Optional.
  core.String? privacyUnitColumn;

  DifferentialPrivacyPolicy({
    this.deltaBudget,
    this.deltaPerQuery,
    this.epsilonBudget,
    this.maxEpsilonPerQuery,
    this.maxGroupsContributed,
    this.privacyUnitColumn,
  });

  DifferentialPrivacyPolicy.fromJson(core.Map json_)
      : this(
          deltaBudget: json_.containsKey('deltaBudget')
              ? (json_['deltaBudget'] as core.num).toDouble()
              : null,
          deltaPerQuery: json_.containsKey('deltaPerQuery')
              ? (json_['deltaPerQuery'] as core.num).toDouble()
              : null,
          epsilonBudget: json_.containsKey('epsilonBudget')
              ? (json_['epsilonBudget'] as core.num).toDouble()
              : null,
          maxEpsilonPerQuery: json_.containsKey('maxEpsilonPerQuery')
              ? (json_['maxEpsilonPerQuery'] as core.num).toDouble()
              : null,
          maxGroupsContributed: json_.containsKey('maxGroupsContributed')
              ? json_['maxGroupsContributed'] as core.String
              : null,
          privacyUnitColumn: json_.containsKey('privacyUnitColumn')
              ? json_['privacyUnitColumn'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deltaBudget != null) 'deltaBudget': deltaBudget!,
        if (deltaPerQuery != null) 'deltaPerQuery': deltaPerQuery!,
        if (epsilonBudget != null) 'epsilonBudget': epsilonBudget!,
        if (maxEpsilonPerQuery != null)
          'maxEpsilonPerQuery': maxEpsilonPerQuery!,
        if (maxGroupsContributed != null)
          'maxGroupsContributed': maxGroupsContributed!,
        if (privacyUnitColumn != null) 'privacyUnitColumn': privacyUnitColumn!,
      };
}

/// Model evaluation metrics for dimensionality reduction models.
class DimensionalityReductionMetrics {
  /// Total percentage of variance explained by the selected principal
  /// components.
  core.double? totalExplainedVarianceRatio;

  DimensionalityReductionMetrics({
    this.totalExplainedVarianceRatio,
  });

  DimensionalityReductionMetrics.fromJson(core.Map json_)
      : this(
          totalExplainedVarianceRatio: json_
                  .containsKey('totalExplainedVarianceRatio')
              ? (json_['totalExplainedVarianceRatio'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalExplainedVarianceRatio != null)
          'totalExplainedVarianceRatio': totalExplainedVarianceRatio!,
      };
}

/// Detailed statistics for DML statements
class DmlStatistics {
  /// Number of deleted Rows.
  ///
  /// populated by DML DELETE, MERGE and TRUNCATE statements.
  ///
  /// Output only.
  core.String? deletedRowCount;

  /// Number of inserted Rows.
  ///
  /// Populated by DML INSERT and MERGE statements
  ///
  /// Output only.
  core.String? insertedRowCount;

  /// Number of updated Rows.
  ///
  /// Populated by DML UPDATE and MERGE statements.
  ///
  /// Output only.
  core.String? updatedRowCount;

  DmlStatistics({
    this.deletedRowCount,
    this.insertedRowCount,
    this.updatedRowCount,
  });

  DmlStatistics.fromJson(core.Map json_)
      : this(
          deletedRowCount: json_.containsKey('deletedRowCount')
              ? json_['deletedRowCount'] as core.String
              : null,
          insertedRowCount: json_.containsKey('insertedRowCount')
              ? json_['insertedRowCount'] as core.String
              : null,
          updatedRowCount: json_.containsKey('updatedRowCount')
              ? json_['updatedRowCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deletedRowCount != null) 'deletedRowCount': deletedRowCount!,
        if (insertedRowCount != null) 'insertedRowCount': insertedRowCount!,
        if (updatedRowCount != null) 'updatedRowCount': updatedRowCount!,
      };
}

/// Discrete candidates of a double hyperparameter.
class DoubleCandidates {
  /// Candidates for the double parameter in increasing order.
  core.List<core.double>? candidates;

  DoubleCandidates({
    this.candidates,
  });

  DoubleCandidates.fromJson(core.Map json_)
      : this(
          candidates: json_.containsKey('candidates')
              ? (json_['candidates'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (candidates != null) 'candidates': candidates!,
      };
}

/// Search space for a double hyperparameter.
class DoubleHparamSearchSpace {
  /// Candidates of the double hyperparameter.
  DoubleCandidates? candidates;

  /// Range of the double hyperparameter.
  DoubleRange? range;

  DoubleHparamSearchSpace({
    this.candidates,
    this.range,
  });

  DoubleHparamSearchSpace.fromJson(core.Map json_)
      : this(
          candidates: json_.containsKey('candidates')
              ? DoubleCandidates.fromJson(
                  json_['candidates'] as core.Map<core.String, core.dynamic>)
              : null,
          range: json_.containsKey('range')
              ? DoubleRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (candidates != null) 'candidates': candidates!,
        if (range != null) 'range': range!,
      };
}

/// Range of a double hyperparameter.
class DoubleRange {
  /// Max value of the double parameter.
  core.double? max;

  /// Min value of the double parameter.
  core.double? min;

  DoubleRange({
    this.max,
    this.min,
  });

  DoubleRange.fromJson(core.Map json_)
      : this(
          max: json_.containsKey('max')
              ? (json_['max'] as core.num).toDouble()
              : null,
          min: json_.containsKey('min')
              ? (json_['min'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (max != null) 'max': max!,
        if (min != null) 'min': min!,
      };
}

class EncryptionConfiguration {
  /// Describes the Cloud KMS encryption key that will be used to protect
  /// destination BigQuery table.
  ///
  /// The BigQuery Service Account associated with your project requires access
  /// to this encryption key.
  ///
  /// Optional.
  core.String? kmsKeyName;

  EncryptionConfiguration({
    this.kmsKeyName,
  });

  EncryptionConfiguration.fromJson(core.Map json_)
      : this(
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
      };
}

/// A single entry in the confusion matrix.
class Entry {
  /// Number of items being predicted as this label.
  core.String? itemCount;

  /// The predicted label.
  ///
  /// For confidence_threshold \> 0, we will also add an entry indicating the
  /// number of items under the confidence threshold.
  core.String? predictedLabel;

  Entry({
    this.itemCount,
    this.predictedLabel,
  });

  Entry.fromJson(core.Map json_)
      : this(
          itemCount: json_.containsKey('itemCount')
              ? json_['itemCount'] as core.String
              : null,
          predictedLabel: json_.containsKey('predictedLabel')
              ? json_['predictedLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (itemCount != null) 'itemCount': itemCount!,
        if (predictedLabel != null) 'predictedLabel': predictedLabel!,
      };
}

/// Error details.
class ErrorProto {
  /// Debugging information.
  ///
  /// This property is internal to Google and should not be used.
  core.String? debugInfo;

  /// Specifies where the error occurred, if present.
  core.String? location;

  /// A human-readable description of the error.
  core.String? message;

  /// A short error code that summarizes the error.
  core.String? reason;

  ErrorProto({
    this.debugInfo,
    this.location,
    this.message,
    this.reason,
  });

  ErrorProto.fromJson(core.Map json_)
      : this(
          debugInfo: json_.containsKey('debugInfo')
              ? json_['debugInfo'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugInfo != null) 'debugInfo': debugInfo!,
        if (location != null) 'location': location!,
        if (message != null) 'message': message!,
        if (reason != null) 'reason': reason!,
      };
}

/// Evaluation metrics of a model.
///
/// These are either computed on all training data or just the eval data based
/// on whether eval data was used during training. These are not present for
/// imported models.
class EvaluationMetrics {
  /// Populated for ARIMA models.
  ArimaForecastingMetrics? arimaForecastingMetrics;

  /// Populated for binary classification/classifier models.
  BinaryClassificationMetrics? binaryClassificationMetrics;

  /// Populated for clustering models.
  ClusteringMetrics? clusteringMetrics;

  /// Evaluation metrics when the model is a dimensionality reduction model,
  /// which currently includes PCA.
  DimensionalityReductionMetrics? dimensionalityReductionMetrics;

  /// Populated for multi-class classification/classifier models.
  MultiClassClassificationMetrics? multiClassClassificationMetrics;

  /// Populated for implicit feedback type matrix factorization models.
  RankingMetrics? rankingMetrics;

  /// Populated for regression models and explicit feedback type matrix
  /// factorization models.
  RegressionMetrics? regressionMetrics;

  EvaluationMetrics({
    this.arimaForecastingMetrics,
    this.binaryClassificationMetrics,
    this.clusteringMetrics,
    this.dimensionalityReductionMetrics,
    this.multiClassClassificationMetrics,
    this.rankingMetrics,
    this.regressionMetrics,
  });

  EvaluationMetrics.fromJson(core.Map json_)
      : this(
          arimaForecastingMetrics: json_.containsKey('arimaForecastingMetrics')
              ? ArimaForecastingMetrics.fromJson(
                  json_['arimaForecastingMetrics']
                      as core.Map<core.String, core.dynamic>)
              : null,
          binaryClassificationMetrics:
              json_.containsKey('binaryClassificationMetrics')
                  ? BinaryClassificationMetrics.fromJson(
                      json_['binaryClassificationMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          clusteringMetrics: json_.containsKey('clusteringMetrics')
              ? ClusteringMetrics.fromJson(json_['clusteringMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dimensionalityReductionMetrics:
              json_.containsKey('dimensionalityReductionMetrics')
                  ? DimensionalityReductionMetrics.fromJson(
                      json_['dimensionalityReductionMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          multiClassClassificationMetrics:
              json_.containsKey('multiClassClassificationMetrics')
                  ? MultiClassClassificationMetrics.fromJson(
                      json_['multiClassClassificationMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          rankingMetrics: json_.containsKey('rankingMetrics')
              ? RankingMetrics.fromJson(json_['rankingMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          regressionMetrics: json_.containsKey('regressionMetrics')
              ? RegressionMetrics.fromJson(json_['regressionMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arimaForecastingMetrics != null)
          'arimaForecastingMetrics': arimaForecastingMetrics!,
        if (binaryClassificationMetrics != null)
          'binaryClassificationMetrics': binaryClassificationMetrics!,
        if (clusteringMetrics != null) 'clusteringMetrics': clusteringMetrics!,
        if (dimensionalityReductionMetrics != null)
          'dimensionalityReductionMetrics': dimensionalityReductionMetrics!,
        if (multiClassClassificationMetrics != null)
          'multiClassClassificationMetrics': multiClassClassificationMetrics!,
        if (rankingMetrics != null) 'rankingMetrics': rankingMetrics!,
        if (regressionMetrics != null) 'regressionMetrics': regressionMetrics!,
      };
}

/// A single stage of query execution.
class ExplainQueryStage {
  /// Number of parallel input segments completed.
  core.String? completedParallelInputs;

  /// Compute mode for this stage.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMPUTE_MODE_UNSPECIFIED" : ComputeMode type not specified.
  /// - "BIGQUERY" : This stage was processed using BigQuery slots.
  /// - "BI_ENGINE" : This stage was processed using BI Engine compute.
  core.String? computeMode;

  /// Milliseconds the average shard spent on CPU-bound tasks.
  core.String? computeMsAvg;

  /// Milliseconds the slowest shard spent on CPU-bound tasks.
  core.String? computeMsMax;

  /// Relative amount of time the average shard spent on CPU-bound tasks.
  core.double? computeRatioAvg;

  /// Relative amount of time the slowest shard spent on CPU-bound tasks.
  core.double? computeRatioMax;

  /// Stage end time represented as milliseconds since the epoch.
  core.String? endMs;

  /// Unique ID for the stage within the plan.
  core.String? id;

  /// IDs for stages that are inputs to this stage.
  core.List<core.String>? inputStages;

  /// Human-readable name for the stage.
  core.String? name;

  /// Number of parallel input segments to be processed
  core.String? parallelInputs;

  /// Milliseconds the average shard spent reading input.
  core.String? readMsAvg;

  /// Milliseconds the slowest shard spent reading input.
  core.String? readMsMax;

  /// Relative amount of time the average shard spent reading input.
  core.double? readRatioAvg;

  /// Relative amount of time the slowest shard spent reading input.
  core.double? readRatioMax;

  /// Number of records read into the stage.
  core.String? recordsRead;

  /// Number of records written by the stage.
  core.String? recordsWritten;

  /// Total number of bytes written to shuffle.
  core.String? shuffleOutputBytes;

  /// Total number of bytes written to shuffle and spilled to disk.
  core.String? shuffleOutputBytesSpilled;

  /// Slot-milliseconds used by the stage.
  core.String? slotMs;

  /// Stage start time represented as milliseconds since the epoch.
  core.String? startMs;

  /// Current status for this stage.
  core.String? status;

  /// List of operations within the stage in dependency order (approximately
  /// chronological).
  core.List<ExplainQueryStep>? steps;

  /// Milliseconds the average shard spent waiting to be scheduled.
  core.String? waitMsAvg;

  /// Milliseconds the slowest shard spent waiting to be scheduled.
  core.String? waitMsMax;

  /// Relative amount of time the average shard spent waiting to be scheduled.
  core.double? waitRatioAvg;

  /// Relative amount of time the slowest shard spent waiting to be scheduled.
  core.double? waitRatioMax;

  /// Milliseconds the average shard spent on writing output.
  core.String? writeMsAvg;

  /// Milliseconds the slowest shard spent on writing output.
  core.String? writeMsMax;

  /// Relative amount of time the average shard spent on writing output.
  core.double? writeRatioAvg;

  /// Relative amount of time the slowest shard spent on writing output.
  core.double? writeRatioMax;

  ExplainQueryStage({
    this.completedParallelInputs,
    this.computeMode,
    this.computeMsAvg,
    this.computeMsMax,
    this.computeRatioAvg,
    this.computeRatioMax,
    this.endMs,
    this.id,
    this.inputStages,
    this.name,
    this.parallelInputs,
    this.readMsAvg,
    this.readMsMax,
    this.readRatioAvg,
    this.readRatioMax,
    this.recordsRead,
    this.recordsWritten,
    this.shuffleOutputBytes,
    this.shuffleOutputBytesSpilled,
    this.slotMs,
    this.startMs,
    this.status,
    this.steps,
    this.waitMsAvg,
    this.waitMsMax,
    this.waitRatioAvg,
    this.waitRatioMax,
    this.writeMsAvg,
    this.writeMsMax,
    this.writeRatioAvg,
    this.writeRatioMax,
  });

  ExplainQueryStage.fromJson(core.Map json_)
      : this(
          completedParallelInputs: json_.containsKey('completedParallelInputs')
              ? json_['completedParallelInputs'] as core.String
              : null,
          computeMode: json_.containsKey('computeMode')
              ? json_['computeMode'] as core.String
              : null,
          computeMsAvg: json_.containsKey('computeMsAvg')
              ? json_['computeMsAvg'] as core.String
              : null,
          computeMsMax: json_.containsKey('computeMsMax')
              ? json_['computeMsMax'] as core.String
              : null,
          computeRatioAvg: json_.containsKey('computeRatioAvg')
              ? (json_['computeRatioAvg'] as core.num).toDouble()
              : null,
          computeRatioMax: json_.containsKey('computeRatioMax')
              ? (json_['computeRatioMax'] as core.num).toDouble()
              : null,
          endMs:
              json_.containsKey('endMs') ? json_['endMs'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          inputStages: json_.containsKey('inputStages')
              ? (json_['inputStages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parallelInputs: json_.containsKey('parallelInputs')
              ? json_['parallelInputs'] as core.String
              : null,
          readMsAvg: json_.containsKey('readMsAvg')
              ? json_['readMsAvg'] as core.String
              : null,
          readMsMax: json_.containsKey('readMsMax')
              ? json_['readMsMax'] as core.String
              : null,
          readRatioAvg: json_.containsKey('readRatioAvg')
              ? (json_['readRatioAvg'] as core.num).toDouble()
              : null,
          readRatioMax: json_.containsKey('readRatioMax')
              ? (json_['readRatioMax'] as core.num).toDouble()
              : null,
          recordsRead: json_.containsKey('recordsRead')
              ? json_['recordsRead'] as core.String
              : null,
          recordsWritten: json_.containsKey('recordsWritten')
              ? json_['recordsWritten'] as core.String
              : null,
          shuffleOutputBytes: json_.containsKey('shuffleOutputBytes')
              ? json_['shuffleOutputBytes'] as core.String
              : null,
          shuffleOutputBytesSpilled:
              json_.containsKey('shuffleOutputBytesSpilled')
                  ? json_['shuffleOutputBytesSpilled'] as core.String
                  : null,
          slotMs: json_.containsKey('slotMs')
              ? json_['slotMs'] as core.String
              : null,
          startMs: json_.containsKey('startMs')
              ? json_['startMs'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          steps: json_.containsKey('steps')
              ? (json_['steps'] as core.List)
                  .map((value) => ExplainQueryStep.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          waitMsAvg: json_.containsKey('waitMsAvg')
              ? json_['waitMsAvg'] as core.String
              : null,
          waitMsMax: json_.containsKey('waitMsMax')
              ? json_['waitMsMax'] as core.String
              : null,
          waitRatioAvg: json_.containsKey('waitRatioAvg')
              ? (json_['waitRatioAvg'] as core.num).toDouble()
              : null,
          waitRatioMax: json_.containsKey('waitRatioMax')
              ? (json_['waitRatioMax'] as core.num).toDouble()
              : null,
          writeMsAvg: json_.containsKey('writeMsAvg')
              ? json_['writeMsAvg'] as core.String
              : null,
          writeMsMax: json_.containsKey('writeMsMax')
              ? json_['writeMsMax'] as core.String
              : null,
          writeRatioAvg: json_.containsKey('writeRatioAvg')
              ? (json_['writeRatioAvg'] as core.num).toDouble()
              : null,
          writeRatioMax: json_.containsKey('writeRatioMax')
              ? (json_['writeRatioMax'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completedParallelInputs != null)
          'completedParallelInputs': completedParallelInputs!,
        if (computeMode != null) 'computeMode': computeMode!,
        if (computeMsAvg != null) 'computeMsAvg': computeMsAvg!,
        if (computeMsMax != null) 'computeMsMax': computeMsMax!,
        if (computeRatioAvg != null) 'computeRatioAvg': computeRatioAvg!,
        if (computeRatioMax != null) 'computeRatioMax': computeRatioMax!,
        if (endMs != null) 'endMs': endMs!,
        if (id != null) 'id': id!,
        if (inputStages != null) 'inputStages': inputStages!,
        if (name != null) 'name': name!,
        if (parallelInputs != null) 'parallelInputs': parallelInputs!,
        if (readMsAvg != null) 'readMsAvg': readMsAvg!,
        if (readMsMax != null) 'readMsMax': readMsMax!,
        if (readRatioAvg != null) 'readRatioAvg': readRatioAvg!,
        if (readRatioMax != null) 'readRatioMax': readRatioMax!,
        if (recordsRead != null) 'recordsRead': recordsRead!,
        if (recordsWritten != null) 'recordsWritten': recordsWritten!,
        if (shuffleOutputBytes != null)
          'shuffleOutputBytes': shuffleOutputBytes!,
        if (shuffleOutputBytesSpilled != null)
          'shuffleOutputBytesSpilled': shuffleOutputBytesSpilled!,
        if (slotMs != null) 'slotMs': slotMs!,
        if (startMs != null) 'startMs': startMs!,
        if (status != null) 'status': status!,
        if (steps != null) 'steps': steps!,
        if (waitMsAvg != null) 'waitMsAvg': waitMsAvg!,
        if (waitMsMax != null) 'waitMsMax': waitMsMax!,
        if (waitRatioAvg != null) 'waitRatioAvg': waitRatioAvg!,
        if (waitRatioMax != null) 'waitRatioMax': waitRatioMax!,
        if (writeMsAvg != null) 'writeMsAvg': writeMsAvg!,
        if (writeMsMax != null) 'writeMsMax': writeMsMax!,
        if (writeRatioAvg != null) 'writeRatioAvg': writeRatioAvg!,
        if (writeRatioMax != null) 'writeRatioMax': writeRatioMax!,
      };
}

/// An operation within a stage.
class ExplainQueryStep {
  /// Machine-readable operation type.
  core.String? kind;

  /// Human-readable description of the step(s).
  core.List<core.String>? substeps;

  ExplainQueryStep({
    this.kind,
    this.substeps,
  });

  ExplainQueryStep.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          substeps: json_.containsKey('substeps')
              ? (json_['substeps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (substeps != null) 'substeps': substeps!,
      };
}

/// Explanation for a single feature.
class Explanation {
  /// Attribution of feature.
  core.double? attribution;

  /// The full feature name.
  ///
  /// For non-numerical features, will be formatted like `.`. Overall size of
  /// feature name will always be truncated to first 120 characters.
  core.String? featureName;

  Explanation({
    this.attribution,
    this.featureName,
  });

  Explanation.fromJson(core.Map json_)
      : this(
          attribution: json_.containsKey('attribution')
              ? (json_['attribution'] as core.num).toDouble()
              : null,
          featureName: json_.containsKey('featureName')
              ? json_['featureName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attribution != null) 'attribution': attribution!,
        if (featureName != null) 'featureName': featureName!,
      };
}

/// Statistics for the EXPORT DATA statement as part of Query Job.
///
/// EXTRACT JOB statistics are populated in JobStatistics4.
class ExportDataStatistics {
  /// Number of destination files generated in case of EXPORT DATA statement
  /// only.
  core.String? fileCount;

  /// \[Alpha\] Number of destination rows generated in case of EXPORT DATA
  /// statement only.
  core.String? rowCount;

  ExportDataStatistics({
    this.fileCount,
    this.rowCount,
  });

  ExportDataStatistics.fromJson(core.Map json_)
      : this(
          fileCount: json_.containsKey('fileCount')
              ? json_['fileCount'] as core.String
              : null,
          rowCount: json_.containsKey('rowCount')
              ? json_['rowCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileCount != null) 'fileCount': fileCount!,
        if (rowCount != null) 'rowCount': rowCount!,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef Expr = $Expr;

/// Options defining open source compatible datasets living in the BigQuery
/// catalog.
///
/// Contains metadata of open source database, schema or namespace represented
/// by the current dataset.
class ExternalCatalogDatasetOptions {
  /// The storage location URI for all tables in the dataset.
  ///
  /// Equivalent to hive metastore's database locationUri. Maximum length of
  /// 1024 characters.
  ///
  /// Optional.
  core.String? defaultStorageLocationUri;

  /// A map of key value pairs defining the parameters and properties of the
  /// open source schema.
  ///
  /// Maximum size of 2Mib.
  ///
  /// Optional.
  core.Map<core.String, core.String>? parameters;

  ExternalCatalogDatasetOptions({
    this.defaultStorageLocationUri,
    this.parameters,
  });

  ExternalCatalogDatasetOptions.fromJson(core.Map json_)
      : this(
          defaultStorageLocationUri:
              json_.containsKey('defaultStorageLocationUri')
                  ? json_['defaultStorageLocationUri'] as core.String
                  : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultStorageLocationUri != null)
          'defaultStorageLocationUri': defaultStorageLocationUri!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// Metadata about open source compatible table.
///
/// The fields contained in these options correspond to hive metastore's table
/// level properties.
class ExternalCatalogTableOptions {
  /// The connection specifying the credentials to be used to read external
  /// storage, such as Azure Blob, Cloud Storage, or S3.
  ///
  /// The connection is needed to read the open source table from BigQuery
  /// Engine. The connection_id can have the form `..` or
  /// `projects//locations//connections/`.
  ///
  /// Optional.
  core.String? connectionId;

  /// A map of key value pairs defining the parameters and properties of the
  /// open source table.
  ///
  /// Corresponds with hive meta store table parameters. Maximum size of 4Mib.
  ///
  /// Optional.
  core.Map<core.String, core.String>? parameters;

  /// A storage descriptor containing information about the physical storage of
  /// this table.
  ///
  /// Optional.
  StorageDescriptor? storageDescriptor;

  ExternalCatalogTableOptions({
    this.connectionId,
    this.parameters,
    this.storageDescriptor,
  });

  ExternalCatalogTableOptions.fromJson(core.Map json_)
      : this(
          connectionId: json_.containsKey('connectionId')
              ? json_['connectionId'] as core.String
              : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          storageDescriptor: json_.containsKey('storageDescriptor')
              ? StorageDescriptor.fromJson(json_['storageDescriptor']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionId != null) 'connectionId': connectionId!,
        if (parameters != null) 'parameters': parameters!,
        if (storageDescriptor != null) 'storageDescriptor': storageDescriptor!,
      };
}

class ExternalDataConfiguration {
  /// Try to detect schema and format options automatically.
  ///
  /// Any option specified explicitly will be honored.
  core.bool? autodetect;

  /// Additional properties to set if sourceFormat is set to AVRO.
  ///
  /// Optional.
  AvroOptions? avroOptions;

  /// Additional options if sourceFormat is set to BIGTABLE.
  ///
  /// Optional.
  BigtableOptions? bigtableOptions;

  /// The compression type of the data source.
  ///
  /// Possible values include GZIP and NONE. The default value is NONE. This
  /// setting is ignored for Google Cloud Bigtable, Google Cloud Datastore
  /// backups, Avro, ORC and Parquet formats. An empty string is an invalid
  /// value.
  ///
  /// Optional.
  core.String? compression;

  /// The connection specifying the credentials to be used to read external
  /// storage, such as Azure Blob, Cloud Storage, or S3.
  ///
  /// The connection_id can have the form
  /// "\<project\_id\>.\<location\_id\>.\<connection\_id\>" or
  /// "projects/\<project\_id\>/locations/\<location\_id\>/connections/\<connection\_id\>".
  ///
  /// Optional.
  core.String? connectionId;

  /// Additional properties to set if sourceFormat is set to CSV.
  ///
  /// Optional.
  CsvOptions? csvOptions;

  /// Defines the list of possible SQL data types to which the source decimal
  /// values are converted.
  ///
  /// This list and the precision and the scale parameters of the decimal field
  /// determine the target type. In the order of NUMERIC, BIGNUMERIC, and
  /// STRING, a type is picked if it is in the specified list and if it supports
  /// the precision and the scale. STRING supports all precision and scale
  /// values. If none of the listed types supports the precision and the scale,
  /// the type supporting the widest range in the specified list is picked, and
  /// if a value exceeds the supported range when reading the data, an error
  /// will be thrown. Example: Suppose the value of this field is \["NUMERIC",
  /// "BIGNUMERIC"\]. If (precision,scale) is: * (38,9) -\> NUMERIC; * (39,9)
  /// -\> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); * (38,10) -\>
  /// BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); * (76,38) -\>
  /// BIGNUMERIC; * (77,38) -\> BIGNUMERIC (error if value exeeds supported
  /// range). This field cannot contain duplicate types. The order of the types
  /// in this field is ignored. For example, \["BIGNUMERIC", "NUMERIC"\] is the
  /// same as \["NUMERIC", "BIGNUMERIC"\] and NUMERIC always takes precedence
  /// over BIGNUMERIC. Defaults to \["NUMERIC", "STRING"\] for ORC and
  /// \["NUMERIC"\] for the other file formats.
  core.List<core.String>? decimalTargetTypes;

  /// Specifies how source URIs are interpreted for constructing the file set to
  /// load.
  ///
  /// By default source URIs are expanded against the underlying storage. Other
  /// options include specifying manifest files. Only applicable to object
  /// storage systems.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FILE_SET_SPEC_TYPE_FILE_SYSTEM_MATCH" : This option expands source URIs
  /// by listing files from the object store. It is the default behavior if
  /// FileSetSpecType is not set.
  /// - "FILE_SET_SPEC_TYPE_NEW_LINE_DELIMITED_MANIFEST" : This option indicates
  /// that the provided URIs are newline-delimited manifest files, with one URI
  /// per line. Wildcard URIs are not supported.
  core.String? fileSetSpecType;

  /// Additional options if sourceFormat is set to GOOGLE_SHEETS.
  ///
  /// Optional.
  GoogleSheetsOptions? googleSheetsOptions;

  /// When set, configures hive partitioning support.
  ///
  /// Not all storage formats support hive partitioning -- requesting hive
  /// partitioning on an unsupported format will lead to an error, as will
  /// providing an invalid specification.
  ///
  /// Optional.
  HivePartitioningOptions? hivePartitioningOptions;

  /// Indicates if BigQuery should allow extra values that are not represented
  /// in the table schema.
  ///
  /// If true, the extra values are ignored. If false, records with extra
  /// columns are treated as bad records, and if there are too many bad records,
  /// an invalid error is returned in the job result. The default value is
  /// false. The sourceFormat property determines what BigQuery treats as an
  /// extra value: CSV: Trailing columns JSON: Named values that don't match any
  /// column names Google Cloud Bigtable: This setting is ignored. Google Cloud
  /// Datastore backups: This setting is ignored. Avro: This setting is ignored.
  /// ORC: This setting is ignored. Parquet: This setting is ignored.
  ///
  /// Optional.
  core.bool? ignoreUnknownValues;

  /// Load option to be used together with source_format newline-delimited JSON
  /// to indicate that a variant of JSON is being loaded.
  ///
  /// To load newline-delimited GeoJSON, specify GEOJSON (and source_format must
  /// be set to NEWLINE_DELIMITED_JSON).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JSON_EXTENSION_UNSPECIFIED" : The default if provided value is not one
  /// included in the enum, or the value is not specified. The source formate is
  /// parsed without any modification.
  /// - "GEOJSON" : Use GeoJSON variant of JSON. See
  /// https://tools.ietf.org/html/rfc7946.
  core.String? jsonExtension;

  /// Additional properties to set if sourceFormat is set to JSON.
  ///
  /// Optional.
  JsonOptions? jsonOptions;

  /// The maximum number of bad records that BigQuery can ignore when reading
  /// data.
  ///
  /// If the number of bad records exceeds this value, an invalid error is
  /// returned in the job result. The default value is 0, which requires that
  /// all records are valid. This setting is ignored for Google Cloud Bigtable,
  /// Google Cloud Datastore backups, Avro, ORC and Parquet formats.
  ///
  /// Optional.
  core.int? maxBadRecords;

  /// Metadata Cache Mode for the table.
  ///
  /// Set this to enable caching of metadata from external data source.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "METADATA_CACHE_MODE_UNSPECIFIED" : Unspecified metadata cache mode.
  /// - "AUTOMATIC" : Set this mode to trigger automatic background refresh of
  /// metadata cache from the external source. Queries will use the latest
  /// available cache version within the table's maxStaleness interval.
  /// - "MANUAL" : Set this mode to enable triggering manual refresh of the
  /// metadata cache from external source. Queries will use the latest manually
  /// triggered cache version within the table's maxStaleness interval.
  core.String? metadataCacheMode;

  /// ObjectMetadata is used to create Object Tables.
  ///
  /// Object Tables contain a listing of objects (with their metadata) found at
  /// the source_uris. If ObjectMetadata is set, source_format should be
  /// omitted. Currently SIMPLE is the only supported Object Metadata type.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "OBJECT_METADATA_UNSPECIFIED" : Unspecified by default.
  /// - "DIRECTORY" : A synonym for `SIMPLE`.
  /// - "SIMPLE" : Directory listing of objects.
  core.String? objectMetadata;

  /// Additional properties to set if sourceFormat is set to PARQUET.
  ///
  /// Optional.
  ParquetOptions? parquetOptions;

  /// When creating an external table, the user can provide a reference file
  /// with the table schema.
  ///
  /// This is enabled for the following formats: AVRO, PARQUET, ORC.
  ///
  /// Optional.
  core.String? referenceFileSchemaUri;

  /// The schema for the data.
  ///
  /// Schema is required for CSV and JSON formats if autodetect is not on.
  /// Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups,
  /// Avro, ORC and Parquet formats.
  ///
  /// Optional.
  TableSchema? schema;

  /// The data format.
  ///
  /// For CSV files, specify "CSV". For Google sheets, specify "GOOGLE_SHEETS".
  /// For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro
  /// files, specify "AVRO". For Google Cloud Datastore backups, specify
  /// "DATASTORE_BACKUP". For Apache Iceberg tables, specify "ICEBERG". For ORC
  /// files, specify "ORC". For Parquet files, specify "PARQUET". \[Beta\] For
  /// Google Cloud Bigtable, specify "BIGTABLE".
  ///
  /// Required.
  core.String? sourceFormat;

  /// The fully-qualified URIs that point to your data in Google Cloud.
  ///
  /// For Google Cloud Storage URIs: Each URI can contain one '*' wildcard
  /// character and it must come after the 'bucket' name. Size limits related to
  /// load jobs apply to external data sources. For Google Cloud Bigtable URIs:
  /// Exactly one URI can be specified and it has be a fully specified and valid
  /// HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore
  /// backups, exactly one URI can be specified. Also, the '*' wildcard
  /// character is not allowed.
  ///
  /// Required.
  core.List<core.String>? sourceUris;

  ExternalDataConfiguration({
    this.autodetect,
    this.avroOptions,
    this.bigtableOptions,
    this.compression,
    this.connectionId,
    this.csvOptions,
    this.decimalTargetTypes,
    this.fileSetSpecType,
    this.googleSheetsOptions,
    this.hivePartitioningOptions,
    this.ignoreUnknownValues,
    this.jsonExtension,
    this.jsonOptions,
    this.maxBadRecords,
    this.metadataCacheMode,
    this.objectMetadata,
    this.parquetOptions,
    this.referenceFileSchemaUri,
    this.schema,
    this.sourceFormat,
    this.sourceUris,
  });

  ExternalDataConfiguration.fromJson(core.Map json_)
      : this(
          autodetect: json_.containsKey('autodetect')
              ? json_['autodetect'] as core.bool
              : null,
          avroOptions: json_.containsKey('avroOptions')
              ? AvroOptions.fromJson(
                  json_['avroOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          bigtableOptions: json_.containsKey('bigtableOptions')
              ? BigtableOptions.fromJson(json_['bigtableOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          compression: json_.containsKey('compression')
              ? json_['compression'] as core.String
              : null,
          connectionId: json_.containsKey('connectionId')
              ? json_['connectionId'] as core.String
              : null,
          csvOptions: json_.containsKey('csvOptions')
              ? CsvOptions.fromJson(
                  json_['csvOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          decimalTargetTypes: json_.containsKey('decimalTargetTypes')
              ? (json_['decimalTargetTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileSetSpecType: json_.containsKey('fileSetSpecType')
              ? json_['fileSetSpecType'] as core.String
              : null,
          googleSheetsOptions: json_.containsKey('googleSheetsOptions')
              ? GoogleSheetsOptions.fromJson(json_['googleSheetsOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hivePartitioningOptions: json_.containsKey('hivePartitioningOptions')
              ? HivePartitioningOptions.fromJson(
                  json_['hivePartitioningOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          ignoreUnknownValues: json_.containsKey('ignoreUnknownValues')
              ? json_['ignoreUnknownValues'] as core.bool
              : null,
          jsonExtension: json_.containsKey('jsonExtension')
              ? json_['jsonExtension'] as core.String
              : null,
          jsonOptions: json_.containsKey('jsonOptions')
              ? JsonOptions.fromJson(
                  json_['jsonOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          maxBadRecords: json_.containsKey('maxBadRecords')
              ? json_['maxBadRecords'] as core.int
              : null,
          metadataCacheMode: json_.containsKey('metadataCacheMode')
              ? json_['metadataCacheMode'] as core.String
              : null,
          objectMetadata: json_.containsKey('objectMetadata')
              ? json_['objectMetadata'] as core.String
              : null,
          parquetOptions: json_.containsKey('parquetOptions')
              ? ParquetOptions.fromJson(json_['parquetOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          referenceFileSchemaUri: json_.containsKey('referenceFileSchemaUri')
              ? json_['referenceFileSchemaUri'] as core.String
              : null,
          schema: json_.containsKey('schema')
              ? TableSchema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceFormat: json_.containsKey('sourceFormat')
              ? json_['sourceFormat'] as core.String
              : null,
          sourceUris: json_.containsKey('sourceUris')
              ? (json_['sourceUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autodetect != null) 'autodetect': autodetect!,
        if (avroOptions != null) 'avroOptions': avroOptions!,
        if (bigtableOptions != null) 'bigtableOptions': bigtableOptions!,
        if (compression != null) 'compression': compression!,
        if (connectionId != null) 'connectionId': connectionId!,
        if (csvOptions != null) 'csvOptions': csvOptions!,
        if (decimalTargetTypes != null)
          'decimalTargetTypes': decimalTargetTypes!,
        if (fileSetSpecType != null) 'fileSetSpecType': fileSetSpecType!,
        if (googleSheetsOptions != null)
          'googleSheetsOptions': googleSheetsOptions!,
        if (hivePartitioningOptions != null)
          'hivePartitioningOptions': hivePartitioningOptions!,
        if (ignoreUnknownValues != null)
          'ignoreUnknownValues': ignoreUnknownValues!,
        if (jsonExtension != null) 'jsonExtension': jsonExtension!,
        if (jsonOptions != null) 'jsonOptions': jsonOptions!,
        if (maxBadRecords != null) 'maxBadRecords': maxBadRecords!,
        if (metadataCacheMode != null) 'metadataCacheMode': metadataCacheMode!,
        if (objectMetadata != null) 'objectMetadata': objectMetadata!,
        if (parquetOptions != null) 'parquetOptions': parquetOptions!,
        if (referenceFileSchemaUri != null)
          'referenceFileSchemaUri': referenceFileSchemaUri!,
        if (schema != null) 'schema': schema!,
        if (sourceFormat != null) 'sourceFormat': sourceFormat!,
        if (sourceUris != null) 'sourceUris': sourceUris!,
      };
}

/// Configures the access a dataset defined in an external metadata storage.
class ExternalDatasetReference {
  /// The connection id that is used to access the external_source.
  ///
  /// Format:
  /// projects/{project_id}/locations/{location_id}/connections/{connection_id}
  ///
  /// Required.
  core.String? connection;

  /// External source that backs this dataset.
  ///
  /// Required.
  core.String? externalSource;

  ExternalDatasetReference({
    this.connection,
    this.externalSource,
  });

  ExternalDatasetReference.fromJson(core.Map json_)
      : this(
          connection: json_.containsKey('connection')
              ? json_['connection'] as core.String
              : null,
          externalSource: json_.containsKey('externalSource')
              ? json_['externalSource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connection != null) 'connection': connection!,
        if (externalSource != null) 'externalSource': externalSource!,
      };
}

/// The external service cost is a portion of the total cost, these costs are
/// not additive with total_bytes_billed.
///
/// Moreover, this field only track external service costs that will show up as
/// BigQuery costs (e.g. training BigQuery ML job with google cloud CAIP or
/// Automl Tables services), not other costs which may be accrued by running the
/// query (e.g. reading from Bigtable or Cloud Storage). The external service
/// costs with different billing sku (e.g. CAIP job is charged based on VM
/// usage) are converted to BigQuery billed_bytes and slot_ms with equivalent
/// amount of US dollars. Services may not directly correlate to these metrics,
/// but these are the equivalents for billing purposes. Output only.
class ExternalServiceCost {
  /// External service cost in terms of bigquery bytes billed.
  core.String? bytesBilled;

  /// External service cost in terms of bigquery bytes processed.
  core.String? bytesProcessed;

  /// External service name.
  core.String? externalService;

  /// Non-preemptable reserved slots used for external job.
  ///
  /// For example, reserved slots for Cloua AI Platform job are the VM usages
  /// converted to BigQuery slot with equivalent mount of price.
  core.String? reservedSlotCount;

  /// External service cost in terms of bigquery slot milliseconds.
  core.String? slotMs;

  ExternalServiceCost({
    this.bytesBilled,
    this.bytesProcessed,
    this.externalService,
    this.reservedSlotCount,
    this.slotMs,
  });

  ExternalServiceCost.fromJson(core.Map json_)
      : this(
          bytesBilled: json_.containsKey('bytesBilled')
              ? json_['bytesBilled'] as core.String
              : null,
          bytesProcessed: json_.containsKey('bytesProcessed')
              ? json_['bytesProcessed'] as core.String
              : null,
          externalService: json_.containsKey('externalService')
              ? json_['externalService'] as core.String
              : null,
          reservedSlotCount: json_.containsKey('reservedSlotCount')
              ? json_['reservedSlotCount'] as core.String
              : null,
          slotMs: json_.containsKey('slotMs')
              ? json_['slotMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bytesBilled != null) 'bytesBilled': bytesBilled!,
        if (bytesProcessed != null) 'bytesProcessed': bytesProcessed!,
        if (externalService != null) 'externalService': externalService!,
        if (reservedSlotCount != null) 'reservedSlotCount': reservedSlotCount!,
        if (slotMs != null) 'slotMs': slotMs!,
      };
}

/// Representative value of a single feature within the cluster.
class FeatureValue {
  /// The categorical feature value.
  CategoricalValue? categoricalValue;

  /// The feature column name.
  core.String? featureColumn;

  /// The numerical feature value.
  ///
  /// This is the centroid value for this feature.
  core.double? numericalValue;

  FeatureValue({
    this.categoricalValue,
    this.featureColumn,
    this.numericalValue,
  });

  FeatureValue.fromJson(core.Map json_)
      : this(
          categoricalValue: json_.containsKey('categoricalValue')
              ? CategoricalValue.fromJson(json_['categoricalValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          featureColumn: json_.containsKey('featureColumn')
              ? json_['featureColumn'] as core.String
              : null,
          numericalValue: json_.containsKey('numericalValue')
              ? (json_['numericalValue'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoricalValue != null) 'categoricalValue': categoricalValue!,
        if (featureColumn != null) 'featureColumn': featureColumn!,
        if (numericalValue != null) 'numericalValue': numericalValue!,
      };
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// Response object of GetQueryResults.
class GetQueryResultsResponse {
  /// Whether the query result was fetched from the query cache.
  core.bool? cacheHit;

  /// The first errors or warnings encountered during the running of the job.
  ///
  /// The final message includes the number of errors that caused the process to
  /// stop. Errors here do not necessarily mean that the job has completed or
  /// was unsuccessful. For more information about error messages, see
  /// [Error messages](https://cloud.google.com/bigquery/docs/error-messages).
  ///
  /// Output only.
  core.List<ErrorProto>? errors;

  /// A hash of this response.
  core.String? etag;

  /// Whether the query has completed or not.
  ///
  /// If rows or totalRows are present, this will always be true. If this is
  /// false, totalRows will not be available.
  core.bool? jobComplete;

  /// Reference to the BigQuery Job that was created to run the query.
  ///
  /// This field will be present even if the original request timed out, in
  /// which case GetQueryResults can be used to read the results once the query
  /// has completed. Since this API only returns the first page of results,
  /// subsequent pages can be fetched via the same mechanism (GetQueryResults).
  JobReference? jobReference;

  /// The resource type of the response.
  core.String? kind;

  /// The number of rows affected by a DML statement.
  ///
  /// Present only for DML statements INSERT, UPDATE or DELETE.
  ///
  /// Output only.
  core.String? numDmlAffectedRows;

  /// A token used for paging results.
  ///
  /// When this token is non-empty, it indicates additional results are
  /// available.
  core.String? pageToken;

  /// An object with as many results as can be contained within the maximum
  /// permitted reply size.
  ///
  /// To get any additional rows, you can call GetQueryResults and specify the
  /// jobReference returned above. Present only when the query completes
  /// successfully. The REST-based representation of this data leverages a
  /// series of JSON f,v objects for indicating fields and values.
  core.List<TableRow>? rows;

  /// The schema of the results.
  ///
  /// Present only when the query completes successfully.
  TableSchema? schema;

  /// The total number of bytes processed for this query.
  core.String? totalBytesProcessed;

  /// The total number of rows in the complete query result set, which can be
  /// more than the number of rows in this single page of results.
  ///
  /// Present only when the query completes successfully.
  core.String? totalRows;

  GetQueryResultsResponse({
    this.cacheHit,
    this.errors,
    this.etag,
    this.jobComplete,
    this.jobReference,
    this.kind,
    this.numDmlAffectedRows,
    this.pageToken,
    this.rows,
    this.schema,
    this.totalBytesProcessed,
    this.totalRows,
  });

  GetQueryResultsResponse.fromJson(core.Map json_)
      : this(
          cacheHit: json_.containsKey('cacheHit')
              ? json_['cacheHit'] as core.bool
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ErrorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          jobComplete: json_.containsKey('jobComplete')
              ? json_['jobComplete'] as core.bool
              : null,
          jobReference: json_.containsKey('jobReference')
              ? JobReference.fromJson(
                  json_['jobReference'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          numDmlAffectedRows: json_.containsKey('numDmlAffectedRows')
              ? json_['numDmlAffectedRows'] as core.String
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => TableRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          schema: json_.containsKey('schema')
              ? TableSchema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          totalBytesProcessed: json_.containsKey('totalBytesProcessed')
              ? json_['totalBytesProcessed'] as core.String
              : null,
          totalRows: json_.containsKey('totalRows')
              ? json_['totalRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cacheHit != null) 'cacheHit': cacheHit!,
        if (errors != null) 'errors': errors!,
        if (etag != null) 'etag': etag!,
        if (jobComplete != null) 'jobComplete': jobComplete!,
        if (jobReference != null) 'jobReference': jobReference!,
        if (kind != null) 'kind': kind!,
        if (numDmlAffectedRows != null)
          'numDmlAffectedRows': numDmlAffectedRows!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (rows != null) 'rows': rows!,
        if (schema != null) 'schema': schema!,
        if (totalBytesProcessed != null)
          'totalBytesProcessed': totalBytesProcessed!,
        if (totalRows != null) 'totalRows': totalRows!,
      };
}

/// Response object of GetServiceAccount
class GetServiceAccountResponse {
  /// The service account email address.
  core.String? email;

  /// The resource type of the response.
  core.String? kind;

  GetServiceAccountResponse({
    this.email,
    this.kind,
  });

  GetServiceAccountResponse.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (kind != null) 'kind': kind!,
      };
}

/// Global explanations containing the top most important features after
/// training.
class GlobalExplanation {
  /// Class label for this set of global explanations.
  ///
  /// Will be empty/null for binary logistic and linear regression models.
  /// Sorted alphabetically in descending order.
  core.String? classLabel;

  /// A list of the top global explanations.
  ///
  /// Sorted by absolute value of attribution in descending order.
  core.List<Explanation>? explanations;

  GlobalExplanation({
    this.classLabel,
    this.explanations,
  });

  GlobalExplanation.fromJson(core.Map json_)
      : this(
          classLabel: json_.containsKey('classLabel')
              ? json_['classLabel'] as core.String
              : null,
          explanations: json_.containsKey('explanations')
              ? (json_['explanations'] as core.List)
                  .map((value) => Explanation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classLabel != null) 'classLabel': classLabel!,
        if (explanations != null) 'explanations': explanations!,
      };
}

/// Options specific to Google Sheets data sources.
class GoogleSheetsOptions {
  /// Range of a sheet to query from.
  ///
  /// Only used when non-empty. Typical format:
  /// sheet_name!top_left_cell_id:bottom_right_cell_id For example:
  /// sheet1!A1:B20
  ///
  /// Optional.
  core.String? range;

  /// The number of rows at the top of a sheet that BigQuery will skip when
  /// reading the data.
  ///
  /// The default value is 0. This property is useful if you have header rows
  /// that should be skipped. When autodetect is on, the behavior is the
  /// following: * skipLeadingRows unspecified - Autodetect tries to detect
  /// headers in the first row. If they are not detected, the row is read as
  /// data. Otherwise data is read starting from the second row. *
  /// skipLeadingRows is 0 - Instructs autodetect that there are no headers and
  /// data should be read starting from the first row. * skipLeadingRows = N \>
  /// 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If
  /// headers are not detected, row N is just skipped. Otherwise row N is used
  /// to extract column names for the detected schema.
  ///
  /// Optional.
  core.String? skipLeadingRows;

  GoogleSheetsOptions({
    this.range,
    this.skipLeadingRows,
  });

  GoogleSheetsOptions.fromJson(core.Map json_)
      : this(
          range:
              json_.containsKey('range') ? json_['range'] as core.String : null,
          skipLeadingRows: json_.containsKey('skipLeadingRows')
              ? json_['skipLeadingRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
        if (skipLeadingRows != null) 'skipLeadingRows': skipLeadingRows!,
      };
}

/// High cardinality join detailed information.
class HighCardinalityJoin {
  /// Count of left input rows.
  ///
  /// Output only.
  core.String? leftRows;

  /// Count of the output rows.
  ///
  /// Output only.
  core.String? outputRows;

  /// Count of right input rows.
  ///
  /// Output only.
  core.String? rightRows;

  /// The index of the join operator in the ExplainQueryStep lists.
  ///
  /// Output only.
  core.int? stepIndex;

  HighCardinalityJoin({
    this.leftRows,
    this.outputRows,
    this.rightRows,
    this.stepIndex,
  });

  HighCardinalityJoin.fromJson(core.Map json_)
      : this(
          leftRows: json_.containsKey('leftRows')
              ? json_['leftRows'] as core.String
              : null,
          outputRows: json_.containsKey('outputRows')
              ? json_['outputRows'] as core.String
              : null,
          rightRows: json_.containsKey('rightRows')
              ? json_['rightRows'] as core.String
              : null,
          stepIndex: json_.containsKey('stepIndex')
              ? json_['stepIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (leftRows != null) 'leftRows': leftRows!,
        if (outputRows != null) 'outputRows': outputRows!,
        if (rightRows != null) 'rightRows': rightRows!,
        if (stepIndex != null) 'stepIndex': stepIndex!,
      };
}

/// Options for configuring hive partitioning detect.
class HivePartitioningOptions {
  /// For permanent external tables, this field is populated with the hive
  /// partition keys in the order they were inferred.
  ///
  /// The types of the partition keys can be deduced by checking the table
  /// schema (which will include the partition keys). Not every API will
  /// populate this field in the output. For example, Tables.Get will populate
  /// it, but Tables.List will not contain this field.
  ///
  /// Output only.
  core.List<core.String>? fields;

  /// When set, what mode of hive partitioning to use when reading data.
  ///
  /// The following modes are supported: * AUTO: automatically infer partition
  /// key name(s) and type(s). * STRINGS: automatically infer partition key
  /// name(s). All types are strings. * CUSTOM: partition key schema is encoded
  /// in the source URI prefix. Not all storage formats support hive
  /// partitioning. Requesting hive partitioning on an unsupported format will
  /// lead to an error. Currently supported formats are: JSON, CSV, ORC, Avro
  /// and Parquet.
  ///
  /// Optional.
  core.String? mode;

  /// If set to true, queries over this table require a partition filter that
  /// can be used for partition elimination to be specified.
  ///
  /// Note that this field should only be true when creating a permanent
  /// external table or querying a temporary external table. Hive-partitioned
  /// loads with require_partition_filter explicitly set to true will fail.
  ///
  /// Optional.
  core.bool? requirePartitionFilter;

  /// When hive partition detection is requested, a common prefix for all source
  /// uris must be required.
  ///
  /// The prefix must end immediately before the partition key encoding begins.
  /// For example, consider files following this data layout:
  /// gs://bucket/path_to_table/dt=2019-06-01/country=USA/id=7/file.avro
  /// gs://bucket/path_to_table/dt=2019-05-31/country=CA/id=3/file.avro When
  /// hive partitioning is requested with either AUTO or STRINGS detection, the
  /// common prefix can be either of gs://bucket/path_to_table or
  /// gs://bucket/path_to_table/. CUSTOM detection requires encoding the
  /// partitioning schema immediately after the common prefix. For CUSTOM, any
  /// of * gs://bucket/path_to_table/{dt:DATE}/{country:STRING}/{id:INTEGER} *
  /// gs://bucket/path_to_table/{dt:STRING}/{country:STRING}/{id:INTEGER} *
  /// gs://bucket/path_to_table/{dt:DATE}/{country:STRING}/{id:STRING} would all
  /// be valid source URI prefixes.
  ///
  /// Optional.
  core.String? sourceUriPrefix;

  HivePartitioningOptions({
    this.fields,
    this.mode,
    this.requirePartitionFilter,
    this.sourceUriPrefix,
  });

  HivePartitioningOptions.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          requirePartitionFilter: json_.containsKey('requirePartitionFilter')
              ? json_['requirePartitionFilter'] as core.bool
              : null,
          sourceUriPrefix: json_.containsKey('sourceUriPrefix')
              ? json_['sourceUriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (mode != null) 'mode': mode!,
        if (requirePartitionFilter != null)
          'requirePartitionFilter': requirePartitionFilter!,
        if (sourceUriPrefix != null) 'sourceUriPrefix': sourceUriPrefix!,
      };
}

/// Hyperparameter search spaces.
///
/// These should be a subset of training_options.
class HparamSearchSpaces {
  /// Activation functions of neural network models.
  StringHparamSearchSpace? activationFn;

  /// Mini batch sample size.
  IntHparamSearchSpace? batchSize;

  /// Booster type for boosted tree models.
  StringHparamSearchSpace? boosterType;

  /// Subsample ratio of columns for each level for boosted tree models.
  DoubleHparamSearchSpace? colsampleBylevel;

  /// Subsample ratio of columns for each node(split) for boosted tree models.
  DoubleHparamSearchSpace? colsampleBynode;

  /// Subsample ratio of columns when constructing each tree for boosted tree
  /// models.
  DoubleHparamSearchSpace? colsampleBytree;

  /// Dart normalization type for boosted tree models.
  StringHparamSearchSpace? dartNormalizeType;

  /// Dropout probability for dnn model training and boosted tree models using
  /// dart booster.
  DoubleHparamSearchSpace? dropout;

  /// Hidden units for neural network models.
  IntArrayHparamSearchSpace? hiddenUnits;

  /// L1 regularization coefficient.
  DoubleHparamSearchSpace? l1Reg;

  /// L2 regularization coefficient.
  DoubleHparamSearchSpace? l2Reg;

  /// Learning rate of training jobs.
  DoubleHparamSearchSpace? learnRate;

  /// Maximum depth of a tree for boosted tree models.
  IntHparamSearchSpace? maxTreeDepth;

  /// Minimum split loss for boosted tree models.
  DoubleHparamSearchSpace? minSplitLoss;

  /// Minimum sum of instance weight needed in a child for boosted tree models.
  IntHparamSearchSpace? minTreeChildWeight;

  /// Number of clusters for k-means.
  IntHparamSearchSpace? numClusters;

  /// Number of latent factors to train on.
  IntHparamSearchSpace? numFactors;

  /// Number of parallel trees for boosted tree models.
  IntHparamSearchSpace? numParallelTree;

  /// Optimizer of TF models.
  StringHparamSearchSpace? optimizer;

  /// Subsample the training data to grow tree to prevent overfitting for
  /// boosted tree models.
  DoubleHparamSearchSpace? subsample;

  /// Tree construction algorithm for boosted tree models.
  StringHparamSearchSpace? treeMethod;

  /// Hyperparameter for matrix factoration when implicit feedback type is
  /// specified.
  DoubleHparamSearchSpace? walsAlpha;

  HparamSearchSpaces({
    this.activationFn,
    this.batchSize,
    this.boosterType,
    this.colsampleBylevel,
    this.colsampleBynode,
    this.colsampleBytree,
    this.dartNormalizeType,
    this.dropout,
    this.hiddenUnits,
    this.l1Reg,
    this.l2Reg,
    this.learnRate,
    this.maxTreeDepth,
    this.minSplitLoss,
    this.minTreeChildWeight,
    this.numClusters,
    this.numFactors,
    this.numParallelTree,
    this.optimizer,
    this.subsample,
    this.treeMethod,
    this.walsAlpha,
  });

  HparamSearchSpaces.fromJson(core.Map json_)
      : this(
          activationFn: json_.containsKey('activationFn')
              ? StringHparamSearchSpace.fromJson(
                  json_['activationFn'] as core.Map<core.String, core.dynamic>)
              : null,
          batchSize: json_.containsKey('batchSize')
              ? IntHparamSearchSpace.fromJson(
                  json_['batchSize'] as core.Map<core.String, core.dynamic>)
              : null,
          boosterType: json_.containsKey('boosterType')
              ? StringHparamSearchSpace.fromJson(
                  json_['boosterType'] as core.Map<core.String, core.dynamic>)
              : null,
          colsampleBylevel: json_.containsKey('colsampleBylevel')
              ? DoubleHparamSearchSpace.fromJson(json_['colsampleBylevel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          colsampleBynode: json_.containsKey('colsampleBynode')
              ? DoubleHparamSearchSpace.fromJson(json_['colsampleBynode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          colsampleBytree: json_.containsKey('colsampleBytree')
              ? DoubleHparamSearchSpace.fromJson(json_['colsampleBytree']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dartNormalizeType: json_.containsKey('dartNormalizeType')
              ? StringHparamSearchSpace.fromJson(json_['dartNormalizeType']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dropout: json_.containsKey('dropout')
              ? DoubleHparamSearchSpace.fromJson(
                  json_['dropout'] as core.Map<core.String, core.dynamic>)
              : null,
          hiddenUnits: json_.containsKey('hiddenUnits')
              ? IntArrayHparamSearchSpace.fromJson(
                  json_['hiddenUnits'] as core.Map<core.String, core.dynamic>)
              : null,
          l1Reg: json_.containsKey('l1Reg')
              ? DoubleHparamSearchSpace.fromJson(
                  json_['l1Reg'] as core.Map<core.String, core.dynamic>)
              : null,
          l2Reg: json_.containsKey('l2Reg')
              ? DoubleHparamSearchSpace.fromJson(
                  json_['l2Reg'] as core.Map<core.String, core.dynamic>)
              : null,
          learnRate: json_.containsKey('learnRate')
              ? DoubleHparamSearchSpace.fromJson(
                  json_['learnRate'] as core.Map<core.String, core.dynamic>)
              : null,
          maxTreeDepth: json_.containsKey('maxTreeDepth')
              ? IntHparamSearchSpace.fromJson(
                  json_['maxTreeDepth'] as core.Map<core.String, core.dynamic>)
              : null,
          minSplitLoss: json_.containsKey('minSplitLoss')
              ? DoubleHparamSearchSpace.fromJson(
                  json_['minSplitLoss'] as core.Map<core.String, core.dynamic>)
              : null,
          minTreeChildWeight: json_.containsKey('minTreeChildWeight')
              ? IntHparamSearchSpace.fromJson(json_['minTreeChildWeight']
                  as core.Map<core.String, core.dynamic>)
              : null,
          numClusters: json_.containsKey('numClusters')
              ? IntHparamSearchSpace.fromJson(
                  json_['numClusters'] as core.Map<core.String, core.dynamic>)
              : null,
          numFactors: json_.containsKey('numFactors')
              ? IntHparamSearchSpace.fromJson(
                  json_['numFactors'] as core.Map<core.String, core.dynamic>)
              : null,
          numParallelTree: json_.containsKey('numParallelTree')
              ? IntHparamSearchSpace.fromJson(json_['numParallelTree']
                  as core.Map<core.String, core.dynamic>)
              : null,
          optimizer: json_.containsKey('optimizer')
              ? StringHparamSearchSpace.fromJson(
                  json_['optimizer'] as core.Map<core.String, core.dynamic>)
              : null,
          subsample: json_.containsKey('subsample')
              ? DoubleHparamSearchSpace.fromJson(
                  json_['subsample'] as core.Map<core.String, core.dynamic>)
              : null,
          treeMethod: json_.containsKey('treeMethod')
              ? StringHparamSearchSpace.fromJson(
                  json_['treeMethod'] as core.Map<core.String, core.dynamic>)
              : null,
          walsAlpha: json_.containsKey('walsAlpha')
              ? DoubleHparamSearchSpace.fromJson(
                  json_['walsAlpha'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activationFn != null) 'activationFn': activationFn!,
        if (batchSize != null) 'batchSize': batchSize!,
        if (boosterType != null) 'boosterType': boosterType!,
        if (colsampleBylevel != null) 'colsampleBylevel': colsampleBylevel!,
        if (colsampleBynode != null) 'colsampleBynode': colsampleBynode!,
        if (colsampleBytree != null) 'colsampleBytree': colsampleBytree!,
        if (dartNormalizeType != null) 'dartNormalizeType': dartNormalizeType!,
        if (dropout != null) 'dropout': dropout!,
        if (hiddenUnits != null) 'hiddenUnits': hiddenUnits!,
        if (l1Reg != null) 'l1Reg': l1Reg!,
        if (l2Reg != null) 'l2Reg': l2Reg!,
        if (learnRate != null) 'learnRate': learnRate!,
        if (maxTreeDepth != null) 'maxTreeDepth': maxTreeDepth!,
        if (minSplitLoss != null) 'minSplitLoss': minSplitLoss!,
        if (minTreeChildWeight != null)
          'minTreeChildWeight': minTreeChildWeight!,
        if (numClusters != null) 'numClusters': numClusters!,
        if (numFactors != null) 'numFactors': numFactors!,
        if (numParallelTree != null) 'numParallelTree': numParallelTree!,
        if (optimizer != null) 'optimizer': optimizer!,
        if (subsample != null) 'subsample': subsample!,
        if (treeMethod != null) 'treeMethod': treeMethod!,
        if (walsAlpha != null) 'walsAlpha': walsAlpha!,
      };
}

/// Training info of a trial in \[hyperparameter
/// tuning\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview)
/// models.
class HparamTuningTrial {
  /// Ending time of the trial.
  core.String? endTimeMs;

  /// Error message for FAILED and INFEASIBLE trial.
  core.String? errorMessage;

  /// Loss computed on the eval data at the end of trial.
  core.double? evalLoss;

  /// Evaluation metrics of this trial calculated on the test data.
  ///
  /// Empty in Job API.
  EvaluationMetrics? evaluationMetrics;

  /// Hyperparameter tuning evaluation metrics of this trial calculated on the
  /// eval data.
  ///
  /// Unlike evaluation_metrics, only the fields corresponding to the
  /// hparam_tuning_objectives are set.
  EvaluationMetrics? hparamTuningEvaluationMetrics;

  /// The hyperprameters selected for this trial.
  TrainingOptions? hparams;

  /// Starting time of the trial.
  core.String? startTimeMs;

  /// The status of the trial.
  /// Possible string values are:
  /// - "TRIAL_STATUS_UNSPECIFIED" : Default value.
  /// - "NOT_STARTED" : Scheduled but not started.
  /// - "RUNNING" : Running state.
  /// - "SUCCEEDED" : The trial succeeded.
  /// - "FAILED" : The trial failed.
  /// - "INFEASIBLE" : The trial is infeasible due to the invalid params.
  /// - "STOPPED_EARLY" : Trial stopped early because it's not promising.
  core.String? status;

  /// Loss computed on the training data at the end of trial.
  core.double? trainingLoss;

  /// 1-based index of the trial.
  core.String? trialId;

  HparamTuningTrial({
    this.endTimeMs,
    this.errorMessage,
    this.evalLoss,
    this.evaluationMetrics,
    this.hparamTuningEvaluationMetrics,
    this.hparams,
    this.startTimeMs,
    this.status,
    this.trainingLoss,
    this.trialId,
  });

  HparamTuningTrial.fromJson(core.Map json_)
      : this(
          endTimeMs: json_.containsKey('endTimeMs')
              ? json_['endTimeMs'] as core.String
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          evalLoss: json_.containsKey('evalLoss')
              ? (json_['evalLoss'] as core.num).toDouble()
              : null,
          evaluationMetrics: json_.containsKey('evaluationMetrics')
              ? EvaluationMetrics.fromJson(json_['evaluationMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hparamTuningEvaluationMetrics:
              json_.containsKey('hparamTuningEvaluationMetrics')
                  ? EvaluationMetrics.fromJson(
                      json_['hparamTuningEvaluationMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          hparams: json_.containsKey('hparams')
              ? TrainingOptions.fromJson(
                  json_['hparams'] as core.Map<core.String, core.dynamic>)
              : null,
          startTimeMs: json_.containsKey('startTimeMs')
              ? json_['startTimeMs'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          trainingLoss: json_.containsKey('trainingLoss')
              ? (json_['trainingLoss'] as core.num).toDouble()
              : null,
          trialId: json_.containsKey('trialId')
              ? json_['trialId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTimeMs != null) 'endTimeMs': endTimeMs!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (evalLoss != null) 'evalLoss': evalLoss!,
        if (evaluationMetrics != null) 'evaluationMetrics': evaluationMetrics!,
        if (hparamTuningEvaluationMetrics != null)
          'hparamTuningEvaluationMetrics': hparamTuningEvaluationMetrics!,
        if (hparams != null) 'hparams': hparams!,
        if (startTimeMs != null) 'startTimeMs': startTimeMs!,
        if (status != null) 'status': status!,
        if (trainingLoss != null) 'trainingLoss': trainingLoss!,
        if (trialId != null) 'trialId': trialId!,
      };
}

/// Reason about why no search index was used in the search query (or
/// sub-query).
class IndexUnusedReason {
  /// Specifies the base table involved in the reason that no search index was
  /// used.
  TableReference? baseTable;

  /// Specifies the high-level reason for the scenario when no search index was
  /// used.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Code not specified.
  /// - "INDEX_CONFIG_NOT_AVAILABLE" : Indicates the search index configuration
  /// has not been created.
  /// - "PENDING_INDEX_CREATION" : Indicates the search index creation has not
  /// been completed.
  /// - "BASE_TABLE_TRUNCATED" : Indicates the base table has been truncated
  /// (rows have been removed from table with TRUNCATE TABLE statement) since
  /// the last time the search index was refreshed.
  /// - "INDEX_CONFIG_MODIFIED" : Indicates the search index configuration has
  /// been changed since the last time the search index was refreshed.
  /// - "TIME_TRAVEL_QUERY" : Indicates the search query accesses data at a
  /// timestamp before the last time the search index was refreshed.
  /// - "NO_PRUNING_POWER" : Indicates the usage of search index will not
  /// contribute to any pruning improvement for the search function, e.g. when
  /// the search predicate is in a disjunction with other non-search predicates.
  /// - "UNINDEXED_SEARCH_FIELDS" : Indicates the search index does not cover
  /// all fields in the search function.
  /// - "UNSUPPORTED_SEARCH_PATTERN" : Indicates the search index does not
  /// support the given search query pattern.
  /// - "OPTIMIZED_WITH_MATERIALIZED_VIEW" : Indicates the query has been
  /// optimized by using a materialized view.
  /// - "SECURED_BY_DATA_MASKING" : Indicates the query has been secured by data
  /// masking, and thus search indexes are not applicable.
  /// - "MISMATCHED_TEXT_ANALYZER" : Indicates that the search index and the
  /// search function call do not have the same text analyzer.
  /// - "BASE_TABLE_TOO_SMALL" : Indicates the base table is too small (below a
  /// certain threshold). The index does not provide noticeable search
  /// performance gains when the base table is too small.
  /// - "BASE_TABLE_TOO_LARGE" : Indicates that the total size of indexed base
  /// tables in your organization exceeds your region's limit and the index is
  /// not used in the query. To index larger base tables, you can use your own
  /// reservation for index-management jobs.
  /// - "ESTIMATED_PERFORMANCE_GAIN_TOO_LOW" : Indicates that the estimated
  /// performance gain from using the search index is too low for the given
  /// search query.
  /// - "NOT_SUPPORTED_IN_STANDARD_EDITION" : Indicates that search indexes can
  /// not be used for search query with STANDARD edition.
  /// - "INDEX_SUPPRESSED_BY_FUNCTION_OPTION" : Indicates that an option in the
  /// search function that cannot make use of the index has been selected.
  /// - "QUERY_CACHE_HIT" : Indicates that the query was cached, and thus the
  /// search index was not used.
  /// - "INTERNAL_ERROR" : Indicates an internal error that causes the search
  /// index to be unused.
  /// - "OTHER_REASON" : Indicates that the reason search indexes cannot be used
  /// in the query is not covered by any of the other IndexUnusedReason options.
  core.String? code;

  /// Specifies the name of the unused search index, if available.
  core.String? indexName;

  /// Free form human-readable reason for the scenario when no search index was
  /// used.
  core.String? message;

  IndexUnusedReason({
    this.baseTable,
    this.code,
    this.indexName,
    this.message,
  });

  IndexUnusedReason.fromJson(core.Map json_)
      : this(
          baseTable: json_.containsKey('baseTable')
              ? TableReference.fromJson(
                  json_['baseTable'] as core.Map<core.String, core.dynamic>)
              : null,
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          indexName: json_.containsKey('indexName')
              ? json_['indexName'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseTable != null) 'baseTable': baseTable!,
        if (code != null) 'code': code!,
        if (indexName != null) 'indexName': indexName!,
        if (message != null) 'message': message!,
      };
}

/// Details about the input data change insight.
class InputDataChange {
  /// Records read difference percentage compared to a previous run.
  ///
  /// Output only.
  core.double? recordsReadDiffPercentage;

  InputDataChange({
    this.recordsReadDiffPercentage,
  });

  InputDataChange.fromJson(core.Map json_)
      : this(
          recordsReadDiffPercentage:
              json_.containsKey('recordsReadDiffPercentage')
                  ? (json_['recordsReadDiffPercentage'] as core.num).toDouble()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recordsReadDiffPercentage != null)
          'recordsReadDiffPercentage': recordsReadDiffPercentage!,
      };
}

/// An array of int.
class IntArray {
  /// Elements in the int array.
  core.List<core.String>? elements;

  IntArray({
    this.elements,
  });

  IntArray.fromJson(core.Map json_)
      : this(
          elements: json_.containsKey('elements')
              ? (json_['elements'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elements != null) 'elements': elements!,
      };
}

/// Search space for int array.
class IntArrayHparamSearchSpace {
  /// Candidates for the int array parameter.
  core.List<IntArray>? candidates;

  IntArrayHparamSearchSpace({
    this.candidates,
  });

  IntArrayHparamSearchSpace.fromJson(core.Map json_)
      : this(
          candidates: json_.containsKey('candidates')
              ? (json_['candidates'] as core.List)
                  .map((value) => IntArray.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (candidates != null) 'candidates': candidates!,
      };
}

/// Discrete candidates of an int hyperparameter.
class IntCandidates {
  /// Candidates for the int parameter in increasing order.
  core.List<core.String>? candidates;

  IntCandidates({
    this.candidates,
  });

  IntCandidates.fromJson(core.Map json_)
      : this(
          candidates: json_.containsKey('candidates')
              ? (json_['candidates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (candidates != null) 'candidates': candidates!,
      };
}

/// Search space for an int hyperparameter.
class IntHparamSearchSpace {
  /// Candidates of the int hyperparameter.
  IntCandidates? candidates;

  /// Range of the int hyperparameter.
  IntRange? range;

  IntHparamSearchSpace({
    this.candidates,
    this.range,
  });

  IntHparamSearchSpace.fromJson(core.Map json_)
      : this(
          candidates: json_.containsKey('candidates')
              ? IntCandidates.fromJson(
                  json_['candidates'] as core.Map<core.String, core.dynamic>)
              : null,
          range: json_.containsKey('range')
              ? IntRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (candidates != null) 'candidates': candidates!,
        if (range != null) 'range': range!,
      };
}

/// Range of an int hyperparameter.
class IntRange {
  /// Max value of the int parameter.
  core.String? max;

  /// Min value of the int parameter.
  core.String? min;

  IntRange({
    this.max,
    this.min,
  });

  IntRange.fromJson(core.Map json_)
      : this(
          max: json_.containsKey('max') ? json_['max'] as core.String : null,
          min: json_.containsKey('min') ? json_['min'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (max != null) 'max': max!,
        if (min != null) 'min': min!,
      };
}

/// Information about a single iteration of the training run.
class IterationResult {
  /// Arima result.
  ArimaResult? arimaResult;

  /// Information about top clusters for clustering models.
  core.List<ClusterInfo>? clusterInfos;

  /// Time taken to run the iteration in milliseconds.
  core.String? durationMs;

  /// Loss computed on the eval data at the end of iteration.
  core.double? evalLoss;

  /// Index of the iteration, 0 based.
  core.int? index;

  /// Learn rate used for this iteration.
  core.double? learnRate;

  /// The information of the principal components.
  core.List<PrincipalComponentInfo>? principalComponentInfos;

  /// Loss computed on the training data at the end of iteration.
  core.double? trainingLoss;

  IterationResult({
    this.arimaResult,
    this.clusterInfos,
    this.durationMs,
    this.evalLoss,
    this.index,
    this.learnRate,
    this.principalComponentInfos,
    this.trainingLoss,
  });

  IterationResult.fromJson(core.Map json_)
      : this(
          arimaResult: json_.containsKey('arimaResult')
              ? ArimaResult.fromJson(
                  json_['arimaResult'] as core.Map<core.String, core.dynamic>)
              : null,
          clusterInfos: json_.containsKey('clusterInfos')
              ? (json_['clusterInfos'] as core.List)
                  .map((value) => ClusterInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          durationMs: json_.containsKey('durationMs')
              ? json_['durationMs'] as core.String
              : null,
          evalLoss: json_.containsKey('evalLoss')
              ? (json_['evalLoss'] as core.num).toDouble()
              : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          learnRate: json_.containsKey('learnRate')
              ? (json_['learnRate'] as core.num).toDouble()
              : null,
          principalComponentInfos: json_.containsKey('principalComponentInfos')
              ? (json_['principalComponentInfos'] as core.List)
                  .map((value) => PrincipalComponentInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          trainingLoss: json_.containsKey('trainingLoss')
              ? (json_['trainingLoss'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arimaResult != null) 'arimaResult': arimaResult!,
        if (clusterInfos != null) 'clusterInfos': clusterInfos!,
        if (durationMs != null) 'durationMs': durationMs!,
        if (evalLoss != null) 'evalLoss': evalLoss!,
        if (index != null) 'index': index!,
        if (learnRate != null) 'learnRate': learnRate!,
        if (principalComponentInfos != null)
          'principalComponentInfos': principalComponentInfos!,
        if (trainingLoss != null) 'trainingLoss': trainingLoss!,
      };
}

class Job {
  /// Describes the job configuration.
  ///
  /// Required.
  JobConfiguration? configuration;

  /// A hash of this resource.
  ///
  /// Output only.
  core.String? etag;

  /// Opaque ID field of the job.
  ///
  /// Output only.
  core.String? id;

  /// If set, it provides the reason why a Job was created.
  ///
  /// If not set, it should be treated as the default: REQUESTED. This feature
  /// is not yet available. Jobs will always be created.
  ///
  /// Output only.
  JobCreationReason? jobCreationReason;

  /// Reference describing the unique-per-user name of the job.
  ///
  /// Optional.
  JobReference? jobReference;

  /// The type of the resource.
  ///
  /// Output only.
  core.String? kind;

  /// \[Full-projection-only\] String representation of identity of requesting
  /// party.
  ///
  /// Populated for both first- and third-party identities. Only present for
  /// APIs that support third-party identities.
  ///
  /// Output only.
  core.String? principalSubject;

  /// A URL that can be used to access the resource again.
  ///
  /// Output only.
  core.String? selfLink;

  /// Information about the job, including starting time and ending time of the
  /// job.
  ///
  /// Output only.
  JobStatistics? statistics;

  /// The status of this job.
  ///
  /// Examine this value when polling an asynchronous job to see if the job is
  /// complete.
  ///
  /// Output only.
  JobStatus? status;

  /// Email address of the user who ran the job.
  ///
  /// Output only.
  core.String? userEmail;

  Job({
    this.configuration,
    this.etag,
    this.id,
    this.jobCreationReason,
    this.jobReference,
    this.kind,
    this.principalSubject,
    this.selfLink,
    this.statistics,
    this.status,
    this.userEmail,
  });

  Job.fromJson(core.Map json_)
      : this(
          configuration: json_.containsKey('configuration')
              ? JobConfiguration.fromJson(
                  json_['configuration'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          jobCreationReason: json_.containsKey('jobCreationReason')
              ? JobCreationReason.fromJson(json_['jobCreationReason']
                  as core.Map<core.String, core.dynamic>)
              : null,
          jobReference: json_.containsKey('jobReference')
              ? JobReference.fromJson(
                  json_['jobReference'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          principalSubject: json_.containsKey('principal_subject')
              ? json_['principal_subject'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          statistics: json_.containsKey('statistics')
              ? JobStatistics.fromJson(
                  json_['statistics'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? JobStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          userEmail: json_.containsKey('user_email')
              ? json_['user_email'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configuration != null) 'configuration': configuration!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (jobCreationReason != null) 'jobCreationReason': jobCreationReason!,
        if (jobReference != null) 'jobReference': jobReference!,
        if (kind != null) 'kind': kind!,
        if (principalSubject != null) 'principal_subject': principalSubject!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (statistics != null) 'statistics': statistics!,
        if (status != null) 'status': status!,
        if (userEmail != null) 'user_email': userEmail!,
      };
}

/// Describes format of a jobs cancellation response.
class JobCancelResponse {
  /// The final state of the job.
  Job? job;

  /// The resource type of the response.
  core.String? kind;

  JobCancelResponse({
    this.job,
    this.kind,
  });

  JobCancelResponse.fromJson(core.Map json_)
      : this(
          job: json_.containsKey('job')
              ? Job.fromJson(
                  json_['job'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!,
        if (kind != null) 'kind': kind!,
      };
}

class JobConfiguration {
  /// \[Pick one\] Copies a table.
  JobConfigurationTableCopy? copy;

  /// If set, don't actually run this job.
  ///
  /// A valid query will return a mostly empty response with some processing
  /// statistics, while an invalid query will return the same error it would if
  /// it wasn't a dry run. Behavior of non-query jobs is undefined.
  ///
  /// Optional.
  core.bool? dryRun;

  /// \[Pick one\] Configures an extract job.
  JobConfigurationExtract? extract;

  /// Job timeout in milliseconds.
  ///
  /// If this time limit is exceeded, BigQuery might attempt to stop the job.
  ///
  /// Optional.
  core.String? jobTimeoutMs;

  /// The type of the job.
  ///
  /// Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN.
  ///
  /// Output only.
  core.String? jobType;

  /// The labels associated with this job.
  ///
  /// You can use these to organize and group your jobs. Label keys and values
  /// can be no longer than 63 characters, can only contain lowercase letters,
  /// numeric characters, underscores and dashes. International characters are
  /// allowed. Label values are optional. Label keys must start with a letter
  /// and each label in the list must have a different key.
  core.Map<core.String, core.String>? labels;

  /// \[Pick one\] Configures a load job.
  JobConfigurationLoad? load;

  /// \[Pick one\] Configures a query job.
  JobConfigurationQuery? query;

  JobConfiguration({
    this.copy,
    this.dryRun,
    this.extract,
    this.jobTimeoutMs,
    this.jobType,
    this.labels,
    this.load,
    this.query,
  });

  JobConfiguration.fromJson(core.Map json_)
      : this(
          copy: json_.containsKey('copy')
              ? JobConfigurationTableCopy.fromJson(
                  json_['copy'] as core.Map<core.String, core.dynamic>)
              : null,
          dryRun:
              json_.containsKey('dryRun') ? json_['dryRun'] as core.bool : null,
          extract: json_.containsKey('extract')
              ? JobConfigurationExtract.fromJson(
                  json_['extract'] as core.Map<core.String, core.dynamic>)
              : null,
          jobTimeoutMs: json_.containsKey('jobTimeoutMs')
              ? json_['jobTimeoutMs'] as core.String
              : null,
          jobType: json_.containsKey('jobType')
              ? json_['jobType'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          load: json_.containsKey('load')
              ? JobConfigurationLoad.fromJson(
                  json_['load'] as core.Map<core.String, core.dynamic>)
              : null,
          query: json_.containsKey('query')
              ? JobConfigurationQuery.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (copy != null) 'copy': copy!,
        if (dryRun != null) 'dryRun': dryRun!,
        if (extract != null) 'extract': extract!,
        if (jobTimeoutMs != null) 'jobTimeoutMs': jobTimeoutMs!,
        if (jobType != null) 'jobType': jobType!,
        if (labels != null) 'labels': labels!,
        if (load != null) 'load': load!,
        if (query != null) 'query': query!,
      };
}

/// JobConfigurationExtract configures a job that exports data from a BigQuery
/// table into Google Cloud Storage.
class JobConfigurationExtract {
  /// The compression type to use for exported files.
  ///
  /// Possible values include DEFLATE, GZIP, NONE, SNAPPY, and ZSTD. The default
  /// value is NONE. Not all compression formats are support for all file
  /// formats. DEFLATE is only supported for Avro. ZSTD is only supported for
  /// Parquet. Not applicable when extracting models.
  ///
  /// Optional.
  core.String? compression;

  /// The exported file format.
  ///
  /// Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET, or AVRO for
  /// tables and ML_TF_SAVED_MODEL or ML_XGBOOST_BOOSTER for models. The default
  /// value for tables is CSV. Tables with nested or repeated fields cannot be
  /// exported as CSV. The default value for models is ML_TF_SAVED_MODEL.
  ///
  /// Optional.
  core.String? destinationFormat;

  /// \[Pick one\] DEPRECATED: Use destinationUris instead, passing only one URI
  /// as necessary.
  ///
  /// The fully-qualified Google Cloud Storage URI where the extracted table
  /// should be written.
  core.String? destinationUri;

  /// \[Pick one\] A list of fully-qualified Google Cloud Storage URIs where the
  /// extracted table should be written.
  core.List<core.String>? destinationUris;

  /// When extracting data in CSV format, this defines the delimiter to use
  /// between fields in the exported data.
  ///
  /// Default is ','. Not applicable when extracting models.
  ///
  /// Optional.
  core.String? fieldDelimiter;

  /// Model extract options only applicable when extracting models.
  ///
  /// Optional.
  ModelExtractOptions? modelExtractOptions;

  /// Whether to print out a header row in the results.
  ///
  /// Default is true. Not applicable when extracting models.
  ///
  /// Optional.
  core.bool? printHeader;

  /// A reference to the model being exported.
  ModelReference? sourceModel;

  /// A reference to the table being exported.
  TableReference? sourceTable;

  /// Whether to use logical types when extracting to AVRO format.
  ///
  /// Not applicable when extracting models.
  core.bool? useAvroLogicalTypes;

  JobConfigurationExtract({
    this.compression,
    this.destinationFormat,
    this.destinationUri,
    this.destinationUris,
    this.fieldDelimiter,
    this.modelExtractOptions,
    this.printHeader,
    this.sourceModel,
    this.sourceTable,
    this.useAvroLogicalTypes,
  });

  JobConfigurationExtract.fromJson(core.Map json_)
      : this(
          compression: json_.containsKey('compression')
              ? json_['compression'] as core.String
              : null,
          destinationFormat: json_.containsKey('destinationFormat')
              ? json_['destinationFormat'] as core.String
              : null,
          destinationUri: json_.containsKey('destinationUri')
              ? json_['destinationUri'] as core.String
              : null,
          destinationUris: json_.containsKey('destinationUris')
              ? (json_['destinationUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fieldDelimiter: json_.containsKey('fieldDelimiter')
              ? json_['fieldDelimiter'] as core.String
              : null,
          modelExtractOptions: json_.containsKey('modelExtractOptions')
              ? ModelExtractOptions.fromJson(json_['modelExtractOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          printHeader: json_.containsKey('printHeader')
              ? json_['printHeader'] as core.bool
              : null,
          sourceModel: json_.containsKey('sourceModel')
              ? ModelReference.fromJson(
                  json_['sourceModel'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceTable: json_.containsKey('sourceTable')
              ? TableReference.fromJson(
                  json_['sourceTable'] as core.Map<core.String, core.dynamic>)
              : null,
          useAvroLogicalTypes: json_.containsKey('useAvroLogicalTypes')
              ? json_['useAvroLogicalTypes'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compression != null) 'compression': compression!,
        if (destinationFormat != null) 'destinationFormat': destinationFormat!,
        if (destinationUri != null) 'destinationUri': destinationUri!,
        if (destinationUris != null) 'destinationUris': destinationUris!,
        if (fieldDelimiter != null) 'fieldDelimiter': fieldDelimiter!,
        if (modelExtractOptions != null)
          'modelExtractOptions': modelExtractOptions!,
        if (printHeader != null) 'printHeader': printHeader!,
        if (sourceModel != null) 'sourceModel': sourceModel!,
        if (sourceTable != null) 'sourceTable': sourceTable!,
        if (useAvroLogicalTypes != null)
          'useAvroLogicalTypes': useAvroLogicalTypes!,
      };
}

/// JobConfigurationLoad contains the configuration properties for loading data
/// into a destination table.
class JobConfigurationLoad {
  /// Accept rows that are missing trailing optional columns.
  ///
  /// The missing values are treated as nulls. If false, records with missing
  /// trailing columns are treated as bad records, and if there are too many bad
  /// records, an invalid error is returned in the job result. The default value
  /// is false. Only applicable to CSV, ignored for other formats.
  ///
  /// Optional.
  core.bool? allowJaggedRows;

  /// Indicates if BigQuery should allow quoted data sections that contain
  /// newline characters in a CSV file.
  ///
  /// The default value is false.
  core.bool? allowQuotedNewlines;

  /// Indicates if we should automatically infer the options and schema for CSV
  /// and JSON sources.
  ///
  /// Optional.
  core.bool? autodetect;

  /// Clustering specification for the destination table.
  Clustering? clustering;

  /// Connection properties which can modify the load job behavior.
  ///
  /// Currently, only the 'session_id' connection property is supported, and is
  /// used to resolve _SESSION appearing as the dataset id.
  ///
  /// Optional.
  core.List<ConnectionProperty>? connectionProperties;

  /// \[Experimental\] Configures the load job to only copy files to the
  /// destination BigLake managed table with an external storage_uri, without
  /// reading file content and writing them to new files.
  ///
  /// Copying files only is supported when: * source_uris are in the same
  /// external storage system as the destination table but they do not overlap
  /// with storage_uri of the destination table. * source_format is the same
  /// file format as the destination table. * destination_table is an existing
  /// BigLake managed table. Its schema does not have default value expression.
  /// It schema does not have type parameters other than precision and scale. *
  /// No options other than the above are specified.
  ///
  /// Optional.
  core.bool? copyFilesOnly;

  /// Specifies whether the job is allowed to create new tables.
  ///
  /// The following values are supported: * CREATE_IF_NEEDED: If the table does
  /// not exist, BigQuery creates the table. * CREATE_NEVER: The table must
  /// already exist. If it does not, a 'notFound' error is returned in the job
  /// result. The default value is CREATE_IF_NEEDED. Creation, truncation and
  /// append actions occur as one atomic update upon job completion.
  ///
  /// Optional.
  core.String? createDisposition;

  /// If this property is true, the job creates a new session using a randomly
  /// generated session_id.
  ///
  /// To continue using a created session with subsequent queries, pass the
  /// existing session identifier as a `ConnectionProperty` value. The session
  /// identifier is returned as part of the `SessionInfo` message within the
  /// query statistics. The new session's location will be set to
  /// `Job.JobReference.location` if it is present, otherwise it's set to the
  /// default location based on existing routing logic.
  ///
  /// Optional.
  core.bool? createSession;

  /// Defines the list of possible SQL data types to which the source decimal
  /// values are converted.
  ///
  /// This list and the precision and the scale parameters of the decimal field
  /// determine the target type. In the order of NUMERIC, BIGNUMERIC, and
  /// STRING, a type is picked if it is in the specified list and if it supports
  /// the precision and the scale. STRING supports all precision and scale
  /// values. If none of the listed types supports the precision and the scale,
  /// the type supporting the widest range in the specified list is picked, and
  /// if a value exceeds the supported range when reading the data, an error
  /// will be thrown. Example: Suppose the value of this field is \["NUMERIC",
  /// "BIGNUMERIC"\]. If (precision,scale) is: * (38,9) -\> NUMERIC; * (39,9)
  /// -\> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); * (38,10) -\>
  /// BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); * (76,38) -\>
  /// BIGNUMERIC; * (77,38) -\> BIGNUMERIC (error if value exeeds supported
  /// range). This field cannot contain duplicate types. The order of the types
  /// in this field is ignored. For example, \["BIGNUMERIC", "NUMERIC"\] is the
  /// same as \["NUMERIC", "BIGNUMERIC"\] and NUMERIC always takes precedence
  /// over BIGNUMERIC. Defaults to \["NUMERIC", "STRING"\] for ORC and
  /// \["NUMERIC"\] for the other file formats.
  core.List<core.String>? decimalTargetTypes;

  /// Custom encryption configuration (e.g., Cloud KMS keys)
  EncryptionConfiguration? destinationEncryptionConfiguration;

  /// The destination table to load the data into.
  ///
  /// Required.
  TableReference? destinationTable;

  /// \[Experimental\] Properties with which to create the destination table if
  /// it is new.
  ///
  /// Optional.
  DestinationTableProperties? destinationTableProperties;

  /// The character encoding of the data.
  ///
  /// The supported values are UTF-8, ISO-8859-1, UTF-16BE, UTF-16LE, UTF-32BE,
  /// and UTF-32LE. The default value is UTF-8. BigQuery decodes the data after
  /// the raw, binary data has been split using the values of the `quote` and
  /// `fieldDelimiter` properties. If you don't specify an encoding, or if you
  /// specify a UTF-8 encoding when the CSV file is not UTF-8 encoded, BigQuery
  /// attempts to convert the data to UTF-8. Generally, your data loads
  /// successfully, but it may not match byte-for-byte what you expect. To avoid
  /// this, specify the correct encoding by using the `--encoding` flag. If
  /// BigQuery can't convert a character other than the ASCII `0` character,
  /// BigQuery converts the character to the standard Unicode replacement
  /// character: �.
  ///
  /// Optional.
  core.String? encoding;

  /// The separator character for fields in a CSV file.
  ///
  /// The separator is interpreted as a single byte. For files encoded in
  /// ISO-8859-1, any single character can be used as a separator. For files
  /// encoded in UTF-8, characters represented in decimal range 1-127
  /// (U+0001-U+007F) can be used without any modification. UTF-8 characters
  /// encoded with multiple bytes (i.e. U+0080 and above) will have only the
  /// first byte used for separating fields. The remaining bytes will be treated
  /// as a part of the field. BigQuery also supports the escape sequence "\t"
  /// (U+0009) to specify a tab separator. The default value is comma (",",
  /// U+002C).
  ///
  /// Optional.
  core.String? fieldDelimiter;

  /// Specifies how source URIs are interpreted for constructing the file set to
  /// load.
  ///
  /// By default, source URIs are expanded against the underlying storage. You
  /// can also specify manifest files to control how the file set is
  /// constructed. This option is only applicable to object storage systems.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FILE_SET_SPEC_TYPE_FILE_SYSTEM_MATCH" : This option expands source URIs
  /// by listing files from the object store. It is the default behavior if
  /// FileSetSpecType is not set.
  /// - "FILE_SET_SPEC_TYPE_NEW_LINE_DELIMITED_MANIFEST" : This option indicates
  /// that the provided URIs are newline-delimited manifest files, with one URI
  /// per line. Wildcard URIs are not supported.
  core.String? fileSetSpecType;

  /// When set, configures hive partitioning support.
  ///
  /// Not all storage formats support hive partitioning -- requesting hive
  /// partitioning on an unsupported format will lead to an error, as will
  /// providing an invalid specification.
  ///
  /// Optional.
  HivePartitioningOptions? hivePartitioningOptions;

  /// Indicates if BigQuery should allow extra values that are not represented
  /// in the table schema.
  ///
  /// If true, the extra values are ignored. If false, records with extra
  /// columns are treated as bad records, and if there are too many bad records,
  /// an invalid error is returned in the job result. The default value is
  /// false. The sourceFormat property determines what BigQuery treats as an
  /// extra value: CSV: Trailing columns JSON: Named values that don't match any
  /// column names in the table schema Avro, Parquet, ORC: Fields in the file
  /// schema that don't exist in the table schema.
  ///
  /// Optional.
  core.bool? ignoreUnknownValues;

  /// Load option to be used together with source_format newline-delimited JSON
  /// to indicate that a variant of JSON is being loaded.
  ///
  /// To load newline-delimited GeoJSON, specify GEOJSON (and source_format must
  /// be set to NEWLINE_DELIMITED_JSON).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JSON_EXTENSION_UNSPECIFIED" : The default if provided value is not one
  /// included in the enum, or the value is not specified. The source formate is
  /// parsed without any modification.
  /// - "GEOJSON" : Use GeoJSON variant of JSON. See
  /// https://tools.ietf.org/html/rfc7946.
  core.String? jsonExtension;

  /// The maximum number of bad records that BigQuery can ignore when running
  /// the job.
  ///
  /// If the number of bad records exceeds this value, an invalid error is
  /// returned in the job result. The default value is 0, which requires that
  /// all records are valid. This is only supported for CSV and
  /// NEWLINE_DELIMITED_JSON file formats.
  ///
  /// Optional.
  core.int? maxBadRecords;

  /// Specifies a string that represents a null value in a CSV file.
  ///
  /// For example, if you specify "\N", BigQuery interprets "\N" as a null value
  /// when loading a CSV file. The default value is the empty string. If you set
  /// this property to a custom value, BigQuery throws an error if an empty
  /// string is present for all data types except for STRING and BYTE. For
  /// STRING and BYTE columns, BigQuery interprets the empty string as an empty
  /// value.
  ///
  /// Optional.
  core.String? nullMarker;

  /// Additional properties to set if sourceFormat is set to PARQUET.
  ///
  /// Optional.
  ParquetOptions? parquetOptions;

  /// When sourceFormat is set to "CSV", this indicates whether the embedded
  /// ASCII control characters (the first 32 characters in the ASCII-table, from
  /// '\x00' to '\x1F') are preserved.
  ///
  /// Optional.
  core.bool? preserveAsciiControlCharacters;

  /// If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity
  /// properties to load into BigQuery from a Cloud Datastore backup.
  ///
  /// Property names are case sensitive and must be top-level properties. If no
  /// properties are specified, BigQuery loads all properties. If any named
  /// property isn't found in the Cloud Datastore backup, an invalid error is
  /// returned in the job result.
  core.List<core.String>? projectionFields;

  /// The value that is used to quote data sections in a CSV file.
  ///
  /// BigQuery converts the string to ISO-8859-1 encoding, and then uses the
  /// first byte of the encoded string to split the data in its raw, binary
  /// state. The default value is a double-quote ('"'). If your data does not
  /// contain quoted sections, set the property value to an empty string. If
  /// your data contains quoted newline characters, you must also set the
  /// allowQuotedNewlines property to true. To include the specific quote
  /// character within a quoted value, precede it with an additional matching
  /// quote character. For example, if you want to escape the default character
  /// ' " ', use ' "" '. @default "
  ///
  /// Optional.
  core.String? quote;

  /// Range partitioning specification for the destination table.
  ///
  /// Only one of timePartitioning and rangePartitioning should be specified.
  RangePartitioning? rangePartitioning;

  /// The user can provide a reference file with the reader schema.
  ///
  /// This file is only loaded if it is part of source URIs, but is not loaded
  /// otherwise. It is enabled for the following formats: AVRO, PARQUET, ORC.
  ///
  /// Optional.
  core.String? referenceFileSchemaUri;

  /// The schema for the destination table.
  ///
  /// The schema can be omitted if the destination table already exists, or if
  /// you're loading data from Google Cloud Datastore.
  ///
  /// Optional.
  TableSchema? schema;

  /// The inline schema.
  ///
  /// For CSV schemas, specify as "Field1:Type1\[,Field2:Type2\]*". For example,
  /// "foo:STRING, bar:INTEGER, baz:FLOAT".
  ///
  /// Deprecated.
  core.String? schemaInline;

  /// The format of the schemaInline property.
  ///
  /// Deprecated.
  core.String? schemaInlineFormat;

  /// Allows the schema of the destination table to be updated as a side effect
  /// of the load job if a schema is autodetected or supplied in the job
  /// configuration.
  ///
  /// Schema update options are supported in two cases: when writeDisposition is
  /// WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination
  /// table is a partition of a table, specified by partition decorators. For
  /// normal tables, WRITE_TRUNCATE will always overwrite the schema. One or
  /// more of the following values are specified: * ALLOW_FIELD_ADDITION: allow
  /// adding a nullable field to the schema. * ALLOW_FIELD_RELAXATION: allow
  /// relaxing a required field in the original schema to nullable.
  core.List<core.String>? schemaUpdateOptions;

  /// The number of rows at the top of a CSV file that BigQuery will skip when
  /// loading the data.
  ///
  /// The default value is 0. This property is useful if you have header rows in
  /// the file that should be skipped. When autodetect is on, the behavior is
  /// the following: * skipLeadingRows unspecified - Autodetect tries to detect
  /// headers in the first row. If they are not detected, the row is read as
  /// data. Otherwise data is read starting from the second row. *
  /// skipLeadingRows is 0 - Instructs autodetect that there are no headers and
  /// data should be read starting from the first row. * skipLeadingRows = N \>
  /// 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If
  /// headers are not detected, row N is just skipped. Otherwise row N is used
  /// to extract column names for the detected schema.
  ///
  /// Optional.
  core.int? skipLeadingRows;

  /// The format of the data files.
  ///
  /// For CSV files, specify "CSV". For datastore backups, specify
  /// "DATASTORE_BACKUP". For newline-delimited JSON, specify
  /// "NEWLINE_DELIMITED_JSON". For Avro, specify "AVRO". For parquet, specify
  /// "PARQUET". For orc, specify "ORC". The default value is CSV.
  ///
  /// Optional.
  core.String? sourceFormat;

  /// The fully-qualified URIs that point to your data in Google Cloud.
  ///
  /// For Google Cloud Storage URIs: Each URI can contain one '*' wildcard
  /// character and it must come after the 'bucket' name. Size limits related to
  /// load jobs apply to external data sources. For Google Cloud Bigtable URIs:
  /// Exactly one URI can be specified and it has be a fully specified and valid
  /// HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore
  /// backups: Exactly one URI can be specified. Also, the '*' wildcard
  /// character is not allowed.
  ///
  /// Required.
  core.List<core.String>? sourceUris;

  /// Time-based partitioning specification for the destination table.
  ///
  /// Only one of timePartitioning and rangePartitioning should be specified.
  TimePartitioning? timePartitioning;

  /// If sourceFormat is set to "AVRO", indicates whether to interpret logical
  /// types as the corresponding BigQuery data type (for example, TIMESTAMP),
  /// instead of using the raw type (for example, INTEGER).
  ///
  /// Optional.
  core.bool? useAvroLogicalTypes;

  /// Specifies the action that occurs if the destination table already exists.
  ///
  /// The following values are supported: * WRITE_TRUNCATE: If the table already
  /// exists, BigQuery overwrites the data, removes the constraints and uses the
  /// schema from the load job. * WRITE_APPEND: If the table already exists,
  /// BigQuery appends the data to the table. * WRITE_EMPTY: If the table
  /// already exists and contains data, a 'duplicate' error is returned in the
  /// job result. The default value is WRITE_APPEND. Each action is atomic and
  /// only occurs if BigQuery is able to complete the job successfully.
  /// Creation, truncation and append actions occur as one atomic update upon
  /// job completion.
  ///
  /// Optional.
  core.String? writeDisposition;

  JobConfigurationLoad({
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.autodetect,
    this.clustering,
    this.connectionProperties,
    this.copyFilesOnly,
    this.createDisposition,
    this.createSession,
    this.decimalTargetTypes,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    this.destinationTableProperties,
    this.encoding,
    this.fieldDelimiter,
    this.fileSetSpecType,
    this.hivePartitioningOptions,
    this.ignoreUnknownValues,
    this.jsonExtension,
    this.maxBadRecords,
    this.nullMarker,
    this.parquetOptions,
    this.preserveAsciiControlCharacters,
    this.projectionFields,
    this.quote,
    this.rangePartitioning,
    this.referenceFileSchemaUri,
    this.schema,
    this.schemaInline,
    this.schemaInlineFormat,
    this.schemaUpdateOptions,
    this.skipLeadingRows,
    this.sourceFormat,
    this.sourceUris,
    this.timePartitioning,
    this.useAvroLogicalTypes,
    this.writeDisposition,
  });

  JobConfigurationLoad.fromJson(core.Map json_)
      : this(
          allowJaggedRows: json_.containsKey('allowJaggedRows')
              ? json_['allowJaggedRows'] as core.bool
              : null,
          allowQuotedNewlines: json_.containsKey('allowQuotedNewlines')
              ? json_['allowQuotedNewlines'] as core.bool
              : null,
          autodetect: json_.containsKey('autodetect')
              ? json_['autodetect'] as core.bool
              : null,
          clustering: json_.containsKey('clustering')
              ? Clustering.fromJson(
                  json_['clustering'] as core.Map<core.String, core.dynamic>)
              : null,
          connectionProperties: json_.containsKey('connectionProperties')
              ? (json_['connectionProperties'] as core.List)
                  .map((value) => ConnectionProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          copyFilesOnly: json_.containsKey('copyFilesOnly')
              ? json_['copyFilesOnly'] as core.bool
              : null,
          createDisposition: json_.containsKey('createDisposition')
              ? json_['createDisposition'] as core.String
              : null,
          createSession: json_.containsKey('createSession')
              ? json_['createSession'] as core.bool
              : null,
          decimalTargetTypes: json_.containsKey('decimalTargetTypes')
              ? (json_['decimalTargetTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          destinationEncryptionConfiguration:
              json_.containsKey('destinationEncryptionConfiguration')
                  ? EncryptionConfiguration.fromJson(
                      json_['destinationEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          destinationTable: json_.containsKey('destinationTable')
              ? TableReference.fromJson(json_['destinationTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          destinationTableProperties:
              json_.containsKey('destinationTableProperties')
                  ? DestinationTableProperties.fromJson(
                      json_['destinationTableProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
              : null,
          fieldDelimiter: json_.containsKey('fieldDelimiter')
              ? json_['fieldDelimiter'] as core.String
              : null,
          fileSetSpecType: json_.containsKey('fileSetSpecType')
              ? json_['fileSetSpecType'] as core.String
              : null,
          hivePartitioningOptions: json_.containsKey('hivePartitioningOptions')
              ? HivePartitioningOptions.fromJson(
                  json_['hivePartitioningOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          ignoreUnknownValues: json_.containsKey('ignoreUnknownValues')
              ? json_['ignoreUnknownValues'] as core.bool
              : null,
          jsonExtension: json_.containsKey('jsonExtension')
              ? json_['jsonExtension'] as core.String
              : null,
          maxBadRecords: json_.containsKey('maxBadRecords')
              ? json_['maxBadRecords'] as core.int
              : null,
          nullMarker: json_.containsKey('nullMarker')
              ? json_['nullMarker'] as core.String
              : null,
          parquetOptions: json_.containsKey('parquetOptions')
              ? ParquetOptions.fromJson(json_['parquetOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          preserveAsciiControlCharacters:
              json_.containsKey('preserveAsciiControlCharacters')
                  ? json_['preserveAsciiControlCharacters'] as core.bool
                  : null,
          projectionFields: json_.containsKey('projectionFields')
              ? (json_['projectionFields'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          quote:
              json_.containsKey('quote') ? json_['quote'] as core.String : null,
          rangePartitioning: json_.containsKey('rangePartitioning')
              ? RangePartitioning.fromJson(json_['rangePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          referenceFileSchemaUri: json_.containsKey('referenceFileSchemaUri')
              ? json_['referenceFileSchemaUri'] as core.String
              : null,
          schema: json_.containsKey('schema')
              ? TableSchema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          schemaInline: json_.containsKey('schemaInline')
              ? json_['schemaInline'] as core.String
              : null,
          schemaInlineFormat: json_.containsKey('schemaInlineFormat')
              ? json_['schemaInlineFormat'] as core.String
              : null,
          schemaUpdateOptions: json_.containsKey('schemaUpdateOptions')
              ? (json_['schemaUpdateOptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          skipLeadingRows: json_.containsKey('skipLeadingRows')
              ? json_['skipLeadingRows'] as core.int
              : null,
          sourceFormat: json_.containsKey('sourceFormat')
              ? json_['sourceFormat'] as core.String
              : null,
          sourceUris: json_.containsKey('sourceUris')
              ? (json_['sourceUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timePartitioning: json_.containsKey('timePartitioning')
              ? TimePartitioning.fromJson(json_['timePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          useAvroLogicalTypes: json_.containsKey('useAvroLogicalTypes')
              ? json_['useAvroLogicalTypes'] as core.bool
              : null,
          writeDisposition: json_.containsKey('writeDisposition')
              ? json_['writeDisposition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowJaggedRows != null) 'allowJaggedRows': allowJaggedRows!,
        if (allowQuotedNewlines != null)
          'allowQuotedNewlines': allowQuotedNewlines!,
        if (autodetect != null) 'autodetect': autodetect!,
        if (clustering != null) 'clustering': clustering!,
        if (connectionProperties != null)
          'connectionProperties': connectionProperties!,
        if (copyFilesOnly != null) 'copyFilesOnly': copyFilesOnly!,
        if (createDisposition != null) 'createDisposition': createDisposition!,
        if (createSession != null) 'createSession': createSession!,
        if (decimalTargetTypes != null)
          'decimalTargetTypes': decimalTargetTypes!,
        if (destinationEncryptionConfiguration != null)
          'destinationEncryptionConfiguration':
              destinationEncryptionConfiguration!,
        if (destinationTable != null) 'destinationTable': destinationTable!,
        if (destinationTableProperties != null)
          'destinationTableProperties': destinationTableProperties!,
        if (encoding != null) 'encoding': encoding!,
        if (fieldDelimiter != null) 'fieldDelimiter': fieldDelimiter!,
        if (fileSetSpecType != null) 'fileSetSpecType': fileSetSpecType!,
        if (hivePartitioningOptions != null)
          'hivePartitioningOptions': hivePartitioningOptions!,
        if (ignoreUnknownValues != null)
          'ignoreUnknownValues': ignoreUnknownValues!,
        if (jsonExtension != null) 'jsonExtension': jsonExtension!,
        if (maxBadRecords != null) 'maxBadRecords': maxBadRecords!,
        if (nullMarker != null) 'nullMarker': nullMarker!,
        if (parquetOptions != null) 'parquetOptions': parquetOptions!,
        if (preserveAsciiControlCharacters != null)
          'preserveAsciiControlCharacters': preserveAsciiControlCharacters!,
        if (projectionFields != null) 'projectionFields': projectionFields!,
        if (quote != null) 'quote': quote!,
        if (rangePartitioning != null) 'rangePartitioning': rangePartitioning!,
        if (referenceFileSchemaUri != null)
          'referenceFileSchemaUri': referenceFileSchemaUri!,
        if (schema != null) 'schema': schema!,
        if (schemaInline != null) 'schemaInline': schemaInline!,
        if (schemaInlineFormat != null)
          'schemaInlineFormat': schemaInlineFormat!,
        if (schemaUpdateOptions != null)
          'schemaUpdateOptions': schemaUpdateOptions!,
        if (skipLeadingRows != null) 'skipLeadingRows': skipLeadingRows!,
        if (sourceFormat != null) 'sourceFormat': sourceFormat!,
        if (sourceUris != null) 'sourceUris': sourceUris!,
        if (timePartitioning != null) 'timePartitioning': timePartitioning!,
        if (useAvroLogicalTypes != null)
          'useAvroLogicalTypes': useAvroLogicalTypes!,
        if (writeDisposition != null) 'writeDisposition': writeDisposition!,
      };
}

/// JobConfigurationQuery configures a BigQuery query job.
class JobConfigurationQuery {
  /// If true and query uses legacy SQL dialect, allows the query to produce
  /// arbitrarily large result tables at a slight cost in performance.
  ///
  /// Requires destinationTable to be set. For GoogleSQL queries, this flag is
  /// ignored and large results are always allowed. However, you must still set
  /// destinationTable when result size exceeds the allowed maximum response
  /// size.
  ///
  /// Optional.
  core.bool? allowLargeResults;

  /// Clustering specification for the destination table.
  Clustering? clustering;

  /// Connection properties which can modify the query behavior.
  core.List<ConnectionProperty>? connectionProperties;

  /// Specifies whether the query should be executed as a continuous query.
  ///
  /// The default value is false.
  ///
  /// Optional.
  core.bool? continuous;

  /// Specifies whether the job is allowed to create new tables.
  ///
  /// The following values are supported: * CREATE_IF_NEEDED: If the table does
  /// not exist, BigQuery creates the table. * CREATE_NEVER: The table must
  /// already exist. If it does not, a 'notFound' error is returned in the job
  /// result. The default value is CREATE_IF_NEEDED. Creation, truncation and
  /// append actions occur as one atomic update upon job completion.
  ///
  /// Optional.
  core.String? createDisposition;

  /// If this property is true, the job creates a new session using a randomly
  /// generated session_id.
  ///
  /// To continue using a created session with subsequent queries, pass the
  /// existing session identifier as a `ConnectionProperty` value. The session
  /// identifier is returned as part of the `SessionInfo` message within the
  /// query statistics. The new session's location will be set to
  /// `Job.JobReference.location` if it is present, otherwise it's set to the
  /// default location based on existing routing logic.
  core.bool? createSession;

  /// Specifies the default dataset to use for unqualified table names in the
  /// query.
  ///
  /// This setting does not alter behavior of unqualified dataset names. Setting
  /// the system variable `@@dataset_id` achieves the same behavior. See
  /// https://cloud.google.com/bigquery/docs/reference/system-variables for more
  /// information on system variables.
  ///
  /// Optional.
  DatasetReference? defaultDataset;

  /// Custom encryption configuration (e.g., Cloud KMS keys)
  EncryptionConfiguration? destinationEncryptionConfiguration;

  /// Describes the table where the query results should be stored.
  ///
  /// This property must be set for large results that exceed the maximum
  /// response size. For queries that produce anonymous (cached) results, this
  /// field will be populated by BigQuery.
  ///
  /// Optional.
  TableReference? destinationTable;

  /// If true and query uses legacy SQL dialect, flattens all nested and
  /// repeated fields in the query results.
  ///
  /// allowLargeResults must be true if this is set to false. For GoogleSQL
  /// queries, this flag is ignored and results are never flattened.
  ///
  /// Optional.
  core.bool? flattenResults;

  /// Maximum billing tier allowed for this query.
  ///
  /// The billing tier controls the amount of compute resources allotted to the
  /// query, and multiplies the on-demand cost of the query accordingly. A query
  /// that runs within its allotted resources will succeed and indicate its
  /// billing tier in statistics.query.billingTier, but if the query exceeds its
  /// allotted resources, it will fail with billingTierLimitExceeded. WARNING:
  /// The billed byte amount can be multiplied by an amount up to this number!
  /// Most users should not need to alter this setting, and we recommend that
  /// you avoid introducing new uses of it.
  ///
  /// Optional. Deprecated.
  core.int? maximumBillingTier;

  /// Limits the bytes billed for this job.
  ///
  /// Queries that will have bytes billed beyond this limit will fail (without
  /// incurring a charge). If unspecified, this will be set to your project
  /// default.
  core.String? maximumBytesBilled;

  /// GoogleSQL only.
  ///
  /// Set to POSITIONAL to use positional (?) query parameters or to NAMED to
  /// use named (@myparam) query parameters in this query.
  core.String? parameterMode;

  /// This property is deprecated.
  ///
  /// Deprecated.
  core.bool? preserveNulls;

  /// Specifies a priority for the query.
  ///
  /// Possible values include INTERACTIVE and BATCH. The default value is
  /// INTERACTIVE.
  ///
  /// Optional.
  core.String? priority;

  /// SQL query text to execute.
  ///
  /// The useLegacySql field can be used to indicate whether the query uses
  /// legacy SQL or GoogleSQL.
  ///
  /// Required.
  core.String? query;

  /// Query parameters for GoogleSQL queries.
  core.List<QueryParameter>? queryParameters;

  /// Range partitioning specification for the destination table.
  ///
  /// Only one of timePartitioning and rangePartitioning should be specified.
  RangePartitioning? rangePartitioning;

  /// Allows the schema of the destination table to be updated as a side effect
  /// of the query job.
  ///
  /// Schema update options are supported in two cases: when writeDisposition is
  /// WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination
  /// table is a partition of a table, specified by partition decorators. For
  /// normal tables, WRITE_TRUNCATE will always overwrite the schema. One or
  /// more of the following values are specified: * ALLOW_FIELD_ADDITION: allow
  /// adding a nullable field to the schema. * ALLOW_FIELD_RELAXATION: allow
  /// relaxing a required field in the original schema to nullable.
  core.List<core.String>? schemaUpdateOptions;

  /// Options controlling the execution of scripts.
  ScriptOptions? scriptOptions;

  /// System variables for GoogleSQL queries.
  ///
  /// A system variable is output if the variable is settable and its value
  /// differs from the system default. "@@" prefix is not included in the name
  /// of the System variables.
  ///
  /// Output only.
  SystemVariables? systemVariables;

  /// You can specify external table definitions, which operate as ephemeral
  /// tables that can be queried.
  ///
  /// These definitions are configured using a JSON map, where the string key
  /// represents the table identifier, and the value is the corresponding
  /// external data configuration object.
  ///
  /// Optional.
  core.Map<core.String, ExternalDataConfiguration>? tableDefinitions;

  /// Time-based partitioning specification for the destination table.
  ///
  /// Only one of timePartitioning and rangePartitioning should be specified.
  TimePartitioning? timePartitioning;

  /// Specifies whether to use BigQuery's legacy SQL dialect for this query.
  ///
  /// The default value is true. If set to false, the query will use BigQuery's
  /// GoogleSQL: https://cloud.google.com/bigquery/sql-reference/ When
  /// useLegacySql is set to false, the value of flattenResults is ignored;
  /// query will be run as if flattenResults is false.
  ///
  /// Optional.
  core.bool? useLegacySql;

  /// Whether to look for the result in the query cache.
  ///
  /// The query cache is a best-effort cache that will be flushed whenever
  /// tables in the query are modified. Moreover, the query cache is only
  /// available when a query does not have a destination table specified. The
  /// default value is true.
  ///
  /// Optional.
  core.bool? useQueryCache;

  /// Describes user-defined function resources used in the query.
  core.List<UserDefinedFunctionResource>? userDefinedFunctionResources;

  /// Specifies the action that occurs if the destination table already exists.
  ///
  /// The following values are supported: * WRITE_TRUNCATE: If the table already
  /// exists, BigQuery overwrites the data, removes the constraints, and uses
  /// the schema from the query result. * WRITE_APPEND: If the table already
  /// exists, BigQuery appends the data to the table. * WRITE_EMPTY: If the
  /// table already exists and contains data, a 'duplicate' error is returned in
  /// the job result. The default value is WRITE_EMPTY. Each action is atomic
  /// and only occurs if BigQuery is able to complete the job successfully.
  /// Creation, truncation and append actions occur as one atomic update upon
  /// job completion.
  ///
  /// Optional.
  core.String? writeDisposition;

  JobConfigurationQuery({
    this.allowLargeResults,
    this.clustering,
    this.connectionProperties,
    this.continuous,
    this.createDisposition,
    this.createSession,
    this.defaultDataset,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    this.flattenResults,
    this.maximumBillingTier,
    this.maximumBytesBilled,
    this.parameterMode,
    this.preserveNulls,
    this.priority,
    this.query,
    this.queryParameters,
    this.rangePartitioning,
    this.schemaUpdateOptions,
    this.scriptOptions,
    this.systemVariables,
    this.tableDefinitions,
    this.timePartitioning,
    this.useLegacySql,
    this.useQueryCache,
    this.userDefinedFunctionResources,
    this.writeDisposition,
  });

  JobConfigurationQuery.fromJson(core.Map json_)
      : this(
          allowLargeResults: json_.containsKey('allowLargeResults')
              ? json_['allowLargeResults'] as core.bool
              : null,
          clustering: json_.containsKey('clustering')
              ? Clustering.fromJson(
                  json_['clustering'] as core.Map<core.String, core.dynamic>)
              : null,
          connectionProperties: json_.containsKey('connectionProperties')
              ? (json_['connectionProperties'] as core.List)
                  .map((value) => ConnectionProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          continuous: json_.containsKey('continuous')
              ? json_['continuous'] as core.bool
              : null,
          createDisposition: json_.containsKey('createDisposition')
              ? json_['createDisposition'] as core.String
              : null,
          createSession: json_.containsKey('createSession')
              ? json_['createSession'] as core.bool
              : null,
          defaultDataset: json_.containsKey('defaultDataset')
              ? DatasetReference.fromJson(json_['defaultDataset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          destinationEncryptionConfiguration:
              json_.containsKey('destinationEncryptionConfiguration')
                  ? EncryptionConfiguration.fromJson(
                      json_['destinationEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          destinationTable: json_.containsKey('destinationTable')
              ? TableReference.fromJson(json_['destinationTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          flattenResults: json_.containsKey('flattenResults')
              ? json_['flattenResults'] as core.bool
              : null,
          maximumBillingTier: json_.containsKey('maximumBillingTier')
              ? json_['maximumBillingTier'] as core.int
              : null,
          maximumBytesBilled: json_.containsKey('maximumBytesBilled')
              ? json_['maximumBytesBilled'] as core.String
              : null,
          parameterMode: json_.containsKey('parameterMode')
              ? json_['parameterMode'] as core.String
              : null,
          preserveNulls: json_.containsKey('preserveNulls')
              ? json_['preserveNulls'] as core.bool
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          queryParameters: json_.containsKey('queryParameters')
              ? (json_['queryParameters'] as core.List)
                  .map((value) => QueryParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rangePartitioning: json_.containsKey('rangePartitioning')
              ? RangePartitioning.fromJson(json_['rangePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          schemaUpdateOptions: json_.containsKey('schemaUpdateOptions')
              ? (json_['schemaUpdateOptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          scriptOptions: json_.containsKey('scriptOptions')
              ? ScriptOptions.fromJson(
                  json_['scriptOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          systemVariables: json_.containsKey('systemVariables')
              ? SystemVariables.fromJson(json_['systemVariables']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tableDefinitions: json_.containsKey('tableDefinitions')
              ? (json_['tableDefinitions']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    ExternalDataConfiguration.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          timePartitioning: json_.containsKey('timePartitioning')
              ? TimePartitioning.fromJson(json_['timePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          useLegacySql: json_.containsKey('useLegacySql')
              ? json_['useLegacySql'] as core.bool
              : null,
          useQueryCache: json_.containsKey('useQueryCache')
              ? json_['useQueryCache'] as core.bool
              : null,
          userDefinedFunctionResources:
              json_.containsKey('userDefinedFunctionResources')
                  ? (json_['userDefinedFunctionResources'] as core.List)
                      .map((value) => UserDefinedFunctionResource.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          writeDisposition: json_.containsKey('writeDisposition')
              ? json_['writeDisposition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowLargeResults != null) 'allowLargeResults': allowLargeResults!,
        if (clustering != null) 'clustering': clustering!,
        if (connectionProperties != null)
          'connectionProperties': connectionProperties!,
        if (continuous != null) 'continuous': continuous!,
        if (createDisposition != null) 'createDisposition': createDisposition!,
        if (createSession != null) 'createSession': createSession!,
        if (defaultDataset != null) 'defaultDataset': defaultDataset!,
        if (destinationEncryptionConfiguration != null)
          'destinationEncryptionConfiguration':
              destinationEncryptionConfiguration!,
        if (destinationTable != null) 'destinationTable': destinationTable!,
        if (flattenResults != null) 'flattenResults': flattenResults!,
        if (maximumBillingTier != null)
          'maximumBillingTier': maximumBillingTier!,
        if (maximumBytesBilled != null)
          'maximumBytesBilled': maximumBytesBilled!,
        if (parameterMode != null) 'parameterMode': parameterMode!,
        if (preserveNulls != null) 'preserveNulls': preserveNulls!,
        if (priority != null) 'priority': priority!,
        if (query != null) 'query': query!,
        if (queryParameters != null) 'queryParameters': queryParameters!,
        if (rangePartitioning != null) 'rangePartitioning': rangePartitioning!,
        if (schemaUpdateOptions != null)
          'schemaUpdateOptions': schemaUpdateOptions!,
        if (scriptOptions != null) 'scriptOptions': scriptOptions!,
        if (systemVariables != null) 'systemVariables': systemVariables!,
        if (tableDefinitions != null) 'tableDefinitions': tableDefinitions!,
        if (timePartitioning != null) 'timePartitioning': timePartitioning!,
        if (useLegacySql != null) 'useLegacySql': useLegacySql!,
        if (useQueryCache != null) 'useQueryCache': useQueryCache!,
        if (userDefinedFunctionResources != null)
          'userDefinedFunctionResources': userDefinedFunctionResources!,
        if (writeDisposition != null) 'writeDisposition': writeDisposition!,
      };
}

/// JobConfigurationTableCopy configures a job that copies data from one table
/// to another.
///
/// For more information on copying tables, see
/// [Copy a table](https://cloud.google.com/bigquery/docs/managing-tables#copy-table).
class JobConfigurationTableCopy {
  /// Specifies whether the job is allowed to create new tables.
  ///
  /// The following values are supported: * CREATE_IF_NEEDED: If the table does
  /// not exist, BigQuery creates the table. * CREATE_NEVER: The table must
  /// already exist. If it does not, a 'notFound' error is returned in the job
  /// result. The default value is CREATE_IF_NEEDED. Creation, truncation and
  /// append actions occur as one atomic update upon job completion.
  ///
  /// Optional.
  core.String? createDisposition;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  EncryptionConfiguration? destinationEncryptionConfiguration;

  /// The time when the destination table expires.
  ///
  /// Expired tables will be deleted and their storage reclaimed.
  ///
  /// Optional.
  core.String? destinationExpirationTime;

  /// The destination table.
  ///
  /// Required.
  TableReference? destinationTable;

  /// Supported operation types in table copy job.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Unspecified operation type.
  /// - "COPY" : The source and destination table have the same table type.
  /// - "SNAPSHOT" : The source table type is TABLE and the destination table
  /// type is SNAPSHOT.
  /// - "RESTORE" : The source table type is SNAPSHOT and the destination table
  /// type is TABLE.
  /// - "CLONE" : The source and destination table have the same table type, but
  /// only bill for unique data.
  core.String? operationType;

  /// \[Pick one\] Source table to copy.
  TableReference? sourceTable;

  /// \[Pick one\] Source tables to copy.
  core.List<TableReference>? sourceTables;

  /// Specifies the action that occurs if the destination table already exists.
  ///
  /// The following values are supported: * WRITE_TRUNCATE: If the table already
  /// exists, BigQuery overwrites the table data and uses the schema and table
  /// constraints from the source table. * WRITE_APPEND: If the table already
  /// exists, BigQuery appends the data to the table. * WRITE_EMPTY: If the
  /// table already exists and contains data, a 'duplicate' error is returned in
  /// the job result. The default value is WRITE_EMPTY. Each action is atomic
  /// and only occurs if BigQuery is able to complete the job successfully.
  /// Creation, truncation and append actions occur as one atomic update upon
  /// job completion.
  ///
  /// Optional.
  core.String? writeDisposition;

  JobConfigurationTableCopy({
    this.createDisposition,
    this.destinationEncryptionConfiguration,
    this.destinationExpirationTime,
    this.destinationTable,
    this.operationType,
    this.sourceTable,
    this.sourceTables,
    this.writeDisposition,
  });

  JobConfigurationTableCopy.fromJson(core.Map json_)
      : this(
          createDisposition: json_.containsKey('createDisposition')
              ? json_['createDisposition'] as core.String
              : null,
          destinationEncryptionConfiguration:
              json_.containsKey('destinationEncryptionConfiguration')
                  ? EncryptionConfiguration.fromJson(
                      json_['destinationEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          destinationExpirationTime:
              json_.containsKey('destinationExpirationTime')
                  ? json_['destinationExpirationTime'] as core.String
                  : null,
          destinationTable: json_.containsKey('destinationTable')
              ? TableReference.fromJson(json_['destinationTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          operationType: json_.containsKey('operationType')
              ? json_['operationType'] as core.String
              : null,
          sourceTable: json_.containsKey('sourceTable')
              ? TableReference.fromJson(
                  json_['sourceTable'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceTables: json_.containsKey('sourceTables')
              ? (json_['sourceTables'] as core.List)
                  .map((value) => TableReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          writeDisposition: json_.containsKey('writeDisposition')
              ? json_['writeDisposition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createDisposition != null) 'createDisposition': createDisposition!,
        if (destinationEncryptionConfiguration != null)
          'destinationEncryptionConfiguration':
              destinationEncryptionConfiguration!,
        if (destinationExpirationTime != null)
          'destinationExpirationTime': destinationExpirationTime!,
        if (destinationTable != null) 'destinationTable': destinationTable!,
        if (operationType != null) 'operationType': operationType!,
        if (sourceTable != null) 'sourceTable': sourceTable!,
        if (sourceTables != null) 'sourceTables': sourceTables!,
        if (writeDisposition != null) 'writeDisposition': writeDisposition!,
      };
}

/// Reason about why a Job was created from a
/// \[`jobs.query`\](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/query)
/// method when used with `JOB_CREATION_OPTIONAL` Job creation mode.
///
/// For
/// \[`jobs.insert`\](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/insert)
/// method calls it will always be `REQUESTED`. This feature is not yet
/// available. Jobs will always be created.
class JobCreationReason {
  /// Specifies the high level reason why a Job was created.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Reason is not specified.
  /// - "REQUESTED" : Job creation was requested.
  /// - "LONG_RUNNING" : The query request ran beyond a system defined timeout
  /// specified by the
  /// [timeoutMs field in the QueryRequest](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/query#queryrequest).
  /// As a result it was considered a long running operation for which a job was
  /// created.
  /// - "LARGE_RESULTS" : The results from the query cannot fit in the response.
  /// - "OTHER" : BigQuery has determined that the query needs to be executed as
  /// a Job.
  core.String? code;

  JobCreationReason({
    this.code,
  });

  JobCreationReason.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
      };
}

/// ListFormatJob is a partial projection of job information returned as part of
/// a jobs.list response.
class JobListJobs {
  /// Describes the job configuration.
  ///
  /// Required.
  JobConfiguration? configuration;

  /// A result object that will be present only if the job has failed.
  ErrorProto? errorResult;

  /// Unique opaque ID of the job.
  core.String? id;

  /// Unique opaque ID of the job.
  JobReference? jobReference;

  /// The resource type.
  core.String? kind;

  /// \[Full-projection-only\] String representation of identity of requesting
  /// party.
  ///
  /// Populated for both first- and third-party identities. Only present for
  /// APIs that support third-party identities.
  core.String? principalSubject;

  /// Running state of the job.
  ///
  /// When the state is DONE, errorResult can be checked to determine whether
  /// the job succeeded or failed.
  core.String? state;

  /// Information about the job, including starting time and ending time of the
  /// job.
  ///
  /// Output only.
  JobStatistics? statistics;

  /// \[Full-projection-only\] Describes the status of this job.
  JobStatus? status;

  /// \[Full-projection-only\] Email address of the user who ran the job.
  core.String? userEmail;

  JobListJobs({
    this.configuration,
    this.errorResult,
    this.id,
    this.jobReference,
    this.kind,
    this.principalSubject,
    this.state,
    this.statistics,
    this.status,
    this.userEmail,
  });

  JobListJobs.fromJson(core.Map json_)
      : this(
          configuration: json_.containsKey('configuration')
              ? JobConfiguration.fromJson(
                  json_['configuration'] as core.Map<core.String, core.dynamic>)
              : null,
          errorResult: json_.containsKey('errorResult')
              ? ErrorProto.fromJson(
                  json_['errorResult'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          jobReference: json_.containsKey('jobReference')
              ? JobReference.fromJson(
                  json_['jobReference'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          principalSubject: json_.containsKey('principal_subject')
              ? json_['principal_subject'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          statistics: json_.containsKey('statistics')
              ? JobStatistics.fromJson(
                  json_['statistics'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? JobStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          userEmail: json_.containsKey('user_email')
              ? json_['user_email'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configuration != null) 'configuration': configuration!,
        if (errorResult != null) 'errorResult': errorResult!,
        if (id != null) 'id': id!,
        if (jobReference != null) 'jobReference': jobReference!,
        if (kind != null) 'kind': kind!,
        if (principalSubject != null) 'principal_subject': principalSubject!,
        if (state != null) 'state': state!,
        if (statistics != null) 'statistics': statistics!,
        if (status != null) 'status': status!,
        if (userEmail != null) 'user_email': userEmail!,
      };
}

/// JobList is the response format for a jobs.list call.
class JobList {
  /// A hash of this page of results.
  core.String? etag;

  /// List of jobs that were requested.
  core.List<JobListJobs>? jobs;

  /// The resource type of the response.
  core.String? kind;

  /// A token to request the next page of results.
  core.String? nextPageToken;

  /// A list of skipped locations that were unreachable.
  ///
  /// For more information about BigQuery locations, see:
  /// https://cloud.google.com/bigquery/docs/locations. Example: "europe-west5"
  core.List<core.String>? unreachable;

  JobList({
    this.etag,
    this.jobs,
    this.kind,
    this.nextPageToken,
    this.unreachable,
  });

  JobList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => JobListJobs.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (jobs != null) 'jobs': jobs!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A job reference is a fully qualified identifier for referring to a job.
class JobReference {
  /// The ID of the job.
  ///
  /// The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores
  /// (_), or dashes (-). The maximum length is 1,024 characters.
  ///
  /// Required.
  core.String? jobId;

  /// The geographic location of the job.
  ///
  /// The default value is US. For more information about BigQuery locations,
  /// see: https://cloud.google.com/bigquery/docs/locations
  ///
  /// Optional.
  core.String? location;

  /// The ID of the project containing this job.
  ///
  /// Required.
  core.String? projectId;

  JobReference({
    this.jobId,
    this.location,
    this.projectId,
  });

  JobReference.fromJson(core.Map json_)
      : this(
          jobId:
              json_.containsKey('jobId') ? json_['jobId'] as core.String : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobId != null) 'jobId': jobId!,
        if (location != null) 'location': location!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Job resource usage breakdown by reservation.
class JobStatisticsReservationUsage {
  /// Reservation name or "unreserved" for on-demand resources usage.
  core.String? name;

  /// Total slot milliseconds used by the reservation for a particular job.
  core.String? slotMs;

  JobStatisticsReservationUsage({
    this.name,
    this.slotMs,
  });

  JobStatisticsReservationUsage.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          slotMs: json_.containsKey('slotMs')
              ? json_['slotMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (slotMs != null) 'slotMs': slotMs!,
      };
}

/// Statistics for a single job execution.
class JobStatistics {
  /// \[TrustedTester\] Job progress (0.0 -\> 1.0) for LOAD and EXTRACT jobs.
  ///
  /// Output only.
  core.double? completionRatio;

  /// Statistics for a copy job.
  ///
  /// Output only.
  JobStatistics5? copy;

  /// Creation time of this job, in milliseconds since the epoch.
  ///
  /// This field will be present on all jobs.
  ///
  /// Output only.
  core.String? creationTime;

  /// Statistics for data-masking.
  ///
  /// Present only for query and extract jobs.
  ///
  /// Output only.
  DataMaskingStatistics? dataMaskingStatistics;

  /// End time of this job, in milliseconds since the epoch.
  ///
  /// This field will be present whenever a job is in the DONE state.
  ///
  /// Output only.
  core.String? endTime;

  /// Statistics for an extract job.
  ///
  /// Output only.
  JobStatistics4? extract;

  /// The duration in milliseconds of the execution of the final attempt of this
  /// job, as BigQuery may internally re-attempt to execute the job.
  ///
  /// Output only.
  core.String? finalExecutionDurationMs;

  /// Statistics for a load job.
  ///
  /// Output only.
  JobStatistics3? load;

  /// Number of child jobs executed.
  ///
  /// Output only.
  core.String? numChildJobs;

  /// If this is a child job, specifies the job ID of the parent.
  ///
  /// Output only.
  core.String? parentJobId;

  /// Statistics for a query job.
  ///
  /// Output only.
  JobStatistics2? query;

  /// Quotas which delayed this job's start time.
  ///
  /// Output only.
  core.List<core.String>? quotaDeferments;

  /// Job resource usage breakdown by reservation.
  ///
  /// This field reported misleading information and will no longer be
  /// populated.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<JobStatisticsReservationUsage>? reservationUsage;

  /// Name of the primary reservation assigned to this job.
  ///
  /// Note that this could be different than reservations reported in the
  /// reservation usage field if parent reservations were used to execute this
  /// job.
  ///
  /// Output only.
  core.String? reservationId;

  /// Statistics for row-level security.
  ///
  /// Present only for query and extract jobs.
  ///
  /// Output only.
  RowLevelSecurityStatistics? rowLevelSecurityStatistics;

  /// If this a child job of a script, specifies information about the context
  /// of this job within the script.
  ///
  /// Output only.
  ScriptStatistics? scriptStatistics;

  /// Information of the session if this job is part of one.
  ///
  /// Output only.
  SessionInfo? sessionInfo;

  /// Start time of this job, in milliseconds since the epoch.
  ///
  /// This field will be present when the job transitions from the PENDING state
  /// to either RUNNING or DONE.
  ///
  /// Output only.
  core.String? startTime;

  /// Total bytes processed for the job.
  ///
  /// Output only.
  core.String? totalBytesProcessed;

  /// Slot-milliseconds for the job.
  ///
  /// Output only.
  core.String? totalSlotMs;

  /// \[Alpha\] Information of the multi-statement transaction if this job is
  /// part of one.
  ///
  /// This property is only expected on a child job or a job that is in a
  /// session. A script parent job is not part of the transaction started in the
  /// script.
  ///
  /// Output only.
  TransactionInfo? transactionInfo;

  JobStatistics({
    this.completionRatio,
    this.copy,
    this.creationTime,
    this.dataMaskingStatistics,
    this.endTime,
    this.extract,
    this.finalExecutionDurationMs,
    this.load,
    this.numChildJobs,
    this.parentJobId,
    this.query,
    this.quotaDeferments,
    this.reservationUsage,
    this.reservationId,
    this.rowLevelSecurityStatistics,
    this.scriptStatistics,
    this.sessionInfo,
    this.startTime,
    this.totalBytesProcessed,
    this.totalSlotMs,
    this.transactionInfo,
  });

  JobStatistics.fromJson(core.Map json_)
      : this(
          completionRatio: json_.containsKey('completionRatio')
              ? (json_['completionRatio'] as core.num).toDouble()
              : null,
          copy: json_.containsKey('copy')
              ? JobStatistics5.fromJson(
                  json_['copy'] as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          dataMaskingStatistics: json_.containsKey('dataMaskingStatistics')
              ? DataMaskingStatistics.fromJson(json_['dataMaskingStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          extract: json_.containsKey('extract')
              ? JobStatistics4.fromJson(
                  json_['extract'] as core.Map<core.String, core.dynamic>)
              : null,
          finalExecutionDurationMs:
              json_.containsKey('finalExecutionDurationMs')
                  ? json_['finalExecutionDurationMs'] as core.String
                  : null,
          load: json_.containsKey('load')
              ? JobStatistics3.fromJson(
                  json_['load'] as core.Map<core.String, core.dynamic>)
              : null,
          numChildJobs: json_.containsKey('numChildJobs')
              ? json_['numChildJobs'] as core.String
              : null,
          parentJobId: json_.containsKey('parentJobId')
              ? json_['parentJobId'] as core.String
              : null,
          query: json_.containsKey('query')
              ? JobStatistics2.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>)
              : null,
          quotaDeferments: json_.containsKey('quotaDeferments')
              ? (json_['quotaDeferments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          reservationUsage: json_.containsKey('reservationUsage')
              ? (json_['reservationUsage'] as core.List)
                  .map((value) => JobStatisticsReservationUsage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reservationId: json_.containsKey('reservation_id')
              ? json_['reservation_id'] as core.String
              : null,
          rowLevelSecurityStatistics:
              json_.containsKey('rowLevelSecurityStatistics')
                  ? RowLevelSecurityStatistics.fromJson(
                      json_['rowLevelSecurityStatistics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          scriptStatistics: json_.containsKey('scriptStatistics')
              ? ScriptStatistics.fromJson(json_['scriptStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sessionInfo: json_.containsKey('sessionInfo')
              ? SessionInfo.fromJson(
                  json_['sessionInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          totalBytesProcessed: json_.containsKey('totalBytesProcessed')
              ? json_['totalBytesProcessed'] as core.String
              : null,
          totalSlotMs: json_.containsKey('totalSlotMs')
              ? json_['totalSlotMs'] as core.String
              : null,
          transactionInfo: json_.containsKey('transactionInfo')
              ? TransactionInfo.fromJson(json_['transactionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionRatio != null) 'completionRatio': completionRatio!,
        if (copy != null) 'copy': copy!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (dataMaskingStatistics != null)
          'dataMaskingStatistics': dataMaskingStatistics!,
        if (endTime != null) 'endTime': endTime!,
        if (extract != null) 'extract': extract!,
        if (finalExecutionDurationMs != null)
          'finalExecutionDurationMs': finalExecutionDurationMs!,
        if (load != null) 'load': load!,
        if (numChildJobs != null) 'numChildJobs': numChildJobs!,
        if (parentJobId != null) 'parentJobId': parentJobId!,
        if (query != null) 'query': query!,
        if (quotaDeferments != null) 'quotaDeferments': quotaDeferments!,
        if (reservationUsage != null) 'reservationUsage': reservationUsage!,
        if (reservationId != null) 'reservation_id': reservationId!,
        if (rowLevelSecurityStatistics != null)
          'rowLevelSecurityStatistics': rowLevelSecurityStatistics!,
        if (scriptStatistics != null) 'scriptStatistics': scriptStatistics!,
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
        if (startTime != null) 'startTime': startTime!,
        if (totalBytesProcessed != null)
          'totalBytesProcessed': totalBytesProcessed!,
        if (totalSlotMs != null) 'totalSlotMs': totalSlotMs!,
        if (transactionInfo != null) 'transactionInfo': transactionInfo!,
      };
}

/// Job resource usage breakdown by reservation.
class JobStatistics2ReservationUsage {
  /// Reservation name or "unreserved" for on-demand resources usage.
  core.String? name;

  /// Total slot milliseconds used by the reservation for a particular job.
  core.String? slotMs;

  JobStatistics2ReservationUsage({
    this.name,
    this.slotMs,
  });

  JobStatistics2ReservationUsage.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          slotMs: json_.containsKey('slotMs')
              ? json_['slotMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (slotMs != null) 'slotMs': slotMs!,
      };
}

/// Statistics for a query job.
class JobStatistics2 {
  /// BI Engine specific Statistics.
  ///
  /// Output only.
  BiEngineStatistics? biEngineStatistics;

  /// Billing tier for the job.
  ///
  /// This is a BigQuery-specific concept which is not related to the Google
  /// Cloud notion of "free tier". The value here is a measure of the query's
  /// resource consumption relative to the amount of data scanned. For on-demand
  /// queries, the limit is 100, and all queries within this limit are billed at
  /// the standard on-demand rates. On-demand queries that exceed this limit
  /// will fail with a billingTierLimitExceeded error.
  ///
  /// Output only.
  core.int? billingTier;

  /// Whether the query result was fetched from the query cache.
  ///
  /// Output only.
  core.bool? cacheHit;

  /// Referenced dataset for DCL statement.
  ///
  /// Output only.
  DatasetReference? dclTargetDataset;

  /// Referenced table for DCL statement.
  ///
  /// Output only.
  TableReference? dclTargetTable;

  /// Referenced view for DCL statement.
  ///
  /// Output only.
  TableReference? dclTargetView;

  /// The number of row access policies affected by a DDL statement.
  ///
  /// Present only for DROP ALL ROW ACCESS POLICIES queries.
  ///
  /// Output only.
  core.String? ddlAffectedRowAccessPolicyCount;

  /// The table after rename.
  ///
  /// Present only for ALTER TABLE RENAME TO query.
  ///
  /// Output only.
  TableReference? ddlDestinationTable;

  /// The DDL operation performed, possibly dependent on the pre-existence of
  /// the DDL target.
  ///
  /// Output only.
  core.String? ddlOperationPerformed;

  /// The DDL target dataset.
  ///
  /// Present only for CREATE/ALTER/DROP SCHEMA(dataset) queries.
  ///
  /// Output only.
  DatasetReference? ddlTargetDataset;

  /// \[Beta\] The DDL target routine.
  ///
  /// Present only for CREATE/DROP FUNCTION/PROCEDURE queries.
  ///
  /// Output only.
  RoutineReference? ddlTargetRoutine;

  /// The DDL target row access policy.
  ///
  /// Present only for CREATE/DROP ROW ACCESS POLICY queries.
  ///
  /// Output only.
  RowAccessPolicyReference? ddlTargetRowAccessPolicy;

  /// The DDL target table.
  ///
  /// Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCESS POLICIES
  /// queries.
  ///
  /// Output only.
  TableReference? ddlTargetTable;

  /// Detailed statistics for DML statements INSERT, UPDATE, DELETE, MERGE or
  /// TRUNCATE.
  ///
  /// Output only.
  DmlStatistics? dmlStats;

  /// The original estimate of bytes processed for the job.
  ///
  /// Output only.
  core.String? estimatedBytesProcessed;

  /// Stats for EXPORT DATA statement.
  ///
  /// Output only.
  ExportDataStatistics? exportDataStatistics;

  /// Job cost breakdown as bigquery internal cost and external service costs.
  ///
  /// Output only.
  core.List<ExternalServiceCost>? externalServiceCosts;

  /// Statistics for a LOAD query.
  ///
  /// Output only.
  LoadQueryStatistics? loadQueryStatistics;

  /// Statistics of materialized views of a query job.
  ///
  /// Output only.
  MaterializedViewStatistics? materializedViewStatistics;

  /// Statistics of metadata cache usage in a query for BigLake tables.
  ///
  /// Output only.
  MetadataCacheStatistics? metadataCacheStatistics;

  /// Statistics of a BigQuery ML training job.
  ///
  /// Output only.
  MlStatistics? mlStatistics;

  /// Deprecated.
  BigQueryModelTraining? modelTraining;

  /// Deprecated.
  core.int? modelTrainingCurrentIteration;

  /// Deprecated.
  core.String? modelTrainingExpectedTotalIteration;

  /// The number of rows affected by a DML statement.
  ///
  /// Present only for DML statements INSERT, UPDATE or DELETE.
  ///
  /// Output only.
  core.String? numDmlAffectedRows;

  /// Performance insights.
  ///
  /// Output only.
  PerformanceInsights? performanceInsights;

  /// Query optimization information for a QUERY job.
  ///
  /// Output only.
  QueryInfo? queryInfo;

  /// Describes execution plan for the query.
  ///
  /// Output only.
  core.List<ExplainQueryStage>? queryPlan;

  /// Referenced routines for the job.
  ///
  /// Output only.
  core.List<RoutineReference>? referencedRoutines;

  /// Referenced tables for the job.
  ///
  /// Queries that reference more than 50 tables will not have a complete list.
  ///
  /// Output only.
  core.List<TableReference>? referencedTables;

  /// Job resource usage breakdown by reservation.
  ///
  /// This field reported misleading information and will no longer be
  /// populated.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<JobStatistics2ReservationUsage>? reservationUsage;

  /// The schema of the results.
  ///
  /// Present only for successful dry run of non-legacy SQL queries.
  ///
  /// Output only.
  TableSchema? schema;

  /// Search query specific statistics.
  ///
  /// Output only.
  SearchStatistics? searchStatistics;

  /// Statistics of a Spark procedure job.
  ///
  /// Output only.
  SparkStatistics? sparkStatistics;

  /// The type of query statement, if valid.
  ///
  /// Possible values: * `SELECT`:
  /// \[`SELECT`\](/bigquery/docs/reference/standard-sql/query-syntax#select_list)
  /// statement. * `ASSERT`:
  /// \[`ASSERT`\](/bigquery/docs/reference/standard-sql/debugging-statements#assert)
  /// statement. * `INSERT`:
  /// \[`INSERT`\](/bigquery/docs/reference/standard-sql/dml-syntax#insert_statement)
  /// statement. * `UPDATE`:
  /// \[`UPDATE`\](/bigquery/docs/reference/standard-sql/query-syntax#update_statement)
  /// statement. * `DELETE`:
  /// \[`DELETE`\](/bigquery/docs/reference/standard-sql/data-manipulation-language)
  /// statement. * `MERGE`:
  /// \[`MERGE`\](/bigquery/docs/reference/standard-sql/data-manipulation-language)
  /// statement. * `CREATE_TABLE`: \[`CREATE
  /// TABLE`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_table_statement)
  /// statement, without `AS SELECT`. * `CREATE_TABLE_AS_SELECT`: \[`CREATE
  /// TABLE AS
  /// SELECT`\](/bigquery/docs/reference/standard-sql/data-definition-language#query_statement)
  /// statement. * `CREATE_VIEW`: \[`CREATE
  /// VIEW`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_view_statement)
  /// statement. * `CREATE_MODEL`: \[`CREATE
  /// MODEL`\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create#create_model_statement)
  /// statement. * `CREATE_MATERIALIZED_VIEW`: \[`CREATE MATERIALIZED
  /// VIEW`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_materialized_view_statement)
  /// statement. * `CREATE_FUNCTION`: \[`CREATE
  /// FUNCTION`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_function_statement)
  /// statement. * `CREATE_TABLE_FUNCTION`: \[`CREATE TABLE
  /// FUNCTION`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_table_function_statement)
  /// statement. * `CREATE_PROCEDURE`: \[`CREATE
  /// PROCEDURE`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_procedure)
  /// statement. * `CREATE_ROW_ACCESS_POLICY`: \[`CREATE ROW ACCESS
  /// POLICY`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_row_access_policy_statement)
  /// statement. * `CREATE_SCHEMA`: \[`CREATE
  /// SCHEMA`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_schema_statement)
  /// statement. * `CREATE_SNAPSHOT_TABLE`: \[`CREATE SNAPSHOT
  /// TABLE`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_snapshot_table_statement)
  /// statement. * `CREATE_SEARCH_INDEX`: \[`CREATE SEARCH
  /// INDEX`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_search_index_statement)
  /// statement. * `DROP_TABLE`: \[`DROP
  /// TABLE`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_table_statement)
  /// statement. * `DROP_EXTERNAL_TABLE`: \[`DROP EXTERNAL
  /// TABLE`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_external_table_statement)
  /// statement. * `DROP_VIEW`: \[`DROP
  /// VIEW`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_view_statement)
  /// statement. * `DROP_MODEL`: \[`DROP
  /// MODEL`\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-drop-model)
  /// statement. * `DROP_MATERIALIZED_VIEW`: \[`DROP MATERIALIZED
  /// VIEW`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_materialized_view_statement)
  /// statement. * `DROP_FUNCTION` : \[`DROP
  /// FUNCTION`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_function_statement)
  /// statement. * `DROP_TABLE_FUNCTION` : \[`DROP TABLE
  /// FUNCTION`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_table_function)
  /// statement. * `DROP_PROCEDURE`: \[`DROP
  /// PROCEDURE`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_procedure_statement)
  /// statement. * `DROP_SEARCH_INDEX`: \[`DROP SEARCH
  /// INDEX`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_search_index)
  /// statement. * `DROP_SCHEMA`: \[`DROP
  /// SCHEMA`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_schema_statement)
  /// statement. * `DROP_SNAPSHOT_TABLE`: \[`DROP SNAPSHOT
  /// TABLE`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_snapshot_table_statement)
  /// statement. * `DROP_ROW_ACCESS_POLICY`: \[`DROP [ALL] ROW ACCESS
  /// POLICY|POLICIES`\](/bigquery/docs/reference/standard-sql/data-definition-language#drop_row_access_policy_statement)
  /// statement. * `ALTER_TABLE`: \[`ALTER
  /// TABLE`\](/bigquery/docs/reference/standard-sql/data-definition-language#alter_table_set_options_statement)
  /// statement. * `ALTER_VIEW`: \[`ALTER
  /// VIEW`\](/bigquery/docs/reference/standard-sql/data-definition-language#alter_view_set_options_statement)
  /// statement. * `ALTER_MATERIALIZED_VIEW`: \[`ALTER MATERIALIZED
  /// VIEW`\](/bigquery/docs/reference/standard-sql/data-definition-language#alter_materialized_view_set_options_statement)
  /// statement. * `ALTER_SCHEMA`: \[`ALTER
  /// SCHEMA`\](/bigquery/docs/reference/standard-sql/data-definition-language#aalter_schema_set_options_statement)
  /// statement. * `SCRIPT`:
  /// \[`SCRIPT`\](/bigquery/docs/reference/standard-sql/procedural-language). *
  /// `TRUNCATE_TABLE`: \[`TRUNCATE
  /// TABLE`\](/bigquery/docs/reference/standard-sql/dml-syntax#truncate_table_statement)
  /// statement. * `CREATE_EXTERNAL_TABLE`: \[`CREATE EXTERNAL
  /// TABLE`\](/bigquery/docs/reference/standard-sql/data-definition-language#create_external_table_statement)
  /// statement. * `EXPORT_DATA`: \[`EXPORT
  /// DATA`\](/bigquery/docs/reference/standard-sql/other-statements#export_data_statement)
  /// statement. * `EXPORT_MODEL`: \[`EXPORT
  /// MODEL`\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-export-model)
  /// statement. * `LOAD_DATA`: \[`LOAD
  /// DATA`\](/bigquery/docs/reference/standard-sql/other-statements#load_data_statement)
  /// statement. * `CALL`:
  /// \[`CALL`\](/bigquery/docs/reference/standard-sql/procedural-language#call)
  /// statement.
  ///
  /// Output only.
  core.String? statementType;

  /// Describes a timeline of job execution.
  ///
  /// Output only.
  core.List<QueryTimelineSample>? timeline;

  /// If the project is configured to use on-demand pricing, then this field
  /// contains the total bytes billed for the job.
  ///
  /// If the project is configured to use flat-rate pricing, then you are not
  /// billed for bytes and this field is informational only.
  ///
  /// Output only.
  core.String? totalBytesBilled;

  /// Total bytes processed for the job.
  ///
  /// Output only.
  core.String? totalBytesProcessed;

  /// For dry-run jobs, totalBytesProcessed is an estimate and this field
  /// specifies the accuracy of the estimate.
  ///
  /// Possible values can be: UNKNOWN: accuracy of the estimate is unknown.
  /// PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what
  /// the query would cost. UPPER_BOUND: estimate is upper bound of what the
  /// query would cost.
  ///
  /// Output only.
  core.String? totalBytesProcessedAccuracy;

  /// Total number of partitions processed from all partitioned tables
  /// referenced in the job.
  ///
  /// Output only.
  core.String? totalPartitionsProcessed;

  /// Slot-milliseconds for the job.
  ///
  /// Output only.
  core.String? totalSlotMs;

  /// Total bytes transferred for cross-cloud queries such as Cross Cloud
  /// Transfer and CREATE TABLE AS SELECT (CTAS).
  ///
  /// Output only.
  core.String? transferredBytes;

  /// GoogleSQL only: list of undeclared query parameters detected during a dry
  /// run validation.
  ///
  /// Output only.
  core.List<QueryParameter>? undeclaredQueryParameters;

  /// Vector Search query specific statistics.
  ///
  /// Output only.
  VectorSearchStatistics? vectorSearchStatistics;

  JobStatistics2({
    this.biEngineStatistics,
    this.billingTier,
    this.cacheHit,
    this.dclTargetDataset,
    this.dclTargetTable,
    this.dclTargetView,
    this.ddlAffectedRowAccessPolicyCount,
    this.ddlDestinationTable,
    this.ddlOperationPerformed,
    this.ddlTargetDataset,
    this.ddlTargetRoutine,
    this.ddlTargetRowAccessPolicy,
    this.ddlTargetTable,
    this.dmlStats,
    this.estimatedBytesProcessed,
    this.exportDataStatistics,
    this.externalServiceCosts,
    this.loadQueryStatistics,
    this.materializedViewStatistics,
    this.metadataCacheStatistics,
    this.mlStatistics,
    this.modelTraining,
    this.modelTrainingCurrentIteration,
    this.modelTrainingExpectedTotalIteration,
    this.numDmlAffectedRows,
    this.performanceInsights,
    this.queryInfo,
    this.queryPlan,
    this.referencedRoutines,
    this.referencedTables,
    this.reservationUsage,
    this.schema,
    this.searchStatistics,
    this.sparkStatistics,
    this.statementType,
    this.timeline,
    this.totalBytesBilled,
    this.totalBytesProcessed,
    this.totalBytesProcessedAccuracy,
    this.totalPartitionsProcessed,
    this.totalSlotMs,
    this.transferredBytes,
    this.undeclaredQueryParameters,
    this.vectorSearchStatistics,
  });

  JobStatistics2.fromJson(core.Map json_)
      : this(
          biEngineStatistics: json_.containsKey('biEngineStatistics')
              ? BiEngineStatistics.fromJson(json_['biEngineStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          billingTier: json_.containsKey('billingTier')
              ? json_['billingTier'] as core.int
              : null,
          cacheHit: json_.containsKey('cacheHit')
              ? json_['cacheHit'] as core.bool
              : null,
          dclTargetDataset: json_.containsKey('dclTargetDataset')
              ? DatasetReference.fromJson(json_['dclTargetDataset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dclTargetTable: json_.containsKey('dclTargetTable')
              ? TableReference.fromJson(json_['dclTargetTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dclTargetView: json_.containsKey('dclTargetView')
              ? TableReference.fromJson(
                  json_['dclTargetView'] as core.Map<core.String, core.dynamic>)
              : null,
          ddlAffectedRowAccessPolicyCount:
              json_.containsKey('ddlAffectedRowAccessPolicyCount')
                  ? json_['ddlAffectedRowAccessPolicyCount'] as core.String
                  : null,
          ddlDestinationTable: json_.containsKey('ddlDestinationTable')
              ? TableReference.fromJson(json_['ddlDestinationTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ddlOperationPerformed: json_.containsKey('ddlOperationPerformed')
              ? json_['ddlOperationPerformed'] as core.String
              : null,
          ddlTargetDataset: json_.containsKey('ddlTargetDataset')
              ? DatasetReference.fromJson(json_['ddlTargetDataset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ddlTargetRoutine: json_.containsKey('ddlTargetRoutine')
              ? RoutineReference.fromJson(json_['ddlTargetRoutine']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ddlTargetRowAccessPolicy:
              json_.containsKey('ddlTargetRowAccessPolicy')
                  ? RowAccessPolicyReference.fromJson(
                      json_['ddlTargetRowAccessPolicy']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          ddlTargetTable: json_.containsKey('ddlTargetTable')
              ? TableReference.fromJson(json_['ddlTargetTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dmlStats: json_.containsKey('dmlStats')
              ? DmlStatistics.fromJson(
                  json_['dmlStats'] as core.Map<core.String, core.dynamic>)
              : null,
          estimatedBytesProcessed: json_.containsKey('estimatedBytesProcessed')
              ? json_['estimatedBytesProcessed'] as core.String
              : null,
          exportDataStatistics: json_.containsKey('exportDataStatistics')
              ? ExportDataStatistics.fromJson(json_['exportDataStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          externalServiceCosts: json_.containsKey('externalServiceCosts')
              ? (json_['externalServiceCosts'] as core.List)
                  .map((value) => ExternalServiceCost.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          loadQueryStatistics: json_.containsKey('loadQueryStatistics')
              ? LoadQueryStatistics.fromJson(json_['loadQueryStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          materializedViewStatistics:
              json_.containsKey('materializedViewStatistics')
                  ? MaterializedViewStatistics.fromJson(
                      json_['materializedViewStatistics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          metadataCacheStatistics: json_.containsKey('metadataCacheStatistics')
              ? MetadataCacheStatistics.fromJson(
                  json_['metadataCacheStatistics']
                      as core.Map<core.String, core.dynamic>)
              : null,
          mlStatistics: json_.containsKey('mlStatistics')
              ? MlStatistics.fromJson(
                  json_['mlStatistics'] as core.Map<core.String, core.dynamic>)
              : null,
          modelTraining: json_.containsKey('modelTraining')
              ? BigQueryModelTraining.fromJson(
                  json_['modelTraining'] as core.Map<core.String, core.dynamic>)
              : null,
          modelTrainingCurrentIteration:
              json_.containsKey('modelTrainingCurrentIteration')
                  ? json_['modelTrainingCurrentIteration'] as core.int
                  : null,
          modelTrainingExpectedTotalIteration:
              json_.containsKey('modelTrainingExpectedTotalIteration')
                  ? json_['modelTrainingExpectedTotalIteration'] as core.String
                  : null,
          numDmlAffectedRows: json_.containsKey('numDmlAffectedRows')
              ? json_['numDmlAffectedRows'] as core.String
              : null,
          performanceInsights: json_.containsKey('performanceInsights')
              ? PerformanceInsights.fromJson(json_['performanceInsights']
                  as core.Map<core.String, core.dynamic>)
              : null,
          queryInfo: json_.containsKey('queryInfo')
              ? QueryInfo.fromJson(
                  json_['queryInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          queryPlan: json_.containsKey('queryPlan')
              ? (json_['queryPlan'] as core.List)
                  .map((value) => ExplainQueryStage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          referencedRoutines: json_.containsKey('referencedRoutines')
              ? (json_['referencedRoutines'] as core.List)
                  .map((value) => RoutineReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          referencedTables: json_.containsKey('referencedTables')
              ? (json_['referencedTables'] as core.List)
                  .map((value) => TableReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reservationUsage: json_.containsKey('reservationUsage')
              ? (json_['reservationUsage'] as core.List)
                  .map((value) => JobStatistics2ReservationUsage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          schema: json_.containsKey('schema')
              ? TableSchema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          searchStatistics: json_.containsKey('searchStatistics')
              ? SearchStatistics.fromJson(json_['searchStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sparkStatistics: json_.containsKey('sparkStatistics')
              ? SparkStatistics.fromJson(json_['sparkStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          statementType: json_.containsKey('statementType')
              ? json_['statementType'] as core.String
              : null,
          timeline: json_.containsKey('timeline')
              ? (json_['timeline'] as core.List)
                  .map((value) => QueryTimelineSample.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalBytesBilled: json_.containsKey('totalBytesBilled')
              ? json_['totalBytesBilled'] as core.String
              : null,
          totalBytesProcessed: json_.containsKey('totalBytesProcessed')
              ? json_['totalBytesProcessed'] as core.String
              : null,
          totalBytesProcessedAccuracy:
              json_.containsKey('totalBytesProcessedAccuracy')
                  ? json_['totalBytesProcessedAccuracy'] as core.String
                  : null,
          totalPartitionsProcessed:
              json_.containsKey('totalPartitionsProcessed')
                  ? json_['totalPartitionsProcessed'] as core.String
                  : null,
          totalSlotMs: json_.containsKey('totalSlotMs')
              ? json_['totalSlotMs'] as core.String
              : null,
          transferredBytes: json_.containsKey('transferredBytes')
              ? json_['transferredBytes'] as core.String
              : null,
          undeclaredQueryParameters:
              json_.containsKey('undeclaredQueryParameters')
                  ? (json_['undeclaredQueryParameters'] as core.List)
                      .map((value) => QueryParameter.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          vectorSearchStatistics: json_.containsKey('vectorSearchStatistics')
              ? VectorSearchStatistics.fromJson(json_['vectorSearchStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (biEngineStatistics != null)
          'biEngineStatistics': biEngineStatistics!,
        if (billingTier != null) 'billingTier': billingTier!,
        if (cacheHit != null) 'cacheHit': cacheHit!,
        if (dclTargetDataset != null) 'dclTargetDataset': dclTargetDataset!,
        if (dclTargetTable != null) 'dclTargetTable': dclTargetTable!,
        if (dclTargetView != null) 'dclTargetView': dclTargetView!,
        if (ddlAffectedRowAccessPolicyCount != null)
          'ddlAffectedRowAccessPolicyCount': ddlAffectedRowAccessPolicyCount!,
        if (ddlDestinationTable != null)
          'ddlDestinationTable': ddlDestinationTable!,
        if (ddlOperationPerformed != null)
          'ddlOperationPerformed': ddlOperationPerformed!,
        if (ddlTargetDataset != null) 'ddlTargetDataset': ddlTargetDataset!,
        if (ddlTargetRoutine != null) 'ddlTargetRoutine': ddlTargetRoutine!,
        if (ddlTargetRowAccessPolicy != null)
          'ddlTargetRowAccessPolicy': ddlTargetRowAccessPolicy!,
        if (ddlTargetTable != null) 'ddlTargetTable': ddlTargetTable!,
        if (dmlStats != null) 'dmlStats': dmlStats!,
        if (estimatedBytesProcessed != null)
          'estimatedBytesProcessed': estimatedBytesProcessed!,
        if (exportDataStatistics != null)
          'exportDataStatistics': exportDataStatistics!,
        if (externalServiceCosts != null)
          'externalServiceCosts': externalServiceCosts!,
        if (loadQueryStatistics != null)
          'loadQueryStatistics': loadQueryStatistics!,
        if (materializedViewStatistics != null)
          'materializedViewStatistics': materializedViewStatistics!,
        if (metadataCacheStatistics != null)
          'metadataCacheStatistics': metadataCacheStatistics!,
        if (mlStatistics != null) 'mlStatistics': mlStatistics!,
        if (modelTraining != null) 'modelTraining': modelTraining!,
        if (modelTrainingCurrentIteration != null)
          'modelTrainingCurrentIteration': modelTrainingCurrentIteration!,
        if (modelTrainingExpectedTotalIteration != null)
          'modelTrainingExpectedTotalIteration':
              modelTrainingExpectedTotalIteration!,
        if (numDmlAffectedRows != null)
          'numDmlAffectedRows': numDmlAffectedRows!,
        if (performanceInsights != null)
          'performanceInsights': performanceInsights!,
        if (queryInfo != null) 'queryInfo': queryInfo!,
        if (queryPlan != null) 'queryPlan': queryPlan!,
        if (referencedRoutines != null)
          'referencedRoutines': referencedRoutines!,
        if (referencedTables != null) 'referencedTables': referencedTables!,
        if (reservationUsage != null) 'reservationUsage': reservationUsage!,
        if (schema != null) 'schema': schema!,
        if (searchStatistics != null) 'searchStatistics': searchStatistics!,
        if (sparkStatistics != null) 'sparkStatistics': sparkStatistics!,
        if (statementType != null) 'statementType': statementType!,
        if (timeline != null) 'timeline': timeline!,
        if (totalBytesBilled != null) 'totalBytesBilled': totalBytesBilled!,
        if (totalBytesProcessed != null)
          'totalBytesProcessed': totalBytesProcessed!,
        if (totalBytesProcessedAccuracy != null)
          'totalBytesProcessedAccuracy': totalBytesProcessedAccuracy!,
        if (totalPartitionsProcessed != null)
          'totalPartitionsProcessed': totalPartitionsProcessed!,
        if (totalSlotMs != null) 'totalSlotMs': totalSlotMs!,
        if (transferredBytes != null) 'transferredBytes': transferredBytes!,
        if (undeclaredQueryParameters != null)
          'undeclaredQueryParameters': undeclaredQueryParameters!,
        if (vectorSearchStatistics != null)
          'vectorSearchStatistics': vectorSearchStatistics!,
      };
}

/// Statistics for a load job.
class JobStatistics3 {
  /// The number of bad records encountered.
  ///
  /// Note that if the job has failed because of more bad records encountered
  /// than the maximum allowed in the load job configuration, then this number
  /// can be less than the total number of bad records present in the input
  /// data.
  ///
  /// Output only.
  core.String? badRecords;

  /// Number of bytes of source data in a load job.
  ///
  /// Output only.
  core.String? inputFileBytes;

  /// Number of source files in a load job.
  ///
  /// Output only.
  core.String? inputFiles;

  /// Size of the loaded data in bytes.
  ///
  /// Note that while a load job is in the running state, this value may change.
  ///
  /// Output only.
  core.String? outputBytes;

  /// Number of rows imported in a load job.
  ///
  /// Note that while an import job is in the running state, this value may
  /// change.
  ///
  /// Output only.
  core.String? outputRows;

  /// Describes a timeline of job execution.
  ///
  /// Output only.
  core.List<QueryTimelineSample>? timeline;

  JobStatistics3({
    this.badRecords,
    this.inputFileBytes,
    this.inputFiles,
    this.outputBytes,
    this.outputRows,
    this.timeline,
  });

  JobStatistics3.fromJson(core.Map json_)
      : this(
          badRecords: json_.containsKey('badRecords')
              ? json_['badRecords'] as core.String
              : null,
          inputFileBytes: json_.containsKey('inputFileBytes')
              ? json_['inputFileBytes'] as core.String
              : null,
          inputFiles: json_.containsKey('inputFiles')
              ? json_['inputFiles'] as core.String
              : null,
          outputBytes: json_.containsKey('outputBytes')
              ? json_['outputBytes'] as core.String
              : null,
          outputRows: json_.containsKey('outputRows')
              ? json_['outputRows'] as core.String
              : null,
          timeline: json_.containsKey('timeline')
              ? (json_['timeline'] as core.List)
                  .map((value) => QueryTimelineSample.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (badRecords != null) 'badRecords': badRecords!,
        if (inputFileBytes != null) 'inputFileBytes': inputFileBytes!,
        if (inputFiles != null) 'inputFiles': inputFiles!,
        if (outputBytes != null) 'outputBytes': outputBytes!,
        if (outputRows != null) 'outputRows': outputRows!,
        if (timeline != null) 'timeline': timeline!,
      };
}

/// Statistics for an extract job.
class JobStatistics4 {
  /// Number of files per destination URI or URI pattern specified in the
  /// extract configuration.
  ///
  /// These values will be in the same order as the URIs specified in the
  /// 'destinationUris' field.
  ///
  /// Output only.
  core.List<core.String>? destinationUriFileCounts;

  /// Number of user bytes extracted into the result.
  ///
  /// This is the byte count as computed by BigQuery for billing purposes and
  /// doesn't have any relationship with the number of actual result bytes
  /// extracted in the desired format.
  ///
  /// Output only.
  core.String? inputBytes;

  /// Describes a timeline of job execution.
  ///
  /// Output only.
  core.List<QueryTimelineSample>? timeline;

  JobStatistics4({
    this.destinationUriFileCounts,
    this.inputBytes,
    this.timeline,
  });

  JobStatistics4.fromJson(core.Map json_)
      : this(
          destinationUriFileCounts:
              json_.containsKey('destinationUriFileCounts')
                  ? (json_['destinationUriFileCounts'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          inputBytes: json_.containsKey('inputBytes')
              ? json_['inputBytes'] as core.String
              : null,
          timeline: json_.containsKey('timeline')
              ? (json_['timeline'] as core.List)
                  .map((value) => QueryTimelineSample.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationUriFileCounts != null)
          'destinationUriFileCounts': destinationUriFileCounts!,
        if (inputBytes != null) 'inputBytes': inputBytes!,
        if (timeline != null) 'timeline': timeline!,
      };
}

/// Statistics for a copy job.
class JobStatistics5 {
  /// Number of logical bytes copied to the destination table.
  ///
  /// Output only.
  core.String? copiedLogicalBytes;

  /// Number of rows copied to the destination table.
  ///
  /// Output only.
  core.String? copiedRows;

  JobStatistics5({
    this.copiedLogicalBytes,
    this.copiedRows,
  });

  JobStatistics5.fromJson(core.Map json_)
      : this(
          copiedLogicalBytes: json_.containsKey('copiedLogicalBytes')
              ? json_['copiedLogicalBytes'] as core.String
              : null,
          copiedRows: json_.containsKey('copiedRows')
              ? json_['copiedRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (copiedLogicalBytes != null)
          'copiedLogicalBytes': copiedLogicalBytes!,
        if (copiedRows != null) 'copiedRows': copiedRows!,
      };
}

class JobStatus {
  /// Final error result of the job.
  ///
  /// If present, indicates that the job has completed and was unsuccessful.
  ///
  /// Output only.
  ErrorProto? errorResult;

  /// The first errors encountered during the running of the job.
  ///
  /// The final message includes the number of errors that caused the process to
  /// stop. Errors here do not necessarily mean that the job has not completed
  /// or was unsuccessful.
  ///
  /// Output only.
  core.List<ErrorProto>? errors;

  /// Running state of the job.
  ///
  /// Valid states include 'PENDING', 'RUNNING', and 'DONE'.
  ///
  /// Output only.
  core.String? state;

  JobStatus({
    this.errorResult,
    this.errors,
    this.state,
  });

  JobStatus.fromJson(core.Map json_)
      : this(
          errorResult: json_.containsKey('errorResult')
              ? ErrorProto.fromJson(
                  json_['errorResult'] as core.Map<core.String, core.dynamic>)
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ErrorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorResult != null) 'errorResult': errorResult!,
        if (errors != null) 'errors': errors!,
        if (state != null) 'state': state!,
      };
}

/// Represents privacy policy associated with "join restrictions".
///
/// Join restriction gives data providers the ability to enforce joins on the
/// 'join_allowed_columns' when data is queried from a privacy protected view.
class JoinRestrictionPolicy {
  /// The only columns that joins are allowed on.
  ///
  /// This field is must be specified for join_conditions JOIN_ANY and JOIN_ALL
  /// and it cannot be set for JOIN_BLOCKED.
  ///
  /// Optional.
  core.List<core.String>? joinAllowedColumns;

  /// Specifies if a join is required or not on queries for the view.
  ///
  /// Default is JOIN_CONDITION_UNSPECIFIED.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JOIN_CONDITION_UNSPECIFIED" : A join is neither required nor restricted
  /// on any column. Default value.
  /// - "JOIN_ANY" : A join is required on at least one of the specified
  /// columns.
  /// - "JOIN_ALL" : A join is required on all specified columns.
  /// - "JOIN_NOT_REQUIRED" : A join is not required, but if present it is only
  /// permitted on 'join_allowed_columns'
  /// - "JOIN_BLOCKED" : Joins are blocked for all queries.
  core.String? joinCondition;

  JoinRestrictionPolicy({
    this.joinAllowedColumns,
    this.joinCondition,
  });

  JoinRestrictionPolicy.fromJson(core.Map json_)
      : this(
          joinAllowedColumns: json_.containsKey('joinAllowedColumns')
              ? (json_['joinAllowedColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          joinCondition: json_.containsKey('joinCondition')
              ? json_['joinCondition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (joinAllowedColumns != null)
          'joinAllowedColumns': joinAllowedColumns!,
        if (joinCondition != null) 'joinCondition': joinCondition!,
      };
}

/// Represents a single JSON object.
typedef JsonObject = core.Map<core.String, core.Object?>;

/// Json Options for load and make external tables.
class JsonOptions {
  /// The character encoding of the data.
  ///
  /// The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and
  /// UTF-32LE. The default value is UTF-8.
  ///
  /// Optional.
  core.String? encoding;

  JsonOptions({
    this.encoding,
  });

  JsonOptions.fromJson(core.Map json_)
      : this(
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encoding != null) 'encoding': encoding!,
      };
}

/// Metadata about the Linked Dataset.
class LinkedDatasetMetadata {
  /// Specifies whether Linked Dataset is currently in a linked state or not.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LINK_STATE_UNSPECIFIED" : The default value. Default to the LINKED
  /// state.
  /// - "LINKED" : Normal Linked Dataset state. Data is queryable via the Linked
  /// Dataset.
  /// - "UNLINKED" : Data publisher or owner has unlinked this Linked Dataset.
  /// It means you can no longer query or see the data in the Linked Dataset.
  core.String? linkState;

  LinkedDatasetMetadata({
    this.linkState,
  });

  LinkedDatasetMetadata.fromJson(core.Map json_)
      : this(
          linkState: json_.containsKey('linkState')
              ? json_['linkState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linkState != null) 'linkState': linkState!,
      };
}

/// A dataset source type which refers to another BigQuery dataset.
class LinkedDatasetSource {
  /// The source dataset reference contains project numbers and not project ids.
  DatasetReference? sourceDataset;

  LinkedDatasetSource({
    this.sourceDataset,
  });

  LinkedDatasetSource.fromJson(core.Map json_)
      : this(
          sourceDataset: json_.containsKey('sourceDataset')
              ? DatasetReference.fromJson(
                  json_['sourceDataset'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceDataset != null) 'sourceDataset': sourceDataset!,
      };
}

/// Response format for a single page when listing BigQuery ML models.
class ListModelsResponse {
  /// Models in the requested dataset.
  ///
  /// Only the following fields are populated: model_reference, model_type,
  /// creation_time, last_modified_time and labels.
  core.List<Model>? models;

  /// A token to request the next page of results.
  core.String? nextPageToken;

  ListModelsResponse({
    this.models,
    this.nextPageToken,
  });

  ListModelsResponse.fromJson(core.Map json_)
      : this(
          models: json_.containsKey('models')
              ? (json_['models'] as core.List)
                  .map((value) => Model.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (models != null) 'models': models!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Describes the format of a single result page when listing routines.
class ListRoutinesResponse {
  /// A token to request the next page of results.
  core.String? nextPageToken;

  /// Routines in the requested dataset.
  ///
  /// Unless read_mask is set in the request, only the following fields are
  /// populated: etag, project_id, dataset_id, routine_id, routine_type,
  /// creation_time, last_modified_time, language, and remote_function_options.
  core.List<Routine>? routines;

  ListRoutinesResponse({
    this.nextPageToken,
    this.routines,
  });

  ListRoutinesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          routines: json_.containsKey('routines')
              ? (json_['routines'] as core.List)
                  .map((value) => Routine.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (routines != null) 'routines': routines!,
      };
}

/// Response message for the ListRowAccessPolicies method.
class ListRowAccessPoliciesResponse {
  /// A token to request the next page of results.
  core.String? nextPageToken;

  /// Row access policies on the requested table.
  core.List<RowAccessPolicy>? rowAccessPolicies;

  ListRowAccessPoliciesResponse({
    this.nextPageToken,
    this.rowAccessPolicies,
  });

  ListRowAccessPoliciesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          rowAccessPolicies: json_.containsKey('rowAccessPolicies')
              ? (json_['rowAccessPolicies'] as core.List)
                  .map((value) => RowAccessPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (rowAccessPolicies != null) 'rowAccessPolicies': rowAccessPolicies!,
      };
}

/// Statistics for a LOAD query.
class LoadQueryStatistics {
  /// The number of bad records encountered while processing a LOAD query.
  ///
  /// Note that if the job has failed because of more bad records encountered
  /// than the maximum allowed in the load job configuration, then this number
  /// can be less than the total number of bad records present in the input
  /// data.
  ///
  /// Output only.
  core.String? badRecords;

  /// This field is deprecated.
  ///
  /// The number of bytes of source data copied over the network for a `LOAD`
  /// query. `transferred_bytes` has the canonical value for physical
  /// transferred bytes, which is used for BigQuery Omni billing.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? bytesTransferred;

  /// Number of bytes of source data in a LOAD query.
  ///
  /// Output only.
  core.String? inputFileBytes;

  /// Number of source files in a LOAD query.
  ///
  /// Output only.
  core.String? inputFiles;

  /// Size of the loaded data in bytes.
  ///
  /// Note that while a LOAD query is in the running state, this value may
  /// change.
  ///
  /// Output only.
  core.String? outputBytes;

  /// Number of rows imported in a LOAD query.
  ///
  /// Note that while a LOAD query is in the running state, this value may
  /// change.
  ///
  /// Output only.
  core.String? outputRows;

  LoadQueryStatistics({
    this.badRecords,
    this.bytesTransferred,
    this.inputFileBytes,
    this.inputFiles,
    this.outputBytes,
    this.outputRows,
  });

  LoadQueryStatistics.fromJson(core.Map json_)
      : this(
          badRecords: json_.containsKey('badRecords')
              ? json_['badRecords'] as core.String
              : null,
          bytesTransferred: json_.containsKey('bytesTransferred')
              ? json_['bytesTransferred'] as core.String
              : null,
          inputFileBytes: json_.containsKey('inputFileBytes')
              ? json_['inputFileBytes'] as core.String
              : null,
          inputFiles: json_.containsKey('inputFiles')
              ? json_['inputFiles'] as core.String
              : null,
          outputBytes: json_.containsKey('outputBytes')
              ? json_['outputBytes'] as core.String
              : null,
          outputRows: json_.containsKey('outputRows')
              ? json_['outputRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (badRecords != null) 'badRecords': badRecords!,
        if (bytesTransferred != null) 'bytesTransferred': bytesTransferred!,
        if (inputFileBytes != null) 'inputFileBytes': inputFileBytes!,
        if (inputFiles != null) 'inputFiles': inputFiles!,
        if (outputBytes != null) 'outputBytes': outputBytes!,
        if (outputRows != null) 'outputRows': outputRows!,
      };
}

/// A materialized view considered for a query job.
class MaterializedView {
  /// Whether the materialized view is chosen for the query.
  ///
  /// A materialized view can be chosen to rewrite multiple parts of the same
  /// query. If a materialized view is chosen to rewrite any part of the query,
  /// then this field is true, even if the materialized view was not chosen to
  /// rewrite others parts.
  core.bool? chosen;

  /// If present, specifies a best-effort estimation of the bytes saved by using
  /// the materialized view rather than its base tables.
  core.String? estimatedBytesSaved;

  /// If present, specifies the reason why the materialized view was not chosen
  /// for the query.
  /// Possible string values are:
  /// - "REJECTED_REASON_UNSPECIFIED" : Default unspecified value.
  /// - "NO_DATA" : View has no cached data because it has not refreshed yet.
  /// - "COST" : The estimated cost of the view is more expensive than another
  /// view or the base table. Note: The estimate cost might not match the billed
  /// cost.
  /// - "BASE_TABLE_TRUNCATED" : View has no cached data because a base table is
  /// truncated.
  /// - "BASE_TABLE_DATA_CHANGE" : View is invalidated because of a data change
  /// in one or more base tables. It could be any recent change if the
  /// \[`max_staleness`\](https://cloud.google.com/bigquery/docs/materialized-views-create#max_staleness)
  /// option is not set for the view, or otherwise any change outside of the
  /// staleness window.
  /// - "BASE_TABLE_PARTITION_EXPIRATION_CHANGE" : View is invalidated because a
  /// base table's partition expiration has changed.
  /// - "BASE_TABLE_EXPIRED_PARTITION" : View is invalidated because a base
  /// table's partition has expired.
  /// - "BASE_TABLE_INCOMPATIBLE_METADATA_CHANGE" : View is invalidated because
  /// a base table has an incompatible metadata change.
  /// - "TIME_ZONE" : View is invalidated because it was refreshed with a time
  /// zone other than that of the current job.
  /// - "OUT_OF_TIME_TRAVEL_WINDOW" : View is outside the time travel window.
  /// - "BASE_TABLE_FINE_GRAINED_SECURITY_POLICY" : View is inaccessible to the
  /// user because of a fine-grained security policy on one of its base tables.
  /// - "BASE_TABLE_TOO_STALE" : One of the view's base tables is too stale. For
  /// example, the cached metadata of a biglake table needs to be updated.
  core.String? rejectedReason;

  /// The candidate materialized view.
  TableReference? tableReference;

  MaterializedView({
    this.chosen,
    this.estimatedBytesSaved,
    this.rejectedReason,
    this.tableReference,
  });

  MaterializedView.fromJson(core.Map json_)
      : this(
          chosen:
              json_.containsKey('chosen') ? json_['chosen'] as core.bool : null,
          estimatedBytesSaved: json_.containsKey('estimatedBytesSaved')
              ? json_['estimatedBytesSaved'] as core.String
              : null,
          rejectedReason: json_.containsKey('rejectedReason')
              ? json_['rejectedReason'] as core.String
              : null,
          tableReference: json_.containsKey('tableReference')
              ? TableReference.fromJson(json_['tableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chosen != null) 'chosen': chosen!,
        if (estimatedBytesSaved != null)
          'estimatedBytesSaved': estimatedBytesSaved!,
        if (rejectedReason != null) 'rejectedReason': rejectedReason!,
        if (tableReference != null) 'tableReference': tableReference!,
      };
}

/// Definition and configuration of a materialized view.
class MaterializedViewDefinition {
  /// This option declares authors intention to construct a materialized view
  /// that will not be refreshed incrementally.
  ///
  /// Optional.
  core.bool? allowNonIncrementalDefinition;

  /// Enable automatic refresh of the materialized view when the base table is
  /// updated.
  ///
  /// The default value is "true".
  ///
  /// Optional.
  core.bool? enableRefresh;

  /// The time when this materialized view was last refreshed, in milliseconds
  /// since the epoch.
  ///
  /// Output only.
  core.String? lastRefreshTime;

  /// Max staleness of data that could be returned when materizlized view is
  /// queried (formatted as Google SQL Interval type).
  ///
  /// Optional.
  core.String? maxStaleness;
  core.List<core.int> get maxStalenessAsBytes =>
      convert.base64.decode(maxStaleness!);

  set maxStalenessAsBytes(core.List<core.int> bytes_) {
    maxStaleness =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A query whose results are persisted.
  ///
  /// Required.
  core.String? query;

  /// The maximum frequency at which this materialized view will be refreshed.
  ///
  /// The default value is "1800000" (30 minutes).
  ///
  /// Optional.
  core.String? refreshIntervalMs;

  MaterializedViewDefinition({
    this.allowNonIncrementalDefinition,
    this.enableRefresh,
    this.lastRefreshTime,
    this.maxStaleness,
    this.query,
    this.refreshIntervalMs,
  });

  MaterializedViewDefinition.fromJson(core.Map json_)
      : this(
          allowNonIncrementalDefinition:
              json_.containsKey('allowNonIncrementalDefinition')
                  ? json_['allowNonIncrementalDefinition'] as core.bool
                  : null,
          enableRefresh: json_.containsKey('enableRefresh')
              ? json_['enableRefresh'] as core.bool
              : null,
          lastRefreshTime: json_.containsKey('lastRefreshTime')
              ? json_['lastRefreshTime'] as core.String
              : null,
          maxStaleness: json_.containsKey('maxStaleness')
              ? json_['maxStaleness'] as core.String
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          refreshIntervalMs: json_.containsKey('refreshIntervalMs')
              ? json_['refreshIntervalMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowNonIncrementalDefinition != null)
          'allowNonIncrementalDefinition': allowNonIncrementalDefinition!,
        if (enableRefresh != null) 'enableRefresh': enableRefresh!,
        if (lastRefreshTime != null) 'lastRefreshTime': lastRefreshTime!,
        if (maxStaleness != null) 'maxStaleness': maxStaleness!,
        if (query != null) 'query': query!,
        if (refreshIntervalMs != null) 'refreshIntervalMs': refreshIntervalMs!,
      };
}

/// Statistics of materialized views considered in a query job.
class MaterializedViewStatistics {
  /// Materialized views considered for the query job.
  ///
  /// Only certain materialized views are used. For a detailed list, see the
  /// child message. If many materialized views are considered, then the list
  /// might be incomplete.
  core.List<MaterializedView>? materializedView;

  MaterializedViewStatistics({
    this.materializedView,
  });

  MaterializedViewStatistics.fromJson(core.Map json_)
      : this(
          materializedView: json_.containsKey('materializedView')
              ? (json_['materializedView'] as core.List)
                  .map((value) => MaterializedView.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (materializedView != null) 'materializedView': materializedView!,
      };
}

/// Status of a materialized view.
///
/// The last refresh timestamp status is omitted here, but is present in the
/// MaterializedViewDefinition message.
class MaterializedViewStatus {
  /// Error result of the last automatic refresh.
  ///
  /// If present, indicates that the last automatic refresh was unsuccessful.
  ///
  /// Output only.
  ErrorProto? lastRefreshStatus;

  /// Refresh watermark of materialized view.
  ///
  /// The base tables' data were collected into the materialized view cache
  /// until this time.
  ///
  /// Output only.
  core.String? refreshWatermark;

  MaterializedViewStatus({
    this.lastRefreshStatus,
    this.refreshWatermark,
  });

  MaterializedViewStatus.fromJson(core.Map json_)
      : this(
          lastRefreshStatus: json_.containsKey('lastRefreshStatus')
              ? ErrorProto.fromJson(json_['lastRefreshStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          refreshWatermark: json_.containsKey('refreshWatermark')
              ? json_['refreshWatermark'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastRefreshStatus != null) 'lastRefreshStatus': lastRefreshStatus!,
        if (refreshWatermark != null) 'refreshWatermark': refreshWatermark!,
      };
}

/// Statistics for metadata caching in BigLake tables.
class MetadataCacheStatistics {
  /// Set for the Metadata caching eligible tables referenced in the query.
  core.List<TableMetadataCacheUsage>? tableMetadataCacheUsage;

  MetadataCacheStatistics({
    this.tableMetadataCacheUsage,
  });

  MetadataCacheStatistics.fromJson(core.Map json_)
      : this(
          tableMetadataCacheUsage: json_.containsKey('tableMetadataCacheUsage')
              ? (json_['tableMetadataCacheUsage'] as core.List)
                  .map((value) => TableMetadataCacheUsage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tableMetadataCacheUsage != null)
          'tableMetadataCacheUsage': tableMetadataCacheUsage!,
      };
}

/// Job statistics specific to a BigQuery ML training job.
class MlStatistics {
  /// Trials of a \[hyperparameter tuning
  /// job\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview)
  /// sorted by trial_id.
  ///
  /// Output only.
  core.List<HparamTuningTrial>? hparamTrials;

  /// Results for all completed iterations.
  ///
  /// Empty for \[hyperparameter tuning
  /// jobs\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview).
  core.List<IterationResult>? iterationResults;

  /// Maximum number of iterations specified as max_iterations in the 'CREATE
  /// MODEL' query.
  ///
  /// The actual number of iterations may be less than this number due to early
  /// stop.
  ///
  /// Output only.
  core.String? maxIterations;

  /// The type of the model that is being trained.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MODEL_TYPE_UNSPECIFIED" : Default value.
  /// - "LINEAR_REGRESSION" : Linear regression model.
  /// - "LOGISTIC_REGRESSION" : Logistic regression based classification model.
  /// - "KMEANS" : K-means clustering model.
  /// - "MATRIX_FACTORIZATION" : Matrix factorization model.
  /// - "DNN_CLASSIFIER" : DNN classifier model.
  /// - "TENSORFLOW" : An imported TensorFlow model.
  /// - "DNN_REGRESSOR" : DNN regressor model.
  /// - "XGBOOST" : An imported XGBoost model.
  /// - "BOOSTED_TREE_REGRESSOR" : Boosted tree regressor model.
  /// - "BOOSTED_TREE_CLASSIFIER" : Boosted tree classifier model.
  /// - "ARIMA" : ARIMA model.
  /// - "AUTOML_REGRESSOR" : AutoML Tables regression model.
  /// - "AUTOML_CLASSIFIER" : AutoML Tables classification model.
  /// - "PCA" : Prinpical Component Analysis model.
  /// - "DNN_LINEAR_COMBINED_CLASSIFIER" : Wide-and-deep classifier model.
  /// - "DNN_LINEAR_COMBINED_REGRESSOR" : Wide-and-deep regressor model.
  /// - "AUTOENCODER" : Autoencoder model.
  /// - "ARIMA_PLUS" : New name for the ARIMA model.
  /// - "ARIMA_PLUS_XREG" : ARIMA with external regressors.
  /// - "RANDOM_FOREST_REGRESSOR" : Random forest regressor model.
  /// - "RANDOM_FOREST_CLASSIFIER" : Random forest classifier model.
  /// - "TENSORFLOW_LITE" : An imported TensorFlow Lite model.
  /// - "ONNX" : An imported ONNX model.
  core.String? modelType;

  /// Training type of the job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TRAINING_TYPE_UNSPECIFIED" : Unspecified training type.
  /// - "SINGLE_TRAINING" : Single training with fixed parameter space.
  /// - "HPARAM_TUNING" : \[Hyperparameter tuning
  /// training\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview).
  core.String? trainingType;

  MlStatistics({
    this.hparamTrials,
    this.iterationResults,
    this.maxIterations,
    this.modelType,
    this.trainingType,
  });

  MlStatistics.fromJson(core.Map json_)
      : this(
          hparamTrials: json_.containsKey('hparamTrials')
              ? (json_['hparamTrials'] as core.List)
                  .map((value) => HparamTuningTrial.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          iterationResults: json_.containsKey('iterationResults')
              ? (json_['iterationResults'] as core.List)
                  .map((value) => IterationResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxIterations: json_.containsKey('maxIterations')
              ? json_['maxIterations'] as core.String
              : null,
          modelType: json_.containsKey('modelType')
              ? json_['modelType'] as core.String
              : null,
          trainingType: json_.containsKey('trainingType')
              ? json_['trainingType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hparamTrials != null) 'hparamTrials': hparamTrials!,
        if (iterationResults != null) 'iterationResults': iterationResults!,
        if (maxIterations != null) 'maxIterations': maxIterations!,
        if (modelType != null) 'modelType': modelType!,
        if (trainingType != null) 'trainingType': trainingType!,
      };
}

class Model {
  /// The best trial_id across all training runs.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? bestTrialId;

  /// The time when this model was created, in millisecs since the epoch.
  ///
  /// Output only.
  core.String? creationTime;

  /// The default trial_id to use in TVFs when the trial_id is not passed in.
  ///
  /// For single-objective \[hyperparameter
  /// tuning\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview)
  /// models, this is the best trial ID. For multi-objective \[hyperparameter
  /// tuning\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview)
  /// models, this is the smallest trial ID among all Pareto optimal trials.
  ///
  /// Output only.
  core.String? defaultTrialId;

  /// A user-friendly description of this model.
  ///
  /// Optional.
  core.String? description;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  ///
  /// This shows the encryption configuration of the model data while stored in
  /// BigQuery storage. This field can be used with PatchModel to update
  /// encryption key for an already encrypted model.
  EncryptionConfiguration? encryptionConfiguration;

  /// A hash of this resource.
  ///
  /// Output only.
  core.String? etag;

  /// The time when this model expires, in milliseconds since the epoch.
  ///
  /// If not present, the model will persist indefinitely. Expired models will
  /// be deleted and their storage reclaimed. The defaultTableExpirationMs
  /// property of the encapsulating dataset can be used to set a default
  /// expirationTime on newly created models.
  ///
  /// Optional.
  core.String? expirationTime;

  /// Input feature columns for the model inference.
  ///
  /// If the model is trained with TRANSFORM clause, these are the input of the
  /// TRANSFORM clause.
  ///
  /// Output only.
  core.List<StandardSqlField>? featureColumns;

  /// A descriptive name for this model.
  ///
  /// Optional.
  core.String? friendlyName;

  /// All hyperparameter search spaces in this model.
  ///
  /// Output only.
  HparamSearchSpaces? hparamSearchSpaces;

  /// Trials of a \[hyperparameter
  /// tuning\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview)
  /// model sorted by trial_id.
  ///
  /// Output only.
  core.List<HparamTuningTrial>? hparamTrials;

  /// Label columns that were used to train this model.
  ///
  /// The output of the model will have a "predicted_" prefix to these columns.
  ///
  /// Output only.
  core.List<StandardSqlField>? labelColumns;

  /// The labels associated with this model.
  ///
  /// You can use these to organize and group your models. Label keys and values
  /// can be no longer than 63 characters, can only contain lowercase letters,
  /// numeric characters, underscores and dashes. International characters are
  /// allowed. Label values are optional. Label keys must start with a letter
  /// and each label in the list must have a different key.
  core.Map<core.String, core.String>? labels;

  /// The time when this model was last modified, in millisecs since the epoch.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// The geographic location where the model resides.
  ///
  /// This value is inherited from the dataset.
  ///
  /// Output only.
  core.String? location;

  /// Unique identifier for this model.
  ///
  /// Required.
  ModelReference? modelReference;

  /// Type of the model resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MODEL_TYPE_UNSPECIFIED" : Default value.
  /// - "LINEAR_REGRESSION" : Linear regression model.
  /// - "LOGISTIC_REGRESSION" : Logistic regression based classification model.
  /// - "KMEANS" : K-means clustering model.
  /// - "MATRIX_FACTORIZATION" : Matrix factorization model.
  /// - "DNN_CLASSIFIER" : DNN classifier model.
  /// - "TENSORFLOW" : An imported TensorFlow model.
  /// - "DNN_REGRESSOR" : DNN regressor model.
  /// - "XGBOOST" : An imported XGBoost model.
  /// - "BOOSTED_TREE_REGRESSOR" : Boosted tree regressor model.
  /// - "BOOSTED_TREE_CLASSIFIER" : Boosted tree classifier model.
  /// - "ARIMA" : ARIMA model.
  /// - "AUTOML_REGRESSOR" : AutoML Tables regression model.
  /// - "AUTOML_CLASSIFIER" : AutoML Tables classification model.
  /// - "PCA" : Prinpical Component Analysis model.
  /// - "DNN_LINEAR_COMBINED_CLASSIFIER" : Wide-and-deep classifier model.
  /// - "DNN_LINEAR_COMBINED_REGRESSOR" : Wide-and-deep regressor model.
  /// - "AUTOENCODER" : Autoencoder model.
  /// - "ARIMA_PLUS" : New name for the ARIMA model.
  /// - "ARIMA_PLUS_XREG" : ARIMA with external regressors.
  /// - "RANDOM_FOREST_REGRESSOR" : Random forest regressor model.
  /// - "RANDOM_FOREST_CLASSIFIER" : Random forest classifier model.
  /// - "TENSORFLOW_LITE" : An imported TensorFlow Lite model.
  /// - "ONNX" : An imported ONNX model.
  core.String? modelType;

  /// For single-objective \[hyperparameter
  /// tuning\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview)
  /// models, it only contains the best trial.
  ///
  /// For multi-objective \[hyperparameter
  /// tuning\](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview)
  /// models, it contains all Pareto optimal trials sorted by trial_id.
  ///
  /// Output only.
  core.List<core.String>? optimalTrialIds;

  /// Remote model info
  ///
  /// Output only.
  RemoteModelInfo? remoteModelInfo;

  /// Information for all training runs in increasing order of start_time.
  core.List<TrainingRun>? trainingRuns;

  /// This field will be populated if a TRANSFORM clause was used to train a
  /// model.
  ///
  /// TRANSFORM clause (if used) takes feature_columns as input and outputs
  /// transform_columns. transform_columns then are used to train the model.
  ///
  /// Output only.
  core.List<TransformColumn>? transformColumns;

  Model({
    this.bestTrialId,
    this.creationTime,
    this.defaultTrialId,
    this.description,
    this.encryptionConfiguration,
    this.etag,
    this.expirationTime,
    this.featureColumns,
    this.friendlyName,
    this.hparamSearchSpaces,
    this.hparamTrials,
    this.labelColumns,
    this.labels,
    this.lastModifiedTime,
    this.location,
    this.modelReference,
    this.modelType,
    this.optimalTrialIds,
    this.remoteModelInfo,
    this.trainingRuns,
    this.transformColumns,
  });

  Model.fromJson(core.Map json_)
      : this(
          bestTrialId: json_.containsKey('bestTrialId')
              ? json_['bestTrialId'] as core.String
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          defaultTrialId: json_.containsKey('defaultTrialId')
              ? json_['defaultTrialId'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          encryptionConfiguration: json_.containsKey('encryptionConfiguration')
              ? EncryptionConfiguration.fromJson(
                  json_['encryptionConfiguration']
                      as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expirationTime: json_.containsKey('expirationTime')
              ? json_['expirationTime'] as core.String
              : null,
          featureColumns: json_.containsKey('featureColumns')
              ? (json_['featureColumns'] as core.List)
                  .map((value) => StandardSqlField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          friendlyName: json_.containsKey('friendlyName')
              ? json_['friendlyName'] as core.String
              : null,
          hparamSearchSpaces: json_.containsKey('hparamSearchSpaces')
              ? HparamSearchSpaces.fromJson(json_['hparamSearchSpaces']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hparamTrials: json_.containsKey('hparamTrials')
              ? (json_['hparamTrials'] as core.List)
                  .map((value) => HparamTuningTrial.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          labelColumns: json_.containsKey('labelColumns')
              ? (json_['labelColumns'] as core.List)
                  .map((value) => StandardSqlField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          modelReference: json_.containsKey('modelReference')
              ? ModelReference.fromJson(json_['modelReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          modelType: json_.containsKey('modelType')
              ? json_['modelType'] as core.String
              : null,
          optimalTrialIds: json_.containsKey('optimalTrialIds')
              ? (json_['optimalTrialIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          remoteModelInfo: json_.containsKey('remoteModelInfo')
              ? RemoteModelInfo.fromJson(json_['remoteModelInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          trainingRuns: json_.containsKey('trainingRuns')
              ? (json_['trainingRuns'] as core.List)
                  .map((value) => TrainingRun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transformColumns: json_.containsKey('transformColumns')
              ? (json_['transformColumns'] as core.List)
                  .map((value) => TransformColumn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bestTrialId != null) 'bestTrialId': bestTrialId!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (defaultTrialId != null) 'defaultTrialId': defaultTrialId!,
        if (description != null) 'description': description!,
        if (encryptionConfiguration != null)
          'encryptionConfiguration': encryptionConfiguration!,
        if (etag != null) 'etag': etag!,
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (featureColumns != null) 'featureColumns': featureColumns!,
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (hparamSearchSpaces != null)
          'hparamSearchSpaces': hparamSearchSpaces!,
        if (hparamTrials != null) 'hparamTrials': hparamTrials!,
        if (labelColumns != null) 'labelColumns': labelColumns!,
        if (labels != null) 'labels': labels!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (location != null) 'location': location!,
        if (modelReference != null) 'modelReference': modelReference!,
        if (modelType != null) 'modelType': modelType!,
        if (optimalTrialIds != null) 'optimalTrialIds': optimalTrialIds!,
        if (remoteModelInfo != null) 'remoteModelInfo': remoteModelInfo!,
        if (trainingRuns != null) 'trainingRuns': trainingRuns!,
        if (transformColumns != null) 'transformColumns': transformColumns!,
      };
}

/// Deprecated.
class ModelDefinitionModelOptions {
  core.List<core.String>? labels;
  core.String? lossType;
  core.String? modelType;

  ModelDefinitionModelOptions({
    this.labels,
    this.lossType,
    this.modelType,
  });

  ModelDefinitionModelOptions.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lossType: json_.containsKey('lossType')
              ? json_['lossType'] as core.String
              : null,
          modelType: json_.containsKey('modelType')
              ? json_['modelType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (lossType != null) 'lossType': lossType!,
        if (modelType != null) 'modelType': modelType!,
      };
}

class ModelDefinition {
  /// Deprecated.
  ModelDefinitionModelOptions? modelOptions;

  /// Deprecated.
  core.List<BqmlTrainingRun>? trainingRuns;

  ModelDefinition({
    this.modelOptions,
    this.trainingRuns,
  });

  ModelDefinition.fromJson(core.Map json_)
      : this(
          modelOptions: json_.containsKey('modelOptions')
              ? ModelDefinitionModelOptions.fromJson(
                  json_['modelOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          trainingRuns: json_.containsKey('trainingRuns')
              ? (json_['trainingRuns'] as core.List)
                  .map((value) => BqmlTrainingRun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (modelOptions != null) 'modelOptions': modelOptions!,
        if (trainingRuns != null) 'trainingRuns': trainingRuns!,
      };
}

/// Options related to model extraction.
class ModelExtractOptions {
  /// The 1-based ID of the trial to be exported from a hyperparameter tuning
  /// model.
  ///
  /// If not specified, the trial with id =
  /// \[Model\](/bigquery/docs/reference/rest/v2/models#resource:-model).defaultTrialId
  /// is exported. This field is ignored for models not trained with
  /// hyperparameter tuning.
  core.String? trialId;

  ModelExtractOptions({
    this.trialId,
  });

  ModelExtractOptions.fromJson(core.Map json_)
      : this(
          trialId: json_.containsKey('trialId')
              ? json_['trialId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trialId != null) 'trialId': trialId!,
      };
}

/// Id path of a model.
class ModelReference {
  /// The ID of the dataset containing this model.
  ///
  /// Required.
  core.String? datasetId;

  /// The ID of the model.
  ///
  /// The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores
  /// (_). The maximum length is 1,024 characters.
  ///
  /// Required.
  core.String? modelId;

  /// The ID of the project containing this model.
  ///
  /// Required.
  core.String? projectId;

  ModelReference({
    this.datasetId,
    this.modelId,
    this.projectId,
  });

  ModelReference.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          modelId: json_.containsKey('modelId')
              ? json_['modelId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (modelId != null) 'modelId': modelId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Evaluation metrics for multi-class classification/classifier models.
class MultiClassClassificationMetrics {
  /// Aggregate classification metrics.
  AggregateClassificationMetrics? aggregateClassificationMetrics;

  /// Confusion matrix at different thresholds.
  core.List<ConfusionMatrix>? confusionMatrixList;

  MultiClassClassificationMetrics({
    this.aggregateClassificationMetrics,
    this.confusionMatrixList,
  });

  MultiClassClassificationMetrics.fromJson(core.Map json_)
      : this(
          aggregateClassificationMetrics:
              json_.containsKey('aggregateClassificationMetrics')
                  ? AggregateClassificationMetrics.fromJson(
                      json_['aggregateClassificationMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          confusionMatrixList: json_.containsKey('confusionMatrixList')
              ? (json_['confusionMatrixList'] as core.List)
                  .map((value) => ConfusionMatrix.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregateClassificationMetrics != null)
          'aggregateClassificationMetrics': aggregateClassificationMetrics!,
        if (confusionMatrixList != null)
          'confusionMatrixList': confusionMatrixList!,
      };
}

/// Parquet Options for load and make external tables.
class ParquetOptions {
  /// Indicates whether to use schema inference specifically for Parquet LIST
  /// logical type.
  ///
  /// Optional.
  core.bool? enableListInference;

  /// Indicates whether to infer Parquet ENUM logical type as STRING instead of
  /// BYTES by default.
  ///
  /// Optional.
  core.bool? enumAsString;

  ParquetOptions({
    this.enableListInference,
    this.enumAsString,
  });

  ParquetOptions.fromJson(core.Map json_)
      : this(
          enableListInference: json_.containsKey('enableListInference')
              ? json_['enableListInference'] as core.bool
              : null,
          enumAsString: json_.containsKey('enumAsString')
              ? json_['enumAsString'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableListInference != null)
          'enableListInference': enableListInference!,
        if (enumAsString != null) 'enumAsString': enumAsString!,
      };
}

/// Partition skew detailed information.
class PartitionSkew {
  /// Source stages which produce skewed data.
  ///
  /// Output only.
  core.List<SkewSource>? skewSources;

  PartitionSkew({
    this.skewSources,
  });

  PartitionSkew.fromJson(core.Map json_)
      : this(
          skewSources: json_.containsKey('skewSources')
              ? (json_['skewSources'] as core.List)
                  .map((value) => SkewSource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (skewSources != null) 'skewSources': skewSources!,
      };
}

/// The partitioning column information.
class PartitionedColumn {
  /// The name of the partition column.
  ///
  /// Output only.
  core.String? field;

  PartitionedColumn({
    this.field,
  });

  PartitionedColumn.fromJson(core.Map json_)
      : this(
          field:
              json_.containsKey('field') ? json_['field'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
      };
}

/// The partitioning information, which includes managed table and external
/// table partition information.
class PartitioningDefinition {
  /// Details about each partitioning column.
  ///
  /// BigQuery native tables only support 1 partitioning column. Other table
  /// types may support 0, 1 or more partitioning columns.
  ///
  /// Output only.
  core.List<PartitionedColumn>? partitionedColumn;

  PartitioningDefinition({
    this.partitionedColumn,
  });

  PartitioningDefinition.fromJson(core.Map json_)
      : this(
          partitionedColumn: json_.containsKey('partitionedColumn')
              ? (json_['partitionedColumn'] as core.List)
                  .map((value) => PartitionedColumn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partitionedColumn != null) 'partitionedColumn': partitionedColumn!,
      };
}

/// Performance insights for the job.
class PerformanceInsights {
  /// Average execution ms of previous runs.
  ///
  /// Indicates the job ran slow compared to previous executions. To find
  /// previous executions, use INFORMATION_SCHEMA tables and filter jobs with
  /// same query hash.
  ///
  /// Output only.
  core.String? avgPreviousExecutionMs;

  /// Query stage performance insights compared to previous runs, for diagnosing
  /// performance regression.
  ///
  /// Output only.
  core.List<StagePerformanceChangeInsight>? stagePerformanceChangeInsights;

  /// Standalone query stage performance insights, for exploring potential
  /// improvements.
  ///
  /// Output only.
  core.List<StagePerformanceStandaloneInsight>?
      stagePerformanceStandaloneInsights;

  PerformanceInsights({
    this.avgPreviousExecutionMs,
    this.stagePerformanceChangeInsights,
    this.stagePerformanceStandaloneInsights,
  });

  PerformanceInsights.fromJson(core.Map json_)
      : this(
          avgPreviousExecutionMs: json_.containsKey('avgPreviousExecutionMs')
              ? json_['avgPreviousExecutionMs'] as core.String
              : null,
          stagePerformanceChangeInsights:
              json_.containsKey('stagePerformanceChangeInsights')
                  ? (json_['stagePerformanceChangeInsights'] as core.List)
                      .map((value) => StagePerformanceChangeInsight.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          stagePerformanceStandaloneInsights: json_
                  .containsKey('stagePerformanceStandaloneInsights')
              ? (json_['stagePerformanceStandaloneInsights'] as core.List)
                  .map((value) => StagePerformanceStandaloneInsight.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (avgPreviousExecutionMs != null)
          'avgPreviousExecutionMs': avgPreviousExecutionMs!,
        if (stagePerformanceChangeInsights != null)
          'stagePerformanceChangeInsights': stagePerformanceChangeInsights!,
        if (stagePerformanceStandaloneInsights != null)
          'stagePerformanceStandaloneInsights':
              stagePerformanceStandaloneInsights!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Principal component infos, used only for eigen decomposition based models,
/// e.g., PCA.
///
/// Ordered by explained_variance in the descending order.
class PrincipalComponentInfo {
  /// The explained_variance is pre-ordered in the descending order to compute
  /// the cumulative explained variance ratio.
  core.double? cumulativeExplainedVarianceRatio;

  /// Explained variance by this principal component, which is simply the
  /// eigenvalue.
  core.double? explainedVariance;

  /// Explained_variance over the total explained variance.
  core.double? explainedVarianceRatio;

  /// Id of the principal component.
  core.String? principalComponentId;

  PrincipalComponentInfo({
    this.cumulativeExplainedVarianceRatio,
    this.explainedVariance,
    this.explainedVarianceRatio,
    this.principalComponentId,
  });

  PrincipalComponentInfo.fromJson(core.Map json_)
      : this(
          cumulativeExplainedVarianceRatio:
              json_.containsKey('cumulativeExplainedVarianceRatio')
                  ? (json_['cumulativeExplainedVarianceRatio'] as core.num)
                      .toDouble()
                  : null,
          explainedVariance: json_.containsKey('explainedVariance')
              ? (json_['explainedVariance'] as core.num).toDouble()
              : null,
          explainedVarianceRatio: json_.containsKey('explainedVarianceRatio')
              ? (json_['explainedVarianceRatio'] as core.num).toDouble()
              : null,
          principalComponentId: json_.containsKey('principalComponentId')
              ? json_['principalComponentId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cumulativeExplainedVarianceRatio != null)
          'cumulativeExplainedVarianceRatio': cumulativeExplainedVarianceRatio!,
        if (explainedVariance != null) 'explainedVariance': explainedVariance!,
        if (explainedVarianceRatio != null)
          'explainedVarianceRatio': explainedVarianceRatio!,
        if (principalComponentId != null)
          'principalComponentId': principalComponentId!,
      };
}

/// Represents privacy policy that contains the privacy requirements specified
/// by the data owner.
///
/// Currently, this is only supported on views.
class PrivacyPolicy {
  /// Policy used for aggregation thresholds.
  ///
  /// Optional.
  AggregationThresholdPolicy? aggregationThresholdPolicy;

  /// Policy used for differential privacy.
  ///
  /// Optional.
  DifferentialPrivacyPolicy? differentialPrivacyPolicy;

  /// Join restriction policy is outside of the one of policies, since this
  /// policy can be set along with other policies.
  ///
  /// This policy gives data providers the ability to enforce joins on the
  /// 'join_allowed_columns' when data is queried from a privacy protected view.
  ///
  /// Optional.
  JoinRestrictionPolicy? joinRestrictionPolicy;

  PrivacyPolicy({
    this.aggregationThresholdPolicy,
    this.differentialPrivacyPolicy,
    this.joinRestrictionPolicy,
  });

  PrivacyPolicy.fromJson(core.Map json_)
      : this(
          aggregationThresholdPolicy:
              json_.containsKey('aggregationThresholdPolicy')
                  ? AggregationThresholdPolicy.fromJson(
                      json_['aggregationThresholdPolicy']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          differentialPrivacyPolicy:
              json_.containsKey('differentialPrivacyPolicy')
                  ? DifferentialPrivacyPolicy.fromJson(
                      json_['differentialPrivacyPolicy']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          joinRestrictionPolicy: json_.containsKey('joinRestrictionPolicy')
              ? JoinRestrictionPolicy.fromJson(json_['joinRestrictionPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregationThresholdPolicy != null)
          'aggregationThresholdPolicy': aggregationThresholdPolicy!,
        if (differentialPrivacyPolicy != null)
          'differentialPrivacyPolicy': differentialPrivacyPolicy!,
        if (joinRestrictionPolicy != null)
          'joinRestrictionPolicy': joinRestrictionPolicy!,
      };
}

/// Information about a single project.
class ProjectListProjects {
  /// A descriptive name for this project.
  ///
  /// A wrapper is used here because friendlyName can be set to the empty
  /// string.
  core.String? friendlyName;

  /// An opaque ID of this project.
  core.String? id;

  /// The resource type.
  core.String? kind;

  /// The numeric ID of this project.
  core.String? numericId;

  /// A unique reference to this project.
  ProjectReference? projectReference;

  ProjectListProjects({
    this.friendlyName,
    this.id,
    this.kind,
    this.numericId,
    this.projectReference,
  });

  ProjectListProjects.fromJson(core.Map json_)
      : this(
          friendlyName: json_.containsKey('friendlyName')
              ? json_['friendlyName'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          numericId: json_.containsKey('numericId')
              ? json_['numericId'] as core.String
              : null,
          projectReference: json_.containsKey('projectReference')
              ? ProjectReference.fromJson(json_['projectReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (numericId != null) 'numericId': numericId!,
        if (projectReference != null) 'projectReference': projectReference!,
      };
}

/// Response object of ListProjects
class ProjectList {
  /// A hash of the page of results.
  core.String? etag;

  /// The resource type of the response.
  core.String? kind;

  /// Use this token to request the next page of results.
  core.String? nextPageToken;

  /// Projects to which the user has at least READ access.
  core.List<ProjectListProjects>? projects;

  /// The total number of projects in the page.
  ///
  /// A wrapper is used here because the field should still be in the response
  /// when the value is 0.
  core.int? totalItems;

  ProjectList({
    this.etag,
    this.kind,
    this.nextPageToken,
    this.projects,
    this.totalItems,
  });

  ProjectList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          projects: json_.containsKey('projects')
              ? (json_['projects'] as core.List)
                  .map((value) => ProjectListProjects.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalItems: json_.containsKey('totalItems')
              ? json_['totalItems'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (projects != null) 'projects': projects!,
        if (totalItems != null) 'totalItems': totalItems!,
      };
}

/// A unique reference to a project.
class ProjectReference {
  /// ID of the project.
  ///
  /// Can be either the numeric ID or the assigned ID of the project.
  ///
  /// Required.
  core.String? projectId;

  ProjectReference({
    this.projectId,
  });

  ProjectReference.fromJson(core.Map json_)
      : this(
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Query optimization information for a QUERY job.
class QueryInfo {
  /// Information about query optimizations.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? optimizationDetails;

  QueryInfo({
    this.optimizationDetails,
  });

  QueryInfo.fromJson(core.Map json_)
      : this(
          optimizationDetails: json_.containsKey('optimizationDetails')
              ? json_['optimizationDetails']
                  as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (optimizationDetails != null)
          'optimizationDetails': optimizationDetails!,
      };
}

/// A parameter given to a query.
class QueryParameter {
  /// If unset, this is a positional parameter.
  ///
  /// Otherwise, should be unique within a query.
  ///
  /// Optional.
  core.String? name;

  /// The type of this parameter.
  ///
  /// Required.
  QueryParameterType? parameterType;

  /// The value of this parameter.
  ///
  /// Required.
  QueryParameterValue? parameterValue;

  QueryParameter({
    this.name,
    this.parameterType,
    this.parameterValue,
  });

  QueryParameter.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parameterType: json_.containsKey('parameterType')
              ? QueryParameterType.fromJson(
                  json_['parameterType'] as core.Map<core.String, core.dynamic>)
              : null,
          parameterValue: json_.containsKey('parameterValue')
              ? QueryParameterValue.fromJson(json_['parameterValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (parameterType != null) 'parameterType': parameterType!,
        if (parameterValue != null) 'parameterValue': parameterValue!,
      };
}

/// The type of a struct parameter.
class QueryParameterTypeStructTypes {
  /// Human-oriented description of the field.
  ///
  /// Optional.
  core.String? description;

  /// The name of this field.
  ///
  /// Optional.
  core.String? name;

  /// The type of this field.
  ///
  /// Required.
  QueryParameterType? type;

  QueryParameterTypeStructTypes({
    this.description,
    this.name,
    this.type,
  });

  QueryParameterTypeStructTypes.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type')
              ? QueryParameterType.fromJson(
                  json_['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// The type of a query parameter.
class QueryParameterType {
  /// The type of the array's elements, if this is an array.
  ///
  /// Optional.
  QueryParameterType? arrayType;

  /// The element type of the range, if this is a range.
  ///
  /// Optional.
  QueryParameterType? rangeElementType;

  /// The types of the fields of this struct, in order, if this is a struct.
  ///
  /// Optional.
  core.List<QueryParameterTypeStructTypes>? structTypes;

  /// The top level type of this field.
  ///
  /// Required.
  core.String? type;

  QueryParameterType({
    this.arrayType,
    this.rangeElementType,
    this.structTypes,
    this.type,
  });

  QueryParameterType.fromJson(core.Map json_)
      : this(
          arrayType: json_.containsKey('arrayType')
              ? QueryParameterType.fromJson(
                  json_['arrayType'] as core.Map<core.String, core.dynamic>)
              : null,
          rangeElementType: json_.containsKey('rangeElementType')
              ? QueryParameterType.fromJson(json_['rangeElementType']
                  as core.Map<core.String, core.dynamic>)
              : null,
          structTypes: json_.containsKey('structTypes')
              ? (json_['structTypes'] as core.List)
                  .map((value) => QueryParameterTypeStructTypes.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayType != null) 'arrayType': arrayType!,
        if (rangeElementType != null) 'rangeElementType': rangeElementType!,
        if (structTypes != null) 'structTypes': structTypes!,
        if (type != null) 'type': type!,
      };
}

/// The value of a query parameter.
class QueryParameterValue {
  /// The array values, if this is an array type.
  ///
  /// Optional.
  core.List<QueryParameterValue>? arrayValues;

  /// The range value, if this is a range type.
  ///
  /// Optional.
  RangeValue? rangeValue;

  /// The struct field values.
  core.Map<core.String, QueryParameterValue>? structValues;

  /// The value of this value, if a simple scalar type.
  ///
  /// Optional.
  core.String? value;

  QueryParameterValue({
    this.arrayValues,
    this.rangeValue,
    this.structValues,
    this.value,
  });

  QueryParameterValue.fromJson(core.Map json_)
      : this(
          arrayValues: json_.containsKey('arrayValues')
              ? (json_['arrayValues'] as core.List)
                  .map((value) => QueryParameterValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rangeValue: json_.containsKey('rangeValue')
              ? RangeValue.fromJson(
                  json_['rangeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          structValues: json_.containsKey('structValues')
              ? (json_['structValues'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    QueryParameterValue.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayValues != null) 'arrayValues': arrayValues!,
        if (rangeValue != null) 'rangeValue': rangeValue!,
        if (structValues != null) 'structValues': structValues!,
        if (value != null) 'value': value!,
      };
}

/// Describes the format of the jobs.query request.
class QueryRequest {
  /// Connection properties which can modify the query behavior.
  ///
  /// Optional.
  core.List<ConnectionProperty>? connectionProperties;

  /// Specifies whether the query should be executed as a continuous query.
  ///
  /// The default value is false.
  ///
  /// Optional.
  core.bool? continuous;

  /// If true, creates a new session using a randomly generated session_id.
  ///
  /// If false, runs query with an existing session_id passed in
  /// ConnectionProperty, otherwise runs query in non-session mode. The session
  /// location will be set to QueryRequest.location if it is present, otherwise
  /// it's set to the default location based on existing routing logic.
  ///
  /// Optional.
  core.bool? createSession;

  /// Specifies the default datasetId and projectId to assume for any
  /// unqualified table names in the query.
  ///
  /// If not set, all table names in the query string must be qualified in the
  /// format 'datasetId.tableId'.
  ///
  /// Optional.
  DatasetReference? defaultDataset;

  /// If set to true, BigQuery doesn't run the job.
  ///
  /// Instead, if the query is valid, BigQuery returns statistics about the job
  /// such as how many bytes would be processed. If the query is invalid, an
  /// error returns. The default value is false.
  ///
  /// Optional.
  core.bool? dryRun;

  /// Output format adjustments.
  ///
  /// Optional.
  DataFormatOptions? formatOptions;

  /// If not set, jobs are always required.
  ///
  /// If set, the query request will follow the behavior described
  /// JobCreationMode. This feature is not yet available. Jobs will always be
  /// created.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JOB_CREATION_MODE_UNSPECIFIED" : If unspecified JOB_CREATION_REQUIRED
  /// is the default.
  /// - "JOB_CREATION_REQUIRED" : Default. Job creation is always required.
  /// - "JOB_CREATION_OPTIONAL" : Job creation is optional. Returning immediate
  /// results is prioritized. BigQuery will automatically determine if a Job
  /// needs to be created. The conditions under which BigQuery can decide to not
  /// create a Job are subject to change. If Job creation is required,
  /// JOB_CREATION_REQUIRED mode should be used, which is the default.
  core.String? jobCreationMode;

  /// The resource type of the request.
  core.String? kind;

  /// The labels associated with this query.
  ///
  /// Labels can be used to organize and group query jobs. Label keys and values
  /// can be no longer than 63 characters, can only contain lowercase letters,
  /// numeric characters, underscores and dashes. International characters are
  /// allowed. Label keys must start with a letter and each label in the list
  /// must have a different key.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The geographic location where the job should run.
  ///
  /// See details at
  /// https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  core.String? location;

  /// The maximum number of rows of data to return per page of results.
  ///
  /// Setting this flag to a small value such as 1000 and then paging through
  /// results might improve reliability when the query result set is large. In
  /// addition to this limit, responses are also limited to 10 MB. By default,
  /// there is no maximum row count, and only the byte limit applies.
  ///
  /// Optional.
  core.int? maxResults;

  /// Limits the bytes billed for this query.
  ///
  /// Queries with bytes billed above this limit will fail (without incurring a
  /// charge). If unspecified, the project default is used.
  ///
  /// Optional.
  core.String? maximumBytesBilled;

  /// GoogleSQL only.
  ///
  /// Set to POSITIONAL to use positional (?) query parameters or to NAMED to
  /// use named (@myparam) query parameters in this query.
  core.String? parameterMode;

  /// This property is deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? preserveNulls;

  /// A query string to execute, using Google Standard SQL or legacy SQL syntax.
  ///
  /// Example: "SELECT COUNT(f1) FROM myProjectId.myDatasetId.myTableId".
  ///
  /// Required.
  core.String? query;

  /// Query parameters for GoogleSQL queries.
  core.List<QueryParameter>? queryParameters;

  /// A unique user provided identifier to ensure idempotent behavior for
  /// queries.
  ///
  /// Note that this is different from the job_id. It has the following
  /// properties: 1. It is case-sensitive, limited to up to 36 ASCII characters.
  /// A UUID is recommended. 2. Read only queries can ignore this token since
  /// they are nullipotent by definition. 3. For the purposes of idempotency
  /// ensured by the request_id, a request is considered duplicate of another
  /// only if they have the same request_id and are actually duplicates. When
  /// determining whether a request is a duplicate of another request, all
  /// parameters in the request that may affect the result are considered. For
  /// example, query, connection_properties, query_parameters, use_legacy_sql
  /// are parameters that affect the result and are considered when determining
  /// whether a request is a duplicate, but properties like timeout_ms don't
  /// affect the result and are thus not considered. Dry run query requests are
  /// never considered duplicate of another request. 4. When a duplicate
  /// mutating query request is detected, it returns: a. the results of the
  /// mutation if it completes successfully within the timeout. b. the running
  /// operation if it is still in progress at the end of the timeout. 5. Its
  /// lifetime is limited to 15 minutes. In other words, if two requests are
  /// sent with the same request_id, but more than 15 minutes apart, idempotency
  /// is not guaranteed.
  ///
  /// Optional.
  core.String? requestId;

  /// Optional: Specifies the maximum amount of time, in milliseconds, that the
  /// client is willing to wait for the query to complete.
  ///
  /// By default, this limit is 10 seconds (10,000 milliseconds). If the query
  /// is complete, the jobComplete field in the response is true. If the query
  /// has not yet completed, jobComplete is false. You can request a longer
  /// timeout period in the timeoutMs field. However, the call is not guaranteed
  /// to wait for the specified timeout; it typically returns after around 200
  /// seconds (200,000 milliseconds), even if the query is not complete. If
  /// jobComplete is false, you can continue to wait for the query to complete
  /// by calling the getQueryResults method until the jobComplete field in the
  /// getQueryResults response is true.
  ///
  /// Optional.
  core.int? timeoutMs;

  /// Specifies whether to use BigQuery's legacy SQL dialect for this query.
  ///
  /// The default value is true. If set to false, the query will use BigQuery's
  /// GoogleSQL: https://cloud.google.com/bigquery/sql-reference/ When
  /// useLegacySql is set to false, the value of flattenResults is ignored;
  /// query will be run as if flattenResults is false.
  core.bool? useLegacySql;

  /// Whether to look for the result in the query cache.
  ///
  /// The query cache is a best-effort cache that will be flushed whenever
  /// tables in the query are modified. The default value is true.
  ///
  /// Optional.
  core.bool? useQueryCache;

  QueryRequest({
    this.connectionProperties,
    this.continuous,
    this.createSession,
    this.defaultDataset,
    this.dryRun,
    this.formatOptions,
    this.jobCreationMode,
    this.kind,
    this.labels,
    this.location,
    this.maxResults,
    this.maximumBytesBilled,
    this.parameterMode,
    this.preserveNulls,
    this.query,
    this.queryParameters,
    this.requestId,
    this.timeoutMs,
    this.useLegacySql,
    this.useQueryCache,
  });

  QueryRequest.fromJson(core.Map json_)
      : this(
          connectionProperties: json_.containsKey('connectionProperties')
              ? (json_['connectionProperties'] as core.List)
                  .map((value) => ConnectionProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          continuous: json_.containsKey('continuous')
              ? json_['continuous'] as core.bool
              : null,
          createSession: json_.containsKey('createSession')
              ? json_['createSession'] as core.bool
              : null,
          defaultDataset: json_.containsKey('defaultDataset')
              ? DatasetReference.fromJson(json_['defaultDataset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dryRun:
              json_.containsKey('dryRun') ? json_['dryRun'] as core.bool : null,
          formatOptions: json_.containsKey('formatOptions')
              ? DataFormatOptions.fromJson(
                  json_['formatOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          jobCreationMode: json_.containsKey('jobCreationMode')
              ? json_['jobCreationMode'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          maxResults: json_.containsKey('maxResults')
              ? json_['maxResults'] as core.int
              : null,
          maximumBytesBilled: json_.containsKey('maximumBytesBilled')
              ? json_['maximumBytesBilled'] as core.String
              : null,
          parameterMode: json_.containsKey('parameterMode')
              ? json_['parameterMode'] as core.String
              : null,
          preserveNulls: json_.containsKey('preserveNulls')
              ? json_['preserveNulls'] as core.bool
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          queryParameters: json_.containsKey('queryParameters')
              ? (json_['queryParameters'] as core.List)
                  .map((value) => QueryParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          timeoutMs: json_.containsKey('timeoutMs')
              ? json_['timeoutMs'] as core.int
              : null,
          useLegacySql: json_.containsKey('useLegacySql')
              ? json_['useLegacySql'] as core.bool
              : null,
          useQueryCache: json_.containsKey('useQueryCache')
              ? json_['useQueryCache'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionProperties != null)
          'connectionProperties': connectionProperties!,
        if (continuous != null) 'continuous': continuous!,
        if (createSession != null) 'createSession': createSession!,
        if (defaultDataset != null) 'defaultDataset': defaultDataset!,
        if (dryRun != null) 'dryRun': dryRun!,
        if (formatOptions != null) 'formatOptions': formatOptions!,
        if (jobCreationMode != null) 'jobCreationMode': jobCreationMode!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
        if (maxResults != null) 'maxResults': maxResults!,
        if (maximumBytesBilled != null)
          'maximumBytesBilled': maximumBytesBilled!,
        if (parameterMode != null) 'parameterMode': parameterMode!,
        if (preserveNulls != null) 'preserveNulls': preserveNulls!,
        if (query != null) 'query': query!,
        if (queryParameters != null) 'queryParameters': queryParameters!,
        if (requestId != null) 'requestId': requestId!,
        if (timeoutMs != null) 'timeoutMs': timeoutMs!,
        if (useLegacySql != null) 'useLegacySql': useLegacySql!,
        if (useQueryCache != null) 'useQueryCache': useQueryCache!,
      };
}

class QueryResponse {
  /// Whether the query result was fetched from the query cache.
  core.bool? cacheHit;

  /// Detailed statistics for DML statements INSERT, UPDATE, DELETE, MERGE or
  /// TRUNCATE.
  ///
  /// Output only.
  DmlStatistics? dmlStats;

  /// The first errors or warnings encountered during the running of the job.
  ///
  /// The final message includes the number of errors that caused the process to
  /// stop. Errors here do not necessarily mean that the job has completed or
  /// was unsuccessful. For more information about error messages, see
  /// [Error messages](https://cloud.google.com/bigquery/docs/error-messages).
  ///
  /// Output only.
  core.List<ErrorProto>? errors;

  /// Whether the query has completed or not.
  ///
  /// If rows or totalRows are present, this will always be true. If this is
  /// false, totalRows will not be available.
  core.bool? jobComplete;

  /// Only relevant when a job_reference is present in the response.
  ///
  /// If job_reference is not present it will always be unset. When
  /// job_reference is present, this field should be interpreted as follows: If
  /// set, it will provide the reason of why a Job was created. If not set, it
  /// should be treated as the default: REQUESTED. This feature is not yet
  /// available. Jobs will always be created.
  ///
  /// Optional.
  JobCreationReason? jobCreationReason;

  /// Reference to the Job that was created to run the query.
  ///
  /// This field will be present even if the original request timed out, in
  /// which case GetQueryResults can be used to read the results once the query
  /// has completed. Since this API only returns the first page of results,
  /// subsequent pages can be fetched via the same mechanism (GetQueryResults).
  JobReference? jobReference;

  /// The resource type.
  core.String? kind;

  /// The number of rows affected by a DML statement.
  ///
  /// Present only for DML statements INSERT, UPDATE or DELETE.
  ///
  /// Output only.
  core.String? numDmlAffectedRows;

  /// A token used for paging results.
  ///
  /// A non-empty token indicates that additional results are available. To see
  /// additional results, query the
  /// \[`jobs.getQueryResults`\](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/getQueryResults)
  /// method. For more information, see
  /// [Paging through table data](https://cloud.google.com/bigquery/docs/paging-results).
  core.String? pageToken;

  /// Query ID for the completed query.
  ///
  /// This ID will be auto-generated. This field is not yet available and it is
  /// currently not guaranteed to be populated.
  core.String? queryId;

  /// An object with as many results as can be contained within the maximum
  /// permitted reply size.
  ///
  /// To get any additional rows, you can call GetQueryResults and specify the
  /// jobReference returned above.
  core.List<TableRow>? rows;

  /// The schema of the results.
  ///
  /// Present only when the query completes successfully.
  TableSchema? schema;

  /// Information of the session if this job is part of one.
  ///
  /// Output only.
  SessionInfo? sessionInfo;

  /// The total number of bytes processed for this query.
  ///
  /// If this query was a dry run, this is the number of bytes that would be
  /// processed if the query were run.
  core.String? totalBytesProcessed;

  /// The total number of rows in the complete query result set, which can be
  /// more than the number of rows in this single page of results.
  core.String? totalRows;

  QueryResponse({
    this.cacheHit,
    this.dmlStats,
    this.errors,
    this.jobComplete,
    this.jobCreationReason,
    this.jobReference,
    this.kind,
    this.numDmlAffectedRows,
    this.pageToken,
    this.queryId,
    this.rows,
    this.schema,
    this.sessionInfo,
    this.totalBytesProcessed,
    this.totalRows,
  });

  QueryResponse.fromJson(core.Map json_)
      : this(
          cacheHit: json_.containsKey('cacheHit')
              ? json_['cacheHit'] as core.bool
              : null,
          dmlStats: json_.containsKey('dmlStats')
              ? DmlStatistics.fromJson(
                  json_['dmlStats'] as core.Map<core.String, core.dynamic>)
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ErrorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          jobComplete: json_.containsKey('jobComplete')
              ? json_['jobComplete'] as core.bool
              : null,
          jobCreationReason: json_.containsKey('jobCreationReason')
              ? JobCreationReason.fromJson(json_['jobCreationReason']
                  as core.Map<core.String, core.dynamic>)
              : null,
          jobReference: json_.containsKey('jobReference')
              ? JobReference.fromJson(
                  json_['jobReference'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          numDmlAffectedRows: json_.containsKey('numDmlAffectedRows')
              ? json_['numDmlAffectedRows'] as core.String
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          queryId: json_.containsKey('queryId')
              ? json_['queryId'] as core.String
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => TableRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          schema: json_.containsKey('schema')
              ? TableSchema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          sessionInfo: json_.containsKey('sessionInfo')
              ? SessionInfo.fromJson(
                  json_['sessionInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          totalBytesProcessed: json_.containsKey('totalBytesProcessed')
              ? json_['totalBytesProcessed'] as core.String
              : null,
          totalRows: json_.containsKey('totalRows')
              ? json_['totalRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cacheHit != null) 'cacheHit': cacheHit!,
        if (dmlStats != null) 'dmlStats': dmlStats!,
        if (errors != null) 'errors': errors!,
        if (jobComplete != null) 'jobComplete': jobComplete!,
        if (jobCreationReason != null) 'jobCreationReason': jobCreationReason!,
        if (jobReference != null) 'jobReference': jobReference!,
        if (kind != null) 'kind': kind!,
        if (numDmlAffectedRows != null)
          'numDmlAffectedRows': numDmlAffectedRows!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (queryId != null) 'queryId': queryId!,
        if (rows != null) 'rows': rows!,
        if (schema != null) 'schema': schema!,
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
        if (totalBytesProcessed != null)
          'totalBytesProcessed': totalBytesProcessed!,
        if (totalRows != null) 'totalRows': totalRows!,
      };
}

/// Summary of the state of query execution at a given time.
class QueryTimelineSample {
  /// Total number of active workers.
  ///
  /// This does not correspond directly to slot usage. This is the largest value
  /// observed since the last sample.
  core.String? activeUnits;

  /// Total parallel units of work completed by this query.
  core.String? completedUnits;

  /// Milliseconds elapsed since the start of query execution.
  core.String? elapsedMs;

  /// Units of work that can be scheduled immediately.
  ///
  /// Providing additional slots for these units of work will accelerate the
  /// query, if no other query in the reservation needs additional slots.
  core.String? estimatedRunnableUnits;

  /// Total units of work remaining for the query.
  ///
  /// This number can be revised (increased or decreased) while the query is
  /// running.
  core.String? pendingUnits;

  /// Cumulative slot-ms consumed by the query.
  core.String? totalSlotMs;

  QueryTimelineSample({
    this.activeUnits,
    this.completedUnits,
    this.elapsedMs,
    this.estimatedRunnableUnits,
    this.pendingUnits,
    this.totalSlotMs,
  });

  QueryTimelineSample.fromJson(core.Map json_)
      : this(
          activeUnits: json_.containsKey('activeUnits')
              ? json_['activeUnits'] as core.String
              : null,
          completedUnits: json_.containsKey('completedUnits')
              ? json_['completedUnits'] as core.String
              : null,
          elapsedMs: json_.containsKey('elapsedMs')
              ? json_['elapsedMs'] as core.String
              : null,
          estimatedRunnableUnits: json_.containsKey('estimatedRunnableUnits')
              ? json_['estimatedRunnableUnits'] as core.String
              : null,
          pendingUnits: json_.containsKey('pendingUnits')
              ? json_['pendingUnits'] as core.String
              : null,
          totalSlotMs: json_.containsKey('totalSlotMs')
              ? json_['totalSlotMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeUnits != null) 'activeUnits': activeUnits!,
        if (completedUnits != null) 'completedUnits': completedUnits!,
        if (elapsedMs != null) 'elapsedMs': elapsedMs!,
        if (estimatedRunnableUnits != null)
          'estimatedRunnableUnits': estimatedRunnableUnits!,
        if (pendingUnits != null) 'pendingUnits': pendingUnits!,
        if (totalSlotMs != null) 'totalSlotMs': totalSlotMs!,
      };
}

/// \[Experimental\] Defines the ranges for range partitioning.
class RangePartitioningRange {
  /// \[Experimental\] The end of range partitioning, exclusive.
  core.String? end;

  /// \[Experimental\] The width of each interval.
  core.String? interval;

  /// \[Experimental\] The start of range partitioning, inclusive.
  core.String? start;

  RangePartitioningRange({
    this.end,
    this.interval,
    this.start,
  });

  RangePartitioningRange.fromJson(core.Map json_)
      : this(
          end: json_.containsKey('end') ? json_['end'] as core.String : null,
          interval: json_.containsKey('interval')
              ? json_['interval'] as core.String
              : null,
          start:
              json_.containsKey('start') ? json_['start'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (interval != null) 'interval': interval!,
        if (start != null) 'start': start!,
      };
}

class RangePartitioning {
  /// \[Experimental\] The table is partitioned by this field.
  ///
  /// The field must be a top-level NULLABLE/REQUIRED field. The only supported
  /// type is INTEGER/INT64.
  ///
  /// Required.
  core.String? field;

  /// \[Experimental\] Defines the ranges for range partitioning.
  RangePartitioningRange? range;

  RangePartitioning({
    this.field,
    this.range,
  });

  RangePartitioning.fromJson(core.Map json_)
      : this(
          field:
              json_.containsKey('field') ? json_['field'] as core.String : null,
          range: json_.containsKey('range')
              ? RangePartitioningRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (range != null) 'range': range!,
      };
}

/// Represents the value of a range.
class RangeValue {
  /// The end value of the range.
  ///
  /// A missing value represents an unbounded end.
  ///
  /// Optional.
  QueryParameterValue? end;

  /// The start value of the range.
  ///
  /// A missing value represents an unbounded start.
  ///
  /// Optional.
  QueryParameterValue? start;

  RangeValue({
    this.end,
    this.start,
  });

  RangeValue.fromJson(core.Map json_)
      : this(
          end: json_.containsKey('end')
              ? QueryParameterValue.fromJson(
                  json_['end'] as core.Map<core.String, core.dynamic>)
              : null,
          start: json_.containsKey('start')
              ? QueryParameterValue.fromJson(
                  json_['start'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// Evaluation metrics used by weighted-ALS models specified by
/// feedback_type=implicit.
class RankingMetrics {
  /// Determines the goodness of a ranking by computing the percentile rank from
  /// the predicted confidence and dividing it by the original rank.
  core.double? averageRank;

  /// Calculates a precision per user for all the items by ranking them and then
  /// averages all the precisions across all the users.
  core.double? meanAveragePrecision;

  /// Similar to the mean squared error computed in regression and explicit
  /// recommendation models except instead of computing the rating directly, the
  /// output from evaluate is computed against a preference which is 1 or 0
  /// depending on if the rating exists or not.
  core.double? meanSquaredError;

  /// A metric to determine the goodness of a ranking calculated from the
  /// predicted confidence by comparing it to an ideal rank measured by the
  /// original ratings.
  core.double? normalizedDiscountedCumulativeGain;

  RankingMetrics({
    this.averageRank,
    this.meanAveragePrecision,
    this.meanSquaredError,
    this.normalizedDiscountedCumulativeGain,
  });

  RankingMetrics.fromJson(core.Map json_)
      : this(
          averageRank: json_.containsKey('averageRank')
              ? (json_['averageRank'] as core.num).toDouble()
              : null,
          meanAveragePrecision: json_.containsKey('meanAveragePrecision')
              ? (json_['meanAveragePrecision'] as core.num).toDouble()
              : null,
          meanSquaredError: json_.containsKey('meanSquaredError')
              ? (json_['meanSquaredError'] as core.num).toDouble()
              : null,
          normalizedDiscountedCumulativeGain:
              json_.containsKey('normalizedDiscountedCumulativeGain')
                  ? (json_['normalizedDiscountedCumulativeGain'] as core.num)
                      .toDouble()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageRank != null) 'averageRank': averageRank!,
        if (meanAveragePrecision != null)
          'meanAveragePrecision': meanAveragePrecision!,
        if (meanSquaredError != null) 'meanSquaredError': meanSquaredError!,
        if (normalizedDiscountedCumulativeGain != null)
          'normalizedDiscountedCumulativeGain':
              normalizedDiscountedCumulativeGain!,
      };
}

/// Evaluation metrics for regression and explicit feedback type matrix
/// factorization models.
class RegressionMetrics {
  /// Mean absolute error.
  core.double? meanAbsoluteError;

  /// Mean squared error.
  core.double? meanSquaredError;

  /// Mean squared log error.
  core.double? meanSquaredLogError;

  /// Median absolute error.
  core.double? medianAbsoluteError;

  /// R^2 score.
  ///
  /// This corresponds to r2_score in ML.EVALUATE.
  core.double? rSquared;

  RegressionMetrics({
    this.meanAbsoluteError,
    this.meanSquaredError,
    this.meanSquaredLogError,
    this.medianAbsoluteError,
    this.rSquared,
  });

  RegressionMetrics.fromJson(core.Map json_)
      : this(
          meanAbsoluteError: json_.containsKey('meanAbsoluteError')
              ? (json_['meanAbsoluteError'] as core.num).toDouble()
              : null,
          meanSquaredError: json_.containsKey('meanSquaredError')
              ? (json_['meanSquaredError'] as core.num).toDouble()
              : null,
          meanSquaredLogError: json_.containsKey('meanSquaredLogError')
              ? (json_['meanSquaredLogError'] as core.num).toDouble()
              : null,
          medianAbsoluteError: json_.containsKey('medianAbsoluteError')
              ? (json_['medianAbsoluteError'] as core.num).toDouble()
              : null,
          rSquared: json_.containsKey('rSquared')
              ? (json_['rSquared'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (meanAbsoluteError != null) 'meanAbsoluteError': meanAbsoluteError!,
        if (meanSquaredError != null) 'meanSquaredError': meanSquaredError!,
        if (meanSquaredLogError != null)
          'meanSquaredLogError': meanSquaredLogError!,
        if (medianAbsoluteError != null)
          'medianAbsoluteError': medianAbsoluteError!,
        if (rSquared != null) 'rSquared': rSquared!,
      };
}

/// Options for a remote user-defined function.
class RemoteFunctionOptions {
  /// Fully qualified name of the user-provided connection object which holds
  /// the authentication information to send requests to the remote service.
  ///
  /// Format:
  /// ```"projects/{projectId}/locations/{locationId}/connections/{connectionId}"```
  core.String? connection;

  /// Endpoint of the user-provided remote service, e.g.
  /// ```https://us-east1-my_gcf_project.cloudfunctions.net/remote_add```
  core.String? endpoint;

  /// Max number of rows in each batch sent to the remote service.
  ///
  /// If absent or if 0, BigQuery dynamically decides the number of rows in a
  /// batch.
  core.String? maxBatchingRows;

  /// User-defined context as a set of key/value pairs, which will be sent as
  /// function invocation context together with batched arguments in the
  /// requests to the remote service.
  ///
  /// The total number of bytes of keys and values must be less than 8KB.
  core.Map<core.String, core.String>? userDefinedContext;

  RemoteFunctionOptions({
    this.connection,
    this.endpoint,
    this.maxBatchingRows,
    this.userDefinedContext,
  });

  RemoteFunctionOptions.fromJson(core.Map json_)
      : this(
          connection: json_.containsKey('connection')
              ? json_['connection'] as core.String
              : null,
          endpoint: json_.containsKey('endpoint')
              ? json_['endpoint'] as core.String
              : null,
          maxBatchingRows: json_.containsKey('maxBatchingRows')
              ? json_['maxBatchingRows'] as core.String
              : null,
          userDefinedContext: json_.containsKey('userDefinedContext')
              ? (json_['userDefinedContext']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connection != null) 'connection': connection!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (maxBatchingRows != null) 'maxBatchingRows': maxBatchingRows!,
        if (userDefinedContext != null)
          'userDefinedContext': userDefinedContext!,
      };
}

/// Remote Model Info
class RemoteModelInfo {
  /// Fully qualified name of the user-provided connection object of the remote
  /// model.
  ///
  /// Format:
  /// ```"projects/{project_id}/locations/{location_id}/connections/{connection_id}"```
  ///
  /// Output only.
  core.String? connection;

  /// The endpoint for remote model.
  ///
  /// Output only.
  core.String? endpoint;

  /// Max number of rows in each batch sent to the remote service.
  ///
  /// If unset, the number of rows in each batch is set dynamically.
  ///
  /// Output only.
  core.String? maxBatchingRows;

  /// The model version for LLM.
  ///
  /// Output only.
  core.String? remoteModelVersion;

  /// The remote service type for remote model.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REMOTE_SERVICE_TYPE_UNSPECIFIED" : Unspecified remote service type.
  /// - "CLOUD_AI_TRANSLATE_V3" : V3 Cloud AI Translation API. See more details
  /// at
  /// [Cloud Translation API](https://cloud.google.com/translate/docs/reference/rest).
  /// - "CLOUD_AI_VISION_V1" : V1 Cloud AI Vision API See more details at
  /// [Cloud Vision API](https://cloud.google.com/vision/docs/reference/rest).
  /// - "CLOUD_AI_NATURAL_LANGUAGE_V1" : V1 Cloud AI Natural Language API. See
  /// more details at \[REST Resource:
  /// documents\](https://cloud.google.com/natural-language/docs/reference/rest/v1/documents).
  /// - "CLOUD_AI_SPEECH_TO_TEXT_V2" : V2 Speech-to-Text API. See more details
  /// at \[Google Cloud Speech-to-Text V2
  /// API\](https://cloud.google.com/speech-to-text/v2/docs)
  core.String? remoteServiceType;

  /// The name of the speech recognizer to use for speech recognition.
  ///
  /// The expected format is
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`.
  /// Customers can specify this field at model creation. If not specified, a
  /// default recognizer `projects/{model
  /// project}/locations/global/recognizers/_` will be used. See more details at
  /// [recognizers](https://cloud.google.com/speech-to-text/v2/docs/reference/rest/v2/projects.locations.recognizers)
  ///
  /// Output only.
  core.String? speechRecognizer;

  RemoteModelInfo({
    this.connection,
    this.endpoint,
    this.maxBatchingRows,
    this.remoteModelVersion,
    this.remoteServiceType,
    this.speechRecognizer,
  });

  RemoteModelInfo.fromJson(core.Map json_)
      : this(
          connection: json_.containsKey('connection')
              ? json_['connection'] as core.String
              : null,
          endpoint: json_.containsKey('endpoint')
              ? json_['endpoint'] as core.String
              : null,
          maxBatchingRows: json_.containsKey('maxBatchingRows')
              ? json_['maxBatchingRows'] as core.String
              : null,
          remoteModelVersion: json_.containsKey('remoteModelVersion')
              ? json_['remoteModelVersion'] as core.String
              : null,
          remoteServiceType: json_.containsKey('remoteServiceType')
              ? json_['remoteServiceType'] as core.String
              : null,
          speechRecognizer: json_.containsKey('speechRecognizer')
              ? json_['speechRecognizer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connection != null) 'connection': connection!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (maxBatchingRows != null) 'maxBatchingRows': maxBatchingRows!,
        if (remoteModelVersion != null)
          'remoteModelVersion': remoteModelVersion!,
        if (remoteServiceType != null) 'remoteServiceType': remoteServiceType!,
        if (speechRecognizer != null) 'speechRecognizer': speechRecognizer!,
      };
}

/// A user-defined function or a stored procedure.
class Routine {
  /// Optional.
  core.List<Argument>? arguments;

  /// The time when this routine was created, in milliseconds since the epoch.
  ///
  /// Output only.
  core.String? creationTime;

  /// If set to `DATA_MASKING`, the function is validated and made available as
  /// a masking function.
  ///
  /// For more information, see
  /// [Create custom masking routines](https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATA_GOVERNANCE_TYPE_UNSPECIFIED" : The data governance type is
  /// unspecified.
  /// - "DATA_MASKING" : The data governance type is data masking.
  core.String? dataGovernanceType;

  /// The body of the routine.
  ///
  /// For functions, this is the expression in the AS clause. If language=SQL,
  /// it is the substring inside (but excluding) the parentheses. For example,
  /// for the function created with the following statement: `CREATE FUNCTION
  /// JoinLines(x string, y string) as (concat(x, "\n", y))` The definition_body
  /// is `concat(x, "\n", y)` (\n is not replaced with linebreak). If
  /// language=JAVASCRIPT, it is the evaluated string in the AS clause. For
  /// example, for the function created with the following statement: `CREATE
  /// FUNCTION f() RETURNS STRING LANGUAGE js AS 'return "\n";\n'` The
  /// definition_body is `return "\n";\n` Note that both \n are replaced with
  /// linebreaks.
  ///
  /// Required.
  core.String? definitionBody;

  /// The description of the routine, if defined.
  ///
  /// Optional.
  core.String? description;

  /// The determinism level of the JavaScript UDF, if defined.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DETERMINISM_LEVEL_UNSPECIFIED" : The determinism of the UDF is
  /// unspecified.
  /// - "DETERMINISTIC" : The UDF is deterministic, meaning that 2 function
  /// calls with the same inputs always produce the same result, even across 2
  /// query runs.
  /// - "NOT_DETERMINISTIC" : The UDF is not deterministic.
  core.String? determinismLevel;

  /// A hash of this resource.
  ///
  /// Output only.
  core.String? etag;

  /// If language = "JAVASCRIPT", this field stores the path of the imported
  /// JAVASCRIPT libraries.
  ///
  /// Optional.
  core.List<core.String>? importedLibraries;

  /// Defaults to "SQL" if remote_function_options field is absent, not set
  /// otherwise.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LANGUAGE_UNSPECIFIED" : Default value.
  /// - "SQL" : SQL language.
  /// - "JAVASCRIPT" : JavaScript language.
  /// - "PYTHON" : Python language.
  /// - "JAVA" : Java language.
  /// - "SCALA" : Scala language.
  core.String? language;

  /// The time when this routine was last modified, in milliseconds since the
  /// epoch.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// Remote function specific options.
  ///
  /// Optional.
  RemoteFunctionOptions? remoteFunctionOptions;

  /// Can be set only if routine_type = "TABLE_VALUED_FUNCTION".
  ///
  /// If absent, the return table type is inferred from definition_body at query
  /// time in each query that references this routine. If present, then the
  /// columns in the evaluated table result will be cast to match the column
  /// types specified in return table type, at query time.
  ///
  /// Optional.
  StandardSqlTableType? returnTableType;

  /// Optional if language = "SQL"; required otherwise.
  ///
  /// Cannot be set if routine_type = "TABLE_VALUED_FUNCTION". If absent, the
  /// return type is inferred from definition_body at query time in each query
  /// that references this routine. If present, then the evaluated result will
  /// be cast to the specified returned type at query time. For example, for the
  /// functions created with the following statements: * `CREATE FUNCTION Add(x
  /// FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION
  /// Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x
  /// FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `{type_kind:
  /// "FLOAT64"}` for `Add` and `Decrement`, and is absent for `Increment`
  /// (inferred as FLOAT64 at query time). Suppose the function `Add` is
  /// replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);`
  /// Then the inferred return type of `Increment` is automatically changed to
  /// INT64 at query time, while the return type of `Decrement` remains FLOAT64.
  StandardSqlDataType? returnType;

  /// Reference describing the ID of this routine.
  ///
  /// Required.
  RoutineReference? routineReference;

  /// The type of routine.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ROUTINE_TYPE_UNSPECIFIED" : Default value.
  /// - "SCALAR_FUNCTION" : Non-built-in persistent scalar function.
  /// - "PROCEDURE" : Stored procedure.
  /// - "TABLE_VALUED_FUNCTION" : Non-built-in persistent TVF.
  /// - "AGGREGATE_FUNCTION" : Non-built-in persistent aggregate function.
  core.String? routineType;

  /// The security mode of the routine, if defined.
  ///
  /// If not defined, the security mode is automatically determined from the
  /// routine's configuration.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SECURITY_MODE_UNSPECIFIED" : The security mode of the routine is
  /// unspecified.
  /// - "DEFINER" : The routine is to be executed with the privileges of the
  /// user who defines it.
  /// - "INVOKER" : The routine is to be executed with the privileges of the
  /// user who invokes it.
  core.String? securityMode;

  /// Spark specific options.
  ///
  /// Optional.
  SparkOptions? sparkOptions;

  /// Use this option to catch many common errors.
  ///
  /// Error checking is not exhaustive, and successfully creating a procedure
  /// doesn't guarantee that the procedure will successfully execute at runtime.
  /// If `strictMode` is set to `TRUE`, the procedure body is further checked
  /// for errors such as non-existent tables or columns. The `CREATE PROCEDURE`
  /// statement fails if the body fails any of these checks. If `strictMode` is
  /// set to `FALSE`, the procedure body is checked only for syntax. For
  /// procedures that invoke themselves recursively, specify `strictMode=FALSE`
  /// to avoid non-existent procedure errors during validation. Default value is
  /// `TRUE`.
  ///
  /// Optional.
  core.bool? strictMode;

  Routine({
    this.arguments,
    this.creationTime,
    this.dataGovernanceType,
    this.definitionBody,
    this.description,
    this.determinismLevel,
    this.etag,
    this.importedLibraries,
    this.language,
    this.lastModifiedTime,
    this.remoteFunctionOptions,
    this.returnTableType,
    this.returnType,
    this.routineReference,
    this.routineType,
    this.securityMode,
    this.sparkOptions,
    this.strictMode,
  });

  Routine.fromJson(core.Map json_)
      : this(
          arguments: json_.containsKey('arguments')
              ? (json_['arguments'] as core.List)
                  .map((value) => Argument.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          dataGovernanceType: json_.containsKey('dataGovernanceType')
              ? json_['dataGovernanceType'] as core.String
              : null,
          definitionBody: json_.containsKey('definitionBody')
              ? json_['definitionBody'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          determinismLevel: json_.containsKey('determinismLevel')
              ? json_['determinismLevel'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          importedLibraries: json_.containsKey('importedLibraries')
              ? (json_['importedLibraries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          language: json_.containsKey('language')
              ? json_['language'] as core.String
              : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          remoteFunctionOptions: json_.containsKey('remoteFunctionOptions')
              ? RemoteFunctionOptions.fromJson(json_['remoteFunctionOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          returnTableType: json_.containsKey('returnTableType')
              ? StandardSqlTableType.fromJson(json_['returnTableType']
                  as core.Map<core.String, core.dynamic>)
              : null,
          returnType: json_.containsKey('returnType')
              ? StandardSqlDataType.fromJson(
                  json_['returnType'] as core.Map<core.String, core.dynamic>)
              : null,
          routineReference: json_.containsKey('routineReference')
              ? RoutineReference.fromJson(json_['routineReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          routineType: json_.containsKey('routineType')
              ? json_['routineType'] as core.String
              : null,
          securityMode: json_.containsKey('securityMode')
              ? json_['securityMode'] as core.String
              : null,
          sparkOptions: json_.containsKey('sparkOptions')
              ? SparkOptions.fromJson(
                  json_['sparkOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          strictMode: json_.containsKey('strictMode')
              ? json_['strictMode'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arguments != null) 'arguments': arguments!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (dataGovernanceType != null)
          'dataGovernanceType': dataGovernanceType!,
        if (definitionBody != null) 'definitionBody': definitionBody!,
        if (description != null) 'description': description!,
        if (determinismLevel != null) 'determinismLevel': determinismLevel!,
        if (etag != null) 'etag': etag!,
        if (importedLibraries != null) 'importedLibraries': importedLibraries!,
        if (language != null) 'language': language!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (remoteFunctionOptions != null)
          'remoteFunctionOptions': remoteFunctionOptions!,
        if (returnTableType != null) 'returnTableType': returnTableType!,
        if (returnType != null) 'returnType': returnType!,
        if (routineReference != null) 'routineReference': routineReference!,
        if (routineType != null) 'routineType': routineType!,
        if (securityMode != null) 'securityMode': securityMode!,
        if (sparkOptions != null) 'sparkOptions': sparkOptions!,
        if (strictMode != null) 'strictMode': strictMode!,
      };
}

/// Id path of a routine.
class RoutineReference {
  /// The ID of the dataset containing this routine.
  ///
  /// Required.
  core.String? datasetId;

  /// The ID of the project containing this routine.
  ///
  /// Required.
  core.String? projectId;

  /// The ID of the routine.
  ///
  /// The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores
  /// (_). The maximum length is 256 characters.
  ///
  /// Required.
  core.String? routineId;

  RoutineReference({
    this.datasetId,
    this.projectId,
    this.routineId,
  });

  RoutineReference.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          routineId: json_.containsKey('routineId')
              ? json_['routineId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (projectId != null) 'projectId': projectId!,
        if (routineId != null) 'routineId': routineId!,
      };
}

/// A single row in the confusion matrix.
class Row {
  /// The original label of this row.
  core.String? actualLabel;

  /// Info describing predicted label distribution.
  core.List<Entry>? entries;

  Row({
    this.actualLabel,
    this.entries,
  });

  Row.fromJson(core.Map json_)
      : this(
          actualLabel: json_.containsKey('actualLabel')
              ? json_['actualLabel'] as core.String
              : null,
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => Entry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actualLabel != null) 'actualLabel': actualLabel!,
        if (entries != null) 'entries': entries!,
      };
}

/// Represents access on a subset of rows on the specified table, defined by its
/// filter predicate.
///
/// Access to the subset of rows is controlled by its IAM policy.
class RowAccessPolicy {
  /// The time when this row access policy was created, in milliseconds since
  /// the epoch.
  ///
  /// Output only.
  core.String? creationTime;

  /// A hash of this resource.
  ///
  /// Output only.
  core.String? etag;

  /// A SQL boolean expression that represents the rows defined by this row
  /// access policy, similar to the boolean expression in a WHERE clause of a
  /// SELECT query on a table.
  ///
  /// References to other tables, routines, and temporary functions are not
  /// supported. Examples: region="EU" date_field = CAST('2019-9-27' as DATE)
  /// nullable_field is not NULL numeric_field BETWEEN 1.0 AND 5.0
  ///
  /// Required.
  core.String? filterPredicate;

  /// The time when this row access policy was last modified, in milliseconds
  /// since the epoch.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// Reference describing the ID of this row access policy.
  ///
  /// Required.
  RowAccessPolicyReference? rowAccessPolicyReference;

  RowAccessPolicy({
    this.creationTime,
    this.etag,
    this.filterPredicate,
    this.lastModifiedTime,
    this.rowAccessPolicyReference,
  });

  RowAccessPolicy.fromJson(core.Map json_)
      : this(
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          filterPredicate: json_.containsKey('filterPredicate')
              ? json_['filterPredicate'] as core.String
              : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          rowAccessPolicyReference:
              json_.containsKey('rowAccessPolicyReference')
                  ? RowAccessPolicyReference.fromJson(
                      json_['rowAccessPolicyReference']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (etag != null) 'etag': etag!,
        if (filterPredicate != null) 'filterPredicate': filterPredicate!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (rowAccessPolicyReference != null)
          'rowAccessPolicyReference': rowAccessPolicyReference!,
      };
}

/// Id path of a row access policy.
class RowAccessPolicyReference {
  /// The ID of the dataset containing this row access policy.
  ///
  /// Required.
  core.String? datasetId;

  /// The ID of the row access policy.
  ///
  /// The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores
  /// (_). The maximum length is 256 characters.
  ///
  /// Required.
  core.String? policyId;

  /// The ID of the project containing this row access policy.
  ///
  /// Required.
  core.String? projectId;

  /// The ID of the table containing this row access policy.
  ///
  /// Required.
  core.String? tableId;

  RowAccessPolicyReference({
    this.datasetId,
    this.policyId,
    this.projectId,
    this.tableId,
  });

  RowAccessPolicyReference.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          policyId: json_.containsKey('policyId')
              ? json_['policyId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          tableId: json_.containsKey('tableId')
              ? json_['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (policyId != null) 'policyId': policyId!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}

/// Statistics for row-level security.
class RowLevelSecurityStatistics {
  /// Whether any accessed data was protected by row access policies.
  core.bool? rowLevelSecurityApplied;

  RowLevelSecurityStatistics({
    this.rowLevelSecurityApplied,
  });

  RowLevelSecurityStatistics.fromJson(core.Map json_)
      : this(
          rowLevelSecurityApplied: json_.containsKey('rowLevelSecurityApplied')
              ? json_['rowLevelSecurityApplied'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rowLevelSecurityApplied != null)
          'rowLevelSecurityApplied': rowLevelSecurityApplied!,
      };
}

/// Options related to script execution.
class ScriptOptions {
  /// Determines which statement in the script represents the "key result", used
  /// to populate the schema and query results of the script job.
  ///
  /// Default is LAST.
  /// Possible string values are:
  /// - "KEY_RESULT_STATEMENT_KIND_UNSPECIFIED" : Default value.
  /// - "LAST" : The last result determines the key result.
  /// - "FIRST_SELECT" : The first SELECT statement determines the key result.
  core.String? keyResultStatement;

  /// Limit on the number of bytes billed per statement.
  ///
  /// Exceeding this budget results in an error.
  core.String? statementByteBudget;

  /// Timeout period for each statement in a script.
  core.String? statementTimeoutMs;

  ScriptOptions({
    this.keyResultStatement,
    this.statementByteBudget,
    this.statementTimeoutMs,
  });

  ScriptOptions.fromJson(core.Map json_)
      : this(
          keyResultStatement: json_.containsKey('keyResultStatement')
              ? json_['keyResultStatement'] as core.String
              : null,
          statementByteBudget: json_.containsKey('statementByteBudget')
              ? json_['statementByteBudget'] as core.String
              : null,
          statementTimeoutMs: json_.containsKey('statementTimeoutMs')
              ? json_['statementTimeoutMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyResultStatement != null)
          'keyResultStatement': keyResultStatement!,
        if (statementByteBudget != null)
          'statementByteBudget': statementByteBudget!,
        if (statementTimeoutMs != null)
          'statementTimeoutMs': statementTimeoutMs!,
      };
}

/// Represents the location of the statement/expression being evaluated.
///
/// Line and column numbers are defined as follows: - Line and column numbers
/// start with one. That is, line 1 column 1 denotes the start of the script. -
/// When inside a stored procedure, all line/column numbers are relative to the
/// procedure body, not the script in which the procedure was defined. -
/// Start/end positions exclude leading/trailing comments and whitespace. The
/// end position always ends with a ";", when present. - Multi-byte Unicode
/// characters are treated as just one column. - If the original script (or
/// procedure definition) contains TAB characters, a tab "snaps" the indentation
/// forward to the nearest multiple of 8 characters, plus 1. For example, a TAB
/// on column 1, 2, 3, 4, 5, 6 , or 8 will advance the next character to column
/// 9. A TAB on column 9, 10, 11, 12, 13, 14, 15, or 16 will advance the next
/// character to column 17.
class ScriptStackFrame {
  /// One-based end column.
  ///
  /// Output only.
  core.int? endColumn;

  /// One-based end line.
  ///
  /// Output only.
  core.int? endLine;

  /// Name of the active procedure, empty if in a top-level script.
  ///
  /// Output only.
  core.String? procedureId;

  /// One-based start column.
  ///
  /// Output only.
  core.int? startColumn;

  /// One-based start line.
  ///
  /// Output only.
  core.int? startLine;

  /// Text of the current statement/expression.
  ///
  /// Output only.
  core.String? text;

  ScriptStackFrame({
    this.endColumn,
    this.endLine,
    this.procedureId,
    this.startColumn,
    this.startLine,
    this.text,
  });

  ScriptStackFrame.fromJson(core.Map json_)
      : this(
          endColumn: json_.containsKey('endColumn')
              ? json_['endColumn'] as core.int
              : null,
          endLine: json_.containsKey('endLine')
              ? json_['endLine'] as core.int
              : null,
          procedureId: json_.containsKey('procedureId')
              ? json_['procedureId'] as core.String
              : null,
          startColumn: json_.containsKey('startColumn')
              ? json_['startColumn'] as core.int
              : null,
          startLine: json_.containsKey('startLine')
              ? json_['startLine'] as core.int
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endColumn != null) 'endColumn': endColumn!,
        if (endLine != null) 'endLine': endLine!,
        if (procedureId != null) 'procedureId': procedureId!,
        if (startColumn != null) 'startColumn': startColumn!,
        if (startLine != null) 'startLine': startLine!,
        if (text != null) 'text': text!,
      };
}

/// Job statistics specific to the child job of a script.
class ScriptStatistics {
  /// Whether this child job was a statement or expression.
  /// Possible string values are:
  /// - "EVALUATION_KIND_UNSPECIFIED" : Default value.
  /// - "STATEMENT" : The statement appears directly in the script.
  /// - "EXPRESSION" : The statement evaluates an expression that appears in the
  /// script.
  core.String? evaluationKind;

  /// Stack trace showing the line/column/procedure name of each frame on the
  /// stack at the point where the current evaluation happened.
  ///
  /// The leaf frame is first, the primary script is last. Never empty.
  core.List<ScriptStackFrame>? stackFrames;

  ScriptStatistics({
    this.evaluationKind,
    this.stackFrames,
  });

  ScriptStatistics.fromJson(core.Map json_)
      : this(
          evaluationKind: json_.containsKey('evaluationKind')
              ? json_['evaluationKind'] as core.String
              : null,
          stackFrames: json_.containsKey('stackFrames')
              ? (json_['stackFrames'] as core.List)
                  .map((value) => ScriptStackFrame.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluationKind != null) 'evaluationKind': evaluationKind!,
        if (stackFrames != null) 'stackFrames': stackFrames!,
      };
}

/// Statistics for a search query.
///
/// Populated as part of JobStatistics2.
class SearchStatistics {
  /// When `indexUsageMode` is `UNUSED` or `PARTIALLY_USED`, this field explains
  /// why indexes were not used in all or part of the search query.
  ///
  /// If `indexUsageMode` is `FULLY_USED`, this field is not populated.
  core.List<IndexUnusedReason>? indexUnusedReasons;

  /// Specifies the index usage mode for the query.
  /// Possible string values are:
  /// - "INDEX_USAGE_MODE_UNSPECIFIED" : Index usage mode not specified.
  /// - "UNUSED" : No search indexes were used in the search query. See
  /// \[`indexUnusedReasons`\]
  /// (/bigquery/docs/reference/rest/v2/Job#IndexUnusedReason) for detailed
  /// reasons.
  /// - "PARTIALLY_USED" : Part of the search query used search indexes. See
  /// \[`indexUnusedReasons`\]
  /// (/bigquery/docs/reference/rest/v2/Job#IndexUnusedReason) for why other
  /// parts of the query did not use search indexes.
  /// - "FULLY_USED" : The entire search query used search indexes.
  core.String? indexUsageMode;

  SearchStatistics({
    this.indexUnusedReasons,
    this.indexUsageMode,
  });

  SearchStatistics.fromJson(core.Map json_)
      : this(
          indexUnusedReasons: json_.containsKey('indexUnusedReasons')
              ? (json_['indexUnusedReasons'] as core.List)
                  .map((value) => IndexUnusedReason.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          indexUsageMode: json_.containsKey('indexUsageMode')
              ? json_['indexUsageMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexUnusedReasons != null)
          'indexUnusedReasons': indexUnusedReasons!,
        if (indexUsageMode != null) 'indexUsageMode': indexUsageMode!,
      };
}

/// Serializer and deserializer information.
class SerDeInfo {
  /// Name of the SerDe.
  ///
  /// The maximum length is 256 characters.
  ///
  /// Optional.
  core.String? name;

  /// Key-value pairs that define the initialization parameters for the
  /// serialization library.
  ///
  /// Maximum size 10 Kib.
  ///
  /// Optional.
  core.Map<core.String, core.String>? parameters;

  /// Specifies a fully-qualified class name of the serialization library that
  /// is responsible for the translation of data between table representation
  /// and the underlying low-level input and output format structures.
  ///
  /// The maximum length is 256 characters.
  ///
  /// Required.
  core.String? serializationLibrary;

  SerDeInfo({
    this.name,
    this.parameters,
    this.serializationLibrary,
  });

  SerDeInfo.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          serializationLibrary: json_.containsKey('serializationLibrary')
              ? json_['serializationLibrary'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (parameters != null) 'parameters': parameters!,
        if (serializationLibrary != null)
          'serializationLibrary': serializationLibrary!,
      };
}

/// \[Preview\] Information related to sessions.
class SessionInfo {
  /// The id of the session.
  ///
  /// Output only.
  core.String? sessionId;

  SessionInfo({
    this.sessionId,
  });

  SessionInfo.fromJson(core.Map json_)
      : this(
          sessionId: json_.containsKey('sessionId')
              ? json_['sessionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionId != null) 'sessionId': sessionId!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Details about source stages which produce skewed data.
class SkewSource {
  /// Stage id of the skew source stage.
  ///
  /// Output only.
  core.String? stageId;

  SkewSource({
    this.stageId,
  });

  SkewSource.fromJson(core.Map json_)
      : this(
          stageId: json_.containsKey('stageId')
              ? json_['stageId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stageId != null) 'stageId': stageId!,
      };
}

/// Information about base table and snapshot time of the snapshot.
class SnapshotDefinition {
  /// Reference describing the ID of the table that was snapshot.
  ///
  /// Required.
  TableReference? baseTableReference;

  /// The time at which the base table was snapshot.
  ///
  /// This value is reported in the JSON response using RFC3339 format.
  ///
  /// Required.
  core.DateTime? snapshotTime;

  SnapshotDefinition({
    this.baseTableReference,
    this.snapshotTime,
  });

  SnapshotDefinition.fromJson(core.Map json_)
      : this(
          baseTableReference: json_.containsKey('baseTableReference')
              ? TableReference.fromJson(json_['baseTableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          snapshotTime: json_.containsKey('snapshotTime')
              ? core.DateTime.parse(json_['snapshotTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseTableReference != null)
          'baseTableReference': baseTableReference!,
        if (snapshotTime != null)
          'snapshotTime': snapshotTime!.toUtc().toIso8601String(),
      };
}

/// Spark job logs can be filtered by these fields in Cloud Logging.
class SparkLoggingInfo {
  /// Project ID where the Spark logs were written.
  ///
  /// Output only.
  core.String? projectId;

  /// Resource type used for logging.
  ///
  /// Output only.
  core.String? resourceType;

  SparkLoggingInfo({
    this.projectId,
    this.resourceType,
  });

  SparkLoggingInfo.fromJson(core.Map json_)
      : this(
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// Options for a user-defined Spark routine.
class SparkOptions {
  /// Archive files to be extracted into the working directory of each executor.
  ///
  /// For more information about Apache Spark, see
  /// [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  core.List<core.String>? archiveUris;

  /// Fully qualified name of the user-provided Spark connection object.
  ///
  /// Format:
  /// ```"projects/{project_id}/locations/{location_id}/connections/{connection_id}"```
  core.String? connection;

  /// Custom container image for the runtime environment.
  core.String? containerImage;

  /// Files to be placed in the working directory of each executor.
  ///
  /// For more information about Apache Spark, see
  /// [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  core.List<core.String>? fileUris;

  /// JARs to include on the driver and executor CLASSPATH.
  ///
  /// For more information about Apache Spark, see
  /// [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  core.List<core.String>? jarUris;

  /// The fully qualified name of a class in jar_uris, for example,
  /// com.example.wordcount.
  ///
  /// Exactly one of main_class and main_jar_uri field should be set for
  /// Java/Scala language type.
  core.String? mainClass;

  /// The main file/jar URI of the Spark application.
  ///
  /// Exactly one of the definition_body field and the main_file_uri field must
  /// be set for Python. Exactly one of main_class and main_file_uri field
  /// should be set for Java/Scala language type.
  core.String? mainFileUri;

  /// Configuration properties as a set of key/value pairs, which will be passed
  /// on to the Spark application.
  ///
  /// For more information, see
  /// [Apache Spark](https://spark.apache.org/docs/latest/index.html) and the
  /// [procedure option list](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#procedure_option_list).
  core.Map<core.String, core.String>? properties;

  /// Python files to be placed on the PYTHONPATH for PySpark application.
  ///
  /// Supported file types: `.py`, `.egg`, and `.zip`. For more information
  /// about Apache Spark, see
  /// [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  core.List<core.String>? pyFileUris;

  /// Runtime version.
  ///
  /// If not specified, the default runtime version is used.
  core.String? runtimeVersion;

  SparkOptions({
    this.archiveUris,
    this.connection,
    this.containerImage,
    this.fileUris,
    this.jarUris,
    this.mainClass,
    this.mainFileUri,
    this.properties,
    this.pyFileUris,
    this.runtimeVersion,
  });

  SparkOptions.fromJson(core.Map json_)
      : this(
          archiveUris: json_.containsKey('archiveUris')
              ? (json_['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          connection: json_.containsKey('connection')
              ? json_['connection'] as core.String
              : null,
          containerImage: json_.containsKey('containerImage')
              ? json_['containerImage'] as core.String
              : null,
          fileUris: json_.containsKey('fileUris')
              ? (json_['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jarUris: json_.containsKey('jarUris')
              ? (json_['jarUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mainClass: json_.containsKey('mainClass')
              ? json_['mainClass'] as core.String
              : null,
          mainFileUri: json_.containsKey('mainFileUri')
              ? json_['mainFileUri'] as core.String
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          pyFileUris: json_.containsKey('pyFileUris')
              ? (json_['pyFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          runtimeVersion: json_.containsKey('runtimeVersion')
              ? json_['runtimeVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (archiveUris != null) 'archiveUris': archiveUris!,
        if (connection != null) 'connection': connection!,
        if (containerImage != null) 'containerImage': containerImage!,
        if (fileUris != null) 'fileUris': fileUris!,
        if (jarUris != null) 'jarUris': jarUris!,
        if (mainClass != null) 'mainClass': mainClass!,
        if (mainFileUri != null) 'mainFileUri': mainFileUri!,
        if (properties != null) 'properties': properties!,
        if (pyFileUris != null) 'pyFileUris': pyFileUris!,
        if (runtimeVersion != null) 'runtimeVersion': runtimeVersion!,
      };
}

/// Statistics for a BigSpark query.
///
/// Populated as part of JobStatistics2
class SparkStatistics {
  /// Endpoints returned from Dataproc.
  ///
  /// Key list: - history_server_endpoint: A link to Spark job UI.
  ///
  /// Output only.
  core.Map<core.String, core.String>? endpoints;

  /// The Google Cloud Storage bucket that is used as the default file system by
  /// the Spark application.
  ///
  /// This field is only filled when the Spark procedure uses the invoker
  /// security mode. The `gcsStagingBucket` bucket is inferred from the
  /// `@@spark_proc_properties.staging_bucket` system variable (if it is
  /// provided). Otherwise, BigQuery creates a default staging bucket for the
  /// job and returns the bucket name in this field. Example: *
  /// `gs://[bucket_name]`
  ///
  /// Output only.
  core.String? gcsStagingBucket;

  /// The Cloud KMS encryption key that is used to protect the resources created
  /// by the Spark job.
  ///
  /// If the Spark procedure uses the invoker security mode, the Cloud KMS
  /// encryption key is either inferred from the provided system variable,
  /// `@@spark_proc_properties.kms_key_name`, or the default key of the BigQuery
  /// job's project (if the CMEK organization policy is enforced). Otherwise,
  /// the Cloud KMS key is either inferred from the Spark connection associated
  /// with the procedure (if it is provided), or from the default key of the
  /// Spark connection's project if the CMEK organization policy is enforced.
  /// Example: *
  /// `projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]`
  ///
  /// Output only.
  core.String? kmsKeyName;

  /// Logging info is used to generate a link to Cloud Logging.
  ///
  /// Output only.
  SparkLoggingInfo? loggingInfo;

  /// Spark job ID if a Spark job is created successfully.
  ///
  /// Output only.
  core.String? sparkJobId;

  /// Location where the Spark job is executed.
  ///
  /// A location is selected by BigQueury for jobs configured to run in a
  /// multi-region.
  ///
  /// Output only.
  core.String? sparkJobLocation;

  SparkStatistics({
    this.endpoints,
    this.gcsStagingBucket,
    this.kmsKeyName,
    this.loggingInfo,
    this.sparkJobId,
    this.sparkJobLocation,
  });

  SparkStatistics.fromJson(core.Map json_)
      : this(
          endpoints: json_.containsKey('endpoints')
              ? (json_['endpoints'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          gcsStagingBucket: json_.containsKey('gcsStagingBucket')
              ? json_['gcsStagingBucket'] as core.String
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          loggingInfo: json_.containsKey('loggingInfo')
              ? SparkLoggingInfo.fromJson(
                  json_['loggingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          sparkJobId: json_.containsKey('sparkJobId')
              ? json_['sparkJobId'] as core.String
              : null,
          sparkJobLocation: json_.containsKey('sparkJobLocation')
              ? json_['sparkJobLocation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpoints != null) 'endpoints': endpoints!,
        if (gcsStagingBucket != null) 'gcsStagingBucket': gcsStagingBucket!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (loggingInfo != null) 'loggingInfo': loggingInfo!,
        if (sparkJobId != null) 'sparkJobId': sparkJobId!,
        if (sparkJobLocation != null) 'sparkJobLocation': sparkJobLocation!,
      };
}

/// Performance insights compared to the previous executions for a specific
/// stage.
class StagePerformanceChangeInsight {
  /// Input data change insight of the query stage.
  ///
  /// Output only.
  InputDataChange? inputDataChange;

  /// The stage id that the insight mapped to.
  ///
  /// Output only.
  core.String? stageId;

  StagePerformanceChangeInsight({
    this.inputDataChange,
    this.stageId,
  });

  StagePerformanceChangeInsight.fromJson(core.Map json_)
      : this(
          inputDataChange: json_.containsKey('inputDataChange')
              ? InputDataChange.fromJson(json_['inputDataChange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          stageId: json_.containsKey('stageId')
              ? json_['stageId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputDataChange != null) 'inputDataChange': inputDataChange!,
        if (stageId != null) 'stageId': stageId!,
      };
}

/// Standalone performance insights for a specific stage.
class StagePerformanceStandaloneInsight {
  /// If present, the stage had the following reasons for being disqualified
  /// from BI Engine execution.
  ///
  /// Output only.
  core.List<BiEngineReason>? biEngineReasons;

  /// High cardinality joins in the stage.
  ///
  /// Output only.
  core.List<HighCardinalityJoin>? highCardinalityJoins;

  /// True if the stage has insufficient shuffle quota.
  ///
  /// Output only.
  core.bool? insufficientShuffleQuota;

  /// Partition skew in the stage.
  ///
  /// Output only.
  PartitionSkew? partitionSkew;

  /// True if the stage has a slot contention issue.
  ///
  /// Output only.
  core.bool? slotContention;

  /// The stage id that the insight mapped to.
  ///
  /// Output only.
  core.String? stageId;

  StagePerformanceStandaloneInsight({
    this.biEngineReasons,
    this.highCardinalityJoins,
    this.insufficientShuffleQuota,
    this.partitionSkew,
    this.slotContention,
    this.stageId,
  });

  StagePerformanceStandaloneInsight.fromJson(core.Map json_)
      : this(
          biEngineReasons: json_.containsKey('biEngineReasons')
              ? (json_['biEngineReasons'] as core.List)
                  .map((value) => BiEngineReason.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          highCardinalityJoins: json_.containsKey('highCardinalityJoins')
              ? (json_['highCardinalityJoins'] as core.List)
                  .map((value) => HighCardinalityJoin.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          insufficientShuffleQuota:
              json_.containsKey('insufficientShuffleQuota')
                  ? json_['insufficientShuffleQuota'] as core.bool
                  : null,
          partitionSkew: json_.containsKey('partitionSkew')
              ? PartitionSkew.fromJson(
                  json_['partitionSkew'] as core.Map<core.String, core.dynamic>)
              : null,
          slotContention: json_.containsKey('slotContention')
              ? json_['slotContention'] as core.bool
              : null,
          stageId: json_.containsKey('stageId')
              ? json_['stageId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (biEngineReasons != null) 'biEngineReasons': biEngineReasons!,
        if (highCardinalityJoins != null)
          'highCardinalityJoins': highCardinalityJoins!,
        if (insufficientShuffleQuota != null)
          'insufficientShuffleQuota': insufficientShuffleQuota!,
        if (partitionSkew != null) 'partitionSkew': partitionSkew!,
        if (slotContention != null) 'slotContention': slotContention!,
        if (stageId != null) 'stageId': stageId!,
      };
}

/// The data type of a variable such as a function argument.
///
/// Examples include: * INT64: `{"typeKind": "INT64"}` * ARRAY: { "typeKind":
/// "ARRAY", "arrayElementType": {"typeKind": "STRING"} } * STRUCT\>: {
/// "typeKind": "STRUCT", "structType": { "fields": \[ { "name": "x", "type":
/// {"typeKind": "STRING"} }, { "name": "y", "type": { "typeKind": "ARRAY",
/// "arrayElementType": {"typeKind": "DATE"} } } \] } }
class StandardSqlDataType {
  /// The type of the array's elements, if type_kind = "ARRAY".
  StandardSqlDataType? arrayElementType;

  /// The type of the range's elements, if type_kind = "RANGE".
  StandardSqlDataType? rangeElementType;

  /// The fields of this struct, in order, if type_kind = "STRUCT".
  StandardSqlStructType? structType;

  /// The top level type of this field.
  ///
  /// Can be any GoogleSQL data type (e.g., "INT64", "DATE", "ARRAY").
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_KIND_UNSPECIFIED" : Invalid type.
  /// - "INT64" : Encoded as a string in decimal format.
  /// - "BOOL" : Encoded as a boolean "false" or "true".
  /// - "FLOAT64" : Encoded as a number, or string "NaN", "Infinity" or
  /// "-Infinity".
  /// - "STRING" : Encoded as a string value.
  /// - "BYTES" : Encoded as a base64 string per RFC 4648, section 4.
  /// - "TIMESTAMP" : Encoded as an RFC 3339 timestamp with mandatory "Z" time
  /// zone string: 1985-04-12T23:20:50.52Z
  /// - "DATE" : Encoded as RFC 3339 full-date format string: 1985-04-12
  /// - "TIME" : Encoded as RFC 3339 partial-time format string: 23:20:50.52
  /// - "DATETIME" : Encoded as RFC 3339 full-date "T" partial-time:
  /// 1985-04-12T23:20:50.52
  /// - "INTERVAL" : Encoded as fully qualified 3 part: 0-5 15 2:30:45.6
  /// - "GEOGRAPHY" : Encoded as WKT
  /// - "NUMERIC" : Encoded as a decimal string.
  /// - "BIGNUMERIC" : Encoded as a decimal string.
  /// - "JSON" : Encoded as a string.
  /// - "ARRAY" : Encoded as a list with types matching Type.array_type.
  /// - "STRUCT" : Encoded as a list with fields of type Type.struct_type\[i\].
  /// List is used because a JSON object cannot have duplicate field names.
  /// - "RANGE" : Encoded as a pair with types matching range_element_type.
  /// Pairs must begin with "\[", end with ")", and be separated by ", ".
  core.String? typeKind;

  StandardSqlDataType({
    this.arrayElementType,
    this.rangeElementType,
    this.structType,
    this.typeKind,
  });

  StandardSqlDataType.fromJson(core.Map json_)
      : this(
          arrayElementType: json_.containsKey('arrayElementType')
              ? StandardSqlDataType.fromJson(json_['arrayElementType']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rangeElementType: json_.containsKey('rangeElementType')
              ? StandardSqlDataType.fromJson(json_['rangeElementType']
                  as core.Map<core.String, core.dynamic>)
              : null,
          structType: json_.containsKey('structType')
              ? StandardSqlStructType.fromJson(
                  json_['structType'] as core.Map<core.String, core.dynamic>)
              : null,
          typeKind: json_.containsKey('typeKind')
              ? json_['typeKind'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayElementType != null) 'arrayElementType': arrayElementType!,
        if (rangeElementType != null) 'rangeElementType': rangeElementType!,
        if (structType != null) 'structType': structType!,
        if (typeKind != null) 'typeKind': typeKind!,
      };
}

/// A field or a column.
class StandardSqlField {
  /// The name of this field.
  ///
  /// Can be absent for struct fields.
  ///
  /// Optional.
  core.String? name;

  /// The type of this parameter.
  ///
  /// Absent if not explicitly specified (e.g., CREATE FUNCTION statement can
  /// omit the return type; in this case the output parameter does not have this
  /// "type" field).
  ///
  /// Optional.
  StandardSqlDataType? type;

  StandardSqlField({
    this.name,
    this.type,
  });

  StandardSqlField.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type')
              ? StandardSqlDataType.fromJson(
                  json_['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// The representation of a SQL STRUCT type.
class StandardSqlStructType {
  /// Fields within the struct.
  core.List<StandardSqlField>? fields;

  StandardSqlStructType({
    this.fields,
  });

  StandardSqlStructType.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => StandardSqlField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// A table type
class StandardSqlTableType {
  /// The columns in this table type
  core.List<StandardSqlField>? columns;

  StandardSqlTableType({
    this.columns,
  });

  StandardSqlTableType.fromJson(core.Map json_)
      : this(
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => StandardSqlField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
      };
}

/// Contains information about how a table's data is stored and accessed by open
/// source query engines.
class StorageDescriptor {
  /// Specifies the fully qualified class name of the InputFormat (e.g.
  /// "org.apache.hadoop.hive.ql.io.orc.OrcInputFormat").
  ///
  /// The maximum length is 128 characters.
  ///
  /// Optional.
  core.String? inputFormat;

  /// The physical location of the table (e.g.
  /// 'gs://spark-dataproc-data/pangea-data/case_sensitive/' or
  /// 'gs://spark-dataproc-data/pangea-data / * ').
  ///
  /// The maximum length is 2056 bytes.
  ///
  /// Optional.
  core.String? locationUri;

  /// Specifies the fully qualified class name of the OutputFormat (e.g.
  /// "org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat").
  ///
  /// The maximum length is 128 characters.
  ///
  /// Optional.
  core.String? outputFormat;

  /// Serializer and deserializer information.
  ///
  /// Optional.
  SerDeInfo? serdeInfo;

  StorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
    this.serdeInfo,
  });

  StorageDescriptor.fromJson(core.Map json_)
      : this(
          inputFormat: json_.containsKey('inputFormat')
              ? json_['inputFormat'] as core.String
              : null,
          locationUri: json_.containsKey('locationUri')
              ? json_['locationUri'] as core.String
              : null,
          outputFormat: json_.containsKey('outputFormat')
              ? json_['outputFormat'] as core.String
              : null,
          serdeInfo: json_.containsKey('serdeInfo')
              ? SerDeInfo.fromJson(
                  json_['serdeInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputFormat != null) 'inputFormat': inputFormat!,
        if (locationUri != null) 'locationUri': locationUri!,
        if (outputFormat != null) 'outputFormat': outputFormat!,
        if (serdeInfo != null) 'serdeInfo': serdeInfo!,
      };
}

class Streamingbuffer {
  /// A lower-bound estimate of the number of bytes currently in the streaming
  /// buffer.
  ///
  /// Output only.
  core.String? estimatedBytes;

  /// A lower-bound estimate of the number of rows currently in the streaming
  /// buffer.
  ///
  /// Output only.
  core.String? estimatedRows;

  /// Contains the timestamp of the oldest entry in the streaming buffer, in
  /// milliseconds since the epoch, if the streaming buffer is available.
  ///
  /// Output only.
  core.String? oldestEntryTime;

  Streamingbuffer({
    this.estimatedBytes,
    this.estimatedRows,
    this.oldestEntryTime,
  });

  Streamingbuffer.fromJson(core.Map json_)
      : this(
          estimatedBytes: json_.containsKey('estimatedBytes')
              ? json_['estimatedBytes'] as core.String
              : null,
          estimatedRows: json_.containsKey('estimatedRows')
              ? json_['estimatedRows'] as core.String
              : null,
          oldestEntryTime: json_.containsKey('oldestEntryTime')
              ? json_['oldestEntryTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (estimatedBytes != null) 'estimatedBytes': estimatedBytes!,
        if (estimatedRows != null) 'estimatedRows': estimatedRows!,
        if (oldestEntryTime != null) 'oldestEntryTime': oldestEntryTime!,
      };
}

/// Search space for string and enum.
class StringHparamSearchSpace {
  /// Canididates for the string or enum parameter in lower case.
  core.List<core.String>? candidates;

  StringHparamSearchSpace({
    this.candidates,
  });

  StringHparamSearchSpace.fromJson(core.Map json_)
      : this(
          candidates: json_.containsKey('candidates')
              ? (json_['candidates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (candidates != null) 'candidates': candidates!,
      };
}

/// System variables given to a query.
class SystemVariables {
  /// Data type for each system variable.
  ///
  /// Output only.
  core.Map<core.String, StandardSqlDataType>? types;

  /// Value for each system variable.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? values;

  SystemVariables({
    this.types,
    this.values,
  });

  SystemVariables.fromJson(core.Map json_)
      : this(
          types: json_.containsKey('types')
              ? (json_['types'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    StandardSqlDataType.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          values: json_.containsKey('values')
              ? json_['values'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (types != null) 'types': types!,
        if (values != null) 'values': values!,
      };
}

class Table {
  /// Specifies the configuration of a BigLake managed table.
  ///
  /// Optional.
  BigLakeConfiguration? biglakeConfiguration;

  /// Contains information about the clone.
  ///
  /// This value is set via the clone operation.
  ///
  /// Output only.
  CloneDefinition? cloneDefinition;

  /// Clustering specification for the table.
  ///
  /// Must be specified with time-based partitioning, data in the table will be
  /// first partitioned and subsequently clustered.
  Clustering? clustering;

  /// The time when this table was created, in milliseconds since the epoch.
  ///
  /// Output only.
  core.String? creationTime;

  /// Defines the default collation specification of new STRING fields in the
  /// table.
  ///
  /// During table creation or update, if a STRING field is added to this table
  /// without explicit collation specified, then the table inherits the table
  /// default collation. A change to this field affects only fields added
  /// afterwards, and does not alter the existing fields. The following values
  /// are supported: * 'und:ci': undetermined locale, case insensitive. * '':
  /// empty string. Default to case-sensitive behavior.
  ///
  /// Optional.
  core.String? defaultCollation;

  /// Defines the default rounding mode specification of new decimal fields
  /// (NUMERIC OR BIGNUMERIC) in the table.
  ///
  /// During table creation or update, if a decimal field is added to this table
  /// without an explicit rounding mode specified, then the field inherits the
  /// table default rounding mode. Changing this field doesn't affect existing
  /// fields.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ROUNDING_MODE_UNSPECIFIED" : Unspecified will default to using
  /// ROUND_HALF_AWAY_FROM_ZERO.
  /// - "ROUND_HALF_AWAY_FROM_ZERO" : ROUND_HALF_AWAY_FROM_ZERO rounds half
  /// values away from zero when applying precision and scale upon writing of
  /// NUMERIC and BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 =\> 1 1.5,
  /// 1.6, 1.7, 1.8, 1.9 =\> 2
  /// - "ROUND_HALF_EVEN" : ROUND_HALF_EVEN rounds half values to the nearest
  /// even value when applying precision and scale upon writing of NUMERIC and
  /// BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 =\> 1 1.5 =\> 2 1.6,
  /// 1.7, 1.8, 1.9 =\> 2 2.5 =\> 2
  core.String? defaultRoundingMode;

  /// A user-friendly description of this table.
  ///
  /// Optional.
  core.String? description;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  EncryptionConfiguration? encryptionConfiguration;

  /// A hash of this resource.
  ///
  /// Output only.
  core.String? etag;

  /// The time when this table expires, in milliseconds since the epoch.
  ///
  /// If not present, the table will persist indefinitely. Expired tables will
  /// be deleted and their storage reclaimed. The defaultTableExpirationMs
  /// property of the encapsulating dataset can be used to set a default
  /// expirationTime on newly created tables.
  ///
  /// Optional.
  core.String? expirationTime;

  /// Options defining open source compatible table.
  ///
  /// Optional.
  ExternalCatalogTableOptions? externalCatalogTableOptions;

  /// Describes the data format, location, and other properties of a table
  /// stored outside of BigQuery.
  ///
  /// By defining these properties, the data source can then be queried as if it
  /// were a standard BigQuery table.
  ///
  /// Optional.
  ExternalDataConfiguration? externalDataConfiguration;

  /// A descriptive name for this table.
  ///
  /// Optional.
  core.String? friendlyName;

  /// An opaque ID uniquely identifying the table.
  ///
  /// Output only.
  core.String? id;

  /// The type of resource ID.
  core.String? kind;

  /// The labels associated with this table.
  ///
  /// You can use these to organize and group your tables. Label keys and values
  /// can be no longer than 63 characters, can only contain lowercase letters,
  /// numeric characters, underscores and dashes. International characters are
  /// allowed. Label values are optional. Label keys must start with a letter
  /// and each label in the list must have a different key.
  core.Map<core.String, core.String>? labels;

  /// The time when this table was last modified, in milliseconds since the
  /// epoch.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// The geographic location where the table resides.
  ///
  /// This value is inherited from the dataset.
  ///
  /// Output only.
  core.String? location;

  /// The materialized view definition.
  ///
  /// Optional.
  MaterializedViewDefinition? materializedView;

  /// The materialized view status.
  ///
  /// Output only.
  MaterializedViewStatus? materializedViewStatus;

  /// The maximum staleness of data that could be returned when the table (or
  /// stale MV) is queried.
  ///
  /// Staleness encoded as a string encoding of sql IntervalValue type.
  ///
  /// Optional.
  core.String? maxStaleness;

  /// Deprecated.
  ModelDefinition? model;

  /// Number of logical bytes that are less than 90 days old.
  ///
  /// Output only.
  core.String? numActiveLogicalBytes;

  /// Number of physical bytes less than 90 days old.
  ///
  /// This data is not kept in real time, and might be delayed by a few seconds
  /// to a few minutes.
  ///
  /// Output only.
  core.String? numActivePhysicalBytes;

  /// The size of this table in logical bytes, excluding any data in the
  /// streaming buffer.
  ///
  /// Output only.
  core.String? numBytes;

  /// The number of logical bytes in the table that are considered "long-term
  /// storage".
  ///
  /// Output only.
  core.String? numLongTermBytes;

  /// Number of logical bytes that are more than 90 days old.
  ///
  /// Output only.
  core.String? numLongTermLogicalBytes;

  /// Number of physical bytes more than 90 days old.
  ///
  /// This data is not kept in real time, and might be delayed by a few seconds
  /// to a few minutes.
  ///
  /// Output only.
  core.String? numLongTermPhysicalBytes;

  /// The number of partitions present in the table or materialized view.
  ///
  /// This data is not kept in real time, and might be delayed by a few seconds
  /// to a few minutes.
  ///
  /// Output only.
  core.String? numPartitions;

  /// The physical size of this table in bytes.
  ///
  /// This includes storage used for time travel.
  ///
  /// Output only.
  core.String? numPhysicalBytes;

  /// The number of rows of data in this table, excluding any data in the
  /// streaming buffer.
  ///
  /// Output only.
  core.String? numRows;

  /// Number of physical bytes used by time travel storage (deleted or changed
  /// data).
  ///
  /// This data is not kept in real time, and might be delayed by a few seconds
  /// to a few minutes.
  ///
  /// Output only.
  core.String? numTimeTravelPhysicalBytes;

  /// Total number of logical bytes in the table or materialized view.
  ///
  /// Output only.
  core.String? numTotalLogicalBytes;

  /// The physical size of this table in bytes.
  ///
  /// This also includes storage used for time travel. This data is not kept in
  /// real time, and might be delayed by a few seconds to a few minutes.
  ///
  /// Output only.
  core.String? numTotalPhysicalBytes;

  /// The partition information for all table formats, including managed
  /// partitioned tables, hive partitioned tables, and iceberg partitioned
  /// tables.
  ///
  /// Output only.
  PartitioningDefinition? partitionDefinition;

  /// If specified, configures range partitioning for this table.
  RangePartitioning? rangePartitioning;

  /// Table references of all replicas currently active on the table.
  ///
  /// Optional. Output only.
  core.List<TableReference>? replicas;

  /// If set to true, queries over this table require a partition filter that
  /// can be used for partition elimination to be specified.
  ///
  /// Optional.
  core.bool? requirePartitionFilter;

  /// The tags associated with this table.
  ///
  /// Tag keys are globally unique. See additional information on
  /// [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions).
  /// An object containing a list of "key": value pairs. The key is the
  /// namespaced friendly name of the tag key, e.g. "12345/environment" where
  /// 12345 is parent id. The value is the friendly short name of the tag value,
  /// e.g. "production".
  ///
  /// Optional.
  core.Map<core.String, core.String>? resourceTags;

  /// Describes the schema of this table.
  ///
  /// Optional.
  TableSchema? schema;

  /// A URL that can be used to access this resource again.
  ///
  /// Output only.
  core.String? selfLink;

  /// Contains information about the snapshot.
  ///
  /// This value is set via snapshot creation.
  ///
  /// Output only.
  SnapshotDefinition? snapshotDefinition;

  /// Contains information regarding this table's streaming buffer, if one is
  /// present.
  ///
  /// This field will be absent if the table is not being streamed to or if
  /// there is no data in the streaming buffer.
  ///
  /// Output only.
  Streamingbuffer? streamingBuffer;

  /// Tables Primary Key and Foreign Key information
  ///
  /// Optional.
  TableConstraints? tableConstraints;

  /// Reference describing the ID of this table.
  ///
  /// Required.
  TableReference? tableReference;

  /// Table replication info for table created `AS REPLICA` DDL like: `CREATE
  /// MATERIALIZED VIEW mv1 AS REPLICA OF src_mv`
  ///
  /// Optional.
  TableReplicationInfo? tableReplicationInfo;

  /// If specified, configures time-based partitioning for this table.
  TimePartitioning? timePartitioning;

  /// Describes the table type.
  ///
  /// The following values are supported: * `TABLE`: A normal BigQuery table. *
  /// `VIEW`: A virtual table defined by a SQL query. * `EXTERNAL`: A table that
  /// references data stored in an external storage system, such as Google Cloud
  /// Storage. * `MATERIALIZED_VIEW`: A precomputed view defined by a SQL query.
  /// * `SNAPSHOT`: An immutable BigQuery table that preserves the contents of a
  /// base table at a particular time. See additional information on \[table
  /// snapshots\](/bigquery/docs/table-snapshots-intro). The default value is
  /// `TABLE`.
  ///
  /// Output only.
  core.String? type;

  /// The view definition.
  ///
  /// Optional.
  ViewDefinition? view;

  Table({
    this.biglakeConfiguration,
    this.cloneDefinition,
    this.clustering,
    this.creationTime,
    this.defaultCollation,
    this.defaultRoundingMode,
    this.description,
    this.encryptionConfiguration,
    this.etag,
    this.expirationTime,
    this.externalCatalogTableOptions,
    this.externalDataConfiguration,
    this.friendlyName,
    this.id,
    this.kind,
    this.labels,
    this.lastModifiedTime,
    this.location,
    this.materializedView,
    this.materializedViewStatus,
    this.maxStaleness,
    this.model,
    this.numActiveLogicalBytes,
    this.numActivePhysicalBytes,
    this.numBytes,
    this.numLongTermBytes,
    this.numLongTermLogicalBytes,
    this.numLongTermPhysicalBytes,
    this.numPartitions,
    this.numPhysicalBytes,
    this.numRows,
    this.numTimeTravelPhysicalBytes,
    this.numTotalLogicalBytes,
    this.numTotalPhysicalBytes,
    this.partitionDefinition,
    this.rangePartitioning,
    this.replicas,
    this.requirePartitionFilter,
    this.resourceTags,
    this.schema,
    this.selfLink,
    this.snapshotDefinition,
    this.streamingBuffer,
    this.tableConstraints,
    this.tableReference,
    this.tableReplicationInfo,
    this.timePartitioning,
    this.type,
    this.view,
  });

  Table.fromJson(core.Map json_)
      : this(
          biglakeConfiguration: json_.containsKey('biglakeConfiguration')
              ? BigLakeConfiguration.fromJson(json_['biglakeConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cloneDefinition: json_.containsKey('cloneDefinition')
              ? CloneDefinition.fromJson(json_['cloneDefinition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clustering: json_.containsKey('clustering')
              ? Clustering.fromJson(
                  json_['clustering'] as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          defaultCollation: json_.containsKey('defaultCollation')
              ? json_['defaultCollation'] as core.String
              : null,
          defaultRoundingMode: json_.containsKey('defaultRoundingMode')
              ? json_['defaultRoundingMode'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          encryptionConfiguration: json_.containsKey('encryptionConfiguration')
              ? EncryptionConfiguration.fromJson(
                  json_['encryptionConfiguration']
                      as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expirationTime: json_.containsKey('expirationTime')
              ? json_['expirationTime'] as core.String
              : null,
          externalCatalogTableOptions:
              json_.containsKey('externalCatalogTableOptions')
                  ? ExternalCatalogTableOptions.fromJson(
                      json_['externalCatalogTableOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          externalDataConfiguration:
              json_.containsKey('externalDataConfiguration')
                  ? ExternalDataConfiguration.fromJson(
                      json_['externalDataConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          friendlyName: json_.containsKey('friendlyName')
              ? json_['friendlyName'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          materializedView: json_.containsKey('materializedView')
              ? MaterializedViewDefinition.fromJson(json_['materializedView']
                  as core.Map<core.String, core.dynamic>)
              : null,
          materializedViewStatus: json_.containsKey('materializedViewStatus')
              ? MaterializedViewStatus.fromJson(json_['materializedViewStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maxStaleness: json_.containsKey('maxStaleness')
              ? json_['maxStaleness'] as core.String
              : null,
          model: json_.containsKey('model')
              ? ModelDefinition.fromJson(
                  json_['model'] as core.Map<core.String, core.dynamic>)
              : null,
          numActiveLogicalBytes: json_.containsKey('numActiveLogicalBytes')
              ? json_['numActiveLogicalBytes'] as core.String
              : null,
          numActivePhysicalBytes: json_.containsKey('numActivePhysicalBytes')
              ? json_['numActivePhysicalBytes'] as core.String
              : null,
          numBytes: json_.containsKey('numBytes')
              ? json_['numBytes'] as core.String
              : null,
          numLongTermBytes: json_.containsKey('numLongTermBytes')
              ? json_['numLongTermBytes'] as core.String
              : null,
          numLongTermLogicalBytes: json_.containsKey('numLongTermLogicalBytes')
              ? json_['numLongTermLogicalBytes'] as core.String
              : null,
          numLongTermPhysicalBytes:
              json_.containsKey('numLongTermPhysicalBytes')
                  ? json_['numLongTermPhysicalBytes'] as core.String
                  : null,
          numPartitions: json_.containsKey('numPartitions')
              ? json_['numPartitions'] as core.String
              : null,
          numPhysicalBytes: json_.containsKey('numPhysicalBytes')
              ? json_['numPhysicalBytes'] as core.String
              : null,
          numRows: json_.containsKey('numRows')
              ? json_['numRows'] as core.String
              : null,
          numTimeTravelPhysicalBytes:
              json_.containsKey('numTimeTravelPhysicalBytes')
                  ? json_['numTimeTravelPhysicalBytes'] as core.String
                  : null,
          numTotalLogicalBytes: json_.containsKey('numTotalLogicalBytes')
              ? json_['numTotalLogicalBytes'] as core.String
              : null,
          numTotalPhysicalBytes: json_.containsKey('numTotalPhysicalBytes')
              ? json_['numTotalPhysicalBytes'] as core.String
              : null,
          partitionDefinition: json_.containsKey('partitionDefinition')
              ? PartitioningDefinition.fromJson(json_['partitionDefinition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rangePartitioning: json_.containsKey('rangePartitioning')
              ? RangePartitioning.fromJson(json_['rangePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          replicas: json_.containsKey('replicas')
              ? (json_['replicas'] as core.List)
                  .map((value) => TableReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requirePartitionFilter: json_.containsKey('requirePartitionFilter')
              ? json_['requirePartitionFilter'] as core.bool
              : null,
          resourceTags: json_.containsKey('resourceTags')
              ? (json_['resourceTags'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          schema: json_.containsKey('schema')
              ? TableSchema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          snapshotDefinition: json_.containsKey('snapshotDefinition')
              ? SnapshotDefinition.fromJson(json_['snapshotDefinition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamingBuffer: json_.containsKey('streamingBuffer')
              ? Streamingbuffer.fromJson(json_['streamingBuffer']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tableConstraints: json_.containsKey('tableConstraints')
              ? TableConstraints.fromJson(json_['tableConstraints']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tableReference: json_.containsKey('tableReference')
              ? TableReference.fromJson(json_['tableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tableReplicationInfo: json_.containsKey('tableReplicationInfo')
              ? TableReplicationInfo.fromJson(json_['tableReplicationInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timePartitioning: json_.containsKey('timePartitioning')
              ? TimePartitioning.fromJson(json_['timePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          view: json_.containsKey('view')
              ? ViewDefinition.fromJson(
                  json_['view'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (biglakeConfiguration != null)
          'biglakeConfiguration': biglakeConfiguration!,
        if (cloneDefinition != null) 'cloneDefinition': cloneDefinition!,
        if (clustering != null) 'clustering': clustering!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (defaultCollation != null) 'defaultCollation': defaultCollation!,
        if (defaultRoundingMode != null)
          'defaultRoundingMode': defaultRoundingMode!,
        if (description != null) 'description': description!,
        if (encryptionConfiguration != null)
          'encryptionConfiguration': encryptionConfiguration!,
        if (etag != null) 'etag': etag!,
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (externalCatalogTableOptions != null)
          'externalCatalogTableOptions': externalCatalogTableOptions!,
        if (externalDataConfiguration != null)
          'externalDataConfiguration': externalDataConfiguration!,
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (location != null) 'location': location!,
        if (materializedView != null) 'materializedView': materializedView!,
        if (materializedViewStatus != null)
          'materializedViewStatus': materializedViewStatus!,
        if (maxStaleness != null) 'maxStaleness': maxStaleness!,
        if (model != null) 'model': model!,
        if (numActiveLogicalBytes != null)
          'numActiveLogicalBytes': numActiveLogicalBytes!,
        if (numActivePhysicalBytes != null)
          'numActivePhysicalBytes': numActivePhysicalBytes!,
        if (numBytes != null) 'numBytes': numBytes!,
        if (numLongTermBytes != null) 'numLongTermBytes': numLongTermBytes!,
        if (numLongTermLogicalBytes != null)
          'numLongTermLogicalBytes': numLongTermLogicalBytes!,
        if (numLongTermPhysicalBytes != null)
          'numLongTermPhysicalBytes': numLongTermPhysicalBytes!,
        if (numPartitions != null) 'numPartitions': numPartitions!,
        if (numPhysicalBytes != null) 'numPhysicalBytes': numPhysicalBytes!,
        if (numRows != null) 'numRows': numRows!,
        if (numTimeTravelPhysicalBytes != null)
          'numTimeTravelPhysicalBytes': numTimeTravelPhysicalBytes!,
        if (numTotalLogicalBytes != null)
          'numTotalLogicalBytes': numTotalLogicalBytes!,
        if (numTotalPhysicalBytes != null)
          'numTotalPhysicalBytes': numTotalPhysicalBytes!,
        if (partitionDefinition != null)
          'partitionDefinition': partitionDefinition!,
        if (rangePartitioning != null) 'rangePartitioning': rangePartitioning!,
        if (replicas != null) 'replicas': replicas!,
        if (requirePartitionFilter != null)
          'requirePartitionFilter': requirePartitionFilter!,
        if (resourceTags != null) 'resourceTags': resourceTags!,
        if (schema != null) 'schema': schema!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (snapshotDefinition != null)
          'snapshotDefinition': snapshotDefinition!,
        if (streamingBuffer != null) 'streamingBuffer': streamingBuffer!,
        if (tableConstraints != null) 'tableConstraints': tableConstraints!,
        if (tableReference != null) 'tableReference': tableReference!,
        if (tableReplicationInfo != null)
          'tableReplicationInfo': tableReplicationInfo!,
        if (timePartitioning != null) 'timePartitioning': timePartitioning!,
        if (type != null) 'type': type!,
        if (view != null) 'view': view!,
      };
}

class TableCell {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? v;

  TableCell({
    this.v,
  });

  TableCell.fromJson(core.Map json_)
      : this(
          v: json_.containsKey('v') ? json_['v'] : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (v != null) 'v': v!,
      };
}

/// The pair of the foreign key column and primary key column.
class TableConstraintsForeignKeysColumnReferences {
  /// The column in the primary key that are referenced by the
  /// referencing_column.
  ///
  /// Required.
  core.String? referencedColumn;

  /// The column that composes the foreign key.
  ///
  /// Required.
  core.String? referencingColumn;

  TableConstraintsForeignKeysColumnReferences({
    this.referencedColumn,
    this.referencingColumn,
  });

  TableConstraintsForeignKeysColumnReferences.fromJson(core.Map json_)
      : this(
          referencedColumn: json_.containsKey('referencedColumn')
              ? json_['referencedColumn'] as core.String
              : null,
          referencingColumn: json_.containsKey('referencingColumn')
              ? json_['referencingColumn'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (referencedColumn != null) 'referencedColumn': referencedColumn!,
        if (referencingColumn != null) 'referencingColumn': referencingColumn!,
      };
}

class TableConstraintsForeignKeysReferencedTable {
  core.String? datasetId;
  core.String? projectId;
  core.String? tableId;

  TableConstraintsForeignKeysReferencedTable({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  TableConstraintsForeignKeysReferencedTable.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          tableId: json_.containsKey('tableId')
              ? json_['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}

/// Represents a foreign key constraint on a table's columns.
class TableConstraintsForeignKeys {
  /// The columns that compose the foreign key.
  ///
  /// Required.
  core.List<TableConstraintsForeignKeysColumnReferences>? columnReferences;

  /// Set only if the foreign key constraint is named.
  ///
  /// Optional.
  core.String? name;
  TableConstraintsForeignKeysReferencedTable? referencedTable;

  TableConstraintsForeignKeys({
    this.columnReferences,
    this.name,
    this.referencedTable,
  });

  TableConstraintsForeignKeys.fromJson(core.Map json_)
      : this(
          columnReferences: json_.containsKey('columnReferences')
              ? (json_['columnReferences'] as core.List)
                  .map((value) =>
                      TableConstraintsForeignKeysColumnReferences.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          referencedTable: json_.containsKey('referencedTable')
              ? TableConstraintsForeignKeysReferencedTable.fromJson(
                  json_['referencedTable']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnReferences != null) 'columnReferences': columnReferences!,
        if (name != null) 'name': name!,
        if (referencedTable != null) 'referencedTable': referencedTable!,
      };
}

/// Represents the primary key constraint on a table's columns.
class TableConstraintsPrimaryKey {
  /// The columns that are composed of the primary key constraint.
  ///
  /// Required.
  core.List<core.String>? columns;

  TableConstraintsPrimaryKey({
    this.columns,
  });

  TableConstraintsPrimaryKey.fromJson(core.Map json_)
      : this(
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
      };
}

/// The TableConstraints defines the primary key and foreign key.
class TableConstraints {
  /// Present only if the table has a foreign key.
  ///
  /// The foreign key is not enforced.
  ///
  /// Optional.
  core.List<TableConstraintsForeignKeys>? foreignKeys;

  /// Represents the primary key constraint on a table's columns.
  TableConstraintsPrimaryKey? primaryKey;

  TableConstraints({
    this.foreignKeys,
    this.primaryKey,
  });

  TableConstraints.fromJson(core.Map json_)
      : this(
          foreignKeys: json_.containsKey('foreignKeys')
              ? (json_['foreignKeys'] as core.List)
                  .map((value) => TableConstraintsForeignKeys.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          primaryKey: json_.containsKey('primaryKey')
              ? TableConstraintsPrimaryKey.fromJson(
                  json_['primaryKey'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (foreignKeys != null) 'foreignKeys': foreignKeys!,
        if (primaryKey != null) 'primaryKey': primaryKey!,
      };
}

/// Data for a single insertion row.
class TableDataInsertAllRequestRows {
  /// Insertion ID for best-effort deduplication.
  ///
  /// This feature is not recommended, and users seeking stronger insertion
  /// semantics are encouraged to use other mechanisms such as the BigQuery
  /// Write API.
  core.String? insertId;

  /// Data for a single row.
  JsonObject? json;

  TableDataInsertAllRequestRows({
    this.insertId,
    this.json,
  });

  TableDataInsertAllRequestRows.fromJson(core.Map json_)
      : this(
          insertId: json_.containsKey('insertId')
              ? json_['insertId'] as core.String
              : null,
          json: json_.containsKey('json')
              ? json_['json'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insertId != null) 'insertId': insertId!,
        if (json != null) 'json': json!,
      };
}

/// Request for sending a single streaming insert.
class TableDataInsertAllRequest {
  /// Accept rows that contain values that do not match the schema.
  ///
  /// The unknown values are ignored. Default is false, which treats unknown
  /// values as errors.
  ///
  /// Optional.
  core.bool? ignoreUnknownValues;

  /// The resource type of the response.
  ///
  /// The value is not checked at the backend. Historically, it has been set to
  /// "bigquery#tableDataInsertAllRequest" but you are not required to set it.
  ///
  /// Optional.
  core.String? kind;
  core.List<TableDataInsertAllRequestRows>? rows;

  /// Insert all valid rows of a request, even if invalid rows exist.
  ///
  /// The default value is false, which causes the entire request to fail if any
  /// invalid rows exist.
  ///
  /// Optional.
  core.bool? skipInvalidRows;

  /// If specified, treats the destination table as a base template, and inserts
  /// the rows into an instance table named "{destination}{templateSuffix}".
  ///
  /// BigQuery will manage creation of the instance table, using the schema of
  /// the base template table. See
  /// https://cloud.google.com/bigquery/streaming-data-into-bigquery#template-tables
  /// for considerations when working with templates tables.
  ///
  /// Optional.
  core.String? templateSuffix;

  /// Unique request trace id.
  ///
  /// Used for debugging purposes only. It is case-sensitive, limited to up to
  /// 36 ASCII characters. A UUID is recommended.
  ///
  /// Optional.
  core.String? traceId;

  TableDataInsertAllRequest({
    this.ignoreUnknownValues,
    this.kind,
    this.rows,
    this.skipInvalidRows,
    this.templateSuffix,
    this.traceId,
  });

  TableDataInsertAllRequest.fromJson(core.Map json_)
      : this(
          ignoreUnknownValues: json_.containsKey('ignoreUnknownValues')
              ? json_['ignoreUnknownValues'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => TableDataInsertAllRequestRows.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          skipInvalidRows: json_.containsKey('skipInvalidRows')
              ? json_['skipInvalidRows'] as core.bool
              : null,
          templateSuffix: json_.containsKey('templateSuffix')
              ? json_['templateSuffix'] as core.String
              : null,
          traceId: json_.containsKey('traceId')
              ? json_['traceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ignoreUnknownValues != null)
          'ignoreUnknownValues': ignoreUnknownValues!,
        if (kind != null) 'kind': kind!,
        if (rows != null) 'rows': rows!,
        if (skipInvalidRows != null) 'skipInvalidRows': skipInvalidRows!,
        if (templateSuffix != null) 'templateSuffix': templateSuffix!,
        if (traceId != null) 'traceId': traceId!,
      };
}

/// Error details about a single row's insertion.
class TableDataInsertAllResponseInsertErrors {
  /// Error information for the row indicated by the index property.
  core.List<ErrorProto>? errors;

  /// The index of the row that error applies to.
  core.int? index;

  TableDataInsertAllResponseInsertErrors({
    this.errors,
    this.index,
  });

  TableDataInsertAllResponseInsertErrors.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ErrorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (index != null) 'index': index!,
      };
}

/// Describes the format of a streaming insert response.
class TableDataInsertAllResponse {
  /// Describes specific errors encountered while processing the request.
  core.List<TableDataInsertAllResponseInsertErrors>? insertErrors;

  /// Returns "bigquery#tableDataInsertAllResponse".
  core.String? kind;

  TableDataInsertAllResponse({
    this.insertErrors,
    this.kind,
  });

  TableDataInsertAllResponse.fromJson(core.Map json_)
      : this(
          insertErrors: json_.containsKey('insertErrors')
              ? (json_['insertErrors'] as core.List)
                  .map((value) =>
                      TableDataInsertAllResponseInsertErrors.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insertErrors != null) 'insertErrors': insertErrors!,
        if (kind != null) 'kind': kind!,
      };
}

class TableDataList {
  /// A hash of this page of results.
  core.String? etag;

  /// The resource type of the response.
  core.String? kind;

  /// A token used for paging results.
  ///
  /// Providing this token instead of the startIndex parameter can help you
  /// retrieve stable results when an underlying table is changing.
  core.String? pageToken;

  /// Rows of results.
  core.List<TableRow>? rows;

  /// Total rows of the entire table.
  ///
  /// In order to show default value 0 we have to present it as string.
  core.String? totalRows;

  TableDataList({
    this.etag,
    this.kind,
    this.pageToken,
    this.rows,
    this.totalRows,
  });

  TableDataList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => TableRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalRows: json_.containsKey('totalRows')
              ? json_['totalRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (rows != null) 'rows': rows!,
        if (totalRows != null) 'totalRows': totalRows!,
      };
}

/// Deprecated.
class TableFieldSchemaCategories {
  /// Deprecated.
  core.List<core.String>? names;

  TableFieldSchemaCategories({
    this.names,
  });

  TableFieldSchemaCategories.fromJson(core.Map json_)
      : this(
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// The policy tags attached to this field, used for field-level access control.
///
/// If not set, defaults to empty policy_tags.
///
/// Optional.
class TableFieldSchemaPolicyTags {
  /// A list of policy tag resource names.
  ///
  /// For example, "projects/1/locations/eu/taxonomies/2/policyTags/3". At most
  /// 1 policy tag is currently allowed.
  core.List<core.String>? names;

  TableFieldSchemaPolicyTags({
    this.names,
  });

  TableFieldSchemaPolicyTags.fromJson(core.Map json_)
      : this(
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// Represents the type of a field element.
class TableFieldSchemaRangeElementType {
  /// The type of a field element.
  ///
  /// For more information, see TableFieldSchema.type.
  ///
  /// Required.
  core.String? type;

  TableFieldSchemaRangeElementType({
    this.type,
  });

  TableFieldSchemaRangeElementType.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// A field in TableSchema
class TableFieldSchema {
  /// Deprecated.
  TableFieldSchemaCategories? categories;

  /// Field collation can be set only when the type of field is STRING.
  ///
  /// The following values are supported: * 'und:ci': undetermined locale, case
  /// insensitive. * '': empty string. Default to case-sensitive behavior.
  ///
  /// Optional.
  core.String? collation;

  /// A SQL expression to specify the
  /// [default value](https://cloud.google.com/bigquery/docs/default-values) for
  /// this field.
  ///
  /// Optional.
  core.String? defaultValueExpression;

  /// The field description.
  ///
  /// The maximum length is 1,024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Describes the nested schema fields if the type property is set to RECORD.
  ///
  /// Optional.
  core.List<TableFieldSchema>? fields;

  /// Maximum length of values of this field for STRINGS or BYTES.
  ///
  /// If max_length is not specified, no maximum length constraint is imposed on
  /// this field. If type = "STRING", then max_length represents the maximum
  /// UTF-8 length of strings in this field. If type = "BYTES", then max_length
  /// represents the maximum number of bytes in this field. It is invalid to set
  /// this field if type ≠ "STRING" and ≠ "BYTES".
  ///
  /// Optional.
  core.String? maxLength;

  /// The field mode.
  ///
  /// Possible values include NULLABLE, REQUIRED and REPEATED. The default value
  /// is NULLABLE.
  ///
  /// Optional.
  core.String? mode;

  /// The field name.
  ///
  /// The name must contain only letters (a-z, A-Z), numbers (0-9), or
  /// underscores (_), and must start with a letter or underscore. The maximum
  /// length is 300 characters.
  ///
  /// Required.
  core.String? name;

  /// The policy tags attached to this field, used for field-level access
  /// control.
  ///
  /// If not set, defaults to empty policy_tags.
  ///
  /// Optional.
  TableFieldSchemaPolicyTags? policyTags;

  /// Precision (maximum number of total digits in base 10) and scale (maximum
  /// number of digits in the fractional part in base 10) constraints for values
  /// of this field for NUMERIC or BIGNUMERIC.
  ///
  /// It is invalid to set precision or scale if type ≠ "NUMERIC" and ≠
  /// "BIGNUMERIC". If precision and scale are not specified, no value range
  /// constraint is imposed on this field insofar as values are permitted by the
  /// type. Values of this NUMERIC or BIGNUMERIC field must be in this range
  /// when: * Precision (P) and scale (S) are specified: \[-10P-S + 10-S, 10P-S
  /// - 10-S\] * Precision (P) is specified but not scale (and thus scale is
  /// interpreted to be equal to zero): \[-10P + 1, 10P - 1\]. Acceptable values
  /// for precision and scale if both are specified: * If type = "NUMERIC": 1 ≤
  /// precision - scale ≤ 29 and 0 ≤ scale ≤ 9. * If type = "BIGNUMERIC": 1 ≤
  /// precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision
  /// if only precision is specified but not scale (and thus scale is
  /// interpreted to be equal to zero): * If type = "NUMERIC": 1 ≤ precision ≤
  /// 29. * If type = "BIGNUMERIC": 1 ≤ precision ≤ 38. If scale is specified
  /// but not precision, then it is invalid.
  ///
  /// Optional.
  core.String? precision;

  /// Represents the type of a field element.
  TableFieldSchemaRangeElementType? rangeElementType;

  /// Specifies the rounding mode to be used when storing values of NUMERIC and
  /// BIGNUMERIC type.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ROUNDING_MODE_UNSPECIFIED" : Unspecified will default to using
  /// ROUND_HALF_AWAY_FROM_ZERO.
  /// - "ROUND_HALF_AWAY_FROM_ZERO" : ROUND_HALF_AWAY_FROM_ZERO rounds half
  /// values away from zero when applying precision and scale upon writing of
  /// NUMERIC and BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 =\> 1 1.5,
  /// 1.6, 1.7, 1.8, 1.9 =\> 2
  /// - "ROUND_HALF_EVEN" : ROUND_HALF_EVEN rounds half values to the nearest
  /// even value when applying precision and scale upon writing of NUMERIC and
  /// BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 =\> 1 1.5 =\> 2 1.6,
  /// 1.7, 1.8, 1.9 =\> 2 2.5 =\> 2
  core.String? roundingMode;

  /// See documentation for precision.
  ///
  /// Optional.
  core.String? scale;

  /// The field data type.
  ///
  /// Possible values include: * STRING * BYTES * INTEGER (or INT64) * FLOAT (or
  /// FLOAT64) * BOOLEAN (or BOOL) * TIMESTAMP * DATE * TIME * DATETIME *
  /// GEOGRAPHY * NUMERIC * BIGNUMERIC * JSON * RECORD (or STRUCT) * RANGE
  /// (\[Preview\](/products/#product-launch-stages)) Use of RECORD/STRUCT
  /// indicates that the field contains a nested schema.
  ///
  /// Required.
  core.String? type;

  TableFieldSchema({
    this.categories,
    this.collation,
    this.defaultValueExpression,
    this.description,
    this.fields,
    this.maxLength,
    this.mode,
    this.name,
    this.policyTags,
    this.precision,
    this.rangeElementType,
    this.roundingMode,
    this.scale,
    this.type,
  });

  TableFieldSchema.fromJson(core.Map json_)
      : this(
          categories: json_.containsKey('categories')
              ? TableFieldSchemaCategories.fromJson(
                  json_['categories'] as core.Map<core.String, core.dynamic>)
              : null,
          collation: json_.containsKey('collation')
              ? json_['collation'] as core.String
              : null,
          defaultValueExpression: json_.containsKey('defaultValueExpression')
              ? json_['defaultValueExpression'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => TableFieldSchema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxLength: json_.containsKey('maxLength')
              ? json_['maxLength'] as core.String
              : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          policyTags: json_.containsKey('policyTags')
              ? TableFieldSchemaPolicyTags.fromJson(
                  json_['policyTags'] as core.Map<core.String, core.dynamic>)
              : null,
          precision: json_.containsKey('precision')
              ? json_['precision'] as core.String
              : null,
          rangeElementType: json_.containsKey('rangeElementType')
              ? TableFieldSchemaRangeElementType.fromJson(
                  json_['rangeElementType']
                      as core.Map<core.String, core.dynamic>)
              : null,
          roundingMode: json_.containsKey('roundingMode')
              ? json_['roundingMode'] as core.String
              : null,
          scale:
              json_.containsKey('scale') ? json_['scale'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
        if (collation != null) 'collation': collation!,
        if (defaultValueExpression != null)
          'defaultValueExpression': defaultValueExpression!,
        if (description != null) 'description': description!,
        if (fields != null) 'fields': fields!,
        if (maxLength != null) 'maxLength': maxLength!,
        if (mode != null) 'mode': mode!,
        if (name != null) 'name': name!,
        if (policyTags != null) 'policyTags': policyTags!,
        if (precision != null) 'precision': precision!,
        if (rangeElementType != null) 'rangeElementType': rangeElementType!,
        if (roundingMode != null) 'roundingMode': roundingMode!,
        if (scale != null) 'scale': scale!,
        if (type != null) 'type': type!,
      };
}

/// Information about a logical view.
class TableListTablesView {
  /// Specifices the privacy policy for the view.
  PrivacyPolicy? privacyPolicy;

  /// True if view is defined in legacy SQL dialect, false if in GoogleSQL.
  core.bool? useLegacySql;

  TableListTablesView({
    this.privacyPolicy,
    this.useLegacySql,
  });

  TableListTablesView.fromJson(core.Map json_)
      : this(
          privacyPolicy: json_.containsKey('privacyPolicy')
              ? PrivacyPolicy.fromJson(
                  json_['privacyPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          useLegacySql: json_.containsKey('useLegacySql')
              ? json_['useLegacySql'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privacyPolicy != null) 'privacyPolicy': privacyPolicy!,
        if (useLegacySql != null) 'useLegacySql': useLegacySql!,
      };
}

class TableListTables {
  /// Clustering specification for this table, if configured.
  Clustering? clustering;

  /// The time when this table was created, in milliseconds since the epoch.
  ///
  /// Output only.
  core.String? creationTime;

  /// The time when this table expires, in milliseconds since the epoch.
  ///
  /// If not present, the table will persist indefinitely. Expired tables will
  /// be deleted and their storage reclaimed.
  core.String? expirationTime;

  /// The user-friendly name for this table.
  core.String? friendlyName;

  /// An opaque ID of the table.
  core.String? id;

  /// The resource type.
  core.String? kind;

  /// The labels associated with this table.
  ///
  /// You can use these to organize and group your tables.
  core.Map<core.String, core.String>? labels;

  /// The range partitioning for this table.
  RangePartitioning? rangePartitioning;

  /// If set to true, queries including this table must specify a partition
  /// filter.
  ///
  /// This filter is used for partition elimination.
  ///
  /// Optional.
  core.bool? requirePartitionFilter;

  /// A reference uniquely identifying table.
  TableReference? tableReference;

  /// The time-based partitioning for this table.
  TimePartitioning? timePartitioning;

  /// The type of table.
  core.String? type;

  /// Information about a logical view.
  TableListTablesView? view;

  TableListTables({
    this.clustering,
    this.creationTime,
    this.expirationTime,
    this.friendlyName,
    this.id,
    this.kind,
    this.labels,
    this.rangePartitioning,
    this.requirePartitionFilter,
    this.tableReference,
    this.timePartitioning,
    this.type,
    this.view,
  });

  TableListTables.fromJson(core.Map json_)
      : this(
          clustering: json_.containsKey('clustering')
              ? Clustering.fromJson(
                  json_['clustering'] as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          expirationTime: json_.containsKey('expirationTime')
              ? json_['expirationTime'] as core.String
              : null,
          friendlyName: json_.containsKey('friendlyName')
              ? json_['friendlyName'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          rangePartitioning: json_.containsKey('rangePartitioning')
              ? RangePartitioning.fromJson(json_['rangePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requirePartitionFilter: json_.containsKey('requirePartitionFilter')
              ? json_['requirePartitionFilter'] as core.bool
              : null,
          tableReference: json_.containsKey('tableReference')
              ? TableReference.fromJson(json_['tableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timePartitioning: json_.containsKey('timePartitioning')
              ? TimePartitioning.fromJson(json_['timePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          view: json_.containsKey('view')
              ? TableListTablesView.fromJson(
                  json_['view'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clustering != null) 'clustering': clustering!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (rangePartitioning != null) 'rangePartitioning': rangePartitioning!,
        if (requirePartitionFilter != null)
          'requirePartitionFilter': requirePartitionFilter!,
        if (tableReference != null) 'tableReference': tableReference!,
        if (timePartitioning != null) 'timePartitioning': timePartitioning!,
        if (type != null) 'type': type!,
        if (view != null) 'view': view!,
      };
}

/// Partial projection of the metadata for a given table in a list response.
class TableList {
  /// A hash of this page of results.
  core.String? etag;

  /// The type of list.
  core.String? kind;

  /// A token to request the next page of results.
  core.String? nextPageToken;

  /// Tables in the requested dataset.
  core.List<TableListTables>? tables;

  /// The total number of tables in the dataset.
  core.int? totalItems;

  TableList({
    this.etag,
    this.kind,
    this.nextPageToken,
    this.tables,
    this.totalItems,
  });

  TableList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tables: json_.containsKey('tables')
              ? (json_['tables'] as core.List)
                  .map((value) => TableListTables.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalItems: json_.containsKey('totalItems')
              ? json_['totalItems'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tables != null) 'tables': tables!,
        if (totalItems != null) 'totalItems': totalItems!,
      };
}

/// Table level detail on the usage of metadata caching.
///
/// Only set for Metadata caching eligible tables referenced in the query.
class TableMetadataCacheUsage {
  /// Free form human-readable reason metadata caching was unused for the job.
  core.String? explanation;

  /// Metadata caching eligible table referenced in the query.
  TableReference? tableReference;

  /// \[Table type\](/bigquery/docs/reference/rest/v2/tables#Table.FIELDS.type).
  core.String? tableType;

  /// Reason for not using metadata caching for the table.
  /// Possible string values are:
  /// - "UNUSED_REASON_UNSPECIFIED" : Unused reasons not specified.
  /// - "EXCEEDED_MAX_STALENESS" : Metadata cache was outside the table's
  /// maxStaleness.
  /// - "METADATA_CACHING_NOT_ENABLED" : Metadata caching feature is not
  /// enabled. \[Update BigLake tables\]
  /// (/bigquery/docs/create-cloud-storage-table-biglake#update-biglake-tables)
  /// to enable the metadata caching.
  /// - "OTHER_REASON" : Other unknown reason.
  core.String? unusedReason;

  TableMetadataCacheUsage({
    this.explanation,
    this.tableReference,
    this.tableType,
    this.unusedReason,
  });

  TableMetadataCacheUsage.fromJson(core.Map json_)
      : this(
          explanation: json_.containsKey('explanation')
              ? json_['explanation'] as core.String
              : null,
          tableReference: json_.containsKey('tableReference')
              ? TableReference.fromJson(json_['tableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tableType: json_.containsKey('tableType')
              ? json_['tableType'] as core.String
              : null,
          unusedReason: json_.containsKey('unusedReason')
              ? json_['unusedReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (explanation != null) 'explanation': explanation!,
        if (tableReference != null) 'tableReference': tableReference!,
        if (tableType != null) 'tableType': tableType!,
        if (unusedReason != null) 'unusedReason': unusedReason!,
      };
}

class TableReference {
  /// The ID of the dataset containing this table.
  ///
  /// Required.
  core.String? datasetId;

  /// The ID of the project containing this table.
  ///
  /// Required.
  core.String? projectId;

  /// The ID of the table.
  ///
  /// The ID can contain Unicode characters in category L (letter), M (mark), N
  /// (number), Pc (connector, including underscore), Pd (dash), and Zs (space).
  /// For more information, see
  /// [General Category](https://wikipedia.org/wiki/Unicode_character_property#General_Category).
  /// The maximum length is 1,024 characters. Certain operations allow suffixing
  /// of the table ID with a partition decorator, such as
  /// `sample_table$20190123`.
  ///
  /// Required.
  core.String? tableId;

  TableReference({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  TableReference.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          tableId: json_.containsKey('tableId')
              ? json_['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}

/// Replication info of a table created using `AS REPLICA` DDL like: `CREATE
/// MATERIALIZED VIEW mv1 AS REPLICA OF src_mv`
class TableReplicationInfo {
  /// If source is a materialized view, this field signifies the last refresh
  /// time of the source.
  ///
  /// Optional. Output only.
  core.String? replicatedSourceLastRefreshTime;

  /// Replication error that will permanently stopped table replication.
  ///
  /// Optional. Output only.
  ErrorProto? replicationError;

  /// Specifies the interval at which the source table is polled for updates.
  ///
  /// Required.
  core.String? replicationIntervalMs;

  /// Replication status of configured replication.
  ///
  /// Optional. Output only.
  /// Possible string values are:
  /// - "REPLICATION_STATUS_UNSPECIFIED" : Default value.
  /// - "ACTIVE" : Replication is Active with no errors.
  /// - "SOURCE_DELETED" : Source object is deleted.
  /// - "PERMISSION_DENIED" : Source revoked replication permissions.
  /// - "UNSUPPORTED_CONFIGURATION" : Source configuration doesn’t allow
  /// replication.
  core.String? replicationStatus;

  /// Source table reference that is replicated.
  ///
  /// Required.
  TableReference? sourceTable;

  TableReplicationInfo({
    this.replicatedSourceLastRefreshTime,
    this.replicationError,
    this.replicationIntervalMs,
    this.replicationStatus,
    this.sourceTable,
  });

  TableReplicationInfo.fromJson(core.Map json_)
      : this(
          replicatedSourceLastRefreshTime:
              json_.containsKey('replicatedSourceLastRefreshTime')
                  ? json_['replicatedSourceLastRefreshTime'] as core.String
                  : null,
          replicationError: json_.containsKey('replicationError')
              ? ErrorProto.fromJson(json_['replicationError']
                  as core.Map<core.String, core.dynamic>)
              : null,
          replicationIntervalMs: json_.containsKey('replicationIntervalMs')
              ? json_['replicationIntervalMs'] as core.String
              : null,
          replicationStatus: json_.containsKey('replicationStatus')
              ? json_['replicationStatus'] as core.String
              : null,
          sourceTable: json_.containsKey('sourceTable')
              ? TableReference.fromJson(
                  json_['sourceTable'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (replicatedSourceLastRefreshTime != null)
          'replicatedSourceLastRefreshTime': replicatedSourceLastRefreshTime!,
        if (replicationError != null) 'replicationError': replicationError!,
        if (replicationIntervalMs != null)
          'replicationIntervalMs': replicationIntervalMs!,
        if (replicationStatus != null) 'replicationStatus': replicationStatus!,
        if (sourceTable != null) 'sourceTable': sourceTable!,
      };
}

class TableRow {
  /// Represents a single row in the result set, consisting of one or more
  /// fields.
  core.List<TableCell>? f;

  TableRow({
    this.f,
  });

  TableRow.fromJson(core.Map json_)
      : this(
          f: json_.containsKey('f')
              ? (json_['f'] as core.List)
                  .map((value) => TableCell.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (f != null) 'f': f!,
      };
}

/// Schema of a table
class TableSchema {
  /// Describes the fields in a table.
  core.List<TableFieldSchema>? fields;

  TableSchema({
    this.fields,
  });

  TableSchema.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => TableFieldSchema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

class TimePartitioning {
  /// Number of milliseconds for which to keep the storage for a partition.
  ///
  /// A wrapper is used here because 0 is an invalid value.
  ///
  /// Optional.
  core.String? expirationMs;

  /// If not set, the table is partitioned by pseudo column '_PARTITIONTIME'; if
  /// set, the table is partitioned by this field.
  ///
  /// The field must be a top-level TIMESTAMP or DATE field. Its mode must be
  /// NULLABLE or REQUIRED. A wrapper is used here because an empty string is an
  /// invalid value.
  ///
  /// Optional.
  core.String? field;

  /// If set to true, queries over this table require a partition filter that
  /// can be used for partition elimination to be specified.
  ///
  /// This field is deprecated; please set the field with the same name on the
  /// table itself instead. This field needs a wrapper because we want to output
  /// the default value, false, if the user explicitly set it.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? requirePartitionFilter;

  /// The supported types are DAY, HOUR, MONTH, and YEAR, which will generate
  /// one partition per day, hour, month, and year, respectively.
  ///
  /// Required.
  core.String? type;

  TimePartitioning({
    this.expirationMs,
    this.field,
    this.requirePartitionFilter,
    this.type,
  });

  TimePartitioning.fromJson(core.Map json_)
      : this(
          expirationMs: json_.containsKey('expirationMs')
              ? json_['expirationMs'] as core.String
              : null,
          field:
              json_.containsKey('field') ? json_['field'] as core.String : null,
          requirePartitionFilter: json_.containsKey('requirePartitionFilter')
              ? json_['requirePartitionFilter'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expirationMs != null) 'expirationMs': expirationMs!,
        if (field != null) 'field': field!,
        if (requirePartitionFilter != null)
          'requirePartitionFilter': requirePartitionFilter!,
        if (type != null) 'type': type!,
      };
}

/// Options used in model training.
class TrainingOptions {
  /// Activation function of the neural nets.
  core.String? activationFn;

  /// If true, detect step changes and make data adjustment in the input time
  /// series.
  core.bool? adjustStepChanges;

  /// Whether to use approximate feature contribution method in XGBoost model
  /// explanation for global explain.
  core.bool? approxGlobalFeatureContrib;

  /// Whether to enable auto ARIMA or not.
  core.bool? autoArima;

  /// The max value of the sum of non-seasonal p and q.
  core.String? autoArimaMaxOrder;

  /// The min value of the sum of non-seasonal p and q.
  core.String? autoArimaMinOrder;

  /// Whether to calculate class weights automatically based on the popularity
  /// of each label.
  core.bool? autoClassWeights;

  /// Batch size for dnn models.
  core.String? batchSize;

  /// Booster type for boosted tree models.
  /// Possible string values are:
  /// - "BOOSTER_TYPE_UNSPECIFIED" : Unspecified booster type.
  /// - "GBTREE" : Gbtree booster.
  /// - "DART" : Dart booster.
  core.String? boosterType;

  /// Budget in hours for AutoML training.
  core.double? budgetHours;

  /// Whether or not p-value test should be computed for this model.
  ///
  /// Only available for linear and logistic regression models.
  core.bool? calculatePValues;

  /// Categorical feature encoding method.
  /// Possible string values are:
  /// - "ENCODING_METHOD_UNSPECIFIED" : Unspecified encoding method.
  /// - "ONE_HOT_ENCODING" : Applies one-hot encoding.
  /// - "LABEL_ENCODING" : Applies label encoding.
  /// - "DUMMY_ENCODING" : Applies dummy encoding.
  core.String? categoryEncodingMethod;

  /// If true, clean spikes and dips in the input time series.
  core.bool? cleanSpikesAndDips;

  /// Enums for color space, used for processing images in Object Table.
  ///
  /// See more details at https://www.tensorflow.org/io/tutorials/colorspace.
  /// Possible string values are:
  /// - "COLOR_SPACE_UNSPECIFIED" : Unspecified color space
  /// - "RGB" : RGB
  /// - "HSV" : HSV
  /// - "YIQ" : YIQ
  /// - "YUV" : YUV
  /// - "GRAYSCALE" : GRAYSCALE
  core.String? colorSpace;

  /// Subsample ratio of columns for each level for boosted tree models.
  core.double? colsampleBylevel;

  /// Subsample ratio of columns for each node(split) for boosted tree models.
  core.double? colsampleBynode;

  /// Subsample ratio of columns when constructing each tree for boosted tree
  /// models.
  core.double? colsampleBytree;

  /// Type of normalization algorithm for boosted tree models using dart
  /// booster.
  /// Possible string values are:
  /// - "DART_NORMALIZE_TYPE_UNSPECIFIED" : Unspecified dart normalize type.
  /// - "TREE" : New trees have the same weight of each of dropped trees.
  /// - "FOREST" : New trees have the same weight of sum of dropped trees.
  core.String? dartNormalizeType;

  /// The data frequency of a time series.
  /// Possible string values are:
  /// - "DATA_FREQUENCY_UNSPECIFIED" : Default value.
  /// - "AUTO_FREQUENCY" : Automatically inferred from timestamps.
  /// - "YEARLY" : Yearly data.
  /// - "QUARTERLY" : Quarterly data.
  /// - "MONTHLY" : Monthly data.
  /// - "WEEKLY" : Weekly data.
  /// - "DAILY" : Daily data.
  /// - "HOURLY" : Hourly data.
  /// - "PER_MINUTE" : Per-minute data.
  core.String? dataFrequency;

  /// The column to split data with.
  ///
  /// This column won't be used as a feature. 1. When data_split_method is
  /// CUSTOM, the corresponding column should be boolean. The rows with true
  /// value tag are eval data, and the false are training data. 2. When
  /// data_split_method is SEQ, the first DATA_SPLIT_EVAL_FRACTION rows (from
  /// smallest to largest) in the corresponding column are used as training
  /// data, and the rest are eval data. It respects the order in Orderable data
  /// types:
  /// https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types#data-type-properties
  core.String? dataSplitColumn;

  /// The fraction of evaluation data over the whole input data.
  ///
  /// The rest of data will be used as training data. The format should be
  /// double. Accurate to two decimal places. Default value is 0.2.
  core.double? dataSplitEvalFraction;

  /// The data split type for training and evaluation, e.g. RANDOM.
  /// Possible string values are:
  /// - "DATA_SPLIT_METHOD_UNSPECIFIED" : Default value.
  /// - "RANDOM" : Splits data randomly.
  /// - "CUSTOM" : Splits data with the user provided tags.
  /// - "SEQUENTIAL" : Splits data sequentially.
  /// - "NO_SPLIT" : Data split will be skipped.
  /// - "AUTO_SPLIT" : Splits data automatically: Uses NO_SPLIT if the data size
  /// is small. Otherwise uses RANDOM.
  core.String? dataSplitMethod;

  /// If true, perform decompose time series and save the results.
  core.bool? decomposeTimeSeries;

  /// Distance type for clustering models.
  /// Possible string values are:
  /// - "DISTANCE_TYPE_UNSPECIFIED" : Default value.
  /// - "EUCLIDEAN" : Eculidean distance.
  /// - "COSINE" : Cosine distance.
  core.String? distanceType;

  /// Dropout probability for dnn models.
  core.double? dropout;

  /// Whether to stop early when the loss doesn't improve significantly any more
  /// (compared to min_relative_progress).
  ///
  /// Used only for iterative training algorithms.
  core.bool? earlyStop;

  /// If true, enable global explanation during training.
  core.bool? enableGlobalExplain;

  /// Feedback type that specifies which algorithm to run for matrix
  /// factorization.
  /// Possible string values are:
  /// - "FEEDBACK_TYPE_UNSPECIFIED" : Default value.
  /// - "IMPLICIT" : Use weighted-als for implicit feedback problems.
  /// - "EXPLICIT" : Use nonweighted-als for explicit feedback problems.
  core.String? feedbackType;

  /// Whether the model should include intercept during model training.
  core.bool? fitIntercept;

  /// Hidden units for dnn models.
  core.List<core.String>? hiddenUnits;

  /// The geographical region based on which the holidays are considered in time
  /// series modeling.
  ///
  /// If a valid value is specified, then holiday effects modeling is enabled.
  /// Possible string values are:
  /// - "HOLIDAY_REGION_UNSPECIFIED" : Holiday region unspecified.
  /// - "GLOBAL" : Global.
  /// - "NA" : North America.
  /// - "JAPAC" : Japan and Asia Pacific: Korea, Greater China, India,
  /// Australia, and New Zealand.
  /// - "EMEA" : Europe, the Middle East and Africa.
  /// - "LAC" : Latin America and the Caribbean.
  /// - "AE" : United Arab Emirates
  /// - "AR" : Argentina
  /// - "AT" : Austria
  /// - "AU" : Australia
  /// - "BE" : Belgium
  /// - "BR" : Brazil
  /// - "CA" : Canada
  /// - "CH" : Switzerland
  /// - "CL" : Chile
  /// - "CN" : China
  /// - "CO" : Colombia
  /// - "CS" : Czechoslovakia
  /// - "CZ" : Czech Republic
  /// - "DE" : Germany
  /// - "DK" : Denmark
  /// - "DZ" : Algeria
  /// - "EC" : Ecuador
  /// - "EE" : Estonia
  /// - "EG" : Egypt
  /// - "ES" : Spain
  /// - "FI" : Finland
  /// - "FR" : France
  /// - "GB" : Great Britain (United Kingdom)
  /// - "GR" : Greece
  /// - "HK" : Hong Kong
  /// - "HU" : Hungary
  /// - "ID" : Indonesia
  /// - "IE" : Ireland
  /// - "IL" : Israel
  /// - "IN" : India
  /// - "IR" : Iran
  /// - "IT" : Italy
  /// - "JP" : Japan
  /// - "KR" : Korea (South)
  /// - "LV" : Latvia
  /// - "MA" : Morocco
  /// - "MX" : Mexico
  /// - "MY" : Malaysia
  /// - "NG" : Nigeria
  /// - "NL" : Netherlands
  /// - "NO" : Norway
  /// - "NZ" : New Zealand
  /// - "PE" : Peru
  /// - "PH" : Philippines
  /// - "PK" : Pakistan
  /// - "PL" : Poland
  /// - "PT" : Portugal
  /// - "RO" : Romania
  /// - "RS" : Serbia
  /// - "RU" : Russian Federation
  /// - "SA" : Saudi Arabia
  /// - "SE" : Sweden
  /// - "SG" : Singapore
  /// - "SI" : Slovenia
  /// - "SK" : Slovakia
  /// - "TH" : Thailand
  /// - "TR" : Turkey
  /// - "TW" : Taiwan
  /// - "UA" : Ukraine
  /// - "US" : United States
  /// - "VE" : Venezuela
  /// - "VN" : Viet Nam
  /// - "ZA" : South Africa
  core.String? holidayRegion;

  /// A list of geographical regions that are used for time series modeling.
  core.List<core.String>? holidayRegions;

  /// The number of periods ahead that need to be forecasted.
  core.String? horizon;

  /// The target evaluation metrics to optimize the hyperparameters for.
  core.List<core.String>? hparamTuningObjectives;

  /// Include drift when fitting an ARIMA model.
  core.bool? includeDrift;

  /// Specifies the initial learning rate for the line search learn rate
  /// strategy.
  core.double? initialLearnRate;

  /// Name of input label columns in training data.
  core.List<core.String>? inputLabelColumns;

  /// Name of the instance weight column for training data.
  ///
  /// This column isn't be used as a feature.
  core.String? instanceWeightColumn;

  /// Number of integral steps for the integrated gradients explain method.
  core.String? integratedGradientsNumSteps;

  /// Item column specified for matrix factorization models.
  core.String? itemColumn;

  /// The column used to provide the initial centroids for kmeans algorithm when
  /// kmeans_initialization_method is CUSTOM.
  core.String? kmeansInitializationColumn;

  /// The method used to initialize the centroids for kmeans algorithm.
  /// Possible string values are:
  /// - "KMEANS_INITIALIZATION_METHOD_UNSPECIFIED" : Unspecified initialization
  /// method.
  /// - "RANDOM" : Initializes the centroids randomly.
  /// - "CUSTOM" : Initializes the centroids using data specified in
  /// kmeans_initialization_column.
  /// - "KMEANS_PLUS_PLUS" : Initializes with kmeans++.
  core.String? kmeansInitializationMethod;

  /// L1 regularization coefficient to activations.
  core.double? l1RegActivation;

  /// L1 regularization coefficient.
  core.double? l1Regularization;

  /// L2 regularization coefficient.
  core.double? l2Regularization;

  /// Weights associated with each label class, for rebalancing the training
  /// data.
  ///
  /// Only applicable for classification models.
  core.Map<core.String, core.double>? labelClassWeights;

  /// Learning rate in training.
  ///
  /// Used only for iterative training algorithms.
  core.double? learnRate;

  /// The strategy to determine learn rate for the current iteration.
  /// Possible string values are:
  /// - "LEARN_RATE_STRATEGY_UNSPECIFIED" : Default value.
  /// - "LINE_SEARCH" : Use line search to determine learning rate.
  /// - "CONSTANT" : Use a constant learning rate.
  core.String? learnRateStrategy;

  /// Type of loss function used during training run.
  /// Possible string values are:
  /// - "LOSS_TYPE_UNSPECIFIED" : Default value.
  /// - "MEAN_SQUARED_LOSS" : Mean squared loss, used for linear regression.
  /// - "MEAN_LOG_LOSS" : Mean log loss, used for logistic regression.
  core.String? lossType;

  /// The maximum number of iterations in training.
  ///
  /// Used only for iterative training algorithms.
  core.String? maxIterations;

  /// Maximum number of trials to run in parallel.
  core.String? maxParallelTrials;

  /// The maximum number of time points in a time series that can be used in
  /// modeling the trend component of the time series.
  ///
  /// Don't use this option with the `timeSeriesLengthFraction` or
  /// `minTimeSeriesLength` options.
  core.String? maxTimeSeriesLength;

  /// Maximum depth of a tree for boosted tree models.
  core.String? maxTreeDepth;

  /// When early_stop is true, stops training when accuracy improvement is less
  /// than 'min_relative_progress'.
  ///
  /// Used only for iterative training algorithms.
  core.double? minRelativeProgress;

  /// Minimum split loss for boosted tree models.
  core.double? minSplitLoss;

  /// The minimum number of time points in a time series that are used in
  /// modeling the trend component of the time series.
  ///
  /// If you use this option you must also set the `timeSeriesLengthFraction`
  /// option. This training option ensures that enough time points are available
  /// when you use `timeSeriesLengthFraction` in trend modeling. This is
  /// particularly important when forecasting multiple time series in a single
  /// query using `timeSeriesIdColumn`. If the total number of time points is
  /// less than the `minTimeSeriesLength` value, then the query uses all
  /// available time points.
  core.String? minTimeSeriesLength;

  /// Minimum sum of instance weight needed in a child for boosted tree models.
  core.String? minTreeChildWeight;

  /// The model registry.
  /// Possible string values are:
  /// - "MODEL_REGISTRY_UNSPECIFIED" : Default value.
  /// - "VERTEX_AI" : Vertex AI.
  core.String? modelRegistry;

  /// Google Cloud Storage URI from which the model was imported.
  ///
  /// Only applicable for imported models.
  core.String? modelUri;

  /// A specification of the non-seasonal part of the ARIMA model: the three
  /// components (p, d, q) are the AR order, the degree of differencing, and the
  /// MA order.
  ArimaOrder? nonSeasonalOrder;

  /// Number of clusters for clustering models.
  core.String? numClusters;

  /// Num factors specified for matrix factorization models.
  core.String? numFactors;

  /// Number of parallel trees constructed during each iteration for boosted
  /// tree models.
  core.String? numParallelTree;

  /// Number of principal components to keep in the PCA model.
  ///
  /// Must be \<= the number of features.
  core.String? numPrincipalComponents;

  /// Number of trials to run this hyperparameter tuning job.
  core.String? numTrials;

  /// Optimization strategy for training linear regression models.
  /// Possible string values are:
  /// - "OPTIMIZATION_STRATEGY_UNSPECIFIED" : Default value.
  /// - "BATCH_GRADIENT_DESCENT" : Uses an iterative batch gradient descent
  /// algorithm.
  /// - "NORMAL_EQUATION" : Uses a normal equation to solve linear regression
  /// problem.
  core.String? optimizationStrategy;

  /// Optimizer used for training the neural nets.
  core.String? optimizer;

  /// The minimum ratio of cumulative explained variance that needs to be given
  /// by the PCA model.
  core.double? pcaExplainedVarianceRatio;

  /// The solver for PCA.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default value.
  /// - "FULL" : Full eigen-decoposition.
  /// - "RANDOMIZED" : Randomized SVD.
  /// - "AUTO" : Auto.
  core.String? pcaSolver;

  /// Number of paths for the sampled Shapley explain method.
  core.String? sampledShapleyNumPaths;

  /// If true, scale the feature values by dividing the feature standard
  /// deviation.
  ///
  /// Currently only apply to PCA.
  core.bool? scaleFeatures;

  /// Whether to standardize numerical features.
  ///
  /// Default to true.
  core.bool? standardizeFeatures;

  /// Subsample fraction of the training data to grow tree to prevent
  /// overfitting for boosted tree models.
  core.double? subsample;

  /// Based on the selected TF version, the corresponding docker image is used
  /// to train external models.
  core.String? tfVersion;

  /// Column to be designated as time series data for ARIMA model.
  core.String? timeSeriesDataColumn;

  /// The time series id column that was used during ARIMA model training.
  core.String? timeSeriesIdColumn;

  /// The time series id columns that were used during ARIMA model training.
  core.List<core.String>? timeSeriesIdColumns;

  /// The fraction of the interpolated length of the time series that's used to
  /// model the time series trend component.
  ///
  /// All of the time points of the time series are used to model the non-trend
  /// component. This training option accelerates modeling training without
  /// sacrificing much forecasting accuracy. You can use this option with
  /// `minTimeSeriesLength` but not with `maxTimeSeriesLength`.
  core.double? timeSeriesLengthFraction;

  /// Column to be designated as time series timestamp for ARIMA model.
  core.String? timeSeriesTimestampColumn;

  /// Tree construction algorithm for boosted tree models.
  /// Possible string values are:
  /// - "TREE_METHOD_UNSPECIFIED" : Unspecified tree method.
  /// - "AUTO" : Use heuristic to choose the fastest method.
  /// - "EXACT" : Exact greedy algorithm.
  /// - "APPROX" : Approximate greedy algorithm using quantile sketch and
  /// gradient histogram.
  /// - "HIST" : Fast histogram optimized approximate greedy algorithm.
  core.String? treeMethod;

  /// Smoothing window size for the trend component.
  ///
  /// When a positive value is specified, a center moving average smoothing is
  /// applied on the history trend. When the smoothing window is out of the
  /// boundary at the beginning or the end of the trend, the first element or
  /// the last element is padded to fill the smoothing window before the average
  /// is applied.
  core.String? trendSmoothingWindowSize;

  /// User column specified for matrix factorization models.
  core.String? userColumn;

  /// The version aliases to apply in Vertex AI model registry.
  ///
  /// Always overwrite if the version aliases exists in a existing model.
  core.List<core.String>? vertexAiModelVersionAliases;

  /// Hyperparameter for matrix factoration when implicit feedback type is
  /// specified.
  core.double? walsAlpha;

  /// Whether to train a model from the last checkpoint.
  core.bool? warmStart;

  /// User-selected XGBoost versions for training of XGBoost models.
  core.String? xgboostVersion;

  TrainingOptions({
    this.activationFn,
    this.adjustStepChanges,
    this.approxGlobalFeatureContrib,
    this.autoArima,
    this.autoArimaMaxOrder,
    this.autoArimaMinOrder,
    this.autoClassWeights,
    this.batchSize,
    this.boosterType,
    this.budgetHours,
    this.calculatePValues,
    this.categoryEncodingMethod,
    this.cleanSpikesAndDips,
    this.colorSpace,
    this.colsampleBylevel,
    this.colsampleBynode,
    this.colsampleBytree,
    this.dartNormalizeType,
    this.dataFrequency,
    this.dataSplitColumn,
    this.dataSplitEvalFraction,
    this.dataSplitMethod,
    this.decomposeTimeSeries,
    this.distanceType,
    this.dropout,
    this.earlyStop,
    this.enableGlobalExplain,
    this.feedbackType,
    this.fitIntercept,
    this.hiddenUnits,
    this.holidayRegion,
    this.holidayRegions,
    this.horizon,
    this.hparamTuningObjectives,
    this.includeDrift,
    this.initialLearnRate,
    this.inputLabelColumns,
    this.instanceWeightColumn,
    this.integratedGradientsNumSteps,
    this.itemColumn,
    this.kmeansInitializationColumn,
    this.kmeansInitializationMethod,
    this.l1RegActivation,
    this.l1Regularization,
    this.l2Regularization,
    this.labelClassWeights,
    this.learnRate,
    this.learnRateStrategy,
    this.lossType,
    this.maxIterations,
    this.maxParallelTrials,
    this.maxTimeSeriesLength,
    this.maxTreeDepth,
    this.minRelativeProgress,
    this.minSplitLoss,
    this.minTimeSeriesLength,
    this.minTreeChildWeight,
    this.modelRegistry,
    this.modelUri,
    this.nonSeasonalOrder,
    this.numClusters,
    this.numFactors,
    this.numParallelTree,
    this.numPrincipalComponents,
    this.numTrials,
    this.optimizationStrategy,
    this.optimizer,
    this.pcaExplainedVarianceRatio,
    this.pcaSolver,
    this.sampledShapleyNumPaths,
    this.scaleFeatures,
    this.standardizeFeatures,
    this.subsample,
    this.tfVersion,
    this.timeSeriesDataColumn,
    this.timeSeriesIdColumn,
    this.timeSeriesIdColumns,
    this.timeSeriesLengthFraction,
    this.timeSeriesTimestampColumn,
    this.treeMethod,
    this.trendSmoothingWindowSize,
    this.userColumn,
    this.vertexAiModelVersionAliases,
    this.walsAlpha,
    this.warmStart,
    this.xgboostVersion,
  });

  TrainingOptions.fromJson(core.Map json_)
      : this(
          activationFn: json_.containsKey('activationFn')
              ? json_['activationFn'] as core.String
              : null,
          adjustStepChanges: json_.containsKey('adjustStepChanges')
              ? json_['adjustStepChanges'] as core.bool
              : null,
          approxGlobalFeatureContrib:
              json_.containsKey('approxGlobalFeatureContrib')
                  ? json_['approxGlobalFeatureContrib'] as core.bool
                  : null,
          autoArima: json_.containsKey('autoArima')
              ? json_['autoArima'] as core.bool
              : null,
          autoArimaMaxOrder: json_.containsKey('autoArimaMaxOrder')
              ? json_['autoArimaMaxOrder'] as core.String
              : null,
          autoArimaMinOrder: json_.containsKey('autoArimaMinOrder')
              ? json_['autoArimaMinOrder'] as core.String
              : null,
          autoClassWeights: json_.containsKey('autoClassWeights')
              ? json_['autoClassWeights'] as core.bool
              : null,
          batchSize: json_.containsKey('batchSize')
              ? json_['batchSize'] as core.String
              : null,
          boosterType: json_.containsKey('boosterType')
              ? json_['boosterType'] as core.String
              : null,
          budgetHours: json_.containsKey('budgetHours')
              ? (json_['budgetHours'] as core.num).toDouble()
              : null,
          calculatePValues: json_.containsKey('calculatePValues')
              ? json_['calculatePValues'] as core.bool
              : null,
          categoryEncodingMethod: json_.containsKey('categoryEncodingMethod')
              ? json_['categoryEncodingMethod'] as core.String
              : null,
          cleanSpikesAndDips: json_.containsKey('cleanSpikesAndDips')
              ? json_['cleanSpikesAndDips'] as core.bool
              : null,
          colorSpace: json_.containsKey('colorSpace')
              ? json_['colorSpace'] as core.String
              : null,
          colsampleBylevel: json_.containsKey('colsampleBylevel')
              ? (json_['colsampleBylevel'] as core.num).toDouble()
              : null,
          colsampleBynode: json_.containsKey('colsampleBynode')
              ? (json_['colsampleBynode'] as core.num).toDouble()
              : null,
          colsampleBytree: json_.containsKey('colsampleBytree')
              ? (json_['colsampleBytree'] as core.num).toDouble()
              : null,
          dartNormalizeType: json_.containsKey('dartNormalizeType')
              ? json_['dartNormalizeType'] as core.String
              : null,
          dataFrequency: json_.containsKey('dataFrequency')
              ? json_['dataFrequency'] as core.String
              : null,
          dataSplitColumn: json_.containsKey('dataSplitColumn')
              ? json_['dataSplitColumn'] as core.String
              : null,
          dataSplitEvalFraction: json_.containsKey('dataSplitEvalFraction')
              ? (json_['dataSplitEvalFraction'] as core.num).toDouble()
              : null,
          dataSplitMethod: json_.containsKey('dataSplitMethod')
              ? json_['dataSplitMethod'] as core.String
              : null,
          decomposeTimeSeries: json_.containsKey('decomposeTimeSeries')
              ? json_['decomposeTimeSeries'] as core.bool
              : null,
          distanceType: json_.containsKey('distanceType')
              ? json_['distanceType'] as core.String
              : null,
          dropout: json_.containsKey('dropout')
              ? (json_['dropout'] as core.num).toDouble()
              : null,
          earlyStop: json_.containsKey('earlyStop')
              ? json_['earlyStop'] as core.bool
              : null,
          enableGlobalExplain: json_.containsKey('enableGlobalExplain')
              ? json_['enableGlobalExplain'] as core.bool
              : null,
          feedbackType: json_.containsKey('feedbackType')
              ? json_['feedbackType'] as core.String
              : null,
          fitIntercept: json_.containsKey('fitIntercept')
              ? json_['fitIntercept'] as core.bool
              : null,
          hiddenUnits: json_.containsKey('hiddenUnits')
              ? (json_['hiddenUnits'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          holidayRegion: json_.containsKey('holidayRegion')
              ? json_['holidayRegion'] as core.String
              : null,
          holidayRegions: json_.containsKey('holidayRegions')
              ? (json_['holidayRegions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          horizon: json_.containsKey('horizon')
              ? json_['horizon'] as core.String
              : null,
          hparamTuningObjectives: json_.containsKey('hparamTuningObjectives')
              ? (json_['hparamTuningObjectives'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includeDrift: json_.containsKey('includeDrift')
              ? json_['includeDrift'] as core.bool
              : null,
          initialLearnRate: json_.containsKey('initialLearnRate')
              ? (json_['initialLearnRate'] as core.num).toDouble()
              : null,
          inputLabelColumns: json_.containsKey('inputLabelColumns')
              ? (json_['inputLabelColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instanceWeightColumn: json_.containsKey('instanceWeightColumn')
              ? json_['instanceWeightColumn'] as core.String
              : null,
          integratedGradientsNumSteps:
              json_.containsKey('integratedGradientsNumSteps')
                  ? json_['integratedGradientsNumSteps'] as core.String
                  : null,
          itemColumn: json_.containsKey('itemColumn')
              ? json_['itemColumn'] as core.String
              : null,
          kmeansInitializationColumn:
              json_.containsKey('kmeansInitializationColumn')
                  ? json_['kmeansInitializationColumn'] as core.String
                  : null,
          kmeansInitializationMethod:
              json_.containsKey('kmeansInitializationMethod')
                  ? json_['kmeansInitializationMethod'] as core.String
                  : null,
          l1RegActivation: json_.containsKey('l1RegActivation')
              ? (json_['l1RegActivation'] as core.num).toDouble()
              : null,
          l1Regularization: json_.containsKey('l1Regularization')
              ? (json_['l1Regularization'] as core.num).toDouble()
              : null,
          l2Regularization: json_.containsKey('l2Regularization')
              ? (json_['l2Regularization'] as core.num).toDouble()
              : null,
          labelClassWeights: json_.containsKey('labelClassWeights')
              ? (json_['labelClassWeights']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    (value as core.num).toDouble(),
                  ),
                )
              : null,
          learnRate: json_.containsKey('learnRate')
              ? (json_['learnRate'] as core.num).toDouble()
              : null,
          learnRateStrategy: json_.containsKey('learnRateStrategy')
              ? json_['learnRateStrategy'] as core.String
              : null,
          lossType: json_.containsKey('lossType')
              ? json_['lossType'] as core.String
              : null,
          maxIterations: json_.containsKey('maxIterations')
              ? json_['maxIterations'] as core.String
              : null,
          maxParallelTrials: json_.containsKey('maxParallelTrials')
              ? json_['maxParallelTrials'] as core.String
              : null,
          maxTimeSeriesLength: json_.containsKey('maxTimeSeriesLength')
              ? json_['maxTimeSeriesLength'] as core.String
              : null,
          maxTreeDepth: json_.containsKey('maxTreeDepth')
              ? json_['maxTreeDepth'] as core.String
              : null,
          minRelativeProgress: json_.containsKey('minRelativeProgress')
              ? (json_['minRelativeProgress'] as core.num).toDouble()
              : null,
          minSplitLoss: json_.containsKey('minSplitLoss')
              ? (json_['minSplitLoss'] as core.num).toDouble()
              : null,
          minTimeSeriesLength: json_.containsKey('minTimeSeriesLength')
              ? json_['minTimeSeriesLength'] as core.String
              : null,
          minTreeChildWeight: json_.containsKey('minTreeChildWeight')
              ? json_['minTreeChildWeight'] as core.String
              : null,
          modelRegistry: json_.containsKey('modelRegistry')
              ? json_['modelRegistry'] as core.String
              : null,
          modelUri: json_.containsKey('modelUri')
              ? json_['modelUri'] as core.String
              : null,
          nonSeasonalOrder: json_.containsKey('nonSeasonalOrder')
              ? ArimaOrder.fromJson(json_['nonSeasonalOrder']
                  as core.Map<core.String, core.dynamic>)
              : null,
          numClusters: json_.containsKey('numClusters')
              ? json_['numClusters'] as core.String
              : null,
          numFactors: json_.containsKey('numFactors')
              ? json_['numFactors'] as core.String
              : null,
          numParallelTree: json_.containsKey('numParallelTree')
              ? json_['numParallelTree'] as core.String
              : null,
          numPrincipalComponents: json_.containsKey('numPrincipalComponents')
              ? json_['numPrincipalComponents'] as core.String
              : null,
          numTrials: json_.containsKey('numTrials')
              ? json_['numTrials'] as core.String
              : null,
          optimizationStrategy: json_.containsKey('optimizationStrategy')
              ? json_['optimizationStrategy'] as core.String
              : null,
          optimizer: json_.containsKey('optimizer')
              ? json_['optimizer'] as core.String
              : null,
          pcaExplainedVarianceRatio:
              json_.containsKey('pcaExplainedVarianceRatio')
                  ? (json_['pcaExplainedVarianceRatio'] as core.num).toDouble()
                  : null,
          pcaSolver: json_.containsKey('pcaSolver')
              ? json_['pcaSolver'] as core.String
              : null,
          sampledShapleyNumPaths: json_.containsKey('sampledShapleyNumPaths')
              ? json_['sampledShapleyNumPaths'] as core.String
              : null,
          scaleFeatures: json_.containsKey('scaleFeatures')
              ? json_['scaleFeatures'] as core.bool
              : null,
          standardizeFeatures: json_.containsKey('standardizeFeatures')
              ? json_['standardizeFeatures'] as core.bool
              : null,
          subsample: json_.containsKey('subsample')
              ? (json_['subsample'] as core.num).toDouble()
              : null,
          tfVersion: json_.containsKey('tfVersion')
              ? json_['tfVersion'] as core.String
              : null,
          timeSeriesDataColumn: json_.containsKey('timeSeriesDataColumn')
              ? json_['timeSeriesDataColumn'] as core.String
              : null,
          timeSeriesIdColumn: json_.containsKey('timeSeriesIdColumn')
              ? json_['timeSeriesIdColumn'] as core.String
              : null,
          timeSeriesIdColumns: json_.containsKey('timeSeriesIdColumns')
              ? (json_['timeSeriesIdColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeSeriesLengthFraction:
              json_.containsKey('timeSeriesLengthFraction')
                  ? (json_['timeSeriesLengthFraction'] as core.num).toDouble()
                  : null,
          timeSeriesTimestampColumn:
              json_.containsKey('timeSeriesTimestampColumn')
                  ? json_['timeSeriesTimestampColumn'] as core.String
                  : null,
          treeMethod: json_.containsKey('treeMethod')
              ? json_['treeMethod'] as core.String
              : null,
          trendSmoothingWindowSize:
              json_.containsKey('trendSmoothingWindowSize')
                  ? json_['trendSmoothingWindowSize'] as core.String
                  : null,
          userColumn: json_.containsKey('userColumn')
              ? json_['userColumn'] as core.String
              : null,
          vertexAiModelVersionAliases:
              json_.containsKey('vertexAiModelVersionAliases')
                  ? (json_['vertexAiModelVersionAliases'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          walsAlpha: json_.containsKey('walsAlpha')
              ? (json_['walsAlpha'] as core.num).toDouble()
              : null,
          warmStart: json_.containsKey('warmStart')
              ? json_['warmStart'] as core.bool
              : null,
          xgboostVersion: json_.containsKey('xgboostVersion')
              ? json_['xgboostVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activationFn != null) 'activationFn': activationFn!,
        if (adjustStepChanges != null) 'adjustStepChanges': adjustStepChanges!,
        if (approxGlobalFeatureContrib != null)
          'approxGlobalFeatureContrib': approxGlobalFeatureContrib!,
        if (autoArima != null) 'autoArima': autoArima!,
        if (autoArimaMaxOrder != null) 'autoArimaMaxOrder': autoArimaMaxOrder!,
        if (autoArimaMinOrder != null) 'autoArimaMinOrder': autoArimaMinOrder!,
        if (autoClassWeights != null) 'autoClassWeights': autoClassWeights!,
        if (batchSize != null) 'batchSize': batchSize!,
        if (boosterType != null) 'boosterType': boosterType!,
        if (budgetHours != null) 'budgetHours': budgetHours!,
        if (calculatePValues != null) 'calculatePValues': calculatePValues!,
        if (categoryEncodingMethod != null)
          'categoryEncodingMethod': categoryEncodingMethod!,
        if (cleanSpikesAndDips != null)
          'cleanSpikesAndDips': cleanSpikesAndDips!,
        if (colorSpace != null) 'colorSpace': colorSpace!,
        if (colsampleBylevel != null) 'colsampleBylevel': colsampleBylevel!,
        if (colsampleBynode != null) 'colsampleBynode': colsampleBynode!,
        if (colsampleBytree != null) 'colsampleBytree': colsampleBytree!,
        if (dartNormalizeType != null) 'dartNormalizeType': dartNormalizeType!,
        if (dataFrequency != null) 'dataFrequency': dataFrequency!,
        if (dataSplitColumn != null) 'dataSplitColumn': dataSplitColumn!,
        if (dataSplitEvalFraction != null)
          'dataSplitEvalFraction': dataSplitEvalFraction!,
        if (dataSplitMethod != null) 'dataSplitMethod': dataSplitMethod!,
        if (decomposeTimeSeries != null)
          'decomposeTimeSeries': decomposeTimeSeries!,
        if (distanceType != null) 'distanceType': distanceType!,
        if (dropout != null) 'dropout': dropout!,
        if (earlyStop != null) 'earlyStop': earlyStop!,
        if (enableGlobalExplain != null)
          'enableGlobalExplain': enableGlobalExplain!,
        if (feedbackType != null) 'feedbackType': feedbackType!,
        if (fitIntercept != null) 'fitIntercept': fitIntercept!,
        if (hiddenUnits != null) 'hiddenUnits': hiddenUnits!,
        if (holidayRegion != null) 'holidayRegion': holidayRegion!,
        if (holidayRegions != null) 'holidayRegions': holidayRegions!,
        if (horizon != null) 'horizon': horizon!,
        if (hparamTuningObjectives != null)
          'hparamTuningObjectives': hparamTuningObjectives!,
        if (includeDrift != null) 'includeDrift': includeDrift!,
        if (initialLearnRate != null) 'initialLearnRate': initialLearnRate!,
        if (inputLabelColumns != null) 'inputLabelColumns': inputLabelColumns!,
        if (instanceWeightColumn != null)
          'instanceWeightColumn': instanceWeightColumn!,
        if (integratedGradientsNumSteps != null)
          'integratedGradientsNumSteps': integratedGradientsNumSteps!,
        if (itemColumn != null) 'itemColumn': itemColumn!,
        if (kmeansInitializationColumn != null)
          'kmeansInitializationColumn': kmeansInitializationColumn!,
        if (kmeansInitializationMethod != null)
          'kmeansInitializationMethod': kmeansInitializationMethod!,
        if (l1RegActivation != null) 'l1RegActivation': l1RegActivation!,
        if (l1Regularization != null) 'l1Regularization': l1Regularization!,
        if (l2Regularization != null) 'l2Regularization': l2Regularization!,
        if (labelClassWeights != null) 'labelClassWeights': labelClassWeights!,
        if (learnRate != null) 'learnRate': learnRate!,
        if (learnRateStrategy != null) 'learnRateStrategy': learnRateStrategy!,
        if (lossType != null) 'lossType': lossType!,
        if (maxIterations != null) 'maxIterations': maxIterations!,
        if (maxParallelTrials != null) 'maxParallelTrials': maxParallelTrials!,
        if (maxTimeSeriesLength != null)
          'maxTimeSeriesLength': maxTimeSeriesLength!,
        if (maxTreeDepth != null) 'maxTreeDepth': maxTreeDepth!,
        if (minRelativeProgress != null)
          'minRelativeProgress': minRelativeProgress!,
        if (minSplitLoss != null) 'minSplitLoss': minSplitLoss!,
        if (minTimeSeriesLength != null)
          'minTimeSeriesLength': minTimeSeriesLength!,
        if (minTreeChildWeight != null)
          'minTreeChildWeight': minTreeChildWeight!,
        if (modelRegistry != null) 'modelRegistry': modelRegistry!,
        if (modelUri != null) 'modelUri': modelUri!,
        if (nonSeasonalOrder != null) 'nonSeasonalOrder': nonSeasonalOrder!,
        if (numClusters != null) 'numClusters': numClusters!,
        if (numFactors != null) 'numFactors': numFactors!,
        if (numParallelTree != null) 'numParallelTree': numParallelTree!,
        if (numPrincipalComponents != null)
          'numPrincipalComponents': numPrincipalComponents!,
        if (numTrials != null) 'numTrials': numTrials!,
        if (optimizationStrategy != null)
          'optimizationStrategy': optimizationStrategy!,
        if (optimizer != null) 'optimizer': optimizer!,
        if (pcaExplainedVarianceRatio != null)
          'pcaExplainedVarianceRatio': pcaExplainedVarianceRatio!,
        if (pcaSolver != null) 'pcaSolver': pcaSolver!,
        if (sampledShapleyNumPaths != null)
          'sampledShapleyNumPaths': sampledShapleyNumPaths!,
        if (scaleFeatures != null) 'scaleFeatures': scaleFeatures!,
        if (standardizeFeatures != null)
          'standardizeFeatures': standardizeFeatures!,
        if (subsample != null) 'subsample': subsample!,
        if (tfVersion != null) 'tfVersion': tfVersion!,
        if (timeSeriesDataColumn != null)
          'timeSeriesDataColumn': timeSeriesDataColumn!,
        if (timeSeriesIdColumn != null)
          'timeSeriesIdColumn': timeSeriesIdColumn!,
        if (timeSeriesIdColumns != null)
          'timeSeriesIdColumns': timeSeriesIdColumns!,
        if (timeSeriesLengthFraction != null)
          'timeSeriesLengthFraction': timeSeriesLengthFraction!,
        if (timeSeriesTimestampColumn != null)
          'timeSeriesTimestampColumn': timeSeriesTimestampColumn!,
        if (treeMethod != null) 'treeMethod': treeMethod!,
        if (trendSmoothingWindowSize != null)
          'trendSmoothingWindowSize': trendSmoothingWindowSize!,
        if (userColumn != null) 'userColumn': userColumn!,
        if (vertexAiModelVersionAliases != null)
          'vertexAiModelVersionAliases': vertexAiModelVersionAliases!,
        if (walsAlpha != null) 'walsAlpha': walsAlpha!,
        if (warmStart != null) 'warmStart': warmStart!,
        if (xgboostVersion != null) 'xgboostVersion': xgboostVersion!,
      };
}

/// Information about a single training query run for the model.
class TrainingRun {
  /// Global explanation contains the explanation of top features on the class
  /// level.
  ///
  /// Applies to classification models only.
  ///
  /// Output only.
  core.List<GlobalExplanation>? classLevelGlobalExplanations;

  /// Data split result of the training run.
  ///
  /// Only set when the input data is actually split.
  ///
  /// Output only.
  DataSplitResult? dataSplitResult;

  /// The evaluation metrics over training/eval data that were computed at the
  /// end of training.
  ///
  /// Output only.
  EvaluationMetrics? evaluationMetrics;

  /// Global explanation contains the explanation of top features on the model
  /// level.
  ///
  /// Applies to both regression and classification models.
  ///
  /// Output only.
  GlobalExplanation? modelLevelGlobalExplanation;

  /// Output of each iteration run, results.size() \<= max_iterations.
  ///
  /// Output only.
  core.List<IterationResult>? results;

  /// The start time of this training run.
  ///
  /// Output only.
  core.String? startTime;

  /// Options that were used for this training run, includes user specified and
  /// default options that were used.
  ///
  /// Output only.
  TrainingOptions? trainingOptions;

  /// The start time of this training run, in milliseconds since epoch.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? trainingStartTime;

  /// The model id in the
  /// [Vertex AI Model Registry](https://cloud.google.com/vertex-ai/docs/model-registry/introduction)
  /// for this training run.
  core.String? vertexAiModelId;

  /// The model version in the
  /// [Vertex AI Model Registry](https://cloud.google.com/vertex-ai/docs/model-registry/introduction)
  /// for this training run.
  ///
  /// Output only.
  core.String? vertexAiModelVersion;

  TrainingRun({
    this.classLevelGlobalExplanations,
    this.dataSplitResult,
    this.evaluationMetrics,
    this.modelLevelGlobalExplanation,
    this.results,
    this.startTime,
    this.trainingOptions,
    this.trainingStartTime,
    this.vertexAiModelId,
    this.vertexAiModelVersion,
  });

  TrainingRun.fromJson(core.Map json_)
      : this(
          classLevelGlobalExplanations:
              json_.containsKey('classLevelGlobalExplanations')
                  ? (json_['classLevelGlobalExplanations'] as core.List)
                      .map((value) => GlobalExplanation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          dataSplitResult: json_.containsKey('dataSplitResult')
              ? DataSplitResult.fromJson(json_['dataSplitResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
          evaluationMetrics: json_.containsKey('evaluationMetrics')
              ? EvaluationMetrics.fromJson(json_['evaluationMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          modelLevelGlobalExplanation: json_
                  .containsKey('modelLevelGlobalExplanation')
              ? GlobalExplanation.fromJson(json_['modelLevelGlobalExplanation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => IterationResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          trainingOptions: json_.containsKey('trainingOptions')
              ? TrainingOptions.fromJson(json_['trainingOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          trainingStartTime: json_.containsKey('trainingStartTime')
              ? json_['trainingStartTime'] as core.String
              : null,
          vertexAiModelId: json_.containsKey('vertexAiModelId')
              ? json_['vertexAiModelId'] as core.String
              : null,
          vertexAiModelVersion: json_.containsKey('vertexAiModelVersion')
              ? json_['vertexAiModelVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classLevelGlobalExplanations != null)
          'classLevelGlobalExplanations': classLevelGlobalExplanations!,
        if (dataSplitResult != null) 'dataSplitResult': dataSplitResult!,
        if (evaluationMetrics != null) 'evaluationMetrics': evaluationMetrics!,
        if (modelLevelGlobalExplanation != null)
          'modelLevelGlobalExplanation': modelLevelGlobalExplanation!,
        if (results != null) 'results': results!,
        if (startTime != null) 'startTime': startTime!,
        if (trainingOptions != null) 'trainingOptions': trainingOptions!,
        if (trainingStartTime != null) 'trainingStartTime': trainingStartTime!,
        if (vertexAiModelId != null) 'vertexAiModelId': vertexAiModelId!,
        if (vertexAiModelVersion != null)
          'vertexAiModelVersion': vertexAiModelVersion!,
      };
}

/// \[Alpha\] Information of a multi-statement transaction.
class TransactionInfo {
  /// \[Alpha\] Id of the transaction.
  ///
  /// Output only.
  core.String? transactionId;

  TransactionInfo({
    this.transactionId,
  });

  TransactionInfo.fromJson(core.Map json_)
      : this(
          transactionId: json_.containsKey('transactionId')
              ? json_['transactionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transactionId != null) 'transactionId': transactionId!,
      };
}

/// Information about a single transform column.
class TransformColumn {
  /// Name of the column.
  ///
  /// Output only.
  core.String? name;

  /// The SQL expression used in the column transform.
  ///
  /// Output only.
  core.String? transformSql;

  /// Data type of the column after the transform.
  ///
  /// Output only.
  StandardSqlDataType? type;

  TransformColumn({
    this.name,
    this.transformSql,
    this.type,
  });

  TransformColumn.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          transformSql: json_.containsKey('transformSql')
              ? json_['transformSql'] as core.String
              : null,
          type: json_.containsKey('type')
              ? StandardSqlDataType.fromJson(
                  json_['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (transformSql != null) 'transformSql': transformSql!,
        if (type != null) 'type': type!,
      };
}

/// Request format for undeleting a dataset.
class UndeleteDatasetRequest {
  /// The exact time when the dataset was deleted.
  ///
  /// If not specified, the most recently deleted version is undeleted.
  ///
  /// Optional.
  core.String? deletionTime;

  UndeleteDatasetRequest({
    this.deletionTime,
  });

  UndeleteDatasetRequest.fromJson(core.Map json_)
      : this(
          deletionTime: json_.containsKey('deletionTime')
              ? json_['deletionTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deletionTime != null) 'deletionTime': deletionTime!,
      };
}

/// This is used for defining User Defined Function (UDF) resources only when
/// using legacy SQL.
///
/// Users of GoogleSQL should leverage either DDL (e.g. CREATE \[TEMPORARY\]
/// FUNCTION ... ) or the Routines API to define UDF resources. For additional
/// information on migrating, see:
/// https://cloud.google.com/bigquery/docs/reference/standard-sql/migrating-from-legacy-sql#differences_in_user-defined_javascript_functions
class UserDefinedFunctionResource {
  /// \[Pick one\] An inline resource that contains code for a user-defined
  /// function (UDF).
  ///
  /// Providing a inline code resource is equivalent to providing a URI for a
  /// file containing the same code.
  core.String? inlineCode;

  /// \[Pick one\] A code resource to load from a Google Cloud Storage URI
  /// (gs://bucket/path).
  core.String? resourceUri;

  UserDefinedFunctionResource({
    this.inlineCode,
    this.resourceUri,
  });

  UserDefinedFunctionResource.fromJson(core.Map json_)
      : this(
          inlineCode: json_.containsKey('inlineCode')
              ? json_['inlineCode'] as core.String
              : null,
          resourceUri: json_.containsKey('resourceUri')
              ? json_['resourceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inlineCode != null) 'inlineCode': inlineCode!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
      };
}

/// Statistics for a vector search query.
///
/// Populated as part of JobStatistics2.
class VectorSearchStatistics {
  /// When `indexUsageMode` is `UNUSED` or `PARTIALLY_USED`, this field explains
  /// why indexes were not used in all or part of the vector search query.
  ///
  /// If `indexUsageMode` is `FULLY_USED`, this field is not populated.
  core.List<IndexUnusedReason>? indexUnusedReasons;

  /// Specifies the index usage mode for the query.
  /// Possible string values are:
  /// - "INDEX_USAGE_MODE_UNSPECIFIED" : Index usage mode not specified.
  /// - "UNUSED" : No vector indexes were used in the vector search query. See
  /// \[`indexUnusedReasons`\]
  /// (/bigquery/docs/reference/rest/v2/Job#IndexUnusedReason) for detailed
  /// reasons.
  /// - "PARTIALLY_USED" : Part of the vector search query used vector indexes.
  /// See \[`indexUnusedReasons`\]
  /// (/bigquery/docs/reference/rest/v2/Job#IndexUnusedReason) for why other
  /// parts of the query did not use vector indexes.
  /// - "FULLY_USED" : The entire vector search query used vector indexes.
  core.String? indexUsageMode;

  VectorSearchStatistics({
    this.indexUnusedReasons,
    this.indexUsageMode,
  });

  VectorSearchStatistics.fromJson(core.Map json_)
      : this(
          indexUnusedReasons: json_.containsKey('indexUnusedReasons')
              ? (json_['indexUnusedReasons'] as core.List)
                  .map((value) => IndexUnusedReason.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          indexUsageMode: json_.containsKey('indexUsageMode')
              ? json_['indexUsageMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexUnusedReasons != null)
          'indexUnusedReasons': indexUnusedReasons!,
        if (indexUsageMode != null) 'indexUsageMode': indexUsageMode!,
      };
}

/// Describes the definition of a logical view.
class ViewDefinition {
  /// Specifices the privacy policy for the view.
  ///
  /// Optional.
  PrivacyPolicy? privacyPolicy;

  /// A query that BigQuery executes when the view is referenced.
  ///
  /// Required.
  core.String? query;

  /// True if the column names are explicitly specified.
  ///
  /// For example by using the 'CREATE VIEW v(c1, c2) AS ...' syntax. Can only
  /// be set for GoogleSQL views.
  core.bool? useExplicitColumnNames;

  /// Specifies whether to use BigQuery's legacy SQL for this view.
  ///
  /// The default value is true. If set to false, the view will use BigQuery's
  /// GoogleSQL: https://cloud.google.com/bigquery/sql-reference/ Queries and
  /// views that reference this view must use the same flag value. A wrapper is
  /// used here because the default value is True.
  core.bool? useLegacySql;

  /// Describes user-defined function resources used in the query.
  core.List<UserDefinedFunctionResource>? userDefinedFunctionResources;

  ViewDefinition({
    this.privacyPolicy,
    this.query,
    this.useExplicitColumnNames,
    this.useLegacySql,
    this.userDefinedFunctionResources,
  });

  ViewDefinition.fromJson(core.Map json_)
      : this(
          privacyPolicy: json_.containsKey('privacyPolicy')
              ? PrivacyPolicy.fromJson(
                  json_['privacyPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          useExplicitColumnNames: json_.containsKey('useExplicitColumnNames')
              ? json_['useExplicitColumnNames'] as core.bool
              : null,
          useLegacySql: json_.containsKey('useLegacySql')
              ? json_['useLegacySql'] as core.bool
              : null,
          userDefinedFunctionResources:
              json_.containsKey('userDefinedFunctionResources')
                  ? (json_['userDefinedFunctionResources'] as core.List)
                      .map((value) => UserDefinedFunctionResource.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privacyPolicy != null) 'privacyPolicy': privacyPolicy!,
        if (query != null) 'query': query!,
        if (useExplicitColumnNames != null)
          'useExplicitColumnNames': useExplicitColumnNames!,
        if (useLegacySql != null) 'useLegacySql': useLegacySql!,
        if (userDefinedFunctionResources != null)
          'userDefinedFunctionResources': userDefinedFunctionResources!,
      };
}
