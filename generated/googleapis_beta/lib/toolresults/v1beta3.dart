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
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
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

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to publish and access results from developer tools.
class ToolResultsApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ToolResultsApi(http.Client client,
      {core.String rootUrl = 'https://toolresults.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
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
    core.String requestId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId');

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
    core.String filterByName,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filterByName != null) {
      _queryParams['filterByName'] = [filterByName];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
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
    core.String requestId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId');

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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
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
    core.String requestId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId');

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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (environmentId == null) {
      throw core.ArgumentError('Parameter environmentId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/environments/' +
        commons.Escaper.ecapeVariable('$environmentId');

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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
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
    core.String locale,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (locale != null) {
      _queryParams['locale'] = [locale];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
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
    core.String requestId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId');

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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
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
    core.String requestId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId');

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
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
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
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
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
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    if (sampleSeriesId == null) {
      throw core.ArgumentError('Parameter sampleSeriesId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
        '/perfSampleSeries/' +
        commons.Escaper.ecapeVariable('$sampleSeriesId');

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
    core.List<core.String> filter,
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = filter;
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
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
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    if (sampleSeriesId == null) {
      throw core.ArgumentError('Parameter sampleSeriesId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
        '/perfSampleSeries/' +
        commons.Escaper.ecapeVariable('$sampleSeriesId') +
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    if (sampleSeriesId == null) {
      throw core.ArgumentError('Parameter sampleSeriesId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
        '/perfSampleSeries/' +
        commons.Escaper.ecapeVariable('$sampleSeriesId') +
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
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    if (testCaseId == null) {
      throw core.ArgumentError('Parameter testCaseId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
        '/testCases/' +
        commons.Escaper.ecapeVariable('$testCaseId');

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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (historyId == null) {
      throw core.ArgumentError('Parameter historyId is required.');
    }
    if (executionId == null) {
      throw core.ArgumentError('Parameter executionId is required.');
    }
    if (stepId == null) {
      throw core.ArgumentError('Parameter stepId is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toolresults/v1beta3/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/histories/' +
        commons.Escaper.ecapeVariable('$historyId') +
        '/executions/' +
        commons.Escaper.ecapeVariable('$executionId') +
        '/steps/' +
        commons.Escaper.ecapeVariable('$stepId') +
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
  StackTrace stackTrace;

  ANR();

  ANR.fromJson(core.Map _json) {
    if (_json.containsKey('stackTrace')) {
      stackTrace = StackTrace.fromJson(
          _json['stackTrace'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (stackTrace != null) {
      _json['stackTrace'] = stackTrace.toJson();
    }
    return _json;
  }
}

/// Android app information.
class AndroidAppInfo {
  /// The name of the app.
  ///
  /// Optional
  core.String name;

  /// The package name of the app.
  ///
  /// Required.
  core.String packageName;

  /// The internal version code of the app.
  ///
  /// Optional.
  core.String versionCode;

  /// The version name of the app.
  ///
  /// Optional.
  core.String versionName;

  AndroidAppInfo();

  AndroidAppInfo.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('packageName')) {
      packageName = _json['packageName'] as core.String;
    }
    if (_json.containsKey('versionCode')) {
      versionCode = _json['versionCode'] as core.String;
    }
    if (_json.containsKey('versionName')) {
      versionName = _json['versionName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (packageName != null) {
      _json['packageName'] = packageName;
    }
    if (versionCode != null) {
      _json['versionCode'] = versionCode;
    }
    if (versionName != null) {
      _json['versionName'] = versionName;
    }
    return _json;
  }
}

/// A test of an Android application that can control an Android component
/// independently of its normal lifecycle.
///
/// See for more information on types of Android tests.
class AndroidInstrumentationTest {
  /// The java package for the test to be executed.
  ///
  /// Required
  core.String testPackageId;

  /// The InstrumentationTestRunner class.
  ///
  /// Required
  core.String testRunnerClass;

  /// Each target must be fully qualified with the package name or class name,
  /// in one of these formats: - "package package_name" - "class
  /// package_name.class_name" - "class package_name.class_name#method_name" If
  /// empty, all targets in the module will be run.
  core.List<core.String> testTargets;

  /// The flag indicates whether Android Test Orchestrator will be used to run
  /// test or not.
  core.bool useOrchestrator;

  AndroidInstrumentationTest();

  AndroidInstrumentationTest.fromJson(core.Map _json) {
    if (_json.containsKey('testPackageId')) {
      testPackageId = _json['testPackageId'] as core.String;
    }
    if (_json.containsKey('testRunnerClass')) {
      testRunnerClass = _json['testRunnerClass'] as core.String;
    }
    if (_json.containsKey('testTargets')) {
      testTargets = (_json['testTargets'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('useOrchestrator')) {
      useOrchestrator = _json['useOrchestrator'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (testPackageId != null) {
      _json['testPackageId'] = testPackageId;
    }
    if (testRunnerClass != null) {
      _json['testRunnerClass'] = testRunnerClass;
    }
    if (testTargets != null) {
      _json['testTargets'] = testTargets;
    }
    if (useOrchestrator != null) {
      _json['useOrchestrator'] = useOrchestrator;
    }
    return _json;
  }
}

/// A test of an android application that explores the application on a virtual
/// or physical Android device, finding culprits and crashes as it goes.
class AndroidRoboTest {
  /// The initial activity that should be used to start the app.
  ///
  /// Optional
  core.String appInitialActivity;

  /// The java package for the bootstrap.
  ///
  /// Optional
  core.String bootstrapPackageId;

  /// The runner class for the bootstrap.
  ///
  /// Optional
  core.String bootstrapRunnerClass;

  /// The max depth of the traversal stack Robo can explore.
  ///
  /// Optional
  core.int maxDepth;

  /// The max number of steps/actions Robo can execute.
  ///
  /// Default is no limit (0). Optional
  core.int maxSteps;

  AndroidRoboTest();

  AndroidRoboTest.fromJson(core.Map _json) {
    if (_json.containsKey('appInitialActivity')) {
      appInitialActivity = _json['appInitialActivity'] as core.String;
    }
    if (_json.containsKey('bootstrapPackageId')) {
      bootstrapPackageId = _json['bootstrapPackageId'] as core.String;
    }
    if (_json.containsKey('bootstrapRunnerClass')) {
      bootstrapRunnerClass = _json['bootstrapRunnerClass'] as core.String;
    }
    if (_json.containsKey('maxDepth')) {
      maxDepth = _json['maxDepth'] as core.int;
    }
    if (_json.containsKey('maxSteps')) {
      maxSteps = _json['maxSteps'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (appInitialActivity != null) {
      _json['appInitialActivity'] = appInitialActivity;
    }
    if (bootstrapPackageId != null) {
      _json['bootstrapPackageId'] = bootstrapPackageId;
    }
    if (bootstrapRunnerClass != null) {
      _json['bootstrapRunnerClass'] = bootstrapRunnerClass;
    }
    if (maxDepth != null) {
      _json['maxDepth'] = maxDepth;
    }
    if (maxSteps != null) {
      _json['maxSteps'] = maxSteps;
    }
    return _json;
  }
}

/// An Android mobile test specification.
class AndroidTest {
  /// Information about the application under test.
  AndroidAppInfo androidAppInfo;

  /// An Android instrumentation test.
  AndroidInstrumentationTest androidInstrumentationTest;

  /// An Android robo test.
  AndroidRoboTest androidRoboTest;

  /// An Android test loop.
  AndroidTestLoop androidTestLoop;

  /// Max time a test is allowed to run before it is automatically cancelled.
  Duration testTimeout;

  AndroidTest();

  AndroidTest.fromJson(core.Map _json) {
    if (_json.containsKey('androidAppInfo')) {
      androidAppInfo = AndroidAppInfo.fromJson(
          _json['androidAppInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('androidInstrumentationTest')) {
      androidInstrumentationTest = AndroidInstrumentationTest.fromJson(
          _json['androidInstrumentationTest']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('androidRoboTest')) {
      androidRoboTest = AndroidRoboTest.fromJson(
          _json['androidRoboTest'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('androidTestLoop')) {
      androidTestLoop = AndroidTestLoop.fromJson(
          _json['androidTestLoop'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('testTimeout')) {
      testTimeout = Duration.fromJson(
          _json['testTimeout'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (androidAppInfo != null) {
      _json['androidAppInfo'] = androidAppInfo.toJson();
    }
    if (androidInstrumentationTest != null) {
      _json['androidInstrumentationTest'] = androidInstrumentationTest.toJson();
    }
    if (androidRoboTest != null) {
      _json['androidRoboTest'] = androidRoboTest.toJson();
    }
    if (androidTestLoop != null) {
      _json['androidTestLoop'] = androidTestLoop.toJson();
    }
    if (testTimeout != null) {
      _json['testTimeout'] = testTimeout.toJson();
    }
    return _json;
  }
}

/// Test Loops are tests that can be launched by the app itself, determining
/// when to run by listening for an intent.
class AndroidTestLoop {
  AndroidTestLoop();

  AndroidTestLoop.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

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
  core.String typeUrl;

  /// Must be a valid serialized protocol buffer of the above specified type.
  core.String value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value);

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Any();

  Any.fromJson(core.Map _json) {
    if (_json.containsKey('typeUrl')) {
      typeUrl = _json['typeUrl'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (typeUrl != null) {
      _json['typeUrl'] = typeUrl;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
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
  Duration fullyDrawnTime;

  /// The time from app start to the first displayed activity being drawn, as
  /// reported in Logcat.
  ///
  /// See
  /// https://developer.android.com/topic/performance/launch-time.html#time-initial
  Duration initialDisplayTime;

  AppStartTime();

  AppStartTime.fromJson(core.Map _json) {
    if (_json.containsKey('fullyDrawnTime')) {
      fullyDrawnTime = Duration.fromJson(
          _json['fullyDrawnTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('initialDisplayTime')) {
      initialDisplayTime = Duration.fromJson(
          _json['initialDisplayTime'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fullyDrawnTime != null) {
      _json['fullyDrawnTime'] = fullyDrawnTime.toJson();
    }
    if (initialDisplayTime != null) {
      _json['initialDisplayTime'] = initialDisplayTime.toJson();
    }
    return _json;
  }
}

/// A suggestion to use deep links for a Robo run.
class AvailableDeepLinks {
  AvailableDeepLinks();

  AvailableDeepLinks.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

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
  core.String perfMetricType;

  ///
  /// Possible string values are:
  /// - "perfUnitUnspecified"
  /// - "kibibyte"
  /// - "percent"
  /// - "bytesPerSecond"
  /// - "framesPerSecond"
  /// - "byte"
  core.String perfUnit;

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
  core.String sampleSeriesLabel;

  BasicPerfSampleSeries();

  BasicPerfSampleSeries.fromJson(core.Map _json) {
    if (_json.containsKey('perfMetricType')) {
      perfMetricType = _json['perfMetricType'] as core.String;
    }
    if (_json.containsKey('perfUnit')) {
      perfUnit = _json['perfUnit'] as core.String;
    }
    if (_json.containsKey('sampleSeriesLabel')) {
      sampleSeriesLabel = _json['sampleSeriesLabel'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (perfMetricType != null) {
      _json['perfMetricType'] = perfMetricType;
    }
    if (perfUnit != null) {
      _json['perfUnit'] = perfUnit;
    }
    if (sampleSeriesLabel != null) {
      _json['sampleSeriesLabel'] = sampleSeriesLabel;
    }
    return _json;
  }
}

/// The request must provide up to a maximum of 5000 samples to be created; a
/// larger sample size will cause an INVALID_ARGUMENT error
class BatchCreatePerfSamplesRequest {
  /// The set of PerfSamples to create should not include existing timestamps
  core.List<PerfSample> perfSamples;

  BatchCreatePerfSamplesRequest();

  BatchCreatePerfSamplesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('perfSamples')) {
      perfSamples = (_json['perfSamples'] as core.List)
          .map<PerfSample>((value) =>
              PerfSample.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (perfSamples != null) {
      _json['perfSamples'] =
          perfSamples.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class BatchCreatePerfSamplesResponse {
  core.List<PerfSample> perfSamples;

  BatchCreatePerfSamplesResponse();

  BatchCreatePerfSamplesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('perfSamples')) {
      perfSamples = (_json['perfSamples'] as core.List)
          .map<PerfSample>((value) =>
              PerfSample.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (perfSamples != null) {
      _json['perfSamples'] =
          perfSamples.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A warning that Robo encountered a screen that was mostly blank; this may
/// indicate a problem with the app.
class BlankScreen {
  /// The screen id of the element
  core.String screenId;

  BlankScreen();

  BlankScreen.fromJson(core.Map _json) {
    if (_json.containsKey('screenId')) {
      screenId = _json['screenId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (screenId != null) {
      _json['screenId'] = screenId;
    }
    return _json;
  }
}

class CPUInfo {
  /// description of the device processor ie '1.8 GHz hexa core 64-bit ARMv8-A'
  core.String cpuProcessor;

  /// the CPU clock speed in GHz
  core.double cpuSpeedInGhz;

  /// the number of CPU cores
  core.int numberOfCores;

  CPUInfo();

  CPUInfo.fromJson(core.Map _json) {
    if (_json.containsKey('cpuProcessor')) {
      cpuProcessor = _json['cpuProcessor'] as core.String;
    }
    if (_json.containsKey('cpuSpeedInGhz')) {
      cpuSpeedInGhz = (_json['cpuSpeedInGhz'] as core.num).toDouble();
    }
    if (_json.containsKey('numberOfCores')) {
      numberOfCores = _json['numberOfCores'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cpuProcessor != null) {
      _json['cpuProcessor'] = cpuProcessor;
    }
    if (cpuSpeedInGhz != null) {
      _json['cpuSpeedInGhz'] = cpuSpeedInGhz;
    }
    if (numberOfCores != null) {
      _json['numberOfCores'] = numberOfCores;
    }
    return _json;
  }
}

/// Crash dialog was detected during the test execution
class CrashDialogError {
  /// The name of the package that caused the dialog.
  core.String crashPackage;

  CrashDialogError();

  CrashDialogError.fromJson(core.Map _json) {
    if (_json.containsKey('crashPackage')) {
      crashPackage = _json['crashPackage'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (crashPackage != null) {
      _json['crashPackage'] = crashPackage;
    }
    return _json;
  }
}

/// A warning that device ran out of memory
class DeviceOutOfMemory {
  DeviceOutOfMemory();

  DeviceOutOfMemory.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

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
  core.int nanos;

  /// Signed seconds of the span of time.
  ///
  /// Must be from -315,576,000,000 to +315,576,000,000 inclusive. Note: these
  /// bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25
  /// days/year * 10000 years
  core.String seconds;

  Duration();

  Duration.fromJson(core.Map _json) {
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'] as core.int;
    }
    if (_json.containsKey('seconds')) {
      seconds = _json['seconds'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nanos != null) {
      _json['nanos'] = nanos;
    }
    if (seconds != null) {
      _json['seconds'] = seconds;
    }
    return _json;
  }
}

/// Additional details about encountered login screens.
class EncounteredLoginScreen {
  /// Number of encountered distinct login screens.
  core.int distinctScreens;

  /// Subset of login screens.
  core.List<core.String> screenIds;

  EncounteredLoginScreen();

  EncounteredLoginScreen.fromJson(core.Map _json) {
    if (_json.containsKey('distinctScreens')) {
      distinctScreens = _json['distinctScreens'] as core.int;
    }
    if (_json.containsKey('screenIds')) {
      screenIds = (_json['screenIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (distinctScreens != null) {
      _json['distinctScreens'] = distinctScreens;
    }
    if (screenIds != null) {
      _json['screenIds'] = screenIds;
    }
    return _json;
  }
}

/// Additional details about encountered screens with elements that are not
/// Android UI widgets.
class EncounteredNonAndroidUiWidgetScreen {
  /// Number of encountered distinct screens with non Android UI widgets.
  core.int distinctScreens;

  /// Subset of screens which contain non Android UI widgets.
  core.List<core.String> screenIds;

  EncounteredNonAndroidUiWidgetScreen();

  EncounteredNonAndroidUiWidgetScreen.fromJson(core.Map _json) {
    if (_json.containsKey('distinctScreens')) {
      distinctScreens = _json['distinctScreens'] as core.int;
    }
    if (_json.containsKey('screenIds')) {
      screenIds = (_json['screenIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (distinctScreens != null) {
      _json['distinctScreens'] = distinctScreens;
    }
    if (screenIds != null) {
      _json['screenIds'] = screenIds;
    }
    return _json;
  }
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
  Timestamp completionTime;

  /// The time when the Environment was created.
  ///
  /// Output only.
  Timestamp creationTime;

  /// Dimension values describing the environment.
  ///
  /// Dimension values always consist of "Model", "Version", "Locale", and
  /// "Orientation". - In response: always set - In create request: always set -
  /// In update request: never set
  core.List<EnvironmentDimensionValueEntry> dimensionValue;

  /// A short human-readable name to display in the UI.
  ///
  /// Maximum of 100 characters. For example: Nexus 5, API 27.
  core.String displayName;

  /// An Environment id.
  ///
  /// Output only.
  core.String environmentId;

  /// Merged result of the environment.
  MergedResult environmentResult;

  /// An Execution id.
  ///
  /// Output only.
  core.String executionId;

  /// A History id.
  ///
  /// Output only.
  core.String historyId;

  /// A Project id.
  ///
  /// Output only.
  core.String projectId;

  /// The location where output files are stored in the user bucket.
  ResultsStorage resultsStorage;

  /// Summaries of shards.
  ///
  /// Only one shard will present unless sharding feature is enabled in
  /// TestExecutionService.
  ///
  /// Output only.
  core.List<ShardSummary> shardSummaries;

  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey('completionTime')) {
      completionTime = Timestamp.fromJson(
          _json['completionTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('creationTime')) {
      creationTime = Timestamp.fromJson(
          _json['creationTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dimensionValue')) {
      dimensionValue = (_json['dimensionValue'] as core.List)
          .map<EnvironmentDimensionValueEntry>((value) =>
              EnvironmentDimensionValueEntry.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('environmentId')) {
      environmentId = _json['environmentId'] as core.String;
    }
    if (_json.containsKey('environmentResult')) {
      environmentResult = MergedResult.fromJson(
          _json['environmentResult'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('executionId')) {
      executionId = _json['executionId'] as core.String;
    }
    if (_json.containsKey('historyId')) {
      historyId = _json['historyId'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('resultsStorage')) {
      resultsStorage = ResultsStorage.fromJson(
          _json['resultsStorage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('shardSummaries')) {
      shardSummaries = (_json['shardSummaries'] as core.List)
          .map<ShardSummary>((value) => ShardSummary.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (completionTime != null) {
      _json['completionTime'] = completionTime.toJson();
    }
    if (creationTime != null) {
      _json['creationTime'] = creationTime.toJson();
    }
    if (dimensionValue != null) {
      _json['dimensionValue'] =
          dimensionValue.map((value) => value.toJson()).toList();
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (environmentId != null) {
      _json['environmentId'] = environmentId;
    }
    if (environmentResult != null) {
      _json['environmentResult'] = environmentResult.toJson();
    }
    if (executionId != null) {
      _json['executionId'] = executionId;
    }
    if (historyId != null) {
      _json['historyId'] = historyId;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (resultsStorage != null) {
      _json['resultsStorage'] = resultsStorage.toJson();
    }
    if (shardSummaries != null) {
      _json['shardSummaries'] =
          shardSummaries.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class EnvironmentDimensionValueEntry {
  core.String key;
  core.String value;

  EnvironmentDimensionValueEntry();

  EnvironmentDimensionValueEntry.fromJson(core.Map _json) {
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (key != null) {
      _json['key'] = key;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

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
  Timestamp completionTime;

  /// The time when the Execution was created.
  ///
  /// This value will be set automatically when CreateExecution is called. - In
  /// response: always set - In create/update request: never set
  Timestamp creationTime;

  /// The dimensions along which different steps in this execution may vary.
  ///
  /// This must remain fixed over the life of the execution. Returns
  /// INVALID_ARGUMENT if this field is set in an update request. Returns
  /// INVALID_ARGUMENT if the same name occurs in more than one
  /// dimension_definition. Returns INVALID_ARGUMENT if the size of the list is
  /// over 100. - In response: present if set by create - In create request:
  /// optional - In update request: never set
  core.List<MatrixDimensionDefinition> dimensionDefinitions;

  /// A unique identifier within a History for this Execution.
  ///
  /// Returns INVALID_ARGUMENT if this field is set or overwritten by the
  /// caller. - In response always set - In create/update request: never set
  core.String executionId;

  /// Classify the result, for example into SUCCESS or FAILURE - In response:
  /// present if set by create/update request - In create/update request:
  /// optional
  Outcome outcome;

  /// Lightweight information about execution request.
  ///
  /// - In response: present if set by create - In create: optional - In update:
  /// optional
  Specification specification;

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
  core.String state;

  /// TestExecution Matrix ID that the TestExecutionService uses.
  ///
  /// - In response: present if set by create - In create: optional - In update:
  /// never set
  core.String testExecutionMatrixId;

  Execution();

  Execution.fromJson(core.Map _json) {
    if (_json.containsKey('completionTime')) {
      completionTime = Timestamp.fromJson(
          _json['completionTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('creationTime')) {
      creationTime = Timestamp.fromJson(
          _json['creationTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dimensionDefinitions')) {
      dimensionDefinitions = (_json['dimensionDefinitions'] as core.List)
          .map<MatrixDimensionDefinition>((value) =>
              MatrixDimensionDefinition.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('executionId')) {
      executionId = _json['executionId'] as core.String;
    }
    if (_json.containsKey('outcome')) {
      outcome = Outcome.fromJson(
          _json['outcome'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('specification')) {
      specification = Specification.fromJson(
          _json['specification'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('testExecutionMatrixId')) {
      testExecutionMatrixId = _json['testExecutionMatrixId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (completionTime != null) {
      _json['completionTime'] = completionTime.toJson();
    }
    if (creationTime != null) {
      _json['creationTime'] = creationTime.toJson();
    }
    if (dimensionDefinitions != null) {
      _json['dimensionDefinitions'] =
          dimensionDefinitions.map((value) => value.toJson()).toList();
    }
    if (executionId != null) {
      _json['executionId'] = executionId;
    }
    if (outcome != null) {
      _json['outcome'] = outcome.toJson();
    }
    if (specification != null) {
      _json['specification'] = specification.toJson();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (testExecutionMatrixId != null) {
      _json['testExecutionMatrixId'] = testExecutionMatrixId;
    }
    return _json;
  }
}

/// Failed to install the APK.
class FailedToInstall {
  FailedToInstall();

  FailedToInstall.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Details for an outcome with a FAILURE outcome summary.
class FailureDetail {
  /// If the failure was severe because the system (app) under test crashed.
  core.bool crashed;

  /// If the device ran out of memory during a test, causing the test to crash.
  core.bool deviceOutOfMemory;

  /// If the Roboscript failed to complete successfully, e.g., because a
  /// Roboscript action or assertion failed or a Roboscript action could not be
  /// matched during the entire crawl.
  core.bool failedRoboscript;

  /// If an app is not installed and thus no test can be run with the app.
  ///
  /// This might be caused by trying to run a test on an unsupported platform.
  core.bool notInstalled;

  /// If a native process (including any other than the app) crashed.
  core.bool otherNativeCrash;

  /// If the test overran some time limit, and that is why it failed.
  core.bool timedOut;

  /// If the robo was unable to crawl the app; perhaps because the app did not
  /// start.
  core.bool unableToCrawl;

  FailureDetail();

  FailureDetail.fromJson(core.Map _json) {
    if (_json.containsKey('crashed')) {
      crashed = _json['crashed'] as core.bool;
    }
    if (_json.containsKey('deviceOutOfMemory')) {
      deviceOutOfMemory = _json['deviceOutOfMemory'] as core.bool;
    }
    if (_json.containsKey('failedRoboscript')) {
      failedRoboscript = _json['failedRoboscript'] as core.bool;
    }
    if (_json.containsKey('notInstalled')) {
      notInstalled = _json['notInstalled'] as core.bool;
    }
    if (_json.containsKey('otherNativeCrash')) {
      otherNativeCrash = _json['otherNativeCrash'] as core.bool;
    }
    if (_json.containsKey('timedOut')) {
      timedOut = _json['timedOut'] as core.bool;
    }
    if (_json.containsKey('unableToCrawl')) {
      unableToCrawl = _json['unableToCrawl'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (crashed != null) {
      _json['crashed'] = crashed;
    }
    if (deviceOutOfMemory != null) {
      _json['deviceOutOfMemory'] = deviceOutOfMemory;
    }
    if (failedRoboscript != null) {
      _json['failedRoboscript'] = failedRoboscript;
    }
    if (notInstalled != null) {
      _json['notInstalled'] = notInstalled;
    }
    if (otherNativeCrash != null) {
      _json['otherNativeCrash'] = otherNativeCrash;
    }
    if (timedOut != null) {
      _json['timedOut'] = timedOut;
    }
    if (unableToCrawl != null) {
      _json['unableToCrawl'] = unableToCrawl;
    }
    return _json;
  }
}

/// Additional details for a fatal exception.
class FatalException {
  /// The stack trace of the fatal exception.
  ///
  /// Optional.
  StackTrace stackTrace;

  FatalException();

  FatalException.fromJson(core.Map _json) {
    if (_json.containsKey('stackTrace')) {
      stackTrace = StackTrace.fromJson(
          _json['stackTrace'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (stackTrace != null) {
      _json['stackTrace'] = stackTrace.toJson();
    }
    return _json;
  }
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
  core.String fileUri;

  FileReference();

  FileReference.fromJson(core.Map _json) {
    if (_json.containsKey('fileUri')) {
      fileUri = _json['fileUri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fileUri != null) {
      _json['fileUri'] = fileUri;
    }
    return _json;
  }
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
  core.List<GraphicsStatsBucket> buckets;

  /// Total "high input latency" events.
  core.String highInputLatencyCount;

  /// Total frames with slow render time.
  ///
  /// Should be <= total_frames.
  core.String jankyFrames;

  /// Total "missed vsync" events.
  core.String missedVsyncCount;

  /// 50th percentile frame render time in milliseconds.
  core.String p50Millis;

  /// 90th percentile frame render time in milliseconds.
  core.String p90Millis;

  /// 95th percentile frame render time in milliseconds.
  core.String p95Millis;

  /// 99th percentile frame render time in milliseconds.
  core.String p99Millis;

  /// Total "slow bitmap upload" events.
  core.String slowBitmapUploadCount;

  /// Total "slow draw" events.
  core.String slowDrawCount;

  /// Total "slow UI thread" events.
  core.String slowUiThreadCount;

  /// Total frames rendered by package.
  core.String totalFrames;

  GraphicsStats();

  GraphicsStats.fromJson(core.Map _json) {
    if (_json.containsKey('buckets')) {
      buckets = (_json['buckets'] as core.List)
          .map<GraphicsStatsBucket>((value) => GraphicsStatsBucket.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('highInputLatencyCount')) {
      highInputLatencyCount = _json['highInputLatencyCount'] as core.String;
    }
    if (_json.containsKey('jankyFrames')) {
      jankyFrames = _json['jankyFrames'] as core.String;
    }
    if (_json.containsKey('missedVsyncCount')) {
      missedVsyncCount = _json['missedVsyncCount'] as core.String;
    }
    if (_json.containsKey('p50Millis')) {
      p50Millis = _json['p50Millis'] as core.String;
    }
    if (_json.containsKey('p90Millis')) {
      p90Millis = _json['p90Millis'] as core.String;
    }
    if (_json.containsKey('p95Millis')) {
      p95Millis = _json['p95Millis'] as core.String;
    }
    if (_json.containsKey('p99Millis')) {
      p99Millis = _json['p99Millis'] as core.String;
    }
    if (_json.containsKey('slowBitmapUploadCount')) {
      slowBitmapUploadCount = _json['slowBitmapUploadCount'] as core.String;
    }
    if (_json.containsKey('slowDrawCount')) {
      slowDrawCount = _json['slowDrawCount'] as core.String;
    }
    if (_json.containsKey('slowUiThreadCount')) {
      slowUiThreadCount = _json['slowUiThreadCount'] as core.String;
    }
    if (_json.containsKey('totalFrames')) {
      totalFrames = _json['totalFrames'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (buckets != null) {
      _json['buckets'] = buckets.map((value) => value.toJson()).toList();
    }
    if (highInputLatencyCount != null) {
      _json['highInputLatencyCount'] = highInputLatencyCount;
    }
    if (jankyFrames != null) {
      _json['jankyFrames'] = jankyFrames;
    }
    if (missedVsyncCount != null) {
      _json['missedVsyncCount'] = missedVsyncCount;
    }
    if (p50Millis != null) {
      _json['p50Millis'] = p50Millis;
    }
    if (p90Millis != null) {
      _json['p90Millis'] = p90Millis;
    }
    if (p95Millis != null) {
      _json['p95Millis'] = p95Millis;
    }
    if (p99Millis != null) {
      _json['p99Millis'] = p99Millis;
    }
    if (slowBitmapUploadCount != null) {
      _json['slowBitmapUploadCount'] = slowBitmapUploadCount;
    }
    if (slowDrawCount != null) {
      _json['slowDrawCount'] = slowDrawCount;
    }
    if (slowUiThreadCount != null) {
      _json['slowUiThreadCount'] = slowUiThreadCount;
    }
    if (totalFrames != null) {
      _json['totalFrames'] = totalFrames;
    }
    return _json;
  }
}

class GraphicsStatsBucket {
  /// Number of frames in the bucket.
  core.String frameCount;

  /// Lower bound of render time in milliseconds.
  core.String renderMillis;

  GraphicsStatsBucket();

  GraphicsStatsBucket.fromJson(core.Map _json) {
    if (_json.containsKey('frameCount')) {
      frameCount = _json['frameCount'] as core.String;
    }
    if (_json.containsKey('renderMillis')) {
      renderMillis = _json['renderMillis'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (frameCount != null) {
      _json['frameCount'] = frameCount;
    }
    if (renderMillis != null) {
      _json['renderMillis'] = renderMillis;
    }
    return _json;
  }
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
  core.String displayName;

  /// A unique identifier within a project for this History.
  ///
  /// Returns INVALID_ARGUMENT if this field is set or overwritten by the
  /// caller. - In response always set - In create request: never set
  core.String historyId;

  /// A name to uniquely identify a history within a project.
  ///
  /// Maximum of 200 characters. - In response always set - In create request:
  /// always set
  core.String name;

  /// The platform of the test history.
  ///
  /// - In response: always set. Returns the platform of the last execution if
  /// unknown.
  /// Possible string values are:
  /// - "unknownPlatform"
  /// - "android"
  /// - "ios"
  core.String testPlatform;

  History();

  History.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('historyId')) {
      historyId = _json['historyId'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('testPlatform')) {
      testPlatform = _json['testPlatform'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (historyId != null) {
      _json['historyId'] = historyId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (testPlatform != null) {
      _json['testPlatform'] = testPlatform;
    }
    return _json;
  }
}

/// An image, with a link to the main image and a thumbnail.
class Image {
  /// An error explaining why the thumbnail could not be rendered.
  Status error;

  /// A reference to the full-size, original image.
  ///
  /// This is the same as the tool_outputs entry for the image under its Step.
  /// Always set.
  ToolOutputReference sourceImage;

  /// The step to which the image is attached.
  ///
  /// Always set.
  core.String stepId;

  /// The thumbnail.
  Thumbnail thumbnail;

  Image();

  Image.fromJson(core.Map _json) {
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sourceImage')) {
      sourceImage = ToolOutputReference.fromJson(
          _json['sourceImage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('stepId')) {
      stepId = _json['stepId'] as core.String;
    }
    if (_json.containsKey('thumbnail')) {
      thumbnail = Thumbnail.fromJson(
          _json['thumbnail'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (sourceImage != null) {
      _json['sourceImage'] = sourceImage.toJson();
    }
    if (stepId != null) {
      _json['stepId'] = stepId;
    }
    if (thumbnail != null) {
      _json['thumbnail'] = thumbnail.toJson();
    }
    return _json;
  }
}

/// Additional details of in-app purchases encountered during the crawl.
class InAppPurchasesFound {
  /// The total number of in-app purchases flows explored: how many times the
  /// robo tries to buy a SKU.
  core.int inAppPurchasesFlowsExplored;

  /// The total number of in-app purchases flows started.
  core.int inAppPurchasesFlowsStarted;

  InAppPurchasesFound();

  InAppPurchasesFound.fromJson(core.Map _json) {
    if (_json.containsKey('inAppPurchasesFlowsExplored')) {
      inAppPurchasesFlowsExplored =
          _json['inAppPurchasesFlowsExplored'] as core.int;
    }
    if (_json.containsKey('inAppPurchasesFlowsStarted')) {
      inAppPurchasesFlowsStarted =
          _json['inAppPurchasesFlowsStarted'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (inAppPurchasesFlowsExplored != null) {
      _json['inAppPurchasesFlowsExplored'] = inAppPurchasesFlowsExplored;
    }
    if (inAppPurchasesFlowsStarted != null) {
      _json['inAppPurchasesFlowsStarted'] = inAppPurchasesFlowsStarted;
    }
    return _json;
  }
}

/// Details for an outcome with an INCONCLUSIVE outcome summary.
class InconclusiveDetail {
  /// If the end user aborted the test execution before a pass or fail could be
  /// determined.
  ///
  /// For example, the user pressed ctrl-c which sent a kill signal to the test
  /// runner while the test was running.
  core.bool abortedByUser;

  /// If results are being provided to the user in certain cases of
  /// infrastructure failures
  core.bool hasErrorLogs;

  /// If the test runner could not determine success or failure because the test
  /// depends on a component other than the system under test which failed.
  ///
  /// For example, a mobile test requires provisioning a device where the test
  /// executes, and that provisioning can fail.
  core.bool infrastructureFailure;

  InconclusiveDetail();

  InconclusiveDetail.fromJson(core.Map _json) {
    if (_json.containsKey('abortedByUser')) {
      abortedByUser = _json['abortedByUser'] as core.bool;
    }
    if (_json.containsKey('hasErrorLogs')) {
      hasErrorLogs = _json['hasErrorLogs'] as core.bool;
    }
    if (_json.containsKey('infrastructureFailure')) {
      infrastructureFailure = _json['infrastructureFailure'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (abortedByUser != null) {
      _json['abortedByUser'] = abortedByUser;
    }
    if (hasErrorLogs != null) {
      _json['hasErrorLogs'] = hasErrorLogs;
    }
    if (infrastructureFailure != null) {
      _json['infrastructureFailure'] = infrastructureFailure;
    }
    return _json;
  }
}

/// Step Id and outcome of each individual step that was run as a group with
/// other steps with the same configuration.
class IndividualOutcome {
  /// Unique int given to each step.
  ///
  /// Ranges from 0(inclusive) to total number of steps(exclusive). The primary
  /// step is 0.
  core.int multistepNumber;

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
  core.String outcomeSummary;

  /// How long it took for this step to run.
  Duration runDuration;
  core.String stepId;

  IndividualOutcome();

  IndividualOutcome.fromJson(core.Map _json) {
    if (_json.containsKey('multistepNumber')) {
      multistepNumber = _json['multistepNumber'] as core.int;
    }
    if (_json.containsKey('outcomeSummary')) {
      outcomeSummary = _json['outcomeSummary'] as core.String;
    }
    if (_json.containsKey('runDuration')) {
      runDuration = Duration.fromJson(
          _json['runDuration'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('stepId')) {
      stepId = _json['stepId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (multistepNumber != null) {
      _json['multistepNumber'] = multistepNumber;
    }
    if (outcomeSummary != null) {
      _json['outcomeSummary'] = outcomeSummary;
    }
    if (runDuration != null) {
      _json['runDuration'] = runDuration.toJson();
    }
    if (stepId != null) {
      _json['stepId'] = stepId;
    }
    return _json;
  }
}

/// A warning that Robo did not crawl potentially important parts of the app.
class InsufficientCoverage {
  InsufficientCoverage();

  InsufficientCoverage.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Additional details for an iOS app crash.
class IosAppCrashed {
  /// The stack trace, if one is available.
  ///
  /// Optional.
  StackTrace stackTrace;

  IosAppCrashed();

  IosAppCrashed.fromJson(core.Map _json) {
    if (_json.containsKey('stackTrace')) {
      stackTrace = StackTrace.fromJson(
          _json['stackTrace'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (stackTrace != null) {
      _json['stackTrace'] = stackTrace.toJson();
    }
    return _json;
  }
}

/// iOS app information
class IosAppInfo {
  /// The name of the app.
  ///
  /// Required
  core.String name;

  IosAppInfo();

  IosAppInfo.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// A Robo test for an iOS application.
class IosRoboTest {
  IosRoboTest();

  IosRoboTest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// A iOS mobile test specification
class IosTest {
  /// Information about the application under test.
  IosAppInfo iosAppInfo;

  /// An iOS Robo test.
  IosRoboTest iosRoboTest;

  /// An iOS test loop.
  IosTestLoop iosTestLoop;

  /// An iOS XCTest.
  IosXcTest iosXcTest;

  /// Max time a test is allowed to run before it is automatically cancelled.
  Duration testTimeout;

  IosTest();

  IosTest.fromJson(core.Map _json) {
    if (_json.containsKey('iosAppInfo')) {
      iosAppInfo = IosAppInfo.fromJson(
          _json['iosAppInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('iosRoboTest')) {
      iosRoboTest = IosRoboTest.fromJson(
          _json['iosRoboTest'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('iosTestLoop')) {
      iosTestLoop = IosTestLoop.fromJson(
          _json['iosTestLoop'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('iosXcTest')) {
      iosXcTest = IosXcTest.fromJson(
          _json['iosXcTest'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('testTimeout')) {
      testTimeout = Duration.fromJson(
          _json['testTimeout'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (iosAppInfo != null) {
      _json['iosAppInfo'] = iosAppInfo.toJson();
    }
    if (iosRoboTest != null) {
      _json['iosRoboTest'] = iosRoboTest.toJson();
    }
    if (iosTestLoop != null) {
      _json['iosTestLoop'] = iosTestLoop.toJson();
    }
    if (iosXcTest != null) {
      _json['iosXcTest'] = iosXcTest.toJson();
    }
    if (testTimeout != null) {
      _json['testTimeout'] = testTimeout.toJson();
    }
    return _json;
  }
}

/// A game loop test of an iOS application.
class IosTestLoop {
  /// Bundle ID of the app.
  core.String bundleId;

  IosTestLoop();

  IosTestLoop.fromJson(core.Map _json) {
    if (_json.containsKey('bundleId')) {
      bundleId = _json['bundleId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bundleId != null) {
      _json['bundleId'] = bundleId;
    }
    return _json;
  }
}

/// A test of an iOS application that uses the XCTest framework.
class IosXcTest {
  /// Bundle ID of the app.
  core.String bundleId;

  /// Xcode version that the test was run with.
  core.String xcodeVersion;

  IosXcTest();

  IosXcTest.fromJson(core.Map _json) {
    if (_json.containsKey('bundleId')) {
      bundleId = _json['bundleId'] as core.String;
    }
    if (_json.containsKey('xcodeVersion')) {
      xcodeVersion = _json['xcodeVersion'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bundleId != null) {
      _json['bundleId'] = bundleId;
    }
    if (xcodeVersion != null) {
      _json['xcodeVersion'] = xcodeVersion;
    }
    return _json;
  }
}

/// Failed to find the launcher activity of an app.
class LauncherActivityNotFound {
  LauncherActivityNotFound();

  LauncherActivityNotFound.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Response message for EnvironmentService.ListEnvironments.
class ListEnvironmentsResponse {
  /// Environments.
  ///
  /// Always set.
  core.List<Environment> environments;

  /// A Execution id Always set.
  core.String executionId;

  /// A History id.
  ///
  /// Always set.
  core.String historyId;

  /// A continuation token to resume the query at the next item.
  ///
  /// Will only be set if there are more Environments to fetch.
  core.String nextPageToken;

  /// A Project id.
  ///
  /// Always set.
  core.String projectId;

  ListEnvironmentsResponse();

  ListEnvironmentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('environments')) {
      environments = (_json['environments'] as core.List)
          .map<Environment>((value) => Environment.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('executionId')) {
      executionId = _json['executionId'] as core.String;
    }
    if (_json.containsKey('historyId')) {
      historyId = _json['historyId'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (environments != null) {
      _json['environments'] =
          environments.map((value) => value.toJson()).toList();
    }
    if (executionId != null) {
      _json['executionId'] = executionId;
    }
    if (historyId != null) {
      _json['historyId'] = historyId;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    return _json;
  }
}

class ListExecutionsResponse {
  /// Executions.
  ///
  /// Always set.
  core.List<Execution> executions;

  /// A continuation token to resume the query at the next item.
  ///
  /// Will only be set if there are more Executions to fetch.
  core.String nextPageToken;

  ListExecutionsResponse();

  ListExecutionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('executions')) {
      executions = (_json['executions'] as core.List)
          .map<Execution>((value) =>
              Execution.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (executions != null) {
      _json['executions'] = executions.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for HistoryService.List
class ListHistoriesResponse {
  /// Histories.
  core.List<History> histories;

  /// A continuation token to resume the query at the next item.
  ///
  /// Will only be set if there are more histories to fetch. Tokens are valid
  /// for up to one hour from the time of the first list request. For instance,
  /// if you make a list request at 1PM and use the token from this first
  /// request 10 minutes later, the token from this second response will only be
  /// valid for 50 minutes.
  core.String nextPageToken;

  ListHistoriesResponse();

  ListHistoriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('histories')) {
      histories = (_json['histories'] as core.List)
          .map<History>((value) =>
              History.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (histories != null) {
      _json['histories'] = histories.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

class ListPerfSampleSeriesResponse {
  /// The resulting PerfSampleSeries sorted by id
  core.List<PerfSampleSeries> perfSampleSeries;

  ListPerfSampleSeriesResponse();

  ListPerfSampleSeriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('perfSampleSeries')) {
      perfSampleSeries = (_json['perfSampleSeries'] as core.List)
          .map<PerfSampleSeries>((value) => PerfSampleSeries.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (perfSampleSeries != null) {
      _json['perfSampleSeries'] =
          perfSampleSeries.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class ListPerfSamplesResponse {
  /// Optional, returned if result size exceeds the page size specified in the
  /// request (or the default page size, 500, if unspecified).
  ///
  /// It indicates the last sample timestamp to be used as page_token in
  /// subsequent request
  core.String nextPageToken;
  core.List<PerfSample> perfSamples;

  ListPerfSamplesResponse();

  ListPerfSamplesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('perfSamples')) {
      perfSamples = (_json['perfSamples'] as core.List)
          .map<PerfSample>((value) =>
              PerfSample.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (perfSamples != null) {
      _json['perfSamples'] =
          perfSamples.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class ListScreenshotClustersResponse {
  /// The set of clusters associated with an execution Always set
  core.List<ScreenshotCluster> clusters;

  ListScreenshotClustersResponse();

  ListScreenshotClustersResponse.fromJson(core.Map _json) {
    if (_json.containsKey('clusters')) {
      clusters = (_json['clusters'] as core.List)
          .map<ScreenshotCluster>((value) => ScreenshotCluster.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (clusters != null) {
      _json['clusters'] = clusters.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for AccessibilityService.ListStepAccessibilityClusters.
class ListStepAccessibilityClustersResponse {
  /// A sequence of accessibility suggestions, grouped into clusters.
  ///
  /// Within the sequence, clusters that belong to the same SuggestionCategory
  /// should be adjacent. Within each category, clusters should be ordered by
  /// their SuggestionPriority (ERRORs first). The categories should be ordered
  /// by their highest priority cluster.
  core.List<SuggestionClusterProto> clusters;

  /// A full resource name of the step.
  ///
  /// For example, projects/my-project/histories/bh.1234567890abcdef/executions/
  /// 1234567890123456789/steps/bs.1234567890abcdef Always presents.
  core.String name;

  ListStepAccessibilityClustersResponse();

  ListStepAccessibilityClustersResponse.fromJson(core.Map _json) {
    if (_json.containsKey('clusters')) {
      clusters = (_json['clusters'] as core.List)
          .map<SuggestionClusterProto>((value) =>
              SuggestionClusterProto.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (clusters != null) {
      _json['clusters'] = clusters.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// A response containing the thumbnails in a step.
class ListStepThumbnailsResponse {
  /// A continuation token to resume the query at the next item.
  ///
  /// If set, indicates that there are more thumbnails to read, by calling list
  /// again with this value in the page_token field.
  core.String nextPageToken;

  /// A list of image data.
  ///
  /// Images are returned in a deterministic order; they are ordered by these
  /// factors, in order of importance: * First, by their associated test case.
  /// Images without a test case are considered greater than images with one. *
  /// Second, by their creation time. Images without a creation time are greater
  /// than images with one. * Third, by the order in which they were added to
  /// the step (by calls to CreateStep or UpdateStep).
  core.List<Image> thumbnails;

  ListStepThumbnailsResponse();

  ListStepThumbnailsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('thumbnails')) {
      thumbnails = (_json['thumbnails'] as core.List)
          .map<Image>((value) =>
              Image.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (thumbnails != null) {
      _json['thumbnails'] = thumbnails.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for StepService.List.
class ListStepsResponse {
  /// A continuation token to resume the query at the next item.
  ///
  /// If set, indicates that there are more steps to read, by calling list again
  /// with this value in the page_token field.
  core.String nextPageToken;

  /// Steps.
  core.List<Step> steps;

  ListStepsResponse();

  ListStepsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('steps')) {
      steps = (_json['steps'] as core.List)
          .map<Step>((value) =>
              Step.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (steps != null) {
      _json['steps'] = steps.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for StepService.ListTestCases.
class ListTestCasesResponse {
  core.String nextPageToken;

  /// List of test cases.
  core.List<TestCase> testCases;

  ListTestCasesResponse();

  ListTestCasesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('testCases')) {
      testCases = (_json['testCases'] as core.List)
          .map<TestCase>((value) =>
              TestCase.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (testCases != null) {
      _json['testCases'] = testCases.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A warning that there were issues in logcat collection.
class LogcatCollectionError {
  LogcatCollectionError();

  LogcatCollectionError.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// One dimension of the matrix of different runs of a step.
class MatrixDimensionDefinition {
  MatrixDimensionDefinition();

  MatrixDimensionDefinition.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

class MemoryInfo {
  /// Maximum memory that can be allocated to the process in KiB
  core.String memoryCapInKibibyte;

  /// Total memory available on the device in KiB
  core.String memoryTotalInKibibyte;

  MemoryInfo();

  MemoryInfo.fromJson(core.Map _json) {
    if (_json.containsKey('memoryCapInKibibyte')) {
      memoryCapInKibibyte = _json['memoryCapInKibibyte'] as core.String;
    }
    if (_json.containsKey('memoryTotalInKibibyte')) {
      memoryTotalInKibibyte = _json['memoryTotalInKibibyte'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (memoryCapInKibibyte != null) {
      _json['memoryCapInKibibyte'] = memoryCapInKibibyte;
    }
    if (memoryTotalInKibibyte != null) {
      _json['memoryTotalInKibibyte'] = memoryTotalInKibibyte;
    }
    return _json;
  }
}

/// Merged test result for environment.
///
/// If the environment has only one step (no reruns or shards), then the merged
/// result is the same as the step result. If the environment has multiple
/// shards and/or reruns, then the results of shards and reruns that belong to
/// the same environment are merged into one environment result.
class MergedResult {
  /// Outcome of the resource
  Outcome outcome;

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
  core.String state;

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
  core.List<TestSuiteOverview> testSuiteOverviews;

  MergedResult();

  MergedResult.fromJson(core.Map _json) {
    if (_json.containsKey('outcome')) {
      outcome = Outcome.fromJson(
          _json['outcome'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('testSuiteOverviews')) {
      testSuiteOverviews = (_json['testSuiteOverviews'] as core.List)
          .map<TestSuiteOverview>((value) => TestSuiteOverview.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (outcome != null) {
      _json['outcome'] = outcome.toJson();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (testSuiteOverviews != null) {
      _json['testSuiteOverviews'] =
          testSuiteOverviews.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Details when multiple steps are run with the same configuration as a group.
class MultiStep {
  /// Unique int given to each step.
  ///
  /// Ranges from 0(inclusive) to total number of steps(exclusive). The primary
  /// step is 0.
  core.int multistepNumber;

  /// Present if it is a primary (original) step.
  PrimaryStep primaryStep;

  /// Step Id of the primary (original) step, which might be this step.
  core.String primaryStepId;

  MultiStep();

  MultiStep.fromJson(core.Map _json) {
    if (_json.containsKey('multistepNumber')) {
      multistepNumber = _json['multistepNumber'] as core.int;
    }
    if (_json.containsKey('primaryStep')) {
      primaryStep = PrimaryStep.fromJson(
          _json['primaryStep'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('primaryStepId')) {
      primaryStepId = _json['primaryStepId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (multistepNumber != null) {
      _json['multistepNumber'] = multistepNumber;
    }
    if (primaryStep != null) {
      _json['primaryStep'] = primaryStep.toJson();
    }
    if (primaryStepId != null) {
      _json['primaryStepId'] = primaryStepId;
    }
    return _json;
  }
}

/// Additional details for a native crash.
class NativeCrash {
  /// The stack trace of the native crash.
  ///
  /// Optional.
  StackTrace stackTrace;

  NativeCrash();

  NativeCrash.fromJson(core.Map _json) {
    if (_json.containsKey('stackTrace')) {
      stackTrace = StackTrace.fromJson(
          _json['stackTrace'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (stackTrace != null) {
      _json['stackTrace'] = stackTrace.toJson();
    }
    return _json;
  }
}

/// A non-sdk API and examples of it being called along with other metadata See
/// https://developer.android.com/distribute/best-practices/develop/restrictions-non-sdk-interfaces
class NonSdkApi {
  /// The signature of the Non-SDK API
  core.String apiSignature;

  /// Example stack traces of this API being called.
  core.List<core.String> exampleStackTraces;

  /// Optional debugging insights for non-SDK API violations.
  core.List<NonSdkApiInsight> insights;

  /// The total number of times this API was observed to have been called.
  core.int invocationCount;

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
  core.String list;

  NonSdkApi();

  NonSdkApi.fromJson(core.Map _json) {
    if (_json.containsKey('apiSignature')) {
      apiSignature = _json['apiSignature'] as core.String;
    }
    if (_json.containsKey('exampleStackTraces')) {
      exampleStackTraces = (_json['exampleStackTraces'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('insights')) {
      insights = (_json['insights'] as core.List)
          .map<NonSdkApiInsight>((value) => NonSdkApiInsight.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('invocationCount')) {
      invocationCount = _json['invocationCount'] as core.int;
    }
    if (_json.containsKey('list')) {
      list = _json['list'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiSignature != null) {
      _json['apiSignature'] = apiSignature;
    }
    if (exampleStackTraces != null) {
      _json['exampleStackTraces'] = exampleStackTraces;
    }
    if (insights != null) {
      _json['insights'] = insights.map((value) => value.toJson()).toList();
    }
    if (invocationCount != null) {
      _json['invocationCount'] = invocationCount;
    }
    if (list != null) {
      _json['list'] = list;
    }
    return _json;
  }
}

/// Non-SDK API insights (to address debugging solutions).
class NonSdkApiInsight {
  /// Optional sample stack traces, for which this insight applies (there should
  /// be at least one).
  core.List<core.String> exampleTraceMessages;

  /// A unique ID, to be used for determining the effectiveness of this
  /// particular insight in the context of a matcher.
  ///
  /// (required)
  core.String matcherId;

  /// An insight indicating that the hidden API usage originates from a
  /// Google-provided library.
  PendingGoogleUpdateInsight pendingGoogleUpdateInsight;

  /// An insight indicating that the hidden API usage originates from the use of
  /// a library that needs to be upgraded.
  UpgradeInsight upgradeInsight;

  NonSdkApiInsight();

  NonSdkApiInsight.fromJson(core.Map _json) {
    if (_json.containsKey('exampleTraceMessages')) {
      exampleTraceMessages = (_json['exampleTraceMessages'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('matcherId')) {
      matcherId = _json['matcherId'] as core.String;
    }
    if (_json.containsKey('pendingGoogleUpdateInsight')) {
      pendingGoogleUpdateInsight = PendingGoogleUpdateInsight.fromJson(
          _json['pendingGoogleUpdateInsight']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('upgradeInsight')) {
      upgradeInsight = UpgradeInsight.fromJson(
          _json['upgradeInsight'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exampleTraceMessages != null) {
      _json['exampleTraceMessages'] = exampleTraceMessages;
    }
    if (matcherId != null) {
      _json['matcherId'] = matcherId;
    }
    if (pendingGoogleUpdateInsight != null) {
      _json['pendingGoogleUpdateInsight'] = pendingGoogleUpdateInsight.toJson();
    }
    if (upgradeInsight != null) {
      _json['upgradeInsight'] = upgradeInsight.toJson();
    }
    return _json;
  }
}

/// Additional details for a non-sdk API usage violation.
class NonSdkApiUsageViolation {
  /// Signatures of a subset of those hidden API's.
  core.List<core.String> apiSignatures;

  /// Total number of unique hidden API's accessed.
  core.int uniqueApis;

  NonSdkApiUsageViolation();

  NonSdkApiUsageViolation.fromJson(core.Map _json) {
    if (_json.containsKey('apiSignatures')) {
      apiSignatures = (_json['apiSignatures'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('uniqueApis')) {
      uniqueApis = _json['uniqueApis'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiSignatures != null) {
      _json['apiSignatures'] = apiSignatures;
    }
    if (uniqueApis != null) {
      _json['uniqueApis'] = uniqueApis;
    }
    return _json;
  }
}

/// Contains a summary and examples of non-sdk API usage violations.
class NonSdkApiUsageViolationReport {
  /// Examples of the detected API usages.
  core.List<NonSdkApi> exampleApis;

  /// Minimum API level required for the application to run.
  core.int minSdkVersion;

  /// Specifies the API Level on which the application is designed to run.
  core.int targetSdkVersion;

  /// Total number of unique Non-SDK API's accessed.
  core.int uniqueApis;

  NonSdkApiUsageViolationReport();

  NonSdkApiUsageViolationReport.fromJson(core.Map _json) {
    if (_json.containsKey('exampleApis')) {
      exampleApis = (_json['exampleApis'] as core.List)
          .map<NonSdkApi>((value) =>
              NonSdkApi.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('minSdkVersion')) {
      minSdkVersion = _json['minSdkVersion'] as core.int;
    }
    if (_json.containsKey('targetSdkVersion')) {
      targetSdkVersion = _json['targetSdkVersion'] as core.int;
    }
    if (_json.containsKey('uniqueApis')) {
      uniqueApis = _json['uniqueApis'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exampleApis != null) {
      _json['exampleApis'] =
          exampleApis.map((value) => value.toJson()).toList();
    }
    if (minSdkVersion != null) {
      _json['minSdkVersion'] = minSdkVersion;
    }
    if (targetSdkVersion != null) {
      _json['targetSdkVersion'] = targetSdkVersion;
    }
    if (uniqueApis != null) {
      _json['uniqueApis'] = uniqueApis;
    }
    return _json;
  }
}

/// Interprets a result so that humans and machines can act on it.
class Outcome {
  /// More information about a FAILURE outcome.
  ///
  /// Returns INVALID_ARGUMENT if this field is set but the summary is not
  /// FAILURE. Optional
  FailureDetail failureDetail;

  /// More information about an INCONCLUSIVE outcome.
  ///
  /// Returns INVALID_ARGUMENT if this field is set but the summary is not
  /// INCONCLUSIVE. Optional
  InconclusiveDetail inconclusiveDetail;

  /// More information about a SKIPPED outcome.
  ///
  /// Returns INVALID_ARGUMENT if this field is set but the summary is not
  /// SKIPPED. Optional
  SkippedDetail skippedDetail;

  /// More information about a SUCCESS outcome.
  ///
  /// Returns INVALID_ARGUMENT if this field is set but the summary is not
  /// SUCCESS. Optional
  SuccessDetail successDetail;

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
  core.String summary;

  Outcome();

  Outcome.fromJson(core.Map _json) {
    if (_json.containsKey('failureDetail')) {
      failureDetail = FailureDetail.fromJson(
          _json['failureDetail'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('inconclusiveDetail')) {
      inconclusiveDetail = InconclusiveDetail.fromJson(
          _json['inconclusiveDetail'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('skippedDetail')) {
      skippedDetail = SkippedDetail.fromJson(
          _json['skippedDetail'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('successDetail')) {
      successDetail = SuccessDetail.fromJson(
          _json['successDetail'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('summary')) {
      summary = _json['summary'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (failureDetail != null) {
      _json['failureDetail'] = failureDetail.toJson();
    }
    if (inconclusiveDetail != null) {
      _json['inconclusiveDetail'] = inconclusiveDetail.toJson();
    }
    if (skippedDetail != null) {
      _json['skippedDetail'] = skippedDetail.toJson();
    }
    if (successDetail != null) {
      _json['successDetail'] = successDetail.toJson();
    }
    if (summary != null) {
      _json['summary'] = summary;
    }
    return _json;
  }
}

/// A warning that Robo encountered a screen that has overlapping clickable
/// elements; this may indicate a potential UI issue.
class OverlappingUIElements {
  /// Resource names of the overlapping screen elements
  core.List<core.String> resourceName;

  /// The screen id of the elements
  core.String screenId;

  OverlappingUIElements();

  OverlappingUIElements.fromJson(core.Map _json) {
    if (_json.containsKey('resourceName')) {
      resourceName = (_json['resourceName'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('screenId')) {
      screenId = _json['screenId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceName != null) {
      _json['resourceName'] = resourceName;
    }
    if (screenId != null) {
      _json['screenId'] = screenId;
    }
    return _json;
  }
}

/// This insight indicates that the hidden API usage originates from a
/// Google-provided library.
///
/// Users need not take any action.
class PendingGoogleUpdateInsight {
  /// The name of the Google-provided library with the non-SDK API dependency.
  core.String nameOfGoogleLibrary;

  PendingGoogleUpdateInsight();

  PendingGoogleUpdateInsight.fromJson(core.Map _json) {
    if (_json.containsKey('nameOfGoogleLibrary')) {
      nameOfGoogleLibrary = _json['nameOfGoogleLibrary'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nameOfGoogleLibrary != null) {
      _json['nameOfGoogleLibrary'] = nameOfGoogleLibrary;
    }
    return _json;
  }
}

/// Encapsulates performance environment info
class PerfEnvironment {
  /// CPU related environment info
  CPUInfo cpuInfo;

  /// Memory related environment info
  MemoryInfo memoryInfo;

  PerfEnvironment();

  PerfEnvironment.fromJson(core.Map _json) {
    if (_json.containsKey('cpuInfo')) {
      cpuInfo = CPUInfo.fromJson(
          _json['cpuInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('memoryInfo')) {
      memoryInfo = MemoryInfo.fromJson(
          _json['memoryInfo'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cpuInfo != null) {
      _json['cpuInfo'] = cpuInfo.toJson();
    }
    if (memoryInfo != null) {
      _json['memoryInfo'] = memoryInfo.toJson();
    }
    return _json;
  }
}

/// A summary of perf metrics collected and performance environment info
class PerfMetricsSummary {
  AppStartTime appStartTime;

  /// A tool results execution ID.
  ///
  /// @OutputOnly
  core.String executionId;

  /// Graphics statistics for the entire run.
  ///
  /// Statistics are reset at the beginning of the run and collected at the end
  /// of the run.
  GraphicsStats graphicsStats;

  /// A tool results history ID.
  ///
  /// @OutputOnly
  core.String historyId;

  /// Describes the environment in which the performance metrics were collected
  PerfEnvironment perfEnvironment;

  /// Set of resource collected
  core.List<core.String> perfMetrics;

  /// The cloud project @OutputOnly
  core.String projectId;

  /// A tool results step ID.
  ///
  /// @OutputOnly
  core.String stepId;

  PerfMetricsSummary();

  PerfMetricsSummary.fromJson(core.Map _json) {
    if (_json.containsKey('appStartTime')) {
      appStartTime = AppStartTime.fromJson(
          _json['appStartTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('executionId')) {
      executionId = _json['executionId'] as core.String;
    }
    if (_json.containsKey('graphicsStats')) {
      graphicsStats = GraphicsStats.fromJson(
          _json['graphicsStats'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('historyId')) {
      historyId = _json['historyId'] as core.String;
    }
    if (_json.containsKey('perfEnvironment')) {
      perfEnvironment = PerfEnvironment.fromJson(
          _json['perfEnvironment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('perfMetrics')) {
      perfMetrics = (_json['perfMetrics'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('stepId')) {
      stepId = _json['stepId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (appStartTime != null) {
      _json['appStartTime'] = appStartTime.toJson();
    }
    if (executionId != null) {
      _json['executionId'] = executionId;
    }
    if (graphicsStats != null) {
      _json['graphicsStats'] = graphicsStats.toJson();
    }
    if (historyId != null) {
      _json['historyId'] = historyId;
    }
    if (perfEnvironment != null) {
      _json['perfEnvironment'] = perfEnvironment.toJson();
    }
    if (perfMetrics != null) {
      _json['perfMetrics'] = perfMetrics;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (stepId != null) {
      _json['stepId'] = stepId;
    }
    return _json;
  }
}

/// Resource representing a single performance measure or data point
class PerfSample {
  /// Timestamp of collection.
  Timestamp sampleTime;

  /// Value observed
  core.double value;

  PerfSample();

  PerfSample.fromJson(core.Map _json) {
    if (_json.containsKey('sampleTime')) {
      sampleTime = Timestamp.fromJson(
          _json['sampleTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('value')) {
      value = (_json['value'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (sampleTime != null) {
      _json['sampleTime'] = sampleTime.toJson();
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// Resource representing a collection of performance samples (or data points)
class PerfSampleSeries {
  /// Basic series represented by a line chart
  BasicPerfSampleSeries basicPerfSampleSeries;

  /// A tool results execution ID.
  ///
  /// @OutputOnly
  core.String executionId;

  /// A tool results history ID.
  ///
  /// @OutputOnly
  core.String historyId;

  /// The cloud project @OutputOnly
  core.String projectId;

  /// A sample series id @OutputOnly
  core.String sampleSeriesId;

  /// A tool results step ID.
  ///
  /// @OutputOnly
  core.String stepId;

  PerfSampleSeries();

  PerfSampleSeries.fromJson(core.Map _json) {
    if (_json.containsKey('basicPerfSampleSeries')) {
      basicPerfSampleSeries = BasicPerfSampleSeries.fromJson(
          _json['basicPerfSampleSeries']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('executionId')) {
      executionId = _json['executionId'] as core.String;
    }
    if (_json.containsKey('historyId')) {
      historyId = _json['historyId'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('sampleSeriesId')) {
      sampleSeriesId = _json['sampleSeriesId'] as core.String;
    }
    if (_json.containsKey('stepId')) {
      stepId = _json['stepId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (basicPerfSampleSeries != null) {
      _json['basicPerfSampleSeries'] = basicPerfSampleSeries.toJson();
    }
    if (executionId != null) {
      _json['executionId'] = executionId;
    }
    if (historyId != null) {
      _json['historyId'] = historyId;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (sampleSeriesId != null) {
      _json['sampleSeriesId'] = sampleSeriesId;
    }
    if (stepId != null) {
      _json['stepId'] = stepId;
    }
    return _json;
  }
}

/// A notification that Robo signed in with Google.
class PerformedGoogleLogin {
  PerformedGoogleLogin();

  PerformedGoogleLogin.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// A notification that Robo performed some monkey actions.
class PerformedMonkeyActions {
  /// The total number of monkey actions performed during the crawl.
  core.int totalActions;

  PerformedMonkeyActions();

  PerformedMonkeyActions.fromJson(core.Map _json) {
    if (_json.containsKey('totalActions')) {
      totalActions = _json['totalActions'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (totalActions != null) {
      _json['totalActions'] = totalActions;
    }
    return _json;
  }
}

/// Stores rollup test status of multiple steps that were run as a group and
/// outcome of each individual step.
class PrimaryStep {
  /// Step Id and outcome of each individual step.
  core.List<IndividualOutcome> individualOutcome;

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
  core.String rollUp;

  PrimaryStep();

  PrimaryStep.fromJson(core.Map _json) {
    if (_json.containsKey('individualOutcome')) {
      individualOutcome = (_json['individualOutcome'] as core.List)
          .map<IndividualOutcome>((value) => IndividualOutcome.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('rollUp')) {
      rollUp = _json['rollUp'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (individualOutcome != null) {
      _json['individualOutcome'] =
          individualOutcome.map((value) => value.toJson()).toList();
    }
    if (rollUp != null) {
      _json['rollUp'] = rollUp;
    }
    return _json;
  }
}

/// Per-project settings for the Tool Results service.
class ProjectSettings {
  /// The name of the Google Cloud Storage bucket to which results are written.
  ///
  /// By default, this is unset. In update request: optional In response:
  /// optional
  core.String defaultBucket;

  /// The name of the project's settings.
  ///
  /// Always of the form: projects/{project-id}/settings In update request:
  /// never set In response: always set
  core.String name;

  ProjectSettings();

  ProjectSettings.fromJson(core.Map _json) {
    if (_json.containsKey('defaultBucket')) {
      defaultBucket = _json['defaultBucket'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (defaultBucket != null) {
      _json['defaultBucket'] = defaultBucket;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Request message for StepService.PublishXunitXmlFiles.
class PublishXunitXmlFilesRequest {
  /// URI of the Xunit XML files to publish.
  ///
  /// The maximum size of the file this reference is pointing to is 50MB.
  /// Required.
  core.List<FileReference> xunitXmlFiles;

  PublishXunitXmlFilesRequest();

  PublishXunitXmlFilesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('xunitXmlFiles')) {
      xunitXmlFiles = (_json['xunitXmlFiles'] as core.List)
          .map<FileReference>((value) => FileReference.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (xunitXmlFiles != null) {
      _json['xunitXmlFiles'] =
          xunitXmlFiles.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A rectangular region.
class RegionProto {
  /// The height, in pixels.
  ///
  /// Always set.
  core.int heightPx;

  /// The left side of the rectangle, in pixels.
  ///
  /// Always set.
  core.int leftPx;

  /// The top of the rectangle, in pixels.
  ///
  /// Always set.
  core.int topPx;

  /// The width, in pixels.
  ///
  /// Always set.
  core.int widthPx;

  RegionProto();

  RegionProto.fromJson(core.Map _json) {
    if (_json.containsKey('heightPx')) {
      heightPx = _json['heightPx'] as core.int;
    }
    if (_json.containsKey('leftPx')) {
      leftPx = _json['leftPx'] as core.int;
    }
    if (_json.containsKey('topPx')) {
      topPx = _json['topPx'] as core.int;
    }
    if (_json.containsKey('widthPx')) {
      widthPx = _json['widthPx'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (heightPx != null) {
      _json['heightPx'] = heightPx;
    }
    if (leftPx != null) {
      _json['leftPx'] = leftPx;
    }
    if (topPx != null) {
      _json['topPx'] = topPx;
    }
    if (widthPx != null) {
      _json['widthPx'] = widthPx;
    }
    return _json;
  }
}

/// The storage for test results.
class ResultsStorage {
  /// The root directory for test results.
  FileReference resultsStoragePath;

  /// The path to the Xunit XML file.
  FileReference xunitXmlFile;

  ResultsStorage();

  ResultsStorage.fromJson(core.Map _json) {
    if (_json.containsKey('resultsStoragePath')) {
      resultsStoragePath = FileReference.fromJson(
          _json['resultsStoragePath'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('xunitXmlFile')) {
      xunitXmlFile = FileReference.fromJson(
          _json['xunitXmlFile'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resultsStoragePath != null) {
      _json['resultsStoragePath'] = resultsStoragePath.toJson();
    }
    if (xunitXmlFile != null) {
      _json['xunitXmlFile'] = xunitXmlFile.toJson();
    }
    return _json;
  }
}

/// Execution stats for a user-provided Robo script.
class RoboScriptExecution {
  /// The number of Robo script actions executed successfully.
  core.int successfulActions;

  /// The total number of actions in the Robo script.
  core.int totalActions;

  RoboScriptExecution();

  RoboScriptExecution.fromJson(core.Map _json) {
    if (_json.containsKey('successfulActions')) {
      successfulActions = _json['successfulActions'] as core.int;
    }
    if (_json.containsKey('totalActions')) {
      totalActions = _json['totalActions'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (successfulActions != null) {
      _json['successfulActions'] = successfulActions;
    }
    if (totalActions != null) {
      _json['totalActions'] = totalActions;
    }
    return _json;
  }
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
  core.String privateDoNotAccessOrElseSafeHtmlWrappedValue;

  SafeHtmlProto();

  SafeHtmlProto.fromJson(core.Map _json) {
    if (_json.containsKey('privateDoNotAccessOrElseSafeHtmlWrappedValue')) {
      privateDoNotAccessOrElseSafeHtmlWrappedValue =
          _json['privateDoNotAccessOrElseSafeHtmlWrappedValue'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (privateDoNotAccessOrElseSafeHtmlWrappedValue != null) {
      _json['privateDoNotAccessOrElseSafeHtmlWrappedValue'] =
          privateDoNotAccessOrElseSafeHtmlWrappedValue;
    }
    return _json;
  }
}

class Screen {
  /// File reference of the png file.
  ///
  /// Required.
  core.String fileReference;

  /// Locale of the device that the screenshot was taken on.
  ///
  /// Required.
  core.String locale;

  /// Model of the device that the screenshot was taken on.
  ///
  /// Required.
  core.String model;

  /// OS version of the device that the screenshot was taken on.
  ///
  /// Required.
  core.String version;

  Screen();

  Screen.fromJson(core.Map _json) {
    if (_json.containsKey('fileReference')) {
      fileReference = _json['fileReference'] as core.String;
    }
    if (_json.containsKey('locale')) {
      locale = _json['locale'] as core.String;
    }
    if (_json.containsKey('model')) {
      model = _json['model'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fileReference != null) {
      _json['fileReference'] = fileReference;
    }
    if (locale != null) {
      _json['locale'] = locale;
    }
    if (model != null) {
      _json['model'] = model;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

class ScreenshotCluster {
  /// A string that describes the activity of every screen in the cluster.
  core.String activity;

  /// A unique identifier for the cluster.
  ///
  /// @OutputOnly
  core.String clusterId;

  /// A singular screen that represents the cluster as a whole.
  ///
  /// This screen will act as the "cover" of the entire cluster. When users look
  /// at the clusters, only the key screen from each cluster will be shown.
  /// Which screen is the key screen is determined by the ClusteringAlgorithm
  Screen keyScreen;

  /// Full list of screens.
  core.List<Screen> screens;

  ScreenshotCluster();

  ScreenshotCluster.fromJson(core.Map _json) {
    if (_json.containsKey('activity')) {
      activity = _json['activity'] as core.String;
    }
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'] as core.String;
    }
    if (_json.containsKey('keyScreen')) {
      keyScreen = Screen.fromJson(
          _json['keyScreen'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('screens')) {
      screens = (_json['screens'] as core.List)
          .map<Screen>((value) =>
              Screen.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (activity != null) {
      _json['activity'] = activity;
    }
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (keyScreen != null) {
      _json['keyScreen'] = keyScreen.toJson();
    }
    if (screens != null) {
      _json['screens'] = screens.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Result summary for a shard in an environment.
class ShardSummary {
  /// Summaries of the steps belonging to the shard.
  ///
  /// With flaky_test_attempts enabled from TestExecutionService, more than one
  /// run (Step) can present. And the runs will be sorted by multistep_number.
  core.List<StepSummary> runs;

  /// Merged result of the shard.
  MergedResult shardResult;

  ShardSummary();

  ShardSummary.fromJson(core.Map _json) {
    if (_json.containsKey('runs')) {
      runs = (_json['runs'] as core.List)
          .map<StepSummary>((value) => StepSummary.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('shardResult')) {
      shardResult = MergedResult.fromJson(
          _json['shardResult'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (runs != null) {
      _json['runs'] = runs.map((value) => value.toJson()).toList();
    }
    if (shardResult != null) {
      _json['shardResult'] = shardResult.toJson();
    }
    return _json;
  }
}

/// Details for an outcome with a SKIPPED outcome summary.
class SkippedDetail {
  /// If the App doesn't support the specific API level.
  core.bool incompatibleAppVersion;

  /// If the App doesn't run on the specific architecture, for example, x86.
  core.bool incompatibleArchitecture;

  /// If the requested OS version doesn't run on the specific device model.
  core.bool incompatibleDevice;

  SkippedDetail();

  SkippedDetail.fromJson(core.Map _json) {
    if (_json.containsKey('incompatibleAppVersion')) {
      incompatibleAppVersion = _json['incompatibleAppVersion'] as core.bool;
    }
    if (_json.containsKey('incompatibleArchitecture')) {
      incompatibleArchitecture = _json['incompatibleArchitecture'] as core.bool;
    }
    if (_json.containsKey('incompatibleDevice')) {
      incompatibleDevice = _json['incompatibleDevice'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (incompatibleAppVersion != null) {
      _json['incompatibleAppVersion'] = incompatibleAppVersion;
    }
    if (incompatibleArchitecture != null) {
      _json['incompatibleArchitecture'] = incompatibleArchitecture;
    }
    if (incompatibleDevice != null) {
      _json['incompatibleDevice'] = incompatibleDevice;
    }
    return _json;
  }
}

/// The details about how to run the execution.
class Specification {
  /// An Android mobile test execution specification.
  AndroidTest androidTest;

  /// An iOS mobile test execution specification.
  IosTest iosTest;

  Specification();

  Specification.fromJson(core.Map _json) {
    if (_json.containsKey('androidTest')) {
      androidTest = AndroidTest.fromJson(
          _json['androidTest'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('iosTest')) {
      iosTest = IosTest.fromJson(
          _json['iosTest'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (androidTest != null) {
      _json['androidTest'] = androidTest.toJson();
    }
    if (iosTest != null) {
      _json['iosTest'] = iosTest.toJson();
    }
    return _json;
  }
}

/// A stacktrace.
class StackTrace {
  /// The stack trace message.
  ///
  /// Required
  core.String exception;

  StackTrace();

  StackTrace.fromJson(core.Map _json) {
    if (_json.containsKey('exception')) {
      exception = _json['exception'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exception != null) {
      _json['exception'] = exception;
    }
    return _json;
  }
}

/// User provided intent failed to resolve to an activity.
class StartActivityNotFound {
  core.String action;
  core.String uri;

  StartActivityNotFound();

  StartActivityNotFound.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'] as core.String;
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (action != null) {
      _json['action'] = action;
    }
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

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
  Timestamp completionTime;

  /// The time when the step was created.
  ///
  /// - In response: always set - In create/update request: never set
  Timestamp creationTime;

  /// A description of this tool For example: mvn clean package -D
  /// skipTests=true - In response: present if set by create/update request - In
  /// create/update request: optional
  core.String description;

  /// How much the device resource is used to perform the test.
  ///
  /// This is the device usage used for billing purpose, which is different from
  /// the run_duration, for example, infrastructure failure won't be charged for
  /// device usage. PRECONDITION_FAILED will be returned if one attempts to set
  /// a device_usage on a step which already has this field set. - In response:
  /// present if previously set. - In create request: optional - In update
  /// request: optional
  Duration deviceUsageDuration;

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
  core.List<StepDimensionValueEntry> dimensionValue;

  /// Whether any of the outputs of this step are images whose thumbnails can be
  /// fetched with ListThumbnails.
  ///
  /// - In response: always set - In create/update request: never set
  core.bool hasImages;

  /// Arbitrary user-supplied key/value pairs that are associated with the step.
  ///
  /// Users are responsible for managing the key namespace such that keys don't
  /// accidentally collide. An INVALID_ARGUMENT will be returned if the number
  /// of labels exceeds 100 or if the length of any of the keys or values
  /// exceeds 100 characters. - In response: always set - In create request:
  /// optional - In update request: optional; any new key/value pair will be
  /// added to the map, and any new value for an existing key will update that
  /// key's value
  core.List<StepLabelsEntry> labels;

  /// Details when multiple steps are run with the same configuration as a
  /// group.
  ///
  /// These details can be used identify which group this step is part of. It
  /// also identifies the groups 'primary step' which indexes all the group
  /// members. - In response: present if previously set. - In create request:
  /// optional, set iff this step was performed more than once. - In update
  /// request: optional
  MultiStep multiStep;

  /// A short human-readable name to display in the UI.
  ///
  /// Maximum of 100 characters. For example: Clean build A PRECONDITION_FAILED
  /// will be returned upon creating a new step if it shares its name and
  /// dimension_value with an existing step. If two steps represent a similar
  /// action, but have different dimension values, they should share the same
  /// name. For instance, if the same set of tests is run on two different
  /// platforms, the two steps should have the same name. - In response: always
  /// set - In create request: always set - In update request: never set
  core.String name;

  /// Classification of the result, for example into SUCCESS or FAILURE - In
  /// response: present if set by create/update request - In create/update
  /// request: optional
  Outcome outcome;

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
  Duration runDuration;

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
  core.String state;

  /// A unique identifier within a Execution for this Step.
  ///
  /// Returns INVALID_ARGUMENT if this field is set or overwritten by the
  /// caller. - In response: always set - In create/update request: never set
  core.String stepId;

  /// An execution of a test runner.
  TestExecutionStep testExecutionStep;

  /// An execution of a tool (used for steps we don't explicitly support).
  ToolExecutionStep toolExecutionStep;

  Step();

  Step.fromJson(core.Map _json) {
    if (_json.containsKey('completionTime')) {
      completionTime = Timestamp.fromJson(
          _json['completionTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('creationTime')) {
      creationTime = Timestamp.fromJson(
          _json['creationTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('deviceUsageDuration')) {
      deviceUsageDuration = Duration.fromJson(
          _json['deviceUsageDuration'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dimensionValue')) {
      dimensionValue = (_json['dimensionValue'] as core.List)
          .map<StepDimensionValueEntry>((value) =>
              StepDimensionValueEntry.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('hasImages')) {
      hasImages = _json['hasImages'] as core.bool;
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.List)
          .map<StepLabelsEntry>((value) => StepLabelsEntry.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('multiStep')) {
      multiStep = MultiStep.fromJson(
          _json['multiStep'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('outcome')) {
      outcome = Outcome.fromJson(
          _json['outcome'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('runDuration')) {
      runDuration = Duration.fromJson(
          _json['runDuration'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stepId')) {
      stepId = _json['stepId'] as core.String;
    }
    if (_json.containsKey('testExecutionStep')) {
      testExecutionStep = TestExecutionStep.fromJson(
          _json['testExecutionStep'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('toolExecutionStep')) {
      toolExecutionStep = ToolExecutionStep.fromJson(
          _json['toolExecutionStep'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (completionTime != null) {
      _json['completionTime'] = completionTime.toJson();
    }
    if (creationTime != null) {
      _json['creationTime'] = creationTime.toJson();
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (deviceUsageDuration != null) {
      _json['deviceUsageDuration'] = deviceUsageDuration.toJson();
    }
    if (dimensionValue != null) {
      _json['dimensionValue'] =
          dimensionValue.map((value) => value.toJson()).toList();
    }
    if (hasImages != null) {
      _json['hasImages'] = hasImages;
    }
    if (labels != null) {
      _json['labels'] = labels.map((value) => value.toJson()).toList();
    }
    if (multiStep != null) {
      _json['multiStep'] = multiStep.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (outcome != null) {
      _json['outcome'] = outcome.toJson();
    }
    if (runDuration != null) {
      _json['runDuration'] = runDuration.toJson();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stepId != null) {
      _json['stepId'] = stepId;
    }
    if (testExecutionStep != null) {
      _json['testExecutionStep'] = testExecutionStep.toJson();
    }
    if (toolExecutionStep != null) {
      _json['toolExecutionStep'] = toolExecutionStep.toJson();
    }
    return _json;
  }
}

class StepDimensionValueEntry {
  core.String key;
  core.String value;

  StepDimensionValueEntry();

  StepDimensionValueEntry.fromJson(core.Map _json) {
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (key != null) {
      _json['key'] = key;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

class StepLabelsEntry {
  core.String key;
  core.String value;

  StepLabelsEntry();

  StepLabelsEntry.fromJson(core.Map _json) {
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (key != null) {
      _json['key'] = key;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// Lightweight summary of a step within this execution.
class StepSummary {
  StepSummary();

  StepSummary.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Details for an outcome with a SUCCESS outcome summary.
///
/// LINT.IfChange
class SuccessDetail {
  /// If a native process other than the app crashed.
  core.bool otherNativeCrash;

  SuccessDetail();

  SuccessDetail.fromJson(core.Map _json) {
    if (_json.containsKey('otherNativeCrash')) {
      otherNativeCrash = _json['otherNativeCrash'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (otherNativeCrash != null) {
      _json['otherNativeCrash'] = otherNativeCrash;
    }
    return _json;
  }
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
  core.String category;

  /// A sequence of suggestions.
  ///
  /// All of the suggestions within a cluster must have the same
  /// SuggestionPriority and belong to the same SuggestionCategory. Suggestions
  /// with the same screenshot URL should be adjacent.
  core.List<SuggestionProto> suggestions;

  SuggestionClusterProto();

  SuggestionClusterProto.fromJson(core.Map _json) {
    if (_json.containsKey('category')) {
      category = _json['category'] as core.String;
    }
    if (_json.containsKey('suggestions')) {
      suggestions = (_json['suggestions'] as core.List)
          .map<SuggestionProto>((value) => SuggestionProto.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (category != null) {
      _json['category'] = category;
    }
    if (suggestions != null) {
      _json['suggestions'] =
          suggestions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class SuggestionProto {
  /// Reference to a help center article concerning this type of suggestion.
  ///
  /// Always set.
  core.String helpUrl;

  /// Message, in the user's language, explaining the suggestion, which may
  /// contain markup.
  ///
  /// Always set.
  SafeHtmlProto longMessage;

  /// Relative importance of a suggestion.
  ///
  /// Always set.
  /// Possible string values are:
  /// - "unknownPriority"
  /// - "error"
  /// - "warning"
  /// - "info"
  core.String priority;

  /// A somewhat human readable identifier of the source view, if it does not
  /// have a resource_name.
  ///
  /// This is a path within the accessibility hierarchy, an element with
  /// resource name; similar to an XPath.
  core.String pseudoResourceId;

  /// Region within the screenshot that is relevant to this suggestion.
  ///
  /// Optional.
  RegionProto region;

  /// Reference to a view element, identified by its resource name, if it has
  /// one.
  core.String resourceName;

  /// ID of the screen for the suggestion.
  ///
  /// It is used for getting the corresponding screenshot path. For example,
  /// screen_id "1" corresponds to "1.png" file in GCS. Always set.
  core.String screenId;

  /// Relative importance of a suggestion as compared with other suggestions
  /// that have the same priority and category.
  ///
  /// This is a meaningless value that can be used to order suggestions that are
  /// in the same category and have the same priority. The larger values have
  /// higher priority (i.e., are more important). Optional.
  core.double secondaryPriority;

  /// Concise message, in the user's language, representing the suggestion,
  /// which may contain markup.
  ///
  /// Always set.
  SafeHtmlProto shortMessage;

  /// General title for the suggestion, in the user's language, without markup.
  ///
  /// Always set.
  core.String title;

  SuggestionProto();

  SuggestionProto.fromJson(core.Map _json) {
    if (_json.containsKey('helpUrl')) {
      helpUrl = _json['helpUrl'] as core.String;
    }
    if (_json.containsKey('longMessage')) {
      longMessage = SafeHtmlProto.fromJson(
          _json['longMessage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('priority')) {
      priority = _json['priority'] as core.String;
    }
    if (_json.containsKey('pseudoResourceId')) {
      pseudoResourceId = _json['pseudoResourceId'] as core.String;
    }
    if (_json.containsKey('region')) {
      region = RegionProto.fromJson(
          _json['region'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('resourceName')) {
      resourceName = _json['resourceName'] as core.String;
    }
    if (_json.containsKey('screenId')) {
      screenId = _json['screenId'] as core.String;
    }
    if (_json.containsKey('secondaryPriority')) {
      secondaryPriority = (_json['secondaryPriority'] as core.num).toDouble();
    }
    if (_json.containsKey('shortMessage')) {
      shortMessage = SafeHtmlProto.fromJson(
          _json['shortMessage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (helpUrl != null) {
      _json['helpUrl'] = helpUrl;
    }
    if (longMessage != null) {
      _json['longMessage'] = longMessage.toJson();
    }
    if (priority != null) {
      _json['priority'] = priority;
    }
    if (pseudoResourceId != null) {
      _json['pseudoResourceId'] = pseudoResourceId;
    }
    if (region != null) {
      _json['region'] = region.toJson();
    }
    if (resourceName != null) {
      _json['resourceName'] = resourceName;
    }
    if (screenId != null) {
      _json['screenId'] = screenId;
    }
    if (secondaryPriority != null) {
      _json['secondaryPriority'] = secondaryPriority;
    }
    if (shortMessage != null) {
      _json['shortMessage'] = shortMessage.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

class TestCase {
  /// The elapsed run time of the test case.
  ///
  /// Required.
  Duration elapsedTime;

  /// The end time of the test case.
  Timestamp endTime;

  /// Why the test case was skipped.
  ///
  /// Present only for skipped test case
  core.String skippedMessage;

  /// The stack trace details if the test case failed or encountered an error.
  ///
  /// The maximum size of the stack traces is 100KiB, beyond which the stack
  /// track will be truncated. Zero if the test case passed.
  core.List<StackTrace> stackTraces;

  /// The start time of the test case.
  Timestamp startTime;

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
  core.String status;

  /// A unique identifier within a Step for this Test Case.
  core.String testCaseId;

  /// Test case reference, e.g. name, class name and test suite name.
  ///
  /// Required.
  TestCaseReference testCaseReference;

  /// References to opaque files of any format output by the tool execution.
  ///
  /// @OutputOnly
  core.List<ToolOutputReference> toolOutputs;

  TestCase();

  TestCase.fromJson(core.Map _json) {
    if (_json.containsKey('elapsedTime')) {
      elapsedTime = Duration.fromJson(
          _json['elapsedTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('endTime')) {
      endTime = Timestamp.fromJson(
          _json['endTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('skippedMessage')) {
      skippedMessage = _json['skippedMessage'] as core.String;
    }
    if (_json.containsKey('stackTraces')) {
      stackTraces = (_json['stackTraces'] as core.List)
          .map<StackTrace>((value) =>
              StackTrace.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('startTime')) {
      startTime = Timestamp.fromJson(
          _json['startTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('testCaseId')) {
      testCaseId = _json['testCaseId'] as core.String;
    }
    if (_json.containsKey('testCaseReference')) {
      testCaseReference = TestCaseReference.fromJson(
          _json['testCaseReference'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('toolOutputs')) {
      toolOutputs = (_json['toolOutputs'] as core.List)
          .map<ToolOutputReference>((value) => ToolOutputReference.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (elapsedTime != null) {
      _json['elapsedTime'] = elapsedTime.toJson();
    }
    if (endTime != null) {
      _json['endTime'] = endTime.toJson();
    }
    if (skippedMessage != null) {
      _json['skippedMessage'] = skippedMessage;
    }
    if (stackTraces != null) {
      _json['stackTraces'] =
          stackTraces.map((value) => value.toJson()).toList();
    }
    if (startTime != null) {
      _json['startTime'] = startTime.toJson();
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (testCaseId != null) {
      _json['testCaseId'] = testCaseId;
    }
    if (testCaseReference != null) {
      _json['testCaseReference'] = testCaseReference.toJson();
    }
    if (toolOutputs != null) {
      _json['toolOutputs'] =
          toolOutputs.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A reference to a test case.
///
/// Test case references are canonically ordered lexicographically by these
/// three factors: * First, by test_suite_name. * Second, by class_name. *
/// Third, by name.
class TestCaseReference {
  /// The name of the class.
  core.String className;

  /// The name of the test case.
  ///
  /// Required.
  core.String name;

  /// The name of the test suite to which this test case belongs.
  core.String testSuiteName;

  TestCaseReference();

  TestCaseReference.fromJson(core.Map _json) {
    if (_json.containsKey('className')) {
      className = _json['className'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('testSuiteName')) {
      testSuiteName = _json['testSuiteName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (className != null) {
      _json['className'] = className;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (testSuiteName != null) {
      _json['testSuiteName'] = testSuiteName;
    }
    return _json;
  }
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
  core.List<TestIssue> testIssues;

  /// List of test suite overview contents.
  ///
  /// This could be parsed from xUnit XML log by server, or uploaded directly by
  /// user. This references should only be called when test suites are fully
  /// parsed or uploaded. The maximum allowed number of test suite overviews per
  /// step is 1000. - In response: always set - In create request: optional - In
  /// update request: never (use publishXunitXmlFiles custom method instead)
  core.List<TestSuiteOverview> testSuiteOverviews;

  /// The timing break down of the test execution.
  ///
  /// - In response: present if set by create or update - In create/update
  /// request: optional
  TestTiming testTiming;

  /// Represents the execution of the test runner.
  ///
  /// The exit code of this tool will be used to determine if the test passed. -
  /// In response: always set - In create/update request: optional
  ToolExecution toolExecution;

  TestExecutionStep();

  TestExecutionStep.fromJson(core.Map _json) {
    if (_json.containsKey('testIssues')) {
      testIssues = (_json['testIssues'] as core.List)
          .map<TestIssue>((value) =>
              TestIssue.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('testSuiteOverviews')) {
      testSuiteOverviews = (_json['testSuiteOverviews'] as core.List)
          .map<TestSuiteOverview>((value) => TestSuiteOverview.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('testTiming')) {
      testTiming = TestTiming.fromJson(
          _json['testTiming'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('toolExecution')) {
      toolExecution = ToolExecution.fromJson(
          _json['toolExecution'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (testIssues != null) {
      _json['testIssues'] = testIssues.map((value) => value.toJson()).toList();
    }
    if (testSuiteOverviews != null) {
      _json['testSuiteOverviews'] =
          testSuiteOverviews.map((value) => value.toJson()).toList();
    }
    if (testTiming != null) {
      _json['testTiming'] = testTiming.toJson();
    }
    if (toolExecution != null) {
      _json['toolExecution'] = toolExecution.toJson();
    }
    return _json;
  }
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
  core.String category;

  /// A brief human-readable message describing the issue.
  ///
  /// Required.
  core.String errorMessage;

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
  core.String severity;

  /// Deprecated in favor of stack trace fields inside specific warnings.
  StackTrace stackTrace;

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
  core.String type;

  /// Warning message with additional details of the issue.
  ///
  /// Should always be a message from
  /// com.google.devtools.toolresults.v1.warnings
  Any warning;

  TestIssue();

  TestIssue.fromJson(core.Map _json) {
    if (_json.containsKey('category')) {
      category = _json['category'] as core.String;
    }
    if (_json.containsKey('errorMessage')) {
      errorMessage = _json['errorMessage'] as core.String;
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('stackTrace')) {
      stackTrace = StackTrace.fromJson(
          _json['stackTrace'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('warning')) {
      warning =
          Any.fromJson(_json['warning'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (category != null) {
      _json['category'] = category;
    }
    if (errorMessage != null) {
      _json['errorMessage'] = errorMessage;
    }
    if (severity != null) {
      _json['severity'] = severity;
    }
    if (stackTrace != null) {
      _json['stackTrace'] = stackTrace.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    if (warning != null) {
      _json['warning'] = warning.toJson();
    }
    return _json;
  }
}

/// A summary of a test suite result either parsed from XML or uploaded directly
/// by a user.
///
/// Note: the API related comments are for StepService only. This message is
/// also being used in ExecutionService in a read only mode for the
/// corresponding step.
class TestSuiteOverview {
  /// Elapsed time of test suite.
  Duration elapsedTime;

  /// Number of test cases in error, typically set by the service by parsing the
  /// xml_source.
  ///
  /// - In create/response: always set - In update request: never
  core.int errorCount;

  /// Number of failed test cases, typically set by the service by parsing the
  /// xml_source.
  ///
  /// May also be set by the user. - In create/response: always set - In update
  /// request: never
  core.int failureCount;

  /// Number of flaky test cases, set by the service by rolling up flaky test
  /// attempts.
  ///
  /// Present only for rollup test suite overview at environment level. A step
  /// cannot have flaky test cases.
  core.int flakyCount;

  /// The name of the test suite.
  ///
  /// - In create/response: always set - In update request: never
  core.String name;

  /// Number of test cases not run, typically set by the service by parsing the
  /// xml_source.
  ///
  /// - In create/response: always set - In update request: never
  core.int skippedCount;

  /// Number of test cases, typically set by the service by parsing the
  /// xml_source.
  ///
  /// - In create/response: always set - In update request: never
  core.int totalCount;

  /// If this test suite was parsed from XML, this is the URI where the original
  /// XML file is stored.
  ///
  /// Note: Multiple test suites can share the same xml_source Returns
  /// INVALID_ARGUMENT if the uri format is not supported. - In create/response:
  /// optional - In update request: never
  FileReference xmlSource;

  TestSuiteOverview();

  TestSuiteOverview.fromJson(core.Map _json) {
    if (_json.containsKey('elapsedTime')) {
      elapsedTime = Duration.fromJson(
          _json['elapsedTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('errorCount')) {
      errorCount = _json['errorCount'] as core.int;
    }
    if (_json.containsKey('failureCount')) {
      failureCount = _json['failureCount'] as core.int;
    }
    if (_json.containsKey('flakyCount')) {
      flakyCount = _json['flakyCount'] as core.int;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('skippedCount')) {
      skippedCount = _json['skippedCount'] as core.int;
    }
    if (_json.containsKey('totalCount')) {
      totalCount = _json['totalCount'] as core.int;
    }
    if (_json.containsKey('xmlSource')) {
      xmlSource = FileReference.fromJson(
          _json['xmlSource'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (elapsedTime != null) {
      _json['elapsedTime'] = elapsedTime.toJson();
    }
    if (errorCount != null) {
      _json['errorCount'] = errorCount;
    }
    if (failureCount != null) {
      _json['failureCount'] = failureCount;
    }
    if (flakyCount != null) {
      _json['flakyCount'] = flakyCount;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (skippedCount != null) {
      _json['skippedCount'] = skippedCount;
    }
    if (totalCount != null) {
      _json['totalCount'] = totalCount;
    }
    if (xmlSource != null) {
      _json['xmlSource'] = xmlSource.toJson();
    }
    return _json;
  }
}

/// Testing timing break down to know phases.
class TestTiming {
  /// How long it took to run the test process.
  ///
  /// - In response: present if previously set. - In create/update request:
  /// optional
  Duration testProcessDuration;

  TestTiming();

  TestTiming.fromJson(core.Map _json) {
    if (_json.containsKey('testProcessDuration')) {
      testProcessDuration = Duration.fromJson(
          _json['testProcessDuration'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (testProcessDuration != null) {
      _json['testProcessDuration'] = testProcessDuration.toJson();
    }
    return _json;
  }
}

/// A single thumbnail, with its size and format.
class Thumbnail {
  /// The thumbnail's content type, i.e. "image/png".
  ///
  /// Always set.
  core.String contentType;

  /// The thumbnail file itself.
  ///
  /// That is, the bytes here are precisely the bytes that make up the thumbnail
  /// file; they can be served as an image as-is (with the appropriate content
  /// type.) Always set.
  core.String data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The height of the thumbnail, in pixels.
  ///
  /// Always set.
  core.int heightPx;

  /// The width of the thumbnail, in pixels.
  ///
  /// Always set.
  core.int widthPx;

  Thumbnail();

  Thumbnail.fromJson(core.Map _json) {
    if (_json.containsKey('contentType')) {
      contentType = _json['contentType'] as core.String;
    }
    if (_json.containsKey('data')) {
      data = _json['data'] as core.String;
    }
    if (_json.containsKey('heightPx')) {
      heightPx = _json['heightPx'] as core.int;
    }
    if (_json.containsKey('widthPx')) {
      widthPx = _json['widthPx'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentType != null) {
      _json['contentType'] = contentType;
    }
    if (data != null) {
      _json['data'] = data;
    }
    if (heightPx != null) {
      _json['heightPx'] = heightPx;
    }
    if (widthPx != null) {
      _json['widthPx'] = widthPx;
    }
    return _json;
  }
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
  core.int nanos;

  /// Represents seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z.
  ///
  /// Must be from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59Z inclusive.
  core.String seconds;

  Timestamp();

  Timestamp.fromJson(core.Map _json) {
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'] as core.int;
    }
    if (_json.containsKey('seconds')) {
      seconds = _json['seconds'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nanos != null) {
      _json['nanos'] = nanos;
    }
    if (seconds != null) {
      _json['seconds'] = seconds;
    }
    return _json;
  }
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
  core.List<core.String> commandLineArguments;

  /// Tool execution exit code.
  ///
  /// This field will be set once the tool has exited. - In response: present if
  /// set by create/update request - In create request: optional - In update
  /// request: optional, a FAILED_PRECONDITION error will be returned if an
  /// exit_code is already set.
  ToolExitCode exitCode;

  /// References to any plain text logs output the tool execution.
  ///
  /// This field can be set before the tool has exited in order to be able to
  /// have access to a live view of the logs while the tool is running. The
  /// maximum allowed number of tool logs per step is 1000. - In response:
  /// present if set by create/update request - In create request: optional - In
  /// update request: optional, any value provided will be appended to the
  /// existing list
  core.List<FileReference> toolLogs;

  /// References to opaque files of any format output by the tool execution.
  ///
  /// The maximum allowed number of tool outputs per step is 1000. - In
  /// response: present if set by create/update request - In create request:
  /// optional - In update request: optional, any value provided will be
  /// appended to the existing list
  core.List<ToolOutputReference> toolOutputs;

  ToolExecution();

  ToolExecution.fromJson(core.Map _json) {
    if (_json.containsKey('commandLineArguments')) {
      commandLineArguments = (_json['commandLineArguments'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('exitCode')) {
      exitCode = ToolExitCode.fromJson(
          _json['exitCode'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('toolLogs')) {
      toolLogs = (_json['toolLogs'] as core.List)
          .map<FileReference>((value) => FileReference.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('toolOutputs')) {
      toolOutputs = (_json['toolOutputs'] as core.List)
          .map<ToolOutputReference>((value) => ToolOutputReference.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (commandLineArguments != null) {
      _json['commandLineArguments'] = commandLineArguments;
    }
    if (exitCode != null) {
      _json['exitCode'] = exitCode.toJson();
    }
    if (toolLogs != null) {
      _json['toolLogs'] = toolLogs.map((value) => value.toJson()).toList();
    }
    if (toolOutputs != null) {
      _json['toolOutputs'] =
          toolOutputs.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Generic tool step to be used for binaries we do not explicitly support.
///
/// For example: running cp to copy artifacts from one location to another.
class ToolExecutionStep {
  /// A Tool execution.
  ///
  /// - In response: present if set by create/update request - In create/update
  /// request: optional
  ToolExecution toolExecution;

  ToolExecutionStep();

  ToolExecutionStep.fromJson(core.Map _json) {
    if (_json.containsKey('toolExecution')) {
      toolExecution = ToolExecution.fromJson(
          _json['toolExecution'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (toolExecution != null) {
      _json['toolExecution'] = toolExecution.toJson();
    }
    return _json;
  }
}

/// Exit code from a tool execution.
class ToolExitCode {
  /// Tool execution exit code.
  ///
  /// A value of 0 means that the execution was successful. - In response:
  /// always set - In create/update request: always set
  core.int number;

  ToolExitCode();

  ToolExitCode.fromJson(core.Map _json) {
    if (_json.containsKey('number')) {
      number = _json['number'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (number != null) {
      _json['number'] = number;
    }
    return _json;
  }
}

/// A reference to a ToolExecution output file.
class ToolOutputReference {
  /// The creation time of the file.
  ///
  /// - In response: present if set by create/update request - In create/update
  /// request: optional
  Timestamp creationTime;

  /// A FileReference to an output file.
  ///
  /// - In response: always set - In create/update request: always set
  FileReference output;

  /// The test case to which this output file belongs.
  ///
  /// - In response: present if set by create/update request - In create/update
  /// request: optional
  TestCaseReference testCase;

  ToolOutputReference();

  ToolOutputReference.fromJson(core.Map _json) {
    if (_json.containsKey('creationTime')) {
      creationTime = Timestamp.fromJson(
          _json['creationTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('output')) {
      output = FileReference.fromJson(
          _json['output'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('testCase')) {
      testCase = TestCaseReference.fromJson(
          _json['testCase'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (creationTime != null) {
      _json['creationTime'] = creationTime.toJson();
    }
    if (output != null) {
      _json['output'] = output.toJson();
    }
    if (testCase != null) {
      _json['testCase'] = testCase.toJson();
    }
    return _json;
  }
}

/// A warning that the screen hierarchy is deeper than the recommended
/// threshold.
class UIElementTooDeep {
  /// The depth of the screen element
  core.int depth;

  /// The screen id of the element
  core.String screenId;

  /// The screen state id of the element
  core.String screenStateId;

  UIElementTooDeep();

  UIElementTooDeep.fromJson(core.Map _json) {
    if (_json.containsKey('depth')) {
      depth = _json['depth'] as core.int;
    }
    if (_json.containsKey('screenId')) {
      screenId = _json['screenId'] as core.String;
    }
    if (_json.containsKey('screenStateId')) {
      screenStateId = _json['screenStateId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (depth != null) {
      _json['depth'] = depth;
    }
    if (screenId != null) {
      _json['screenId'] = screenId;
    }
    if (screenStateId != null) {
      _json['screenStateId'] = screenStateId;
    }
    return _json;
  }
}

/// Default unspecified warning.
class UnspecifiedWarning {
  UnspecifiedWarning();

  UnspecifiedWarning.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Additional details of an unused robodirective.
class UnusedRoboDirective {
  /// The name of the resource that was unused.
  core.String resourceName;

  UnusedRoboDirective();

  UnusedRoboDirective.fromJson(core.Map _json) {
    if (_json.containsKey('resourceName')) {
      resourceName = _json['resourceName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceName != null) {
      _json['resourceName'] = resourceName;
    }
    return _json;
  }
}

/// This insight is a recommendation to upgrade a given library to the specified
/// version, in order to avoid dependencies on non-SDK APIs.
class UpgradeInsight {
  /// The name of the package to be upgraded.
  core.String packageName;

  /// The suggested version to upgrade to.
  ///
  /// Optional: In case we are not sure which version solves this problem
  core.String upgradeToVersion;

  UpgradeInsight();

  UpgradeInsight.fromJson(core.Map _json) {
    if (_json.containsKey('packageName')) {
      packageName = _json['packageName'] as core.String;
    }
    if (_json.containsKey('upgradeToVersion')) {
      upgradeToVersion = _json['upgradeToVersion'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (packageName != null) {
      _json['packageName'] = packageName;
    }
    if (upgradeToVersion != null) {
      _json['upgradeToVersion'] = upgradeToVersion;
    }
    return _json;
  }
}

/// Additional details of a used Robo directive.
class UsedRoboDirective {
  /// The name of the resource that was used.
  core.String resourceName;

  UsedRoboDirective();

  UsedRoboDirective.fromJson(core.Map _json) {
    if (_json.containsKey('resourceName')) {
      resourceName = _json['resourceName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceName != null) {
      _json['resourceName'] = resourceName;
    }
    return _json;
  }
}

/// Additional details of a used Robo directive with an ignore action.
///
/// Note: This is a different scenario than unused directive.
class UsedRoboIgnoreDirective {
  /// The name of the resource that was ignored.
  core.String resourceName;

  UsedRoboIgnoreDirective();

  UsedRoboIgnoreDirective.fromJson(core.Map _json) {
    if (_json.containsKey('resourceName')) {
      resourceName = _json['resourceName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceName != null) {
      _json['resourceName'] = resourceName;
    }
    return _json;
  }
}
