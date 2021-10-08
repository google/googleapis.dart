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

/// Cloud Tool Results API - v1beta3
///
/// API to publish and access results from developer tools.
///
/// For more information, see <https://firebase.google.com/docs/test-lab/>
///
/// Create an instance of [ToolResultsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsHistoriesResource]
///     - [ProjectsHistoriesExecutionsResource]
///       - [ProjectsHistoriesExecutionsClustersResource]
///       - [ProjectsHistoriesExecutionsEnvironmentsResource]
///       - [ProjectsHistoriesExecutionsStepsResource]
///         - [ProjectsHistoriesExecutionsStepsPerfMetricsSummaryResource]
///         - [ProjectsHistoriesExecutionsStepsPerfSampleSeriesResource]
/// - [ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesResource]
///         - [ProjectsHistoriesExecutionsStepsTestCasesResource]
///         - [ProjectsHistoriesExecutionsStepsThumbnailsResource]
library toolresults.v1beta3;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to publish and access results from developer tools.
class ToolResultsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ToolResultsApi(http.Client client,
      {core.String rootUrl = 'https://toolresults.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesResource get histories =>
      ProjectsHistoriesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the Tool Results settings for a project.
  ///
  /// May return any of the following canonical error codes: - PERMISSION_DENIED
  /// - if the user is not authorized to read from project
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProjectSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProjectSettings> getSettings(
    core.String projectId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/settings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProjectSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates resources for settings which have not yet been set.
  ///
  /// Currently, this creates a single resource: a Google Cloud Storage bucket,
  /// to be used as the default bucket for this project. The bucket is created
  /// in an FTL-own storage project. Except for in rare cases, calling this
  /// method in parallel from multiple clients will only create a single bucket.
  /// In order to avoid unnecessary storage charges, the bucket is configured to
  /// automatically delete objects older than 90 days. The bucket is created
  /// with the following permissions: - Owner access for owners of central
  /// storage project (FTL-owned) - Writer access for owners/editors of customer
  /// project - Reader access for viewers of customer project The default ACL on
  /// objects created in the bucket is: - Owner access for owners of central
  /// storage project - Reader access for owners/editors/viewers of customer
  /// project See Google Cloud Storage documentation for more details. If there
  /// is already a default bucket set and the project can access the bucket,
  /// this call does nothing. However, if the project doesn't have the
  /// permission to access the bucket or the bucket is deleted, a new bucket
  /// will be created. May return any canonical error codes, including the
  /// following: - PERMISSION_DENIED - if the user is not authorized to write to
  /// project - Any error code raised by Google Cloud Storage
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProjectSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProjectSettings> initializeSettings(
    core.String projectId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        ':initializeSettings';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return ProjectSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsHistoriesResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesExecutionsResource get executions =>
      ProjectsHistoriesExecutionsResource(_requester);

  ProjectsHistoriesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a History.
  ///
  /// The returned History will have the id set. May return any of the following
  /// canonical error codes: - PERMISSION_DENIED - if the user is not authorized
  /// to write to project - INVALID_ARGUMENT - if the request is malformed -
  /// NOT_FOUND - if the containing project does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [requestId] - A unique request ID for server to detect duplicated
  /// requests. For example, a UUID. Optional, but strongly recommended.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [History].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<History> create(
    History request,
    core.String projectId, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return History.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a History.
  ///
  /// May return any of the following canonical error codes: - PERMISSION_DENIED
  /// - if the user is not authorized to read project - INVALID_ARGUMENT - if
  /// the request is malformed - NOT_FOUND - if the History does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [History].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<History> get(
    core.String projectId,
    core.String historyId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return History.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Histories for a given Project.
  ///
  /// The histories are sorted by modification time in descending order. The
  /// history_id key will be used to order the history with the same
  /// modification time. May return any of the following canonical error codes:
  /// - PERMISSION_DENIED - if the user is not authorized to read project -
  /// INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the
  /// History does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [filterByName] - If set, only return histories with the given name.
  /// Optional.
  ///
  /// [pageSize] - The maximum number of Histories to fetch. Default value: 20.
  /// The server will use this default if the field is not set or has a value of
  /// 0. Any value greater than 100 will be treated as 100. Optional.
  ///
  /// [pageToken] - A continuation token to resume the query at the next item.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHistoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHistoriesResponse> list(
    core.String projectId, {
    core.String? filterByName,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filterByName != null) 'filterByName': [filterByName],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListHistoriesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsHistoriesExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesExecutionsClustersResource get clusters =>
      ProjectsHistoriesExecutionsClustersResource(_requester);
  ProjectsHistoriesExecutionsEnvironmentsResource get environments =>
      ProjectsHistoriesExecutionsEnvironmentsResource(_requester);
  ProjectsHistoriesExecutionsStepsResource get steps =>
      ProjectsHistoriesExecutionsStepsResource(_requester);

  ProjectsHistoriesExecutionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an Execution.
  ///
  /// The returned Execution will have the id set. May return any of the
  /// following canonical error codes: - PERMISSION_DENIED - if the user is not
  /// authorized to write to project - INVALID_ARGUMENT - if the request is
  /// malformed - NOT_FOUND - if the containing History does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [requestId] - A unique request ID for server to detect duplicated
  /// requests. For example, a UUID. Optional, but strongly recommended.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Execution> create(
    Execution request,
    core.String projectId,
    core.String historyId, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Execution.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an Execution.
  ///
  /// May return any of the following canonical error codes: - PERMISSION_DENIED
  /// - if the user is not authorized to write to project - INVALID_ARGUMENT -
  /// if the request is malformed - NOT_FOUND - if the Execution does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [executionId] - An Execution id. Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Execution> get(
    core.String projectId,
    core.String historyId,
    core.String executionId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Execution.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Executions for a given History.
  ///
  /// The executions are sorted by creation_time in descending order. The
  /// execution_id key will be used to order the executions with the same
  /// creation_time. May return any of the following canonical error codes: -
  /// PERMISSION_DENIED - if the user is not authorized to read project -
  /// INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the
  /// containing History does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [pageSize] - The maximum number of Executions to fetch. Default value: 25.
  /// The server will use this default if the field is not set or has a value of
  /// 0. Optional.
  ///
  /// [pageToken] - A continuation token to resume the query at the next item.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExecutionsResponse> list(
    core.String projectId,
    core.String historyId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListExecutionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Execution with the supplied partial entity.
  ///
  /// May return any of the following canonical error codes: - PERMISSION_DENIED
  /// - if the user is not authorized to write to project - INVALID_ARGUMENT -
  /// if the request is malformed - FAILED_PRECONDITION - if the requested state
  /// transition is illegal - NOT_FOUND - if the containing History does not
  /// exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - Required.
  ///
  /// [executionId] - Required.
  ///
  /// [requestId] - A unique request ID for server to detect duplicated
  /// requests. For example, a UUID. Optional, but strongly recommended.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Execution> patch(
    Execution request,
    core.String projectId,
    core.String historyId,
    core.String executionId, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Execution.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsHistoriesExecutionsClustersResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesExecutionsClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a single screenshot cluster by its ID
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [executionId] - An Execution id. Required.
  ///
  /// [clusterId] - A Cluster id Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScreenshotCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScreenshotCluster> get(
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/clusters/' +
        commons.escapeVariable('$clusterId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ScreenshotCluster.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Screenshot Clusters Returns the list of screenshot clusters
  /// corresponding to an execution.
  ///
  /// Screenshot clusters are created after the execution is finished. Clusters
  /// are created from a set of screenshots. Between any two screenshots, a
  /// matching score is calculated based off their metadata that determines how
  /// similar they are. Screenshots are placed in the cluster that has screens
  /// which have the highest matching scores.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [executionId] - An Execution id. Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScreenshotClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScreenshotClustersResponse> list(
    core.String projectId,
    core.String historyId,
    core.String executionId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/clusters';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListScreenshotClustersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsHistoriesExecutionsEnvironmentsResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesExecutionsEnvironmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets an Environment.
  ///
  /// May return any of the following canonical error codes: - PERMISSION_DENIED
  /// - if the user is not authorized to read project - INVALID_ARGUMENT - if
  /// the request is malformed - NOT_FOUND - if the Environment does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. A Project id.
  ///
  /// [historyId] - Required. A History id.
  ///
  /// [executionId] - Required. An Execution id.
  ///
  /// [environmentId] - Required. An Environment id.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> get(
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String environmentId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/environments/' +
        commons.escapeVariable('$environmentId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Environments for a given Execution.
  ///
  /// The Environments are sorted by display name. May return any of the
  /// following canonical error codes: - PERMISSION_DENIED - if the user is not
  /// authorized to read project - INVALID_ARGUMENT - if the request is
  /// malformed - NOT_FOUND - if the containing Execution does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. A Project id.
  ///
  /// [historyId] - Required. A History id.
  ///
  /// [executionId] - Required. An Execution id.
  ///
  /// [pageSize] - The maximum number of Environments to fetch. Default value:
  /// 25. The server will use this default if the field is not set or has a
  /// value of 0.
  ///
  /// [pageToken] - A continuation token to resume the query at the next item.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEnvironmentsResponse> list(
    core.String projectId,
    core.String historyId,
    core.String executionId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/environments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListEnvironmentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsHistoriesExecutionsStepsResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesExecutionsStepsPerfMetricsSummaryResource
      get perfMetricsSummary =>
          ProjectsHistoriesExecutionsStepsPerfMetricsSummaryResource(
              _requester);
  ProjectsHistoriesExecutionsStepsPerfSampleSeriesResource
      get perfSampleSeries =>
          ProjectsHistoriesExecutionsStepsPerfSampleSeriesResource(_requester);
  ProjectsHistoriesExecutionsStepsTestCasesResource get testCases =>
      ProjectsHistoriesExecutionsStepsTestCasesResource(_requester);
  ProjectsHistoriesExecutionsStepsThumbnailsResource get thumbnails =>
      ProjectsHistoriesExecutionsStepsThumbnailsResource(_requester);

  ProjectsHistoriesExecutionsStepsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists accessibility clusters for a given Step May return any of the
  /// following canonical error codes: - PERMISSION_DENIED - if the user is not
  /// authorized to read project - INVALID_ARGUMENT - if the request is
  /// malformed - FAILED_PRECONDITION - if an argument in the request happens to
  /// be invalid; e.g. if the locale format is incorrect - NOT_FOUND - if the
  /// containing Step does not exist
  ///
  /// Request parameters:
  ///
  /// [name] - A full resource name of the step. For example,
  /// projects/my-project/histories/bh.1234567890abcdef/executions/
  /// 1234567890123456789/steps/bs.1234567890abcdef Required.
  /// Value must have pattern
  /// `^projects/\[^/\]+/histories/\[^/\]+/executions/\[^/\]+/steps/\[^/\]+$`.
  ///
  /// [locale] - The accepted format is the canonical Unicode format with hyphen
  /// as a delimiter. Language must be lowercase, Language Script - Capitalized,
  /// Region - UPPERCASE. See
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier for
  /// details. Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListStepAccessibilityClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListStepAccessibilityClustersResponse> accessibilityClusters(
    core.String name, {
    core.String? locale,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (locale != null) 'locale': [locale],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/' +
        core.Uri.encodeFull('$name') +
        ':accessibilityClusters';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListStepAccessibilityClustersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Step.
  ///
  /// The returned Step will have the id set. May return any of the following
  /// canonical error codes: - PERMISSION_DENIED - if the user is not authorized
  /// to write to project - INVALID_ARGUMENT - if the request is malformed -
  /// FAILED_PRECONDITION - if the step is too large (more than 10Mib) -
  /// NOT_FOUND - if the containing Execution does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. A Project id.
  ///
  /// [historyId] - Required. A History id.
  ///
  /// [executionId] - Required. An Execution id.
  ///
  /// [requestId] - A unique request ID for server to detect duplicated
  /// requests. For example, a UUID. Optional, but strongly recommended.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Step].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Step> create(
    Step request,
    core.String projectId,
    core.String historyId,
    core.String executionId, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Step.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a Step.
  ///
  /// May return any of the following canonical error codes: - PERMISSION_DENIED
  /// - if the user is not authorized to read project - INVALID_ARGUMENT - if
  /// the request is malformed - NOT_FOUND - if the Step does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [executionId] - A Execution id. Required.
  ///
  /// [stepId] - A Step id. Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Step].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Step> get(
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Step.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a PerfMetricsSummary.
  ///
  /// May return any of the following error code(s): - NOT_FOUND - The specified
  /// PerfMetricsSummary does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - The cloud project
  ///
  /// [historyId] - A tool results history ID.
  ///
  /// [executionId] - A tool results execution ID.
  ///
  /// [stepId] - A tool results step ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PerfMetricsSummary].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PerfMetricsSummary> getPerfMetricsSummary(
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        '/perfMetricsSummary';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PerfMetricsSummary.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Steps for a given Execution.
  ///
  /// The steps are sorted by creation_time in descending order. The step_id key
  /// will be used to order the steps with the same creation_time. May return
  /// any of the following canonical error codes: - PERMISSION_DENIED - if the
  /// user is not authorized to read project - INVALID_ARGUMENT - if the request
  /// is malformed - FAILED_PRECONDITION - if an argument in the request happens
  /// to be invalid; e.g. if an attempt is made to list the children of a
  /// nonexistent Step - NOT_FOUND - if the containing Execution does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [executionId] - A Execution id. Required.
  ///
  /// [pageSize] - The maximum number of Steps to fetch. Default value: 25. The
  /// server will use this default if the field is not set or has a value of 0.
  /// Optional.
  ///
  /// [pageToken] - A continuation token to resume the query at the next item.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListStepsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListStepsResponse> list(
    core.String projectId,
    core.String historyId,
    core.String executionId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListStepsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Step with the supplied partial entity.
  ///
  /// May return any of the following canonical error codes: - PERMISSION_DENIED
  /// - if the user is not authorized to write project - INVALID_ARGUMENT - if
  /// the request is malformed - FAILED_PRECONDITION - if the requested state
  /// transition is illegal (e.g try to upload a duplicate xml file), if the
  /// updated step is too large (more than 10Mib) - NOT_FOUND - if the
  /// containing Execution does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [executionId] - A Execution id. Required.
  ///
  /// [stepId] - A Step id. Required.
  ///
  /// [requestId] - A unique request ID for server to detect duplicated
  /// requests. For example, a UUID. Optional, but strongly recommended.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Step].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Step> patch(
    Step request,
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Step.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Publish xml files to an existing Step.
  ///
  /// May return any of the following canonical error codes: - PERMISSION_DENIED
  /// - if the user is not authorized to write project - INVALID_ARGUMENT - if
  /// the request is malformed - FAILED_PRECONDITION - if the requested state
  /// transition is illegal, e.g try to upload a duplicate xml file or a file
  /// too large. - NOT_FOUND - if the containing Execution does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [executionId] - A Execution id. Required.
  ///
  /// [stepId] - A Step id. Note: This step must include a TestExecutionStep.
  /// Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Step].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Step> publishXunitXmlFiles(
    PublishXunitXmlFilesRequest request,
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        ':publishXunitXmlFiles';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Step.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsHistoriesExecutionsStepsPerfMetricsSummaryResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesExecutionsStepsPerfMetricsSummaryResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a PerfMetricsSummary resource.
  ///
  /// Returns the existing one if it has already been created. May return any of
  /// the following error code(s): - NOT_FOUND - The containing Step does not
  /// exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The cloud project
  ///
  /// [historyId] - A tool results history ID.
  ///
  /// [executionId] - A tool results execution ID.
  ///
  /// [stepId] - A tool results step ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PerfMetricsSummary].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PerfMetricsSummary> create(
    PerfMetricsSummary request,
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        '/perfMetricsSummary';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PerfMetricsSummary.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsHistoriesExecutionsStepsPerfSampleSeriesResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesResource get samples =>
      ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesResource(
          _requester);

  ProjectsHistoriesExecutionsStepsPerfSampleSeriesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a PerfSampleSeries.
  ///
  /// May return any of the following error code(s): - ALREADY_EXISTS -
  /// PerfMetricSummary already exists for the given Step - NOT_FOUND - The
  /// containing Step does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The cloud project
  ///
  /// [historyId] - A tool results history ID.
  ///
  /// [executionId] - A tool results execution ID.
  ///
  /// [stepId] - A tool results step ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PerfSampleSeries].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PerfSampleSeries> create(
    PerfSampleSeries request,
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        '/perfSampleSeries';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PerfSampleSeries.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a PerfSampleSeries.
  ///
  /// May return any of the following error code(s): - NOT_FOUND - The specified
  /// PerfSampleSeries does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - The cloud project
  ///
  /// [historyId] - A tool results history ID.
  ///
  /// [executionId] - A tool results execution ID.
  ///
  /// [stepId] - A tool results step ID.
  ///
  /// [sampleSeriesId] - A sample series id
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PerfSampleSeries].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PerfSampleSeries> get(
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId,
    core.String sampleSeriesId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        '/perfSampleSeries/' +
        commons.escapeVariable('$sampleSeriesId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PerfSampleSeries.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists PerfSampleSeries for a given Step.
  ///
  /// The request provides an optional filter which specifies one or more
  /// PerfMetricsType to include in the result; if none returns all. The
  /// resulting PerfSampleSeries are sorted by ids. May return any of the
  /// following canonical error codes: - NOT_FOUND - The containing Step does
  /// not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - The cloud project
  ///
  /// [historyId] - A tool results history ID.
  ///
  /// [executionId] - A tool results execution ID.
  ///
  /// [stepId] - A tool results step ID.
  ///
  /// [filter] - Specify one or more PerfMetricType values such as CPU to filter
  /// the result
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPerfSampleSeriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPerfSampleSeriesResponse> list(
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId, {
    core.List<core.String>? filter,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': filter,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        '/perfSampleSeries';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPerfSampleSeriesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a batch of PerfSamples - a client can submit multiple batches of
  /// Perf Samples through repeated calls to this method in order to split up a
  /// large request payload - duplicates and existing timestamp entries will be
  /// ignored.
  ///
  /// - the batch operation may partially succeed - the set of elements
  /// successfully inserted is returned in the response (omits items which
  /// already existed in the database). May return any of the following
  /// canonical error codes: - NOT_FOUND - The containing PerfSampleSeries does
  /// not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The cloud project
  ///
  /// [historyId] - A tool results history ID.
  ///
  /// [executionId] - A tool results execution ID.
  ///
  /// [stepId] - A tool results step ID.
  ///
  /// [sampleSeriesId] - A sample series id
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreatePerfSamplesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreatePerfSamplesResponse> batchCreate(
    BatchCreatePerfSamplesRequest request,
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId,
    core.String sampleSeriesId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        '/perfSampleSeries/' +
        commons.escapeVariable('$sampleSeriesId') +
        '/samples:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchCreatePerfSamplesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the Performance Samples of a given Sample Series - The list results
  /// are sorted by timestamps ascending - The default page size is 500 samples;
  /// and maximum size allowed 5000 - The response token indicates the last
  /// returned PerfSample timestamp - When the results size exceeds the page
  /// size, submit a subsequent request including the page token to return the
  /// rest of the samples up to the page limit May return any of the following
  /// canonical error codes: - OUT_OF_RANGE - The specified request page_token
  /// is out of valid range - NOT_FOUND - The containing PerfSampleSeries does
  /// not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - The cloud project
  ///
  /// [historyId] - A tool results history ID.
  ///
  /// [executionId] - A tool results execution ID.
  ///
  /// [stepId] - A tool results step ID.
  ///
  /// [sampleSeriesId] - A sample series id
  ///
  /// [pageSize] - The default page size is 500 samples, and the maximum size is
  /// 5000. If the page_size is greater than 5000, the effective page size will
  /// be 5000
  ///
  /// [pageToken] - Optional, the next_page_token returned in the previous
  /// response
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPerfSamplesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPerfSamplesResponse> list(
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId,
    core.String sampleSeriesId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        '/perfSampleSeries/' +
        commons.escapeVariable('$sampleSeriesId') +
        '/samples';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPerfSamplesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsHistoriesExecutionsStepsTestCasesResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesExecutionsStepsTestCasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a Test Case for a Step.
  ///
  /// Experimental test cases API. Still in active development. May return any
  /// of the following canonical error codes: - PERMISSION_DENIED - if the user
  /// is not authorized to write to project - INVALID_ARGUMENT - if the request
  /// is malformed - NOT_FOUND - if the containing Test Case does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [executionId] - A Execution id Required.
  ///
  /// [stepId] - A Step id. Note: This step must include a TestExecutionStep.
  /// Required.
  ///
  /// [testCaseId] - A Test Case id. Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestCase> get(
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId,
    core.String testCaseId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        '/testCases/' +
        commons.escapeVariable('$testCaseId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TestCase.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Test Cases attached to a Step.
  ///
  /// Experimental test cases API. Still in active development. May return any
  /// of the following canonical error codes: - PERMISSION_DENIED - if the user
  /// is not authorized to write to project - INVALID_ARGUMENT - if the request
  /// is malformed - NOT_FOUND - if the containing Step does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [executionId] - A Execution id Required.
  ///
  /// [stepId] - A Step id. Note: This step must include a TestExecutionStep.
  /// Required.
  ///
  /// [pageSize] - The maximum number of TestCases to fetch. Default value: 100.
  /// The server will use this default if the field is not set or has a value of
  /// 0. Optional.
  ///
  /// [pageToken] - A continuation token to resume the query at the next item.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTestCasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTestCasesResponse> list(
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        '/testCases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTestCasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsHistoriesExecutionsStepsThumbnailsResource {
  final commons.ApiRequester _requester;

  ProjectsHistoriesExecutionsStepsThumbnailsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists thumbnails of images attached to a step.
  ///
  /// May return any of the following canonical error codes: - PERMISSION_DENIED
  /// - if the user is not authorized to read from the project, or from any of
  /// the images - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND -
  /// if the step does not exist, or if any of the images do not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - A Project id. Required.
  ///
  /// [historyId] - A History id. Required.
  ///
  /// [executionId] - An Execution id. Required.
  ///
  /// [stepId] - A Step id. Required.
  ///
  /// [pageSize] - The maximum number of thumbnails to fetch. Default value: 50.
  /// The server will use this default if the field is not set or has a value of
  /// 0. Optional.
  ///
  /// [pageToken] - A continuation token to resume the query at the next item.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListStepThumbnailsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListStepThumbnailsResponse> list(
    core.String projectId,
    core.String historyId,
    core.String executionId,
    core.String stepId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toolresults/v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        '/histories/' +
        commons.escapeVariable('$historyId') +
        '/executions/' +
        commons.escapeVariable('$executionId') +
        '/steps/' +
        commons.escapeVariable('$stepId') +
        '/thumbnails';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListStepThumbnailsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Additional details for an ANR crash.
class ANR {
  /// The stack trace of the ANR crash.
  ///
  /// Optional.
  StackTrace? stackTrace;

  ANR({
    this.stackTrace,
  });

  ANR.fromJson(core.Map _json)
      : this(
          stackTrace: _json.containsKey('stackTrace')
              ? StackTrace.fromJson(
                  _json['stackTrace'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stackTrace != null) 'stackTrace': stackTrace!,
      };
}

/// Android app information.
class AndroidAppInfo {
  /// The name of the app.
  ///
  /// Optional
  core.String? name;

  /// The package name of the app.
  ///
  /// Required.
  core.String? packageName;

  /// The internal version code of the app.
  ///
  /// Optional.
  core.String? versionCode;

  /// The version name of the app.
  ///
  /// Optional.
  core.String? versionName;

  AndroidAppInfo({
    this.name,
    this.packageName,
    this.versionCode,
    this.versionName,
  });

  AndroidAppInfo.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          versionCode: _json.containsKey('versionCode')
              ? _json['versionCode'] as core.String
              : null,
          versionName: _json.containsKey('versionName')
              ? _json['versionName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (packageName != null) 'packageName': packageName!,
        if (versionCode != null) 'versionCode': versionCode!,
        if (versionName != null) 'versionName': versionName!,
      };
}

/// A test of an Android application that can control an Android component
/// independently of its normal lifecycle.
///
/// See for more information on types of Android tests.
class AndroidInstrumentationTest {
  /// The java package for the test to be executed.
  ///
  /// Required
  core.String? testPackageId;

  /// The InstrumentationTestRunner class.
  ///
  /// Required
  core.String? testRunnerClass;

  /// Each target must be fully qualified with the package name or class name,
  /// in one of these formats: - "package package_name" - "class
  /// package_name.class_name" - "class package_name.class_name#method_name" If
  /// empty, all targets in the module will be run.
  core.List<core.String>? testTargets;

  /// The flag indicates whether Android Test Orchestrator will be used to run
  /// test or not.
  core.bool? useOrchestrator;

  AndroidInstrumentationTest({
    this.testPackageId,
    this.testRunnerClass,
    this.testTargets,
    this.useOrchestrator,
  });

  AndroidInstrumentationTest.fromJson(core.Map _json)
      : this(
          testPackageId: _json.containsKey('testPackageId')
              ? _json['testPackageId'] as core.String
              : null,
          testRunnerClass: _json.containsKey('testRunnerClass')
              ? _json['testRunnerClass'] as core.String
              : null,
          testTargets: _json.containsKey('testTargets')
              ? (_json['testTargets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          useOrchestrator: _json.containsKey('useOrchestrator')
              ? _json['useOrchestrator'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testPackageId != null) 'testPackageId': testPackageId!,
        if (testRunnerClass != null) 'testRunnerClass': testRunnerClass!,
        if (testTargets != null) 'testTargets': testTargets!,
        if (useOrchestrator != null) 'useOrchestrator': useOrchestrator!,
      };
}

/// A test of an android application that explores the application on a virtual
/// or physical Android device, finding culprits and crashes as it goes.
class AndroidRoboTest {
  /// The initial activity that should be used to start the app.
  ///
  /// Optional
  core.String? appInitialActivity;

  /// The java package for the bootstrap.
  ///
  /// Optional
  core.String? bootstrapPackageId;

  /// The runner class for the bootstrap.
  ///
  /// Optional
  core.String? bootstrapRunnerClass;

  /// The max depth of the traversal stack Robo can explore.
  ///
  /// Optional
  core.int? maxDepth;

  /// The max number of steps/actions Robo can execute.
  ///
  /// Default is no limit (0). Optional
  core.int? maxSteps;

  AndroidRoboTest({
    this.appInitialActivity,
    this.bootstrapPackageId,
    this.bootstrapRunnerClass,
    this.maxDepth,
    this.maxSteps,
  });

  AndroidRoboTest.fromJson(core.Map _json)
      : this(
          appInitialActivity: _json.containsKey('appInitialActivity')
              ? _json['appInitialActivity'] as core.String
              : null,
          bootstrapPackageId: _json.containsKey('bootstrapPackageId')
              ? _json['bootstrapPackageId'] as core.String
              : null,
          bootstrapRunnerClass: _json.containsKey('bootstrapRunnerClass')
              ? _json['bootstrapRunnerClass'] as core.String
              : null,
          maxDepth: _json.containsKey('maxDepth')
              ? _json['maxDepth'] as core.int
              : null,
          maxSteps: _json.containsKey('maxSteps')
              ? _json['maxSteps'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appInitialActivity != null)
          'appInitialActivity': appInitialActivity!,
        if (bootstrapPackageId != null)
          'bootstrapPackageId': bootstrapPackageId!,
        if (bootstrapRunnerClass != null)
          'bootstrapRunnerClass': bootstrapRunnerClass!,
        if (maxDepth != null) 'maxDepth': maxDepth!,
        if (maxSteps != null) 'maxSteps': maxSteps!,
      };
}

/// An Android mobile test specification.
class AndroidTest {
  /// Information about the application under test.
  AndroidAppInfo? androidAppInfo;

  /// An Android instrumentation test.
  AndroidInstrumentationTest? androidInstrumentationTest;

  /// An Android robo test.
  AndroidRoboTest? androidRoboTest;

  /// An Android test loop.
  AndroidTestLoop? androidTestLoop;

  /// Max time a test is allowed to run before it is automatically cancelled.
  Duration? testTimeout;

  AndroidTest({
    this.androidAppInfo,
    this.androidInstrumentationTest,
    this.androidRoboTest,
    this.androidTestLoop,
    this.testTimeout,
  });

  AndroidTest.fromJson(core.Map _json)
      : this(
          androidAppInfo: _json.containsKey('androidAppInfo')
              ? AndroidAppInfo.fromJson(_json['androidAppInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          androidInstrumentationTest:
              _json.containsKey('androidInstrumentationTest')
                  ? AndroidInstrumentationTest.fromJson(
                      _json['androidInstrumentationTest']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          androidRoboTest: _json.containsKey('androidRoboTest')
              ? AndroidRoboTest.fromJson(_json['androidRoboTest']
                  as core.Map<core.String, core.dynamic>)
              : null,
          androidTestLoop: _json.containsKey('androidTestLoop')
              ? AndroidTestLoop.fromJson(_json['androidTestLoop']
                  as core.Map<core.String, core.dynamic>)
              : null,
          testTimeout: _json.containsKey('testTimeout')
              ? Duration.fromJson(
                  _json['testTimeout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidAppInfo != null) 'androidAppInfo': androidAppInfo!,
        if (androidInstrumentationTest != null)
          'androidInstrumentationTest': androidInstrumentationTest!,
        if (androidRoboTest != null) 'androidRoboTest': androidRoboTest!,
        if (androidTestLoop != null) 'androidTestLoop': androidTestLoop!,
        if (testTimeout != null) 'testTimeout': testTimeout!,
      };
}

/// Test Loops are tests that can be launched by the app itself, determining
/// when to run by listening for an intent.
typedef AndroidTestLoop = $Empty;

/// `Any` contains an arbitrary serialized protocol buffer message along with a
/// URL that describes the type of the serialized message.
///
/// Protobuf library provides support to pack/unpack Any values in the form of
/// utility functions or additional generated methods of the Any type. Example
/// 1: Pack and unpack a message in C++. Foo foo = ...; Any any;
/// any.PackFrom(foo); ... if (any.UnpackTo(&foo)) { ... } Example 2: Pack and
/// unpack a message in Java. Foo foo = ...; Any any = Any.pack(foo); ... if
/// (any.is(Foo.class)) { foo = any.unpack(Foo.class); } Example 3: Pack and
/// unpack a message in Python. foo = Foo(...) any = Any() any.Pack(foo) ... if
/// any.Is(Foo.DESCRIPTOR): any.Unpack(foo) ... Example 4: Pack and unpack a
/// message in Go foo := &pb.Foo{...} any, err := ptypes.MarshalAny(foo) ... foo
/// := &pb.Foo{} if err := ptypes.UnmarshalAny(any, foo); err != nil { ... } The
/// pack methods provided by protobuf library will by default use
/// 'type.googleapis.com/full.type.name' as the type URL and the unpack methods
/// only use the fully qualified type name after the last '/' in the type URL,
/// for example "foo.bar.com/x/y.z" will yield type name "y.z". # JSON The JSON
/// representation of an `Any` value uses the regular representation of the
/// deserialized, embedded message, with an additional field `@type` which
/// contains the type URL. Example: package google.profile; message Person {
/// string first_name = 1; string last_name = 2; } { "@type":
/// "type.googleapis.com/google.profile.Person", "firstName": , "lastName": } If
/// the embedded message type is well-known and has a custom JSON
/// representation, that representation will be embedded adding a field `value`
/// which holds the custom JSON in addition to the `@type` field. Example (for
/// message google.protobuf.Duration): { "@type":
/// "type.googleapis.com/google.protobuf.Duration", "value": "1.212s" }
class Any {
  /// A URL/resource name that uniquely identifies the type of the serialized
  /// protocol buffer message.
  ///
  /// This string must contain at least one "/" character. The last segment of
  /// the URL's path must represent the fully qualified name of the type (as in
  /// `path/google.protobuf.Duration`). The name should be in a canonical form
  /// (e.g., leading "." is not accepted). In practice, teams usually precompile
  /// into the binary all types that they expect it to use in the context of
  /// Any. However, for URLs which use the scheme `http`, `https`, or no scheme,
  /// one can optionally set up a type server that maps type URLs to message
  /// definitions as follows: * If no scheme is provided, `https` is assumed. *
  /// An HTTP GET on the URL must yield a google.protobuf.Type value in binary
  /// format, or produce an error. * Applications are allowed to cache lookup
  /// results based on the URL, or have them precompiled into a binary to avoid
  /// any lookup. Therefore, binary compatibility needs to be preserved on
  /// changes to types. (Use versioned type names to manage breaking changes.)
  /// Note: this functionality is not currently available in the official
  /// protobuf release, and it is not used for type URLs beginning with
  /// type.googleapis.com. Schemes other than `http`, `https` (or the empty
  /// scheme) might be used with implementation specific semantics.
  core.String? typeUrl;

  /// Must be a valid serialized protocol buffer of the above specified type.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Any({
    this.typeUrl,
    this.value,
  });

  Any.fromJson(core.Map _json)
      : this(
          typeUrl: _json.containsKey('typeUrl')
              ? _json['typeUrl'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (typeUrl != null) 'typeUrl': typeUrl!,
        if (value != null) 'value': value!,
      };
}

class AppStartTime {
  /// The time from app start to reaching the developer-reported "fully drawn"
  /// time.
  ///
  /// This is only stored if the app includes a call to
  /// Activity.reportFullyDrawn(). See
  /// https://developer.android.com/topic/performance/launch-time.html#time-full
  ///
  /// Optional.
  Duration? fullyDrawnTime;

  /// The time from app start to the first displayed activity being drawn, as
  /// reported in Logcat.
  ///
  /// See
  /// https://developer.android.com/topic/performance/launch-time.html#time-initial
  Duration? initialDisplayTime;

  AppStartTime({
    this.fullyDrawnTime,
    this.initialDisplayTime,
  });

  AppStartTime.fromJson(core.Map _json)
      : this(
          fullyDrawnTime: _json.containsKey('fullyDrawnTime')
              ? Duration.fromJson(_json['fullyDrawnTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
          initialDisplayTime: _json.containsKey('initialDisplayTime')
              ? Duration.fromJson(_json['initialDisplayTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullyDrawnTime != null) 'fullyDrawnTime': fullyDrawnTime!,
        if (initialDisplayTime != null)
          'initialDisplayTime': initialDisplayTime!,
      };
}

/// A suggestion to use deep links for a Robo run.
typedef AvailableDeepLinks = $Empty;

/// Encapsulates the metadata for basic sample series represented by a line
/// chart
class BasicPerfSampleSeries {
  ///
  /// Possible string values are:
  /// - "perfMetricTypeUnspecified"
  /// - "memory"
  /// - "cpu"
  /// - "network"
  /// - "graphics"
  core.String? perfMetricType;

  ///
  /// Possible string values are:
  /// - "perfUnitUnspecified"
  /// - "kibibyte"
  /// - "percent"
  /// - "bytesPerSecond"
  /// - "framesPerSecond"
  /// - "byte"
  core.String? perfUnit;

  ///
  /// Possible string values are:
  /// - "sampleSeriesTypeUnspecified"
  /// - "memoryRssPrivate" : Memory sample series
  /// - "memoryRssShared"
  /// - "memoryRssTotal"
  /// - "memoryTotal"
  /// - "cpuUser" : CPU sample series
  /// - "cpuKernel"
  /// - "cpuTotal"
  /// - "ntBytesTransferred" : Network sample series
  /// - "ntBytesReceived"
  /// - "networkSent"
  /// - "networkReceived"
  /// - "graphicsFrameRate" : Graphics sample series
  core.String? sampleSeriesLabel;

  BasicPerfSampleSeries({
    this.perfMetricType,
    this.perfUnit,
    this.sampleSeriesLabel,
  });

  BasicPerfSampleSeries.fromJson(core.Map _json)
      : this(
          perfMetricType: _json.containsKey('perfMetricType')
              ? _json['perfMetricType'] as core.String
              : null,
          perfUnit: _json.containsKey('perfUnit')
              ? _json['perfUnit'] as core.String
              : null,
          sampleSeriesLabel: _json.containsKey('sampleSeriesLabel')
              ? _json['sampleSeriesLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (perfMetricType != null) 'perfMetricType': perfMetricType!,
        if (perfUnit != null) 'perfUnit': perfUnit!,
        if (sampleSeriesLabel != null) 'sampleSeriesLabel': sampleSeriesLabel!,
      };
}

/// The request must provide up to a maximum of 5000 samples to be created; a
/// larger sample size will cause an INVALID_ARGUMENT error
class BatchCreatePerfSamplesRequest {
  /// The set of PerfSamples to create should not include existing timestamps
  core.List<PerfSample>? perfSamples;

  BatchCreatePerfSamplesRequest({
    this.perfSamples,
  });

  BatchCreatePerfSamplesRequest.fromJson(core.Map _json)
      : this(
          perfSamples: _json.containsKey('perfSamples')
              ? (_json['perfSamples'] as core.List)
                  .map((value) => PerfSample.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (perfSamples != null) 'perfSamples': perfSamples!,
      };
}

class BatchCreatePerfSamplesResponse {
  core.List<PerfSample>? perfSamples;

  BatchCreatePerfSamplesResponse({
    this.perfSamples,
  });

  BatchCreatePerfSamplesResponse.fromJson(core.Map _json)
      : this(
          perfSamples: _json.containsKey('perfSamples')
              ? (_json['perfSamples'] as core.List)
                  .map((value) => PerfSample.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (perfSamples != null) 'perfSamples': perfSamples!,
      };
}

/// A warning that Robo encountered a screen that was mostly blank; this may
/// indicate a problem with the app.
class BlankScreen {
  /// The screen id of the element
  core.String? screenId;

  BlankScreen({
    this.screenId,
  });

  BlankScreen.fromJson(core.Map _json)
      : this(
          screenId: _json.containsKey('screenId')
              ? _json['screenId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (screenId != null) 'screenId': screenId!,
      };
}

class CPUInfo {
  /// description of the device processor ie '1.8 GHz hexa core 64-bit ARMv8-A'
  core.String? cpuProcessor;

  /// the CPU clock speed in GHz
  core.double? cpuSpeedInGhz;

  /// the number of CPU cores
  core.int? numberOfCores;

  CPUInfo({
    this.cpuProcessor,
    this.cpuSpeedInGhz,
    this.numberOfCores,
  });

  CPUInfo.fromJson(core.Map _json)
      : this(
          cpuProcessor: _json.containsKey('cpuProcessor')
              ? _json['cpuProcessor'] as core.String
              : null,
          cpuSpeedInGhz: _json.containsKey('cpuSpeedInGhz')
              ? (_json['cpuSpeedInGhz'] as core.num).toDouble()
              : null,
          numberOfCores: _json.containsKey('numberOfCores')
              ? _json['numberOfCores'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuProcessor != null) 'cpuProcessor': cpuProcessor!,
        if (cpuSpeedInGhz != null) 'cpuSpeedInGhz': cpuSpeedInGhz!,
        if (numberOfCores != null) 'numberOfCores': numberOfCores!,
      };
}

/// Crash dialog was detected during the test execution
class CrashDialogError {
  /// The name of the package that caused the dialog.
  core.String? crashPackage;

  CrashDialogError({
    this.crashPackage,
  });

  CrashDialogError.fromJson(core.Map _json)
      : this(
          crashPackage: _json.containsKey('crashPackage')
              ? _json['crashPackage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crashPackage != null) 'crashPackage': crashPackage!,
      };
}

/// A warning that device ran out of memory
typedef DeviceOutOfMemory = $Empty;

/// A Duration represents a signed, fixed-length span of time represented as a
/// count of seconds and fractions of seconds at nanosecond resolution.
///
/// It is independent of any calendar and concepts like "day" or "month". It is
/// related to Timestamp in that the difference between two Timestamp values is
/// a Duration and it can be added or subtracted from a Timestamp. Range is
/// approximately +-10,000 years.
class Duration {
  /// Signed fractions of a second at nanosecond resolution of the span of time.
  ///
  /// Durations less than one second are represented with a 0 `seconds` field
  /// and a positive or negative `nanos` field. For durations of one second or
  /// more, a non-zero value for the `nanos` field must be of the same sign as
  /// the `seconds` field. Must be from -999,999,999 to +999,999,999 inclusive.
  core.int? nanos;

  /// Signed seconds of the span of time.
  ///
  /// Must be from -315,576,000,000 to +315,576,000,000 inclusive. Note: these
  /// bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25
  /// days/year * 10000 years
  core.String? seconds;

  Duration({
    this.nanos,
    this.seconds,
  });

  Duration.fromJson(core.Map _json)
      : this(
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          seconds: _json.containsKey('seconds')
              ? _json['seconds'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
      };
}

/// Additional details about encountered login screens.
class EncounteredLoginScreen {
  /// Number of encountered distinct login screens.
  core.int? distinctScreens;

  /// Subset of login screens.
  core.List<core.String>? screenIds;

  EncounteredLoginScreen({
    this.distinctScreens,
    this.screenIds,
  });

  EncounteredLoginScreen.fromJson(core.Map _json)
      : this(
          distinctScreens: _json.containsKey('distinctScreens')
              ? _json['distinctScreens'] as core.int
              : null,
          screenIds: _json.containsKey('screenIds')
              ? (_json['screenIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (distinctScreens != null) 'distinctScreens': distinctScreens!,
        if (screenIds != null) 'screenIds': screenIds!,
      };
}

/// Additional details about encountered screens with elements that are not
/// Android UI widgets.
class EncounteredNonAndroidUiWidgetScreen {
  /// Number of encountered distinct screens with non Android UI widgets.
  core.int? distinctScreens;

  /// Subset of screens which contain non Android UI widgets.
  core.List<core.String>? screenIds;

  EncounteredNonAndroidUiWidgetScreen({
    this.distinctScreens,
    this.screenIds,
  });

  EncounteredNonAndroidUiWidgetScreen.fromJson(core.Map _json)
      : this(
          distinctScreens: _json.containsKey('distinctScreens')
              ? _json['distinctScreens'] as core.int
              : null,
          screenIds: _json.containsKey('screenIds')
              ? (_json['screenIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (distinctScreens != null) 'distinctScreens': distinctScreens!,
        if (screenIds != null) 'screenIds': screenIds!,
      };
}

/// An Environment represents the set of test runs (Steps) from the parent
/// Execution that are configured with the same set of dimensions (Model,
/// Version, Locale, and Orientation).
///
/// Multiple such runs occur particularly because of features like sharding
/// (splitting up a test suite to run in parallel across devices) and reruns
/// (running a test multiple times to check for different outcomes).
class Environment {
  /// The time when the Environment status was set to complete.
  ///
  /// This value will be set automatically when state transitions to COMPLETE.
  ///
  /// Output only.
  Timestamp? completionTime;

  /// The time when the Environment was created.
  ///
  /// Output only.
  Timestamp? creationTime;

  /// Dimension values describing the environment.
  ///
  /// Dimension values always consist of "Model", "Version", "Locale", and
  /// "Orientation". - In response: always set - In create request: always set -
  /// In update request: never set
  core.List<EnvironmentDimensionValueEntry>? dimensionValue;

  /// A short human-readable name to display in the UI.
  ///
  /// Maximum of 100 characters. For example: Nexus 5, API 27.
  core.String? displayName;

  /// An Environment id.
  ///
  /// Output only.
  core.String? environmentId;

  /// Merged result of the environment.
  MergedResult? environmentResult;

  /// An Execution id.
  ///
  /// Output only.
  core.String? executionId;

  /// A History id.
  ///
  /// Output only.
  core.String? historyId;

  /// A Project id.
  ///
  /// Output only.
  core.String? projectId;

  /// The location where output files are stored in the user bucket.
  ResultsStorage? resultsStorage;

  /// Summaries of shards.
  ///
  /// Only one shard will present unless sharding feature is enabled in
  /// TestExecutionService.
  ///
  /// Output only.
  core.List<ShardSummary>? shardSummaries;

  Environment({
    this.completionTime,
    this.creationTime,
    this.dimensionValue,
    this.displayName,
    this.environmentId,
    this.environmentResult,
    this.executionId,
    this.historyId,
    this.projectId,
    this.resultsStorage,
    this.shardSummaries,
  });

  Environment.fromJson(core.Map _json)
      : this(
          completionTime: _json.containsKey('completionTime')
              ? Timestamp.fromJson(_json['completionTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: _json.containsKey('creationTime')
              ? Timestamp.fromJson(
                  _json['creationTime'] as core.Map<core.String, core.dynamic>)
              : null,
          dimensionValue: _json.containsKey('dimensionValue')
              ? (_json['dimensionValue'] as core.List)
                  .map((value) => EnvironmentDimensionValueEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          environmentId: _json.containsKey('environmentId')
              ? _json['environmentId'] as core.String
              : null,
          environmentResult: _json.containsKey('environmentResult')
              ? MergedResult.fromJson(_json['environmentResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
          executionId: _json.containsKey('executionId')
              ? _json['executionId'] as core.String
              : null,
          historyId: _json.containsKey('historyId')
              ? _json['historyId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          resultsStorage: _json.containsKey('resultsStorage')
              ? ResultsStorage.fromJson(_json['resultsStorage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          shardSummaries: _json.containsKey('shardSummaries')
              ? (_json['shardSummaries'] as core.List)
                  .map((value) => ShardSummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionTime != null) 'completionTime': completionTime!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (dimensionValue != null) 'dimensionValue': dimensionValue!,
        if (displayName != null) 'displayName': displayName!,
        if (environmentId != null) 'environmentId': environmentId!,
        if (environmentResult != null) 'environmentResult': environmentResult!,
        if (executionId != null) 'executionId': executionId!,
        if (historyId != null) 'historyId': historyId!,
        if (projectId != null) 'projectId': projectId!,
        if (resultsStorage != null) 'resultsStorage': resultsStorage!,
        if (shardSummaries != null) 'shardSummaries': shardSummaries!,
      };
}

typedef EnvironmentDimensionValueEntry = $Entry;

/// An Execution represents a collection of Steps.
///
/// For instance, it could represent: - a mobile test executed across a range of
/// device configurations - a jenkins job with a build step followed by a test
/// step The maximum size of an execution message is 1 MiB. An Execution can be
/// updated until its state is set to COMPLETE at which point it becomes
/// immutable.
class Execution {
  /// The time when the Execution status transitioned to COMPLETE.
  ///
  /// This value will be set automatically when state transitions to COMPLETE. -
  /// In response: set if the execution state is COMPLETE. - In create/update
  /// request: never set
  Timestamp? completionTime;

  /// The time when the Execution was created.
  ///
  /// This value will be set automatically when CreateExecution is called. - In
  /// response: always set - In create/update request: never set
  Timestamp? creationTime;

  /// The dimensions along which different steps in this execution may vary.
  ///
  /// This must remain fixed over the life of the execution. Returns
  /// INVALID_ARGUMENT if this field is set in an update request. Returns
  /// INVALID_ARGUMENT if the same name occurs in more than one
  /// dimension_definition. Returns INVALID_ARGUMENT if the size of the list is
  /// over 100. - In response: present if set by create - In create request:
  /// optional - In update request: never set
  core.List<MatrixDimensionDefinition>? dimensionDefinitions;

  /// A unique identifier within a History for this Execution.
  ///
  /// Returns INVALID_ARGUMENT if this field is set or overwritten by the
  /// caller. - In response always set - In create/update request: never set
  core.String? executionId;

  /// Classify the result, for example into SUCCESS or FAILURE - In response:
  /// present if set by create/update request - In create/update request:
  /// optional
  Outcome? outcome;

  /// Lightweight information about execution request.
  ///
  /// - In response: present if set by create - In create: optional - In update:
  /// optional
  Specification? specification;

  /// The initial state is IN_PROGRESS.
  ///
  /// The only legal state transitions is from IN_PROGRESS to COMPLETE. A
  /// PRECONDITION_FAILED will be returned if an invalid transition is
  /// requested. The state can only be set to COMPLETE once. A
  /// FAILED_PRECONDITION will be returned if the state is set to COMPLETE
  /// multiple times. If the state is set to COMPLETE, all the in-progress steps
  /// within the execution will be set as COMPLETE. If the outcome of the step
  /// is not set, the outcome will be set to INCONCLUSIVE. - In response always
  /// set - In create/update request: optional
  /// Possible string values are:
  /// - "unknownState" : Should never be in this state. Exists for proto
  /// deserialization backward compatibility.
  /// - "pending" : The Execution/Step is created, ready to run, but not running
  /// yet. If an Execution/Step is created without initial state, it is assumed
  /// that the Execution/Step is in PENDING state.
  /// - "inProgress" : The Execution/Step is in progress.
  /// - "complete" : The finalized, immutable state. Steps/Executions in this
  /// state cannot be modified.
  core.String? state;

  /// TestExecution Matrix ID that the TestExecutionService uses.
  ///
  /// - In response: present if set by create - In create: optional - In update:
  /// never set
  core.String? testExecutionMatrixId;

  Execution({
    this.completionTime,
    this.creationTime,
    this.dimensionDefinitions,
    this.executionId,
    this.outcome,
    this.specification,
    this.state,
    this.testExecutionMatrixId,
  });

  Execution.fromJson(core.Map _json)
      : this(
          completionTime: _json.containsKey('completionTime')
              ? Timestamp.fromJson(_json['completionTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: _json.containsKey('creationTime')
              ? Timestamp.fromJson(
                  _json['creationTime'] as core.Map<core.String, core.dynamic>)
              : null,
          dimensionDefinitions: _json.containsKey('dimensionDefinitions')
              ? (_json['dimensionDefinitions'] as core.List)
                  .map((value) => MatrixDimensionDefinition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          executionId: _json.containsKey('executionId')
              ? _json['executionId'] as core.String
              : null,
          outcome: _json.containsKey('outcome')
              ? Outcome.fromJson(
                  _json['outcome'] as core.Map<core.String, core.dynamic>)
              : null,
          specification: _json.containsKey('specification')
              ? Specification.fromJson(
                  _json['specification'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          testExecutionMatrixId: _json.containsKey('testExecutionMatrixId')
              ? _json['testExecutionMatrixId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionTime != null) 'completionTime': completionTime!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (dimensionDefinitions != null)
          'dimensionDefinitions': dimensionDefinitions!,
        if (executionId != null) 'executionId': executionId!,
        if (outcome != null) 'outcome': outcome!,
        if (specification != null) 'specification': specification!,
        if (state != null) 'state': state!,
        if (testExecutionMatrixId != null)
          'testExecutionMatrixId': testExecutionMatrixId!,
      };
}

/// Failed to install the APK.
typedef FailedToInstall = $Empty;

/// Details for an outcome with a FAILURE outcome summary.
class FailureDetail {
  /// If the failure was severe because the system (app) under test crashed.
  core.bool? crashed;

  /// If the device ran out of memory during a test, causing the test to crash.
  core.bool? deviceOutOfMemory;

  /// If the Roboscript failed to complete successfully, e.g., because a
  /// Roboscript action or assertion failed or a Roboscript action could not be
  /// matched during the entire crawl.
  core.bool? failedRoboscript;

  /// If an app is not installed and thus no test can be run with the app.
  ///
  /// This might be caused by trying to run a test on an unsupported platform.
  core.bool? notInstalled;

  /// If a native process (including any other than the app) crashed.
  core.bool? otherNativeCrash;

  /// If the test overran some time limit, and that is why it failed.
  core.bool? timedOut;

  /// If the robo was unable to crawl the app; perhaps because the app did not
  /// start.
  core.bool? unableToCrawl;

  FailureDetail({
    this.crashed,
    this.deviceOutOfMemory,
    this.failedRoboscript,
    this.notInstalled,
    this.otherNativeCrash,
    this.timedOut,
    this.unableToCrawl,
  });

  FailureDetail.fromJson(core.Map _json)
      : this(
          crashed: _json.containsKey('crashed')
              ? _json['crashed'] as core.bool
              : null,
          deviceOutOfMemory: _json.containsKey('deviceOutOfMemory')
              ? _json['deviceOutOfMemory'] as core.bool
              : null,
          failedRoboscript: _json.containsKey('failedRoboscript')
              ? _json['failedRoboscript'] as core.bool
              : null,
          notInstalled: _json.containsKey('notInstalled')
              ? _json['notInstalled'] as core.bool
              : null,
          otherNativeCrash: _json.containsKey('otherNativeCrash')
              ? _json['otherNativeCrash'] as core.bool
              : null,
          timedOut: _json.containsKey('timedOut')
              ? _json['timedOut'] as core.bool
              : null,
          unableToCrawl: _json.containsKey('unableToCrawl')
              ? _json['unableToCrawl'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crashed != null) 'crashed': crashed!,
        if (deviceOutOfMemory != null) 'deviceOutOfMemory': deviceOutOfMemory!,
        if (failedRoboscript != null) 'failedRoboscript': failedRoboscript!,
        if (notInstalled != null) 'notInstalled': notInstalled!,
        if (otherNativeCrash != null) 'otherNativeCrash': otherNativeCrash!,
        if (timedOut != null) 'timedOut': timedOut!,
        if (unableToCrawl != null) 'unableToCrawl': unableToCrawl!,
      };
}

/// Additional details for a fatal exception.
class FatalException {
  /// The stack trace of the fatal exception.
  ///
  /// Optional.
  StackTrace? stackTrace;

  FatalException({
    this.stackTrace,
  });

  FatalException.fromJson(core.Map _json)
      : this(
          stackTrace: _json.containsKey('stackTrace')
              ? StackTrace.fromJson(
                  _json['stackTrace'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stackTrace != null) 'stackTrace': stackTrace!,
      };
}

/// A reference to a file.
class FileReference {
  /// The URI of a file stored in Google Cloud Storage.
  ///
  /// For example: http://storage.googleapis.com/mybucket/path/to/test.xml or in
  /// gsutil format: gs://mybucket/path/to/test.xml with version-specific info,
  /// gs://mybucket/path/to/test.xml#1360383693690000 An INVALID_ARGUMENT error
  /// will be returned if the URI format is not supported. - In response: always
  /// set - In create/update request: always set
  core.String? fileUri;

  FileReference({
    this.fileUri,
  });

  FileReference.fromJson(core.Map _json)
      : this(
          fileUri: _json.containsKey('fileUri')
              ? _json['fileUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileUri != null) 'fileUri': fileUri!,
      };
}

/// Graphics statistics for the App.
///
/// The information is collected from 'adb shell dumpsys graphicsstats'. For
/// more info see:
/// https://developer.android.com/training/testing/performance.html Statistics
/// will only be present for API 23+.
class GraphicsStats {
  /// Histogram of frame render times.
  ///
  /// There should be 154 buckets ranging from \[5ms, 6ms) to \[4950ms,
  /// infinity)
  core.List<GraphicsStatsBucket>? buckets;

  /// Total "high input latency" events.
  core.String? highInputLatencyCount;

  /// Total frames with slow render time.
  ///
  /// Should be <= total_frames.
  core.String? jankyFrames;

  /// Total "missed vsync" events.
  core.String? missedVsyncCount;

  /// 50th percentile frame render time in milliseconds.
  core.String? p50Millis;

  /// 90th percentile frame render time in milliseconds.
  core.String? p90Millis;

  /// 95th percentile frame render time in milliseconds.
  core.String? p95Millis;

  /// 99th percentile frame render time in milliseconds.
  core.String? p99Millis;

  /// Total "slow bitmap upload" events.
  core.String? slowBitmapUploadCount;

  /// Total "slow draw" events.
  core.String? slowDrawCount;

  /// Total "slow UI thread" events.
  core.String? slowUiThreadCount;

  /// Total frames rendered by package.
  core.String? totalFrames;

  GraphicsStats({
    this.buckets,
    this.highInputLatencyCount,
    this.jankyFrames,
    this.missedVsyncCount,
    this.p50Millis,
    this.p90Millis,
    this.p95Millis,
    this.p99Millis,
    this.slowBitmapUploadCount,
    this.slowDrawCount,
    this.slowUiThreadCount,
    this.totalFrames,
  });

  GraphicsStats.fromJson(core.Map _json)
      : this(
          buckets: _json.containsKey('buckets')
              ? (_json['buckets'] as core.List)
                  .map((value) => GraphicsStatsBucket.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          highInputLatencyCount: _json.containsKey('highInputLatencyCount')
              ? _json['highInputLatencyCount'] as core.String
              : null,
          jankyFrames: _json.containsKey('jankyFrames')
              ? _json['jankyFrames'] as core.String
              : null,
          missedVsyncCount: _json.containsKey('missedVsyncCount')
              ? _json['missedVsyncCount'] as core.String
              : null,
          p50Millis: _json.containsKey('p50Millis')
              ? _json['p50Millis'] as core.String
              : null,
          p90Millis: _json.containsKey('p90Millis')
              ? _json['p90Millis'] as core.String
              : null,
          p95Millis: _json.containsKey('p95Millis')
              ? _json['p95Millis'] as core.String
              : null,
          p99Millis: _json.containsKey('p99Millis')
              ? _json['p99Millis'] as core.String
              : null,
          slowBitmapUploadCount: _json.containsKey('slowBitmapUploadCount')
              ? _json['slowBitmapUploadCount'] as core.String
              : null,
          slowDrawCount: _json.containsKey('slowDrawCount')
              ? _json['slowDrawCount'] as core.String
              : null,
          slowUiThreadCount: _json.containsKey('slowUiThreadCount')
              ? _json['slowUiThreadCount'] as core.String
              : null,
          totalFrames: _json.containsKey('totalFrames')
              ? _json['totalFrames'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buckets != null) 'buckets': buckets!,
        if (highInputLatencyCount != null)
          'highInputLatencyCount': highInputLatencyCount!,
        if (jankyFrames != null) 'jankyFrames': jankyFrames!,
        if (missedVsyncCount != null) 'missedVsyncCount': missedVsyncCount!,
        if (p50Millis != null) 'p50Millis': p50Millis!,
        if (p90Millis != null) 'p90Millis': p90Millis!,
        if (p95Millis != null) 'p95Millis': p95Millis!,
        if (p99Millis != null) 'p99Millis': p99Millis!,
        if (slowBitmapUploadCount != null)
          'slowBitmapUploadCount': slowBitmapUploadCount!,
        if (slowDrawCount != null) 'slowDrawCount': slowDrawCount!,
        if (slowUiThreadCount != null) 'slowUiThreadCount': slowUiThreadCount!,
        if (totalFrames != null) 'totalFrames': totalFrames!,
      };
}

class GraphicsStatsBucket {
  /// Number of frames in the bucket.
  core.String? frameCount;

  /// Lower bound of render time in milliseconds.
  core.String? renderMillis;

  GraphicsStatsBucket({
    this.frameCount,
    this.renderMillis,
  });

  GraphicsStatsBucket.fromJson(core.Map _json)
      : this(
          frameCount: _json.containsKey('frameCount')
              ? _json['frameCount'] as core.String
              : null,
          renderMillis: _json.containsKey('renderMillis')
              ? _json['renderMillis'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frameCount != null) 'frameCount': frameCount!,
        if (renderMillis != null) 'renderMillis': renderMillis!,
      };
}

/// A History represents a sorted list of Executions ordered by the
/// start_timestamp_millis field (descending).
///
/// It can be used to group all the Executions of a continuous build. Note that
/// the ordering only operates on one-dimension. If a repository has multiple
/// branches, it means that multiple histories will need to be used in order to
/// order Executions per branch.
class History {
  /// A short human-readable (plain text) name to display in the UI.
  ///
  /// Maximum of 100 characters. - In response: present if set during create. -
  /// In create request: optional
  core.String? displayName;

  /// A unique identifier within a project for this History.
  ///
  /// Returns INVALID_ARGUMENT if this field is set or overwritten by the
  /// caller. - In response always set - In create request: never set
  core.String? historyId;

  /// A name to uniquely identify a history within a project.
  ///
  /// Maximum of 200 characters. - In response always set - In create request:
  /// always set
  core.String? name;

  /// The platform of the test history.
  ///
  /// - In response: always set. Returns the platform of the last execution if
  /// unknown.
  /// Possible string values are:
  /// - "unknownPlatform"
  /// - "android"
  /// - "ios"
  core.String? testPlatform;

  History({
    this.displayName,
    this.historyId,
    this.name,
    this.testPlatform,
  });

  History.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          historyId: _json.containsKey('historyId')
              ? _json['historyId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          testPlatform: _json.containsKey('testPlatform')
              ? _json['testPlatform'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (historyId != null) 'historyId': historyId!,
        if (name != null) 'name': name!,
        if (testPlatform != null) 'testPlatform': testPlatform!,
      };
}

/// An image, with a link to the main image and a thumbnail.
class Image {
  /// An error explaining why the thumbnail could not be rendered.
  Status? error;

  /// A reference to the full-size, original image.
  ///
  /// This is the same as the tool_outputs entry for the image under its Step.
  /// Always set.
  ToolOutputReference? sourceImage;

  /// The step to which the image is attached.
  ///
  /// Always set.
  core.String? stepId;

  /// The thumbnail.
  Thumbnail? thumbnail;

  Image({
    this.error,
    this.sourceImage,
    this.stepId,
    this.thumbnail,
  });

  Image.fromJson(core.Map _json)
      : this(
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceImage: _json.containsKey('sourceImage')
              ? ToolOutputReference.fromJson(
                  _json['sourceImage'] as core.Map<core.String, core.dynamic>)
              : null,
          stepId: _json.containsKey('stepId')
              ? _json['stepId'] as core.String
              : null,
          thumbnail: _json.containsKey('thumbnail')
              ? Thumbnail.fromJson(
                  _json['thumbnail'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (sourceImage != null) 'sourceImage': sourceImage!,
        if (stepId != null) 'stepId': stepId!,
        if (thumbnail != null) 'thumbnail': thumbnail!,
      };
}

/// Additional details of in-app purchases encountered during the crawl.
class InAppPurchasesFound {
  /// The total number of in-app purchases flows explored: how many times the
  /// robo tries to buy a SKU.
  core.int? inAppPurchasesFlowsExplored;

  /// The total number of in-app purchases flows started.
  core.int? inAppPurchasesFlowsStarted;

  InAppPurchasesFound({
    this.inAppPurchasesFlowsExplored,
    this.inAppPurchasesFlowsStarted,
  });

  InAppPurchasesFound.fromJson(core.Map _json)
      : this(
          inAppPurchasesFlowsExplored:
              _json.containsKey('inAppPurchasesFlowsExplored')
                  ? _json['inAppPurchasesFlowsExplored'] as core.int
                  : null,
          inAppPurchasesFlowsStarted:
              _json.containsKey('inAppPurchasesFlowsStarted')
                  ? _json['inAppPurchasesFlowsStarted'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inAppPurchasesFlowsExplored != null)
          'inAppPurchasesFlowsExplored': inAppPurchasesFlowsExplored!,
        if (inAppPurchasesFlowsStarted != null)
          'inAppPurchasesFlowsStarted': inAppPurchasesFlowsStarted!,
      };
}

/// Details for an outcome with an INCONCLUSIVE outcome summary.
class InconclusiveDetail {
  /// If the end user aborted the test execution before a pass or fail could be
  /// determined.
  ///
  /// For example, the user pressed ctrl-c which sent a kill signal to the test
  /// runner while the test was running.
  core.bool? abortedByUser;

  /// If results are being provided to the user in certain cases of
  /// infrastructure failures
  core.bool? hasErrorLogs;

  /// If the test runner could not determine success or failure because the test
  /// depends on a component other than the system under test which failed.
  ///
  /// For example, a mobile test requires provisioning a device where the test
  /// executes, and that provisioning can fail.
  core.bool? infrastructureFailure;

  InconclusiveDetail({
    this.abortedByUser,
    this.hasErrorLogs,
    this.infrastructureFailure,
  });

  InconclusiveDetail.fromJson(core.Map _json)
      : this(
          abortedByUser: _json.containsKey('abortedByUser')
              ? _json['abortedByUser'] as core.bool
              : null,
          hasErrorLogs: _json.containsKey('hasErrorLogs')
              ? _json['hasErrorLogs'] as core.bool
              : null,
          infrastructureFailure: _json.containsKey('infrastructureFailure')
              ? _json['infrastructureFailure'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (abortedByUser != null) 'abortedByUser': abortedByUser!,
        if (hasErrorLogs != null) 'hasErrorLogs': hasErrorLogs!,
        if (infrastructureFailure != null)
          'infrastructureFailure': infrastructureFailure!,
      };
}

/// Step Id and outcome of each individual step that was run as a group with
/// other steps with the same configuration.
class IndividualOutcome {
  /// Unique int given to each step.
  ///
  /// Ranges from 0(inclusive) to total number of steps(exclusive). The primary
  /// step is 0.
  core.int? multistepNumber;

  ///
  /// Possible string values are:
  /// - "unset" : Do not use. For proto versioning only.
  /// - "success" : The test matrix run was successful, for instance: - All the
  /// test cases passed. - Robo did not detect a crash of the application under
  /// test.
  /// - "failure" : A run failed, for instance: - One or more test case failed.
  /// - A test timed out. - The application under test crashed.
  /// - "inconclusive" : Something unexpected happened. The run should still be
  /// considered unsuccessful but this is likely a transient problem and
  /// re-running the test might be successful.
  /// - "skipped" : All tests were skipped, for instance: - All device
  /// configurations were incompatible.
  /// - "flaky" : A group of steps that were run with the same configuration had
  /// both failure and success outcomes.
  core.String? outcomeSummary;

  /// How long it took for this step to run.
  Duration? runDuration;
  core.String? stepId;

  IndividualOutcome({
    this.multistepNumber,
    this.outcomeSummary,
    this.runDuration,
    this.stepId,
  });

  IndividualOutcome.fromJson(core.Map _json)
      : this(
          multistepNumber: _json.containsKey('multistepNumber')
              ? _json['multistepNumber'] as core.int
              : null,
          outcomeSummary: _json.containsKey('outcomeSummary')
              ? _json['outcomeSummary'] as core.String
              : null,
          runDuration: _json.containsKey('runDuration')
              ? Duration.fromJson(
                  _json['runDuration'] as core.Map<core.String, core.dynamic>)
              : null,
          stepId: _json.containsKey('stepId')
              ? _json['stepId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (multistepNumber != null) 'multistepNumber': multistepNumber!,
        if (outcomeSummary != null) 'outcomeSummary': outcomeSummary!,
        if (runDuration != null) 'runDuration': runDuration!,
        if (stepId != null) 'stepId': stepId!,
      };
}

/// A warning that Robo did not crawl potentially important parts of the app.
typedef InsufficientCoverage = $Empty;

/// Additional details for an iOS app crash.
class IosAppCrashed {
  /// The stack trace, if one is available.
  ///
  /// Optional.
  StackTrace? stackTrace;

  IosAppCrashed({
    this.stackTrace,
  });

  IosAppCrashed.fromJson(core.Map _json)
      : this(
          stackTrace: _json.containsKey('stackTrace')
              ? StackTrace.fromJson(
                  _json['stackTrace'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stackTrace != null) 'stackTrace': stackTrace!,
      };
}

/// iOS app information
class IosAppInfo {
  /// The name of the app.
  ///
  /// Required
  core.String? name;

  IosAppInfo({
    this.name,
  });

  IosAppInfo.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A Robo test for an iOS application.
typedef IosRoboTest = $Empty;

/// A iOS mobile test specification
class IosTest {
  /// Information about the application under test.
  IosAppInfo? iosAppInfo;

  /// An iOS Robo test.
  IosRoboTest? iosRoboTest;

  /// An iOS test loop.
  IosTestLoop? iosTestLoop;

  /// An iOS XCTest.
  IosXcTest? iosXcTest;

  /// Max time a test is allowed to run before it is automatically cancelled.
  Duration? testTimeout;

  IosTest({
    this.iosAppInfo,
    this.iosRoboTest,
    this.iosTestLoop,
    this.iosXcTest,
    this.testTimeout,
  });

  IosTest.fromJson(core.Map _json)
      : this(
          iosAppInfo: _json.containsKey('iosAppInfo')
              ? IosAppInfo.fromJson(
                  _json['iosAppInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          iosRoboTest: _json.containsKey('iosRoboTest')
              ? IosRoboTest.fromJson(
                  _json['iosRoboTest'] as core.Map<core.String, core.dynamic>)
              : null,
          iosTestLoop: _json.containsKey('iosTestLoop')
              ? IosTestLoop.fromJson(
                  _json['iosTestLoop'] as core.Map<core.String, core.dynamic>)
              : null,
          iosXcTest: _json.containsKey('iosXcTest')
              ? IosXcTest.fromJson(
                  _json['iosXcTest'] as core.Map<core.String, core.dynamic>)
              : null,
          testTimeout: _json.containsKey('testTimeout')
              ? Duration.fromJson(
                  _json['testTimeout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iosAppInfo != null) 'iosAppInfo': iosAppInfo!,
        if (iosRoboTest != null) 'iosRoboTest': iosRoboTest!,
        if (iosTestLoop != null) 'iosTestLoop': iosTestLoop!,
        if (iosXcTest != null) 'iosXcTest': iosXcTest!,
        if (testTimeout != null) 'testTimeout': testTimeout!,
      };
}

/// A game loop test of an iOS application.
class IosTestLoop {
  /// Bundle ID of the app.
  core.String? bundleId;

  IosTestLoop({
    this.bundleId,
  });

  IosTestLoop.fromJson(core.Map _json)
      : this(
          bundleId: _json.containsKey('bundleId')
              ? _json['bundleId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleId != null) 'bundleId': bundleId!,
      };
}

/// A test of an iOS application that uses the XCTest framework.
class IosXcTest {
  /// Bundle ID of the app.
  core.String? bundleId;

  /// Xcode version that the test was run with.
  core.String? xcodeVersion;

  IosXcTest({
    this.bundleId,
    this.xcodeVersion,
  });

  IosXcTest.fromJson(core.Map _json)
      : this(
          bundleId: _json.containsKey('bundleId')
              ? _json['bundleId'] as core.String
              : null,
          xcodeVersion: _json.containsKey('xcodeVersion')
              ? _json['xcodeVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleId != null) 'bundleId': bundleId!,
        if (xcodeVersion != null) 'xcodeVersion': xcodeVersion!,
      };
}

/// Failed to find the launcher activity of an app.
typedef LauncherActivityNotFound = $Empty;

/// Response message for EnvironmentService.ListEnvironments.
class ListEnvironmentsResponse {
  /// Environments.
  ///
  /// Always set.
  core.List<Environment>? environments;

  /// A Execution id Always set.
  core.String? executionId;

  /// A History id.
  ///
  /// Always set.
  core.String? historyId;

  /// A continuation token to resume the query at the next item.
  ///
  /// Will only be set if there are more Environments to fetch.
  core.String? nextPageToken;

  /// A Project id.
  ///
  /// Always set.
  core.String? projectId;

  ListEnvironmentsResponse({
    this.environments,
    this.executionId,
    this.historyId,
    this.nextPageToken,
    this.projectId,
  });

  ListEnvironmentsResponse.fromJson(core.Map _json)
      : this(
          environments: _json.containsKey('environments')
              ? (_json['environments'] as core.List)
                  .map((value) => Environment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          executionId: _json.containsKey('executionId')
              ? _json['executionId'] as core.String
              : null,
          historyId: _json.containsKey('historyId')
              ? _json['historyId'] as core.String
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environments != null) 'environments': environments!,
        if (executionId != null) 'executionId': executionId!,
        if (historyId != null) 'historyId': historyId!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (projectId != null) 'projectId': projectId!,
      };
}

class ListExecutionsResponse {
  /// Executions.
  ///
  /// Always set.
  core.List<Execution>? executions;

  /// A continuation token to resume the query at the next item.
  ///
  /// Will only be set if there are more Executions to fetch.
  core.String? nextPageToken;

  ListExecutionsResponse({
    this.executions,
    this.nextPageToken,
  });

  ListExecutionsResponse.fromJson(core.Map _json)
      : this(
          executions: _json.containsKey('executions')
              ? (_json['executions'] as core.List)
                  .map((value) => Execution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executions != null) 'executions': executions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for HistoryService.List
class ListHistoriesResponse {
  /// Histories.
  core.List<History>? histories;

  /// A continuation token to resume the query at the next item.
  ///
  /// Will only be set if there are more histories to fetch. Tokens are valid
  /// for up to one hour from the time of the first list request. For instance,
  /// if you make a list request at 1PM and use the token from this first
  /// request 10 minutes later, the token from this second response will only be
  /// valid for 50 minutes.
  core.String? nextPageToken;

  ListHistoriesResponse({
    this.histories,
    this.nextPageToken,
  });

  ListHistoriesResponse.fromJson(core.Map _json)
      : this(
          histories: _json.containsKey('histories')
              ? (_json['histories'] as core.List)
                  .map((value) => History.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (histories != null) 'histories': histories!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListPerfSampleSeriesResponse {
  /// The resulting PerfSampleSeries sorted by id
  core.List<PerfSampleSeries>? perfSampleSeries;

  ListPerfSampleSeriesResponse({
    this.perfSampleSeries,
  });

  ListPerfSampleSeriesResponse.fromJson(core.Map _json)
      : this(
          perfSampleSeries: _json.containsKey('perfSampleSeries')
              ? (_json['perfSampleSeries'] as core.List)
                  .map((value) => PerfSampleSeries.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (perfSampleSeries != null) 'perfSampleSeries': perfSampleSeries!,
      };
}

class ListPerfSamplesResponse {
  /// Optional, returned if result size exceeds the page size specified in the
  /// request (or the default page size, 500, if unspecified).
  ///
  /// It indicates the last sample timestamp to be used as page_token in
  /// subsequent request
  core.String? nextPageToken;
  core.List<PerfSample>? perfSamples;

  ListPerfSamplesResponse({
    this.nextPageToken,
    this.perfSamples,
  });

  ListPerfSamplesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          perfSamples: _json.containsKey('perfSamples')
              ? (_json['perfSamples'] as core.List)
                  .map((value) => PerfSample.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (perfSamples != null) 'perfSamples': perfSamples!,
      };
}

class ListScreenshotClustersResponse {
  /// The set of clusters associated with an execution Always set
  core.List<ScreenshotCluster>? clusters;

  ListScreenshotClustersResponse({
    this.clusters,
  });

  ListScreenshotClustersResponse.fromJson(core.Map _json)
      : this(
          clusters: _json.containsKey('clusters')
              ? (_json['clusters'] as core.List)
                  .map((value) => ScreenshotCluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusters != null) 'clusters': clusters!,
      };
}

/// Response message for AccessibilityService.ListStepAccessibilityClusters.
class ListStepAccessibilityClustersResponse {
  /// A sequence of accessibility suggestions, grouped into clusters.
  ///
  /// Within the sequence, clusters that belong to the same SuggestionCategory
  /// should be adjacent. Within each category, clusters should be ordered by
  /// their SuggestionPriority (ERRORs first). The categories should be ordered
  /// by their highest priority cluster.
  core.List<SuggestionClusterProto>? clusters;

  /// A full resource name of the step.
  ///
  /// For example, projects/my-project/histories/bh.1234567890abcdef/executions/
  /// 1234567890123456789/steps/bs.1234567890abcdef Always presents.
  core.String? name;

  ListStepAccessibilityClustersResponse({
    this.clusters,
    this.name,
  });

  ListStepAccessibilityClustersResponse.fromJson(core.Map _json)
      : this(
          clusters: _json.containsKey('clusters')
              ? (_json['clusters'] as core.List)
                  .map((value) => SuggestionClusterProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusters != null) 'clusters': clusters!,
        if (name != null) 'name': name!,
      };
}

/// A response containing the thumbnails in a step.
class ListStepThumbnailsResponse {
  /// A continuation token to resume the query at the next item.
  ///
  /// If set, indicates that there are more thumbnails to read, by calling list
  /// again with this value in the page_token field.
  core.String? nextPageToken;

  /// A list of image data.
  ///
  /// Images are returned in a deterministic order; they are ordered by these
  /// factors, in order of importance: * First, by their associated test case.
  /// Images without a test case are considered greater than images with one. *
  /// Second, by their creation time. Images without a creation time are greater
  /// than images with one. * Third, by the order in which they were added to
  /// the step (by calls to CreateStep or UpdateStep).
  core.List<Image>? thumbnails;

  ListStepThumbnailsResponse({
    this.nextPageToken,
    this.thumbnails,
  });

  ListStepThumbnailsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          thumbnails: _json.containsKey('thumbnails')
              ? (_json['thumbnails'] as core.List)
                  .map((value) => Image.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (thumbnails != null) 'thumbnails': thumbnails!,
      };
}

/// Response message for StepService.List.
class ListStepsResponse {
  /// A continuation token to resume the query at the next item.
  ///
  /// If set, indicates that there are more steps to read, by calling list again
  /// with this value in the page_token field.
  core.String? nextPageToken;

  /// Steps.
  core.List<Step>? steps;

  ListStepsResponse({
    this.nextPageToken,
    this.steps,
  });

  ListStepsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          steps: _json.containsKey('steps')
              ? (_json['steps'] as core.List)
                  .map((value) => Step.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (steps != null) 'steps': steps!,
      };
}

/// Response message for StepService.ListTestCases.
class ListTestCasesResponse {
  core.String? nextPageToken;

  /// List of test cases.
  core.List<TestCase>? testCases;

  ListTestCasesResponse({
    this.nextPageToken,
    this.testCases,
  });

  ListTestCasesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          testCases: _json.containsKey('testCases')
              ? (_json['testCases'] as core.List)
                  .map((value) => TestCase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (testCases != null) 'testCases': testCases!,
      };
}

/// A warning that there were issues in logcat collection.
typedef LogcatCollectionError = $Empty;

/// One dimension of the matrix of different runs of a step.
typedef MatrixDimensionDefinition = $Empty;

class MemoryInfo {
  /// Maximum memory that can be allocated to the process in KiB
  core.String? memoryCapInKibibyte;

  /// Total memory available on the device in KiB
  core.String? memoryTotalInKibibyte;

  MemoryInfo({
    this.memoryCapInKibibyte,
    this.memoryTotalInKibibyte,
  });

  MemoryInfo.fromJson(core.Map _json)
      : this(
          memoryCapInKibibyte: _json.containsKey('memoryCapInKibibyte')
              ? _json['memoryCapInKibibyte'] as core.String
              : null,
          memoryTotalInKibibyte: _json.containsKey('memoryTotalInKibibyte')
              ? _json['memoryTotalInKibibyte'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memoryCapInKibibyte != null)
          'memoryCapInKibibyte': memoryCapInKibibyte!,
        if (memoryTotalInKibibyte != null)
          'memoryTotalInKibibyte': memoryTotalInKibibyte!,
      };
}

/// Merged test result for environment.
///
/// If the environment has only one step (no reruns or shards), then the merged
/// result is the same as the step result. If the environment has multiple
/// shards and/or reruns, then the results of shards and reruns that belong to
/// the same environment are merged into one environment result.
class MergedResult {
  /// Outcome of the resource
  Outcome? outcome;

  /// State of the resource
  /// Possible string values are:
  /// - "unknownState" : Should never be in this state. Exists for proto
  /// deserialization backward compatibility.
  /// - "pending" : The Execution/Step is created, ready to run, but not running
  /// yet. If an Execution/Step is created without initial state, it is assumed
  /// that the Execution/Step is in PENDING state.
  /// - "inProgress" : The Execution/Step is in progress.
  /// - "complete" : The finalized, immutable state. Steps/Executions in this
  /// state cannot be modified.
  core.String? state;

  /// The combined and rolled-up result of each test suite that was run as part
  /// of this environment.
  ///
  /// Combining: When the test cases from a suite are run in different steps
  /// (sharding), the results are added back together in one overview. (e.g., if
  /// shard1 has 2 failures and shard2 has 1 failure than the overview
  /// failure_count = 3). Rollup: When test cases from the same suite are run
  /// multiple times (flaky), the results are combined (e.g., if testcase1.run1
  /// fails, testcase1.run2 passes, and both testcase2.run1 and testcase2.run2
  /// fail then the overview flaky_count = 1 and failure_count = 1).
  core.List<TestSuiteOverview>? testSuiteOverviews;

  MergedResult({
    this.outcome,
    this.state,
    this.testSuiteOverviews,
  });

  MergedResult.fromJson(core.Map _json)
      : this(
          outcome: _json.containsKey('outcome')
              ? Outcome.fromJson(
                  _json['outcome'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          testSuiteOverviews: _json.containsKey('testSuiteOverviews')
              ? (_json['testSuiteOverviews'] as core.List)
                  .map((value) => TestSuiteOverview.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outcome != null) 'outcome': outcome!,
        if (state != null) 'state': state!,
        if (testSuiteOverviews != null)
          'testSuiteOverviews': testSuiteOverviews!,
      };
}

/// Details when multiple steps are run with the same configuration as a group.
class MultiStep {
  /// Unique int given to each step.
  ///
  /// Ranges from 0(inclusive) to total number of steps(exclusive). The primary
  /// step is 0.
  core.int? multistepNumber;

  /// Present if it is a primary (original) step.
  PrimaryStep? primaryStep;

  /// Step Id of the primary (original) step, which might be this step.
  core.String? primaryStepId;

  MultiStep({
    this.multistepNumber,
    this.primaryStep,
    this.primaryStepId,
  });

  MultiStep.fromJson(core.Map _json)
      : this(
          multistepNumber: _json.containsKey('multistepNumber')
              ? _json['multistepNumber'] as core.int
              : null,
          primaryStep: _json.containsKey('primaryStep')
              ? PrimaryStep.fromJson(
                  _json['primaryStep'] as core.Map<core.String, core.dynamic>)
              : null,
          primaryStepId: _json.containsKey('primaryStepId')
              ? _json['primaryStepId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (multistepNumber != null) 'multistepNumber': multistepNumber!,
        if (primaryStep != null) 'primaryStep': primaryStep!,
        if (primaryStepId != null) 'primaryStepId': primaryStepId!,
      };
}

/// Additional details for a native crash.
class NativeCrash {
  /// The stack trace of the native crash.
  ///
  /// Optional.
  StackTrace? stackTrace;

  NativeCrash({
    this.stackTrace,
  });

  NativeCrash.fromJson(core.Map _json)
      : this(
          stackTrace: _json.containsKey('stackTrace')
              ? StackTrace.fromJson(
                  _json['stackTrace'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stackTrace != null) 'stackTrace': stackTrace!,
      };
}

/// A non-sdk API and examples of it being called along with other metadata See
/// https://developer.android.com/distribute/best-practices/develop/restrictions-non-sdk-interfaces
class NonSdkApi {
  /// The signature of the Non-SDK API
  core.String? apiSignature;

  /// Example stack traces of this API being called.
  core.List<core.String>? exampleStackTraces;

  /// Optional debugging insights for non-SDK API violations.
  core.List<NonSdkApiInsight>? insights;

  /// The total number of times this API was observed to have been called.
  core.int? invocationCount;

  /// Which list this API appears on
  /// Possible string values are:
  /// - "NONE"
  /// - "WHITE"
  /// - "BLACK"
  /// - "GREY"
  /// - "GREY_MAX_O"
  /// - "GREY_MAX_P"
  /// - "GREY_MAX_Q"
  /// - "GREY_MAX_R"
  core.String? list;

  NonSdkApi({
    this.apiSignature,
    this.exampleStackTraces,
    this.insights,
    this.invocationCount,
    this.list,
  });

  NonSdkApi.fromJson(core.Map _json)
      : this(
          apiSignature: _json.containsKey('apiSignature')
              ? _json['apiSignature'] as core.String
              : null,
          exampleStackTraces: _json.containsKey('exampleStackTraces')
              ? (_json['exampleStackTraces'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          insights: _json.containsKey('insights')
              ? (_json['insights'] as core.List)
                  .map((value) => NonSdkApiInsight.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          invocationCount: _json.containsKey('invocationCount')
              ? _json['invocationCount'] as core.int
              : null,
          list: _json.containsKey('list') ? _json['list'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiSignature != null) 'apiSignature': apiSignature!,
        if (exampleStackTraces != null)
          'exampleStackTraces': exampleStackTraces!,
        if (insights != null) 'insights': insights!,
        if (invocationCount != null) 'invocationCount': invocationCount!,
        if (list != null) 'list': list!,
      };
}

/// Non-SDK API insights (to address debugging solutions).
class NonSdkApiInsight {
  /// Optional sample stack traces, for which this insight applies (there should
  /// be at least one).
  core.List<core.String>? exampleTraceMessages;

  /// A unique ID, to be used for determining the effectiveness of this
  /// particular insight in the context of a matcher.
  ///
  /// (required)
  core.String? matcherId;

  /// An insight indicating that the hidden API usage originates from a
  /// Google-provided library.
  PendingGoogleUpdateInsight? pendingGoogleUpdateInsight;

  /// An insight indicating that the hidden API usage originates from the use of
  /// a library that needs to be upgraded.
  UpgradeInsight? upgradeInsight;

  NonSdkApiInsight({
    this.exampleTraceMessages,
    this.matcherId,
    this.pendingGoogleUpdateInsight,
    this.upgradeInsight,
  });

  NonSdkApiInsight.fromJson(core.Map _json)
      : this(
          exampleTraceMessages: _json.containsKey('exampleTraceMessages')
              ? (_json['exampleTraceMessages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          matcherId: _json.containsKey('matcherId')
              ? _json['matcherId'] as core.String
              : null,
          pendingGoogleUpdateInsight:
              _json.containsKey('pendingGoogleUpdateInsight')
                  ? PendingGoogleUpdateInsight.fromJson(
                      _json['pendingGoogleUpdateInsight']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          upgradeInsight: _json.containsKey('upgradeInsight')
              ? UpgradeInsight.fromJson(_json['upgradeInsight']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exampleTraceMessages != null)
          'exampleTraceMessages': exampleTraceMessages!,
        if (matcherId != null) 'matcherId': matcherId!,
        if (pendingGoogleUpdateInsight != null)
          'pendingGoogleUpdateInsight': pendingGoogleUpdateInsight!,
        if (upgradeInsight != null) 'upgradeInsight': upgradeInsight!,
      };
}

/// Additional details for a non-sdk API usage violation.
class NonSdkApiUsageViolation {
  /// Signatures of a subset of those hidden API's.
  core.List<core.String>? apiSignatures;

  /// Total number of unique hidden API's accessed.
  core.int? uniqueApis;

  NonSdkApiUsageViolation({
    this.apiSignatures,
    this.uniqueApis,
  });

  NonSdkApiUsageViolation.fromJson(core.Map _json)
      : this(
          apiSignatures: _json.containsKey('apiSignatures')
              ? (_json['apiSignatures'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          uniqueApis: _json.containsKey('uniqueApis')
              ? _json['uniqueApis'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiSignatures != null) 'apiSignatures': apiSignatures!,
        if (uniqueApis != null) 'uniqueApis': uniqueApis!,
      };
}

/// Contains a summary and examples of non-sdk API usage violations.
class NonSdkApiUsageViolationReport {
  /// Examples of the detected API usages.
  core.List<NonSdkApi>? exampleApis;

  /// Minimum API level required for the application to run.
  core.int? minSdkVersion;

  /// Specifies the API Level on which the application is designed to run.
  core.int? targetSdkVersion;

  /// Total number of unique Non-SDK API's accessed.
  core.int? uniqueApis;

  NonSdkApiUsageViolationReport({
    this.exampleApis,
    this.minSdkVersion,
    this.targetSdkVersion,
    this.uniqueApis,
  });

  NonSdkApiUsageViolationReport.fromJson(core.Map _json)
      : this(
          exampleApis: _json.containsKey('exampleApis')
              ? (_json['exampleApis'] as core.List)
                  .map((value) => NonSdkApi.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          minSdkVersion: _json.containsKey('minSdkVersion')
              ? _json['minSdkVersion'] as core.int
              : null,
          targetSdkVersion: _json.containsKey('targetSdkVersion')
              ? _json['targetSdkVersion'] as core.int
              : null,
          uniqueApis: _json.containsKey('uniqueApis')
              ? _json['uniqueApis'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exampleApis != null) 'exampleApis': exampleApis!,
        if (minSdkVersion != null) 'minSdkVersion': minSdkVersion!,
        if (targetSdkVersion != null) 'targetSdkVersion': targetSdkVersion!,
        if (uniqueApis != null) 'uniqueApis': uniqueApis!,
      };
}

/// Interprets a result so that humans and machines can act on it.
class Outcome {
  /// More information about a FAILURE outcome.
  ///
  /// Returns INVALID_ARGUMENT if this field is set but the summary is not
  /// FAILURE. Optional
  FailureDetail? failureDetail;

  /// More information about an INCONCLUSIVE outcome.
  ///
  /// Returns INVALID_ARGUMENT if this field is set but the summary is not
  /// INCONCLUSIVE. Optional
  InconclusiveDetail? inconclusiveDetail;

  /// More information about a SKIPPED outcome.
  ///
  /// Returns INVALID_ARGUMENT if this field is set but the summary is not
  /// SKIPPED. Optional
  SkippedDetail? skippedDetail;

  /// More information about a SUCCESS outcome.
  ///
  /// Returns INVALID_ARGUMENT if this field is set but the summary is not
  /// SUCCESS. Optional
  SuccessDetail? successDetail;

  /// The simplest way to interpret a result.
  ///
  /// Required
  /// Possible string values are:
  /// - "unset" : Do not use. For proto versioning only.
  /// - "success" : The test matrix run was successful, for instance: - All the
  /// test cases passed. - Robo did not detect a crash of the application under
  /// test.
  /// - "failure" : A run failed, for instance: - One or more test case failed.
  /// - A test timed out. - The application under test crashed.
  /// - "inconclusive" : Something unexpected happened. The run should still be
  /// considered unsuccessful but this is likely a transient problem and
  /// re-running the test might be successful.
  /// - "skipped" : All tests were skipped, for instance: - All device
  /// configurations were incompatible.
  /// - "flaky" : A group of steps that were run with the same configuration had
  /// both failure and success outcomes.
  core.String? summary;

  Outcome({
    this.failureDetail,
    this.inconclusiveDetail,
    this.skippedDetail,
    this.successDetail,
    this.summary,
  });

  Outcome.fromJson(core.Map _json)
      : this(
          failureDetail: _json.containsKey('failureDetail')
              ? FailureDetail.fromJson(
                  _json['failureDetail'] as core.Map<core.String, core.dynamic>)
              : null,
          inconclusiveDetail: _json.containsKey('inconclusiveDetail')
              ? InconclusiveDetail.fromJson(_json['inconclusiveDetail']
                  as core.Map<core.String, core.dynamic>)
              : null,
          skippedDetail: _json.containsKey('skippedDetail')
              ? SkippedDetail.fromJson(
                  _json['skippedDetail'] as core.Map<core.String, core.dynamic>)
              : null,
          successDetail: _json.containsKey('successDetail')
              ? SuccessDetail.fromJson(
                  _json['successDetail'] as core.Map<core.String, core.dynamic>)
              : null,
          summary: _json.containsKey('summary')
              ? _json['summary'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failureDetail != null) 'failureDetail': failureDetail!,
        if (inconclusiveDetail != null)
          'inconclusiveDetail': inconclusiveDetail!,
        if (skippedDetail != null) 'skippedDetail': skippedDetail!,
        if (successDetail != null) 'successDetail': successDetail!,
        if (summary != null) 'summary': summary!,
      };
}

/// A warning that Robo encountered a screen that has overlapping clickable
/// elements; this may indicate a potential UI issue.
class OverlappingUIElements {
  /// Resource names of the overlapping screen elements
  core.List<core.String>? resourceName;

  /// The screen id of the elements
  core.String? screenId;

  OverlappingUIElements({
    this.resourceName,
    this.screenId,
  });

  OverlappingUIElements.fromJson(core.Map _json)
      : this(
          resourceName: _json.containsKey('resourceName')
              ? (_json['resourceName'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          screenId: _json.containsKey('screenId')
              ? _json['screenId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
        if (screenId != null) 'screenId': screenId!,
      };
}

/// This insight indicates that the hidden API usage originates from a
/// Google-provided library.
///
/// Users need not take any action.
class PendingGoogleUpdateInsight {
  /// The name of the Google-provided library with the non-SDK API dependency.
  core.String? nameOfGoogleLibrary;

  PendingGoogleUpdateInsight({
    this.nameOfGoogleLibrary,
  });

  PendingGoogleUpdateInsight.fromJson(core.Map _json)
      : this(
          nameOfGoogleLibrary: _json.containsKey('nameOfGoogleLibrary')
              ? _json['nameOfGoogleLibrary'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nameOfGoogleLibrary != null)
          'nameOfGoogleLibrary': nameOfGoogleLibrary!,
      };
}

/// Encapsulates performance environment info
class PerfEnvironment {
  /// CPU related environment info
  CPUInfo? cpuInfo;

  /// Memory related environment info
  MemoryInfo? memoryInfo;

  PerfEnvironment({
    this.cpuInfo,
    this.memoryInfo,
  });

  PerfEnvironment.fromJson(core.Map _json)
      : this(
          cpuInfo: _json.containsKey('cpuInfo')
              ? CPUInfo.fromJson(
                  _json['cpuInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          memoryInfo: _json.containsKey('memoryInfo')
              ? MemoryInfo.fromJson(
                  _json['memoryInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuInfo != null) 'cpuInfo': cpuInfo!,
        if (memoryInfo != null) 'memoryInfo': memoryInfo!,
      };
}

/// A summary of perf metrics collected and performance environment info
class PerfMetricsSummary {
  AppStartTime? appStartTime;

  /// A tool results execution ID.
  ///
  /// @OutputOnly
  core.String? executionId;

  /// Graphics statistics for the entire run.
  ///
  /// Statistics are reset at the beginning of the run and collected at the end
  /// of the run.
  GraphicsStats? graphicsStats;

  /// A tool results history ID.
  ///
  /// @OutputOnly
  core.String? historyId;

  /// Describes the environment in which the performance metrics were collected
  PerfEnvironment? perfEnvironment;

  /// Set of resource collected
  core.List<core.String>? perfMetrics;

  /// The cloud project @OutputOnly
  core.String? projectId;

  /// A tool results step ID.
  ///
  /// @OutputOnly
  core.String? stepId;

  PerfMetricsSummary({
    this.appStartTime,
    this.executionId,
    this.graphicsStats,
    this.historyId,
    this.perfEnvironment,
    this.perfMetrics,
    this.projectId,
    this.stepId,
  });

  PerfMetricsSummary.fromJson(core.Map _json)
      : this(
          appStartTime: _json.containsKey('appStartTime')
              ? AppStartTime.fromJson(
                  _json['appStartTime'] as core.Map<core.String, core.dynamic>)
              : null,
          executionId: _json.containsKey('executionId')
              ? _json['executionId'] as core.String
              : null,
          graphicsStats: _json.containsKey('graphicsStats')
              ? GraphicsStats.fromJson(
                  _json['graphicsStats'] as core.Map<core.String, core.dynamic>)
              : null,
          historyId: _json.containsKey('historyId')
              ? _json['historyId'] as core.String
              : null,
          perfEnvironment: _json.containsKey('perfEnvironment')
              ? PerfEnvironment.fromJson(_json['perfEnvironment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          perfMetrics: _json.containsKey('perfMetrics')
              ? (_json['perfMetrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          stepId: _json.containsKey('stepId')
              ? _json['stepId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appStartTime != null) 'appStartTime': appStartTime!,
        if (executionId != null) 'executionId': executionId!,
        if (graphicsStats != null) 'graphicsStats': graphicsStats!,
        if (historyId != null) 'historyId': historyId!,
        if (perfEnvironment != null) 'perfEnvironment': perfEnvironment!,
        if (perfMetrics != null) 'perfMetrics': perfMetrics!,
        if (projectId != null) 'projectId': projectId!,
        if (stepId != null) 'stepId': stepId!,
      };
}

/// Resource representing a single performance measure or data point
class PerfSample {
  /// Timestamp of collection.
  Timestamp? sampleTime;

  /// Value observed
  core.double? value;

  PerfSample({
    this.sampleTime,
    this.value,
  });

  PerfSample.fromJson(core.Map _json)
      : this(
          sampleTime: _json.containsKey('sampleTime')
              ? Timestamp.fromJson(
                  _json['sampleTime'] as core.Map<core.String, core.dynamic>)
              : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sampleTime != null) 'sampleTime': sampleTime!,
        if (value != null) 'value': value!,
      };
}

/// Resource representing a collection of performance samples (or data points)
class PerfSampleSeries {
  /// Basic series represented by a line chart
  BasicPerfSampleSeries? basicPerfSampleSeries;

  /// A tool results execution ID.
  ///
  /// @OutputOnly
  core.String? executionId;

  /// A tool results history ID.
  ///
  /// @OutputOnly
  core.String? historyId;

  /// The cloud project @OutputOnly
  core.String? projectId;

  /// A sample series id @OutputOnly
  core.String? sampleSeriesId;

  /// A tool results step ID.
  ///
  /// @OutputOnly
  core.String? stepId;

  PerfSampleSeries({
    this.basicPerfSampleSeries,
    this.executionId,
    this.historyId,
    this.projectId,
    this.sampleSeriesId,
    this.stepId,
  });

  PerfSampleSeries.fromJson(core.Map _json)
      : this(
          basicPerfSampleSeries: _json.containsKey('basicPerfSampleSeries')
              ? BasicPerfSampleSeries.fromJson(_json['basicPerfSampleSeries']
                  as core.Map<core.String, core.dynamic>)
              : null,
          executionId: _json.containsKey('executionId')
              ? _json['executionId'] as core.String
              : null,
          historyId: _json.containsKey('historyId')
              ? _json['historyId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          sampleSeriesId: _json.containsKey('sampleSeriesId')
              ? _json['sampleSeriesId'] as core.String
              : null,
          stepId: _json.containsKey('stepId')
              ? _json['stepId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicPerfSampleSeries != null)
          'basicPerfSampleSeries': basicPerfSampleSeries!,
        if (executionId != null) 'executionId': executionId!,
        if (historyId != null) 'historyId': historyId!,
        if (projectId != null) 'projectId': projectId!,
        if (sampleSeriesId != null) 'sampleSeriesId': sampleSeriesId!,
        if (stepId != null) 'stepId': stepId!,
      };
}

/// A notification that Robo signed in with Google.
typedef PerformedGoogleLogin = $Empty;

/// A notification that Robo performed some monkey actions.
class PerformedMonkeyActions {
  /// The total number of monkey actions performed during the crawl.
  core.int? totalActions;

  PerformedMonkeyActions({
    this.totalActions,
  });

  PerformedMonkeyActions.fromJson(core.Map _json)
      : this(
          totalActions: _json.containsKey('totalActions')
              ? _json['totalActions'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalActions != null) 'totalActions': totalActions!,
      };
}

/// Stores rollup test status of multiple steps that were run as a group and
/// outcome of each individual step.
class PrimaryStep {
  /// Step Id and outcome of each individual step.
  core.List<IndividualOutcome>? individualOutcome;

  /// Rollup test status of multiple steps that were run with the same
  /// configuration as a group.
  /// Possible string values are:
  /// - "unset" : Do not use. For proto versioning only.
  /// - "success" : The test matrix run was successful, for instance: - All the
  /// test cases passed. - Robo did not detect a crash of the application under
  /// test.
  /// - "failure" : A run failed, for instance: - One or more test case failed.
  /// - A test timed out. - The application under test crashed.
  /// - "inconclusive" : Something unexpected happened. The run should still be
  /// considered unsuccessful but this is likely a transient problem and
  /// re-running the test might be successful.
  /// - "skipped" : All tests were skipped, for instance: - All device
  /// configurations were incompatible.
  /// - "flaky" : A group of steps that were run with the same configuration had
  /// both failure and success outcomes.
  core.String? rollUp;

  PrimaryStep({
    this.individualOutcome,
    this.rollUp,
  });

  PrimaryStep.fromJson(core.Map _json)
      : this(
          individualOutcome: _json.containsKey('individualOutcome')
              ? (_json['individualOutcome'] as core.List)
                  .map((value) => IndividualOutcome.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rollUp: _json.containsKey('rollUp')
              ? _json['rollUp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (individualOutcome != null) 'individualOutcome': individualOutcome!,
        if (rollUp != null) 'rollUp': rollUp!,
      };
}

/// Per-project settings for the Tool Results service.
class ProjectSettings {
  /// The name of the Google Cloud Storage bucket to which results are written.
  ///
  /// By default, this is unset. In update request: optional In response:
  /// optional
  core.String? defaultBucket;

  /// The name of the project's settings.
  ///
  /// Always of the form: projects/{project-id}/settings In update request:
  /// never set In response: always set
  core.String? name;

  ProjectSettings({
    this.defaultBucket,
    this.name,
  });

  ProjectSettings.fromJson(core.Map _json)
      : this(
          defaultBucket: _json.containsKey('defaultBucket')
              ? _json['defaultBucket'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultBucket != null) 'defaultBucket': defaultBucket!,
        if (name != null) 'name': name!,
      };
}

/// Request message for StepService.PublishXunitXmlFiles.
class PublishXunitXmlFilesRequest {
  /// URI of the Xunit XML files to publish.
  ///
  /// The maximum size of the file this reference is pointing to is 50MB.
  /// Required.
  core.List<FileReference>? xunitXmlFiles;

  PublishXunitXmlFilesRequest({
    this.xunitXmlFiles,
  });

  PublishXunitXmlFilesRequest.fromJson(core.Map _json)
      : this(
          xunitXmlFiles: _json.containsKey('xunitXmlFiles')
              ? (_json['xunitXmlFiles'] as core.List)
                  .map((value) => FileReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (xunitXmlFiles != null) 'xunitXmlFiles': xunitXmlFiles!,
      };
}

/// A rectangular region.
class RegionProto {
  /// The height, in pixels.
  ///
  /// Always set.
  core.int? heightPx;

  /// The left side of the rectangle, in pixels.
  ///
  /// Always set.
  core.int? leftPx;

  /// The top of the rectangle, in pixels.
  ///
  /// Always set.
  core.int? topPx;

  /// The width, in pixels.
  ///
  /// Always set.
  core.int? widthPx;

  RegionProto({
    this.heightPx,
    this.leftPx,
    this.topPx,
    this.widthPx,
  });

  RegionProto.fromJson(core.Map _json)
      : this(
          heightPx: _json.containsKey('heightPx')
              ? _json['heightPx'] as core.int
              : null,
          leftPx:
              _json.containsKey('leftPx') ? _json['leftPx'] as core.int : null,
          topPx: _json.containsKey('topPx') ? _json['topPx'] as core.int : null,
          widthPx: _json.containsKey('widthPx')
              ? _json['widthPx'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (heightPx != null) 'heightPx': heightPx!,
        if (leftPx != null) 'leftPx': leftPx!,
        if (topPx != null) 'topPx': topPx!,
        if (widthPx != null) 'widthPx': widthPx!,
      };
}

/// The storage for test results.
class ResultsStorage {
  /// The root directory for test results.
  FileReference? resultsStoragePath;

  /// The path to the Xunit XML file.
  FileReference? xunitXmlFile;

  ResultsStorage({
    this.resultsStoragePath,
    this.xunitXmlFile,
  });

  ResultsStorage.fromJson(core.Map _json)
      : this(
          resultsStoragePath: _json.containsKey('resultsStoragePath')
              ? FileReference.fromJson(_json['resultsStoragePath']
                  as core.Map<core.String, core.dynamic>)
              : null,
          xunitXmlFile: _json.containsKey('xunitXmlFile')
              ? FileReference.fromJson(
                  _json['xunitXmlFile'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resultsStoragePath != null)
          'resultsStoragePath': resultsStoragePath!,
        if (xunitXmlFile != null) 'xunitXmlFile': xunitXmlFile!,
      };
}

/// Execution stats for a user-provided Robo script.
class RoboScriptExecution {
  /// The number of Robo script actions executed successfully.
  core.int? successfulActions;

  /// The total number of actions in the Robo script.
  core.int? totalActions;

  RoboScriptExecution({
    this.successfulActions,
    this.totalActions,
  });

  RoboScriptExecution.fromJson(core.Map _json)
      : this(
          successfulActions: _json.containsKey('successfulActions')
              ? _json['successfulActions'] as core.int
              : null,
          totalActions: _json.containsKey('totalActions')
              ? _json['totalActions'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (successfulActions != null) 'successfulActions': successfulActions!,
        if (totalActions != null) 'totalActions': totalActions!,
      };
}

/// IMPORTANT: It is unsafe to accept this message from an untrusted source,
/// since it's trivial for an attacker to forge serialized messages that don't
/// fulfill the type's safety contract -- for example, it could contain attacker
/// controlled script.
///
/// A system which receives a SafeHtmlProto implicitly trusts the producer of
/// the SafeHtmlProto. So, it's generally safe to return this message in RPC
/// responses, but generally unsafe to accept it in RPC requests.
class SafeHtmlProto {
  /// IMPORTANT: Never set or read this field, even from tests, it is private.
  ///
  /// See documentation at the top of .proto file for programming language
  /// packages with which to create or read this message.
  core.String? privateDoNotAccessOrElseSafeHtmlWrappedValue;

  SafeHtmlProto({
    this.privateDoNotAccessOrElseSafeHtmlWrappedValue,
  });

  SafeHtmlProto.fromJson(core.Map _json)
      : this(
          privateDoNotAccessOrElseSafeHtmlWrappedValue:
              _json.containsKey('privateDoNotAccessOrElseSafeHtmlWrappedValue')
                  ? _json['privateDoNotAccessOrElseSafeHtmlWrappedValue']
                      as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privateDoNotAccessOrElseSafeHtmlWrappedValue != null)
          'privateDoNotAccessOrElseSafeHtmlWrappedValue':
              privateDoNotAccessOrElseSafeHtmlWrappedValue!,
      };
}

class Screen {
  /// File reference of the png file.
  ///
  /// Required.
  core.String? fileReference;

  /// Locale of the device that the screenshot was taken on.
  ///
  /// Required.
  core.String? locale;

  /// Model of the device that the screenshot was taken on.
  ///
  /// Required.
  core.String? model;

  /// OS version of the device that the screenshot was taken on.
  ///
  /// Required.
  core.String? version;

  Screen({
    this.fileReference,
    this.locale,
    this.model,
    this.version,
  });

  Screen.fromJson(core.Map _json)
      : this(
          fileReference: _json.containsKey('fileReference')
              ? _json['fileReference'] as core.String
              : null,
          locale: _json.containsKey('locale')
              ? _json['locale'] as core.String
              : null,
          model:
              _json.containsKey('model') ? _json['model'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileReference != null) 'fileReference': fileReference!,
        if (locale != null) 'locale': locale!,
        if (model != null) 'model': model!,
        if (version != null) 'version': version!,
      };
}

class ScreenshotCluster {
  /// A string that describes the activity of every screen in the cluster.
  core.String? activity;

  /// A unique identifier for the cluster.
  ///
  /// @OutputOnly
  core.String? clusterId;

  /// A singular screen that represents the cluster as a whole.
  ///
  /// This screen will act as the "cover" of the entire cluster. When users look
  /// at the clusters, only the key screen from each cluster will be shown.
  /// Which screen is the key screen is determined by the ClusteringAlgorithm
  Screen? keyScreen;

  /// Full list of screens.
  core.List<Screen>? screens;

  ScreenshotCluster({
    this.activity,
    this.clusterId,
    this.keyScreen,
    this.screens,
  });

  ScreenshotCluster.fromJson(core.Map _json)
      : this(
          activity: _json.containsKey('activity')
              ? _json['activity'] as core.String
              : null,
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          keyScreen: _json.containsKey('keyScreen')
              ? Screen.fromJson(
                  _json['keyScreen'] as core.Map<core.String, core.dynamic>)
              : null,
          screens: _json.containsKey('screens')
              ? (_json['screens'] as core.List)
                  .map((value) => Screen.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activity != null) 'activity': activity!,
        if (clusterId != null) 'clusterId': clusterId!,
        if (keyScreen != null) 'keyScreen': keyScreen!,
        if (screens != null) 'screens': screens!,
      };
}

/// Result summary for a shard in an environment.
class ShardSummary {
  /// Summaries of the steps belonging to the shard.
  ///
  /// With flaky_test_attempts enabled from TestExecutionService, more than one
  /// run (Step) can present. And the runs will be sorted by multistep_number.
  core.List<StepSummary>? runs;

  /// Merged result of the shard.
  MergedResult? shardResult;

  ShardSummary({
    this.runs,
    this.shardResult,
  });

  ShardSummary.fromJson(core.Map _json)
      : this(
          runs: _json.containsKey('runs')
              ? (_json['runs'] as core.List)
                  .map((value) => StepSummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shardResult: _json.containsKey('shardResult')
              ? MergedResult.fromJson(
                  _json['shardResult'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (runs != null) 'runs': runs!,
        if (shardResult != null) 'shardResult': shardResult!,
      };
}

/// Details for an outcome with a SKIPPED outcome summary.
class SkippedDetail {
  /// If the App doesn't support the specific API level.
  core.bool? incompatibleAppVersion;

  /// If the App doesn't run on the specific architecture, for example, x86.
  core.bool? incompatibleArchitecture;

  /// If the requested OS version doesn't run on the specific device model.
  core.bool? incompatibleDevice;

  SkippedDetail({
    this.incompatibleAppVersion,
    this.incompatibleArchitecture,
    this.incompatibleDevice,
  });

  SkippedDetail.fromJson(core.Map _json)
      : this(
          incompatibleAppVersion: _json.containsKey('incompatibleAppVersion')
              ? _json['incompatibleAppVersion'] as core.bool
              : null,
          incompatibleArchitecture:
              _json.containsKey('incompatibleArchitecture')
                  ? _json['incompatibleArchitecture'] as core.bool
                  : null,
          incompatibleDevice: _json.containsKey('incompatibleDevice')
              ? _json['incompatibleDevice'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (incompatibleAppVersion != null)
          'incompatibleAppVersion': incompatibleAppVersion!,
        if (incompatibleArchitecture != null)
          'incompatibleArchitecture': incompatibleArchitecture!,
        if (incompatibleDevice != null)
          'incompatibleDevice': incompatibleDevice!,
      };
}

/// The details about how to run the execution.
class Specification {
  /// An Android mobile test execution specification.
  AndroidTest? androidTest;

  /// An iOS mobile test execution specification.
  IosTest? iosTest;

  Specification({
    this.androidTest,
    this.iosTest,
  });

  Specification.fromJson(core.Map _json)
      : this(
          androidTest: _json.containsKey('androidTest')
              ? AndroidTest.fromJson(
                  _json['androidTest'] as core.Map<core.String, core.dynamic>)
              : null,
          iosTest: _json.containsKey('iosTest')
              ? IosTest.fromJson(
                  _json['iosTest'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidTest != null) 'androidTest': androidTest!,
        if (iosTest != null) 'iosTest': iosTest!,
      };
}

/// A stacktrace.
class StackTrace {
  /// The stack trace message.
  ///
  /// Required
  core.String? exception;

  StackTrace({
    this.exception,
  });

  StackTrace.fromJson(core.Map _json)
      : this(
          exception: _json.containsKey('exception')
              ? _json['exception'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exception != null) 'exception': exception!,
      };
}

/// User provided intent failed to resolve to an activity.
class StartActivityNotFound {
  core.String? action;
  core.String? uri;

  StartActivityNotFound({
    this.action,
    this.uri,
  });

  StartActivityNotFound.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (uri != null) 'uri': uri!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// A Step represents a single operation performed as part of Execution.
///
/// A step can be used to represent the execution of a tool ( for example a test
/// runner execution or an execution of a compiler). Steps can overlap (for
/// instance two steps might have the same start time if some operations are
/// done in parallel). Here is an example, let's consider that we have a
/// continuous build is executing a test runner for each iteration. The workflow
/// would look like: - user creates a Execution with id 1 - user creates an
/// TestExecutionStep with id 100 for Execution 1 - user update
/// TestExecutionStep with id 100 to add a raw xml log + the service parses the
/// xml logs and returns a TestExecutionStep with updated TestResult(s). - user
/// update the status of TestExecutionStep with id 100 to COMPLETE A Step can be
/// updated until its state is set to COMPLETE at which points it becomes
/// immutable. Next tag: 27
class Step {
  /// The time when the step status was set to complete.
  ///
  /// This value will be set automatically when state transitions to COMPLETE. -
  /// In response: set if the execution state is COMPLETE. - In create/update
  /// request: never set
  Timestamp? completionTime;

  /// The time when the step was created.
  ///
  /// - In response: always set - In create/update request: never set
  Timestamp? creationTime;

  /// A description of this tool For example: mvn clean package -D
  /// skipTests=true - In response: present if set by create/update request - In
  /// create/update request: optional
  core.String? description;

  /// How much the device resource is used to perform the test.
  ///
  /// This is the device usage used for billing purpose, which is different from
  /// the run_duration, for example, infrastructure failure won't be charged for
  /// device usage. PRECONDITION_FAILED will be returned if one attempts to set
  /// a device_usage on a step which already has this field set. - In response:
  /// present if previously set. - In create request: optional - In update
  /// request: optional
  Duration? deviceUsageDuration;

  /// If the execution containing this step has any dimension_definition set,
  /// then this field allows the child to specify the values of the dimensions.
  ///
  /// The keys must exactly match the dimension_definition of the execution. For
  /// example, if the execution has `dimension_definition = ['attempt',
  /// 'device']` then a step must define values for those dimensions, eg.
  /// `dimension_value = ['attempt': '1', 'device': 'Nexus 6']` If a step does
  /// not participate in one dimension of the matrix, the value for that
  /// dimension should be empty string. For example, if one of the tests is
  /// executed by a runner which does not support retries, the step could have
  /// `dimension_value = ['attempt': '', 'device': 'Nexus 6']` If the step does
  /// not participate in any dimensions of the matrix, it may leave
  /// dimension_value unset. A PRECONDITION_FAILED will be returned if any of
  /// the keys do not exist in the dimension_definition of the execution. A
  /// PRECONDITION_FAILED will be returned if another step in this execution
  /// already has the same name and dimension_value, but differs on other data
  /// fields, for example, step field is different. A PRECONDITION_FAILED will
  /// be returned if dimension_value is set, and there is a dimension_definition
  /// in the execution which is not specified as one of the keys. - In response:
  /// present if set by create - In create request: optional - In update
  /// request: never set
  core.List<StepDimensionValueEntry>? dimensionValue;

  /// Whether any of the outputs of this step are images whose thumbnails can be
  /// fetched with ListThumbnails.
  ///
  /// - In response: always set - In create/update request: never set
  core.bool? hasImages;

  /// Arbitrary user-supplied key/value pairs that are associated with the step.
  ///
  /// Users are responsible for managing the key namespace such that keys don't
  /// accidentally collide. An INVALID_ARGUMENT will be returned if the number
  /// of labels exceeds 100 or if the length of any of the keys or values
  /// exceeds 100 characters. - In response: always set - In create request:
  /// optional - In update request: optional; any new key/value pair will be
  /// added to the map, and any new value for an existing key will update that
  /// key's value
  core.List<StepLabelsEntry>? labels;

  /// Details when multiple steps are run with the same configuration as a
  /// group.
  ///
  /// These details can be used identify which group this step is part of. It
  /// also identifies the groups 'primary step' which indexes all the group
  /// members. - In response: present if previously set. - In create request:
  /// optional, set iff this step was performed more than once. - In update
  /// request: optional
  MultiStep? multiStep;

  /// A short human-readable name to display in the UI.
  ///
  /// Maximum of 100 characters. For example: Clean build A PRECONDITION_FAILED
  /// will be returned upon creating a new step if it shares its name and
  /// dimension_value with an existing step. If two steps represent a similar
  /// action, but have different dimension values, they should share the same
  /// name. For instance, if the same set of tests is run on two different
  /// platforms, the two steps should have the same name. - In response: always
  /// set - In create request: always set - In update request: never set
  core.String? name;

  /// Classification of the result, for example into SUCCESS or FAILURE - In
  /// response: present if set by create/update request - In create/update
  /// request: optional
  Outcome? outcome;

  /// How long it took for this step to run.
  ///
  /// If unset, this is set to the difference between creation_time and
  /// completion_time when the step is set to the COMPLETE state. In some cases,
  /// it is appropriate to set this value separately: For instance, if a step is
  /// created, but the operation it represents is queued for a few minutes
  /// before it executes, it would be appropriate not to include the time spent
  /// queued in its run_duration. PRECONDITION_FAILED will be returned if one
  /// attempts to set a run_duration on a step which already has this field set.
  /// - In response: present if previously set; always present on COMPLETE step
  /// - In create request: optional - In update request: optional
  Duration? runDuration;

  /// The initial state is IN_PROGRESS.
  ///
  /// The only legal state transitions are * IN_PROGRESS -> COMPLETE A
  /// PRECONDITION_FAILED will be returned if an invalid transition is
  /// requested. It is valid to create Step with a state set to COMPLETE. The
  /// state can only be set to COMPLETE once. A PRECONDITION_FAILED will be
  /// returned if the state is set to COMPLETE multiple times. - In response:
  /// always set - In create/update request: optional
  /// Possible string values are:
  /// - "unknownState" : Should never be in this state. Exists for proto
  /// deserialization backward compatibility.
  /// - "pending" : The Execution/Step is created, ready to run, but not running
  /// yet. If an Execution/Step is created without initial state, it is assumed
  /// that the Execution/Step is in PENDING state.
  /// - "inProgress" : The Execution/Step is in progress.
  /// - "complete" : The finalized, immutable state. Steps/Executions in this
  /// state cannot be modified.
  core.String? state;

  /// A unique identifier within a Execution for this Step.
  ///
  /// Returns INVALID_ARGUMENT if this field is set or overwritten by the
  /// caller. - In response: always set - In create/update request: never set
  core.String? stepId;

  /// An execution of a test runner.
  TestExecutionStep? testExecutionStep;

  /// An execution of a tool (used for steps we don't explicitly support).
  ToolExecutionStep? toolExecutionStep;

  Step({
    this.completionTime,
    this.creationTime,
    this.description,
    this.deviceUsageDuration,
    this.dimensionValue,
    this.hasImages,
    this.labels,
    this.multiStep,
    this.name,
    this.outcome,
    this.runDuration,
    this.state,
    this.stepId,
    this.testExecutionStep,
    this.toolExecutionStep,
  });

  Step.fromJson(core.Map _json)
      : this(
          completionTime: _json.containsKey('completionTime')
              ? Timestamp.fromJson(_json['completionTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: _json.containsKey('creationTime')
              ? Timestamp.fromJson(
                  _json['creationTime'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          deviceUsageDuration: _json.containsKey('deviceUsageDuration')
              ? Duration.fromJson(_json['deviceUsageDuration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dimensionValue: _json.containsKey('dimensionValue')
              ? (_json['dimensionValue'] as core.List)
                  .map((value) => StepDimensionValueEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          hasImages: _json.containsKey('hasImages')
              ? _json['hasImages'] as core.bool
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => StepLabelsEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          multiStep: _json.containsKey('multiStep')
              ? MultiStep.fromJson(
                  _json['multiStep'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          outcome: _json.containsKey('outcome')
              ? Outcome.fromJson(
                  _json['outcome'] as core.Map<core.String, core.dynamic>)
              : null,
          runDuration: _json.containsKey('runDuration')
              ? Duration.fromJson(
                  _json['runDuration'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stepId: _json.containsKey('stepId')
              ? _json['stepId'] as core.String
              : null,
          testExecutionStep: _json.containsKey('testExecutionStep')
              ? TestExecutionStep.fromJson(_json['testExecutionStep']
                  as core.Map<core.String, core.dynamic>)
              : null,
          toolExecutionStep: _json.containsKey('toolExecutionStep')
              ? ToolExecutionStep.fromJson(_json['toolExecutionStep']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionTime != null) 'completionTime': completionTime!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (description != null) 'description': description!,
        if (deviceUsageDuration != null)
          'deviceUsageDuration': deviceUsageDuration!,
        if (dimensionValue != null) 'dimensionValue': dimensionValue!,
        if (hasImages != null) 'hasImages': hasImages!,
        if (labels != null) 'labels': labels!,
        if (multiStep != null) 'multiStep': multiStep!,
        if (name != null) 'name': name!,
        if (outcome != null) 'outcome': outcome!,
        if (runDuration != null) 'runDuration': runDuration!,
        if (state != null) 'state': state!,
        if (stepId != null) 'stepId': stepId!,
        if (testExecutionStep != null) 'testExecutionStep': testExecutionStep!,
        if (toolExecutionStep != null) 'toolExecutionStep': toolExecutionStep!,
      };
}

typedef StepDimensionValueEntry = $Entry;
typedef StepLabelsEntry = $Entry;

/// Lightweight summary of a step within this execution.
typedef StepSummary = $Empty;

/// Details for an outcome with a SUCCESS outcome summary.
///
/// LINT.IfChange
class SuccessDetail {
  /// If a native process other than the app crashed.
  core.bool? otherNativeCrash;

  SuccessDetail({
    this.otherNativeCrash,
  });

  SuccessDetail.fromJson(core.Map _json)
      : this(
          otherNativeCrash: _json.containsKey('otherNativeCrash')
              ? _json['otherNativeCrash'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (otherNativeCrash != null) 'otherNativeCrash': otherNativeCrash!,
      };
}

/// A set of similar suggestions that we suspect are closely related.
///
/// This proto and most of the nested protos are branched from
/// foxandcrown.prelaunchreport.service.SuggestionClusterProto, replacing PLR's
/// dependencies with FTL's.
class SuggestionClusterProto {
  /// Category in which these types of suggestions should appear.
  ///
  /// Always set.
  /// Possible string values are:
  /// - "unknownCategory"
  /// - "contentLabeling"
  /// - "touchTargetSize"
  /// - "lowContrast"
  /// - "implementation"
  core.String? category;

  /// A sequence of suggestions.
  ///
  /// All of the suggestions within a cluster must have the same
  /// SuggestionPriority and belong to the same SuggestionCategory. Suggestions
  /// with the same screenshot URL should be adjacent.
  core.List<SuggestionProto>? suggestions;

  SuggestionClusterProto({
    this.category,
    this.suggestions,
  });

  SuggestionClusterProto.fromJson(core.Map _json)
      : this(
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          suggestions: _json.containsKey('suggestions')
              ? (_json['suggestions'] as core.List)
                  .map((value) => SuggestionProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (suggestions != null) 'suggestions': suggestions!,
      };
}

class SuggestionProto {
  /// Reference to a help center article concerning this type of suggestion.
  ///
  /// Always set.
  core.String? helpUrl;

  /// Message, in the user's language, explaining the suggestion, which may
  /// contain markup.
  ///
  /// Always set.
  SafeHtmlProto? longMessage;

  /// Relative importance of a suggestion.
  ///
  /// Always set.
  /// Possible string values are:
  /// - "unknownPriority"
  /// - "error"
  /// - "warning"
  /// - "info"
  core.String? priority;

  /// A somewhat human readable identifier of the source view, if it does not
  /// have a resource_name.
  ///
  /// This is a path within the accessibility hierarchy, an element with
  /// resource name; similar to an XPath.
  core.String? pseudoResourceId;

  /// Region within the screenshot that is relevant to this suggestion.
  ///
  /// Optional.
  RegionProto? region;

  /// Reference to a view element, identified by its resource name, if it has
  /// one.
  core.String? resourceName;

  /// ID of the screen for the suggestion.
  ///
  /// It is used for getting the corresponding screenshot path. For example,
  /// screen_id "1" corresponds to "1.png" file in GCS. Always set.
  core.String? screenId;

  /// Relative importance of a suggestion as compared with other suggestions
  /// that have the same priority and category.
  ///
  /// This is a meaningless value that can be used to order suggestions that are
  /// in the same category and have the same priority. The larger values have
  /// higher priority (i.e., are more important). Optional.
  core.double? secondaryPriority;

  /// Concise message, in the user's language, representing the suggestion,
  /// which may contain markup.
  ///
  /// Always set.
  SafeHtmlProto? shortMessage;

  /// General title for the suggestion, in the user's language, without markup.
  ///
  /// Always set.
  core.String? title;

  SuggestionProto({
    this.helpUrl,
    this.longMessage,
    this.priority,
    this.pseudoResourceId,
    this.region,
    this.resourceName,
    this.screenId,
    this.secondaryPriority,
    this.shortMessage,
    this.title,
  });

  SuggestionProto.fromJson(core.Map _json)
      : this(
          helpUrl: _json.containsKey('helpUrl')
              ? _json['helpUrl'] as core.String
              : null,
          longMessage: _json.containsKey('longMessage')
              ? SafeHtmlProto.fromJson(
                  _json['longMessage'] as core.Map<core.String, core.dynamic>)
              : null,
          priority: _json.containsKey('priority')
              ? _json['priority'] as core.String
              : null,
          pseudoResourceId: _json.containsKey('pseudoResourceId')
              ? _json['pseudoResourceId'] as core.String
              : null,
          region: _json.containsKey('region')
              ? RegionProto.fromJson(
                  _json['region'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
          screenId: _json.containsKey('screenId')
              ? _json['screenId'] as core.String
              : null,
          secondaryPriority: _json.containsKey('secondaryPriority')
              ? (_json['secondaryPriority'] as core.num).toDouble()
              : null,
          shortMessage: _json.containsKey('shortMessage')
              ? SafeHtmlProto.fromJson(
                  _json['shortMessage'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (helpUrl != null) 'helpUrl': helpUrl!,
        if (longMessage != null) 'longMessage': longMessage!,
        if (priority != null) 'priority': priority!,
        if (pseudoResourceId != null) 'pseudoResourceId': pseudoResourceId!,
        if (region != null) 'region': region!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (screenId != null) 'screenId': screenId!,
        if (secondaryPriority != null) 'secondaryPriority': secondaryPriority!,
        if (shortMessage != null) 'shortMessage': shortMessage!,
        if (title != null) 'title': title!,
      };
}

class TestCase {
  /// The elapsed run time of the test case.
  ///
  /// Required.
  Duration? elapsedTime;

  /// The end time of the test case.
  Timestamp? endTime;

  /// Why the test case was skipped.
  ///
  /// Present only for skipped test case
  core.String? skippedMessage;

  /// The stack trace details if the test case failed or encountered an error.
  ///
  /// The maximum size of the stack traces is 100KiB, beyond which the stack
  /// track will be truncated. Zero if the test case passed.
  core.List<StackTrace>? stackTraces;

  /// The start time of the test case.
  Timestamp? startTime;

  /// The status of the test case.
  ///
  /// Required.
  /// Possible string values are:
  /// - "passed" : Test passed.
  /// - "failed" : Test failed.
  /// - "error" : Test encountered an error
  /// - "skipped" : Test skipped
  /// - "flaky" : Test flaked. Present only for rollup test cases; test cases
  /// from steps that were run with the same configuration had both failure and
  /// success outcomes.
  core.String? status;

  /// A unique identifier within a Step for this Test Case.
  core.String? testCaseId;

  /// Test case reference, e.g. name, class name and test suite name.
  ///
  /// Required.
  TestCaseReference? testCaseReference;

  /// References to opaque files of any format output by the tool execution.
  ///
  /// @OutputOnly
  core.List<ToolOutputReference>? toolOutputs;

  TestCase({
    this.elapsedTime,
    this.endTime,
    this.skippedMessage,
    this.stackTraces,
    this.startTime,
    this.status,
    this.testCaseId,
    this.testCaseReference,
    this.toolOutputs,
  });

  TestCase.fromJson(core.Map _json)
      : this(
          elapsedTime: _json.containsKey('elapsedTime')
              ? Duration.fromJson(
                  _json['elapsedTime'] as core.Map<core.String, core.dynamic>)
              : null,
          endTime: _json.containsKey('endTime')
              ? Timestamp.fromJson(
                  _json['endTime'] as core.Map<core.String, core.dynamic>)
              : null,
          skippedMessage: _json.containsKey('skippedMessage')
              ? _json['skippedMessage'] as core.String
              : null,
          stackTraces: _json.containsKey('stackTraces')
              ? (_json['stackTraces'] as core.List)
                  .map((value) => StackTrace.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startTime: _json.containsKey('startTime')
              ? Timestamp.fromJson(
                  _json['startTime'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          testCaseId: _json.containsKey('testCaseId')
              ? _json['testCaseId'] as core.String
              : null,
          testCaseReference: _json.containsKey('testCaseReference')
              ? TestCaseReference.fromJson(_json['testCaseReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          toolOutputs: _json.containsKey('toolOutputs')
              ? (_json['toolOutputs'] as core.List)
                  .map((value) => ToolOutputReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elapsedTime != null) 'elapsedTime': elapsedTime!,
        if (endTime != null) 'endTime': endTime!,
        if (skippedMessage != null) 'skippedMessage': skippedMessage!,
        if (stackTraces != null) 'stackTraces': stackTraces!,
        if (startTime != null) 'startTime': startTime!,
        if (status != null) 'status': status!,
        if (testCaseId != null) 'testCaseId': testCaseId!,
        if (testCaseReference != null) 'testCaseReference': testCaseReference!,
        if (toolOutputs != null) 'toolOutputs': toolOutputs!,
      };
}

/// A reference to a test case.
///
/// Test case references are canonically ordered lexicographically by these
/// three factors: * First, by test_suite_name. * Second, by class_name. *
/// Third, by name.
class TestCaseReference {
  /// The name of the class.
  core.String? className;

  /// The name of the test case.
  ///
  /// Required.
  core.String? name;

  /// The name of the test suite to which this test case belongs.
  core.String? testSuiteName;

  TestCaseReference({
    this.className,
    this.name,
    this.testSuiteName,
  });

  TestCaseReference.fromJson(core.Map _json)
      : this(
          className: _json.containsKey('className')
              ? _json['className'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          testSuiteName: _json.containsKey('testSuiteName')
              ? _json['testSuiteName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (className != null) 'className': className!,
        if (name != null) 'name': name!,
        if (testSuiteName != null) 'testSuiteName': testSuiteName!,
      };
}

/// A step that represents running tests.
///
/// It accepts ant-junit xml files which will be parsed into structured test
/// results by the service. Xml file paths are updated in order to append more
/// files, however they can't be deleted. Users can also add test results
/// manually by using the test_result field.
class TestExecutionStep {
  /// Issues observed during the test execution.
  ///
  /// For example, if the mobile app under test crashed during the test, the
  /// error message and the stack trace content can be recorded here to assist
  /// debugging. - In response: present if set by create or update - In
  /// create/update request: optional
  core.List<TestIssue>? testIssues;

  /// List of test suite overview contents.
  ///
  /// This could be parsed from xUnit XML log by server, or uploaded directly by
  /// user. This references should only be called when test suites are fully
  /// parsed or uploaded. The maximum allowed number of test suite overviews per
  /// step is 1000. - In response: always set - In create request: optional - In
  /// update request: never (use publishXunitXmlFiles custom method instead)
  core.List<TestSuiteOverview>? testSuiteOverviews;

  /// The timing break down of the test execution.
  ///
  /// - In response: present if set by create or update - In create/update
  /// request: optional
  TestTiming? testTiming;

  /// Represents the execution of the test runner.
  ///
  /// The exit code of this tool will be used to determine if the test passed. -
  /// In response: always set - In create/update request: optional
  ToolExecution? toolExecution;

  TestExecutionStep({
    this.testIssues,
    this.testSuiteOverviews,
    this.testTiming,
    this.toolExecution,
  });

  TestExecutionStep.fromJson(core.Map _json)
      : this(
          testIssues: _json.containsKey('testIssues')
              ? (_json['testIssues'] as core.List)
                  .map((value) => TestIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          testSuiteOverviews: _json.containsKey('testSuiteOverviews')
              ? (_json['testSuiteOverviews'] as core.List)
                  .map((value) => TestSuiteOverview.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          testTiming: _json.containsKey('testTiming')
              ? TestTiming.fromJson(
                  _json['testTiming'] as core.Map<core.String, core.dynamic>)
              : null,
          toolExecution: _json.containsKey('toolExecution')
              ? ToolExecution.fromJson(
                  _json['toolExecution'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testIssues != null) 'testIssues': testIssues!,
        if (testSuiteOverviews != null)
          'testSuiteOverviews': testSuiteOverviews!,
        if (testTiming != null) 'testTiming': testTiming!,
        if (toolExecution != null) 'toolExecution': toolExecution!,
      };
}

/// An issue detected occurring during a test execution.
class TestIssue {
  /// Category of issue.
  ///
  /// Required.
  /// Possible string values are:
  /// - "unspecifiedCategory" : Default unspecified category. Do not use. For
  /// versioning only.
  /// - "common" : Issue is not specific to a particular test kind (e.g., a
  /// native crash).
  /// - "robo" : Issue is specific to Robo run.
  core.String? category;

  /// A brief human-readable message describing the issue.
  ///
  /// Required.
  core.String? errorMessage;

  /// Severity of issue.
  ///
  /// Required.
  /// Possible string values are:
  /// - "unspecifiedSeverity" : Default unspecified severity. Do not use. For
  /// versioning only.
  /// - "info" : Non critical issue, providing users with some info about the
  /// test run.
  /// - "suggestion" : Non critical issue, providing users with some hints on
  /// improving their testing experience, e.g., suggesting to use Game Loops.
  /// - "warning" : Potentially critical issue.
  /// - "severe" : Critical issue.
  core.String? severity;

  /// Deprecated in favor of stack trace fields inside specific warnings.
  StackTrace? stackTrace;

  /// Type of issue.
  ///
  /// Required.
  /// Possible string values are:
  /// - "unspecifiedType" : Default unspecified type. Do not use. For versioning
  /// only.
  /// - "fatalException" : Issue is a fatal exception.
  /// - "nativeCrash" : Issue is a native crash.
  /// - "anr" : Issue is an ANR crash.
  /// - "unusedRoboDirective" : Issue is an unused robo directive.
  /// - "compatibleWithOrchestrator" : Issue is a suggestion to use
  /// orchestrator.
  /// - "launcherActivityNotFound" : Issue with finding a launcher activity
  /// - "startActivityNotFound" : Issue with resolving a user-provided intent to
  /// start an activity
  /// - "incompleteRoboScriptExecution" : A Robo script was not fully executed.
  /// - "completeRoboScriptExecution" : A Robo script was fully and successfully
  /// executed.
  /// - "failedToInstall" : The APK failed to install.
  /// - "availableDeepLinks" : The app-under-test has deep links, but none were
  /// provided to Robo.
  /// - "nonSdkApiUsageViolation" : App accessed a non-sdk Api.
  /// - "nonSdkApiUsageReport" : App accessed a non-sdk Api (new detailed
  /// report)
  /// - "encounteredNonAndroidUiWidgetScreen" : Robo crawl encountered at least
  /// one screen with elements that are not Android UI widgets.
  /// - "encounteredLoginScreen" : Robo crawl encountered at least one probable
  /// login screen.
  /// - "performedGoogleLogin" : Robo signed in with Google.
  /// - "iosException" : iOS App crashed with an exception.
  /// - "iosCrash" : iOS App crashed without an exception (e.g. killed).
  /// - "performedMonkeyActions" : Robo crawl involved performing some monkey
  /// actions.
  /// - "usedRoboDirective" : Robo crawl used a Robo directive.
  /// - "usedRoboIgnoreDirective" : Robo crawl used a Robo directive to ignore
  /// an UI element.
  /// - "insufficientCoverage" : Robo did not crawl some potentially important
  /// parts of the app.
  /// - "inAppPurchases" : Robo crawl involved some in-app purchases.
  /// - "crashDialogError" : Crash dialog was detected during the test execution
  /// - "uiElementsTooDeep" : UI element depth is greater than the threshold
  /// - "blankScreen" : Blank screen is found in the Robo crawl
  /// - "overlappingUiElements" : Overlapping UI elements are found in the Robo
  /// crawl
  /// - "unityException" : An uncaught Unity exception was detected (these don't
  /// crash apps).
  /// - "deviceOutOfMemory" : Device running out of memory was detected
  /// - "logcatCollectionError" : Problems detected while collecting logcat
  core.String? type;

  /// Warning message with additional details of the issue.
  ///
  /// Should always be a message from
  /// com.google.devtools.toolresults.v1.warnings
  Any? warning;

  TestIssue({
    this.category,
    this.errorMessage,
    this.severity,
    this.stackTrace,
    this.type,
    this.warning,
  });

  TestIssue.fromJson(core.Map _json)
      : this(
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          stackTrace: _json.containsKey('stackTrace')
              ? StackTrace.fromJson(
                  _json['stackTrace'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          warning: _json.containsKey('warning')
              ? Any.fromJson(
                  _json['warning'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (severity != null) 'severity': severity!,
        if (stackTrace != null) 'stackTrace': stackTrace!,
        if (type != null) 'type': type!,
        if (warning != null) 'warning': warning!,
      };
}

/// A summary of a test suite result either parsed from XML or uploaded directly
/// by a user.
///
/// Note: the API related comments are for StepService only. This message is
/// also being used in ExecutionService in a read only mode for the
/// corresponding step.
class TestSuiteOverview {
  /// Elapsed time of test suite.
  Duration? elapsedTime;

  /// Number of test cases in error, typically set by the service by parsing the
  /// xml_source.
  ///
  /// - In create/response: always set - In update request: never
  core.int? errorCount;

  /// Number of failed test cases, typically set by the service by parsing the
  /// xml_source.
  ///
  /// May also be set by the user. - In create/response: always set - In update
  /// request: never
  core.int? failureCount;

  /// Number of flaky test cases, set by the service by rolling up flaky test
  /// attempts.
  ///
  /// Present only for rollup test suite overview at environment level. A step
  /// cannot have flaky test cases.
  core.int? flakyCount;

  /// The name of the test suite.
  ///
  /// - In create/response: always set - In update request: never
  core.String? name;

  /// Number of test cases not run, typically set by the service by parsing the
  /// xml_source.
  ///
  /// - In create/response: always set - In update request: never
  core.int? skippedCount;

  /// Number of test cases, typically set by the service by parsing the
  /// xml_source.
  ///
  /// - In create/response: always set - In update request: never
  core.int? totalCount;

  /// If this test suite was parsed from XML, this is the URI where the original
  /// XML file is stored.
  ///
  /// Note: Multiple test suites can share the same xml_source Returns
  /// INVALID_ARGUMENT if the uri format is not supported. - In create/response:
  /// optional - In update request: never
  FileReference? xmlSource;

  TestSuiteOverview({
    this.elapsedTime,
    this.errorCount,
    this.failureCount,
    this.flakyCount,
    this.name,
    this.skippedCount,
    this.totalCount,
    this.xmlSource,
  });

  TestSuiteOverview.fromJson(core.Map _json)
      : this(
          elapsedTime: _json.containsKey('elapsedTime')
              ? Duration.fromJson(
                  _json['elapsedTime'] as core.Map<core.String, core.dynamic>)
              : null,
          errorCount: _json.containsKey('errorCount')
              ? _json['errorCount'] as core.int
              : null,
          failureCount: _json.containsKey('failureCount')
              ? _json['failureCount'] as core.int
              : null,
          flakyCount: _json.containsKey('flakyCount')
              ? _json['flakyCount'] as core.int
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          skippedCount: _json.containsKey('skippedCount')
              ? _json['skippedCount'] as core.int
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
          xmlSource: _json.containsKey('xmlSource')
              ? FileReference.fromJson(
                  _json['xmlSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elapsedTime != null) 'elapsedTime': elapsedTime!,
        if (errorCount != null) 'errorCount': errorCount!,
        if (failureCount != null) 'failureCount': failureCount!,
        if (flakyCount != null) 'flakyCount': flakyCount!,
        if (name != null) 'name': name!,
        if (skippedCount != null) 'skippedCount': skippedCount!,
        if (totalCount != null) 'totalCount': totalCount!,
        if (xmlSource != null) 'xmlSource': xmlSource!,
      };
}

/// Testing timing break down to know phases.
class TestTiming {
  /// How long it took to run the test process.
  ///
  /// - In response: present if previously set. - In create/update request:
  /// optional
  Duration? testProcessDuration;

  TestTiming({
    this.testProcessDuration,
  });

  TestTiming.fromJson(core.Map _json)
      : this(
          testProcessDuration: _json.containsKey('testProcessDuration')
              ? Duration.fromJson(_json['testProcessDuration']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testProcessDuration != null)
          'testProcessDuration': testProcessDuration!,
      };
}

/// A single thumbnail, with its size and format.
class Thumbnail {
  /// The thumbnail's content type, i.e. "image/png".
  ///
  /// Always set.
  core.String? contentType;

  /// The thumbnail file itself.
  ///
  /// That is, the bytes here are precisely the bytes that make up the thumbnail
  /// file; they can be served as an image as-is (with the appropriate content
  /// type.) Always set.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The height of the thumbnail, in pixels.
  ///
  /// Always set.
  core.int? heightPx;

  /// The width of the thumbnail, in pixels.
  ///
  /// Always set.
  core.int? widthPx;

  Thumbnail({
    this.contentType,
    this.data,
    this.heightPx,
    this.widthPx,
  });

  Thumbnail.fromJson(core.Map _json)
      : this(
          contentType: _json.containsKey('contentType')
              ? _json['contentType'] as core.String
              : null,
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          heightPx: _json.containsKey('heightPx')
              ? _json['heightPx'] as core.int
              : null,
          widthPx: _json.containsKey('widthPx')
              ? _json['widthPx'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentType != null) 'contentType': contentType!,
        if (data != null) 'data': data!,
        if (heightPx != null) 'heightPx': heightPx!,
        if (widthPx != null) 'widthPx': widthPx!,
      };
}

/// A Timestamp represents a point in time independent of any time zone or local
/// calendar, encoded as a count of seconds and fractions of seconds at
/// nanosecond resolution.
///
/// The count is relative to an epoch at UTC midnight on January 1, 1970, in the
/// proleptic Gregorian calendar which extends the Gregorian calendar backwards
/// to year one. All minutes are 60 seconds long. Leap seconds are "smeared" so
/// that no leap second table is needed for interpretation, using a \[24-hour
/// linear smear\](https://developers.google.com/time/smear). The range is from
/// 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
/// that range, we ensure that we can convert to and from
/// [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) date strings.
class Timestamp {
  /// Non-negative fractions of a second at nanosecond resolution.
  ///
  /// Negative second values with fractions must still have non-negative nanos
  /// values that count forward in time. Must be from 0 to 999,999,999
  /// inclusive.
  core.int? nanos;

  /// Represents seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z.
  ///
  /// Must be from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59Z inclusive.
  core.String? seconds;

  Timestamp({
    this.nanos,
    this.seconds,
  });

  Timestamp.fromJson(core.Map _json)
      : this(
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          seconds: _json.containsKey('seconds')
              ? _json['seconds'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
      };
}

/// An execution of an arbitrary tool.
///
/// It could be a test runner or a tool copying artifacts or deploying code.
class ToolExecution {
  /// The full tokenized command line including the program name (equivalent to
  /// argv in a C program).
  ///
  /// - In response: present if set by create request - In create request:
  /// optional - In update request: never set
  core.List<core.String>? commandLineArguments;

  /// Tool execution exit code.
  ///
  /// This field will be set once the tool has exited. - In response: present if
  /// set by create/update request - In create request: optional - In update
  /// request: optional, a FAILED_PRECONDITION error will be returned if an
  /// exit_code is already set.
  ToolExitCode? exitCode;

  /// References to any plain text logs output the tool execution.
  ///
  /// This field can be set before the tool has exited in order to be able to
  /// have access to a live view of the logs while the tool is running. The
  /// maximum allowed number of tool logs per step is 1000. - In response:
  /// present if set by create/update request - In create request: optional - In
  /// update request: optional, any value provided will be appended to the
  /// existing list
  core.List<FileReference>? toolLogs;

  /// References to opaque files of any format output by the tool execution.
  ///
  /// The maximum allowed number of tool outputs per step is 1000. - In
  /// response: present if set by create/update request - In create request:
  /// optional - In update request: optional, any value provided will be
  /// appended to the existing list
  core.List<ToolOutputReference>? toolOutputs;

  ToolExecution({
    this.commandLineArguments,
    this.exitCode,
    this.toolLogs,
    this.toolOutputs,
  });

  ToolExecution.fromJson(core.Map _json)
      : this(
          commandLineArguments: _json.containsKey('commandLineArguments')
              ? (_json['commandLineArguments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exitCode: _json.containsKey('exitCode')
              ? ToolExitCode.fromJson(
                  _json['exitCode'] as core.Map<core.String, core.dynamic>)
              : null,
          toolLogs: _json.containsKey('toolLogs')
              ? (_json['toolLogs'] as core.List)
                  .map((value) => FileReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          toolOutputs: _json.containsKey('toolOutputs')
              ? (_json['toolOutputs'] as core.List)
                  .map((value) => ToolOutputReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commandLineArguments != null)
          'commandLineArguments': commandLineArguments!,
        if (exitCode != null) 'exitCode': exitCode!,
        if (toolLogs != null) 'toolLogs': toolLogs!,
        if (toolOutputs != null) 'toolOutputs': toolOutputs!,
      };
}

/// Generic tool step to be used for binaries we do not explicitly support.
///
/// For example: running cp to copy artifacts from one location to another.
class ToolExecutionStep {
  /// A Tool execution.
  ///
  /// - In response: present if set by create/update request - In create/update
  /// request: optional
  ToolExecution? toolExecution;

  ToolExecutionStep({
    this.toolExecution,
  });

  ToolExecutionStep.fromJson(core.Map _json)
      : this(
          toolExecution: _json.containsKey('toolExecution')
              ? ToolExecution.fromJson(
                  _json['toolExecution'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (toolExecution != null) 'toolExecution': toolExecution!,
      };
}

/// Exit code from a tool execution.
class ToolExitCode {
  /// Tool execution exit code.
  ///
  /// A value of 0 means that the execution was successful. - In response:
  /// always set - In create/update request: always set
  core.int? number;

  ToolExitCode({
    this.number,
  });

  ToolExitCode.fromJson(core.Map _json)
      : this(
          number:
              _json.containsKey('number') ? _json['number'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (number != null) 'number': number!,
      };
}

/// A reference to a ToolExecution output file.
class ToolOutputReference {
  /// The creation time of the file.
  ///
  /// - In response: present if set by create/update request - In create/update
  /// request: optional
  Timestamp? creationTime;

  /// A FileReference to an output file.
  ///
  /// - In response: always set - In create/update request: always set
  FileReference? output;

  /// The test case to which this output file belongs.
  ///
  /// - In response: present if set by create/update request - In create/update
  /// request: optional
  TestCaseReference? testCase;

  ToolOutputReference({
    this.creationTime,
    this.output,
    this.testCase,
  });

  ToolOutputReference.fromJson(core.Map _json)
      : this(
          creationTime: _json.containsKey('creationTime')
              ? Timestamp.fromJson(
                  _json['creationTime'] as core.Map<core.String, core.dynamic>)
              : null,
          output: _json.containsKey('output')
              ? FileReference.fromJson(
                  _json['output'] as core.Map<core.String, core.dynamic>)
              : null,
          testCase: _json.containsKey('testCase')
              ? TestCaseReference.fromJson(
                  _json['testCase'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (output != null) 'output': output!,
        if (testCase != null) 'testCase': testCase!,
      };
}

/// A warning that the screen hierarchy is deeper than the recommended
/// threshold.
class UIElementTooDeep {
  /// The depth of the screen element
  core.int? depth;

  /// The screen id of the element
  core.String? screenId;

  /// The screen state id of the element
  core.String? screenStateId;

  UIElementTooDeep({
    this.depth,
    this.screenId,
    this.screenStateId,
  });

  UIElementTooDeep.fromJson(core.Map _json)
      : this(
          depth: _json.containsKey('depth') ? _json['depth'] as core.int : null,
          screenId: _json.containsKey('screenId')
              ? _json['screenId'] as core.String
              : null,
          screenStateId: _json.containsKey('screenStateId')
              ? _json['screenStateId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (depth != null) 'depth': depth!,
        if (screenId != null) 'screenId': screenId!,
        if (screenStateId != null) 'screenStateId': screenStateId!,
      };
}

/// Default unspecified warning.
typedef UnspecifiedWarning = $Empty;

/// Additional details of an unused robodirective.
class UnusedRoboDirective {
  /// The name of the resource that was unused.
  core.String? resourceName;

  UnusedRoboDirective({
    this.resourceName,
  });

  UnusedRoboDirective.fromJson(core.Map _json)
      : this(
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// This insight is a recommendation to upgrade a given library to the specified
/// version, in order to avoid dependencies on non-SDK APIs.
class UpgradeInsight {
  /// The name of the package to be upgraded.
  core.String? packageName;

  /// The suggested version to upgrade to.
  ///
  /// Optional: In case we are not sure which version solves this problem
  core.String? upgradeToVersion;

  UpgradeInsight({
    this.packageName,
    this.upgradeToVersion,
  });

  UpgradeInsight.fromJson(core.Map _json)
      : this(
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          upgradeToVersion: _json.containsKey('upgradeToVersion')
              ? _json['upgradeToVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (packageName != null) 'packageName': packageName!,
        if (upgradeToVersion != null) 'upgradeToVersion': upgradeToVersion!,
      };
}

/// Additional details of a used Robo directive.
class UsedRoboDirective {
  /// The name of the resource that was used.
  core.String? resourceName;

  UsedRoboDirective({
    this.resourceName,
  });

  UsedRoboDirective.fromJson(core.Map _json)
      : this(
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// Additional details of a used Robo directive with an ignore action.
///
/// Note: This is a different scenario than unused directive.
class UsedRoboIgnoreDirective {
  /// The name of the resource that was ignored.
  core.String? resourceName;

  UsedRoboIgnoreDirective({
    this.resourceName,
  });

  UsedRoboIgnoreDirective.fromJson(core.Map _json)
      : this(
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
      };
}
