// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
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
library bigquery.v2;

import 'dart:async' as async;
import 'dart:collection' as collection;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

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
  /// [projectId] - Project ID of the dataset being deleted
  ///
  /// [datasetId] - Dataset ID of dataset being deleted
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (deleteContents != null) 'deleteContents': ['${deleteContents}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Returns the dataset specified by datasetID.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the requested dataset
  ///
  /// [datasetId] - Dataset ID of the requested dataset
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Dataset.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new empty dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the new dataset
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'projects/' + commons.escapeVariable('$projectId') + '/datasets';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Dataset.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all datasets in the specified project to which you have been granted
  /// the READER dataset role.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the datasets to be listed
  ///
  /// [all] - Whether to list all datasets, including hidden ones
  ///
  /// [filter] - An expression for filtering the results of the request by
  /// label. The syntax is "labels.\<name\>\[:\<value\>\]". Multiple filters can
  /// be ANDed together by connecting with a space. Example:
  /// "labels.department:receiving labels.active". See Filtering datasets using
  /// labels for details.
  ///
  /// [maxResults] - The maximum number of results to return
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (all != null) 'all': ['${all}'],
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'projects/' + commons.escapeVariable('$projectId') + '/datasets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DatasetList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates information in an existing dataset.
  ///
  /// The update method replaces the entire dataset resource, whereas the patch
  /// method only replaces fields that are provided in the submitted dataset
  /// resource. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the dataset being updated
  ///
  /// [datasetId] - Dataset ID of the dataset being updated
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Dataset.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// [projectId] - Project ID of the dataset being updated
  ///
  /// [datasetId] - Dataset ID of the dataset being updated
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Dataset.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// [projectId] - \[Required\] Project ID of the job to cancel
  ///
  /// [jobId] - \[Required\] Job ID of the job to cancel
  ///
  /// [location] - The geographic location of the job. Required except for US
  /// and EU. See details at
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return JobCancelResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/jobs/' +
        core.Uri.encodeFull('$jobId') +
        '/delete';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
  /// [projectId] - \[Required\] Project ID of the requested job
  ///
  /// [jobId] - \[Required\] Job ID of the requested job
  ///
  /// [location] - The geographic location of the job. Required except for US
  /// and EU. See details at
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the results of a query job.
  ///
  /// Request parameters:
  ///
  /// [projectId] - \[Required\] Project ID of the query job
  ///
  /// [jobId] - \[Required\] Job ID of the query job
  ///
  /// [location] - The geographic location where the job should run. Required
  /// except for US and EU. See details at
  /// https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  ///
  /// [maxResults] - Maximum number of results to read
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results
  ///
  /// [startIndex] - Zero-based index of the starting row
  ///
  /// [timeoutMs] - How long to wait for the query to complete, in milliseconds,
  /// before returning. Default is 10 seconds. If the timeout passes before the
  /// job completes, the 'jobComplete' field in the response will be false
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
    core.String? location,
    core.int? maxResults,
    core.String? pageToken,
    core.String? startIndex,
    core.int? timeoutMs,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startIndex != null) 'startIndex': [startIndex],
      if (timeoutMs != null) 'timeoutMs': ['${timeoutMs}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/queries/' +
        commons.escapeVariable('$jobId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetQueryResultsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Starts a new asynchronous job.
  ///
  /// Requires the Can View project role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the project that will be billed for the job
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'projects/' + commons.escapeVariable('$projectId') + '/jobs';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/bigquery/v2/projects/' +
          commons.escapeVariable('$projectId') +
          '/jobs';
    } else {
      _url = '/upload/bigquery/v2/projects/' +
          commons.escapeVariable('$projectId') +
          '/jobs';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// [projectId] - Project ID of the jobs to list
  ///
  /// [allUsers] - Whether to display jobs owned by all users in the project.
  /// Default false
  ///
  /// [maxCreationTime] - Max value for job creation time, in milliseconds since
  /// the POSIX epoch. If set, only jobs created before or at this timestamp are
  /// returned
  ///
  /// [maxResults] - Maximum number of results to return
  ///
  /// [minCreationTime] - Min value for job creation time, in milliseconds since
  /// the POSIX epoch. If set, only jobs created after or at this timestamp are
  /// returned
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results
  ///
  /// [parentJobId] - If set, retrieves only jobs whose parent is this job.
  /// Otherwise, retrieves only jobs which have no parent
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
    final _queryParams = <core.String, core.List<core.String>>{
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

    final _url = 'projects/' + commons.escapeVariable('$projectId') + '/jobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return JobList.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Runs a BigQuery SQL query synchronously and returns query results if the
  /// query completes within a specified timeout.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the project billed for the query
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'projects/' + commons.escapeVariable('$projectId') + '/queries';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return QueryResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/models/' +
        core.Uri.encodeFull('$modelId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/models/' +
        core.Uri.encodeFull('$modelId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Model.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/models';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListModelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/models/' +
        core.Uri.encodeFull('$modelId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Model.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Returns the email address of the service account for your project used for
  /// interactions with Google Cloud KMS.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID for which the service account is requested.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'projects/' + commons.escapeVariable('$projectId') + '/serviceAccount';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetServiceAccountResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all projects to which you have been granted any project role.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of results to return
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'projects';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProjectList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/routines/' +
        core.Uri.encodeFull('$routineId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/routines/' +
        core.Uri.encodeFull('$routineId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Routine.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/routines';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Routine.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// returned. The current supported form is either "routine_type:" or
  /// "routineType:", where is a RoutineType enum. Example:
  /// "routineType:SCALAR_FUNCTION".
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/routines';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRoutinesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/routines/' +
        core.Uri.encodeFull('$routineId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Routine.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        core.Uri.encodeFull('$projectId') +
        '/datasets/' +
        core.Uri.encodeFull('$datasetId') +
        '/tables/' +
        core.Uri.encodeFull('$tableId') +
        '/rowAccessPolicies';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRowAccessPoliciesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class TabledataResource {
  final commons.ApiRequester _requester;

  TabledataResource(commons.ApiRequester client) : _requester = client;

  /// Streams data into BigQuery one record at a time without needing to run a
  /// load job.
  ///
  /// Requires the WRITER dataset role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the destination table.
  ///
  /// [datasetId] - Dataset ID of the destination table.
  ///
  /// [tableId] - Table ID of the destination table.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId') +
        '/tables/' +
        commons.escapeVariable('$tableId') +
        '/insertAll';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TableDataInsertAllResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves table data from a specified set of rows.
  ///
  /// Requires the READER dataset role.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the table to read
  ///
  /// [datasetId] - Dataset ID of the table to read
  ///
  /// [tableId] - Table ID of the table to read
  ///
  /// [maxResults] - Maximum number of results to return
  ///
  /// [pageToken] - Page token, returned by a previous call, identifying the
  /// result set
  ///
  /// [selectedFields] - List of fields to return (comma-separated). If
  /// unspecified, all fields are returned
  ///
  /// [startIndex] - Zero-based index of the starting row to read
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
    core.int? maxResults,
    core.String? pageToken,
    core.String? selectedFields,
    core.String? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (selectedFields != null) 'selectedFields': [selectedFields],
      if (startIndex != null) 'startIndex': [startIndex],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId') +
        '/tables/' +
        commons.escapeVariable('$tableId') +
        '/data';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TableDataList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// [projectId] - Project ID of the table to delete
  ///
  /// [datasetId] - Dataset ID of the table to delete
  ///
  /// [tableId] - Table ID of the table to delete
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId') +
        '/tables/' +
        commons.escapeVariable('$tableId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
  /// [projectId] - Project ID of the requested table
  ///
  /// [datasetId] - Dataset ID of the requested table
  ///
  /// [tableId] - Table ID of the requested table
  ///
  /// [selectedFields] - List of fields to return (comma-separated). If
  /// unspecified, all fields are returned
  ///
  /// [view] - Specifies the view that determines which table information is
  /// returned. By default, basic table information and storage statistics
  /// (STORAGE_STATS) are returned.
  /// Possible string values are:
  /// - "BASIC" : Includes basic table information including schema and
  /// partitioning specification. This view does not include storage statistics
  /// such as numRows or numBytes. This view is significantly more efficient and
  /// should be used to support high query rates.
  /// - "FULL" : Includes all table information, including storage statistics.
  /// It returns same information as STORAGE_STATS view, but may contain
  /// additional information in the future.
  /// - "STORAGE_STATS" : Includes all information in the BASIC view as well as
  /// storage statistics (numBytes, numLongTermBytes, numRows and
  /// lastModifiedTime).
  /// - "TABLE_METADATA_VIEW_UNSPECIFIED" : The default value. Default to the
  /// STORAGE_STATS view.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (selectedFields != null) 'selectedFields': [selectedFields],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId') +
        '/tables/' +
        commons.escapeVariable('$tableId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Table.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new, empty table in the dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the new table
  ///
  /// [datasetId] - Dataset ID of the new table
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId') +
        '/tables';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Table.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all tables in the specified dataset.
  ///
  /// Requires the READER dataset role.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the tables to list
  ///
  /// [datasetId] - Dataset ID of the tables to list
  ///
  /// [maxResults] - Maximum number of results to return
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId') +
        '/tables';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TableList.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates information in an existing table.
  ///
  /// The update method replaces the entire table resource, whereas the patch
  /// method only replaces fields that are provided in the submitted table
  /// resource. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the table to update
  ///
  /// [datasetId] - Dataset ID of the table to update
  ///
  /// [tableId] - Table ID of the table to update
  ///
  /// [autodetectSchema] - When true will autodetect schema, else will keep
  /// original schema
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (autodetectSchema != null)
        'autodetect_schema': ['${autodetectSchema}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId') +
        '/tables/' +
        commons.escapeVariable('$tableId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Table.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates information in an existing table.
  ///
  /// The update method replaces the entire table resource, whereas the patch
  /// method only replaces fields that are provided in the submitted table
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID of the table to update
  ///
  /// [datasetId] - Dataset ID of the table to update
  ///
  /// [tableId] - Table ID of the table to update
  ///
  /// [autodetectSchema] - When true will autodetect schema, else will keep
  /// original schema
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (autodetectSchema != null)
        'autodetect_schema': ['${autodetectSchema}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'projects/' +
        commons.escapeVariable('$projectId') +
        '/datasets/' +
        commons.escapeVariable('$datasetId') +
        '/tables/' +
        commons.escapeVariable('$tableId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Table.fromJson(_response as core.Map<core.String, core.dynamic>);
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

  AggregateClassificationMetrics.fromJson(core.Map _json)
      : this(
          accuracy: _json.containsKey('accuracy')
              ? (_json['accuracy'] as core.num).toDouble()
              : null,
          f1Score: _json.containsKey('f1Score')
              ? (_json['f1Score'] as core.num).toDouble()
              : null,
          logLoss: _json.containsKey('logLoss')
              ? (_json['logLoss'] as core.num).toDouble()
              : null,
          precision: _json.containsKey('precision')
              ? (_json['precision'] as core.num).toDouble()
              : null,
          recall: _json.containsKey('recall')
              ? (_json['recall'] as core.num).toDouble()
              : null,
          rocAuc: _json.containsKey('rocAuc')
              ? (_json['rocAuc'] as core.num).toDouble()
              : null,
          threshold: _json.containsKey('threshold')
              ? (_json['threshold'] as core.num).toDouble()
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

/// Input/output argument of a function or a stored procedure.
class Argument {
  /// Defaults to FIXED_TYPE.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ARGUMENT_KIND_UNSPECIFIED"
  /// - "FIXED_TYPE" : The argument is a variable with fully specified type,
  /// which can be a struct or an array, but not a table.
  /// - "ANY_TYPE" : The argument is any type, including struct or array, but
  /// not a table. To be added: FIXED_TABLE, ANY_TABLE
  core.String? argumentKind;

  /// Required unless argument_kind = ANY_TYPE.
  StandardSqlDataType? dataType;

  /// Specifies whether the argument is input or output.
  ///
  /// Can be set for procedures only.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED"
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
    this.mode,
    this.name,
  });

  Argument.fromJson(core.Map _json)
      : this(
          argumentKind: _json.containsKey('argumentKind')
              ? _json['argumentKind'] as core.String
              : null,
          dataType: _json.containsKey('dataType')
              ? StandardSqlDataType.fromJson(
                  _json['dataType'] as core.Map<core.String, core.dynamic>)
              : null,
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (argumentKind != null) 'argumentKind': argumentKind!,
        if (dataType != null) 'dataType': dataType!,
        if (mode != null) 'mode': mode!,
        if (name != null) 'name': name!,
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

  ArimaFittingMetrics.fromJson(core.Map _json)
      : this(
          aic: _json.containsKey('aic')
              ? (_json['aic'] as core.num).toDouble()
              : null,
          logLikelihood: _json.containsKey('logLikelihood')
              ? (_json['logLikelihood'] as core.num).toDouble()
              : null,
          variance: _json.containsKey('variance')
              ? (_json['variance'] as core.num).toDouble()
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
  core.List<ArimaFittingMetrics>? arimaFittingMetrics;

  /// Repeated as there can be many metric sets (one for each model) in
  /// auto-arima and the large-scale case.
  core.List<ArimaSingleModelForecastingMetrics>?
      arimaSingleModelForecastingMetrics;

  /// Whether Arima model fitted with drift or not.
  ///
  /// It is always false when d is not 1.
  core.List<core.bool>? hasDrift;

  /// Non-seasonal order.
  core.List<ArimaOrder>? nonSeasonalOrder;

  /// Seasonal periods.
  ///
  /// Repeated because multiple periods are supported for one time series.
  core.List<core.String>? seasonalPeriods;

  /// Id to differentiate different time series for the large-scale case.
  core.List<core.String>? timeSeriesId;

  ArimaForecastingMetrics({
    this.arimaFittingMetrics,
    this.arimaSingleModelForecastingMetrics,
    this.hasDrift,
    this.nonSeasonalOrder,
    this.seasonalPeriods,
    this.timeSeriesId,
  });

  ArimaForecastingMetrics.fromJson(core.Map _json)
      : this(
          arimaFittingMetrics: _json.containsKey('arimaFittingMetrics')
              ? (_json['arimaFittingMetrics'] as core.List)
                  .map((value) => ArimaFittingMetrics.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          arimaSingleModelForecastingMetrics: _json
                  .containsKey('arimaSingleModelForecastingMetrics')
              ? (_json['arimaSingleModelForecastingMetrics'] as core.List)
                  .map((value) => ArimaSingleModelForecastingMetrics.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          hasDrift: _json.containsKey('hasDrift')
              ? (_json['hasDrift'] as core.List)
                  .map((value) => value as core.bool)
                  .toList()
              : null,
          nonSeasonalOrder: _json.containsKey('nonSeasonalOrder')
              ? (_json['nonSeasonalOrder'] as core.List)
                  .map((value) => ArimaOrder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          seasonalPeriods: _json.containsKey('seasonalPeriods')
              ? (_json['seasonalPeriods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeSeriesId: _json.containsKey('timeSeriesId')
              ? (_json['timeSeriesId'] as core.List)
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

  ArimaOrder.fromJson(core.Map _json)
      : this(
          d: _json.containsKey('d') ? _json['d'] as core.String : null,
          p: _json.containsKey('p') ? _json['p'] as core.String : null,
          q: _json.containsKey('q') ? _json['q'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (d != null) 'd': d!,
        if (p != null) 'p': p!,
        if (q != null) 'q': q!,
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

  ArimaSingleModelForecastingMetrics.fromJson(core.Map _json)
      : this(
          arimaFittingMetrics: _json.containsKey('arimaFittingMetrics')
              ? ArimaFittingMetrics.fromJson(_json['arimaFittingMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hasDrift: _json.containsKey('hasDrift')
              ? _json['hasDrift'] as core.bool
              : null,
          hasHolidayEffect: _json.containsKey('hasHolidayEffect')
              ? _json['hasHolidayEffect'] as core.bool
              : null,
          hasSpikesAndDips: _json.containsKey('hasSpikesAndDips')
              ? _json['hasSpikesAndDips'] as core.bool
              : null,
          hasStepChanges: _json.containsKey('hasStepChanges')
              ? _json['hasStepChanges'] as core.bool
              : null,
          nonSeasonalOrder: _json.containsKey('nonSeasonalOrder')
              ? ArimaOrder.fromJson(_json['nonSeasonalOrder']
                  as core.Map<core.String, core.dynamic>)
              : null,
          seasonalPeriods: _json.containsKey('seasonalPeriods')
              ? (_json['seasonalPeriods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeSeriesId: _json.containsKey('timeSeriesId')
              ? _json['timeSeriesId'] as core.String
              : null,
          timeSeriesIds: _json.containsKey('timeSeriesIds')
              ? (_json['timeSeriesIds'] as core.List)
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

  AuditConfig.fromJson(core.Map _json)
      : this(
          auditLogConfigs: _json.containsKey('auditLogConfigs')
              ? (_json['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
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

  AvroOptions.fromJson(core.Map _json)
      : this(
          useAvroLogicalTypes: _json.containsKey('useAvroLogicalTypes')
              ? _json['useAvroLogicalTypes'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (useAvroLogicalTypes != null)
          'useAvroLogicalTypes': useAvroLogicalTypes!,
      };
}

class BiEngineReason {
  /// \[Output-only\] High-level BI Engine reason for partial or disabled
  /// acceleration.
  core.String? code;

  /// \[Output-only\] Free form human-readable reason for partial or disabled
  /// acceleration.
  core.String? message;

  BiEngineReason({
    this.code,
    this.message,
  });

  BiEngineReason.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (message != null) 'message': message!,
      };
}

class BiEngineStatistics {
  /// \[Output-only\] Specifies which mode of BI Engine acceleration was
  /// performed (if any).
  core.String? biEngineMode;

  /// In case of DISABLED or PARTIAL bi_engine_mode, these contain the
  /// explanatory reasons as to why BI Engine could not accelerate.
  ///
  /// In case the full query was accelerated, this field is not populated.
  core.List<BiEngineReason>? biEngineReasons;

  BiEngineStatistics({
    this.biEngineMode,
    this.biEngineReasons,
  });

  BiEngineStatistics.fromJson(core.Map _json)
      : this(
          biEngineMode: _json.containsKey('biEngineMode')
              ? _json['biEngineMode'] as core.String
              : null,
          biEngineReasons: _json.containsKey('biEngineReasons')
              ? (_json['biEngineReasons'] as core.List)
                  .map((value) => BiEngineReason.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (biEngineMode != null) 'biEngineMode': biEngineMode!,
        if (biEngineReasons != null) 'biEngineReasons': biEngineReasons!,
      };
}

class BigQueryModelTraining {
  /// \[Output-only, Beta\] Index of current ML training iteration.
  ///
  /// Updated during create model query job to show job progress.
  core.int? currentIteration;

  /// \[Output-only, Beta\] Expected number of iterations for the create model
  /// query job specified as num_iterations in the input query.
  ///
  /// The actual total number of iterations may be less than this number due to
  /// early stop.
  core.String? expectedTotalIterations;

  BigQueryModelTraining({
    this.currentIteration,
    this.expectedTotalIterations,
  });

  BigQueryModelTraining.fromJson(core.Map _json)
      : this(
          currentIteration: _json.containsKey('currentIteration')
              ? _json['currentIteration'] as core.int
              : null,
          expectedTotalIterations: _json.containsKey('expectedTotalIterations')
              ? _json['expectedTotalIterations'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentIteration != null) 'currentIteration': currentIteration!,
        if (expectedTotalIterations != null)
          'expectedTotalIterations': expectedTotalIterations!,
      };
}

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
  /// match \[a-zA-Z\]\[a-zA-Z0-9_\]*, a valid identifier must be provided as
  /// the column field name and is used as field name in queries.
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
  /// field identifier i.e. does not match \[a-zA-Z\]\[a-zA-Z0-9_\]*, a valid
  /// identifier must be provided as field_name.
  ///
  /// Required.
  core.String? qualifierEncoded;
  core.List<core.int> get qualifierEncodedAsBytes =>
      convert.base64.decode(qualifierEncoded!);

  set qualifierEncodedAsBytes(core.List<core.int> _bytes) {
    qualifierEncoded =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  core.String? qualifierString;

  /// The type to convert the value in cells of this column.
  ///
  /// The values are expected to be encoded using HBase Bytes.toBytes function
  /// when using the BINARY encoding value. Following BigQuery types are allowed
  /// (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default type is
  /// BYTES. 'type' can also be set at the column family level. However, the
  /// setting at this level takes precedence if 'type' is set at both levels.
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

  BigtableColumn.fromJson(core.Map _json)
      : this(
          encoding: _json.containsKey('encoding')
              ? _json['encoding'] as core.String
              : null,
          fieldName: _json.containsKey('fieldName')
              ? _json['fieldName'] as core.String
              : null,
          onlyReadLatest: _json.containsKey('onlyReadLatest')
              ? _json['onlyReadLatest'] as core.bool
              : null,
          qualifierEncoded: _json.containsKey('qualifierEncoded')
              ? _json['qualifierEncoded'] as core.String
              : null,
          qualifierString: _json.containsKey('qualifierString')
              ? _json['qualifierString'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
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
  /// (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default type is
  /// BYTES. This can be overridden for a specific column by listing that column
  /// in 'columns' and specifying a type for it.
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

  BigtableColumnFamily.fromJson(core.Map _json)
      : this(
          columns: _json.containsKey('columns')
              ? (_json['columns'] as core.List)
                  .map((value) => BigtableColumn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          encoding: _json.containsKey('encoding')
              ? _json['encoding'] as core.String
              : null,
          familyId: _json.containsKey('familyId')
              ? _json['familyId'] as core.String
              : null,
          onlyReadLatest: _json.containsKey('onlyReadLatest')
              ? _json['onlyReadLatest'] as core.bool
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (encoding != null) 'encoding': encoding!,
        if (familyId != null) 'familyId': familyId!,
        if (onlyReadLatest != null) 'onlyReadLatest': onlyReadLatest!,
        if (type != null) 'type': type!,
      };
}

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
    this.readRowkeyAsString,
  });

  BigtableOptions.fromJson(core.Map _json)
      : this(
          columnFamilies: _json.containsKey('columnFamilies')
              ? (_json['columnFamilies'] as core.List)
                  .map((value) => BigtableColumnFamily.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ignoreUnspecifiedColumnFamilies:
              _json.containsKey('ignoreUnspecifiedColumnFamilies')
                  ? _json['ignoreUnspecifiedColumnFamilies'] as core.bool
                  : null,
          readRowkeyAsString: _json.containsKey('readRowkeyAsString')
              ? _json['readRowkeyAsString'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnFamilies != null) 'columnFamilies': columnFamilies!,
        if (ignoreUnspecifiedColumnFamilies != null)
          'ignoreUnspecifiedColumnFamilies': ignoreUnspecifiedColumnFamilies!,
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

  BinaryClassificationMetrics.fromJson(core.Map _json)
      : this(
          aggregateClassificationMetrics:
              _json.containsKey('aggregateClassificationMetrics')
                  ? AggregateClassificationMetrics.fromJson(
                      _json['aggregateClassificationMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          binaryConfusionMatrixList:
              _json.containsKey('binaryConfusionMatrixList')
                  ? (_json['binaryConfusionMatrixList'] as core.List)
                      .map((value) => BinaryConfusionMatrix.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          negativeLabel: _json.containsKey('negativeLabel')
              ? _json['negativeLabel'] as core.String
              : null,
          positiveLabel: _json.containsKey('positiveLabel')
              ? _json['positiveLabel'] as core.String
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

  BinaryConfusionMatrix.fromJson(core.Map _json)
      : this(
          accuracy: _json.containsKey('accuracy')
              ? (_json['accuracy'] as core.num).toDouble()
              : null,
          f1Score: _json.containsKey('f1Score')
              ? (_json['f1Score'] as core.num).toDouble()
              : null,
          falseNegatives: _json.containsKey('falseNegatives')
              ? _json['falseNegatives'] as core.String
              : null,
          falsePositives: _json.containsKey('falsePositives')
              ? _json['falsePositives'] as core.String
              : null,
          positiveClassThreshold: _json.containsKey('positiveClassThreshold')
              ? (_json['positiveClassThreshold'] as core.num).toDouble()
              : null,
          precision: _json.containsKey('precision')
              ? (_json['precision'] as core.num).toDouble()
              : null,
          recall: _json.containsKey('recall')
              ? (_json['recall'] as core.num).toDouble()
              : null,
          trueNegatives: _json.containsKey('trueNegatives')
              ? _json['trueNegatives'] as core.String
              : null,
          truePositives: _json.containsKey('truePositives')
              ? _json['truePositives'] as core.String
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
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? Expr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

class BqmlIterationResult {
  /// \[Output-only, Beta\] Time taken to run the training iteration in
  /// milliseconds.
  core.String? durationMs;

  /// \[Output-only, Beta\] Eval loss computed on the eval data at the end of
  /// the iteration.
  ///
  /// The eval loss is used for early stopping to avoid overfitting. No eval
  /// loss if eval_split_method option is specified as no_split or auto_split
  /// with input data size less than 500 rows.
  core.double? evalLoss;

  /// \[Output-only, Beta\] Index of the ML training iteration, starting from
  /// zero for each training run.
  core.int? index;

  /// \[Output-only, Beta\] Learning rate used for this iteration, it varies for
  /// different training iterations if learn_rate_strategy option is not
  /// constant.
  core.double? learnRate;

  /// \[Output-only, Beta\] Training loss computed on the training data at the
  /// end of the iteration.
  ///
  /// The training loss function is defined by model type.
  core.double? trainingLoss;

  BqmlIterationResult({
    this.durationMs,
    this.evalLoss,
    this.index,
    this.learnRate,
    this.trainingLoss,
  });

  BqmlIterationResult.fromJson(core.Map _json)
      : this(
          durationMs: _json.containsKey('durationMs')
              ? _json['durationMs'] as core.String
              : null,
          evalLoss: _json.containsKey('evalLoss')
              ? (_json['evalLoss'] as core.num).toDouble()
              : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          learnRate: _json.containsKey('learnRate')
              ? (_json['learnRate'] as core.num).toDouble()
              : null,
          trainingLoss: _json.containsKey('trainingLoss')
              ? (_json['trainingLoss'] as core.num).toDouble()
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

/// \[Output-only, Beta\] Training options used by this training run.
///
/// These options are mutable for subsequent training runs. Default values are
/// explicitly stored for options not specified in the input query of the first
/// training run. For subsequent training runs, any option not explicitly
/// specified in the input query will be copied from the previous training run.
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

  BqmlTrainingRunTrainingOptions.fromJson(core.Map _json)
      : this(
          earlyStop: _json.containsKey('earlyStop')
              ? _json['earlyStop'] as core.bool
              : null,
          l1Reg: _json.containsKey('l1Reg')
              ? (_json['l1Reg'] as core.num).toDouble()
              : null,
          l2Reg: _json.containsKey('l2Reg')
              ? (_json['l2Reg'] as core.num).toDouble()
              : null,
          learnRate: _json.containsKey('learnRate')
              ? (_json['learnRate'] as core.num).toDouble()
              : null,
          learnRateStrategy: _json.containsKey('learnRateStrategy')
              ? _json['learnRateStrategy'] as core.String
              : null,
          lineSearchInitLearnRate: _json.containsKey('lineSearchInitLearnRate')
              ? (_json['lineSearchInitLearnRate'] as core.num).toDouble()
              : null,
          maxIteration: _json.containsKey('maxIteration')
              ? _json['maxIteration'] as core.String
              : null,
          minRelProgress: _json.containsKey('minRelProgress')
              ? (_json['minRelProgress'] as core.num).toDouble()
              : null,
          warmStart: _json.containsKey('warmStart')
              ? _json['warmStart'] as core.bool
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
  /// \[Output-only, Beta\] List of each iteration results.
  core.List<BqmlIterationResult>? iterationResults;

  /// \[Output-only, Beta\] Training run start time in milliseconds since the
  /// epoch.
  core.DateTime? startTime;

  /// \[Output-only, Beta\] Different state applicable for a training run.
  ///
  /// IN PROGRESS: Training run is in progress. FAILED: Training run ended due
  /// to a non-retryable failure. SUCCEEDED: Training run successfully
  /// completed. CANCELLED: Training run cancelled by the user.
  core.String? state;

  /// \[Output-only, Beta\] Training options used by this training run.
  ///
  /// These options are mutable for subsequent training runs. Default values are
  /// explicitly stored for options not specified in the input query of the
  /// first training run. For subsequent training runs, any option not
  /// explicitly specified in the input query will be copied from the previous
  /// training run.
  BqmlTrainingRunTrainingOptions? trainingOptions;

  BqmlTrainingRun({
    this.iterationResults,
    this.startTime,
    this.state,
    this.trainingOptions,
  });

  BqmlTrainingRun.fromJson(core.Map _json)
      : this(
          iterationResults: _json.containsKey('iterationResults')
              ? (_json['iterationResults'] as core.List)
                  .map((value) => BqmlIterationResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startTime: _json.containsKey('startTime')
              ? core.DateTime.parse(_json['startTime'] as core.String)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          trainingOptions: _json.containsKey('trainingOptions')
              ? BqmlTrainingRunTrainingOptions.fromJson(_json['trainingOptions']
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

  CategoricalValue.fromJson(core.Map _json)
      : this(
          categoryCounts: _json.containsKey('categoryCounts')
              ? (_json['categoryCounts'] as core.List)
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

  CategoryCount.fromJson(core.Map _json)
      : this(
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (count != null) 'count': count!,
      };
}

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

  CloneDefinition.fromJson(core.Map _json)
      : this(
          baseTableReference: _json.containsKey('baseTableReference')
              ? TableReference.fromJson(_json['baseTableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cloneTime: _json.containsKey('cloneTime')
              ? core.DateTime.parse(_json['cloneTime'] as core.String)
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

  Cluster.fromJson(core.Map _json)
      : this(
          centroidId: _json.containsKey('centroidId')
              ? _json['centroidId'] as core.String
              : null,
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          featureValues: _json.containsKey('featureValues')
              ? (_json['featureValues'] as core.List)
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

class Clustering {
  /// \[Repeated\] One or more fields on which data should be clustered.
  ///
  /// Only top-level, non-repeated, simple-type fields are supported. When you
  /// cluster a table using multiple columns, the order of columns you specify
  /// is important. The order of the specified columns determines the sort order
  /// of the data.
  core.List<core.String>? fields;

  Clustering({
    this.fields,
  });

  Clustering.fromJson(core.Map _json)
      : this(
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
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

  ClusteringMetrics.fromJson(core.Map _json)
      : this(
          clusters: _json.containsKey('clusters')
              ? (_json['clusters'] as core.List)
                  .map((value) => Cluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          daviesBouldinIndex: _json.containsKey('daviesBouldinIndex')
              ? (_json['daviesBouldinIndex'] as core.num).toDouble()
              : null,
          meanSquaredDistance: _json.containsKey('meanSquaredDistance')
              ? (_json['meanSquaredDistance'] as core.num).toDouble()
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

  ConfusionMatrix.fromJson(core.Map _json)
      : this(
          confidenceThreshold: _json.containsKey('confidenceThreshold')
              ? (_json['confidenceThreshold'] as core.num).toDouble()
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
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

class ConnectionProperty {
  /// Name of the connection property to set.
  ///
  /// Required.
  core.String? key;

  /// Value of the connection property.
  ///
  /// Required.
  core.String? value;

  ConnectionProperty({
    this.key,
    this.value,
  });

  ConnectionProperty.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

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
  /// The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8.
  /// BigQuery decodes the data after the raw, binary data has been split using
  /// the values of the quote and fieldDelimiter properties.
  ///
  /// Optional.
  core.String? encoding;

  /// The separator for fields in a CSV file.
  ///
  /// BigQuery converts the string to ISO-8859-1 encoding, and then uses the
  /// first byte of the encoded string to split the data in its raw, binary
  /// state. BigQuery also supports the escape sequence "\t" to specify a tab
  /// separator. The default value is a comma (',').
  ///
  /// Optional.
  core.String? fieldDelimiter;

  /// An custom string that will represent a NULL value in CSV import data.
  ///
  /// Optional.
  core.String? nullMarker;

  /// The value that is used to quote data sections in a CSV file.
  ///
  /// BigQuery converts the string to ISO-8859-1 encoding, and then uses the
  /// first byte of the encoded string to split the data in its raw, binary
  /// state. The default value is a double-quote ('"'). If your data does not
  /// contain quoted sections, set the property value to an empty string. If
  /// your data contains quoted newline characters, you must also set the
  /// allowQuotedNewlines property to true.
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
    this.quote,
    this.skipLeadingRows,
  });

  CsvOptions.fromJson(core.Map _json)
      : this(
          allowJaggedRows: _json.containsKey('allowJaggedRows')
              ? _json['allowJaggedRows'] as core.bool
              : null,
          allowQuotedNewlines: _json.containsKey('allowQuotedNewlines')
              ? _json['allowQuotedNewlines'] as core.bool
              : null,
          encoding: _json.containsKey('encoding')
              ? _json['encoding'] as core.String
              : null,
          fieldDelimiter: _json.containsKey('fieldDelimiter')
              ? _json['fieldDelimiter'] as core.String
              : null,
          nullMarker: _json.containsKey('null_marker')
              ? _json['null_marker'] as core.String
              : null,
          quote:
              _json.containsKey('quote') ? _json['quote'] as core.String : null,
          skipLeadingRows: _json.containsKey('skipLeadingRows')
              ? _json['skipLeadingRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowJaggedRows != null) 'allowJaggedRows': allowJaggedRows!,
        if (allowQuotedNewlines != null)
          'allowQuotedNewlines': allowQuotedNewlines!,
        if (encoding != null) 'encoding': encoding!,
        if (fieldDelimiter != null) 'fieldDelimiter': fieldDelimiter!,
        if (nullMarker != null) 'null_marker': nullMarker!,
        if (quote != null) 'quote': quote!,
        if (skipLeadingRows != null) 'skipLeadingRows': skipLeadingRows!,
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

  DataSplitResult.fromJson(core.Map _json)
      : this(
          evaluationTable: _json.containsKey('evaluationTable')
              ? TableReference.fromJson(_json['evaluationTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          testTable: _json.containsKey('testTable')
              ? TableReference.fromJson(
                  _json['testTable'] as core.Map<core.String, core.dynamic>)
              : null,
          trainingTable: _json.containsKey('trainingTable')
              ? TableReference.fromJson(
                  _json['trainingTable'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluationTable != null) 'evaluationTable': evaluationTable!,
        if (testTable != null) 'testTable': testTable!,
        if (trainingTable != null) 'trainingTable': trainingTable!,
      };
}

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
  /// The following legacy mappings will be applied: OWNER
  /// roles/bigquery.dataOwner WRITER roles/bigquery.dataEditor READER
  /// roles/bigquery.dataViewer This field will accept any of the above formats,
  /// but will return only the legacy format. For example, if you set this field
  /// to "roles/bigquery.dataOwner", it will be returned back as "OWNER".
  ///
  /// Required.
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
  /// Queries executed against that view will have read access to tables in this
  /// dataset. The role field is not required when this field is set. If that
  /// view is updated by any user, access to the view needs to be granted again
  /// via an update operation.
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

  DatasetAccess.fromJson(core.Map _json)
      : this(
          dataset: _json.containsKey('dataset')
              ? DatasetAccessEntry.fromJson(
                  _json['dataset'] as core.Map<core.String, core.dynamic>)
              : null,
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          groupByEmail: _json.containsKey('groupByEmail')
              ? _json['groupByEmail'] as core.String
              : null,
          iamMember: _json.containsKey('iamMember')
              ? _json['iamMember'] as core.String
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
          routine: _json.containsKey('routine')
              ? RoutineReference.fromJson(
                  _json['routine'] as core.Map<core.String, core.dynamic>)
              : null,
          specialGroup: _json.containsKey('specialGroup')
              ? _json['specialGroup'] as core.String
              : null,
          userByEmail: _json.containsKey('userByEmail')
              ? _json['userByEmail'] as core.String
              : null,
          view: _json.containsKey('view')
              ? TableReference.fromJson(
                  _json['view'] as core.Map<core.String, core.dynamic>)
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

class DatasetTags {
  /// The namespaced friendly name of the tag key, e.g. "12345/environment"
  /// where 12345 is org id.
  ///
  /// Required.
  core.String? tagKey;

  /// Friendly short name of the tag value, e.g. "production".
  ///
  /// Required.
  core.String? tagValue;

  DatasetTags({
    this.tagKey,
    this.tagValue,
  });

  DatasetTags.fromJson(core.Map _json)
      : this(
          tagKey: _json.containsKey('tagKey')
              ? _json['tagKey'] as core.String
              : null,
          tagValue: _json.containsKey('tagValue')
              ? _json['tagValue'] as core.String
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

  /// \[Output-only\] The time when this dataset was created, in milliseconds
  /// since the epoch.
  core.String? creationTime;

  /// A reference that identifies the dataset.
  ///
  /// Required.
  DatasetReference? datasetReference;

  /// \[Output-only\] The default collation of the dataset.
  core.String? defaultCollation;
  EncryptionConfiguration? defaultEncryptionConfiguration;

  /// The default partition expiration for all partitioned tables in the
  /// dataset, in milliseconds.
  ///
  /// Once this property is set, all newly-created partitioned tables in the
  /// dataset will have an expirationMs property in the timePartitioning
  /// settings set to this value, and changing the value will only affect new
  /// tables, not existing ones. The storage in a partition will have an
  /// expiration time of its partition time plus this value. Setting this
  /// property overrides the use of defaultTableExpirationMs for partitioned
  /// tables: only one of defaultTableExpirationMs and
  /// defaultPartitionExpirationMs will be used for any new partitioned table.
  /// If you provide an explicit timePartitioning.expirationMs when creating or
  /// updating a partitioned table, that value takes precedence over the default
  /// partition expiration time indicated by this property.
  ///
  /// Optional.
  core.String? defaultPartitionExpirationMs;

  /// The default lifetime of all tables in the dataset, in milliseconds.
  ///
  /// The minimum value is 3600000 milliseconds (one hour). Once this property
  /// is set, all newly-created tables in the dataset will have an
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

  /// \[Output-only\] A hash of the resource.
  core.String? etag;

  /// A descriptive name for the dataset.
  ///
  /// Optional.
  core.String? friendlyName;

  /// \[Output-only\] The fully-qualified unique name of the dataset in the
  /// format projectId:datasetId.
  ///
  /// The dataset name without the project name is given in the datasetId field.
  /// When creating a new dataset, leave this field blank, and instead specify
  /// the datasetId field.
  core.String? id;

  /// Indicates if table names are case insensitive in the dataset.
  ///
  /// Optional.
  core.bool? isCaseInsensitive;

  /// \[Output-only\] The resource type.
  core.String? kind;

  /// The labels associated with this dataset.
  ///
  /// You can use these to organize and group your datasets. You can set this
  /// property when inserting or updating a dataset. See Creating and Updating
  /// Dataset Labels for more information.
  core.Map<core.String, core.String>? labels;

  /// \[Output-only\] The date when this dataset or any of its tables was last
  /// modified, in milliseconds since the epoch.
  core.String? lastModifiedTime;

  /// The geographic location where the dataset should reside.
  ///
  /// The default value is US. See details at
  /// https://cloud.google.com/bigquery/docs/locations.
  core.String? location;

  /// Number of hours for the max time travel for all tables in the dataset.
  ///
  /// Optional.
  core.String? maxTimeTravelHours;

  /// \[Output-only\] Reserved for future use.
  core.bool? satisfiesPzs;

  /// \[Output-only\] A URL that can be used to access the resource again.
  ///
  /// You can use this URL in Get or Update requests to the resource.
  core.String? selfLink;

  /// \[Optional\]The tags associated with this dataset.
  ///
  /// Tag keys are globally unique.
  core.List<DatasetTags>? tags;

  Dataset({
    this.access,
    this.creationTime,
    this.datasetReference,
    this.defaultCollation,
    this.defaultEncryptionConfiguration,
    this.defaultPartitionExpirationMs,
    this.defaultTableExpirationMs,
    this.description,
    this.etag,
    this.friendlyName,
    this.id,
    this.isCaseInsensitive,
    this.kind,
    this.labels,
    this.lastModifiedTime,
    this.location,
    this.maxTimeTravelHours,
    this.satisfiesPzs,
    this.selfLink,
    this.tags,
  });

  Dataset.fromJson(core.Map _json)
      : this(
          access: _json.containsKey('access')
              ? (_json['access'] as core.List)
                  .map((value) => DatasetAccess.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          creationTime: _json.containsKey('creationTime')
              ? _json['creationTime'] as core.String
              : null,
          datasetReference: _json.containsKey('datasetReference')
              ? DatasetReference.fromJson(_json['datasetReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          defaultCollation: _json.containsKey('defaultCollation')
              ? _json['defaultCollation'] as core.String
              : null,
          defaultEncryptionConfiguration:
              _json.containsKey('defaultEncryptionConfiguration')
                  ? EncryptionConfiguration.fromJson(
                      _json['defaultEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          defaultPartitionExpirationMs:
              _json.containsKey('defaultPartitionExpirationMs')
                  ? _json['defaultPartitionExpirationMs'] as core.String
                  : null,
          defaultTableExpirationMs:
              _json.containsKey('defaultTableExpirationMs')
                  ? _json['defaultTableExpirationMs'] as core.String
                  : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          friendlyName: _json.containsKey('friendlyName')
              ? _json['friendlyName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          isCaseInsensitive: _json.containsKey('isCaseInsensitive')
              ? _json['isCaseInsensitive'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lastModifiedTime: _json.containsKey('lastModifiedTime')
              ? _json['lastModifiedTime'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          maxTimeTravelHours: _json.containsKey('maxTimeTravelHours')
              ? _json['maxTimeTravelHours'] as core.String
              : null,
          satisfiesPzs: _json.containsKey('satisfiesPzs')
              ? _json['satisfiesPzs'] as core.bool
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => DatasetTags.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
        if (defaultTableExpirationMs != null)
          'defaultTableExpirationMs': defaultTableExpirationMs!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (id != null) 'id': id!,
        if (isCaseInsensitive != null) 'isCaseInsensitive': isCaseInsensitive!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (location != null) 'location': location!,
        if (maxTimeTravelHours != null)
          'maxTimeTravelHours': maxTimeTravelHours!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (tags != null) 'tags': tags!,
      };
}

class DatasetAccessEntry {
  /// The dataset this entry applies to.
  ///
  /// Required.
  DatasetReference? dataset;
  core.List<core.String>? targetTypes;

  DatasetAccessEntry({
    this.dataset,
    this.targetTypes,
  });

  DatasetAccessEntry.fromJson(core.Map _json)
      : this(
          dataset: _json.containsKey('dataset')
              ? DatasetReference.fromJson(
                  _json['dataset'] as core.Map<core.String, core.dynamic>)
              : null,
          targetTypes: _json.containsKey('targetTypes')
              ? (_json['targetTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (targetTypes != null) 'targetTypes': targetTypes!,
      };
}

class DatasetListDatasets {
  /// The dataset reference.
  ///
  /// Use this property to access specific parts of the dataset's ID, such as
  /// project ID or dataset ID.
  DatasetReference? datasetReference;

  /// A descriptive name for the dataset, if one exists.
  core.String? friendlyName;

  /// The fully-qualified, unique, opaque ID of the dataset.
  core.String? id;

  /// The resource type.
  ///
  /// This property always returns the value "bigquery#dataset".
  core.String? kind;

  /// The labels associated with this dataset.
  ///
  /// You can use these to organize and group your datasets.
  core.Map<core.String, core.String>? labels;

  /// The geographic location where the data resides.
  core.String? location;

  DatasetListDatasets({
    this.datasetReference,
    this.friendlyName,
    this.id,
    this.kind,
    this.labels,
    this.location,
  });

  DatasetListDatasets.fromJson(core.Map _json)
      : this(
          datasetReference: _json.containsKey('datasetReference')
              ? DatasetReference.fromJson(_json['datasetReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          friendlyName: _json.containsKey('friendlyName')
              ? _json['friendlyName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
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
  core.String? etag;

  /// The list type.
  ///
  /// This property always returns the value "bigquery#datasetList".
  core.String? kind;

  /// A token that can be used to request the next results page.
  ///
  /// This property is omitted on the final results page.
  core.String? nextPageToken;

  DatasetList({
    this.datasets,
    this.etag,
    this.kind,
    this.nextPageToken,
  });

  DatasetList.fromJson(core.Map _json)
      : this(
          datasets: _json.containsKey('datasets')
              ? (_json['datasets'] as core.List)
                  .map((value) => DatasetListDatasets.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasets != null) 'datasets': datasets!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  DatasetReference.fromJson(core.Map _json)
      : this(
          datasetId: _json.containsKey('datasetId')
              ? _json['datasetId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

class DestinationTableProperties {
  /// The description for the destination table.
  ///
  /// This will only be used if the destination table is newly created. If the
  /// table already exists and a value different than the current description is
  /// provided, the job will fail.
  ///
  /// Optional.
  core.String? description;

  /// \[Internal\] This field is for Google internal use only.
  core.DateTime? expirationTime;

  /// The friendly name for the destination table.
  ///
  /// This will only be used if the destination table is newly created. If the
  /// table already exists and a value different than the current friendly name
  /// is provided, the job will fail.
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

  DestinationTableProperties.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expirationTime: _json.containsKey('expirationTime')
              ? core.DateTime.parse(_json['expirationTime'] as core.String)
              : null,
          friendlyName: _json.containsKey('friendlyName')
              ? _json['friendlyName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
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

/// Model evaluation metrics for dimensionality reduction models.
class DimensionalityReductionMetrics {
  /// Total percentage of variance explained by the selected principal
  /// components.
  core.double? totalExplainedVarianceRatio;

  DimensionalityReductionMetrics({
    this.totalExplainedVarianceRatio,
  });

  DimensionalityReductionMetrics.fromJson(core.Map _json)
      : this(
          totalExplainedVarianceRatio: _json
                  .containsKey('totalExplainedVarianceRatio')
              ? (_json['totalExplainedVarianceRatio'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalExplainedVarianceRatio != null)
          'totalExplainedVarianceRatio': totalExplainedVarianceRatio!,
      };
}

class DmlStatistics {
  /// Number of deleted Rows.
  ///
  /// populated by DML DELETE, MERGE and TRUNCATE statements.
  core.String? deletedRowCount;

  /// Number of inserted Rows.
  ///
  /// Populated by DML INSERT and MERGE statements.
  core.String? insertedRowCount;

  /// Number of updated Rows.
  ///
  /// Populated by DML UPDATE and MERGE statements.
  core.String? updatedRowCount;

  DmlStatistics({
    this.deletedRowCount,
    this.insertedRowCount,
    this.updatedRowCount,
  });

  DmlStatistics.fromJson(core.Map _json)
      : this(
          deletedRowCount: _json.containsKey('deletedRowCount')
              ? _json['deletedRowCount'] as core.String
              : null,
          insertedRowCount: _json.containsKey('insertedRowCount')
              ? _json['insertedRowCount'] as core.String
              : null,
          updatedRowCount: _json.containsKey('updatedRowCount')
              ? _json['updatedRowCount'] as core.String
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

  DoubleCandidates.fromJson(core.Map _json)
      : this(
          candidates: _json.containsKey('candidates')
              ? (_json['candidates'] as core.List)
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

  DoubleHparamSearchSpace.fromJson(core.Map _json)
      : this(
          candidates: _json.containsKey('candidates')
              ? DoubleCandidates.fromJson(
                  _json['candidates'] as core.Map<core.String, core.dynamic>)
              : null,
          range: _json.containsKey('range')
              ? DoubleRange.fromJson(
                  _json['range'] as core.Map<core.String, core.dynamic>)
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

  DoubleRange.fromJson(core.Map _json)
      : this(
          max: _json.containsKey('max')
              ? (_json['max'] as core.num).toDouble()
              : null,
          min: _json.containsKey('min')
              ? (_json['min'] as core.num).toDouble()
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

  EncryptionConfiguration.fromJson(core.Map _json)
      : this(
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
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

  Entry.fromJson(core.Map _json)
      : this(
          itemCount: _json.containsKey('itemCount')
              ? _json['itemCount'] as core.String
              : null,
          predictedLabel: _json.containsKey('predictedLabel')
              ? _json['predictedLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (itemCount != null) 'itemCount': itemCount!,
        if (predictedLabel != null) 'predictedLabel': predictedLabel!,
      };
}

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

  ErrorProto.fromJson(core.Map _json)
      : this(
          debugInfo: _json.containsKey('debugInfo')
              ? _json['debugInfo'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
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

  EvaluationMetrics.fromJson(core.Map _json)
      : this(
          arimaForecastingMetrics: _json.containsKey('arimaForecastingMetrics')
              ? ArimaForecastingMetrics.fromJson(
                  _json['arimaForecastingMetrics']
                      as core.Map<core.String, core.dynamic>)
              : null,
          binaryClassificationMetrics:
              _json.containsKey('binaryClassificationMetrics')
                  ? BinaryClassificationMetrics.fromJson(
                      _json['binaryClassificationMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          clusteringMetrics: _json.containsKey('clusteringMetrics')
              ? ClusteringMetrics.fromJson(_json['clusteringMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dimensionalityReductionMetrics:
              _json.containsKey('dimensionalityReductionMetrics')
                  ? DimensionalityReductionMetrics.fromJson(
                      _json['dimensionalityReductionMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          multiClassClassificationMetrics:
              _json.containsKey('multiClassClassificationMetrics')
                  ? MultiClassClassificationMetrics.fromJson(
                      _json['multiClassClassificationMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          rankingMetrics: _json.containsKey('rankingMetrics')
              ? RankingMetrics.fromJson(_json['rankingMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          regressionMetrics: _json.containsKey('regressionMetrics')
              ? RegressionMetrics.fromJson(_json['regressionMetrics']
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

class ExplainQueryStage {
  /// Number of parallel input segments completed.
  core.String? completedParallelInputs;

  /// Milliseconds the average shard spent on CPU-bound tasks.
  core.String? computeMsAvg;

  /// Milliseconds the slowest shard spent on CPU-bound tasks.
  core.String? computeMsMax;

  /// Relative amount of time the average shard spent on CPU-bound tasks.
  core.double? computeRatioAvg;

  /// Relative amount of time the slowest shard spent on CPU-bound tasks.
  core.double? computeRatioMax;

  /// Stage end time represented as milliseconds since epoch.
  core.String? endMs;

  /// Unique ID for stage within plan.
  core.String? id;

  /// IDs for stages that are inputs to this stage.
  core.List<core.String>? inputStages;

  /// Human-readable name for stage.
  core.String? name;

  /// Number of parallel input segments to be processed.
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

  /// Stage start time represented as milliseconds since epoch.
  core.String? startMs;

  /// Current status for the stage.
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

  ExplainQueryStage.fromJson(core.Map _json)
      : this(
          completedParallelInputs: _json.containsKey('completedParallelInputs')
              ? _json['completedParallelInputs'] as core.String
              : null,
          computeMsAvg: _json.containsKey('computeMsAvg')
              ? _json['computeMsAvg'] as core.String
              : null,
          computeMsMax: _json.containsKey('computeMsMax')
              ? _json['computeMsMax'] as core.String
              : null,
          computeRatioAvg: _json.containsKey('computeRatioAvg')
              ? (_json['computeRatioAvg'] as core.num).toDouble()
              : null,
          computeRatioMax: _json.containsKey('computeRatioMax')
              ? (_json['computeRatioMax'] as core.num).toDouble()
              : null,
          endMs:
              _json.containsKey('endMs') ? _json['endMs'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          inputStages: _json.containsKey('inputStages')
              ? (_json['inputStages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parallelInputs: _json.containsKey('parallelInputs')
              ? _json['parallelInputs'] as core.String
              : null,
          readMsAvg: _json.containsKey('readMsAvg')
              ? _json['readMsAvg'] as core.String
              : null,
          readMsMax: _json.containsKey('readMsMax')
              ? _json['readMsMax'] as core.String
              : null,
          readRatioAvg: _json.containsKey('readRatioAvg')
              ? (_json['readRatioAvg'] as core.num).toDouble()
              : null,
          readRatioMax: _json.containsKey('readRatioMax')
              ? (_json['readRatioMax'] as core.num).toDouble()
              : null,
          recordsRead: _json.containsKey('recordsRead')
              ? _json['recordsRead'] as core.String
              : null,
          recordsWritten: _json.containsKey('recordsWritten')
              ? _json['recordsWritten'] as core.String
              : null,
          shuffleOutputBytes: _json.containsKey('shuffleOutputBytes')
              ? _json['shuffleOutputBytes'] as core.String
              : null,
          shuffleOutputBytesSpilled:
              _json.containsKey('shuffleOutputBytesSpilled')
                  ? _json['shuffleOutputBytesSpilled'] as core.String
                  : null,
          slotMs: _json.containsKey('slotMs')
              ? _json['slotMs'] as core.String
              : null,
          startMs: _json.containsKey('startMs')
              ? _json['startMs'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          steps: _json.containsKey('steps')
              ? (_json['steps'] as core.List)
                  .map((value) => ExplainQueryStep.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          waitMsAvg: _json.containsKey('waitMsAvg')
              ? _json['waitMsAvg'] as core.String
              : null,
          waitMsMax: _json.containsKey('waitMsMax')
              ? _json['waitMsMax'] as core.String
              : null,
          waitRatioAvg: _json.containsKey('waitRatioAvg')
              ? (_json['waitRatioAvg'] as core.num).toDouble()
              : null,
          waitRatioMax: _json.containsKey('waitRatioMax')
              ? (_json['waitRatioMax'] as core.num).toDouble()
              : null,
          writeMsAvg: _json.containsKey('writeMsAvg')
              ? _json['writeMsAvg'] as core.String
              : null,
          writeMsMax: _json.containsKey('writeMsMax')
              ? _json['writeMsMax'] as core.String
              : null,
          writeRatioAvg: _json.containsKey('writeRatioAvg')
              ? (_json['writeRatioAvg'] as core.num).toDouble()
              : null,
          writeRatioMax: _json.containsKey('writeRatioMax')
              ? (_json['writeRatioMax'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completedParallelInputs != null)
          'completedParallelInputs': completedParallelInputs!,
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

class ExplainQueryStep {
  /// Machine-readable operation type.
  core.String? kind;

  /// Human-readable stage descriptions.
  core.List<core.String>? substeps;

  ExplainQueryStep({
    this.kind,
    this.substeps,
  });

  ExplainQueryStep.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          substeps: _json.containsKey('substeps')
              ? (_json['substeps'] as core.List)
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

  Explanation.fromJson(core.Map _json)
      : this(
          attribution: _json.containsKey('attribution')
              ? (_json['attribution'] as core.num).toDouble()
              : null,
          featureName: _json.containsKey('featureName')
              ? _json['featureName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attribution != null) 'attribution': attribution!,
        if (featureName != null) 'featureName': featureName!,
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

class ExternalDataConfiguration {
  /// Try to detect schema and format options automatically.
  ///
  /// Any option specified explicitly will be honored.
  core.bool? autodetect;

  /// Additional properties to set if sourceFormat is set to Avro.
  AvroOptions? avroOptions;

  /// Additional options if sourceFormat is set to BIGTABLE.
  ///
  /// Optional.
  BigtableOptions? bigtableOptions;

  /// The compression type of the data source.
  ///
  /// Possible values include GZIP and NONE. The default value is NONE. This
  /// setting is ignored for Google Cloud Bigtable, Google Cloud Datastore
  /// backups and Avro formats.
  ///
  /// Optional.
  core.String? compression;

  /// \[Optional, Trusted Tester\] Connection for external data source.
  core.String? connectionId;

  /// Additional properties to set if sourceFormat is set to CSV.
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
  /// "BIGNUMERIC"\]. If (precision,scale) is: (38,9) -\> NUMERIC; (39,9) -\>
  /// BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -\> BIGNUMERIC
  /// (NUMERIC cannot hold 10 fractional digits); (76,38) -\> BIGNUMERIC;
  /// (77,38) -\> BIGNUMERIC (error if value exeeds supported range). This field
  /// cannot contain duplicate types. The order of the types in this field is
  /// ignored. For example, \["BIGNUMERIC", "NUMERIC"\] is the same as
  /// \["NUMERIC", "BIGNUMERIC"\] and NUMERIC always takes precedence over
  /// BIGNUMERIC. Defaults to \["NUMERIC", "STRING"\] for ORC and \["NUMERIC"\]
  /// for the other file formats.
  ///
  /// Optional.
  core.List<core.String>? decimalTargetTypes;

  /// Additional options if sourceFormat is set to GOOGLE_SHEETS.
  ///
  /// Optional.
  GoogleSheetsOptions? googleSheetsOptions;

  /// Options to configure hive partitioning support.
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
  ///
  /// Optional.
  core.bool? ignoreUnknownValues;

  /// The maximum number of bad records that BigQuery can ignore when reading
  /// data.
  ///
  /// If the number of bad records exceeds this value, an invalid error is
  /// returned in the job result. This is only valid for CSV, JSON, and Google
  /// Sheets. The default value is 0, which requires that all records are valid.
  /// This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore
  /// backups and Avro formats.
  ///
  /// Optional.
  core.int? maxBadRecords;

  /// Additional properties to set if sourceFormat is set to Parquet.
  ParquetOptions? parquetOptions;

  /// The schema for the data.
  ///
  /// Schema is required for CSV and JSON formats. Schema is disallowed for
  /// Google Cloud Bigtable, Cloud Datastore backups, and Avro formats.
  ///
  /// Optional.
  TableSchema? schema;

  /// The data format.
  ///
  /// For CSV files, specify "CSV". For Google sheets, specify "GOOGLE_SHEETS".
  /// For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro
  /// files, specify "AVRO". For Google Cloud Datastore backups, specify
  /// "DATASTORE_BACKUP". \[Beta\] For Google Cloud Bigtable, specify
  /// "BIGTABLE".
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
    this.googleSheetsOptions,
    this.hivePartitioningOptions,
    this.ignoreUnknownValues,
    this.maxBadRecords,
    this.parquetOptions,
    this.schema,
    this.sourceFormat,
    this.sourceUris,
  });

  ExternalDataConfiguration.fromJson(core.Map _json)
      : this(
          autodetect: _json.containsKey('autodetect')
              ? _json['autodetect'] as core.bool
              : null,
          avroOptions: _json.containsKey('avroOptions')
              ? AvroOptions.fromJson(
                  _json['avroOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          bigtableOptions: _json.containsKey('bigtableOptions')
              ? BigtableOptions.fromJson(_json['bigtableOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          compression: _json.containsKey('compression')
              ? _json['compression'] as core.String
              : null,
          connectionId: _json.containsKey('connectionId')
              ? _json['connectionId'] as core.String
              : null,
          csvOptions: _json.containsKey('csvOptions')
              ? CsvOptions.fromJson(
                  _json['csvOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          decimalTargetTypes: _json.containsKey('decimalTargetTypes')
              ? (_json['decimalTargetTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          googleSheetsOptions: _json.containsKey('googleSheetsOptions')
              ? GoogleSheetsOptions.fromJson(_json['googleSheetsOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hivePartitioningOptions: _json.containsKey('hivePartitioningOptions')
              ? HivePartitioningOptions.fromJson(
                  _json['hivePartitioningOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          ignoreUnknownValues: _json.containsKey('ignoreUnknownValues')
              ? _json['ignoreUnknownValues'] as core.bool
              : null,
          maxBadRecords: _json.containsKey('maxBadRecords')
              ? _json['maxBadRecords'] as core.int
              : null,
          parquetOptions: _json.containsKey('parquetOptions')
              ? ParquetOptions.fromJson(_json['parquetOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          schema: _json.containsKey('schema')
              ? TableSchema.fromJson(
                  _json['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceFormat: _json.containsKey('sourceFormat')
              ? _json['sourceFormat'] as core.String
              : null,
          sourceUris: _json.containsKey('sourceUris')
              ? (_json['sourceUris'] as core.List)
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
        if (googleSheetsOptions != null)
          'googleSheetsOptions': googleSheetsOptions!,
        if (hivePartitioningOptions != null)
          'hivePartitioningOptions': hivePartitioningOptions!,
        if (ignoreUnknownValues != null)
          'ignoreUnknownValues': ignoreUnknownValues!,
        if (maxBadRecords != null) 'maxBadRecords': maxBadRecords!,
        if (parquetOptions != null) 'parquetOptions': parquetOptions!,
        if (schema != null) 'schema': schema!,
        if (sourceFormat != null) 'sourceFormat': sourceFormat!,
        if (sourceUris != null) 'sourceUris': sourceUris!,
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

  FeatureValue.fromJson(core.Map _json)
      : this(
          categoricalValue: _json.containsKey('categoricalValue')
              ? CategoricalValue.fromJson(_json['categoricalValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          featureColumn: _json.containsKey('featureColumn')
              ? _json['featureColumn'] as core.String
              : null,
          numericalValue: _json.containsKey('numericalValue')
              ? (_json['numericalValue'] as core.num).toDouble()
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

  GetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          options: _json.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  _json['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

class GetQueryResultsResponse {
  /// Whether the query result was fetched from the query cache.
  core.bool? cacheHit;

  /// \[Output-only\] The first errors or warnings encountered during the
  /// running of the job.
  ///
  /// The final message includes the number of errors that caused the process to
  /// stop. Errors here do not necessarily mean that the job has completed or
  /// was unsuccessful.
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

  /// \[Output-only\] The number of rows affected by a DML statement.
  ///
  /// Present only for DML statements INSERT, UPDATE or DELETE.
  core.String? numDmlAffectedRows;

  /// A token used for paging results.
  core.String? pageToken;

  /// An object with as many results as can be contained within the maximum
  /// permitted reply size.
  ///
  /// To get any additional rows, you can call GetQueryResults and specify the
  /// jobReference returned above. Present only when the query completes
  /// successfully.
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

  GetQueryResultsResponse.fromJson(core.Map _json)
      : this(
          cacheHit: _json.containsKey('cacheHit')
              ? _json['cacheHit'] as core.bool
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => ErrorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          jobComplete: _json.containsKey('jobComplete')
              ? _json['jobComplete'] as core.bool
              : null,
          jobReference: _json.containsKey('jobReference')
              ? JobReference.fromJson(
                  _json['jobReference'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          numDmlAffectedRows: _json.containsKey('numDmlAffectedRows')
              ? _json['numDmlAffectedRows'] as core.String
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => TableRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          schema: _json.containsKey('schema')
              ? TableSchema.fromJson(
                  _json['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          totalBytesProcessed: _json.containsKey('totalBytesProcessed')
              ? _json['totalBytesProcessed'] as core.String
              : null,
          totalRows: _json.containsKey('totalRows')
              ? _json['totalRows'] as core.String
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

class GetServiceAccountResponse {
  /// The service account email address.
  core.String? email;

  /// The resource type of the response.
  core.String? kind;

  GetServiceAccountResponse({
    this.email,
    this.kind,
  });

  GetServiceAccountResponse.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
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

  GlobalExplanation.fromJson(core.Map _json)
      : this(
          classLabel: _json.containsKey('classLabel')
              ? _json['classLabel'] as core.String
              : null,
          explanations: _json.containsKey('explanations')
              ? (_json['explanations'] as core.List)
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
  /// that should be skipped. When autodetect is on, behavior is the following:
  /// * skipLeadingRows unspecified - Autodetect tries to detect headers in the
  /// first row. If they are not detected, the row is read as data. Otherwise
  /// data is read starting from the second row. * skipLeadingRows is 0 -
  /// Instructs autodetect that there are no headers and data should be read
  /// starting from the first row. * skipLeadingRows = N \> 0 - Autodetect skips
  /// N-1 rows and tries to detect headers in row N. If headers are not
  /// detected, row N is just skipped. Otherwise row N is used to extract column
  /// names for the detected schema.
  ///
  /// Optional.
  core.String? skipLeadingRows;

  GoogleSheetsOptions({
    this.range,
    this.skipLeadingRows,
  });

  GoogleSheetsOptions.fromJson(core.Map _json)
      : this(
          range:
              _json.containsKey('range') ? _json['range'] as core.String : null,
          skipLeadingRows: _json.containsKey('skipLeadingRows')
              ? _json['skipLeadingRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
        if (skipLeadingRows != null) 'skipLeadingRows': skipLeadingRows!,
      };
}

class HivePartitioningOptions {
  /// When set, what mode of hive partitioning to use when reading data.
  ///
  /// The following modes are supported. (1) AUTO: automatically infer partition
  /// key name(s) and type(s). (2) STRINGS: automatically infer partition key
  /// name(s). All types are interpreted as strings. (3) CUSTOM: partition key
  /// schema is encoded in the source URI prefix. Not all storage formats
  /// support hive partitioning. Requesting hive partitioning on an unsupported
  /// format will lead to an error. Currently supported types include: AVRO,
  /// CSV, JSON, ORC and Parquet.
  ///
  /// Optional.
  core.String? mode;

  /// If set to true, queries over this table require a partition filter that
  /// can be used for partition elimination to be specified.
  ///
  /// Note that this field should only be true when creating a permanent
  /// external table or querying a temporary external table. Hive-partitioned
  /// loads with requirePartitionFilter explicitly set to true will fail.
  ///
  /// Optional.
  core.bool? requirePartitionFilter;

  /// When hive partition detection is requested, a common prefix for all source
  /// uris should be supplied.
  ///
  /// The prefix must end immediately before the partition key encoding begins.
  /// For example, consider files following this data layout.
  /// gs://bucket/path_to_table/dt=2019-01-01/country=BR/id=7/file.avro
  /// gs://bucket/path_to_table/dt=2018-12-31/country=CA/id=3/file.avro When
  /// hive partitioning is requested with either AUTO or STRINGS detection, the
  /// common prefix can be either of gs://bucket/path_to_table or
  /// gs://bucket/path_to_table/ (trailing slash does not matter).
  ///
  /// Optional.
  core.String? sourceUriPrefix;

  HivePartitioningOptions({
    this.mode,
    this.requirePartitionFilter,
    this.sourceUriPrefix,
  });

  HivePartitioningOptions.fromJson(core.Map _json)
      : this(
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
          requirePartitionFilter: _json.containsKey('requirePartitionFilter')
              ? _json['requirePartitionFilter'] as core.bool
              : null,
          sourceUriPrefix: _json.containsKey('sourceUriPrefix')
              ? _json['sourceUriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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

  HparamSearchSpaces.fromJson(core.Map _json)
      : this(
          activationFn: _json.containsKey('activationFn')
              ? StringHparamSearchSpace.fromJson(
                  _json['activationFn'] as core.Map<core.String, core.dynamic>)
              : null,
          batchSize: _json.containsKey('batchSize')
              ? IntHparamSearchSpace.fromJson(
                  _json['batchSize'] as core.Map<core.String, core.dynamic>)
              : null,
          boosterType: _json.containsKey('boosterType')
              ? StringHparamSearchSpace.fromJson(
                  _json['boosterType'] as core.Map<core.String, core.dynamic>)
              : null,
          colsampleBylevel: _json.containsKey('colsampleBylevel')
              ? DoubleHparamSearchSpace.fromJson(_json['colsampleBylevel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          colsampleBynode: _json.containsKey('colsampleBynode')
              ? DoubleHparamSearchSpace.fromJson(_json['colsampleBynode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          colsampleBytree: _json.containsKey('colsampleBytree')
              ? DoubleHparamSearchSpace.fromJson(_json['colsampleBytree']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dartNormalizeType: _json.containsKey('dartNormalizeType')
              ? StringHparamSearchSpace.fromJson(_json['dartNormalizeType']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dropout: _json.containsKey('dropout')
              ? DoubleHparamSearchSpace.fromJson(
                  _json['dropout'] as core.Map<core.String, core.dynamic>)
              : null,
          hiddenUnits: _json.containsKey('hiddenUnits')
              ? IntArrayHparamSearchSpace.fromJson(
                  _json['hiddenUnits'] as core.Map<core.String, core.dynamic>)
              : null,
          l1Reg: _json.containsKey('l1Reg')
              ? DoubleHparamSearchSpace.fromJson(
                  _json['l1Reg'] as core.Map<core.String, core.dynamic>)
              : null,
          l2Reg: _json.containsKey('l2Reg')
              ? DoubleHparamSearchSpace.fromJson(
                  _json['l2Reg'] as core.Map<core.String, core.dynamic>)
              : null,
          learnRate: _json.containsKey('learnRate')
              ? DoubleHparamSearchSpace.fromJson(
                  _json['learnRate'] as core.Map<core.String, core.dynamic>)
              : null,
          maxTreeDepth: _json.containsKey('maxTreeDepth')
              ? IntHparamSearchSpace.fromJson(
                  _json['maxTreeDepth'] as core.Map<core.String, core.dynamic>)
              : null,
          minSplitLoss: _json.containsKey('minSplitLoss')
              ? DoubleHparamSearchSpace.fromJson(
                  _json['minSplitLoss'] as core.Map<core.String, core.dynamic>)
              : null,
          minTreeChildWeight: _json.containsKey('minTreeChildWeight')
              ? IntHparamSearchSpace.fromJson(_json['minTreeChildWeight']
                  as core.Map<core.String, core.dynamic>)
              : null,
          numClusters: _json.containsKey('numClusters')
              ? IntHparamSearchSpace.fromJson(
                  _json['numClusters'] as core.Map<core.String, core.dynamic>)
              : null,
          numFactors: _json.containsKey('numFactors')
              ? IntHparamSearchSpace.fromJson(
                  _json['numFactors'] as core.Map<core.String, core.dynamic>)
              : null,
          numParallelTree: _json.containsKey('numParallelTree')
              ? IntHparamSearchSpace.fromJson(_json['numParallelTree']
                  as core.Map<core.String, core.dynamic>)
              : null,
          optimizer: _json.containsKey('optimizer')
              ? StringHparamSearchSpace.fromJson(
                  _json['optimizer'] as core.Map<core.String, core.dynamic>)
              : null,
          subsample: _json.containsKey('subsample')
              ? DoubleHparamSearchSpace.fromJson(
                  _json['subsample'] as core.Map<core.String, core.dynamic>)
              : null,
          treeMethod: _json.containsKey('treeMethod')
              ? StringHparamSearchSpace.fromJson(
                  _json['treeMethod'] as core.Map<core.String, core.dynamic>)
              : null,
          walsAlpha: _json.containsKey('walsAlpha')
              ? DoubleHparamSearchSpace.fromJson(
                  _json['walsAlpha'] as core.Map<core.String, core.dynamic>)
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
  /// - "TRIAL_STATUS_UNSPECIFIED"
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

  HparamTuningTrial.fromJson(core.Map _json)
      : this(
          endTimeMs: _json.containsKey('endTimeMs')
              ? _json['endTimeMs'] as core.String
              : null,
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          evalLoss: _json.containsKey('evalLoss')
              ? (_json['evalLoss'] as core.num).toDouble()
              : null,
          evaluationMetrics: _json.containsKey('evaluationMetrics')
              ? EvaluationMetrics.fromJson(_json['evaluationMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hparamTuningEvaluationMetrics:
              _json.containsKey('hparamTuningEvaluationMetrics')
                  ? EvaluationMetrics.fromJson(
                      _json['hparamTuningEvaluationMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          hparams: _json.containsKey('hparams')
              ? TrainingOptions.fromJson(
                  _json['hparams'] as core.Map<core.String, core.dynamic>)
              : null,
          startTimeMs: _json.containsKey('startTimeMs')
              ? _json['startTimeMs'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          trainingLoss: _json.containsKey('trainingLoss')
              ? (_json['trainingLoss'] as core.num).toDouble()
              : null,
          trialId: _json.containsKey('trialId')
              ? _json['trialId'] as core.String
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

class IndexUnusedReason {
  /// \[Output-only\] Specifies the base table involved in the reason that no
  /// search index was used.
  TableReference? baseTable;

  /// \[Output-only\] Specifies the high-level reason for the scenario when no
  /// search index was used.
  core.String? code;

  /// \[Output-only\] Specifies the name of the unused search index, if
  /// available.
  core.String? indexName;

  /// \[Output-only\] Free form human-readable reason for the scenario when no
  /// search index was used.
  core.String? message;

  IndexUnusedReason({
    this.baseTable,
    this.code,
    this.indexName,
    this.message,
  });

  IndexUnusedReason.fromJson(core.Map _json)
      : this(
          baseTable: _json.containsKey('base_table')
              ? TableReference.fromJson(
                  _json['base_table'] as core.Map<core.String, core.dynamic>)
              : null,
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          indexName: _json.containsKey('index_name')
              ? _json['index_name'] as core.String
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseTable != null) 'base_table': baseTable!,
        if (code != null) 'code': code!,
        if (indexName != null) 'index_name': indexName!,
        if (message != null) 'message': message!,
      };
}

/// An array of int.
class IntArray {
  /// Elements in the int array.
  core.List<core.String>? elements;

  IntArray({
    this.elements,
  });

  IntArray.fromJson(core.Map _json)
      : this(
          elements: _json.containsKey('elements')
              ? (_json['elements'] as core.List)
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

  IntArrayHparamSearchSpace.fromJson(core.Map _json)
      : this(
          candidates: _json.containsKey('candidates')
              ? (_json['candidates'] as core.List)
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

  IntCandidates.fromJson(core.Map _json)
      : this(
          candidates: _json.containsKey('candidates')
              ? (_json['candidates'] as core.List)
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

  IntHparamSearchSpace.fromJson(core.Map _json)
      : this(
          candidates: _json.containsKey('candidates')
              ? IntCandidates.fromJson(
                  _json['candidates'] as core.Map<core.String, core.dynamic>)
              : null,
          range: _json.containsKey('range')
              ? IntRange.fromJson(
                  _json['range'] as core.Map<core.String, core.dynamic>)
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

  IntRange.fromJson(core.Map _json)
      : this(
          max: _json.containsKey('max') ? _json['max'] as core.String : null,
          min: _json.containsKey('min') ? _json['min'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (max != null) 'max': max!,
        if (min != null) 'min': min!,
      };
}

class IterationResult {
  /// Time taken to run the iteration in milliseconds.
  core.String? durationMs;

  /// Loss computed on the eval data at the end of iteration.
  core.double? evalLoss;

  /// Index of the iteration, 0 based.
  core.int? index;

  /// Learn rate used for this iteration.
  core.double? learnRate;

  /// Loss computed on the training data at the end of iteration.
  core.double? trainingLoss;

  IterationResult({
    this.durationMs,
    this.evalLoss,
    this.index,
    this.learnRate,
    this.trainingLoss,
  });

  IterationResult.fromJson(core.Map _json)
      : this(
          durationMs: _json.containsKey('durationMs')
              ? _json['durationMs'] as core.String
              : null,
          evalLoss: _json.containsKey('evalLoss')
              ? (_json['evalLoss'] as core.num).toDouble()
              : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          learnRate: _json.containsKey('learnRate')
              ? (_json['learnRate'] as core.num).toDouble()
              : null,
          trainingLoss: _json.containsKey('trainingLoss')
              ? (_json['trainingLoss'] as core.num).toDouble()
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

class Job {
  /// Describes the job configuration.
  ///
  /// Required.
  JobConfiguration? configuration;

  /// \[Output-only\] A hash of this resource.
  core.String? etag;

  /// \[Output-only\] Opaque ID field of the job
  core.String? id;

  /// Reference describing the unique-per-user name of the job.
  ///
  /// Optional.
  JobReference? jobReference;

  /// \[Output-only\] The type of the resource.
  core.String? kind;

  /// \[Output-only\] A URL that can be used to access this resource again.
  core.String? selfLink;

  /// \[Output-only\] Information about the job, including starting time and
  /// ending time of the job.
  JobStatistics? statistics;

  /// \[Output-only\] The status of this job.
  ///
  /// Examine this value when polling an asynchronous job to see if the job is
  /// complete.
  JobStatus? status;

  /// \[Output-only\] Email address of the user who ran the job.
  core.String? userEmail;

  Job({
    this.configuration,
    this.etag,
    this.id,
    this.jobReference,
    this.kind,
    this.selfLink,
    this.statistics,
    this.status,
    this.userEmail,
  });

  Job.fromJson(core.Map _json)
      : this(
          configuration: _json.containsKey('configuration')
              ? JobConfiguration.fromJson(
                  _json['configuration'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          jobReference: _json.containsKey('jobReference')
              ? JobReference.fromJson(
                  _json['jobReference'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          statistics: _json.containsKey('statistics')
              ? JobStatistics.fromJson(
                  _json['statistics'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? JobStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          userEmail: _json.containsKey('user_email')
              ? _json['user_email'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configuration != null) 'configuration': configuration!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (jobReference != null) 'jobReference': jobReference!,
        if (kind != null) 'kind': kind!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (statistics != null) 'statistics': statistics!,
        if (status != null) 'status': status!,
        if (userEmail != null) 'user_email': userEmail!,
      };
}

class JobCancelResponse {
  /// The final state of the job.
  Job? job;

  /// The resource type of the response.
  core.String? kind;

  JobCancelResponse({
    this.job,
    this.kind,
  });

  JobCancelResponse.fromJson(core.Map _json)
      : this(
          job: _json.containsKey('job')
              ? Job.fromJson(
                  _json['job'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
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
  /// If this time limit is exceeded, BigQuery may attempt to terminate the job.
  ///
  /// Optional.
  core.String? jobTimeoutMs;

  /// \[Output-only\] The type of the job.
  ///
  /// Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN.
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

  JobConfiguration.fromJson(core.Map _json)
      : this(
          copy: _json.containsKey('copy')
              ? JobConfigurationTableCopy.fromJson(
                  _json['copy'] as core.Map<core.String, core.dynamic>)
              : null,
          dryRun:
              _json.containsKey('dryRun') ? _json['dryRun'] as core.bool : null,
          extract: _json.containsKey('extract')
              ? JobConfigurationExtract.fromJson(
                  _json['extract'] as core.Map<core.String, core.dynamic>)
              : null,
          jobTimeoutMs: _json.containsKey('jobTimeoutMs')
              ? _json['jobTimeoutMs'] as core.String
              : null,
          jobType: _json.containsKey('jobType')
              ? _json['jobType'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          load: _json.containsKey('load')
              ? JobConfigurationLoad.fromJson(
                  _json['load'] as core.Map<core.String, core.dynamic>)
              : null,
          query: _json.containsKey('query')
              ? JobConfigurationQuery.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
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

class JobConfigurationExtract {
  /// The compression type to use for exported files.
  ///
  /// Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value
  /// is NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable
  /// when extracting models.
  ///
  /// Optional.
  core.String? compression;

  /// The exported file format.
  ///
  /// Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET or AVRO for
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

  /// Delimiter to use between fields in the exported data.
  ///
  /// Default is ','. Not applicable when extracting models.
  ///
  /// Optional.
  core.String? fieldDelimiter;

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

  /// If destinationFormat is set to "AVRO", this flag indicates whether to
  /// enable extracting applicable column types (such as TIMESTAMP) to their
  /// corresponding AVRO logical types (timestamp-micros), instead of only using
  /// their raw types (avro-long).
  ///
  /// Not applicable when extracting models.
  ///
  /// Optional.
  core.bool? useAvroLogicalTypes;

  JobConfigurationExtract({
    this.compression,
    this.destinationFormat,
    this.destinationUri,
    this.destinationUris,
    this.fieldDelimiter,
    this.printHeader,
    this.sourceModel,
    this.sourceTable,
    this.useAvroLogicalTypes,
  });

  JobConfigurationExtract.fromJson(core.Map _json)
      : this(
          compression: _json.containsKey('compression')
              ? _json['compression'] as core.String
              : null,
          destinationFormat: _json.containsKey('destinationFormat')
              ? _json['destinationFormat'] as core.String
              : null,
          destinationUri: _json.containsKey('destinationUri')
              ? _json['destinationUri'] as core.String
              : null,
          destinationUris: _json.containsKey('destinationUris')
              ? (_json['destinationUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fieldDelimiter: _json.containsKey('fieldDelimiter')
              ? _json['fieldDelimiter'] as core.String
              : null,
          printHeader: _json.containsKey('printHeader')
              ? _json['printHeader'] as core.bool
              : null,
          sourceModel: _json.containsKey('sourceModel')
              ? ModelReference.fromJson(
                  _json['sourceModel'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceTable: _json.containsKey('sourceTable')
              ? TableReference.fromJson(
                  _json['sourceTable'] as core.Map<core.String, core.dynamic>)
              : null,
          useAvroLogicalTypes: _json.containsKey('useAvroLogicalTypes')
              ? _json['useAvroLogicalTypes'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compression != null) 'compression': compression!,
        if (destinationFormat != null) 'destinationFormat': destinationFormat!,
        if (destinationUri != null) 'destinationUri': destinationUri!,
        if (destinationUris != null) 'destinationUris': destinationUris!,
        if (fieldDelimiter != null) 'fieldDelimiter': fieldDelimiter!,
        if (printHeader != null) 'printHeader': printHeader!,
        if (sourceModel != null) 'sourceModel': sourceModel!,
        if (sourceTable != null) 'sourceTable': sourceTable!,
        if (useAvroLogicalTypes != null)
          'useAvroLogicalTypes': useAvroLogicalTypes!,
      };
}

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

  /// \[Beta\] Clustering specification for the destination table.
  ///
  /// Must be specified with time-based partitioning, data in the table will be
  /// first partitioned and subsequently clustered.
  Clustering? clustering;

  /// Specifies whether the job is allowed to create new tables.
  ///
  /// The following values are supported: CREATE_IF_NEEDED: If the table does
  /// not exist, BigQuery creates the table. CREATE_NEVER: The table must
  /// already exist. If it does not, a 'notFound' error is returned in the job
  /// result. The default value is CREATE_IF_NEEDED. Creation, truncation and
  /// append actions occur as one atomic update upon job completion.
  ///
  /// Optional.
  core.String? createDisposition;

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
  /// "BIGNUMERIC"\]. If (precision,scale) is: (38,9) -\> NUMERIC; (39,9) -\>
  /// BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -\> BIGNUMERIC
  /// (NUMERIC cannot hold 10 fractional digits); (76,38) -\> BIGNUMERIC;
  /// (77,38) -\> BIGNUMERIC (error if value exeeds supported range). This field
  /// cannot contain duplicate types. The order of the types in this field is
  /// ignored. For example, \["BIGNUMERIC", "NUMERIC"\] is the same as
  /// \["NUMERIC", "BIGNUMERIC"\] and NUMERIC always takes precedence over
  /// BIGNUMERIC. Defaults to \["NUMERIC", "STRING"\] for ORC and \["NUMERIC"\]
  /// for the other file formats.
  ///
  /// Optional.
  core.List<core.String>? decimalTargetTypes;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  EncryptionConfiguration? destinationEncryptionConfiguration;

  /// The destination table to load the data into.
  ///
  /// Required.
  TableReference? destinationTable;

  /// \[Beta\] \[Optional\] Properties with which to create the destination
  /// table if it is new.
  DestinationTableProperties? destinationTableProperties;

  /// The character encoding of the data.
  ///
  /// The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8.
  /// BigQuery decodes the data after the raw, binary data has been split using
  /// the values of the quote and fieldDelimiter properties.
  ///
  /// Optional.
  core.String? encoding;

  /// The separator for fields in a CSV file.
  ///
  /// The separator can be any ISO-8859-1 single-byte character. To use a
  /// character in the range 128-255, you must encode the character as UTF8.
  /// BigQuery converts the string to ISO-8859-1 encoding, and then uses the
  /// first byte of the encoded string to split the data in its raw, binary
  /// state. BigQuery also supports the escape sequence "\t" to specify a tab
  /// separator. The default value is a comma (',').
  ///
  /// Optional.
  core.String? fieldDelimiter;

  /// Options to configure hive partitioning support.
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
  /// column names
  ///
  /// Optional.
  core.bool? ignoreUnknownValues;

  /// If sourceFormat is set to newline-delimited JSON, indicates whether it
  /// should be processed as a JSON variant such as GeoJSON.
  ///
  /// For a sourceFormat other than JSON, omit this field. If the sourceFormat
  /// is newline-delimited JSON: - for newline-delimited GeoJSON: set to
  /// GEOJSON.
  ///
  /// Optional.
  core.String? jsonExtension;

  /// The maximum number of bad records that BigQuery can ignore when running
  /// the job.
  ///
  /// If the number of bad records exceeds this value, an invalid error is
  /// returned in the job result. This is only valid for CSV and JSON. The
  /// default value is 0, which requires that all records are valid.
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

  /// Options to configure parquet support.
  ///
  /// Optional.
  ParquetOptions? parquetOptions;

  /// Preserves the embedded ASCII control characters (the first 32 characters
  /// in the ASCII-table, from '\x00' to '\x1F') when loading from CSV.
  ///
  /// Only applicable to CSV, ignored for other formats.
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
  /// allowQuotedNewlines property to true.
  ///
  /// Optional.
  core.String? quote;

  /// \[TrustedTester\] Range partitioning specification for this table.
  ///
  /// Only one of timePartitioning and rangePartitioning should be specified.
  RangePartitioning? rangePartitioning;

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
  /// more of the following values are specified: ALLOW_FIELD_ADDITION: allow
  /// adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow
  /// relaxing a required field in the original schema to nullable.
  core.List<core.String>? schemaUpdateOptions;

  /// The number of rows at the top of a CSV file that BigQuery will skip when
  /// loading the data.
  ///
  /// The default value is 0. This property is useful if you have header rows in
  /// the file that should be skipped.
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
  /// The following values are supported: WRITE_TRUNCATE: If the table already
  /// exists, BigQuery overwrites the table data. WRITE_APPEND: If the table
  /// already exists, BigQuery appends the data to the table. WRITE_EMPTY: If
  /// the table already exists and contains data, a 'duplicate' error is
  /// returned in the job result. The default value is WRITE_APPEND. Each action
  /// is atomic and only occurs if BigQuery is able to complete the job
  /// successfully. Creation, truncation and append actions occur as one atomic
  /// update upon job completion.
  ///
  /// Optional.
  core.String? writeDisposition;

  JobConfigurationLoad({
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.autodetect,
    this.clustering,
    this.createDisposition,
    this.decimalTargetTypes,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    this.destinationTableProperties,
    this.encoding,
    this.fieldDelimiter,
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

  JobConfigurationLoad.fromJson(core.Map _json)
      : this(
          allowJaggedRows: _json.containsKey('allowJaggedRows')
              ? _json['allowJaggedRows'] as core.bool
              : null,
          allowQuotedNewlines: _json.containsKey('allowQuotedNewlines')
              ? _json['allowQuotedNewlines'] as core.bool
              : null,
          autodetect: _json.containsKey('autodetect')
              ? _json['autodetect'] as core.bool
              : null,
          clustering: _json.containsKey('clustering')
              ? Clustering.fromJson(
                  _json['clustering'] as core.Map<core.String, core.dynamic>)
              : null,
          createDisposition: _json.containsKey('createDisposition')
              ? _json['createDisposition'] as core.String
              : null,
          decimalTargetTypes: _json.containsKey('decimalTargetTypes')
              ? (_json['decimalTargetTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          destinationEncryptionConfiguration:
              _json.containsKey('destinationEncryptionConfiguration')
                  ? EncryptionConfiguration.fromJson(
                      _json['destinationEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          destinationTable: _json.containsKey('destinationTable')
              ? TableReference.fromJson(_json['destinationTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          destinationTableProperties:
              _json.containsKey('destinationTableProperties')
                  ? DestinationTableProperties.fromJson(
                      _json['destinationTableProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          encoding: _json.containsKey('encoding')
              ? _json['encoding'] as core.String
              : null,
          fieldDelimiter: _json.containsKey('fieldDelimiter')
              ? _json['fieldDelimiter'] as core.String
              : null,
          hivePartitioningOptions: _json.containsKey('hivePartitioningOptions')
              ? HivePartitioningOptions.fromJson(
                  _json['hivePartitioningOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          ignoreUnknownValues: _json.containsKey('ignoreUnknownValues')
              ? _json['ignoreUnknownValues'] as core.bool
              : null,
          jsonExtension: _json.containsKey('jsonExtension')
              ? _json['jsonExtension'] as core.String
              : null,
          maxBadRecords: _json.containsKey('maxBadRecords')
              ? _json['maxBadRecords'] as core.int
              : null,
          nullMarker: _json.containsKey('nullMarker')
              ? _json['nullMarker'] as core.String
              : null,
          parquetOptions: _json.containsKey('parquetOptions')
              ? ParquetOptions.fromJson(_json['parquetOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          preserveAsciiControlCharacters:
              _json.containsKey('preserveAsciiControlCharacters')
                  ? _json['preserveAsciiControlCharacters'] as core.bool
                  : null,
          projectionFields: _json.containsKey('projectionFields')
              ? (_json['projectionFields'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          quote:
              _json.containsKey('quote') ? _json['quote'] as core.String : null,
          rangePartitioning: _json.containsKey('rangePartitioning')
              ? RangePartitioning.fromJson(_json['rangePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          schema: _json.containsKey('schema')
              ? TableSchema.fromJson(
                  _json['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          schemaInline: _json.containsKey('schemaInline')
              ? _json['schemaInline'] as core.String
              : null,
          schemaInlineFormat: _json.containsKey('schemaInlineFormat')
              ? _json['schemaInlineFormat'] as core.String
              : null,
          schemaUpdateOptions: _json.containsKey('schemaUpdateOptions')
              ? (_json['schemaUpdateOptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          skipLeadingRows: _json.containsKey('skipLeadingRows')
              ? _json['skipLeadingRows'] as core.int
              : null,
          sourceFormat: _json.containsKey('sourceFormat')
              ? _json['sourceFormat'] as core.String
              : null,
          sourceUris: _json.containsKey('sourceUris')
              ? (_json['sourceUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timePartitioning: _json.containsKey('timePartitioning')
              ? TimePartitioning.fromJson(_json['timePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          useAvroLogicalTypes: _json.containsKey('useAvroLogicalTypes')
              ? _json['useAvroLogicalTypes'] as core.bool
              : null,
          writeDisposition: _json.containsKey('writeDisposition')
              ? _json['writeDisposition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowJaggedRows != null) 'allowJaggedRows': allowJaggedRows!,
        if (allowQuotedNewlines != null)
          'allowQuotedNewlines': allowQuotedNewlines!,
        if (autodetect != null) 'autodetect': autodetect!,
        if (clustering != null) 'clustering': clustering!,
        if (createDisposition != null) 'createDisposition': createDisposition!,
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

class JobConfigurationQuery {
  /// If true and query uses legacy SQL dialect, allows the query to produce
  /// arbitrarily large result tables at a slight cost in performance.
  ///
  /// Requires destinationTable to be set. For standard SQL queries, this flag
  /// is ignored and large results are always allowed. However, you must still
  /// set destinationTable when result size exceeds the allowed maximum response
  /// size.
  ///
  /// Optional.
  core.bool? allowLargeResults;

  /// \[Beta\] Clustering specification for the destination table.
  ///
  /// Must be specified with time-based partitioning, data in the table will be
  /// first partitioned and subsequently clustered.
  Clustering? clustering;

  /// Connection properties.
  core.List<ConnectionProperty>? connectionProperties;

  /// Specifies whether the job is allowed to create new tables.
  ///
  /// The following values are supported: CREATE_IF_NEEDED: If the table does
  /// not exist, BigQuery creates the table. CREATE_NEVER: The table must
  /// already exist. If it does not, a 'notFound' error is returned in the job
  /// result. The default value is CREATE_IF_NEEDED. Creation, truncation and
  /// append actions occur as one atomic update upon job completion.
  ///
  /// Optional.
  core.String? createDisposition;

  /// If true, creates a new session, where session id will be a server
  /// generated random id.
  ///
  /// If false, runs query with an existing session_id passed in
  /// ConnectionProperty, otherwise runs query in non-session mode.
  core.bool? createSession;

  /// Specifies the default dataset to use for unqualified table names in the
  /// query.
  ///
  /// Note that this does not alter behavior of unqualified dataset names.
  ///
  /// Optional.
  DatasetReference? defaultDataset;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  EncryptionConfiguration? destinationEncryptionConfiguration;

  /// Describes the table where the query results should be stored.
  ///
  /// If not present, a new table will be created to store the results. This
  /// property must be set for large results that exceed the maximum response
  /// size.
  ///
  /// Optional.
  TableReference? destinationTable;

  /// If true and query uses legacy SQL dialect, flattens all nested and
  /// repeated fields in the query results.
  ///
  /// allowLargeResults must be true if this is set to false. For standard SQL
  /// queries, this flag is ignored and results are never flattened.
  ///
  /// Optional.
  core.bool? flattenResults;

  /// Limits the billing tier for this job.
  ///
  /// Queries that have resource usage beyond this tier will fail (without
  /// incurring a charge). If unspecified, this will be set to your project
  /// default.
  ///
  /// Optional.
  core.int? maximumBillingTier;

  /// Limits the bytes billed for this job.
  ///
  /// Queries that will have bytes billed beyond this limit will fail (without
  /// incurring a charge). If unspecified, this will be set to your project
  /// default.
  ///
  /// Optional.
  core.String? maximumBytesBilled;

  /// Standard SQL only.
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
  /// legacy SQL or standard SQL.
  ///
  /// Required.
  core.String? query;

  /// Query parameters for standard SQL queries.
  core.List<QueryParameter>? queryParameters;

  /// \[TrustedTester\] Range partitioning specification for this table.
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
  /// more of the following values are specified: ALLOW_FIELD_ADDITION: allow
  /// adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow
  /// relaxing a required field in the original schema to nullable.
  core.List<core.String>? schemaUpdateOptions;

  /// If querying an external data source outside of BigQuery, describes the
  /// data format, location and other properties of the data source.
  ///
  /// By defining these properties, the data source can then be queried as if it
  /// were a standard BigQuery table.
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
  /// standard SQL: https://cloud.google.com/bigquery/sql-reference/ When
  /// useLegacySql is set to false, the value of flattenResults is ignored;
  /// query will be run as if flattenResults is false.
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
  /// The following values are supported: WRITE_TRUNCATE: If the table already
  /// exists, BigQuery overwrites the table data and uses the schema from the
  /// query result. WRITE_APPEND: If the table already exists, BigQuery appends
  /// the data to the table. WRITE_EMPTY: If the table already exists and
  /// contains data, a 'duplicate' error is returned in the job result. The
  /// default value is WRITE_EMPTY. Each action is atomic and only occurs if
  /// BigQuery is able to complete the job successfully. Creation, truncation
  /// and append actions occur as one atomic update upon job completion.
  ///
  /// Optional.
  core.String? writeDisposition;

  JobConfigurationQuery({
    this.allowLargeResults,
    this.clustering,
    this.connectionProperties,
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
    this.tableDefinitions,
    this.timePartitioning,
    this.useLegacySql,
    this.useQueryCache,
    this.userDefinedFunctionResources,
    this.writeDisposition,
  });

  JobConfigurationQuery.fromJson(core.Map _json)
      : this(
          allowLargeResults: _json.containsKey('allowLargeResults')
              ? _json['allowLargeResults'] as core.bool
              : null,
          clustering: _json.containsKey('clustering')
              ? Clustering.fromJson(
                  _json['clustering'] as core.Map<core.String, core.dynamic>)
              : null,
          connectionProperties: _json.containsKey('connectionProperties')
              ? (_json['connectionProperties'] as core.List)
                  .map((value) => ConnectionProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createDisposition: _json.containsKey('createDisposition')
              ? _json['createDisposition'] as core.String
              : null,
          createSession: _json.containsKey('createSession')
              ? _json['createSession'] as core.bool
              : null,
          defaultDataset: _json.containsKey('defaultDataset')
              ? DatasetReference.fromJson(_json['defaultDataset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          destinationEncryptionConfiguration:
              _json.containsKey('destinationEncryptionConfiguration')
                  ? EncryptionConfiguration.fromJson(
                      _json['destinationEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          destinationTable: _json.containsKey('destinationTable')
              ? TableReference.fromJson(_json['destinationTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          flattenResults: _json.containsKey('flattenResults')
              ? _json['flattenResults'] as core.bool
              : null,
          maximumBillingTier: _json.containsKey('maximumBillingTier')
              ? _json['maximumBillingTier'] as core.int
              : null,
          maximumBytesBilled: _json.containsKey('maximumBytesBilled')
              ? _json['maximumBytesBilled'] as core.String
              : null,
          parameterMode: _json.containsKey('parameterMode')
              ? _json['parameterMode'] as core.String
              : null,
          preserveNulls: _json.containsKey('preserveNulls')
              ? _json['preserveNulls'] as core.bool
              : null,
          priority: _json.containsKey('priority')
              ? _json['priority'] as core.String
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          queryParameters: _json.containsKey('queryParameters')
              ? (_json['queryParameters'] as core.List)
                  .map((value) => QueryParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rangePartitioning: _json.containsKey('rangePartitioning')
              ? RangePartitioning.fromJson(_json['rangePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          schemaUpdateOptions: _json.containsKey('schemaUpdateOptions')
              ? (_json['schemaUpdateOptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tableDefinitions: _json.containsKey('tableDefinitions')
              ? (_json['tableDefinitions']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    ExternalDataConfiguration.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          timePartitioning: _json.containsKey('timePartitioning')
              ? TimePartitioning.fromJson(_json['timePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          useLegacySql: _json.containsKey('useLegacySql')
              ? _json['useLegacySql'] as core.bool
              : null,
          useQueryCache: _json.containsKey('useQueryCache')
              ? _json['useQueryCache'] as core.bool
              : null,
          userDefinedFunctionResources:
              _json.containsKey('userDefinedFunctionResources')
                  ? (_json['userDefinedFunctionResources'] as core.List)
                      .map((value) => UserDefinedFunctionResource.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          writeDisposition: _json.containsKey('writeDisposition')
              ? _json['writeDisposition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowLargeResults != null) 'allowLargeResults': allowLargeResults!,
        if (clustering != null) 'clustering': clustering!,
        if (connectionProperties != null)
          'connectionProperties': connectionProperties!,
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
        if (tableDefinitions != null) 'tableDefinitions': tableDefinitions!,
        if (timePartitioning != null) 'timePartitioning': timePartitioning!,
        if (useLegacySql != null) 'useLegacySql': useLegacySql!,
        if (useQueryCache != null) 'useQueryCache': useQueryCache!,
        if (userDefinedFunctionResources != null)
          'userDefinedFunctionResources': userDefinedFunctionResources!,
        if (writeDisposition != null) 'writeDisposition': writeDisposition!,
      };
}

class JobConfigurationTableCopy {
  /// Specifies whether the job is allowed to create new tables.
  ///
  /// The following values are supported: CREATE_IF_NEEDED: If the table does
  /// not exist, BigQuery creates the table. CREATE_NEVER: The table must
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
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? destinationExpirationTime;

  /// The destination table
  ///
  /// Required.
  TableReference? destinationTable;

  /// Supported operation types in table copy job.
  ///
  /// Optional.
  core.String? operationType;

  /// \[Pick one\] Source table to copy.
  TableReference? sourceTable;

  /// \[Pick one\] Source tables to copy.
  core.List<TableReference>? sourceTables;

  /// Specifies the action that occurs if the destination table already exists.
  ///
  /// The following values are supported: WRITE_TRUNCATE: If the table already
  /// exists, BigQuery overwrites the table data. WRITE_APPEND: If the table
  /// already exists, BigQuery appends the data to the table. WRITE_EMPTY: If
  /// the table already exists and contains data, a 'duplicate' error is
  /// returned in the job result. The default value is WRITE_EMPTY. Each action
  /// is atomic and only occurs if BigQuery is able to complete the job
  /// successfully. Creation, truncation and append actions occur as one atomic
  /// update upon job completion.
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

  JobConfigurationTableCopy.fromJson(core.Map _json)
      : this(
          createDisposition: _json.containsKey('createDisposition')
              ? _json['createDisposition'] as core.String
              : null,
          destinationEncryptionConfiguration:
              _json.containsKey('destinationEncryptionConfiguration')
                  ? EncryptionConfiguration.fromJson(
                      _json['destinationEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          destinationExpirationTime:
              _json.containsKey('destinationExpirationTime')
                  ? _json['destinationExpirationTime']
                  : null,
          destinationTable: _json.containsKey('destinationTable')
              ? TableReference.fromJson(_json['destinationTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          operationType: _json.containsKey('operationType')
              ? _json['operationType'] as core.String
              : null,
          sourceTable: _json.containsKey('sourceTable')
              ? TableReference.fromJson(
                  _json['sourceTable'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceTables: _json.containsKey('sourceTables')
              ? (_json['sourceTables'] as core.List)
                  .map((value) => TableReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          writeDisposition: _json.containsKey('writeDisposition')
              ? _json['writeDisposition'] as core.String
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

class JobListJobs {
  /// \[Full-projection-only\] Specifies the job configuration.
  JobConfiguration? configuration;

  /// A result object that will be present only if the job has failed.
  ErrorProto? errorResult;

  /// Unique opaque ID of the job.
  core.String? id;

  /// Job reference uniquely identifying the job.
  JobReference? jobReference;

  /// The resource type.
  core.String? kind;

  /// Running state of the job.
  ///
  /// When the state is DONE, errorResult can be checked to determine whether
  /// the job succeeded or failed.
  core.String? state;

  /// \[Output-only\] Information about the job, including starting time and
  /// ending time of the job.
  JobStatistics? statistics;

  /// \[Full-projection-only\] Describes the state of the job.
  JobStatus? status;

  /// \[Full-projection-only\] Email address of the user who ran the job.
  core.String? userEmail;

  JobListJobs({
    this.configuration,
    this.errorResult,
    this.id,
    this.jobReference,
    this.kind,
    this.state,
    this.statistics,
    this.status,
    this.userEmail,
  });

  JobListJobs.fromJson(core.Map _json)
      : this(
          configuration: _json.containsKey('configuration')
              ? JobConfiguration.fromJson(
                  _json['configuration'] as core.Map<core.String, core.dynamic>)
              : null,
          errorResult: _json.containsKey('errorResult')
              ? ErrorProto.fromJson(
                  _json['errorResult'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          jobReference: _json.containsKey('jobReference')
              ? JobReference.fromJson(
                  _json['jobReference'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          statistics: _json.containsKey('statistics')
              ? JobStatistics.fromJson(
                  _json['statistics'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? JobStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          userEmail: _json.containsKey('user_email')
              ? _json['user_email'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configuration != null) 'configuration': configuration!,
        if (errorResult != null) 'errorResult': errorResult!,
        if (id != null) 'id': id!,
        if (jobReference != null) 'jobReference': jobReference!,
        if (kind != null) 'kind': kind!,
        if (state != null) 'state': state!,
        if (statistics != null) 'statistics': statistics!,
        if (status != null) 'status': status!,
        if (userEmail != null) 'user_email': userEmail!,
      };
}

class JobList {
  /// A hash of this page of results.
  core.String? etag;

  /// List of jobs that were requested.
  core.List<JobListJobs>? jobs;

  /// The resource type of the response.
  core.String? kind;

  /// A token to request the next page of results.
  core.String? nextPageToken;

  JobList({
    this.etag,
    this.jobs,
    this.kind,
    this.nextPageToken,
  });

  JobList.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          jobs: _json.containsKey('jobs')
              ? (_json['jobs'] as core.List)
                  .map((value) => JobListJobs.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (jobs != null) 'jobs': jobs!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

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
  /// See details at
  /// https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
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

  JobReference.fromJson(core.Map _json)
      : this(
          jobId:
              _json.containsKey('jobId') ? _json['jobId'] as core.String : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobId != null) 'jobId': jobId!,
        if (location != null) 'location': location!,
        if (projectId != null) 'projectId': projectId!,
      };
}

class JobStatisticsReservationUsage {
  /// \[Output-only\] Reservation name or "unreserved" for on-demand resources
  /// usage.
  core.String? name;

  /// \[Output-only\] Slot-milliseconds the job spent in the given reservation.
  core.String? slotMs;

  JobStatisticsReservationUsage({
    this.name,
    this.slotMs,
  });

  JobStatisticsReservationUsage.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          slotMs: _json.containsKey('slotMs')
              ? _json['slotMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (slotMs != null) 'slotMs': slotMs!,
      };
}

class JobStatistics {
  /// \[TrustedTester\] \[Output-only\] Job progress (0.0 -\> 1.0) for LOAD and
  /// EXTRACT jobs.
  core.double? completionRatio;

  /// \[Output-only\] Statistics for a copy job.
  JobStatistics5? copy;

  /// \[Output-only\] Creation time of this job, in milliseconds since the
  /// epoch.
  ///
  /// This field will be present on all jobs.
  core.String? creationTime;

  /// \[Output-only\] End time of this job, in milliseconds since the epoch.
  ///
  /// This field will be present whenever a job is in the DONE state.
  core.String? endTime;

  /// \[Output-only\] Statistics for an extract job.
  JobStatistics4? extract;

  /// \[Output-only\] Statistics for a load job.
  JobStatistics3? load;

  /// \[Output-only\] Number of child jobs executed.
  core.String? numChildJobs;

  /// \[Output-only\] If this is a child job, the id of the parent.
  core.String? parentJobId;

  /// \[Output-only\] Statistics for a query job.
  JobStatistics2? query;

  /// \[Output-only\] Quotas which delayed this job's start time.
  core.List<core.String>? quotaDeferments;

  /// \[Output-only\] Job resource usage breakdown by reservation.
  core.List<JobStatisticsReservationUsage>? reservationUsage;

  /// \[Output-only\] Name of the primary reservation assigned to this job.
  ///
  /// Note that this could be different than reservations reported in the
  /// reservation usage field if parent reservations were used to execute this
  /// job.
  core.String? reservationId;

  /// \[Output-only\] \[Preview\] Statistics for row-level security.
  ///
  /// Present only for query and extract jobs.
  RowLevelSecurityStatistics? rowLevelSecurityStatistics;

  /// \[Output-only\] Statistics for a child job of a script.
  ScriptStatistics? scriptStatistics;

  /// \[Output-only\] \[Preview\] Information of the session if this job is part
  /// of one.
  SessionInfo? sessionInfo;

  /// \[Output-only\] Start time of this job, in milliseconds since the epoch.
  ///
  /// This field will be present when the job transitions from the PENDING state
  /// to either RUNNING or DONE.
  core.String? startTime;

  /// \[Output-only\] \[Deprecated\] Use the bytes processed in the query
  /// statistics instead.
  core.String? totalBytesProcessed;

  /// \[Output-only\] Slot-milliseconds for the job.
  core.String? totalSlotMs;

  /// \[Output-only\] \[Alpha\] Information of the multi-statement transaction
  /// if this job is part of one.
  TransactionInfo? transactionInfo;

  JobStatistics({
    this.completionRatio,
    this.copy,
    this.creationTime,
    this.endTime,
    this.extract,
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

  JobStatistics.fromJson(core.Map _json)
      : this(
          completionRatio: _json.containsKey('completionRatio')
              ? (_json['completionRatio'] as core.num).toDouble()
              : null,
          copy: _json.containsKey('copy')
              ? JobStatistics5.fromJson(
                  _json['copy'] as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: _json.containsKey('creationTime')
              ? _json['creationTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          extract: _json.containsKey('extract')
              ? JobStatistics4.fromJson(
                  _json['extract'] as core.Map<core.String, core.dynamic>)
              : null,
          load: _json.containsKey('load')
              ? JobStatistics3.fromJson(
                  _json['load'] as core.Map<core.String, core.dynamic>)
              : null,
          numChildJobs: _json.containsKey('numChildJobs')
              ? _json['numChildJobs'] as core.String
              : null,
          parentJobId: _json.containsKey('parentJobId')
              ? _json['parentJobId'] as core.String
              : null,
          query: _json.containsKey('query')
              ? JobStatistics2.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
              : null,
          quotaDeferments: _json.containsKey('quotaDeferments')
              ? (_json['quotaDeferments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          reservationUsage: _json.containsKey('reservationUsage')
              ? (_json['reservationUsage'] as core.List)
                  .map((value) => JobStatisticsReservationUsage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reservationId: _json.containsKey('reservation_id')
              ? _json['reservation_id'] as core.String
              : null,
          rowLevelSecurityStatistics:
              _json.containsKey('rowLevelSecurityStatistics')
                  ? RowLevelSecurityStatistics.fromJson(
                      _json['rowLevelSecurityStatistics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          scriptStatistics: _json.containsKey('scriptStatistics')
              ? ScriptStatistics.fromJson(_json['scriptStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sessionInfo: _json.containsKey('sessionInfo')
              ? SessionInfo.fromJson(
                  _json['sessionInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          totalBytesProcessed: _json.containsKey('totalBytesProcessed')
              ? _json['totalBytesProcessed'] as core.String
              : null,
          totalSlotMs: _json.containsKey('totalSlotMs')
              ? _json['totalSlotMs'] as core.String
              : null,
          transactionInfo: _json.containsKey('transactionInfo')
              ? TransactionInfo.fromJson(_json['transactionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionRatio != null) 'completionRatio': completionRatio!,
        if (copy != null) 'copy': copy!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (endTime != null) 'endTime': endTime!,
        if (extract != null) 'extract': extract!,
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

class JobStatistics2ReservationUsage {
  /// \[Output-only\] Reservation name or "unreserved" for on-demand resources
  /// usage.
  core.String? name;

  /// \[Output-only\] Slot-milliseconds the job spent in the given reservation.
  core.String? slotMs;

  JobStatistics2ReservationUsage({
    this.name,
    this.slotMs,
  });

  JobStatistics2ReservationUsage.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          slotMs: _json.containsKey('slotMs')
              ? _json['slotMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (slotMs != null) 'slotMs': slotMs!,
      };
}

class JobStatistics2 {
  /// BI Engine specific Statistics.
  ///
  /// \[Output-only\] BI Engine specific Statistics.
  BiEngineStatistics? biEngineStatistics;

  /// \[Output-only\] Billing tier for the job.
  core.int? billingTier;

  /// \[Output-only\] Whether the query result was fetched from the query cache.
  core.bool? cacheHit;

  /// \[Output-only\] \[Preview\] The number of row access policies affected by
  /// a DDL statement.
  ///
  /// Present only for DROP ALL ROW ACCESS POLICIES queries.
  core.String? ddlAffectedRowAccessPolicyCount;

  /// \[Output-only\] The DDL destination table.
  ///
  /// Present only for ALTER TABLE RENAME TO queries. Note that ddl_target_table
  /// is used just for its type information.
  TableReference? ddlDestinationTable;

  /// The DDL operation performed, possibly dependent on the pre-existence of
  /// the DDL target.
  ///
  /// Possible values (new values might be added in the future): "CREATE": The
  /// query created the DDL target. "SKIP": No-op. Example cases: the query is
  /// CREATE TABLE IF NOT EXISTS while the table already exists, or the query is
  /// DROP TABLE IF EXISTS while the table does not exist. "REPLACE": The query
  /// replaced the DDL target. Example case: the query is CREATE OR REPLACE
  /// TABLE, and the table already exists. "DROP": The query deleted the DDL
  /// target.
  core.String? ddlOperationPerformed;

  /// \[Output-only\] The DDL target dataset.
  ///
  /// Present only for CREATE/ALTER/DROP SCHEMA queries.
  DatasetReference? ddlTargetDataset;

  /// The DDL target routine.
  ///
  /// Present only for CREATE/DROP FUNCTION/PROCEDURE queries.
  RoutineReference? ddlTargetRoutine;

  /// \[Output-only\] \[Preview\] The DDL target row access policy.
  ///
  /// Present only for CREATE/DROP ROW ACCESS POLICY queries.
  RowAccessPolicyReference? ddlTargetRowAccessPolicy;

  /// \[Output-only\] The DDL target table.
  ///
  /// Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCESS POLICIES
  /// queries.
  TableReference? ddlTargetTable;

  /// \[Output-only\] Detailed statistics for DML statements Present only for
  /// DML statements INSERT, UPDATE, DELETE or TRUNCATE.
  DmlStatistics? dmlStats;

  /// \[Output-only\] The original estimate of bytes processed for the job.
  core.String? estimatedBytesProcessed;

  /// \[Output-only\] Statistics of a BigQuery ML training job.
  MlStatistics? mlStatistics;

  /// \[Output-only, Beta\] Information about create model query job progress.
  BigQueryModelTraining? modelTraining;

  /// \[Output-only, Beta\] Deprecated; do not use.
  core.int? modelTrainingCurrentIteration;

  /// \[Output-only, Beta\] Deprecated; do not use.
  core.String? modelTrainingExpectedTotalIteration;

  /// \[Output-only\] The number of rows affected by a DML statement.
  ///
  /// Present only for DML statements INSERT, UPDATE or DELETE.
  core.String? numDmlAffectedRows;

  /// \[Output-only\] Describes execution plan for the query.
  core.List<ExplainQueryStage>? queryPlan;

  /// \[Output-only\] Referenced routines (persistent user-defined functions and
  /// stored procedures) for the job.
  core.List<RoutineReference>? referencedRoutines;

  /// \[Output-only\] Referenced tables for the job.
  ///
  /// Queries that reference more than 50 tables will not have a complete list.
  core.List<TableReference>? referencedTables;

  /// \[Output-only\] Job resource usage breakdown by reservation.
  core.List<JobStatistics2ReservationUsage>? reservationUsage;

  /// \[Output-only\] The schema of the results.
  ///
  /// Present only for successful dry run of non-legacy SQL queries.
  TableSchema? schema;

  /// \[Output-only\] Search query specific statistics.
  SearchStatistics? searchStatistics;

  /// The type of query statement, if valid.
  ///
  /// Possible values (new values might be added in the future): "SELECT":
  /// SELECT query. "INSERT": INSERT query; see
  /// https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language.
  /// "UPDATE": UPDATE query; see
  /// https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language.
  /// "DELETE": DELETE query; see
  /// https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language.
  /// "MERGE": MERGE query; see
  /// https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language.
  /// "ALTER_TABLE": ALTER TABLE query. "ALTER_VIEW": ALTER VIEW query.
  /// "ASSERT": ASSERT condition AS 'description'. "CREATE_FUNCTION": CREATE
  /// FUNCTION query. "CREATE_MODEL": CREATE \[OR REPLACE\] MODEL ... AS SELECT
  /// ... . "CREATE_PROCEDURE": CREATE PROCEDURE query. "CREATE_TABLE": CREATE
  /// \[OR REPLACE\] TABLE without AS SELECT. "CREATE_TABLE_AS_SELECT": CREATE
  /// \[OR REPLACE\] TABLE ... AS SELECT ... . "CREATE_VIEW": CREATE \[OR
  /// REPLACE\] VIEW ... AS SELECT ... . "DROP_FUNCTION" : DROP FUNCTION query.
  /// "DROP_PROCEDURE": DROP PROCEDURE query. "DROP_TABLE": DROP TABLE query.
  /// "DROP_VIEW": DROP VIEW query.
  core.String? statementType;

  /// \[Output-only\] \[Beta\] Describes a timeline of job execution.
  core.List<QueryTimelineSample>? timeline;

  /// \[Output-only\] Total bytes billed for the job.
  core.String? totalBytesBilled;

  /// \[Output-only\] Total bytes processed for the job.
  core.String? totalBytesProcessed;

  /// \[Output-only\] For dry-run jobs, totalBytesProcessed is an estimate and
  /// this field specifies the accuracy of the estimate.
  ///
  /// Possible values can be: UNKNOWN: accuracy of the estimate is unknown.
  /// PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what
  /// the query would cost. UPPER_BOUND: estimate is upper bound of what the
  /// query would cost.
  core.String? totalBytesProcessedAccuracy;

  /// \[Output-only\] Total number of partitions processed from all partitioned
  /// tables referenced in the job.
  core.String? totalPartitionsProcessed;

  /// \[Output-only\] Slot-milliseconds for the job.
  core.String? totalSlotMs;

  /// Standard SQL only: list of undeclared query parameters detected during a
  /// dry run validation.
  core.List<QueryParameter>? undeclaredQueryParameters;

  JobStatistics2({
    this.biEngineStatistics,
    this.billingTier,
    this.cacheHit,
    this.ddlAffectedRowAccessPolicyCount,
    this.ddlDestinationTable,
    this.ddlOperationPerformed,
    this.ddlTargetDataset,
    this.ddlTargetRoutine,
    this.ddlTargetRowAccessPolicy,
    this.ddlTargetTable,
    this.dmlStats,
    this.estimatedBytesProcessed,
    this.mlStatistics,
    this.modelTraining,
    this.modelTrainingCurrentIteration,
    this.modelTrainingExpectedTotalIteration,
    this.numDmlAffectedRows,
    this.queryPlan,
    this.referencedRoutines,
    this.referencedTables,
    this.reservationUsage,
    this.schema,
    this.searchStatistics,
    this.statementType,
    this.timeline,
    this.totalBytesBilled,
    this.totalBytesProcessed,
    this.totalBytesProcessedAccuracy,
    this.totalPartitionsProcessed,
    this.totalSlotMs,
    this.undeclaredQueryParameters,
  });

  JobStatistics2.fromJson(core.Map _json)
      : this(
          biEngineStatistics: _json.containsKey('biEngineStatistics')
              ? BiEngineStatistics.fromJson(_json['biEngineStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          billingTier: _json.containsKey('billingTier')
              ? _json['billingTier'] as core.int
              : null,
          cacheHit: _json.containsKey('cacheHit')
              ? _json['cacheHit'] as core.bool
              : null,
          ddlAffectedRowAccessPolicyCount:
              _json.containsKey('ddlAffectedRowAccessPolicyCount')
                  ? _json['ddlAffectedRowAccessPolicyCount'] as core.String
                  : null,
          ddlDestinationTable: _json.containsKey('ddlDestinationTable')
              ? TableReference.fromJson(_json['ddlDestinationTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ddlOperationPerformed: _json.containsKey('ddlOperationPerformed')
              ? _json['ddlOperationPerformed'] as core.String
              : null,
          ddlTargetDataset: _json.containsKey('ddlTargetDataset')
              ? DatasetReference.fromJson(_json['ddlTargetDataset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ddlTargetRoutine: _json.containsKey('ddlTargetRoutine')
              ? RoutineReference.fromJson(_json['ddlTargetRoutine']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ddlTargetRowAccessPolicy:
              _json.containsKey('ddlTargetRowAccessPolicy')
                  ? RowAccessPolicyReference.fromJson(
                      _json['ddlTargetRowAccessPolicy']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          ddlTargetTable: _json.containsKey('ddlTargetTable')
              ? TableReference.fromJson(_json['ddlTargetTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dmlStats: _json.containsKey('dmlStats')
              ? DmlStatistics.fromJson(
                  _json['dmlStats'] as core.Map<core.String, core.dynamic>)
              : null,
          estimatedBytesProcessed: _json.containsKey('estimatedBytesProcessed')
              ? _json['estimatedBytesProcessed'] as core.String
              : null,
          mlStatistics: _json.containsKey('mlStatistics')
              ? MlStatistics.fromJson(
                  _json['mlStatistics'] as core.Map<core.String, core.dynamic>)
              : null,
          modelTraining: _json.containsKey('modelTraining')
              ? BigQueryModelTraining.fromJson(
                  _json['modelTraining'] as core.Map<core.String, core.dynamic>)
              : null,
          modelTrainingCurrentIteration:
              _json.containsKey('modelTrainingCurrentIteration')
                  ? _json['modelTrainingCurrentIteration'] as core.int
                  : null,
          modelTrainingExpectedTotalIteration:
              _json.containsKey('modelTrainingExpectedTotalIteration')
                  ? _json['modelTrainingExpectedTotalIteration'] as core.String
                  : null,
          numDmlAffectedRows: _json.containsKey('numDmlAffectedRows')
              ? _json['numDmlAffectedRows'] as core.String
              : null,
          queryPlan: _json.containsKey('queryPlan')
              ? (_json['queryPlan'] as core.List)
                  .map((value) => ExplainQueryStage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          referencedRoutines: _json.containsKey('referencedRoutines')
              ? (_json['referencedRoutines'] as core.List)
                  .map((value) => RoutineReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          referencedTables: _json.containsKey('referencedTables')
              ? (_json['referencedTables'] as core.List)
                  .map((value) => TableReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reservationUsage: _json.containsKey('reservationUsage')
              ? (_json['reservationUsage'] as core.List)
                  .map((value) => JobStatistics2ReservationUsage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          schema: _json.containsKey('schema')
              ? TableSchema.fromJson(
                  _json['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          searchStatistics: _json.containsKey('searchStatistics')
              ? SearchStatistics.fromJson(_json['searchStatistics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          statementType: _json.containsKey('statementType')
              ? _json['statementType'] as core.String
              : null,
          timeline: _json.containsKey('timeline')
              ? (_json['timeline'] as core.List)
                  .map((value) => QueryTimelineSample.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalBytesBilled: _json.containsKey('totalBytesBilled')
              ? _json['totalBytesBilled'] as core.String
              : null,
          totalBytesProcessed: _json.containsKey('totalBytesProcessed')
              ? _json['totalBytesProcessed'] as core.String
              : null,
          totalBytesProcessedAccuracy:
              _json.containsKey('totalBytesProcessedAccuracy')
                  ? _json['totalBytesProcessedAccuracy'] as core.String
                  : null,
          totalPartitionsProcessed:
              _json.containsKey('totalPartitionsProcessed')
                  ? _json['totalPartitionsProcessed'] as core.String
                  : null,
          totalSlotMs: _json.containsKey('totalSlotMs')
              ? _json['totalSlotMs'] as core.String
              : null,
          undeclaredQueryParameters:
              _json.containsKey('undeclaredQueryParameters')
                  ? (_json['undeclaredQueryParameters'] as core.List)
                      .map((value) => QueryParameter.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (biEngineStatistics != null)
          'biEngineStatistics': biEngineStatistics!,
        if (billingTier != null) 'billingTier': billingTier!,
        if (cacheHit != null) 'cacheHit': cacheHit!,
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
        if (mlStatistics != null) 'mlStatistics': mlStatistics!,
        if (modelTraining != null) 'modelTraining': modelTraining!,
        if (modelTrainingCurrentIteration != null)
          'modelTrainingCurrentIteration': modelTrainingCurrentIteration!,
        if (modelTrainingExpectedTotalIteration != null)
          'modelTrainingExpectedTotalIteration':
              modelTrainingExpectedTotalIteration!,
        if (numDmlAffectedRows != null)
          'numDmlAffectedRows': numDmlAffectedRows!,
        if (queryPlan != null) 'queryPlan': queryPlan!,
        if (referencedRoutines != null)
          'referencedRoutines': referencedRoutines!,
        if (referencedTables != null) 'referencedTables': referencedTables!,
        if (reservationUsage != null) 'reservationUsage': reservationUsage!,
        if (schema != null) 'schema': schema!,
        if (searchStatistics != null) 'searchStatistics': searchStatistics!,
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
        if (undeclaredQueryParameters != null)
          'undeclaredQueryParameters': undeclaredQueryParameters!,
      };
}

class JobStatistics3 {
  /// \[Output-only\] The number of bad records encountered.
  ///
  /// Note that if the job has failed because of more bad records encountered
  /// than the maximum allowed in the load job configuration, then this number
  /// can be less than the total number of bad records present in the input
  /// data.
  core.String? badRecords;

  /// \[Output-only\] Number of bytes of source data in a load job.
  core.String? inputFileBytes;

  /// \[Output-only\] Number of source files in a load job.
  core.String? inputFiles;

  /// \[Output-only\] Size of the loaded data in bytes.
  ///
  /// Note that while a load job is in the running state, this value may change.
  core.String? outputBytes;

  /// \[Output-only\] Number of rows imported in a load job.
  ///
  /// Note that while an import job is in the running state, this value may
  /// change.
  core.String? outputRows;

  JobStatistics3({
    this.badRecords,
    this.inputFileBytes,
    this.inputFiles,
    this.outputBytes,
    this.outputRows,
  });

  JobStatistics3.fromJson(core.Map _json)
      : this(
          badRecords: _json.containsKey('badRecords')
              ? _json['badRecords'] as core.String
              : null,
          inputFileBytes: _json.containsKey('inputFileBytes')
              ? _json['inputFileBytes'] as core.String
              : null,
          inputFiles: _json.containsKey('inputFiles')
              ? _json['inputFiles'] as core.String
              : null,
          outputBytes: _json.containsKey('outputBytes')
              ? _json['outputBytes'] as core.String
              : null,
          outputRows: _json.containsKey('outputRows')
              ? _json['outputRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (badRecords != null) 'badRecords': badRecords!,
        if (inputFileBytes != null) 'inputFileBytes': inputFileBytes!,
        if (inputFiles != null) 'inputFiles': inputFiles!,
        if (outputBytes != null) 'outputBytes': outputBytes!,
        if (outputRows != null) 'outputRows': outputRows!,
      };
}

class JobStatistics4 {
  /// \[Output-only\] Number of files per destination URI or URI pattern
  /// specified in the extract configuration.
  ///
  /// These values will be in the same order as the URIs specified in the
  /// 'destinationUris' field.
  core.List<core.String>? destinationUriFileCounts;

  /// \[Output-only\] Number of user bytes extracted into the result.
  ///
  /// This is the byte count as computed by BigQuery for billing purposes.
  core.String? inputBytes;

  JobStatistics4({
    this.destinationUriFileCounts,
    this.inputBytes,
  });

  JobStatistics4.fromJson(core.Map _json)
      : this(
          destinationUriFileCounts:
              _json.containsKey('destinationUriFileCounts')
                  ? (_json['destinationUriFileCounts'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          inputBytes: _json.containsKey('inputBytes')
              ? _json['inputBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationUriFileCounts != null)
          'destinationUriFileCounts': destinationUriFileCounts!,
        if (inputBytes != null) 'inputBytes': inputBytes!,
      };
}

class JobStatistics5 {
  /// \[Output-only\] Number of logical bytes copied to the destination table.
  core.String? copiedLogicalBytes;

  /// \[Output-only\] Number of rows copied to the destination table.
  core.String? copiedRows;

  JobStatistics5({
    this.copiedLogicalBytes,
    this.copiedRows,
  });

  JobStatistics5.fromJson(core.Map _json)
      : this(
          copiedLogicalBytes: _json.containsKey('copied_logical_bytes')
              ? _json['copied_logical_bytes'] as core.String
              : null,
          copiedRows: _json.containsKey('copied_rows')
              ? _json['copied_rows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (copiedLogicalBytes != null)
          'copied_logical_bytes': copiedLogicalBytes!,
        if (copiedRows != null) 'copied_rows': copiedRows!,
      };
}

class JobStatus {
  /// \[Output-only\] Final error result of the job.
  ///
  /// If present, indicates that the job has completed and was unsuccessful.
  ErrorProto? errorResult;

  /// \[Output-only\] The first errors encountered during the running of the
  /// job.
  ///
  /// The final message includes the number of errors that caused the process to
  /// stop. Errors here do not necessarily mean that the job has completed or
  /// was unsuccessful.
  core.List<ErrorProto>? errors;

  /// \[Output-only\] Running state of the job.
  core.String? state;

  JobStatus({
    this.errorResult,
    this.errors,
    this.state,
  });

  JobStatus.fromJson(core.Map _json)
      : this(
          errorResult: _json.containsKey('errorResult')
              ? ErrorProto.fromJson(
                  _json['errorResult'] as core.Map<core.String, core.dynamic>)
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => ErrorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorResult != null) 'errorResult': errorResult!,
        if (errors != null) 'errors': errors!,
        if (state != null) 'state': state!,
      };
}

/// Represents a single JSON object.
class JsonObject extends collection.MapBase<core.String, core.Object?> {
  final _innerMap = <core.String, core.Object?>{};

  JsonObject();

  JsonObject.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = value;
    });
  }

  @core.override
  core.Object? operator [](core.Object? key) => _innerMap[key];

  @core.override
  void operator []=(core.String key, core.Object? value) {
    _innerMap[key] = value;
  }

  @core.override
  void clear() {
    _innerMap.clear();
  }

  @core.override
  core.Iterable<core.String> get keys => _innerMap.keys;

  @core.override
  core.Object? remove(core.Object? key) => _innerMap.remove(key);
}

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

  ListModelsResponse.fromJson(core.Map _json)
      : this(
          models: _json.containsKey('models')
              ? (_json['models'] as core.List)
                  .map((value) => Model.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (models != null) 'models': models!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListRoutinesResponse {
  /// A token to request the next page of results.
  core.String? nextPageToken;

  /// Routines in the requested dataset.
  ///
  /// Unless read_mask is set in the request, only the following fields are
  /// populated: etag, project_id, dataset_id, routine_id, routine_type,
  /// creation_time, last_modified_time, and language.
  core.List<Routine>? routines;

  ListRoutinesResponse({
    this.nextPageToken,
    this.routines,
  });

  ListRoutinesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          routines: _json.containsKey('routines')
              ? (_json['routines'] as core.List)
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

  ListRowAccessPoliciesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          rowAccessPolicies: _json.containsKey('rowAccessPolicies')
              ? (_json['rowAccessPolicies'] as core.List)
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

class MaterializedViewDefinition {
  /// \[TrustedTester\] Enable automatic refresh of the materialized view when
  /// the base table is updated.
  ///
  /// The default value is "true".
  ///
  /// Optional.
  core.bool? enableRefresh;

  /// \[Output-only\] \[TrustedTester\] The time when this materialized view was
  /// last modified, in milliseconds since the epoch.
  core.String? lastRefreshTime;

  /// Max staleness of data that could be returned when materizlized view is
  /// queried (formatted as Google SQL Interval type).
  ///
  /// Optional.
  core.String? maxStaleness;
  core.List<core.int> get maxStalenessAsBytes =>
      convert.base64.decode(maxStaleness!);

  set maxStalenessAsBytes(core.List<core.int> _bytes) {
    maxStaleness =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A query whose result is persisted.
  ///
  /// Required.
  core.String? query;

  /// \[TrustedTester\] The maximum frequency at which this materialized view
  /// will be refreshed.
  ///
  /// The default value is "1800000" (30 minutes).
  ///
  /// Optional.
  core.String? refreshIntervalMs;

  MaterializedViewDefinition({
    this.enableRefresh,
    this.lastRefreshTime,
    this.maxStaleness,
    this.query,
    this.refreshIntervalMs,
  });

  MaterializedViewDefinition.fromJson(core.Map _json)
      : this(
          enableRefresh: _json.containsKey('enableRefresh')
              ? _json['enableRefresh'] as core.bool
              : null,
          lastRefreshTime: _json.containsKey('lastRefreshTime')
              ? _json['lastRefreshTime'] as core.String
              : null,
          maxStaleness: _json.containsKey('maxStaleness')
              ? _json['maxStaleness'] as core.String
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          refreshIntervalMs: _json.containsKey('refreshIntervalMs')
              ? _json['refreshIntervalMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableRefresh != null) 'enableRefresh': enableRefresh!,
        if (lastRefreshTime != null) 'lastRefreshTime': lastRefreshTime!,
        if (maxStaleness != null) 'maxStaleness': maxStaleness!,
        if (query != null) 'query': query!,
        if (refreshIntervalMs != null) 'refreshIntervalMs': refreshIntervalMs!,
      };
}

class MlStatistics {
  /// Results for all completed iterations.
  core.List<IterationResult>? iterationResults;

  /// Maximum number of iterations specified as max_iterations in the 'CREATE
  /// MODEL' query.
  ///
  /// The actual number of iterations may be less than this number due to early
  /// stop.
  core.String? maxIterations;

  MlStatistics({
    this.iterationResults,
    this.maxIterations,
  });

  MlStatistics.fromJson(core.Map _json)
      : this(
          iterationResults: _json.containsKey('iterationResults')
              ? (_json['iterationResults'] as core.List)
                  .map((value) => IterationResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxIterations: _json.containsKey('maxIterations')
              ? _json['maxIterations'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iterationResults != null) 'iterationResults': iterationResults!,
        if (maxIterations != null) 'maxIterations': maxIterations!,
      };
}

class Model {
  /// The best trial_id across all training runs.
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

  /// Input feature columns that were used to train this model.
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
  /// - "MODEL_TYPE_UNSPECIFIED"
  /// - "LINEAR_REGRESSION" : Linear regression model.
  /// - "LOGISTIC_REGRESSION" : Logistic regression based classification model.
  /// - "KMEANS" : K-means clustering model.
  /// - "MATRIX_FACTORIZATION" : Matrix factorization model.
  /// - "DNN_CLASSIFIER" : DNN classifier model.
  /// - "TENSORFLOW" : An imported TensorFlow model.
  /// - "DNN_REGRESSOR" : DNN regressor model.
  /// - "BOOSTED_TREE_REGRESSOR" : Boosted tree regressor model.
  /// - "BOOSTED_TREE_CLASSIFIER" : Boosted tree classifier model.
  /// - "ARIMA" : ARIMA model.
  /// - "AUTOML_REGRESSOR" : AutoML Tables regression model.
  /// - "AUTOML_CLASSIFIER" : AutoML Tables classification model.
  /// - "PCA" : Prinpical Component Analysis model.
  /// - "AUTOENCODER" : Autoencoder model.
  /// - "ARIMA_PLUS" : New name for the ARIMA model.
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

  /// Information for all training runs in increasing order of start_time.
  ///
  /// Output only.
  core.List<TrainingRun>? trainingRuns;

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
    this.trainingRuns,
  });

  Model.fromJson(core.Map _json)
      : this(
          bestTrialId: _json.containsKey('bestTrialId')
              ? _json['bestTrialId'] as core.String
              : null,
          creationTime: _json.containsKey('creationTime')
              ? _json['creationTime'] as core.String
              : null,
          defaultTrialId: _json.containsKey('defaultTrialId')
              ? _json['defaultTrialId'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          encryptionConfiguration: _json.containsKey('encryptionConfiguration')
              ? EncryptionConfiguration.fromJson(
                  _json['encryptionConfiguration']
                      as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          expirationTime: _json.containsKey('expirationTime')
              ? _json['expirationTime'] as core.String
              : null,
          featureColumns: _json.containsKey('featureColumns')
              ? (_json['featureColumns'] as core.List)
                  .map((value) => StandardSqlField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          friendlyName: _json.containsKey('friendlyName')
              ? _json['friendlyName'] as core.String
              : null,
          hparamSearchSpaces: _json.containsKey('hparamSearchSpaces')
              ? HparamSearchSpaces.fromJson(_json['hparamSearchSpaces']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hparamTrials: _json.containsKey('hparamTrials')
              ? (_json['hparamTrials'] as core.List)
                  .map((value) => HparamTuningTrial.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          labelColumns: _json.containsKey('labelColumns')
              ? (_json['labelColumns'] as core.List)
                  .map((value) => StandardSqlField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lastModifiedTime: _json.containsKey('lastModifiedTime')
              ? _json['lastModifiedTime'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          modelReference: _json.containsKey('modelReference')
              ? ModelReference.fromJson(_json['modelReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          modelType: _json.containsKey('modelType')
              ? _json['modelType'] as core.String
              : null,
          optimalTrialIds: _json.containsKey('optimalTrialIds')
              ? (_json['optimalTrialIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          trainingRuns: _json.containsKey('trainingRuns')
              ? (_json['trainingRuns'] as core.List)
                  .map((value) => TrainingRun.fromJson(
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
        if (trainingRuns != null) 'trainingRuns': trainingRuns!,
      };
}

/// \[Output-only, Beta\] Model options used for the first training run.
///
/// These options are immutable for subsequent training runs. Default values are
/// used for any options not specified in the input query.
class ModelDefinitionModelOptions {
  core.List<core.String>? labels;
  core.String? lossType;
  core.String? modelType;

  ModelDefinitionModelOptions({
    this.labels,
    this.lossType,
    this.modelType,
  });

  ModelDefinitionModelOptions.fromJson(core.Map _json)
      : this(
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lossType: _json.containsKey('lossType')
              ? _json['lossType'] as core.String
              : null,
          modelType: _json.containsKey('modelType')
              ? _json['modelType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (lossType != null) 'lossType': lossType!,
        if (modelType != null) 'modelType': modelType!,
      };
}

class ModelDefinition {
  /// \[Output-only, Beta\] Model options used for the first training run.
  ///
  /// These options are immutable for subsequent training runs. Default values
  /// are used for any options not specified in the input query.
  ModelDefinitionModelOptions? modelOptions;

  /// \[Output-only, Beta\] Information about ml training runs, each training
  /// run comprises of multiple iterations and there may be multiple training
  /// runs for the model if warm start is used or if a user decides to continue
  /// a previously cancelled query.
  core.List<BqmlTrainingRun>? trainingRuns;

  ModelDefinition({
    this.modelOptions,
    this.trainingRuns,
  });

  ModelDefinition.fromJson(core.Map _json)
      : this(
          modelOptions: _json.containsKey('modelOptions')
              ? ModelDefinitionModelOptions.fromJson(
                  _json['modelOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          trainingRuns: _json.containsKey('trainingRuns')
              ? (_json['trainingRuns'] as core.List)
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

  ModelReference.fromJson(core.Map _json)
      : this(
          datasetId: _json.containsKey('datasetId')
              ? _json['datasetId'] as core.String
              : null,
          modelId: _json.containsKey('modelId')
              ? _json['modelId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
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

  MultiClassClassificationMetrics.fromJson(core.Map _json)
      : this(
          aggregateClassificationMetrics:
              _json.containsKey('aggregateClassificationMetrics')
                  ? AggregateClassificationMetrics.fromJson(
                      _json['aggregateClassificationMetrics']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          confusionMatrixList: _json.containsKey('confusionMatrixList')
              ? (_json['confusionMatrixList'] as core.List)
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

  ParquetOptions.fromJson(core.Map _json)
      : this(
          enableListInference: _json.containsKey('enableListInference')
              ? _json['enableListInference'] as core.bool
              : null,
          enumAsString: _json.containsKey('enumAsString')
              ? _json['enumAsString'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableListInference != null)
          'enableListInference': enableListInference!,
        if (enumAsString != null) 'enumAsString': enumAsString!,
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
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
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

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  Policy.fromJson(core.Map _json)
      : this(
          auditConfigs: _json.containsKey('auditConfigs')
              ? (_json['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

class ProjectListProjects {
  /// A descriptive name for this project.
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

  ProjectListProjects.fromJson(core.Map _json)
      : this(
          friendlyName: _json.containsKey('friendlyName')
              ? _json['friendlyName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          numericId: _json.containsKey('numericId')
              ? _json['numericId'] as core.String
              : null,
          projectReference: _json.containsKey('projectReference')
              ? ProjectReference.fromJson(_json['projectReference']
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

class ProjectList {
  /// A hash of the page of results
  core.String? etag;

  /// The type of list.
  core.String? kind;

  /// A token to request the next page of results.
  core.String? nextPageToken;

  /// Projects to which you have at least READ access.
  core.List<ProjectListProjects>? projects;

  /// The total number of projects in the list.
  core.int? totalItems;

  ProjectList({
    this.etag,
    this.kind,
    this.nextPageToken,
    this.projects,
    this.totalItems,
  });

  ProjectList.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          projects: _json.containsKey('projects')
              ? (_json['projects'] as core.List)
                  .map((value) => ProjectListProjects.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalItems: _json.containsKey('totalItems')
              ? _json['totalItems'] as core.int
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

  ProjectReference.fromJson(core.Map _json)
      : this(
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
      };
}

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

  QueryParameter.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parameterType: _json.containsKey('parameterType')
              ? QueryParameterType.fromJson(
                  _json['parameterType'] as core.Map<core.String, core.dynamic>)
              : null,
          parameterValue: _json.containsKey('parameterValue')
              ? QueryParameterValue.fromJson(_json['parameterValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (parameterType != null) 'parameterType': parameterType!,
        if (parameterValue != null) 'parameterValue': parameterValue!,
      };
}

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

  QueryParameterTypeStructTypes.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type')
              ? QueryParameterType.fromJson(
                  _json['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

class QueryParameterType {
  /// The type of the array's elements, if this is an array.
  ///
  /// Optional.
  QueryParameterType? arrayType;

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
    this.structTypes,
    this.type,
  });

  QueryParameterType.fromJson(core.Map _json)
      : this(
          arrayType: _json.containsKey('arrayType')
              ? QueryParameterType.fromJson(
                  _json['arrayType'] as core.Map<core.String, core.dynamic>)
              : null,
          structTypes: _json.containsKey('structTypes')
              ? (_json['structTypes'] as core.List)
                  .map((value) => QueryParameterTypeStructTypes.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayType != null) 'arrayType': arrayType!,
        if (structTypes != null) 'structTypes': structTypes!,
        if (type != null) 'type': type!,
      };
}

class QueryParameterValue {
  /// The array values, if this is an array type.
  ///
  /// Optional.
  core.List<QueryParameterValue>? arrayValues;

  /// The struct field values, in order of the struct type's declaration.
  ///
  /// Optional.
  core.Map<core.String, QueryParameterValue>? structValues;

  /// The value of this value, if a simple scalar type.
  ///
  /// Optional.
  core.String? value;

  QueryParameterValue({
    this.arrayValues,
    this.structValues,
    this.value,
  });

  QueryParameterValue.fromJson(core.Map _json)
      : this(
          arrayValues: _json.containsKey('arrayValues')
              ? (_json['arrayValues'] as core.List)
                  .map((value) => QueryParameterValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          structValues: _json.containsKey('structValues')
              ? (_json['structValues'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    QueryParameterValue.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayValues != null) 'arrayValues': arrayValues!,
        if (structValues != null) 'structValues': structValues!,
        if (value != null) 'value': value!,
      };
}

class QueryRequest {
  /// Connection properties.
  core.List<ConnectionProperty>? connectionProperties;

  /// If true, creates a new session, where session id will be a server
  /// generated random id.
  ///
  /// If false, runs query with an existing session_id passed in
  /// ConnectionProperty, otherwise runs query in non-session mode.
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

  /// The resource type of the request.
  core.String? kind;

  /// The labels associated with this job.
  ///
  /// You can use these to organize and group your jobs. Label keys and values
  /// can be no longer than 63 characters, can only contain lowercase letters,
  /// numeric characters, underscores and dashes. International characters are
  /// allowed. Label values are optional. Label keys must start with a letter
  /// and each label in the list must have a different key.
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

  /// Limits the bytes billed for this job.
  ///
  /// Queries that will have bytes billed beyond this limit will fail (without
  /// incurring a charge). If unspecified, this will be set to your project
  /// default.
  ///
  /// Optional.
  core.String? maximumBytesBilled;

  /// Standard SQL only.
  ///
  /// Set to POSITIONAL to use positional (?) query parameters or to NAMED to
  /// use named (@myparam) query parameters in this query.
  core.String? parameterMode;

  /// This property is deprecated.
  ///
  /// Deprecated.
  core.bool? preserveNulls;

  /// A query string, following the BigQuery query syntax, of the query to
  /// execute.
  ///
  /// Example: "SELECT count(f1) FROM \[myProjectId:myDatasetId.myTableId\]".
  ///
  /// Required.
  core.String? query;

  /// Query parameters for Standard SQL queries.
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
  /// determining whether a request is a duplicate of the previous request, all
  /// parameters in the request that may affect the behavior are considered. For
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
  core.String? requestId;

  /// How long to wait for the query to complete, in milliseconds, before the
  /// request times out and returns.
  ///
  /// Note that this is only a timeout for the request, not the query. If the
  /// query takes longer to run than the timeout value, the call returns without
  /// any results and with the 'jobComplete' flag set to false. You can call
  /// GetQueryResults() to wait for the query to complete and read the results.
  /// The default value is 10000 milliseconds (10 seconds).
  ///
  /// Optional.
  core.int? timeoutMs;

  /// Specifies whether to use BigQuery's legacy SQL dialect for this query.
  ///
  /// The default value is true. If set to false, the query will use BigQuery's
  /// standard SQL: https://cloud.google.com/bigquery/sql-reference/ When
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
    this.createSession,
    this.defaultDataset,
    this.dryRun,
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

  QueryRequest.fromJson(core.Map _json)
      : this(
          connectionProperties: _json.containsKey('connectionProperties')
              ? (_json['connectionProperties'] as core.List)
                  .map((value) => ConnectionProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createSession: _json.containsKey('createSession')
              ? _json['createSession'] as core.bool
              : null,
          defaultDataset: _json.containsKey('defaultDataset')
              ? DatasetReference.fromJson(_json['defaultDataset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dryRun:
              _json.containsKey('dryRun') ? _json['dryRun'] as core.bool : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          maxResults: _json.containsKey('maxResults')
              ? _json['maxResults'] as core.int
              : null,
          maximumBytesBilled: _json.containsKey('maximumBytesBilled')
              ? _json['maximumBytesBilled'] as core.String
              : null,
          parameterMode: _json.containsKey('parameterMode')
              ? _json['parameterMode'] as core.String
              : null,
          preserveNulls: _json.containsKey('preserveNulls')
              ? _json['preserveNulls'] as core.bool
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          queryParameters: _json.containsKey('queryParameters')
              ? (_json['queryParameters'] as core.List)
                  .map((value) => QueryParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
          timeoutMs: _json.containsKey('timeoutMs')
              ? _json['timeoutMs'] as core.int
              : null,
          useLegacySql: _json.containsKey('useLegacySql')
              ? _json['useLegacySql'] as core.bool
              : null,
          useQueryCache: _json.containsKey('useQueryCache')
              ? _json['useQueryCache'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionProperties != null)
          'connectionProperties': connectionProperties!,
        if (createSession != null) 'createSession': createSession!,
        if (defaultDataset != null) 'defaultDataset': defaultDataset!,
        if (dryRun != null) 'dryRun': dryRun!,
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

  /// \[Output-only\] Detailed statistics for DML statements Present only for
  /// DML statements INSERT, UPDATE, DELETE or TRUNCATE.
  DmlStatistics? dmlStats;

  /// \[Output-only\] The first errors or warnings encountered during the
  /// running of the job.
  ///
  /// The final message includes the number of errors that caused the process to
  /// stop. Errors here do not necessarily mean that the job has completed or
  /// was unsuccessful.
  core.List<ErrorProto>? errors;

  /// Whether the query has completed or not.
  ///
  /// If rows or totalRows are present, this will always be true. If this is
  /// false, totalRows will not be available.
  core.bool? jobComplete;

  /// Reference to the Job that was created to run the query.
  ///
  /// This field will be present even if the original request timed out, in
  /// which case GetQueryResults can be used to read the results once the query
  /// has completed. Since this API only returns the first page of results,
  /// subsequent pages can be fetched via the same mechanism (GetQueryResults).
  JobReference? jobReference;

  /// The resource type.
  core.String? kind;

  /// \[Output-only\] The number of rows affected by a DML statement.
  ///
  /// Present only for DML statements INSERT, UPDATE or DELETE.
  core.String? numDmlAffectedRows;

  /// A token used for paging results.
  core.String? pageToken;

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

  /// \[Output-only\] \[Preview\] Information of the session if this job is part
  /// of one.
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
    this.jobReference,
    this.kind,
    this.numDmlAffectedRows,
    this.pageToken,
    this.rows,
    this.schema,
    this.sessionInfo,
    this.totalBytesProcessed,
    this.totalRows,
  });

  QueryResponse.fromJson(core.Map _json)
      : this(
          cacheHit: _json.containsKey('cacheHit')
              ? _json['cacheHit'] as core.bool
              : null,
          dmlStats: _json.containsKey('dmlStats')
              ? DmlStatistics.fromJson(
                  _json['dmlStats'] as core.Map<core.String, core.dynamic>)
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => ErrorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          jobComplete: _json.containsKey('jobComplete')
              ? _json['jobComplete'] as core.bool
              : null,
          jobReference: _json.containsKey('jobReference')
              ? JobReference.fromJson(
                  _json['jobReference'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          numDmlAffectedRows: _json.containsKey('numDmlAffectedRows')
              ? _json['numDmlAffectedRows'] as core.String
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => TableRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          schema: _json.containsKey('schema')
              ? TableSchema.fromJson(
                  _json['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          sessionInfo: _json.containsKey('sessionInfo')
              ? SessionInfo.fromJson(
                  _json['sessionInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          totalBytesProcessed: _json.containsKey('totalBytesProcessed')
              ? _json['totalBytesProcessed'] as core.String
              : null,
          totalRows: _json.containsKey('totalRows')
              ? _json['totalRows'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cacheHit != null) 'cacheHit': cacheHit!,
        if (dmlStats != null) 'dmlStats': dmlStats!,
        if (errors != null) 'errors': errors!,
        if (jobComplete != null) 'jobComplete': jobComplete!,
        if (jobReference != null) 'jobReference': jobReference!,
        if (kind != null) 'kind': kind!,
        if (numDmlAffectedRows != null)
          'numDmlAffectedRows': numDmlAffectedRows!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (rows != null) 'rows': rows!,
        if (schema != null) 'schema': schema!,
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
        if (totalBytesProcessed != null)
          'totalBytesProcessed': totalBytesProcessed!,
        if (totalRows != null) 'totalRows': totalRows!,
      };
}

class QueryTimelineSample {
  /// Total number of units currently being processed by workers.
  ///
  /// This does not correspond directly to slot usage. This is the largest value
  /// observed since the last sample.
  core.String? activeUnits;

  /// Total parallel units of work completed by this query.
  core.String? completedUnits;

  /// Milliseconds elapsed since the start of query execution.
  core.String? elapsedMs;

  /// Total parallel units of work remaining for the active stages.
  core.String? pendingUnits;

  /// Cumulative slot-ms consumed by the query.
  core.String? totalSlotMs;

  QueryTimelineSample({
    this.activeUnits,
    this.completedUnits,
    this.elapsedMs,
    this.pendingUnits,
    this.totalSlotMs,
  });

  QueryTimelineSample.fromJson(core.Map _json)
      : this(
          activeUnits: _json.containsKey('activeUnits')
              ? _json['activeUnits'] as core.String
              : null,
          completedUnits: _json.containsKey('completedUnits')
              ? _json['completedUnits'] as core.String
              : null,
          elapsedMs: _json.containsKey('elapsedMs')
              ? _json['elapsedMs'] as core.String
              : null,
          pendingUnits: _json.containsKey('pendingUnits')
              ? _json['pendingUnits'] as core.String
              : null,
          totalSlotMs: _json.containsKey('totalSlotMs')
              ? _json['totalSlotMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeUnits != null) 'activeUnits': activeUnits!,
        if (completedUnits != null) 'completedUnits': completedUnits!,
        if (elapsedMs != null) 'elapsedMs': elapsedMs!,
        if (pendingUnits != null) 'pendingUnits': pendingUnits!,
        if (totalSlotMs != null) 'totalSlotMs': totalSlotMs!,
      };
}

/// \[TrustedTester\] \[Required\] Defines the ranges for range partitioning.
class RangePartitioningRange {
  /// \[TrustedTester\] \[Required\] The end of range partitioning, exclusive.
  core.String? end;

  /// \[TrustedTester\] \[Required\] The width of each interval.
  core.String? interval;

  /// \[TrustedTester\] \[Required\] The start of range partitioning, inclusive.
  core.String? start;

  RangePartitioningRange({
    this.end,
    this.interval,
    this.start,
  });

  RangePartitioningRange.fromJson(core.Map _json)
      : this(
          end: _json.containsKey('end') ? _json['end'] as core.String : null,
          interval: _json.containsKey('interval')
              ? _json['interval'] as core.String
              : null,
          start:
              _json.containsKey('start') ? _json['start'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (interval != null) 'interval': interval!,
        if (start != null) 'start': start!,
      };
}

class RangePartitioning {
  /// \[TrustedTester\] \[Required\] The table is partitioned by this field.
  ///
  /// The field must be a top-level NULLABLE/REQUIRED field. The only supported
  /// type is INTEGER/INT64.
  core.String? field;

  /// \[TrustedTester\] \[Required\] Defines the ranges for range partitioning.
  RangePartitioningRange? range;

  RangePartitioning({
    this.field,
    this.range,
  });

  RangePartitioning.fromJson(core.Map _json)
      : this(
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
          range: _json.containsKey('range')
              ? RangePartitioningRange.fromJson(
                  _json['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (range != null) 'range': range!,
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

  RankingMetrics.fromJson(core.Map _json)
      : this(
          averageRank: _json.containsKey('averageRank')
              ? (_json['averageRank'] as core.num).toDouble()
              : null,
          meanAveragePrecision: _json.containsKey('meanAveragePrecision')
              ? (_json['meanAveragePrecision'] as core.num).toDouble()
              : null,
          meanSquaredError: _json.containsKey('meanSquaredError')
              ? (_json['meanSquaredError'] as core.num).toDouble()
              : null,
          normalizedDiscountedCumulativeGain:
              _json.containsKey('normalizedDiscountedCumulativeGain')
                  ? (_json['normalizedDiscountedCumulativeGain'] as core.num)
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

  RegressionMetrics.fromJson(core.Map _json)
      : this(
          meanAbsoluteError: _json.containsKey('meanAbsoluteError')
              ? (_json['meanAbsoluteError'] as core.num).toDouble()
              : null,
          meanSquaredError: _json.containsKey('meanSquaredError')
              ? (_json['meanSquaredError'] as core.num).toDouble()
              : null,
          meanSquaredLogError: _json.containsKey('meanSquaredLogError')
              ? (_json['meanSquaredLogError'] as core.num).toDouble()
              : null,
          medianAbsoluteError: _json.containsKey('medianAbsoluteError')
              ? (_json['medianAbsoluteError'] as core.num).toDouble()
              : null,
          rSquared: _json.containsKey('rSquared')
              ? (_json['rSquared'] as core.num).toDouble()
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
  /// projects/{project_id}/locations/{location_id}/connections/{connection_id}
  core.String? connection;

  /// Endpoint of the user-provided remote service (e.g. a function url in
  /// Google Cloud Functions).
  core.String? endpoint;

  /// Max number of rows in each batch sent to the remote service.
  ///
  /// If absent or if 0, it means no limit.
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

  RemoteFunctionOptions.fromJson(core.Map _json)
      : this(
          connection: _json.containsKey('connection')
              ? _json['connection'] as core.String
              : null,
          endpoint: _json.containsKey('endpoint')
              ? _json['endpoint'] as core.String
              : null,
          maxBatchingRows: _json.containsKey('maxBatchingRows')
              ? _json['maxBatchingRows'] as core.String
              : null,
          userDefinedContext: _json.containsKey('userDefinedContext')
              ? (_json['userDefinedContext']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
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

/// A user-defined function or a stored procedure.
class Routine {
  /// Optional.
  core.List<Argument>? arguments;

  /// The time when this routine was created, in milliseconds since the epoch.
  ///
  /// Output only.
  core.String? creationTime;

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

  /// Defaults to "SQL".
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LANGUAGE_UNSPECIFIED"
  /// - "SQL" : SQL language.
  /// - "JAVASCRIPT" : JavaScript language.
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
  /// types specificed in return table type, at query time.
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
  /// - "ROUTINE_TYPE_UNSPECIFIED"
  /// - "SCALAR_FUNCTION" : Non-builtin permanent scalar function.
  /// - "PROCEDURE" : Stored procedure.
  /// - "TABLE_VALUED_FUNCTION" : Non-builtin permanent TVF.
  core.String? routineType;

  /// Can be set for procedures only.
  ///
  /// If true (default), the definition body will be validated in the creation
  /// and the updates of the procedure. For procedures with an argument of ANY
  /// TYPE, the definition body validtion is not supported at creation/update
  /// time, and thus this field must be set to false explicitly.
  ///
  /// Optional.
  core.bool? strictMode;

  Routine({
    this.arguments,
    this.creationTime,
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
    this.strictMode,
  });

  Routine.fromJson(core.Map _json)
      : this(
          arguments: _json.containsKey('arguments')
              ? (_json['arguments'] as core.List)
                  .map((value) => Argument.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          creationTime: _json.containsKey('creationTime')
              ? _json['creationTime'] as core.String
              : null,
          definitionBody: _json.containsKey('definitionBody')
              ? _json['definitionBody'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          determinismLevel: _json.containsKey('determinismLevel')
              ? _json['determinismLevel'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          importedLibraries: _json.containsKey('importedLibraries')
              ? (_json['importedLibraries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          lastModifiedTime: _json.containsKey('lastModifiedTime')
              ? _json['lastModifiedTime'] as core.String
              : null,
          remoteFunctionOptions: _json.containsKey('remoteFunctionOptions')
              ? RemoteFunctionOptions.fromJson(_json['remoteFunctionOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          returnTableType: _json.containsKey('returnTableType')
              ? StandardSqlTableType.fromJson(_json['returnTableType']
                  as core.Map<core.String, core.dynamic>)
              : null,
          returnType: _json.containsKey('returnType')
              ? StandardSqlDataType.fromJson(
                  _json['returnType'] as core.Map<core.String, core.dynamic>)
              : null,
          routineReference: _json.containsKey('routineReference')
              ? RoutineReference.fromJson(_json['routineReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          routineType: _json.containsKey('routineType')
              ? _json['routineType'] as core.String
              : null,
          strictMode: _json.containsKey('strictMode')
              ? _json['strictMode'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arguments != null) 'arguments': arguments!,
        if (creationTime != null) 'creationTime': creationTime!,
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
        if (strictMode != null) 'strictMode': strictMode!,
      };
}

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

  RoutineReference.fromJson(core.Map _json)
      : this(
          datasetId: _json.containsKey('datasetId')
              ? _json['datasetId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          routineId: _json.containsKey('routineId')
              ? _json['routineId'] as core.String
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

  Row.fromJson(core.Map _json)
      : this(
          actualLabel: _json.containsKey('actualLabel')
              ? _json['actualLabel'] as core.String
              : null,
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
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

  RowAccessPolicy.fromJson(core.Map _json)
      : this(
          creationTime: _json.containsKey('creationTime')
              ? _json['creationTime'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          filterPredicate: _json.containsKey('filterPredicate')
              ? _json['filterPredicate'] as core.String
              : null,
          lastModifiedTime: _json.containsKey('lastModifiedTime')
              ? _json['lastModifiedTime'] as core.String
              : null,
          rowAccessPolicyReference:
              _json.containsKey('rowAccessPolicyReference')
                  ? RowAccessPolicyReference.fromJson(
                      _json['rowAccessPolicyReference']
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

  RowAccessPolicyReference.fromJson(core.Map _json)
      : this(
          datasetId: _json.containsKey('datasetId')
              ? _json['datasetId'] as core.String
              : null,
          policyId: _json.containsKey('policyId')
              ? _json['policyId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          tableId: _json.containsKey('tableId')
              ? _json['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (policyId != null) 'policyId': policyId!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}

class RowLevelSecurityStatistics {
  /// \[Output-only\] \[Preview\] Whether any accessed data was protected by row
  /// access policies.
  core.bool? rowLevelSecurityApplied;

  RowLevelSecurityStatistics({
    this.rowLevelSecurityApplied,
  });

  RowLevelSecurityStatistics.fromJson(core.Map _json)
      : this(
          rowLevelSecurityApplied: _json.containsKey('rowLevelSecurityApplied')
              ? _json['rowLevelSecurityApplied'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rowLevelSecurityApplied != null)
          'rowLevelSecurityApplied': rowLevelSecurityApplied!,
      };
}

class ScriptStackFrame {
  /// \[Output-only\] One-based end column.
  core.int? endColumn;

  /// \[Output-only\] One-based end line.
  core.int? endLine;

  /// \[Output-only\] Name of the active procedure, empty if in a top-level
  /// script.
  core.String? procedureId;

  /// \[Output-only\] One-based start column.
  core.int? startColumn;

  /// \[Output-only\] One-based start line.
  core.int? startLine;

  /// \[Output-only\] Text of the current statement/expression.
  core.String? text;

  ScriptStackFrame({
    this.endColumn,
    this.endLine,
    this.procedureId,
    this.startColumn,
    this.startLine,
    this.text,
  });

  ScriptStackFrame.fromJson(core.Map _json)
      : this(
          endColumn: _json.containsKey('endColumn')
              ? _json['endColumn'] as core.int
              : null,
          endLine: _json.containsKey('endLine')
              ? _json['endLine'] as core.int
              : null,
          procedureId: _json.containsKey('procedureId')
              ? _json['procedureId'] as core.String
              : null,
          startColumn: _json.containsKey('startColumn')
              ? _json['startColumn'] as core.int
              : null,
          startLine: _json.containsKey('startLine')
              ? _json['startLine'] as core.int
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
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

class ScriptStatistics {
  /// \[Output-only\] Whether this child job was a statement or expression.
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

  ScriptStatistics.fromJson(core.Map _json)
      : this(
          evaluationKind: _json.containsKey('evaluationKind')
              ? _json['evaluationKind'] as core.String
              : null,
          stackFrames: _json.containsKey('stackFrames')
              ? (_json['stackFrames'] as core.List)
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

class SearchStatistics {
  /// When index_usage_mode is UNUSED or PARTIALLY_USED, this field explains why
  /// index was not used in all or part of the search query.
  ///
  /// If index_usage_mode is FULLLY_USED, this field is not populated.
  core.List<IndexUnusedReason>? indexUnusedReason;

  /// Specifies index usage mode for the query.
  core.String? indexUsageMode;

  SearchStatistics({
    this.indexUnusedReason,
    this.indexUsageMode,
  });

  SearchStatistics.fromJson(core.Map _json)
      : this(
          indexUnusedReason: _json.containsKey('indexUnusedReason')
              ? (_json['indexUnusedReason'] as core.List)
                  .map((value) => IndexUnusedReason.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          indexUsageMode: _json.containsKey('indexUsageMode')
              ? _json['indexUsageMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexUnusedReason != null) 'indexUnusedReason': indexUnusedReason!,
        if (indexUsageMode != null) 'indexUsageMode': indexUsageMode!,
      };
}

class SessionInfo {
  /// \[Output-only\] // \[Preview\] Id of the session.
  core.String? sessionId;

  SessionInfo({
    this.sessionId,
  });

  SessionInfo.fromJson(core.Map _json)
      : this(
          sessionId: _json.containsKey('sessionId')
              ? _json['sessionId'] as core.String
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

  SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

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

  SnapshotDefinition.fromJson(core.Map _json)
      : this(
          baseTableReference: _json.containsKey('baseTableReference')
              ? TableReference.fromJson(_json['baseTableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          snapshotTime: _json.containsKey('snapshotTime')
              ? core.DateTime.parse(_json['snapshotTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseTableReference != null)
          'baseTableReference': baseTableReference!,
        if (snapshotTime != null)
          'snapshotTime': snapshotTime!.toUtc().toIso8601String(),
      };
}

/// The data type of a variable such as a function argument.
///
/// Examples include: * INT64: `{"typeKind": "INT64"}` * ARRAY: { "typeKind":
/// "ARRAY", "arrayElementType": {"typeKind": "STRING"} } * STRUCT\>: {
/// "typeKind": "STRUCT", "structType": { "fields": \[ { "name": "x", "type":
/// {"typeKind: "STRING"} }, { "name": "y", "type": { "typeKind": "ARRAY",
/// "arrayElementType": {"typekind": "DATE"} } } \] } }
class StandardSqlDataType {
  /// The type of the array's elements, if type_kind = "ARRAY".
  StandardSqlDataType? arrayElementType;

  /// The fields of this struct, in order, if type_kind = "STRUCT".
  StandardSqlStructType? structType;

  /// The top level type of this field.
  ///
  /// Can be any standard SQL data type (e.g., "INT64", "DATE", "ARRAY").
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
  core.String? typeKind;

  StandardSqlDataType({
    this.arrayElementType,
    this.structType,
    this.typeKind,
  });

  StandardSqlDataType.fromJson(core.Map _json)
      : this(
          arrayElementType: _json.containsKey('arrayElementType')
              ? StandardSqlDataType.fromJson(_json['arrayElementType']
                  as core.Map<core.String, core.dynamic>)
              : null,
          structType: _json.containsKey('structType')
              ? StandardSqlStructType.fromJson(
                  _json['structType'] as core.Map<core.String, core.dynamic>)
              : null,
          typeKind: _json.containsKey('typeKind')
              ? _json['typeKind'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayElementType != null) 'arrayElementType': arrayElementType!,
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

  StandardSqlField.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type')
              ? StandardSqlDataType.fromJson(
                  _json['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

class StandardSqlStructType {
  core.List<StandardSqlField>? fields;

  StandardSqlStructType({
    this.fields,
  });

  StandardSqlStructType.fromJson(core.Map _json)
      : this(
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
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

  StandardSqlTableType.fromJson(core.Map _json)
      : this(
          columns: _json.containsKey('columns')
              ? (_json['columns'] as core.List)
                  .map((value) => StandardSqlField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
      };
}

class Streamingbuffer {
  /// \[Output-only\] A lower-bound estimate of the number of bytes currently in
  /// the streaming buffer.
  core.String? estimatedBytes;

  /// \[Output-only\] A lower-bound estimate of the number of rows currently in
  /// the streaming buffer.
  core.String? estimatedRows;

  /// \[Output-only\] Contains the timestamp of the oldest entry in the
  /// streaming buffer, in milliseconds since the epoch, if the streaming buffer
  /// is available.
  core.String? oldestEntryTime;

  Streamingbuffer({
    this.estimatedBytes,
    this.estimatedRows,
    this.oldestEntryTime,
  });

  Streamingbuffer.fromJson(core.Map _json)
      : this(
          estimatedBytes: _json.containsKey('estimatedBytes')
              ? _json['estimatedBytes'] as core.String
              : null,
          estimatedRows: _json.containsKey('estimatedRows')
              ? _json['estimatedRows'] as core.String
              : null,
          oldestEntryTime: _json.containsKey('oldestEntryTime')
              ? _json['oldestEntryTime'] as core.String
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

  StringHparamSearchSpace.fromJson(core.Map _json)
      : this(
          candidates: _json.containsKey('candidates')
              ? (_json['candidates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (candidates != null) 'candidates': candidates!,
      };
}

class Table {
  /// \[Output-only\] Clone definition.
  CloneDefinition? cloneDefinition;

  /// \[Beta\] Clustering specification for the table.
  ///
  /// Must be specified with partitioning, data in the table will be first
  /// partitioned and subsequently clustered.
  Clustering? clustering;

  /// \[Output-only\] The time when this table was created, in milliseconds
  /// since the epoch.
  core.String? creationTime;

  /// \[Output-only\] The default collation of the table.
  core.String? defaultCollation;

  /// A user-friendly description of this table.
  ///
  /// Optional.
  core.String? description;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  EncryptionConfiguration? encryptionConfiguration;

  /// \[Output-only\] A hash of the table metadata.
  ///
  /// Used to ensure there were no concurrent modifications to the resource when
  /// attempting an update. Not guaranteed to change when the table contents or
  /// the fields numRows, numBytes, numLongTermBytes or lastModifiedTime change.
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

  /// \[Output-only\] An opaque ID uniquely identifying the table.
  core.String? id;

  /// \[Output-only\] The type of the resource.
  core.String? kind;

  /// The labels associated with this table.
  ///
  /// You can use these to organize and group your tables. Label keys and values
  /// can be no longer than 63 characters, can only contain lowercase letters,
  /// numeric characters, underscores and dashes. International characters are
  /// allowed. Label values are optional. Label keys must start with a letter
  /// and each label in the list must have a different key.
  core.Map<core.String, core.String>? labels;

  /// \[Output-only\] The time when this table was last modified, in
  /// milliseconds since the epoch.
  core.String? lastModifiedTime;

  /// \[Output-only\] The geographic location where the table resides.
  ///
  /// This value is inherited from the dataset.
  core.String? location;

  /// Materialized view definition.
  ///
  /// Optional.
  MaterializedViewDefinition? materializedView;

  /// \[Output-only, Beta\] Present iff this table represents a ML model.
  ///
  /// Describes the training information for the model, and it is required to
  /// run 'PREDICT' queries.
  ModelDefinition? model;

  /// \[Output-only\] The size of this table in bytes, excluding any data in the
  /// streaming buffer.
  core.String? numBytes;

  /// \[Output-only\] The number of bytes in the table that are considered
  /// "long-term storage".
  core.String? numLongTermBytes;

  /// \[Output-only\] \[TrustedTester\] The physical size of this table in
  /// bytes, excluding any data in the streaming buffer.
  ///
  /// This includes compression and storage used for time travel.
  core.String? numPhysicalBytes;

  /// \[Output-only\] The number of rows of data in this table, excluding any
  /// data in the streaming buffer.
  core.String? numRows;

  /// \[Output-only\] Number of logical bytes that are less than 90 days old.
  core.String? numActiveLogicalBytes;

  /// \[Output-only\] Number of physical bytes less than 90 days old.
  ///
  /// This data is not kept in real time, and might be delayed by a few seconds
  /// to a few minutes.
  core.String? numActivePhysicalBytes;

  /// \[Output-only\] Number of logical bytes that are more than 90 days old.
  core.String? numLongTermLogicalBytes;

  /// \[Output-only\] Number of physical bytes more than 90 days old.
  ///
  /// This data is not kept in real time, and might be delayed by a few seconds
  /// to a few minutes.
  core.String? numLongTermPhysicalBytes;

  /// \[Output-only\] The number of partitions present in the table or
  /// materialized view.
  ///
  /// This data is not kept in real time, and might be delayed by a few seconds
  /// to a few minutes.
  core.String? numPartitions;

  /// \[Output-only\] Number of physical bytes used by time travel storage
  /// (deleted or changed data).
  ///
  /// This data is not kept in real time, and might be delayed by a few seconds
  /// to a few minutes.
  core.String? numTimeTravelPhysicalBytes;

  /// \[Output-only\] Total number of logical bytes in the table or materialized
  /// view.
  core.String? numTotalLogicalBytes;

  /// \[Output-only\] The physical size of this table in bytes.
  ///
  /// This also includes storage used for time travel. This data is not kept in
  /// real time, and might be delayed by a few seconds to a few minutes.
  core.String? numTotalPhysicalBytes;

  /// \[TrustedTester\] Range partitioning specification for this table.
  ///
  /// Only one of timePartitioning and rangePartitioning should be specified.
  RangePartitioning? rangePartitioning;

  /// If set to true, queries over this table require a partition filter that
  /// can be used for partition elimination to be specified.
  ///
  /// Optional.
  core.bool? requirePartitionFilter;

  /// Describes the schema of this table.
  ///
  /// Optional.
  TableSchema? schema;

  /// \[Output-only\] A URL that can be used to access this resource again.
  core.String? selfLink;

  /// \[Output-only\] Snapshot definition.
  SnapshotDefinition? snapshotDefinition;

  /// \[Output-only\] Contains information regarding this table's streaming
  /// buffer, if one is present.
  ///
  /// This field will be absent if the table is not being streamed to or if
  /// there is no data in the streaming buffer.
  Streamingbuffer? streamingBuffer;

  /// Reference describing the ID of this table.
  ///
  /// Required.
  TableReference? tableReference;

  /// Time-based partitioning specification for this table.
  ///
  /// Only one of timePartitioning and rangePartitioning should be specified.
  TimePartitioning? timePartitioning;

  /// \[Output-only\] Describes the table type.
  ///
  /// The following values are supported: TABLE: A normal BigQuery table. VIEW:
  /// A virtual table defined by a SQL query. SNAPSHOT: An immutable, read-only
  /// table that is a copy of another table. \[TrustedTester\]
  /// MATERIALIZED_VIEW: SQL query whose result is persisted. EXTERNAL: A table
  /// that references data stored in an external storage system, such as Google
  /// Cloud Storage. The default value is TABLE.
  core.String? type;

  /// The view definition.
  ///
  /// Optional.
  ViewDefinition? view;

  Table({
    this.cloneDefinition,
    this.clustering,
    this.creationTime,
    this.defaultCollation,
    this.description,
    this.encryptionConfiguration,
    this.etag,
    this.expirationTime,
    this.externalDataConfiguration,
    this.friendlyName,
    this.id,
    this.kind,
    this.labels,
    this.lastModifiedTime,
    this.location,
    this.materializedView,
    this.model,
    this.numBytes,
    this.numLongTermBytes,
    this.numPhysicalBytes,
    this.numRows,
    this.numActiveLogicalBytes,
    this.numActivePhysicalBytes,
    this.numLongTermLogicalBytes,
    this.numLongTermPhysicalBytes,
    this.numPartitions,
    this.numTimeTravelPhysicalBytes,
    this.numTotalLogicalBytes,
    this.numTotalPhysicalBytes,
    this.rangePartitioning,
    this.requirePartitionFilter,
    this.schema,
    this.selfLink,
    this.snapshotDefinition,
    this.streamingBuffer,
    this.tableReference,
    this.timePartitioning,
    this.type,
    this.view,
  });

  Table.fromJson(core.Map _json)
      : this(
          cloneDefinition: _json.containsKey('cloneDefinition')
              ? CloneDefinition.fromJson(_json['cloneDefinition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clustering: _json.containsKey('clustering')
              ? Clustering.fromJson(
                  _json['clustering'] as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: _json.containsKey('creationTime')
              ? _json['creationTime'] as core.String
              : null,
          defaultCollation: _json.containsKey('defaultCollation')
              ? _json['defaultCollation'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          encryptionConfiguration: _json.containsKey('encryptionConfiguration')
              ? EncryptionConfiguration.fromJson(
                  _json['encryptionConfiguration']
                      as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          expirationTime: _json.containsKey('expirationTime')
              ? _json['expirationTime'] as core.String
              : null,
          externalDataConfiguration:
              _json.containsKey('externalDataConfiguration')
                  ? ExternalDataConfiguration.fromJson(
                      _json['externalDataConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          friendlyName: _json.containsKey('friendlyName')
              ? _json['friendlyName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lastModifiedTime: _json.containsKey('lastModifiedTime')
              ? _json['lastModifiedTime'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          materializedView: _json.containsKey('materializedView')
              ? MaterializedViewDefinition.fromJson(_json['materializedView']
                  as core.Map<core.String, core.dynamic>)
              : null,
          model: _json.containsKey('model')
              ? ModelDefinition.fromJson(
                  _json['model'] as core.Map<core.String, core.dynamic>)
              : null,
          numBytes: _json.containsKey('numBytes')
              ? _json['numBytes'] as core.String
              : null,
          numLongTermBytes: _json.containsKey('numLongTermBytes')
              ? _json['numLongTermBytes'] as core.String
              : null,
          numPhysicalBytes: _json.containsKey('numPhysicalBytes')
              ? _json['numPhysicalBytes'] as core.String
              : null,
          numRows: _json.containsKey('numRows')
              ? _json['numRows'] as core.String
              : null,
          numActiveLogicalBytes: _json.containsKey('num_active_logical_bytes')
              ? _json['num_active_logical_bytes'] as core.String
              : null,
          numActivePhysicalBytes: _json.containsKey('num_active_physical_bytes')
              ? _json['num_active_physical_bytes'] as core.String
              : null,
          numLongTermLogicalBytes:
              _json.containsKey('num_long_term_logical_bytes')
                  ? _json['num_long_term_logical_bytes'] as core.String
                  : null,
          numLongTermPhysicalBytes:
              _json.containsKey('num_long_term_physical_bytes')
                  ? _json['num_long_term_physical_bytes'] as core.String
                  : null,
          numPartitions: _json.containsKey('num_partitions')
              ? _json['num_partitions'] as core.String
              : null,
          numTimeTravelPhysicalBytes:
              _json.containsKey('num_time_travel_physical_bytes')
                  ? _json['num_time_travel_physical_bytes'] as core.String
                  : null,
          numTotalLogicalBytes: _json.containsKey('num_total_logical_bytes')
              ? _json['num_total_logical_bytes'] as core.String
              : null,
          numTotalPhysicalBytes: _json.containsKey('num_total_physical_bytes')
              ? _json['num_total_physical_bytes'] as core.String
              : null,
          rangePartitioning: _json.containsKey('rangePartitioning')
              ? RangePartitioning.fromJson(_json['rangePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requirePartitionFilter: _json.containsKey('requirePartitionFilter')
              ? _json['requirePartitionFilter'] as core.bool
              : null,
          schema: _json.containsKey('schema')
              ? TableSchema.fromJson(
                  _json['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          snapshotDefinition: _json.containsKey('snapshotDefinition')
              ? SnapshotDefinition.fromJson(_json['snapshotDefinition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamingBuffer: _json.containsKey('streamingBuffer')
              ? Streamingbuffer.fromJson(_json['streamingBuffer']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tableReference: _json.containsKey('tableReference')
              ? TableReference.fromJson(_json['tableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timePartitioning: _json.containsKey('timePartitioning')
              ? TimePartitioning.fromJson(_json['timePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          view: _json.containsKey('view')
              ? ViewDefinition.fromJson(
                  _json['view'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloneDefinition != null) 'cloneDefinition': cloneDefinition!,
        if (clustering != null) 'clustering': clustering!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (defaultCollation != null) 'defaultCollation': defaultCollation!,
        if (description != null) 'description': description!,
        if (encryptionConfiguration != null)
          'encryptionConfiguration': encryptionConfiguration!,
        if (etag != null) 'etag': etag!,
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (externalDataConfiguration != null)
          'externalDataConfiguration': externalDataConfiguration!,
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (location != null) 'location': location!,
        if (materializedView != null) 'materializedView': materializedView!,
        if (model != null) 'model': model!,
        if (numBytes != null) 'numBytes': numBytes!,
        if (numLongTermBytes != null) 'numLongTermBytes': numLongTermBytes!,
        if (numPhysicalBytes != null) 'numPhysicalBytes': numPhysicalBytes!,
        if (numRows != null) 'numRows': numRows!,
        if (numActiveLogicalBytes != null)
          'num_active_logical_bytes': numActiveLogicalBytes!,
        if (numActivePhysicalBytes != null)
          'num_active_physical_bytes': numActivePhysicalBytes!,
        if (numLongTermLogicalBytes != null)
          'num_long_term_logical_bytes': numLongTermLogicalBytes!,
        if (numLongTermPhysicalBytes != null)
          'num_long_term_physical_bytes': numLongTermPhysicalBytes!,
        if (numPartitions != null) 'num_partitions': numPartitions!,
        if (numTimeTravelPhysicalBytes != null)
          'num_time_travel_physical_bytes': numTimeTravelPhysicalBytes!,
        if (numTotalLogicalBytes != null)
          'num_total_logical_bytes': numTotalLogicalBytes!,
        if (numTotalPhysicalBytes != null)
          'num_total_physical_bytes': numTotalPhysicalBytes!,
        if (rangePartitioning != null) 'rangePartitioning': rangePartitioning!,
        if (requirePartitionFilter != null)
          'requirePartitionFilter': requirePartitionFilter!,
        if (schema != null) 'schema': schema!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (snapshotDefinition != null)
          'snapshotDefinition': snapshotDefinition!,
        if (streamingBuffer != null) 'streamingBuffer': streamingBuffer!,
        if (tableReference != null) 'tableReference': tableReference!,
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

  TableCell.fromJson(core.Map _json)
      : this(
          v: _json.containsKey('v') ? _json['v'] : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (v != null) 'v': v!,
      };
}

class TableDataInsertAllRequestRows {
  /// A unique ID for each row.
  ///
  /// BigQuery uses this property to detect duplicate insertion requests on a
  /// best-effort basis.
  ///
  /// Optional.
  core.String? insertId;

  /// A JSON object that contains a row of data.
  ///
  /// The object's properties and values must match the destination table's
  /// schema.
  ///
  /// Required.
  JsonObject? json;

  TableDataInsertAllRequestRows({
    this.insertId,
    this.json,
  });

  TableDataInsertAllRequestRows.fromJson(core.Map _json)
      : this(
          insertId: _json.containsKey('insertId')
              ? _json['insertId'] as core.String
              : null,
          json: _json.containsKey('json')
              ? JsonObject.fromJson(
                  _json['json'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insertId != null) 'insertId': insertId!,
        if (json != null) 'json': json!,
      };
}

class TableDataInsertAllRequest {
  /// Accept rows that contain values that do not match the schema.
  ///
  /// The unknown values are ignored. Default is false, which treats unknown
  /// values as errors.
  ///
  /// Optional.
  core.bool? ignoreUnknownValues;

  /// The resource type of the response.
  core.String? kind;

  /// The rows to insert.
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
  core.String? templateSuffix;

  TableDataInsertAllRequest({
    this.ignoreUnknownValues,
    this.kind,
    this.rows,
    this.skipInvalidRows,
    this.templateSuffix,
  });

  TableDataInsertAllRequest.fromJson(core.Map _json)
      : this(
          ignoreUnknownValues: _json.containsKey('ignoreUnknownValues')
              ? _json['ignoreUnknownValues'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => TableDataInsertAllRequestRows.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          skipInvalidRows: _json.containsKey('skipInvalidRows')
              ? _json['skipInvalidRows'] as core.bool
              : null,
          templateSuffix: _json.containsKey('templateSuffix')
              ? _json['templateSuffix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ignoreUnknownValues != null)
          'ignoreUnknownValues': ignoreUnknownValues!,
        if (kind != null) 'kind': kind!,
        if (rows != null) 'rows': rows!,
        if (skipInvalidRows != null) 'skipInvalidRows': skipInvalidRows!,
        if (templateSuffix != null) 'templateSuffix': templateSuffix!,
      };
}

class TableDataInsertAllResponseInsertErrors {
  /// Error information for the row indicated by the index property.
  core.List<ErrorProto>? errors;

  /// The index of the row that error applies to.
  core.int? index;

  TableDataInsertAllResponseInsertErrors({
    this.errors,
    this.index,
  });

  TableDataInsertAllResponseInsertErrors.fromJson(core.Map _json)
      : this(
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => ErrorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (index != null) 'index': index!,
      };
}

class TableDataInsertAllResponse {
  /// An array of errors for rows that were not inserted.
  core.List<TableDataInsertAllResponseInsertErrors>? insertErrors;

  /// The resource type of the response.
  core.String? kind;

  TableDataInsertAllResponse({
    this.insertErrors,
    this.kind,
  });

  TableDataInsertAllResponse.fromJson(core.Map _json)
      : this(
          insertErrors: _json.containsKey('insertErrors')
              ? (_json['insertErrors'] as core.List)
                  .map((value) =>
                      TableDataInsertAllResponseInsertErrors.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
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

  /// The total number of rows in the complete table.
  core.String? totalRows;

  TableDataList({
    this.etag,
    this.kind,
    this.pageToken,
    this.rows,
    this.totalRows,
  });

  TableDataList.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => TableRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalRows: _json.containsKey('totalRows')
              ? _json['totalRows'] as core.String
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

/// The categories attached to this field, used for field-level access control.
///
/// Optional.
class TableFieldSchemaCategories {
  /// A list of category resource names.
  ///
  /// For example, "projects/1/taxonomies/2/categories/3". At most 5 categories
  /// are allowed.
  core.List<core.String>? names;

  TableFieldSchemaCategories({
    this.names,
  });

  TableFieldSchemaCategories.fromJson(core.Map _json)
      : this(
          names: _json.containsKey('names')
              ? (_json['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

class TableFieldSchemaPolicyTags {
  /// A list of category resource names.
  ///
  /// For example, "projects/1/location/eu/taxonomies/2/policyTags/3". At most 1
  /// policy tag is allowed.
  core.List<core.String>? names;

  TableFieldSchemaPolicyTags({
    this.names,
  });

  TableFieldSchemaPolicyTags.fromJson(core.Map _json)
      : this(
          names: _json.containsKey('names')
              ? (_json['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

class TableFieldSchema {
  /// The categories attached to this field, used for field-level access
  /// control.
  ///
  /// Optional.
  TableFieldSchemaCategories? categories;

  /// Collation specification of the field.
  ///
  /// It only can be set on string type field.
  ///
  /// Optional.
  core.String? collation;

  /// A SQL expression to specify the default value for this field.
  ///
  /// It can only be set for top level fields (columns). You can use struct or
  /// array expression to specify default value for the entire struct or array.
  /// The valid SQL expressions are: - Literals for all data types, including
  /// STRUCT and ARRAY. - Following functions: - CURRENT_TIMESTAMP -
  /// CURRENT_TIME - CURRENT_DATE - CURRENT_DATETIME - GENERATE_UUID - RAND -
  /// SESSION_USER - ST_GEOGPOINT - Struct or array composed with the above
  /// allowed functions, for example, \[CURRENT_DATE(), DATE '2020-01-01'\]
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
  TableFieldSchemaPolicyTags? policyTags;

  /// Precision (maximum number of total digits in base 10) and scale (maximum
  /// number of digits in the fractional part in base 10) constraints for values
  /// of this field for NUMERIC or BIGNUMERIC.
  ///
  /// It is invalid to set precision or scale if type ≠ "NUMERIC" and ≠
  /// "BIGNUMERIC". If precision and scale are not specified, no value range
  /// constraint is imposed on this field insofar as values are permitted by the
  /// type. Values of this NUMERIC or BIGNUMERIC field must be in this range
  /// when: - Precision (P) and scale (S) are specified: \[-10P-S + 10-S, 10P-S
  /// - 10-S\] - Precision (P) is specified but not scale (and thus scale is
  /// interpreted to be equal to zero): \[-10P + 1, 10P - 1\]. Acceptable values
  /// for precision and scale if both are specified: - If type = "NUMERIC": 1 ≤
  /// precision - scale ≤ 29 and 0 ≤ scale ≤ 9. - If type = "BIGNUMERIC": 1 ≤
  /// precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision
  /// if only precision is specified but not scale (and thus scale is
  /// interpreted to be equal to zero): - If type = "NUMERIC": 1 ≤ precision ≤
  /// 29. - If type = "BIGNUMERIC": 1 ≤ precision ≤ 38. If scale is specified
  /// but not precision, then it is invalid.
  ///
  /// Optional.
  core.String? precision;

  /// See documentation for precision.
  ///
  /// Optional.
  core.String? scale;

  /// The field data type.
  ///
  /// Possible values include STRING, BYTES, INTEGER, INT64 (same as INTEGER),
  /// FLOAT, FLOAT64 (same as FLOAT), NUMERIC, BIGNUMERIC, BOOLEAN, BOOL (same
  /// as BOOLEAN), TIMESTAMP, DATE, TIME, DATETIME, INTERVAL, RECORD (where
  /// RECORD indicates that the field contains a nested schema) or STRUCT (same
  /// as RECORD).
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
    this.scale,
    this.type,
  });

  TableFieldSchema.fromJson(core.Map _json)
      : this(
          categories: _json.containsKey('categories')
              ? TableFieldSchemaCategories.fromJson(
                  _json['categories'] as core.Map<core.String, core.dynamic>)
              : null,
          collation: _json.containsKey('collation')
              ? _json['collation'] as core.String
              : null,
          defaultValueExpression: _json.containsKey('defaultValueExpression')
              ? _json['defaultValueExpression'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => TableFieldSchema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxLength: _json.containsKey('maxLength')
              ? _json['maxLength'] as core.String
              : null,
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          policyTags: _json.containsKey('policyTags')
              ? TableFieldSchemaPolicyTags.fromJson(
                  _json['policyTags'] as core.Map<core.String, core.dynamic>)
              : null,
          precision: _json.containsKey('precision')
              ? _json['precision'] as core.String
              : null,
          scale:
              _json.containsKey('scale') ? _json['scale'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
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
        if (scale != null) 'scale': scale!,
        if (type != null) 'type': type!,
      };
}

/// Additional details for a view.
class TableListTablesView {
  /// True if view is defined in legacy SQL dialect, false if in standard SQL.
  core.bool? useLegacySql;

  TableListTablesView({
    this.useLegacySql,
  });

  TableListTablesView.fromJson(core.Map _json)
      : this(
          useLegacySql: _json.containsKey('useLegacySql')
              ? _json['useLegacySql'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (useLegacySql != null) 'useLegacySql': useLegacySql!,
      };
}

class TableListTables {
  /// \[Beta\] Clustering specification for this table, if configured.
  Clustering? clustering;

  /// The time when this table was created, in milliseconds since the epoch.
  core.String? creationTime;

  /// The time when this table expires, in milliseconds since the epoch.
  ///
  /// If not present, the table will persist indefinitely. Expired tables will
  /// be deleted and their storage reclaimed.
  ///
  /// Optional.
  core.String? expirationTime;

  /// The user-friendly name for this table.
  core.String? friendlyName;

  /// An opaque ID of the table
  core.String? id;

  /// The resource type.
  core.String? kind;

  /// The labels associated with this table.
  ///
  /// You can use these to organize and group your tables.
  core.Map<core.String, core.String>? labels;

  /// The range partitioning specification for this table, if configured.
  RangePartitioning? rangePartitioning;

  /// A reference uniquely identifying the table.
  TableReference? tableReference;

  /// The time-based partitioning specification for this table, if configured.
  TimePartitioning? timePartitioning;

  /// The type of table.
  ///
  /// Possible values are: TABLE, VIEW.
  core.String? type;

  /// Additional details for a view.
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
    this.tableReference,
    this.timePartitioning,
    this.type,
    this.view,
  });

  TableListTables.fromJson(core.Map _json)
      : this(
          clustering: _json.containsKey('clustering')
              ? Clustering.fromJson(
                  _json['clustering'] as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: _json.containsKey('creationTime')
              ? _json['creationTime'] as core.String
              : null,
          expirationTime: _json.containsKey('expirationTime')
              ? _json['expirationTime'] as core.String
              : null,
          friendlyName: _json.containsKey('friendlyName')
              ? _json['friendlyName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          rangePartitioning: _json.containsKey('rangePartitioning')
              ? RangePartitioning.fromJson(_json['rangePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tableReference: _json.containsKey('tableReference')
              ? TableReference.fromJson(_json['tableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timePartitioning: _json.containsKey('timePartitioning')
              ? TimePartitioning.fromJson(_json['timePartitioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          view: _json.containsKey('view')
              ? TableListTablesView.fromJson(
                  _json['view'] as core.Map<core.String, core.dynamic>)
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
        if (tableReference != null) 'tableReference': tableReference!,
        if (timePartitioning != null) 'timePartitioning': timePartitioning!,
        if (type != null) 'type': type!,
        if (view != null) 'view': view!,
      };
}

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

  TableList.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          tables: _json.containsKey('tables')
              ? (_json['tables'] as core.List)
                  .map((value) => TableListTables.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalItems: _json.containsKey('totalItems')
              ? _json['totalItems'] as core.int
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
  /// The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores
  /// (_). The maximum length is 1,024 characters.
  ///
  /// Required.
  core.String? tableId;

  TableReference({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  TableReference.fromJson(core.Map _json)
      : this(
          datasetId: _json.containsKey('datasetId')
              ? _json['datasetId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          tableId: _json.containsKey('tableId')
              ? _json['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}

class TableRow {
  /// Represents a single row in the result set, consisting of one or more
  /// fields.
  core.List<TableCell>? f;

  TableRow({
    this.f,
  });

  TableRow.fromJson(core.Map _json)
      : this(
          f: _json.containsKey('f')
              ? (_json['f'] as core.List)
                  .map((value) => TableCell.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (f != null) 'f': f!,
      };
}

class TableSchema {
  /// Describes the fields in a table.
  core.List<TableFieldSchema>? fields;

  TableSchema({
    this.fields,
  });

  TableSchema.fromJson(core.Map _json)
      : this(
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
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
  /// Number of milliseconds for which to keep the storage for partitions in the
  /// table.
  ///
  /// The storage in a partition will have an expiration time of its partition
  /// time plus this value.
  ///
  /// Optional.
  core.String? expirationMs;

  /// \[Beta\] \[Optional\] If not set, the table is partitioned by pseudo
  /// column, referenced via either '_PARTITIONTIME' as TIMESTAMP type, or
  /// '_PARTITIONDATE' as DATE type.
  ///
  /// If field is specified, the table is instead partitioned by this field. The
  /// field must be a top-level TIMESTAMP or DATE field. Its mode must be
  /// NULLABLE or REQUIRED.
  core.String? field;
  core.bool? requirePartitionFilter;

  /// The supported types are DAY, HOUR, MONTH, and YEAR, which will generate
  /// one partition per day, hour, month, and year, respectively.
  ///
  /// When the type is not specified, the default behavior is DAY.
  ///
  /// Required.
  core.String? type;

  TimePartitioning({
    this.expirationMs,
    this.field,
    this.requirePartitionFilter,
    this.type,
  });

  TimePartitioning.fromJson(core.Map _json)
      : this(
          expirationMs: _json.containsKey('expirationMs')
              ? _json['expirationMs'] as core.String
              : null,
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
          requirePartitionFilter: _json.containsKey('requirePartitionFilter')
              ? _json['requirePartitionFilter'] as core.bool
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
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
  /// If true, detect step changes and make data adjustment in the input time
  /// series.
  core.bool? adjustStepChanges;

  /// Whether to enable auto ARIMA or not.
  core.bool? autoArima;

  /// The max value of non-seasonal p and q.
  core.String? autoArimaMaxOrder;

  /// Batch size for dnn models.
  core.String? batchSize;

  /// Booster type for boosted tree models.
  /// Possible string values are:
  /// - "BOOSTER_TYPE_UNSPECIFIED" : Unspecified booster type.
  /// - "GBTREE" : Gbtree booster.
  /// - "DART" : Dart booster.
  core.String? boosterType;

  /// Whether or not p-value test should be computed for this model.
  ///
  /// Only available for linear and logistic regression models.
  core.bool? calculatePValues;

  /// If true, clean spikes and dips in the input time series.
  core.bool? cleanSpikesAndDips;

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
  /// - "DATA_FREQUENCY_UNSPECIFIED"
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
  /// - "DATA_SPLIT_METHOD_UNSPECIFIED"
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
  /// - "DISTANCE_TYPE_UNSPECIFIED"
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
  /// - "FEEDBACK_TYPE_UNSPECIFIED"
  /// - "IMPLICIT" : Use weighted-als for implicit feedback problems.
  /// - "EXPLICIT" : Use nonweighted-als for explicit feedback problems.
  core.String? feedbackType;

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
  /// - "LEARN_RATE_STRATEGY_UNSPECIFIED"
  /// - "LINE_SEARCH" : Use line search to determine learning rate.
  /// - "CONSTANT" : Use a constant learning rate.
  core.String? learnRateStrategy;

  /// Type of loss function used during training run.
  /// Possible string values are:
  /// - "LOSS_TYPE_UNSPECIFIED"
  /// - "MEAN_SQUARED_LOSS" : Mean squared loss, used for linear regression.
  /// - "MEAN_LOG_LOSS" : Mean log loss, used for logistic regression.
  core.String? lossType;

  /// The maximum number of iterations in training.
  ///
  /// Used only for iterative training algorithms.
  core.String? maxIterations;

  /// Maximum number of trials to run in parallel.
  core.String? maxParallelTrials;

  /// Maximum depth of a tree for boosted tree models.
  core.String? maxTreeDepth;

  /// When early_stop is true, stops training when accuracy improvement is less
  /// than 'min_relative_progress'.
  ///
  /// Used only for iterative training algorithms.
  core.double? minRelativeProgress;

  /// Minimum split loss for boosted tree models.
  core.double? minSplitLoss;

  /// Minimum sum of instance weight needed in a child for boosted tree models.
  core.String? minTreeChildWeight;

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

  /// Number of trials to run this hyperparameter tuning job.
  core.String? numTrials;

  /// Optimization strategy for training linear regression models.
  /// Possible string values are:
  /// - "OPTIMIZATION_STRATEGY_UNSPECIFIED"
  /// - "BATCH_GRADIENT_DESCENT" : Uses an iterative batch gradient descent
  /// algorithm.
  /// - "NORMAL_EQUATION" : Uses a normal equation to solve linear regression
  /// problem.
  core.String? optimizationStrategy;

  /// Whether to preserve the input structs in output feature names.
  ///
  /// Suppose there is a struct A with field b. When false (default), the output
  /// feature name is A_b. When true, the output feature name is A.b.
  core.bool? preserveInputStructs;

  /// Number of paths for the sampled shapley explain method.
  core.String? sampledShapleyNumPaths;

  /// Subsample fraction of the training data to grow tree to prevent
  /// overfitting for boosted tree models.
  core.double? subsample;

  /// Column to be designated as time series data for ARIMA model.
  core.String? timeSeriesDataColumn;

  /// The time series id column that was used during ARIMA model training.
  core.String? timeSeriesIdColumn;

  /// The time series id columns that were used during ARIMA model training.
  core.List<core.String>? timeSeriesIdColumns;

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

  /// User column specified for matrix factorization models.
  core.String? userColumn;

  /// Hyperparameter for matrix factoration when implicit feedback type is
  /// specified.
  core.double? walsAlpha;

  /// Whether to train a model from the last checkpoint.
  core.bool? warmStart;

  TrainingOptions({
    this.adjustStepChanges,
    this.autoArima,
    this.autoArimaMaxOrder,
    this.batchSize,
    this.boosterType,
    this.calculatePValues,
    this.cleanSpikesAndDips,
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
    this.hiddenUnits,
    this.holidayRegion,
    this.horizon,
    this.hparamTuningObjectives,
    this.includeDrift,
    this.initialLearnRate,
    this.inputLabelColumns,
    this.integratedGradientsNumSteps,
    this.itemColumn,
    this.kmeansInitializationColumn,
    this.kmeansInitializationMethod,
    this.l1Regularization,
    this.l2Regularization,
    this.labelClassWeights,
    this.learnRate,
    this.learnRateStrategy,
    this.lossType,
    this.maxIterations,
    this.maxParallelTrials,
    this.maxTreeDepth,
    this.minRelativeProgress,
    this.minSplitLoss,
    this.minTreeChildWeight,
    this.modelUri,
    this.nonSeasonalOrder,
    this.numClusters,
    this.numFactors,
    this.numParallelTree,
    this.numTrials,
    this.optimizationStrategy,
    this.preserveInputStructs,
    this.sampledShapleyNumPaths,
    this.subsample,
    this.timeSeriesDataColumn,
    this.timeSeriesIdColumn,
    this.timeSeriesIdColumns,
    this.timeSeriesTimestampColumn,
    this.treeMethod,
    this.userColumn,
    this.walsAlpha,
    this.warmStart,
  });

  TrainingOptions.fromJson(core.Map _json)
      : this(
          adjustStepChanges: _json.containsKey('adjustStepChanges')
              ? _json['adjustStepChanges'] as core.bool
              : null,
          autoArima: _json.containsKey('autoArima')
              ? _json['autoArima'] as core.bool
              : null,
          autoArimaMaxOrder: _json.containsKey('autoArimaMaxOrder')
              ? _json['autoArimaMaxOrder'] as core.String
              : null,
          batchSize: _json.containsKey('batchSize')
              ? _json['batchSize'] as core.String
              : null,
          boosterType: _json.containsKey('boosterType')
              ? _json['boosterType'] as core.String
              : null,
          calculatePValues: _json.containsKey('calculatePValues')
              ? _json['calculatePValues'] as core.bool
              : null,
          cleanSpikesAndDips: _json.containsKey('cleanSpikesAndDips')
              ? _json['cleanSpikesAndDips'] as core.bool
              : null,
          colsampleBylevel: _json.containsKey('colsampleBylevel')
              ? (_json['colsampleBylevel'] as core.num).toDouble()
              : null,
          colsampleBynode: _json.containsKey('colsampleBynode')
              ? (_json['colsampleBynode'] as core.num).toDouble()
              : null,
          colsampleBytree: _json.containsKey('colsampleBytree')
              ? (_json['colsampleBytree'] as core.num).toDouble()
              : null,
          dartNormalizeType: _json.containsKey('dartNormalizeType')
              ? _json['dartNormalizeType'] as core.String
              : null,
          dataFrequency: _json.containsKey('dataFrequency')
              ? _json['dataFrequency'] as core.String
              : null,
          dataSplitColumn: _json.containsKey('dataSplitColumn')
              ? _json['dataSplitColumn'] as core.String
              : null,
          dataSplitEvalFraction: _json.containsKey('dataSplitEvalFraction')
              ? (_json['dataSplitEvalFraction'] as core.num).toDouble()
              : null,
          dataSplitMethod: _json.containsKey('dataSplitMethod')
              ? _json['dataSplitMethod'] as core.String
              : null,
          decomposeTimeSeries: _json.containsKey('decomposeTimeSeries')
              ? _json['decomposeTimeSeries'] as core.bool
              : null,
          distanceType: _json.containsKey('distanceType')
              ? _json['distanceType'] as core.String
              : null,
          dropout: _json.containsKey('dropout')
              ? (_json['dropout'] as core.num).toDouble()
              : null,
          earlyStop: _json.containsKey('earlyStop')
              ? _json['earlyStop'] as core.bool
              : null,
          enableGlobalExplain: _json.containsKey('enableGlobalExplain')
              ? _json['enableGlobalExplain'] as core.bool
              : null,
          feedbackType: _json.containsKey('feedbackType')
              ? _json['feedbackType'] as core.String
              : null,
          hiddenUnits: _json.containsKey('hiddenUnits')
              ? (_json['hiddenUnits'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          holidayRegion: _json.containsKey('holidayRegion')
              ? _json['holidayRegion'] as core.String
              : null,
          horizon: _json.containsKey('horizon')
              ? _json['horizon'] as core.String
              : null,
          hparamTuningObjectives: _json.containsKey('hparamTuningObjectives')
              ? (_json['hparamTuningObjectives'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includeDrift: _json.containsKey('includeDrift')
              ? _json['includeDrift'] as core.bool
              : null,
          initialLearnRate: _json.containsKey('initialLearnRate')
              ? (_json['initialLearnRate'] as core.num).toDouble()
              : null,
          inputLabelColumns: _json.containsKey('inputLabelColumns')
              ? (_json['inputLabelColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          integratedGradientsNumSteps:
              _json.containsKey('integratedGradientsNumSteps')
                  ? _json['integratedGradientsNumSteps'] as core.String
                  : null,
          itemColumn: _json.containsKey('itemColumn')
              ? _json['itemColumn'] as core.String
              : null,
          kmeansInitializationColumn:
              _json.containsKey('kmeansInitializationColumn')
                  ? _json['kmeansInitializationColumn'] as core.String
                  : null,
          kmeansInitializationMethod:
              _json.containsKey('kmeansInitializationMethod')
                  ? _json['kmeansInitializationMethod'] as core.String
                  : null,
          l1Regularization: _json.containsKey('l1Regularization')
              ? (_json['l1Regularization'] as core.num).toDouble()
              : null,
          l2Regularization: _json.containsKey('l2Regularization')
              ? (_json['l2Regularization'] as core.num).toDouble()
              : null,
          labelClassWeights: _json.containsKey('labelClassWeights')
              ? (_json['labelClassWeights']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    (item as core.num).toDouble(),
                  ),
                )
              : null,
          learnRate: _json.containsKey('learnRate')
              ? (_json['learnRate'] as core.num).toDouble()
              : null,
          learnRateStrategy: _json.containsKey('learnRateStrategy')
              ? _json['learnRateStrategy'] as core.String
              : null,
          lossType: _json.containsKey('lossType')
              ? _json['lossType'] as core.String
              : null,
          maxIterations: _json.containsKey('maxIterations')
              ? _json['maxIterations'] as core.String
              : null,
          maxParallelTrials: _json.containsKey('maxParallelTrials')
              ? _json['maxParallelTrials'] as core.String
              : null,
          maxTreeDepth: _json.containsKey('maxTreeDepth')
              ? _json['maxTreeDepth'] as core.String
              : null,
          minRelativeProgress: _json.containsKey('minRelativeProgress')
              ? (_json['minRelativeProgress'] as core.num).toDouble()
              : null,
          minSplitLoss: _json.containsKey('minSplitLoss')
              ? (_json['minSplitLoss'] as core.num).toDouble()
              : null,
          minTreeChildWeight: _json.containsKey('minTreeChildWeight')
              ? _json['minTreeChildWeight'] as core.String
              : null,
          modelUri: _json.containsKey('modelUri')
              ? _json['modelUri'] as core.String
              : null,
          nonSeasonalOrder: _json.containsKey('nonSeasonalOrder')
              ? ArimaOrder.fromJson(_json['nonSeasonalOrder']
                  as core.Map<core.String, core.dynamic>)
              : null,
          numClusters: _json.containsKey('numClusters')
              ? _json['numClusters'] as core.String
              : null,
          numFactors: _json.containsKey('numFactors')
              ? _json['numFactors'] as core.String
              : null,
          numParallelTree: _json.containsKey('numParallelTree')
              ? _json['numParallelTree'] as core.String
              : null,
          numTrials: _json.containsKey('numTrials')
              ? _json['numTrials'] as core.String
              : null,
          optimizationStrategy: _json.containsKey('optimizationStrategy')
              ? _json['optimizationStrategy'] as core.String
              : null,
          preserveInputStructs: _json.containsKey('preserveInputStructs')
              ? _json['preserveInputStructs'] as core.bool
              : null,
          sampledShapleyNumPaths: _json.containsKey('sampledShapleyNumPaths')
              ? _json['sampledShapleyNumPaths'] as core.String
              : null,
          subsample: _json.containsKey('subsample')
              ? (_json['subsample'] as core.num).toDouble()
              : null,
          timeSeriesDataColumn: _json.containsKey('timeSeriesDataColumn')
              ? _json['timeSeriesDataColumn'] as core.String
              : null,
          timeSeriesIdColumn: _json.containsKey('timeSeriesIdColumn')
              ? _json['timeSeriesIdColumn'] as core.String
              : null,
          timeSeriesIdColumns: _json.containsKey('timeSeriesIdColumns')
              ? (_json['timeSeriesIdColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeSeriesTimestampColumn:
              _json.containsKey('timeSeriesTimestampColumn')
                  ? _json['timeSeriesTimestampColumn'] as core.String
                  : null,
          treeMethod: _json.containsKey('treeMethod')
              ? _json['treeMethod'] as core.String
              : null,
          userColumn: _json.containsKey('userColumn')
              ? _json['userColumn'] as core.String
              : null,
          walsAlpha: _json.containsKey('walsAlpha')
              ? (_json['walsAlpha'] as core.num).toDouble()
              : null,
          warmStart: _json.containsKey('warmStart')
              ? _json['warmStart'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adjustStepChanges != null) 'adjustStepChanges': adjustStepChanges!,
        if (autoArima != null) 'autoArima': autoArima!,
        if (autoArimaMaxOrder != null) 'autoArimaMaxOrder': autoArimaMaxOrder!,
        if (batchSize != null) 'batchSize': batchSize!,
        if (boosterType != null) 'boosterType': boosterType!,
        if (calculatePValues != null) 'calculatePValues': calculatePValues!,
        if (cleanSpikesAndDips != null)
          'cleanSpikesAndDips': cleanSpikesAndDips!,
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
        if (hiddenUnits != null) 'hiddenUnits': hiddenUnits!,
        if (holidayRegion != null) 'holidayRegion': holidayRegion!,
        if (horizon != null) 'horizon': horizon!,
        if (hparamTuningObjectives != null)
          'hparamTuningObjectives': hparamTuningObjectives!,
        if (includeDrift != null) 'includeDrift': includeDrift!,
        if (initialLearnRate != null) 'initialLearnRate': initialLearnRate!,
        if (inputLabelColumns != null) 'inputLabelColumns': inputLabelColumns!,
        if (integratedGradientsNumSteps != null)
          'integratedGradientsNumSteps': integratedGradientsNumSteps!,
        if (itemColumn != null) 'itemColumn': itemColumn!,
        if (kmeansInitializationColumn != null)
          'kmeansInitializationColumn': kmeansInitializationColumn!,
        if (kmeansInitializationMethod != null)
          'kmeansInitializationMethod': kmeansInitializationMethod!,
        if (l1Regularization != null) 'l1Regularization': l1Regularization!,
        if (l2Regularization != null) 'l2Regularization': l2Regularization!,
        if (labelClassWeights != null) 'labelClassWeights': labelClassWeights!,
        if (learnRate != null) 'learnRate': learnRate!,
        if (learnRateStrategy != null) 'learnRateStrategy': learnRateStrategy!,
        if (lossType != null) 'lossType': lossType!,
        if (maxIterations != null) 'maxIterations': maxIterations!,
        if (maxParallelTrials != null) 'maxParallelTrials': maxParallelTrials!,
        if (maxTreeDepth != null) 'maxTreeDepth': maxTreeDepth!,
        if (minRelativeProgress != null)
          'minRelativeProgress': minRelativeProgress!,
        if (minSplitLoss != null) 'minSplitLoss': minSplitLoss!,
        if (minTreeChildWeight != null)
          'minTreeChildWeight': minTreeChildWeight!,
        if (modelUri != null) 'modelUri': modelUri!,
        if (nonSeasonalOrder != null) 'nonSeasonalOrder': nonSeasonalOrder!,
        if (numClusters != null) 'numClusters': numClusters!,
        if (numFactors != null) 'numFactors': numFactors!,
        if (numParallelTree != null) 'numParallelTree': numParallelTree!,
        if (numTrials != null) 'numTrials': numTrials!,
        if (optimizationStrategy != null)
          'optimizationStrategy': optimizationStrategy!,
        if (preserveInputStructs != null)
          'preserveInputStructs': preserveInputStructs!,
        if (sampledShapleyNumPaths != null)
          'sampledShapleyNumPaths': sampledShapleyNumPaths!,
        if (subsample != null) 'subsample': subsample!,
        if (timeSeriesDataColumn != null)
          'timeSeriesDataColumn': timeSeriesDataColumn!,
        if (timeSeriesIdColumn != null)
          'timeSeriesIdColumn': timeSeriesIdColumn!,
        if (timeSeriesIdColumns != null)
          'timeSeriesIdColumns': timeSeriesIdColumns!,
        if (timeSeriesTimestampColumn != null)
          'timeSeriesTimestampColumn': timeSeriesTimestampColumn!,
        if (treeMethod != null) 'treeMethod': treeMethod!,
        if (userColumn != null) 'userColumn': userColumn!,
        if (walsAlpha != null) 'walsAlpha': walsAlpha!,
        if (warmStart != null) 'warmStart': warmStart!,
      };
}

/// Information about a single training query run for the model.
class TrainingRun {
  /// Global explanation contains the explanation of top features on the class
  /// level.
  ///
  /// Applies to classification models only.
  core.List<GlobalExplanation>? classLevelGlobalExplanations;

  /// Data split result of the training run.
  ///
  /// Only set when the input data is actually split.
  DataSplitResult? dataSplitResult;

  /// The evaluation metrics over training/eval data that were computed at the
  /// end of training.
  EvaluationMetrics? evaluationMetrics;

  /// Global explanation contains the explanation of top features on the model
  /// level.
  ///
  /// Applies to both regression and classification models.
  GlobalExplanation? modelLevelGlobalExplanation;

  /// Output of each iteration run, results.size() \<= max_iterations.
  core.List<IterationResult>? results;

  /// The start time of this training run.
  core.String? startTime;

  /// Options that were used for this training run, includes user specified and
  /// default options that were used.
  TrainingOptions? trainingOptions;

  /// The model id in Vertex AI Model Registry for this training run
  core.String? vertexAiModelId;

  /// The model version in Vertex AI Model Registry for this training run
  core.String? vertexAiModelVersion;

  TrainingRun({
    this.classLevelGlobalExplanations,
    this.dataSplitResult,
    this.evaluationMetrics,
    this.modelLevelGlobalExplanation,
    this.results,
    this.startTime,
    this.trainingOptions,
    this.vertexAiModelId,
    this.vertexAiModelVersion,
  });

  TrainingRun.fromJson(core.Map _json)
      : this(
          classLevelGlobalExplanations:
              _json.containsKey('classLevelGlobalExplanations')
                  ? (_json['classLevelGlobalExplanations'] as core.List)
                      .map((value) => GlobalExplanation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          dataSplitResult: _json.containsKey('dataSplitResult')
              ? DataSplitResult.fromJson(_json['dataSplitResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
          evaluationMetrics: _json.containsKey('evaluationMetrics')
              ? EvaluationMetrics.fromJson(_json['evaluationMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          modelLevelGlobalExplanation: _json
                  .containsKey('modelLevelGlobalExplanation')
              ? GlobalExplanation.fromJson(_json['modelLevelGlobalExplanation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map((value) => IterationResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          trainingOptions: _json.containsKey('trainingOptions')
              ? TrainingOptions.fromJson(_json['trainingOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vertexAiModelId: _json.containsKey('vertexAiModelId')
              ? _json['vertexAiModelId'] as core.String
              : null,
          vertexAiModelVersion: _json.containsKey('vertexAiModelVersion')
              ? _json['vertexAiModelVersion'] as core.String
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
        if (vertexAiModelId != null) 'vertexAiModelId': vertexAiModelId!,
        if (vertexAiModelVersion != null)
          'vertexAiModelVersion': vertexAiModelVersion!,
      };
}

class TransactionInfo {
  /// \[Output-only\] // \[Alpha\] Id of the transaction.
  core.String? transactionId;

  TransactionInfo({
    this.transactionId,
  });

  TransactionInfo.fromJson(core.Map _json)
      : this(
          transactionId: _json.containsKey('transactionId')
              ? _json['transactionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transactionId != null) 'transactionId': transactionId!,
      };
}

/// This is used for defining User Defined Function (UDF) resources only when
/// using legacy SQL.
///
/// Users of Standard SQL should leverage either DDL (e.g. CREATE \[TEMPORARY\]
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

  UserDefinedFunctionResource.fromJson(core.Map _json)
      : this(
          inlineCode: _json.containsKey('inlineCode')
              ? _json['inlineCode'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? _json['resourceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inlineCode != null) 'inlineCode': inlineCode!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
      };
}

class ViewDefinition {
  /// A query that BigQuery executes when the view is referenced.
  ///
  /// Required.
  core.String? query;

  /// True if the column names are explicitly specified.
  ///
  /// For example by using the 'CREATE VIEW v(c1, c2) AS ...' syntax. Can only
  /// be set using BigQuery's standard SQL:
  /// https://cloud.google.com/bigquery/sql-reference/
  core.bool? useExplicitColumnNames;

  /// Specifies whether to use BigQuery's legacy SQL for this view.
  ///
  /// The default value is true. If set to false, the view will use BigQuery's
  /// standard SQL: https://cloud.google.com/bigquery/sql-reference/ Queries and
  /// views that reference this view must use the same flag value.
  core.bool? useLegacySql;

  /// Describes user-defined function resources used in the query.
  core.List<UserDefinedFunctionResource>? userDefinedFunctionResources;

  ViewDefinition({
    this.query,
    this.useExplicitColumnNames,
    this.useLegacySql,
    this.userDefinedFunctionResources,
  });

  ViewDefinition.fromJson(core.Map _json)
      : this(
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          useExplicitColumnNames: _json.containsKey('useExplicitColumnNames')
              ? _json['useExplicitColumnNames'] as core.bool
              : null,
          useLegacySql: _json.containsKey('useLegacySql')
              ? _json['useLegacySql'] as core.bool
              : null,
          userDefinedFunctionResources:
              _json.containsKey('userDefinedFunctionResources')
                  ? (_json['userDefinedFunctionResources'] as core.List)
                      .map((value) => UserDefinedFunctionResource.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (query != null) 'query': query!,
        if (useExplicitColumnNames != null)
          'useExplicitColumnNames': useExplicitColumnNames!,
        if (useLegacySql != null) 'useLegacySql': useLegacySql!,
        if (userDefinedFunctionResources != null)
          'userDefinedFunctionResources': userDefinedFunctionResources!,
      };
}
