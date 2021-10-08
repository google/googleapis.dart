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

/// Cloud Build API - v1
///
/// Creates and manages builds on Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/cloud-build/docs/>
///
/// Create an instance of [CloudBuildApi] to access these resources:
///
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsBuildsResource]
///   - [ProjectsGithubEnterpriseConfigsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBuildsResource]
///     - [ProjectsLocationsGithubEnterpriseConfigsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsTriggersResource]
///     - [ProjectsLocationsWorkerPoolsResource]
///   - [ProjectsTriggersResource]
/// - [V1Resource]
library cloudbuild.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Creates and manages builds on Google Cloud Platform.
class CloudBuildApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  CloudBuildApi(http.Client client,
      {core.String rootUrl = 'https://cloudbuild.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsBuildsResource get builds => ProjectsBuildsResource(_requester);
  ProjectsGithubEnterpriseConfigsResource get githubEnterpriseConfigs =>
      ProjectsGithubEnterpriseConfigsResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsTriggersResource get triggers => ProjectsTriggersResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsBuildsResource {
  final commons.ApiRequester _requester;

  ProjectsBuildsResource(commons.ApiRequester client) : _requester = client;

  /// Approves or rejects a pending build.
  ///
  /// If approved, the returned LRO will be analogous to the LRO returned from a
  /// CreateBuild call. If rejected, the returned LRO will be immediately done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the target build. For example:
  /// "projects/{$project_id}/builds/{$build_id}"
  /// Value must have pattern `^projects/\[^/\]+/builds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> approve(
    ApproveBuildRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Cancels a build in progress.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project.
  ///
  /// [id] - Required. ID of the build.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Build].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Build> cancel(
    CancelBuildRequest request,
    core.String projectId,
    core.String id, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/builds/' +
        commons.escapeVariable('$id') +
        ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Build.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Starts a build with the specified configuration.
  ///
  /// This method returns a long-running `Operation`, which includes the build
  /// ID. Pass the build ID to `GetBuild` to determine the build status (such as
  /// `SUCCESS` or `FAILURE`).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project.
  ///
  /// [parent] - The parent resource where this build will be created. Format:
  /// `projects/{project}/locations/{location}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Build request,
    core.String projectId, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/builds';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about a previously requested build.
  ///
  /// The `Build` that is returned includes its status (such as `SUCCESS`,
  /// `FAILURE`, or `WORKING`), and timing information.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project.
  ///
  /// [id] - Required. ID of the build.
  ///
  /// [name] - The name of the `Build` to retrieve. Format:
  /// `projects/{project}/locations/{location}/builds/{build}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Build].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Build> get(
    core.String projectId,
    core.String id, {
    core.String? name,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/builds/' +
        commons.escapeVariable('$id');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Build.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists previously requested builds.
  ///
  /// Previously requested builds may still be in-progress, or may have finished
  /// successfully or unsuccessfully.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project.
  ///
  /// [filter] - The raw filter text to constrain the results.
  ///
  /// [pageSize] - Number of results to return in the list.
  ///
  /// [pageToken] - The page token for the next page of Builds. If unspecified,
  /// the first page of results is returned. If the token is rejected for any
  /// reason, INVALID_ARGUMENT will be thrown. In this case, the token should be
  /// discarded, and pagination should be restarted from the first page of
  /// results. See https://google.aip.dev/158 for more.
  ///
  /// [parent] - The parent of the collection of `Builds`. Format:
  /// `projects/{project}/locations/location`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBuildsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBuildsResponse> list(
    core.String projectId, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/builds';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBuildsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new build based on the specified build.
  ///
  /// This method creates a new build using the original build request, which
  /// may or may not result in an identical build. For triggered builds: *
  /// Triggered builds resolve to a precise revision; therefore a retry of a
  /// triggered build will result in a build that uses the same revision. For
  /// non-triggered builds that specify `RepoSource`: * If the original build
  /// built from the tip of a branch, the retried build will build from the tip
  /// of that branch, which may not be the same revision as the original build.
  /// * If the original build specified a commit sha or revision ID, the retried
  /// build will use the identical source. For builds that specify
  /// `StorageSource`: * If the original build pulled source from Google Cloud
  /// Storage without specifying the generation of the object, the new build
  /// will use the current object, which may be different from the original
  /// build source. * If the original build pulled source from Cloud Storage and
  /// specified the generation of the object, the new build will attempt to use
  /// the same object, which may or may not be available depending on the
  /// bucket's lifecycle management settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project.
  ///
  /// [id] - Required. Build ID of the original build.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> retry(
    RetryBuildRequest request,
    core.String projectId,
    core.String id, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/builds/' +
        commons.escapeVariable('$id') +
        ':retry';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsGithubEnterpriseConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsGithubEnterpriseConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an association between a GCP project and a GitHub Enterprise
  /// server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the parent project. For example:
  /// projects/{$project_number} or projects/{$project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [gheConfigId] - Optional. The ID to use for the GithubEnterpriseConfig,
  /// which will become the final component of the GithubEnterpriseConfig’s
  /// resource name. ghe_config_id must meet the following requirements: + They
  /// must contain only alphanumeric characters and dashes. + They can be 1-64
  /// characters long. + They must begin and end with an alphanumeric character
  ///
  /// [projectId] - ID of the project.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    GitHubEnterpriseConfig request,
    core.String parent, {
    core.String? gheConfigId,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (gheConfigId != null) 'gheConfigId': [gheConfigId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/githubEnterpriseConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an association between a GCP project and a GitHub Enterprise
  /// server.
  ///
  /// Request parameters:
  ///
  /// [name] - This field should contain the name of the enterprise config
  /// resource. For example:
  /// "projects/{$project_id}/githubEnterpriseConfigs/{$config_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/githubEnterpriseConfigs/\[^/\]+$`.
  ///
  /// [configId] - Unique identifier of the `GitHubEnterpriseConfig`
  ///
  /// [projectId] - ID of the project
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? configId,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (configId != null) 'configId': [configId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a GitHubEnterpriseConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - This field should contain the name of the enterprise config
  /// resource. For example:
  /// "projects/{$project_id}/githubEnterpriseConfigs/{$config_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/githubEnterpriseConfigs/\[^/\]+$`.
  ///
  /// [configId] - Unique identifier of the `GitHubEnterpriseConfig`
  ///
  /// [projectId] - ID of the project
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GitHubEnterpriseConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GitHubEnterpriseConfig> get(
    core.String name, {
    core.String? configId,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (configId != null) 'configId': [configId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GitHubEnterpriseConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all GitHubEnterpriseConfigs for a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the parent project. For example:
  /// projects/{$project_number} or projects/{$project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [projectId] - ID of the project
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGithubEnterpriseConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGithubEnterpriseConfigsResponse> list(
    core.String parent, {
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/githubEnterpriseConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListGithubEnterpriseConfigsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update an association between a GCP project and a GitHub Enterprise
  /// server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The full resource name for the GitHubEnterpriseConfig
  /// For example: "projects/{$project_id}/githubEnterpriseConfigs/{$config_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/githubEnterpriseConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Update mask for the resource. If this is set, the server
  /// will only update the fields specified in the field mask. Otherwise, a full
  /// update of the mutable resource fields will be performed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    GitHubEnterpriseConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBuildsResource get builds =>
      ProjectsLocationsBuildsResource(_requester);
  ProjectsLocationsGithubEnterpriseConfigsResource
      get githubEnterpriseConfigs =>
          ProjectsLocationsGithubEnterpriseConfigsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsTriggersResource get triggers =>
      ProjectsLocationsTriggersResource(_requester);
  ProjectsLocationsWorkerPoolsResource get workerPools =>
      ProjectsLocationsWorkerPoolsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsBuildsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBuildsResource(commons.ApiRequester client)
      : _requester = client;

  /// Approves or rejects a pending build.
  ///
  /// If approved, the returned LRO will be analogous to the LRO returned from a
  /// CreateBuild call. If rejected, the returned LRO will be immediately done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the target build. For example:
  /// "projects/{$project_id}/builds/{$build_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/builds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> approve(
    ApproveBuildRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Cancels a build in progress.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the `Build` to cancel. Format:
  /// `projects/{project}/locations/{location}/builds/{build}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/builds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Build].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Build> cancel(
    CancelBuildRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Build.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Starts a build with the specified configuration.
  ///
  /// This method returns a long-running `Operation`, which includes the build
  /// ID. Pass the build ID to `GetBuild` to determine the build status (such as
  /// `SUCCESS` or `FAILURE`).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource where this build will be created. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [projectId] - Required. ID of the project.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Build request,
    core.String parent, {
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/builds';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about a previously requested build.
  ///
  /// The `Build` that is returned includes its status (such as `SUCCESS`,
  /// `FAILURE`, or `WORKING`), and timing information.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the `Build` to retrieve. Format:
  /// `projects/{project}/locations/{location}/builds/{build}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/builds/\[^/\]+$`.
  ///
  /// [id] - Required. ID of the build.
  ///
  /// [projectId] - Required. ID of the project.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Build].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Build> get(
    core.String name, {
    core.String? id,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (id != null) 'id': [id],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Build.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists previously requested builds.
  ///
  /// Previously requested builds may still be in-progress, or may have finished
  /// successfully or unsuccessfully.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent of the collection of `Builds`. Format:
  /// `projects/{project}/locations/location`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The raw filter text to constrain the results.
  ///
  /// [pageSize] - Number of results to return in the list.
  ///
  /// [pageToken] - The page token for the next page of Builds. If unspecified,
  /// the first page of results is returned. If the token is rejected for any
  /// reason, INVALID_ARGUMENT will be thrown. In this case, the token should be
  /// discarded, and pagination should be restarted from the first page of
  /// results. See https://google.aip.dev/158 for more.
  ///
  /// [projectId] - Required. ID of the project.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBuildsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBuildsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/builds';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBuildsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new build based on the specified build.
  ///
  /// This method creates a new build using the original build request, which
  /// may or may not result in an identical build. For triggered builds: *
  /// Triggered builds resolve to a precise revision; therefore a retry of a
  /// triggered build will result in a build that uses the same revision. For
  /// non-triggered builds that specify `RepoSource`: * If the original build
  /// built from the tip of a branch, the retried build will build from the tip
  /// of that branch, which may not be the same revision as the original build.
  /// * If the original build specified a commit sha or revision ID, the retried
  /// build will use the identical source. For builds that specify
  /// `StorageSource`: * If the original build pulled source from Google Cloud
  /// Storage without specifying the generation of the object, the new build
  /// will use the current object, which may be different from the original
  /// build source. * If the original build pulled source from Cloud Storage and
  /// specified the generation of the object, the new build will attempt to use
  /// the same object, which may or may not be available depending on the
  /// bucket's lifecycle management settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the `Build` to retry. Format:
  /// `projects/{project}/locations/{location}/builds/{build}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/builds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> retry(
    RetryBuildRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':retry';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGithubEnterpriseConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGithubEnterpriseConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an association between a GCP project and a GitHub Enterprise
  /// server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the parent project. For example:
  /// projects/{$project_number} or projects/{$project_id}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [gheConfigId] - Optional. The ID to use for the GithubEnterpriseConfig,
  /// which will become the final component of the GithubEnterpriseConfig’s
  /// resource name. ghe_config_id must meet the following requirements: + They
  /// must contain only alphanumeric characters and dashes. + They can be 1-64
  /// characters long. + They must begin and end with an alphanumeric character
  ///
  /// [projectId] - ID of the project.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    GitHubEnterpriseConfig request,
    core.String parent, {
    core.String? gheConfigId,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (gheConfigId != null) 'gheConfigId': [gheConfigId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/githubEnterpriseConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an association between a GCP project and a GitHub Enterprise
  /// server.
  ///
  /// Request parameters:
  ///
  /// [name] - This field should contain the name of the enterprise config
  /// resource. For example:
  /// "projects/{$project_id}/githubEnterpriseConfigs/{$config_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/githubEnterpriseConfigs/\[^/\]+$`.
  ///
  /// [configId] - Unique identifier of the `GitHubEnterpriseConfig`
  ///
  /// [projectId] - ID of the project
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? configId,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (configId != null) 'configId': [configId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a GitHubEnterpriseConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - This field should contain the name of the enterprise config
  /// resource. For example:
  /// "projects/{$project_id}/githubEnterpriseConfigs/{$config_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/githubEnterpriseConfigs/\[^/\]+$`.
  ///
  /// [configId] - Unique identifier of the `GitHubEnterpriseConfig`
  ///
  /// [projectId] - ID of the project
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GitHubEnterpriseConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GitHubEnterpriseConfig> get(
    core.String name, {
    core.String? configId,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (configId != null) 'configId': [configId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GitHubEnterpriseConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all GitHubEnterpriseConfigs for a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the parent project. For example:
  /// projects/{$project_number} or projects/{$project_id}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [projectId] - ID of the project
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGithubEnterpriseConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGithubEnterpriseConfigsResponse> list(
    core.String parent, {
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/githubEnterpriseConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListGithubEnterpriseConfigsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update an association between a GCP project and a GitHub Enterprise
  /// server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The full resource name for the GitHubEnterpriseConfig
  /// For example: "projects/{$project_id}/githubEnterpriseConfigs/{$config_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/githubEnterpriseConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Update mask for the resource. If this is set, the server
  /// will only update the fields specified in the field mask. Otherwise, a full
  /// update of the mutable resource fields will be performed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    GitHubEnterpriseConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTriggersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTriggersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new `BuildTrigger`.
  ///
  /// This API is experimental.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource where this trigger will be created. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [projectId] - Required. ID of the project for which to configure automatic
  /// builds.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BuildTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BuildTrigger> create(
    BuildTrigger request,
    core.String parent, {
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/triggers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BuildTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `BuildTrigger` by its project ID and trigger ID.
  ///
  /// This API is experimental.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the `Trigger` to delete. Format:
  /// `projects/{project}/locations/{location}/triggers/{trigger}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
  ///
  /// [projectId] - Required. ID of the project that owns the trigger.
  ///
  /// [triggerId] - Required. ID of the `BuildTrigger` to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? projectId,
    core.String? triggerId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (triggerId != null) 'triggerId': [triggerId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about a `BuildTrigger`.
  ///
  /// This API is experimental.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the `Trigger` to retrieve. Format:
  /// `projects/{project}/locations/{location}/triggers/{trigger}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
  ///
  /// [projectId] - Required. ID of the project that owns the trigger.
  ///
  /// [triggerId] - Required. Identifier (`id` or `name`) of the `BuildTrigger`
  /// to get.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BuildTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BuildTrigger> get(
    core.String name, {
    core.String? projectId,
    core.String? triggerId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (triggerId != null) 'triggerId': [triggerId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BuildTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists existing `BuildTrigger`s.
  ///
  /// This API is experimental.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent of the collection of `Triggers`. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Number of results to return in the list.
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [projectId] - Required. ID of the project for which to list BuildTriggers.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBuildTriggersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBuildTriggersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/triggers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBuildTriggersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a `BuildTrigger` by its project ID and trigger ID.
  ///
  /// This API is experimental.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - The `Trigger` name with format:
  /// `projects/{project}/locations/{location}/triggers/{trigger}`, where
  /// {trigger} is a unique identifier generated by the service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
  ///
  /// [projectId] - Required. ID of the project that owns the trigger.
  ///
  /// [triggerId] - Required. ID of the `BuildTrigger` to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BuildTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BuildTrigger> patch(
    BuildTrigger request,
    core.String resourceName, {
    core.String? projectId,
    core.String? triggerId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (triggerId != null) 'triggerId': [triggerId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resourceName');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return BuildTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Runs a `BuildTrigger` at a particular source revision.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the `Trigger` to run. Format:
  /// `projects/{project}/locations/{location}/triggers/{trigger}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> run(
    RunBuildTriggerRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':run';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// ReceiveTriggerWebhook \[Experimental\] is called when the API receives a
  /// webhook request targeted at a specific trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the `ReceiveTriggerWebhook` to retrieve. Format:
  /// `projects/{project}/locations/{location}/triggers/{trigger}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
  ///
  /// [projectId] - Project in which the specified trigger lives
  ///
  /// [secret] - Secret token used for authorization if an OAuth token isn't
  /// provided.
  ///
  /// [trigger] - Name of the trigger to run the payload against
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReceiveTriggerWebhookResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReceiveTriggerWebhookResponse> webhook(
    HttpBody request,
    core.String name, {
    core.String? projectId,
    core.String? secret,
    core.String? trigger,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (secret != null) 'secret': [secret],
      if (trigger != null) 'trigger': [trigger],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':webhook';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReceiveTriggerWebhookResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkerPoolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkerPoolsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a `WorkerPool`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this worker pool will be
  /// created. Format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [validateOnly] - If set, validate the request and preview the response,
  /// but do not actually post it.
  ///
  /// [workerPoolId] - Required. Immutable. The ID to use for the `WorkerPool`,
  /// which will become the final component of the resource name. This value
  /// should be 1-63 characters, and valid characters are /a-z-/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    WorkerPool request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? workerPoolId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if (workerPoolId != null) 'workerPoolId': [workerPoolId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/workerPools';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `WorkerPool`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `WorkerPool` to delete. Format:
  /// `projects/{project}/locations/{workerPool}/workerPools/{workerPool}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the `WorkerPool` is not found, the
  /// request will succeed but no action will be taken on the server.
  ///
  /// [etag] - Optional. If this is provided, it must match the server's etag on
  /// the workerpool for the request to be processed.
  ///
  /// [validateOnly] - If set, validate the request and preview the response,
  /// but do not actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns details of a `WorkerPool`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `WorkerPool` to retrieve. Format:
  /// `projects/{project}/locations/{location}/workerPools/{workerPool}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkerPool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkerPool> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return WorkerPool.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists `WorkerPool`s.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the collection of `WorkerPools`.
  /// Format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of `WorkerPool`s to return. The service
  /// may return fewer than this value. If omitted, the server will use a
  /// sensible default.
  ///
  /// [pageToken] - A page token, received from a previous `ListWorkerPools`
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkerPoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkerPoolsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/workerPools';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListWorkerPoolsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a `WorkerPool`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the `WorkerPool`, with format
  /// `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The
  /// value of `{worker_pool}` is provided by `worker_pool_id` in
  /// `CreateWorkerPool` request and the value of `{location}` is determined by
  /// the endpoint accessed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
  ///
  /// [updateMask] - A mask specifying which fields in `worker_pool` to update.
  ///
  /// [validateOnly] - If set, validate the request and preview the response,
  /// but do not actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    WorkerPool request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTriggersResource {
  final commons.ApiRequester _requester;

  ProjectsTriggersResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new `BuildTrigger`.
  ///
  /// This API is experimental.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project for which to configure automatic
  /// builds.
  ///
  /// [parent] - The parent resource where this trigger will be created. Format:
  /// `projects/{project}/locations/{location}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BuildTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BuildTrigger> create(
    BuildTrigger request,
    core.String projectId, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/triggers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BuildTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `BuildTrigger` by its project ID and trigger ID.
  ///
  /// This API is experimental.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project that owns the trigger.
  ///
  /// [triggerId] - Required. ID of the `BuildTrigger` to delete.
  ///
  /// [name] - The name of the `Trigger` to delete. Format:
  /// `projects/{project}/locations/{location}/triggers/{trigger}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String projectId,
    core.String triggerId, {
    core.String? name,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about a `BuildTrigger`.
  ///
  /// This API is experimental.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project that owns the trigger.
  ///
  /// [triggerId] - Required. Identifier (`id` or `name`) of the `BuildTrigger`
  /// to get.
  ///
  /// [name] - The name of the `Trigger` to retrieve. Format:
  /// `projects/{project}/locations/{location}/triggers/{trigger}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BuildTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BuildTrigger> get(
    core.String projectId,
    core.String triggerId, {
    core.String? name,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BuildTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists existing `BuildTrigger`s.
  ///
  /// This API is experimental.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project for which to list BuildTriggers.
  ///
  /// [pageSize] - Number of results to return in the list.
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [parent] - The parent of the collection of `Triggers`. Format:
  /// `projects/{project}/locations/{location}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBuildTriggersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBuildTriggersResponse> list(
    core.String projectId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/triggers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBuildTriggersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a `BuildTrigger` by its project ID and trigger ID.
  ///
  /// This API is experimental.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project that owns the trigger.
  ///
  /// [triggerId] - Required. ID of the `BuildTrigger` to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BuildTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BuildTrigger> patch(
    BuildTrigger request,
    core.String projectId,
    core.String triggerId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return BuildTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Runs a `BuildTrigger` at a particular source revision.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the project.
  ///
  /// [triggerId] - Required. ID of the trigger.
  ///
  /// [name] - The name of the `Trigger` to run. Format:
  /// `projects/{project}/locations/{location}/triggers/{trigger}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> run(
    RepoSource request,
    core.String projectId,
    core.String triggerId, {
    core.String? name,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId') +
        ':run';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// ReceiveTriggerWebhook \[Experimental\] is called when the API receives a
  /// webhook request targeted at a specific trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project in which the specified trigger lives
  ///
  /// [trigger] - Name of the trigger to run the payload against
  ///
  /// [name] - The name of the `ReceiveTriggerWebhook` to retrieve. Format:
  /// `projects/{project}/locations/{location}/triggers/{trigger}`
  ///
  /// [secret] - Secret token used for authorization if an OAuth token isn't
  /// provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReceiveTriggerWebhookResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReceiveTriggerWebhookResponse> webhook(
    HttpBody request,
    core.String projectId,
    core.String trigger, {
    core.String? name,
    core.String? secret,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if (secret != null) 'secret': [secret],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/triggers/' +
        commons.escapeVariable('$trigger') +
        ':webhook';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReceiveTriggerWebhookResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// ReceiveWebhook is called when the API receives a GitHub webhook.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [webhookKey] - For GitHub Enterprise webhooks, this key is used to
  /// associate the webhook request with the GitHubEnterpriseConfig to use for
  /// validation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> webhook(
    HttpBody request, {
    core.String? webhookKey,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (webhookKey != null) 'webhookKey': [webhookKey],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/webhook';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// ApprovalConfig describes configuration for manual approval of a build.
class ApprovalConfig {
  /// Whether or not approval is needed.
  ///
  /// If this is set on a build, it will become pending when created, and will
  /// need to be explicitly approved to start.
  core.bool? approvalRequired;

  ApprovalConfig({
    this.approvalRequired,
  });

  ApprovalConfig.fromJson(core.Map _json)
      : this(
          approvalRequired: _json.containsKey('approvalRequired')
              ? _json['approvalRequired'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approvalRequired != null) 'approvalRequired': approvalRequired!,
      };
}

/// ApprovalResult describes the decision and associated metadata of a manual
/// approval of a build.
class ApprovalResult {
  /// The time when the approval decision was made.
  ///
  /// Output only.
  core.String? approvalTime;

  /// Email of the user that called the ApproveBuild API to approve or reject a
  /// build at the time that the API was called.
  ///
  /// Output only.
  core.String? approverAccount;

  /// An optional comment for this manual approval result.
  ///
  /// Optional.
  core.String? comment;

  /// The decision of this manual approval.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DECISION_UNSPECIFIED" : Default enum type. This should not be used.
  /// - "APPROVED" : Build is approved.
  /// - "REJECTED" : Build is rejected.
  core.String? decision;

  /// An optional URL tied to this manual approval result.
  ///
  /// This field is essentially the same as comment, except that it will be
  /// rendered by the UI differently. An example use case is a link to an
  /// external job that approved this Build.
  ///
  /// Optional.
  core.String? url;

  ApprovalResult({
    this.approvalTime,
    this.approverAccount,
    this.comment,
    this.decision,
    this.url,
  });

  ApprovalResult.fromJson(core.Map _json)
      : this(
          approvalTime: _json.containsKey('approvalTime')
              ? _json['approvalTime'] as core.String
              : null,
          approverAccount: _json.containsKey('approverAccount')
              ? _json['approverAccount'] as core.String
              : null,
          comment: _json.containsKey('comment')
              ? _json['comment'] as core.String
              : null,
          decision: _json.containsKey('decision')
              ? _json['decision'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approvalTime != null) 'approvalTime': approvalTime!,
        if (approverAccount != null) 'approverAccount': approverAccount!,
        if (comment != null) 'comment': comment!,
        if (decision != null) 'decision': decision!,
        if (url != null) 'url': url!,
      };
}

/// Request to approve or reject a pending build.
class ApproveBuildRequest {
  /// Approval decision and metadata.
  ApprovalResult? approvalResult;

  ApproveBuildRequest({
    this.approvalResult,
  });

  ApproveBuildRequest.fromJson(core.Map _json)
      : this(
          approvalResult: _json.containsKey('approvalResult')
              ? ApprovalResult.fromJson(_json['approvalResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approvalResult != null) 'approvalResult': approvalResult!,
      };
}

/// Files in the workspace to upload to Cloud Storage upon successful completion
/// of all build steps.
class ArtifactObjects {
  /// Cloud Storage bucket and optional object path, in the form
  /// "gs://bucket/path/to/somewhere/".
  ///
  /// (see
  /// [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// Files in the workspace matching any path pattern will be uploaded to Cloud
  /// Storage with this location as a prefix.
  core.String? location;

  /// Path globs used to match files in the build's workspace.
  core.List<core.String>? paths;

  /// Stores timing information for pushing all artifact objects.
  ///
  /// Output only.
  TimeSpan? timing;

  ArtifactObjects({
    this.location,
    this.paths,
    this.timing,
  });

  ArtifactObjects.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          paths: _json.containsKey('paths')
              ? (_json['paths'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timing: _json.containsKey('timing')
              ? TimeSpan.fromJson(
                  _json['timing'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (paths != null) 'paths': paths!,
        if (timing != null) 'timing': timing!,
      };
}

/// An artifact that was uploaded during a build.
///
/// This is a single record in the artifact manifest JSON file.
class ArtifactResult {
  /// The file hash of the artifact.
  core.List<FileHashes>? fileHash;

  /// The path of an artifact in a Google Cloud Storage bucket, with the
  /// generation number.
  ///
  /// For example, `gs://mybucket/path/to/output.jar#generation`.
  core.String? location;

  ArtifactResult({
    this.fileHash,
    this.location,
  });

  ArtifactResult.fromJson(core.Map _json)
      : this(
          fileHash: _json.containsKey('fileHash')
              ? (_json['fileHash'] as core.List)
                  .map((value) => FileHashes.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileHash != null) 'fileHash': fileHash!,
        if (location != null) 'location': location!,
      };
}

/// Artifacts produced by a build that should be uploaded upon successful
/// completion of all build steps.
class Artifacts {
  /// A list of images to be pushed upon the successful completion of all build
  /// steps.
  ///
  /// The images will be pushed using the builder service account's credentials.
  /// The digests of the pushed images will be stored in the Build resource's
  /// results field. If any of the images fail to be pushed, the build is marked
  /// FAILURE.
  core.List<core.String>? images;

  /// A list of objects to be uploaded to Cloud Storage upon successful
  /// completion of all build steps.
  ///
  /// Files in the workspace matching specified paths globs will be uploaded to
  /// the specified Cloud Storage location using the builder service account's
  /// credentials. The location and generation of the uploaded objects will be
  /// stored in the Build resource's results field. If any objects fail to be
  /// pushed, the build is marked FAILURE.
  ArtifactObjects? objects;

  Artifacts({
    this.images,
    this.objects,
  });

  Artifacts.fromJson(core.Map _json)
      : this(
          images: _json.containsKey('images')
              ? (_json['images'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          objects: _json.containsKey('objects')
              ? ArtifactObjects.fromJson(
                  _json['objects'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (images != null) 'images': images!,
        if (objects != null) 'objects': objects!,
      };
}

/// A build resource in the Cloud Build API.
///
/// At a high level, a `Build` describes where to find source code, how to build
/// it (for example, the builder image to run on the source), and where to store
/// the built artifacts. Fields can include the following variables, which will
/// be expanded when the build is created: - $PROJECT_ID: the project ID of the
/// build. - $PROJECT_NUMBER: the project number of the build. - $LOCATION: the
/// location/region of the build. - $BUILD_ID: the autogenerated ID of the
/// build. - $REPO_NAME: the source repository name specified by RepoSource. -
/// $BRANCH_NAME: the branch name specified by RepoSource. - $TAG_NAME: the tag
/// name specified by RepoSource. - $REVISION_ID or $COMMIT_SHA: the commit SHA
/// specified by RepoSource or resolved from the specified branch or tag. -
/// $SHORT_SHA: first 7 characters of $REVISION_ID or $COMMIT_SHA.
class Build {
  /// Describes this build's approval configuration, status, and result.
  ///
  /// Output only.
  BuildApproval? approval;

  /// Artifacts produced by the build that should be uploaded upon successful
  /// completion of all build steps.
  Artifacts? artifacts;

  /// Secrets and secret environment variables.
  Secrets? availableSecrets;

  /// The ID of the `BuildTrigger` that triggered this build, if it was
  /// triggered automatically.
  ///
  /// Output only.
  core.String? buildTriggerId;

  /// Time at which the request to create the build was received.
  ///
  /// Output only.
  core.String? createTime;

  /// Contains information about the build when status=FAILURE.
  ///
  /// Output only.
  FailureInfo? failureInfo;

  /// Time at which execution of the build was finished.
  ///
  /// The difference between finish_time and start_time is the duration of the
  /// build's execution.
  ///
  /// Output only.
  core.String? finishTime;

  /// Unique identifier of the build.
  ///
  /// Output only.
  core.String? id;

  /// A list of images to be pushed upon the successful completion of all build
  /// steps.
  ///
  /// The images are pushed using the builder service account's credentials. The
  /// digests of the pushed images will be stored in the `Build` resource's
  /// results field. If any of the images fail to be pushed, the build status is
  /// marked `FAILURE`.
  core.List<core.String>? images;

  /// URL to logs for this build in Google Cloud Console.
  ///
  /// Output only.
  core.String? logUrl;

  /// Google Cloud Storage bucket where logs should be written (see
  /// [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  ///
  /// Logs file names will be of the format
  /// `${logs_bucket}/log-${build_id}.txt`.
  core.String? logsBucket;

  /// The 'Build' name with format:
  /// `projects/{project}/locations/{location}/builds/{build}`, where {build} is
  /// a unique identifier generated by the service.
  ///
  /// Output only.
  core.String? name;

  /// Special options for this build.
  BuildOptions? options;

  /// ID of the project.
  ///
  /// Output only.
  core.String? projectId;

  /// TTL in queue for this build.
  ///
  /// If provided and the build is enqueued longer than this value, the build
  /// will expire and the build status will be `EXPIRED`. The TTL starts ticking
  /// from create_time.
  core.String? queueTtl;

  /// Results of the build.
  ///
  /// Output only.
  Results? results;

  /// Secrets to decrypt using Cloud Key Management Service.
  ///
  /// Note: Secret Manager is the recommended technique for managing sensitive
  /// data with Cloud Build. Use `available_secrets` to configure builds to
  /// access secrets from Secret Manager. For instructions, see:
  /// https://cloud.google.com/cloud-build/docs/securing-builds/use-secrets
  core.List<Secret>? secrets;

  /// IAM service account whose credentials will be used at build runtime.
  ///
  /// Must be of the format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  /// ACCOUNT can be email address or uniqueId of the service account.
  core.String? serviceAccount;

  /// The location of the source files to build.
  Source? source;

  /// A permanent fixed identifier for source.
  ///
  /// Output only.
  SourceProvenance? sourceProvenance;

  /// Time at which execution of the build was started.
  ///
  /// Output only.
  core.String? startTime;

  /// Status of the build.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNKNOWN" : Status of the build is unknown.
  /// - "PENDING" : Build has been created and is pending execution and queuing.
  /// It has not been queued.
  /// - "QUEUED" : Build or step is queued; work has not yet begun.
  /// - "WORKING" : Build or step is being executed.
  /// - "SUCCESS" : Build or step finished successfully.
  /// - "FAILURE" : Build or step failed to complete successfully.
  /// - "INTERNAL_ERROR" : Build or step failed due to an internal cause.
  /// - "TIMEOUT" : Build or step took longer than was allowed.
  /// - "CANCELLED" : Build or step was canceled by a user.
  /// - "EXPIRED" : Build was enqueued for longer than the value of `queue_ttl`.
  core.String? status;

  /// Customer-readable message about the current status.
  ///
  /// Output only.
  core.String? statusDetail;

  /// The operations to be performed on the workspace.
  ///
  /// Required.
  core.List<BuildStep>? steps;

  /// Substitutions data for `Build` resource.
  core.Map<core.String, core.String>? substitutions;

  /// Tags for annotation of a `Build`.
  ///
  /// These are not docker tags.
  core.List<core.String>? tags;

  /// Amount of time that this build should be allowed to run, to second
  /// granularity.
  ///
  /// If this amount of time elapses, work on the build will cease and the build
  /// status will be `TIMEOUT`. `timeout` starts ticking from `startTime`.
  /// Default time is ten minutes.
  core.String? timeout;

  /// Stores timing information for phases of the build.
  ///
  /// Valid keys are: * BUILD: time to execute all build steps. * PUSH: time to
  /// push all specified images. * FETCHSOURCE: time to fetch source. *
  /// SETUPBUILD: time to set up build. If the build does not specify source or
  /// images, these keys will not be included.
  ///
  /// Output only.
  core.Map<core.String, TimeSpan>? timing;

  /// Non-fatal problems encountered during the execution of the build.
  ///
  /// Output only.
  core.List<Warning>? warnings;

  Build({
    this.approval,
    this.artifacts,
    this.availableSecrets,
    this.buildTriggerId,
    this.createTime,
    this.failureInfo,
    this.finishTime,
    this.id,
    this.images,
    this.logUrl,
    this.logsBucket,
    this.name,
    this.options,
    this.projectId,
    this.queueTtl,
    this.results,
    this.secrets,
    this.serviceAccount,
    this.source,
    this.sourceProvenance,
    this.startTime,
    this.status,
    this.statusDetail,
    this.steps,
    this.substitutions,
    this.tags,
    this.timeout,
    this.timing,
    this.warnings,
  });

  Build.fromJson(core.Map _json)
      : this(
          approval: _json.containsKey('approval')
              ? BuildApproval.fromJson(
                  _json['approval'] as core.Map<core.String, core.dynamic>)
              : null,
          artifacts: _json.containsKey('artifacts')
              ? Artifacts.fromJson(
                  _json['artifacts'] as core.Map<core.String, core.dynamic>)
              : null,
          availableSecrets: _json.containsKey('availableSecrets')
              ? Secrets.fromJson(_json['availableSecrets']
                  as core.Map<core.String, core.dynamic>)
              : null,
          buildTriggerId: _json.containsKey('buildTriggerId')
              ? _json['buildTriggerId'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          failureInfo: _json.containsKey('failureInfo')
              ? FailureInfo.fromJson(
                  _json['failureInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          finishTime: _json.containsKey('finishTime')
              ? _json['finishTime'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          images: _json.containsKey('images')
              ? (_json['images'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logUrl: _json.containsKey('logUrl')
              ? _json['logUrl'] as core.String
              : null,
          logsBucket: _json.containsKey('logsBucket')
              ? _json['logsBucket'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          options: _json.containsKey('options')
              ? BuildOptions.fromJson(
                  _json['options'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          queueTtl: _json.containsKey('queueTtl')
              ? _json['queueTtl'] as core.String
              : null,
          results: _json.containsKey('results')
              ? Results.fromJson(
                  _json['results'] as core.Map<core.String, core.dynamic>)
              : null,
          secrets: _json.containsKey('secrets')
              ? (_json['secrets'] as core.List)
                  .map((value) => Secret.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceProvenance: _json.containsKey('sourceProvenance')
              ? SourceProvenance.fromJson(_json['sourceProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          statusDetail: _json.containsKey('statusDetail')
              ? _json['statusDetail'] as core.String
              : null,
          steps: _json.containsKey('steps')
              ? (_json['steps'] as core.List)
                  .map((value) => BuildStep.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          substitutions: _json.containsKey('substitutions')
              ? (_json['substitutions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeout: _json.containsKey('timeout')
              ? _json['timeout'] as core.String
              : null,
          timing: _json.containsKey('timing')
              ? (_json['timing'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    TimeSpan.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          warnings: _json.containsKey('warnings')
              ? (_json['warnings'] as core.List)
                  .map((value) => Warning.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approval != null) 'approval': approval!,
        if (artifacts != null) 'artifacts': artifacts!,
        if (availableSecrets != null) 'availableSecrets': availableSecrets!,
        if (buildTriggerId != null) 'buildTriggerId': buildTriggerId!,
        if (createTime != null) 'createTime': createTime!,
        if (failureInfo != null) 'failureInfo': failureInfo!,
        if (finishTime != null) 'finishTime': finishTime!,
        if (id != null) 'id': id!,
        if (images != null) 'images': images!,
        if (logUrl != null) 'logUrl': logUrl!,
        if (logsBucket != null) 'logsBucket': logsBucket!,
        if (name != null) 'name': name!,
        if (options != null) 'options': options!,
        if (projectId != null) 'projectId': projectId!,
        if (queueTtl != null) 'queueTtl': queueTtl!,
        if (results != null) 'results': results!,
        if (secrets != null) 'secrets': secrets!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (source != null) 'source': source!,
        if (sourceProvenance != null) 'sourceProvenance': sourceProvenance!,
        if (startTime != null) 'startTime': startTime!,
        if (status != null) 'status': status!,
        if (statusDetail != null) 'statusDetail': statusDetail!,
        if (steps != null) 'steps': steps!,
        if (substitutions != null) 'substitutions': substitutions!,
        if (tags != null) 'tags': tags!,
        if (timeout != null) 'timeout': timeout!,
        if (timing != null) 'timing': timing!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// BuildApproval describes a build's approval configuration, state, and result.
class BuildApproval {
  /// Configuration for manual approval of this build.
  ///
  /// Output only.
  ApprovalConfig? config;

  /// Result of manual approval for this Build.
  ///
  /// Output only.
  ApprovalResult? result;

  /// The state of this build's approval.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default enum type. This should not be used.
  /// - "PENDING" : Build approval is pending.
  /// - "APPROVED" : Build approval has been approved.
  /// - "REJECTED" : Build approval has been rejected.
  /// - "CANCELLED" : Build was cancelled while it was still pending approval.
  core.String? state;

  BuildApproval({
    this.config,
    this.result,
    this.state,
  });

  BuildApproval.fromJson(core.Map _json)
      : this(
          config: _json.containsKey('config')
              ? ApprovalConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          result: _json.containsKey('result')
              ? ApprovalResult.fromJson(
                  _json['result'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (result != null) 'result': result!,
        if (state != null) 'state': state!,
      };
}

/// Metadata for build operations.
class BuildOperationMetadata {
  /// The build that the operation is tracking.
  Build? build;

  BuildOperationMetadata({
    this.build,
  });

  BuildOperationMetadata.fromJson(core.Map _json)
      : this(
          build: _json.containsKey('build')
              ? Build.fromJson(
                  _json['build'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (build != null) 'build': build!,
      };
}

/// Optional arguments to enable specific features of builds.
class BuildOptions {
  /// Requested disk size for the VM that runs the build.
  ///
  /// Note that this is *NOT* "disk free"; some of the space will be used by the
  /// operating system and build utilities. Also note that this is the minimum
  /// disk size that will be allocated for the build -- the build may run with a
  /// larger disk than requested. At present, the maximum disk size is 1000GB;
  /// builds that request more than the maximum are rejected with an error.
  core.String? diskSizeGb;

  /// Option to specify whether or not to apply bash style string operations to
  /// the substitutions.
  ///
  /// NOTE: this is always enabled for triggered builds and cannot be overridden
  /// in the build configuration file.
  core.bool? dynamicSubstitutions;

  /// A list of global environment variable definitions that will exist for all
  /// build steps in this build.
  ///
  /// If a variable is defined in both globally and in a build step, the
  /// variable will use the build step value. The elements are of the form
  /// "KEY=VALUE" for the environment variable "KEY" being given the value
  /// "VALUE".
  core.List<core.String>? env;

  /// Option to define build log streaming behavior to Google Cloud Storage.
  /// Possible string values are:
  /// - "STREAM_DEFAULT" : Service may automatically determine build log
  /// streaming behavior.
  /// - "STREAM_ON" : Build logs should be streamed to Google Cloud Storage.
  /// - "STREAM_OFF" : Build logs should not be streamed to Google Cloud
  /// Storage; they will be written when the build is completed.
  core.String? logStreamingOption;

  /// Option to specify the logging mode, which determines if and where build
  /// logs are stored.
  /// Possible string values are:
  /// - "LOGGING_UNSPECIFIED" : The service determines the logging mode. The
  /// default is `LEGACY`. Do not rely on the default logging behavior as it may
  /// change in the future.
  /// - "LEGACY" : Cloud Logging and Cloud Storage logging are enabled.
  /// - "GCS_ONLY" : Only Cloud Storage logging is enabled.
  /// - "STACKDRIVER_ONLY" : This option is the same as CLOUD_LOGGING_ONLY.
  /// - "CLOUD_LOGGING_ONLY" : Only Cloud Logging is enabled. Note that logs for
  /// both the Cloud Console UI and Cloud SDK are based on Cloud Storage logs,
  /// so neither will provide logs if this option is chosen.
  /// - "NONE" : Turn off all logging. No build logs will be captured.
  core.String? logging;

  /// Compute Engine machine type on which to run the build.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Standard machine type.
  /// - "N1_HIGHCPU_8" : Highcpu machine with 8 CPUs.
  /// - "N1_HIGHCPU_32" : Highcpu machine with 32 CPUs.
  /// - "E2_HIGHCPU_8" : Highcpu e2 machine with 8 CPUs.
  /// - "E2_HIGHCPU_32" : Highcpu e2 machine with 32 CPUs.
  core.String? machineType;

  /// Specification for execution on a `WorkerPool`.
  ///
  /// See
  /// [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool)
  /// for more information.
  ///
  /// Optional.
  PoolOption? pool;

  /// Requested verifiability options.
  /// Possible string values are:
  /// - "NOT_VERIFIED" : Not a verifiable build. (default)
  /// - "VERIFIED" : Verified build.
  core.String? requestedVerifyOption;

  /// A list of global environment variables, which are encrypted using a Cloud
  /// Key Management Service crypto key.
  ///
  /// These values must be specified in the build's `Secret`. These variables
  /// will be available to all build steps in this build.
  core.List<core.String>? secretEnv;

  /// Requested hash for SourceProvenance.
  core.List<core.String>? sourceProvenanceHash;

  /// Option to specify behavior when there is an error in the substitution
  /// checks.
  ///
  /// NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be
  /// overridden in the build configuration file.
  /// Possible string values are:
  /// - "MUST_MATCH" : Fails the build if error in substitutions checks, like
  /// missing a substitution in the template or in the map.
  /// - "ALLOW_LOOSE" : Do not fail the build if error in substitutions checks.
  core.String? substitutionOption;

  /// Global list of volumes to mount for ALL build steps Each volume is created
  /// as an empty volume prior to starting the build process.
  ///
  /// Upon completion of the build, volumes and their contents are discarded.
  /// Global volume names and paths cannot conflict with the volumes defined a
  /// build step. Using a global volume in a build with only one step is not
  /// valid as it is indicative of a build request with an incorrect
  /// configuration.
  core.List<Volume>? volumes;

  /// This field deprecated; please use `pool.name` instead.
  core.String? workerPool;

  BuildOptions({
    this.diskSizeGb,
    this.dynamicSubstitutions,
    this.env,
    this.logStreamingOption,
    this.logging,
    this.machineType,
    this.pool,
    this.requestedVerifyOption,
    this.secretEnv,
    this.sourceProvenanceHash,
    this.substitutionOption,
    this.volumes,
    this.workerPool,
  });

  BuildOptions.fromJson(core.Map _json)
      : this(
          diskSizeGb: _json.containsKey('diskSizeGb')
              ? _json['diskSizeGb'] as core.String
              : null,
          dynamicSubstitutions: _json.containsKey('dynamicSubstitutions')
              ? _json['dynamicSubstitutions'] as core.bool
              : null,
          env: _json.containsKey('env')
              ? (_json['env'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logStreamingOption: _json.containsKey('logStreamingOption')
              ? _json['logStreamingOption'] as core.String
              : null,
          logging: _json.containsKey('logging')
              ? _json['logging'] as core.String
              : null,
          machineType: _json.containsKey('machineType')
              ? _json['machineType'] as core.String
              : null,
          pool: _json.containsKey('pool')
              ? PoolOption.fromJson(
                  _json['pool'] as core.Map<core.String, core.dynamic>)
              : null,
          requestedVerifyOption: _json.containsKey('requestedVerifyOption')
              ? _json['requestedVerifyOption'] as core.String
              : null,
          secretEnv: _json.containsKey('secretEnv')
              ? (_json['secretEnv'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sourceProvenanceHash: _json.containsKey('sourceProvenanceHash')
              ? (_json['sourceProvenanceHash'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          substitutionOption: _json.containsKey('substitutionOption')
              ? _json['substitutionOption'] as core.String
              : null,
          volumes: _json.containsKey('volumes')
              ? (_json['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          workerPool: _json.containsKey('workerPool')
              ? _json['workerPool'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (dynamicSubstitutions != null)
          'dynamicSubstitutions': dynamicSubstitutions!,
        if (env != null) 'env': env!,
        if (logStreamingOption != null)
          'logStreamingOption': logStreamingOption!,
        if (logging != null) 'logging': logging!,
        if (machineType != null) 'machineType': machineType!,
        if (pool != null) 'pool': pool!,
        if (requestedVerifyOption != null)
          'requestedVerifyOption': requestedVerifyOption!,
        if (secretEnv != null) 'secretEnv': secretEnv!,
        if (sourceProvenanceHash != null)
          'sourceProvenanceHash': sourceProvenanceHash!,
        if (substitutionOption != null)
          'substitutionOption': substitutionOption!,
        if (volumes != null) 'volumes': volumes!,
        if (workerPool != null) 'workerPool': workerPool!,
      };
}

/// A step in the build pipeline.
class BuildStep {
  /// A list of arguments that will be presented to the step when it is started.
  ///
  /// If the image used to run the step's container has an entrypoint, the
  /// `args` are used as arguments to that entrypoint. If the image does not
  /// define an entrypoint, the first element in args is used as the entrypoint,
  /// and the remainder will be used as arguments.
  core.List<core.String>? args;

  /// Working directory to use when running this step's container.
  ///
  /// If this value is a relative path, it is relative to the build's working
  /// directory. If this value is absolute, it may be outside the build's
  /// working directory, in which case the contents of the path may not be
  /// persisted across build step executions, unless a `volume` for that path is
  /// specified. If the build specifies a `RepoSource` with `dir` and a step
  /// with a `dir`, which specifies an absolute path, the `RepoSource` `dir` is
  /// ignored for the step's execution.
  core.String? dir;

  /// Entrypoint to be used instead of the build step image's default
  /// entrypoint.
  ///
  /// If unset, the image's default entrypoint is used.
  core.String? entrypoint;

  /// A list of environment variable definitions to be used when running a step.
  ///
  /// The elements are of the form "KEY=VALUE" for the environment variable
  /// "KEY" being given the value "VALUE".
  core.List<core.String>? env;

  /// Unique identifier for this build step, used in `wait_for` to reference
  /// this build step as a dependency.
  core.String? id;

  /// The name of the container image that will run this particular build step.
  ///
  /// If the image is available in the host's Docker daemon's cache, it will be
  /// run directly. If not, the host will attempt to pull the image first, using
  /// the builder service account's credentials if necessary. The Docker
  /// daemon's cache will already have the latest versions of all of the
  /// officially supported build steps
  /// (\[https://github.com/GoogleCloudPlatform/cloud-builders\](https://github.com/GoogleCloudPlatform/cloud-builders)).
  /// The Docker daemon will also have cached many of the layers for some
  /// popular images, like "ubuntu", "debian", but they will be refreshed at the
  /// time you attempt to use them. If you built an image in a previous build
  /// step, it will be stored in the host's Docker daemon's cache and is
  /// available to use as the name for a later build step.
  ///
  /// Required.
  core.String? name;

  /// Stores timing information for pulling this build step's builder image
  /// only.
  ///
  /// Output only.
  TimeSpan? pullTiming;

  /// A shell script to be executed in the step.
  ///
  /// When script is provided, the user cannot specify the entrypoint or args.
  core.String? script;

  /// A list of environment variables which are encrypted using a Cloud Key
  /// Management Service crypto key.
  ///
  /// These values must be specified in the build's `Secret`.
  core.List<core.String>? secretEnv;

  /// Status of the build step.
  ///
  /// At this time, build step status is only updated on build completion; step
  /// status is not updated in real-time as the build progresses.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNKNOWN" : Status of the build is unknown.
  /// - "PENDING" : Build has been created and is pending execution and queuing.
  /// It has not been queued.
  /// - "QUEUED" : Build or step is queued; work has not yet begun.
  /// - "WORKING" : Build or step is being executed.
  /// - "SUCCESS" : Build or step finished successfully.
  /// - "FAILURE" : Build or step failed to complete successfully.
  /// - "INTERNAL_ERROR" : Build or step failed due to an internal cause.
  /// - "TIMEOUT" : Build or step took longer than was allowed.
  /// - "CANCELLED" : Build or step was canceled by a user.
  /// - "EXPIRED" : Build was enqueued for longer than the value of `queue_ttl`.
  core.String? status;

  /// Time limit for executing this build step.
  ///
  /// If not defined, the step has no time limit and will be allowed to continue
  /// to run until either it completes or the build itself times out.
  core.String? timeout;

  /// Stores timing information for executing this build step.
  ///
  /// Output only.
  TimeSpan? timing;

  /// List of volumes to mount into the build step.
  ///
  /// Each volume is created as an empty volume prior to execution of the build
  /// step. Upon completion of the build, volumes and their contents are
  /// discarded. Using a named volume in only one step is not valid as it is
  /// indicative of a build request with an incorrect configuration.
  core.List<Volume>? volumes;

  /// The ID(s) of the step(s) that this build step depends on.
  ///
  /// This build step will not start until all the build steps in `wait_for`
  /// have completed successfully. If `wait_for` is empty, this build step will
  /// start when all previous build steps in the `Build.Steps` list have
  /// completed successfully.
  core.List<core.String>? waitFor;

  BuildStep({
    this.args,
    this.dir,
    this.entrypoint,
    this.env,
    this.id,
    this.name,
    this.pullTiming,
    this.script,
    this.secretEnv,
    this.status,
    this.timeout,
    this.timing,
    this.volumes,
    this.waitFor,
  });

  BuildStep.fromJson(core.Map _json)
      : this(
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dir: _json.containsKey('dir') ? _json['dir'] as core.String : null,
          entrypoint: _json.containsKey('entrypoint')
              ? _json['entrypoint'] as core.String
              : null,
          env: _json.containsKey('env')
              ? (_json['env'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pullTiming: _json.containsKey('pullTiming')
              ? TimeSpan.fromJson(
                  _json['pullTiming'] as core.Map<core.String, core.dynamic>)
              : null,
          script: _json.containsKey('script')
              ? _json['script'] as core.String
              : null,
          secretEnv: _json.containsKey('secretEnv')
              ? (_json['secretEnv'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          timeout: _json.containsKey('timeout')
              ? _json['timeout'] as core.String
              : null,
          timing: _json.containsKey('timing')
              ? TimeSpan.fromJson(
                  _json['timing'] as core.Map<core.String, core.dynamic>)
              : null,
          volumes: _json.containsKey('volumes')
              ? (_json['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          waitFor: _json.containsKey('waitFor')
              ? (_json['waitFor'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (dir != null) 'dir': dir!,
        if (entrypoint != null) 'entrypoint': entrypoint!,
        if (env != null) 'env': env!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (pullTiming != null) 'pullTiming': pullTiming!,
        if (script != null) 'script': script!,
        if (secretEnv != null) 'secretEnv': secretEnv!,
        if (status != null) 'status': status!,
        if (timeout != null) 'timeout': timeout!,
        if (timing != null) 'timing': timing!,
        if (volumes != null) 'volumes': volumes!,
        if (waitFor != null) 'waitFor': waitFor!,
      };
}

/// Configuration for an automated build in response to source repository
/// changes.
class BuildTrigger {
  /// Configuration for manual approval to start a build invocation of this
  /// BuildTrigger.
  ApprovalConfig? approvalConfig;

  /// Autodetect build configuration.
  ///
  /// The following precedence is used (case insensitive): 1. cloudbuild.yaml 2.
  /// cloudbuild.yml 3. cloudbuild.json 4. Dockerfile Currently only available
  /// for GitHub App Triggers.
  core.bool? autodetect;

  /// Contents of the build template.
  Build? build;

  /// Time when the trigger was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Human-readable description of this trigger.
  core.String? description;

  /// If true, the trigger will never automatically execute a build.
  core.bool? disabled;

  /// Path, from the source root, to the build configuration file (i.e.
  /// cloudbuild.yaml).
  core.String? filename;

  /// A Common Expression Language string.
  core.String? filter;

  /// The file source describing the local or remote Build template.
  GitFileSource? gitFileSource;

  /// GitHubEventsConfig describes the configuration of a trigger that creates a
  /// build whenever a GitHub event is received.
  ///
  /// Mutually exclusive with `trigger_template`.
  GitHubEventsConfig? github;

  /// Unique identifier of the trigger.
  ///
  /// Output only.
  core.String? id;

  /// ignored_files and included_files are file glob matches using
  /// https://golang.org/pkg/path/filepath/#Match extended with support for
  /// "**".
  ///
  /// If ignored_files and changed files are both empty, then they are not used
  /// to determine whether or not to trigger a build. If ignored_files is not
  /// empty, then we ignore any files that match any of the ignored_file globs.
  /// If the change has no files that are outside of the ignored_files globs,
  /// then we do not trigger a build.
  core.List<core.String>? ignoredFiles;

  /// If any of the files altered in the commit pass the ignored_files filter
  /// and included_files is empty, then as far as this filter is concerned, we
  /// should trigger the build.
  ///
  /// If any of the files altered in the commit pass the ignored_files filter
  /// and included_files is not empty, then we make sure that at least one of
  /// those files matches a included_files glob. If not, then we do not trigger
  /// a build.
  core.List<core.String>? includedFiles;

  /// User-assigned name of the trigger.
  ///
  /// Must be unique within the project. Trigger names must meet the following
  /// requirements: + They must contain only alphanumeric characters and dashes.
  /// + They can be 1-64 characters long. + They must begin and end with an
  /// alphanumeric character.
  core.String? name;

  /// PubsubConfig describes the configuration of a trigger that creates a build
  /// whenever a Pub/Sub message is published.
  PubsubConfig? pubsubConfig;

  /// The `Trigger` name with format:
  /// `projects/{project}/locations/{location}/triggers/{trigger}`, where
  /// {trigger} is a unique identifier generated by the service.
  core.String? resourceName;

  /// The service account used for all user-controlled operations including
  /// UpdateBuildTrigger, RunBuildTrigger, CreateBuild, and CancelBuild.
  ///
  /// If no service account is set, then the standard Cloud Build service
  /// account (\[PROJECT_NUM\]@system.gserviceaccount.com) will be used instead.
  /// Format: `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL}`
  core.String? serviceAccount;

  /// The repo and ref of the repository from which to build.
  ///
  /// This field is used only for those triggers that do not respond to SCM
  /// events. Triggers that respond to such events build source at whatever
  /// commit caused the event. This field is currently only used by Webhook,
  /// Pub/Sub, Manual, and Cron triggers.
  GitRepoSource? sourceToBuild;

  /// Substitutions for Build resource.
  ///
  /// The keys must match the following regular expression: `^_[A-Z0-9_]+$`.
  core.Map<core.String, core.String>? substitutions;

  /// Tags for annotation of a `BuildTrigger`
  core.List<core.String>? tags;

  /// Template describing the types of source changes to trigger a build.
  ///
  /// Branch and tag names in trigger templates are interpreted as regular
  /// expressions. Any branch or tag change that matches that regular expression
  /// will trigger a build. Mutually exclusive with `github`.
  RepoSource? triggerTemplate;

  /// WebhookConfig describes the configuration of a trigger that creates a
  /// build whenever a webhook is sent to a trigger's webhook URL.
  WebhookConfig? webhookConfig;

  BuildTrigger({
    this.approvalConfig,
    this.autodetect,
    this.build,
    this.createTime,
    this.description,
    this.disabled,
    this.filename,
    this.filter,
    this.gitFileSource,
    this.github,
    this.id,
    this.ignoredFiles,
    this.includedFiles,
    this.name,
    this.pubsubConfig,
    this.resourceName,
    this.serviceAccount,
    this.sourceToBuild,
    this.substitutions,
    this.tags,
    this.triggerTemplate,
    this.webhookConfig,
  });

  BuildTrigger.fromJson(core.Map _json)
      : this(
          approvalConfig: _json.containsKey('approvalConfig')
              ? ApprovalConfig.fromJson(_json['approvalConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          autodetect: _json.containsKey('autodetect')
              ? _json['autodetect'] as core.bool
              : null,
          build: _json.containsKey('build')
              ? Build.fromJson(
                  _json['build'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          filename: _json.containsKey('filename')
              ? _json['filename'] as core.String
              : null,
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          gitFileSource: _json.containsKey('gitFileSource')
              ? GitFileSource.fromJson(
                  _json['gitFileSource'] as core.Map<core.String, core.dynamic>)
              : null,
          github: _json.containsKey('github')
              ? GitHubEventsConfig.fromJson(
                  _json['github'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          ignoredFiles: _json.containsKey('ignoredFiles')
              ? (_json['ignoredFiles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includedFiles: _json.containsKey('includedFiles')
              ? (_json['includedFiles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pubsubConfig: _json.containsKey('pubsubConfig')
              ? PubsubConfig.fromJson(
                  _json['pubsubConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
              : null,
          sourceToBuild: _json.containsKey('sourceToBuild')
              ? GitRepoSource.fromJson(
                  _json['sourceToBuild'] as core.Map<core.String, core.dynamic>)
              : null,
          substitutions: _json.containsKey('substitutions')
              ? (_json['substitutions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          triggerTemplate: _json.containsKey('triggerTemplate')
              ? RepoSource.fromJson(_json['triggerTemplate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          webhookConfig: _json.containsKey('webhookConfig')
              ? WebhookConfig.fromJson(
                  _json['webhookConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approvalConfig != null) 'approvalConfig': approvalConfig!,
        if (autodetect != null) 'autodetect': autodetect!,
        if (build != null) 'build': build!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (disabled != null) 'disabled': disabled!,
        if (filename != null) 'filename': filename!,
        if (filter != null) 'filter': filter!,
        if (gitFileSource != null) 'gitFileSource': gitFileSource!,
        if (github != null) 'github': github!,
        if (id != null) 'id': id!,
        if (ignoredFiles != null) 'ignoredFiles': ignoredFiles!,
        if (includedFiles != null) 'includedFiles': includedFiles!,
        if (name != null) 'name': name!,
        if (pubsubConfig != null) 'pubsubConfig': pubsubConfig!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (sourceToBuild != null) 'sourceToBuild': sourceToBuild!,
        if (substitutions != null) 'substitutions': substitutions!,
        if (tags != null) 'tags': tags!,
        if (triggerTemplate != null) 'triggerTemplate': triggerTemplate!,
        if (webhookConfig != null) 'webhookConfig': webhookConfig!,
      };
}

/// An image built by the pipeline.
class BuiltImage {
  /// Docker Registry 2.0 digest.
  core.String? digest;

  /// Name used to push the container image to Google Container Registry, as
  /// presented to `docker push`.
  core.String? name;

  /// Stores timing information for pushing the specified image.
  ///
  /// Output only.
  TimeSpan? pushTiming;

  BuiltImage({
    this.digest,
    this.name,
    this.pushTiming,
  });

  BuiltImage.fromJson(core.Map _json)
      : this(
          digest: _json.containsKey('digest')
              ? _json['digest'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pushTiming: _json.containsKey('pushTiming')
              ? TimeSpan.fromJson(
                  _json['pushTiming'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digest != null) 'digest': digest!,
        if (name != null) 'name': name!,
        if (pushTiming != null) 'pushTiming': pushTiming!,
      };
}

/// Request to cancel an ongoing build.
class CancelBuildRequest {
  /// ID of the build.
  ///
  /// Required.
  core.String? id;

  /// The name of the `Build` to cancel.
  ///
  /// Format: `projects/{project}/locations/{location}/builds/{build}`
  core.String? name;

  /// ID of the project.
  ///
  /// Required.
  core.String? projectId;

  CancelBuildRequest({
    this.id,
    this.name,
    this.projectId,
  });

  CancelBuildRequest.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Metadata for `CreateGithubEnterpriseConfig` operation.
typedef CreateGitHubEnterpriseConfigOperationMetadata = $OperationMetadata03;

/// Metadata for the `CreateWorkerPool` operation.
class CreateWorkerPoolOperationMetadata {
  /// Time the operation was completed.
  core.String? completeTime;

  /// Time the operation was created.
  core.String? createTime;

  /// The resource name of the `WorkerPool` to create.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/workerPools/{worker_pool}`.
  core.String? workerPool;

  CreateWorkerPoolOperationMetadata({
    this.completeTime,
    this.createTime,
    this.workerPool,
  });

  CreateWorkerPoolOperationMetadata.fromJson(core.Map _json)
      : this(
          completeTime: _json.containsKey('completeTime')
              ? _json['completeTime'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          workerPool: _json.containsKey('workerPool')
              ? _json['workerPool'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completeTime != null) 'completeTime': completeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (workerPool != null) 'workerPool': workerPool!,
      };
}

/// Metadata for `DeleteGitHubEnterpriseConfig` operation.
class DeleteGitHubEnterpriseConfigOperationMetadata {
  /// Time the operation was completed.
  core.String? completeTime;

  /// Time the operation was created.
  core.String? createTime;

  /// The resource name of the GitHubEnterprise to be deleted.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`.
  core.String? githubEnterpriseConfig;

  DeleteGitHubEnterpriseConfigOperationMetadata({
    this.completeTime,
    this.createTime,
    this.githubEnterpriseConfig,
  });

  DeleteGitHubEnterpriseConfigOperationMetadata.fromJson(core.Map _json)
      : this(
          completeTime: _json.containsKey('completeTime')
              ? _json['completeTime'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          githubEnterpriseConfig: _json.containsKey('githubEnterpriseConfig')
              ? _json['githubEnterpriseConfig'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completeTime != null) 'completeTime': completeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (githubEnterpriseConfig != null)
          'githubEnterpriseConfig': githubEnterpriseConfig!,
      };
}

/// Metadata for the `DeleteWorkerPool` operation.
class DeleteWorkerPoolOperationMetadata {
  /// Time the operation was completed.
  core.String? completeTime;

  /// Time the operation was created.
  core.String? createTime;

  /// The resource name of the `WorkerPool` being deleted.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/workerPools/{worker_pool}`.
  core.String? workerPool;

  DeleteWorkerPoolOperationMetadata({
    this.completeTime,
    this.createTime,
    this.workerPool,
  });

  DeleteWorkerPoolOperationMetadata.fromJson(core.Map _json)
      : this(
          completeTime: _json.containsKey('completeTime')
              ? _json['completeTime'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          workerPool: _json.containsKey('workerPool')
              ? _json['workerPool'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completeTime != null) 'completeTime': completeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (workerPool != null) 'workerPool': workerPool!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// A fatal problem encountered during the execution of the build.
class FailureInfo {
  /// Explains the failure issue in more detail using hard-coded text.
  core.String? detail;

  /// The name of the failure.
  /// Possible string values are:
  /// - "FAILURE_TYPE_UNSPECIFIED" : Type unspecified
  /// - "PUSH_FAILED" : Unable to push the image to the repository.
  /// - "PUSH_IMAGE_NOT_FOUND" : Final image not found.
  /// - "PUSH_NOT_AUTHORIZED" : Unauthorized push of the final image.
  /// - "LOGGING_FAILURE" : Backend logging failures. Should retry.
  /// - "USER_BUILD_STEP" : A build step has failed.
  /// - "FETCH_SOURCE_FAILED" : The source fetching has failed.
  core.String? type;

  FailureInfo({
    this.detail,
    this.type,
  });

  FailureInfo.fromJson(core.Map _json)
      : this(
          detail: _json.containsKey('detail')
              ? _json['detail'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detail != null) 'detail': detail!,
        if (type != null) 'type': type!,
      };
}

/// Container message for hashes of byte content of files, used in
/// SourceProvenance messages to verify integrity of source input to the build.
class FileHashes {
  /// Collection of file hashes.
  core.List<Hash>? fileHash;

  FileHashes({
    this.fileHash,
  });

  FileHashes.fromJson(core.Map _json)
      : this(
          fileHash: _json.containsKey('fileHash')
              ? (_json['fileHash'] as core.List)
                  .map((value) => Hash.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileHash != null) 'fileHash': fileHash!,
      };
}

/// GitFileSource describes a file within a (possibly remote) code repository.
class GitFileSource {
  /// The path of the file, with the repo root as the root of the path.
  core.String? path;

  /// See RepoType above.
  /// Possible string values are:
  /// - "UNKNOWN" : The default, unknown repo type.
  /// - "CLOUD_SOURCE_REPOSITORIES" : A Google Cloud Source Repositories-hosted
  /// repo.
  /// - "GITHUB" : A GitHub-hosted repo not necessarily on "github.com" (i.e.
  /// GitHub Enterprise).
  core.String? repoType;

  /// The branch, tag, arbitrary ref, or SHA version of the repo to use when
  /// resolving the filename (optional).
  ///
  /// This field respects the same syntax/resolution as described here:
  /// https://git-scm.com/docs/gitrevisions If unspecified, the revision from
  /// which the trigger invocation originated is assumed to be the revision from
  /// which to read the specified path.
  core.String? revision;

  /// The URI of the repo (optional).
  ///
  /// If unspecified, the repo from which the trigger invocation originated is
  /// assumed to be the repo from which to read the specified path.
  core.String? uri;

  GitFileSource({
    this.path,
    this.repoType,
    this.revision,
    this.uri,
  });

  GitFileSource.fromJson(core.Map _json)
      : this(
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          repoType: _json.containsKey('repoType')
              ? _json['repoType'] as core.String
              : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.String
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (repoType != null) 'repoType': repoType!,
        if (revision != null) 'revision': revision!,
        if (uri != null) 'uri': uri!,
      };
}

/// GitHubEnterpriseConfig represents a configuration for a GitHub Enterprise
/// server.
class GitHubEnterpriseConfig {
  /// The GitHub app id of the Cloud Build app on the GitHub Enterprise server.
  ///
  /// Required.
  core.String? appId;

  /// Time when the installation was associated with the project.
  ///
  /// Output only.
  core.String? createTime;

  /// Name to display for this config.
  core.String? displayName;

  /// The URL of the github enterprise host the configuration is for.
  core.String? hostUrl;

  /// The full resource name for the GitHubEnterpriseConfig For example:
  /// "projects/{$project_id}/githubEnterpriseConfigs/{$config_id}"
  ///
  /// Optional.
  core.String? name;

  /// The network to be used when reaching out to the GitHub Enterprise server.
  ///
  /// The VPC network must be enabled for private service connection. This
  /// should be set if the GitHub Enterprise server is hosted on-premises and
  /// not reachable by public internet. If this field is left empty, no network
  /// peering will occur and calls to the GitHub Enterprise server will be made
  /// over the public internet. Must be in the format
  /// `projects/{project}/global/networks/{network}`, where {project} is a
  /// project number or id and {network} is the name of a VPC network in the
  /// project.
  ///
  /// Optional.
  core.String? peeredNetwork;

  /// Names of secrets in Secret Manager.
  GitHubEnterpriseSecrets? secrets;

  /// SSL certificate to use for requests to GitHub Enterprise.
  ///
  /// Optional.
  core.String? sslCa;

  /// The key that should be attached to webhook calls to the ReceiveWebhook
  /// endpoint.
  core.String? webhookKey;

  GitHubEnterpriseConfig({
    this.appId,
    this.createTime,
    this.displayName,
    this.hostUrl,
    this.name,
    this.peeredNetwork,
    this.secrets,
    this.sslCa,
    this.webhookKey,
  });

  GitHubEnterpriseConfig.fromJson(core.Map _json)
      : this(
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          hostUrl: _json.containsKey('hostUrl')
              ? _json['hostUrl'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          peeredNetwork: _json.containsKey('peeredNetwork')
              ? _json['peeredNetwork'] as core.String
              : null,
          secrets: _json.containsKey('secrets')
              ? GitHubEnterpriseSecrets.fromJson(
                  _json['secrets'] as core.Map<core.String, core.dynamic>)
              : null,
          sslCa:
              _json.containsKey('sslCa') ? _json['sslCa'] as core.String : null,
          webhookKey: _json.containsKey('webhookKey')
              ? _json['webhookKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (hostUrl != null) 'hostUrl': hostUrl!,
        if (name != null) 'name': name!,
        if (peeredNetwork != null) 'peeredNetwork': peeredNetwork!,
        if (secrets != null) 'secrets': secrets!,
        if (sslCa != null) 'sslCa': sslCa!,
        if (webhookKey != null) 'webhookKey': webhookKey!,
      };
}

/// GitHubEnterpriseSecrets represents the names of all necessary secrets in
/// Secret Manager for a GitHub Enterprise server.
///
/// Format is: projects//secrets/.
class GitHubEnterpriseSecrets {
  /// The resource name for the OAuth client ID secret in Secret Manager.
  core.String? oauthClientIdName;

  /// The resource name for the OAuth client ID secret version in Secret
  /// Manager.
  core.String? oauthClientIdVersionName;

  /// The resource name for the OAuth secret in Secret Manager.
  core.String? oauthSecretName;

  /// The resource name for the OAuth secret secret version in Secret Manager.
  core.String? oauthSecretVersionName;

  /// The resource name for the private key secret.
  core.String? privateKeyName;

  /// The resource name for the private key secret version.
  core.String? privateKeyVersionName;

  /// The resource name for the webhook secret in Secret Manager.
  core.String? webhookSecretName;

  /// The resource name for the webhook secret secret version in Secret Manager.
  core.String? webhookSecretVersionName;

  GitHubEnterpriseSecrets({
    this.oauthClientIdName,
    this.oauthClientIdVersionName,
    this.oauthSecretName,
    this.oauthSecretVersionName,
    this.privateKeyName,
    this.privateKeyVersionName,
    this.webhookSecretName,
    this.webhookSecretVersionName,
  });

  GitHubEnterpriseSecrets.fromJson(core.Map _json)
      : this(
          oauthClientIdName: _json.containsKey('oauthClientIdName')
              ? _json['oauthClientIdName'] as core.String
              : null,
          oauthClientIdVersionName:
              _json.containsKey('oauthClientIdVersionName')
                  ? _json['oauthClientIdVersionName'] as core.String
                  : null,
          oauthSecretName: _json.containsKey('oauthSecretName')
              ? _json['oauthSecretName'] as core.String
              : null,
          oauthSecretVersionName: _json.containsKey('oauthSecretVersionName')
              ? _json['oauthSecretVersionName'] as core.String
              : null,
          privateKeyName: _json.containsKey('privateKeyName')
              ? _json['privateKeyName'] as core.String
              : null,
          privateKeyVersionName: _json.containsKey('privateKeyVersionName')
              ? _json['privateKeyVersionName'] as core.String
              : null,
          webhookSecretName: _json.containsKey('webhookSecretName')
              ? _json['webhookSecretName'] as core.String
              : null,
          webhookSecretVersionName:
              _json.containsKey('webhookSecretVersionName')
                  ? _json['webhookSecretVersionName'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (oauthClientIdName != null) 'oauthClientIdName': oauthClientIdName!,
        if (oauthClientIdVersionName != null)
          'oauthClientIdVersionName': oauthClientIdVersionName!,
        if (oauthSecretName != null) 'oauthSecretName': oauthSecretName!,
        if (oauthSecretVersionName != null)
          'oauthSecretVersionName': oauthSecretVersionName!,
        if (privateKeyName != null) 'privateKeyName': privateKeyName!,
        if (privateKeyVersionName != null)
          'privateKeyVersionName': privateKeyVersionName!,
        if (webhookSecretName != null) 'webhookSecretName': webhookSecretName!,
        if (webhookSecretVersionName != null)
          'webhookSecretVersionName': webhookSecretVersionName!,
      };
}

/// GitHubEventsConfig describes the configuration of a trigger that creates a
/// build whenever a GitHub event is received.
class GitHubEventsConfig {
  /// The resource name of the github enterprise config that should be applied
  /// to this installation.
  ///
  /// For example: "projects/{$project_id}/githubEnterpriseConfigs/{$config_id}"
  ///
  /// Optional.
  core.String? enterpriseConfigResourceName;

  /// The installationID that emits the GitHub event.
  core.String? installationId;

  /// Name of the repository.
  ///
  /// For example: The name for
  /// https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  core.String? name;

  /// Owner of the repository.
  ///
  /// For example: The owner for
  /// https://github.com/googlecloudplatform/cloud-builders is
  /// "googlecloudplatform".
  core.String? owner;

  /// filter to match changes in pull requests.
  PullRequestFilter? pullRequest;

  /// filter to match changes in refs like branches, tags.
  PushFilter? push;

  GitHubEventsConfig({
    this.enterpriseConfigResourceName,
    this.installationId,
    this.name,
    this.owner,
    this.pullRequest,
    this.push,
  });

  GitHubEventsConfig.fromJson(core.Map _json)
      : this(
          enterpriseConfigResourceName:
              _json.containsKey('enterpriseConfigResourceName')
                  ? _json['enterpriseConfigResourceName'] as core.String
                  : null,
          installationId: _json.containsKey('installationId')
              ? _json['installationId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          owner:
              _json.containsKey('owner') ? _json['owner'] as core.String : null,
          pullRequest: _json.containsKey('pullRequest')
              ? PullRequestFilter.fromJson(
                  _json['pullRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          push: _json.containsKey('push')
              ? PushFilter.fromJson(
                  _json['push'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enterpriseConfigResourceName != null)
          'enterpriseConfigResourceName': enterpriseConfigResourceName!,
        if (installationId != null) 'installationId': installationId!,
        if (name != null) 'name': name!,
        if (owner != null) 'owner': owner!,
        if (pullRequest != null) 'pullRequest': pullRequest!,
        if (push != null) 'push': push!,
      };
}

/// GitRepoSource describes a repo and ref of a code repository.
class GitRepoSource {
  /// The branch or tag to use.
  ///
  /// Must start with "refs/" (required).
  core.String? ref;

  /// See RepoType below.
  /// Possible string values are:
  /// - "UNKNOWN" : The default, unknown repo type.
  /// - "CLOUD_SOURCE_REPOSITORIES" : A Google Cloud Source Repositories-hosted
  /// repo.
  /// - "GITHUB" : A GitHub-hosted repo not necessarily on "github.com" (i.e.
  /// GitHub Enterprise).
  core.String? repoType;

  /// The URI of the repo (required).
  core.String? uri;

  GitRepoSource({
    this.ref,
    this.repoType,
    this.uri,
  });

  GitRepoSource.fromJson(core.Map _json)
      : this(
          ref: _json.containsKey('ref') ? _json['ref'] as core.String : null,
          repoType: _json.containsKey('repoType')
              ? _json['repoType'] as core.String
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ref != null) 'ref': ref!,
        if (repoType != null) 'repoType': repoType!,
        if (uri != null) 'uri': uri!,
      };
}

/// Represents the metadata of the long-running operation.
typedef GoogleDevtoolsCloudbuildV2OperationMetadata = $OperationMetadata00;

/// HTTPDelivery is the delivery configuration for an HTTP notification.
class HTTPDelivery {
  /// The URI to which JSON-containing HTTP POST requests should be sent.
  core.String? uri;

  HTTPDelivery({
    this.uri,
  });

  HTTPDelivery.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Container message for hash values.
class Hash {
  /// The type of hash that was performed.
  /// Possible string values are:
  /// - "NONE" : No hash requested.
  /// - "SHA256" : Use a sha256 hash.
  /// - "MD5" : Use a md5 hash.
  core.String? type;

  /// The hash value.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Hash({
    this.type,
    this.value,
  });

  Hash.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef HttpBody = $HttpBody;

/// Pairs a set of secret environment variables mapped to encrypted values with
/// the Cloud KMS key to use to decrypt the value.
class InlineSecret {
  /// Map of environment variable name to its encrypted value.
  ///
  /// Secret environment variables must be unique across all of a build's
  /// secrets, and must be used by at least one build step. Values can be at
  /// most 64 KB in size. There can be at most 100 secret values across all of a
  /// build's secrets.
  core.Map<core.String, core.String>? envMap;

  /// Resource name of Cloud KMS crypto key to decrypt the encrypted value.
  ///
  /// In format: projects / * /locations / * /keyRings / * /cryptoKeys / *
  core.String? kmsKeyName;

  InlineSecret({
    this.envMap,
    this.kmsKeyName,
  });

  InlineSecret.fromJson(core.Map _json)
      : this(
          envMap: _json.containsKey('envMap')
              ? (_json['envMap'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (envMap != null) 'envMap': envMap!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
      };
}

/// Response containing existing `BuildTriggers`.
class ListBuildTriggersResponse {
  /// Token to receive the next page of results.
  core.String? nextPageToken;

  /// `BuildTriggers` for the project, sorted by `create_time` descending.
  core.List<BuildTrigger>? triggers;

  ListBuildTriggersResponse({
    this.nextPageToken,
    this.triggers,
  });

  ListBuildTriggersResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          triggers: _json.containsKey('triggers')
              ? (_json['triggers'] as core.List)
                  .map((value) => BuildTrigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (triggers != null) 'triggers': triggers!,
      };
}

/// Response including listed builds.
class ListBuildsResponse {
  /// Builds will be sorted by `create_time`, descending.
  core.List<Build>? builds;

  /// Token to receive the next page of results.
  ///
  /// This will be absent if the end of the response list has been reached.
  core.String? nextPageToken;

  ListBuildsResponse({
    this.builds,
    this.nextPageToken,
  });

  ListBuildsResponse.fromJson(core.Map _json)
      : this(
          builds: _json.containsKey('builds')
              ? (_json['builds'] as core.List)
                  .map((value) => Build.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builds != null) 'builds': builds!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// RPC response object returned by ListGithubEnterpriseConfigs RPC method.
class ListGithubEnterpriseConfigsResponse {
  /// A list of GitHubEnterpriseConfigs
  core.List<GitHubEnterpriseConfig>? configs;

  ListGithubEnterpriseConfigsResponse({
    this.configs,
  });

  ListGithubEnterpriseConfigsResponse.fromJson(core.Map _json)
      : this(
          configs: _json.containsKey('configs')
              ? (_json['configs'] as core.List)
                  .map((value) => GitHubEnterpriseConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
      };
}

/// Response containing existing `WorkerPools`.
class ListWorkerPoolsResponse {
  /// Continuation token used to page through large result sets.
  ///
  /// Provide this value in a subsequent ListWorkerPoolsRequest to return the
  /// next page of results.
  core.String? nextPageToken;

  /// `WorkerPools` for the specified project.
  core.List<WorkerPool>? workerPools;

  ListWorkerPoolsResponse({
    this.nextPageToken,
    this.workerPools,
  });

  ListWorkerPoolsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          workerPools: _json.containsKey('workerPools')
              ? (_json['workerPools'] as core.List)
                  .map((value) => WorkerPool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workerPools != null) 'workerPools': workerPools!,
      };
}

/// Defines the network configuration for the pool.
class NetworkConfig {
  /// Option to configure network egress for the workers.
  /// Possible string values are:
  /// - "EGRESS_OPTION_UNSPECIFIED" : If set, defaults to PUBLIC_EGRESS.
  /// - "NO_PUBLIC_EGRESS" : If set, workers are created without any public
  /// address, which prevents network egress to public IPs unless a network
  /// proxy is configured.
  /// - "PUBLIC_EGRESS" : If set, workers are created with a public address
  /// which allows for public internet egress.
  core.String? egressOption;

  /// The network definition that the workers are peered to.
  ///
  /// If this section is left empty, the workers will be peered to
  /// `WorkerPool.project_id` on the service producer network. Must be in the
  /// format `projects/{project}/global/networks/{network}`, where `{project}`
  /// is a project number, such as `12345`, and `{network}` is the name of a VPC
  /// network in the project. See
  /// [Understanding network configuration options](https://cloud.google.com/build/docs/private-pools/set-up-private-pool-environment)
  ///
  /// Required. Immutable.
  core.String? peeredNetwork;

  NetworkConfig({
    this.egressOption,
    this.peeredNetwork,
  });

  NetworkConfig.fromJson(core.Map _json)
      : this(
          egressOption: _json.containsKey('egressOption')
              ? _json['egressOption'] as core.String
              : null,
          peeredNetwork: _json.containsKey('peeredNetwork')
              ? _json['peeredNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (egressOption != null) 'egressOption': egressOption!,
        if (peeredNetwork != null) 'peeredNetwork': peeredNetwork!,
      };
}

/// Notification is the container which holds the data that is relevant to this
/// particular notification.
class Notification {
  /// The filter string to use for notification filtering.
  ///
  /// Currently, this is assumed to be a CEL program. See
  /// https://opensource.google/projects/cel for more.
  core.String? filter;

  /// Configuration for HTTP delivery.
  HTTPDelivery? httpDelivery;

  /// Configuration for Slack delivery.
  SlackDelivery? slackDelivery;

  /// Configuration for SMTP (email) delivery.
  SMTPDelivery? smtpDelivery;

  /// Escape hatch for users to supply custom delivery configs.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? structDelivery;

  Notification({
    this.filter,
    this.httpDelivery,
    this.slackDelivery,
    this.smtpDelivery,
    this.structDelivery,
  });

  Notification.fromJson(core.Map _json)
      : this(
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          httpDelivery: _json.containsKey('httpDelivery')
              ? HTTPDelivery.fromJson(
                  _json['httpDelivery'] as core.Map<core.String, core.dynamic>)
              : null,
          slackDelivery: _json.containsKey('slackDelivery')
              ? SlackDelivery.fromJson(
                  _json['slackDelivery'] as core.Map<core.String, core.dynamic>)
              : null,
          smtpDelivery: _json.containsKey('smtpDelivery')
              ? SMTPDelivery.fromJson(
                  _json['smtpDelivery'] as core.Map<core.String, core.dynamic>)
              : null,
          structDelivery: _json.containsKey('structDelivery')
              ? _json['structDelivery'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (httpDelivery != null) 'httpDelivery': httpDelivery!,
        if (slackDelivery != null) 'slackDelivery': slackDelivery!,
        if (smtpDelivery != null) 'smtpDelivery': smtpDelivery!,
        if (structDelivery != null) 'structDelivery': structDelivery!,
      };
}

/// NotifierConfig is the top-level configuration message.
class NotifierConfig {
  /// The API version of this configuration format.
  core.String? apiVersion;

  /// The type of notifier to use (e.g. SMTPNotifier).
  core.String? kind;

  /// Metadata for referring to/handling/deploying this notifier.
  NotifierMetadata? metadata;

  /// The actual configuration for this notifier.
  NotifierSpec? spec;

  NotifierConfig({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  NotifierConfig.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? NotifierMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: _json.containsKey('spec')
              ? NotifierSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (spec != null) 'spec': spec!,
      };
}

/// NotifierMetadata contains the data which can be used to reference or
/// describe this notifier.
class NotifierMetadata {
  /// The human-readable and user-given name for the notifier.
  ///
  /// For example: "repo-merge-email-notifier".
  core.String? name;

  /// The string representing the name and version of notifier to deploy.
  ///
  /// Expected to be of the form of "/:". For example:
  /// "gcr.io/my-project/notifiers/smtp:1.2.34".
  core.String? notifier;

  NotifierMetadata({
    this.name,
    this.notifier,
  });

  NotifierMetadata.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notifier: _json.containsKey('notifier')
              ? _json['notifier'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (notifier != null) 'notifier': notifier!,
      };
}

/// NotifierSecret is the container that maps a secret name (reference) to its
/// Google Cloud Secret Manager resource path.
class NotifierSecret {
  /// Name is the local name of the secret, such as the verbatim string
  /// "my-smtp-password".
  core.String? name;

  /// Value is interpreted to be a resource path for fetching the actual
  /// (versioned) secret data for this secret.
  ///
  /// For example, this would be a Google Cloud Secret Manager secret version
  /// resource path like:
  /// "projects/my-project/secrets/my-secret/versions/latest".
  core.String? value;

  NotifierSecret({
    this.name,
    this.value,
  });

  NotifierSecret.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// NotifierSecretRef contains the reference to a secret stored in the
/// corresponding NotifierSpec.
class NotifierSecretRef {
  /// The value of `secret_ref` should be a `name` that is registered in a
  /// `Secret` in the `secrets` list of the `Spec`.
  core.String? secretRef;

  NotifierSecretRef({
    this.secretRef,
  });

  NotifierSecretRef.fromJson(core.Map _json)
      : this(
          secretRef: _json.containsKey('secretRef')
              ? _json['secretRef'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secretRef != null) 'secretRef': secretRef!,
      };
}

/// NotifierSpec is the configuration container for notifications.
class NotifierSpec {
  /// The configuration of this particular notifier.
  Notification? notification;

  /// Configurations for secret resources used by this particular notifier.
  core.List<NotifierSecret>? secrets;

  NotifierSpec({
    this.notification,
    this.secrets,
  });

  NotifierSpec.fromJson(core.Map _json)
      : this(
          notification: _json.containsKey('notification')
              ? Notification.fromJson(
                  _json['notification'] as core.Map<core.String, core.dynamic>)
              : null,
          secrets: _json.containsKey('secrets')
              ? (_json['secrets'] as core.List)
                  .map((value) => NotifierSecret.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notification != null) 'notification': notification!,
        if (secrets != null) 'secrets': secrets!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// Represents the metadata of the long-running operation.
typedef OperationMetadata = $OperationMetadata02;

/// Details about how a build should be executed on a `WorkerPool`.
///
/// See
/// [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool)
/// for more information.
class PoolOption {
  /// The `WorkerPool` resource to execute the build on.
  ///
  /// You must have `cloudbuild.workerpools.use` on the project hosting the
  /// WorkerPool. Format
  /// projects/{project}/locations/{location}/workerPools/{workerPoolId}
  core.String? name;

  PoolOption({
    this.name,
  });

  PoolOption.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Configuration for a V1 `PrivatePool`.
class PrivatePoolV1Config {
  /// Network configuration for the pool.
  NetworkConfig? networkConfig;

  /// Machine configuration for the workers in the pool.
  WorkerConfig? workerConfig;

  PrivatePoolV1Config({
    this.networkConfig,
    this.workerConfig,
  });

  PrivatePoolV1Config.fromJson(core.Map _json)
      : this(
          networkConfig: _json.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  _json['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          workerConfig: _json.containsKey('workerConfig')
              ? WorkerConfig.fromJson(
                  _json['workerConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (workerConfig != null) 'workerConfig': workerConfig!,
      };
}

/// Metadata for `ProcessAppManifestCallback` operation.
typedef ProcessAppManifestCallbackOperationMetadata = $OperationMetadata03;

/// PubsubConfig describes the configuration of a trigger that creates a build
/// whenever a Pub/Sub message is published.
class PubsubConfig {
  /// Service account that will make the push request.
  core.String? serviceAccountEmail;

  /// Potential issues with the underlying Pub/Sub subscription configuration.
  ///
  /// Only populated on get requests.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The subscription configuration has not been
  /// checked.
  /// - "OK" : The Pub/Sub subscription is properly configured.
  /// - "SUBSCRIPTION_DELETED" : The subscription has been deleted.
  /// - "TOPIC_DELETED" : The topic has been deleted.
  /// - "SUBSCRIPTION_MISCONFIGURED" : Some of the subscription's field are
  /// misconfigured.
  core.String? state;

  /// Name of the subscription.
  ///
  /// Format is `projects/{project}/subscriptions/{subscription}`.
  ///
  /// Output only.
  core.String? subscription;

  /// The name of the topic from which this subscription is receiving messages.
  ///
  /// Format is `projects/{project}/topics/{topic}`.
  core.String? topic;

  PubsubConfig({
    this.serviceAccountEmail,
    this.state,
    this.subscription,
    this.topic,
  });

  PubsubConfig.fromJson(core.Map _json)
      : this(
          serviceAccountEmail: _json.containsKey('serviceAccountEmail')
              ? _json['serviceAccountEmail'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          subscription: _json.containsKey('subscription')
              ? _json['subscription'] as core.String
              : null,
          topic:
              _json.containsKey('topic') ? _json['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (state != null) 'state': state!,
        if (subscription != null) 'subscription': subscription!,
        if (topic != null) 'topic': topic!,
      };
}

/// PullRequestFilter contains filter properties for matching GitHub Pull
/// Requests.
class PullRequestFilter {
  /// Regex of branches to match.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  core.String? branch;

  /// Configure builds to run whether a repository owner or collaborator need to
  /// comment `/gcbrun`.
  /// Possible string values are:
  /// - "COMMENTS_DISABLED" : Do not require comments on Pull Requests before
  /// builds are triggered.
  /// - "COMMENTS_ENABLED" : Enforce that repository owners or collaborators
  /// must comment on Pull Requests before builds are triggered.
  /// - "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY" : Enforce that
  /// repository owners or collaborators must comment on external contributors'
  /// Pull Requests before builds are triggered.
  core.String? commentControl;

  /// If true, branches that do NOT match the git_ref will trigger a build.
  core.bool? invertRegex;

  PullRequestFilter({
    this.branch,
    this.commentControl,
    this.invertRegex,
  });

  PullRequestFilter.fromJson(core.Map _json)
      : this(
          branch: _json.containsKey('branch')
              ? _json['branch'] as core.String
              : null,
          commentControl: _json.containsKey('commentControl')
              ? _json['commentControl'] as core.String
              : null,
          invertRegex: _json.containsKey('invertRegex')
              ? _json['invertRegex'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (branch != null) 'branch': branch!,
        if (commentControl != null) 'commentControl': commentControl!,
        if (invertRegex != null) 'invertRegex': invertRegex!,
      };
}

/// Push contains filter properties for matching GitHub git pushes.
class PushFilter {
  /// Regexes matching branches to build.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  core.String? branch;

  /// When true, only trigger a build if the revision regex does NOT match the
  /// git_ref regex.
  core.bool? invertRegex;

  /// Regexes matching tags to build.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  core.String? tag;

  PushFilter({
    this.branch,
    this.invertRegex,
    this.tag,
  });

  PushFilter.fromJson(core.Map _json)
      : this(
          branch: _json.containsKey('branch')
              ? _json['branch'] as core.String
              : null,
          invertRegex: _json.containsKey('invertRegex')
              ? _json['invertRegex'] as core.bool
              : null,
          tag: _json.containsKey('tag') ? _json['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (branch != null) 'branch': branch!,
        if (invertRegex != null) 'invertRegex': invertRegex!,
        if (tag != null) 'tag': tag!,
      };
}

/// ReceiveTriggerWebhookResponse \[Experimental\] is the response object for
/// the ReceiveTriggerWebhook method.
typedef ReceiveTriggerWebhookResponse = $Empty;

/// Location of the source in a Google Cloud Source Repository.
class RepoSource {
  /// Regex matching branches to build.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  core.String? branchName;

  /// Explicit commit SHA to build.
  core.String? commitSha;

  /// Directory, relative to the source root, in which to run the build.
  ///
  /// This must be a relative path. If a step's `dir` is specified and is an
  /// absolute path, this value is ignored for that step's execution.
  core.String? dir;

  /// Only trigger a build if the revision regex does NOT match the revision
  /// regex.
  core.bool? invertRegex;

  /// ID of the project that owns the Cloud Source Repository.
  ///
  /// If omitted, the project ID requesting the build is assumed.
  core.String? projectId;

  /// Name of the Cloud Source Repository.
  core.String? repoName;

  /// Substitutions to use in a triggered build.
  ///
  /// Should only be used with RunBuildTrigger
  core.Map<core.String, core.String>? substitutions;

  /// Regex matching tags to build.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  core.String? tagName;

  RepoSource({
    this.branchName,
    this.commitSha,
    this.dir,
    this.invertRegex,
    this.projectId,
    this.repoName,
    this.substitutions,
    this.tagName,
  });

  RepoSource.fromJson(core.Map _json)
      : this(
          branchName: _json.containsKey('branchName')
              ? _json['branchName'] as core.String
              : null,
          commitSha: _json.containsKey('commitSha')
              ? _json['commitSha'] as core.String
              : null,
          dir: _json.containsKey('dir') ? _json['dir'] as core.String : null,
          invertRegex: _json.containsKey('invertRegex')
              ? _json['invertRegex'] as core.bool
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          repoName: _json.containsKey('repoName')
              ? _json['repoName'] as core.String
              : null,
          substitutions: _json.containsKey('substitutions')
              ? (_json['substitutions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          tagName: _json.containsKey('tagName')
              ? _json['tagName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (branchName != null) 'branchName': branchName!,
        if (commitSha != null) 'commitSha': commitSha!,
        if (dir != null) 'dir': dir!,
        if (invertRegex != null) 'invertRegex': invertRegex!,
        if (projectId != null) 'projectId': projectId!,
        if (repoName != null) 'repoName': repoName!,
        if (substitutions != null) 'substitutions': substitutions!,
        if (tagName != null) 'tagName': tagName!,
      };
}

/// Artifacts created by the build pipeline.
class Results {
  /// Path to the artifact manifest.
  ///
  /// Only populated when artifacts are uploaded.
  core.String? artifactManifest;

  /// Time to push all non-container artifacts.
  TimeSpan? artifactTiming;

  /// List of build step digests, in the order corresponding to build step
  /// indices.
  core.List<core.String>? buildStepImages;

  /// List of build step outputs, produced by builder images, in the order
  /// corresponding to build step indices.
  ///
  /// [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders)
  /// can produce this output by writing to `$BUILDER_OUTPUT/output`. Only the
  /// first 4KB of data is stored.
  core.List<core.String>? buildStepOutputs;

  /// Container images that were built as a part of the build.
  core.List<BuiltImage>? images;

  /// Number of artifacts uploaded.
  ///
  /// Only populated when artifacts are uploaded.
  core.String? numArtifacts;

  Results({
    this.artifactManifest,
    this.artifactTiming,
    this.buildStepImages,
    this.buildStepOutputs,
    this.images,
    this.numArtifacts,
  });

  Results.fromJson(core.Map _json)
      : this(
          artifactManifest: _json.containsKey('artifactManifest')
              ? _json['artifactManifest'] as core.String
              : null,
          artifactTiming: _json.containsKey('artifactTiming')
              ? TimeSpan.fromJson(_json['artifactTiming']
                  as core.Map<core.String, core.dynamic>)
              : null,
          buildStepImages: _json.containsKey('buildStepImages')
              ? (_json['buildStepImages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          buildStepOutputs: _json.containsKey('buildStepOutputs')
              ? (_json['buildStepOutputs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          images: _json.containsKey('images')
              ? (_json['images'] as core.List)
                  .map((value) => BuiltImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          numArtifacts: _json.containsKey('numArtifacts')
              ? _json['numArtifacts'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactManifest != null) 'artifactManifest': artifactManifest!,
        if (artifactTiming != null) 'artifactTiming': artifactTiming!,
        if (buildStepImages != null) 'buildStepImages': buildStepImages!,
        if (buildStepOutputs != null) 'buildStepOutputs': buildStepOutputs!,
        if (images != null) 'images': images!,
        if (numArtifacts != null) 'numArtifacts': numArtifacts!,
      };
}

/// Specifies a build to retry.
class RetryBuildRequest {
  /// Build ID of the original build.
  ///
  /// Required.
  core.String? id;

  /// The name of the `Build` to retry.
  ///
  /// Format: `projects/{project}/locations/{location}/builds/{build}`
  core.String? name;

  /// ID of the project.
  ///
  /// Required.
  core.String? projectId;

  RetryBuildRequest({
    this.id,
    this.name,
    this.projectId,
  });

  RetryBuildRequest.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Specifies a build trigger to run and the source to use.
class RunBuildTriggerRequest {
  /// ID of the project.
  ///
  /// Required.
  core.String? projectId;

  /// Source to build against this trigger.
  RepoSource? source;

  /// ID of the trigger.
  ///
  /// Required.
  core.String? triggerId;

  RunBuildTriggerRequest({
    this.projectId,
    this.source,
    this.triggerId,
  });

  RunBuildTriggerRequest.fromJson(core.Map _json)
      : this(
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          source: _json.containsKey('source')
              ? RepoSource.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
          triggerId: _json.containsKey('triggerId')
              ? _json['triggerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
        if (source != null) 'source': source!,
        if (triggerId != null) 'triggerId': triggerId!,
      };
}

/// SMTPDelivery is the delivery configuration for an SMTP (email) notification.
class SMTPDelivery {
  /// This is the SMTP account/email that appears in the `From:` of the email.
  ///
  /// If empty, it is assumed to be sender.
  core.String? fromAddress;

  /// The SMTP sender's password.
  NotifierSecretRef? password;

  /// The SMTP port of the server.
  core.String? port;

  /// This is the list of addresses to which we send the email (i.e. in the
  /// `To:` of the email).
  core.List<core.String>? recipientAddresses;

  /// This is the SMTP account/email that is used to send the message.
  core.String? senderAddress;

  /// The address of the SMTP server.
  core.String? server;

  SMTPDelivery({
    this.fromAddress,
    this.password,
    this.port,
    this.recipientAddresses,
    this.senderAddress,
    this.server,
  });

  SMTPDelivery.fromJson(core.Map _json)
      : this(
          fromAddress: _json.containsKey('fromAddress')
              ? _json['fromAddress'] as core.String
              : null,
          password: _json.containsKey('password')
              ? NotifierSecretRef.fromJson(
                  _json['password'] as core.Map<core.String, core.dynamic>)
              : null,
          port: _json.containsKey('port') ? _json['port'] as core.String : null,
          recipientAddresses: _json.containsKey('recipientAddresses')
              ? (_json['recipientAddresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          senderAddress: _json.containsKey('senderAddress')
              ? _json['senderAddress'] as core.String
              : null,
          server: _json.containsKey('server')
              ? _json['server'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fromAddress != null) 'fromAddress': fromAddress!,
        if (password != null) 'password': password!,
        if (port != null) 'port': port!,
        if (recipientAddresses != null)
          'recipientAddresses': recipientAddresses!,
        if (senderAddress != null) 'senderAddress': senderAddress!,
        if (server != null) 'server': server!,
      };
}

/// Pairs a set of secret environment variables containing encrypted values with
/// the Cloud KMS key to use to decrypt the value.
///
/// Note: Use `kmsKeyName` with `available_secrets` instead of using
/// `kmsKeyName` with `secret`. For instructions see:
/// https://cloud.google.com/cloud-build/docs/securing-builds/use-encrypted-credentials.
class Secret {
  /// Cloud KMS key name to use to decrypt these envs.
  core.String? kmsKeyName;

  /// Map of environment variable name to its encrypted value.
  ///
  /// Secret environment variables must be unique across all of a build's
  /// secrets, and must be used by at least one build step. Values can be at
  /// most 64 KB in size. There can be at most 100 secret values across all of a
  /// build's secrets.
  core.Map<core.String, core.String>? secretEnv;

  Secret({
    this.kmsKeyName,
    this.secretEnv,
  });

  Secret.fromJson(core.Map _json)
      : this(
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
              : null,
          secretEnv: _json.containsKey('secretEnv')
              ? (_json['secretEnv'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (secretEnv != null) 'secretEnv': secretEnv!,
      };
}

/// Pairs a secret environment variable with a SecretVersion in Secret Manager.
class SecretManagerSecret {
  /// Environment variable name to associate with the secret.
  ///
  /// Secret environment variables must be unique across all of a build's
  /// secrets, and must be used by at least one build step.
  core.String? env;

  /// Resource name of the SecretVersion.
  ///
  /// In format: projects / * /secrets / * /versions / *
  core.String? versionName;

  SecretManagerSecret({
    this.env,
    this.versionName,
  });

  SecretManagerSecret.fromJson(core.Map _json)
      : this(
          env: _json.containsKey('env') ? _json['env'] as core.String : null,
          versionName: _json.containsKey('versionName')
              ? _json['versionName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (env != null) 'env': env!,
        if (versionName != null) 'versionName': versionName!,
      };
}

/// Secrets and secret environment variables.
class Secrets {
  /// Secrets encrypted with KMS key and the associated secret environment
  /// variable.
  core.List<InlineSecret>? inline;

  /// Secrets in Secret Manager and associated secret environment variable.
  core.List<SecretManagerSecret>? secretManager;

  Secrets({
    this.inline,
    this.secretManager,
  });

  Secrets.fromJson(core.Map _json)
      : this(
          inline: _json.containsKey('inline')
              ? (_json['inline'] as core.List)
                  .map((value) => InlineSecret.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          secretManager: _json.containsKey('secretManager')
              ? (_json['secretManager'] as core.List)
                  .map((value) => SecretManagerSecret.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inline != null) 'inline': inline!,
        if (secretManager != null) 'secretManager': secretManager!,
      };
}

/// SlackDelivery is the delivery configuration for delivering Slack messages
/// via webhooks.
///
/// See Slack webhook documentation at:
/// https://api.slack.com/messaging/webhooks.
class SlackDelivery {
  /// The secret reference for the Slack webhook URI for sending messages to a
  /// channel.
  NotifierSecretRef? webhookUri;

  SlackDelivery({
    this.webhookUri,
  });

  SlackDelivery.fromJson(core.Map _json)
      : this(
          webhookUri: _json.containsKey('webhookUri')
              ? NotifierSecretRef.fromJson(
                  _json['webhookUri'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (webhookUri != null) 'webhookUri': webhookUri!,
      };
}

/// Location of the source in a supported storage service.
class Source {
  /// If provided, get the source from this location in a Cloud Source
  /// Repository.
  RepoSource? repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  StorageSource? storageSource;

  /// If provided, get the source from this manifest in Google Cloud Storage.
  ///
  /// This feature is in Preview; see description
  /// [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
  StorageSourceManifest? storageSourceManifest;

  Source({
    this.repoSource,
    this.storageSource,
    this.storageSourceManifest,
  });

  Source.fromJson(core.Map _json)
      : this(
          repoSource: _json.containsKey('repoSource')
              ? RepoSource.fromJson(
                  _json['repoSource'] as core.Map<core.String, core.dynamic>)
              : null,
          storageSource: _json.containsKey('storageSource')
              ? StorageSource.fromJson(
                  _json['storageSource'] as core.Map<core.String, core.dynamic>)
              : null,
          storageSourceManifest: _json.containsKey('storageSourceManifest')
              ? StorageSourceManifest.fromJson(_json['storageSourceManifest']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (repoSource != null) 'repoSource': repoSource!,
        if (storageSource != null) 'storageSource': storageSource!,
        if (storageSourceManifest != null)
          'storageSourceManifest': storageSourceManifest!,
      };
}

/// Provenance of the source.
///
/// Ways to find the original source, or verify that some source was used for
/// this build.
class SourceProvenance {
  /// Hash(es) of the build source, which can be used to verify that the
  /// original source integrity was maintained in the build.
  ///
  /// Note that `FileHashes` will only be populated if `BuildOptions` has
  /// requested a `SourceProvenanceHash`. The keys to this map are file paths
  /// used as build source and the values contain the hash values for those
  /// files. If the build source came in a single package such as a gzipped
  /// tarfile (`.tar.gz`), the `FileHash` will be for the single path to that
  /// file.
  ///
  /// Output only.
  core.Map<core.String, FileHashes>? fileHashes;

  /// A copy of the build's `source.repo_source`, if exists, with any revisions
  /// resolved.
  RepoSource? resolvedRepoSource;

  /// A copy of the build's `source.storage_source`, if exists, with any
  /// generations resolved.
  StorageSource? resolvedStorageSource;

  /// A copy of the build's `source.storage_source_manifest`, if exists, with
  /// any revisions resolved.
  ///
  /// This feature is in Preview.
  StorageSourceManifest? resolvedStorageSourceManifest;

  SourceProvenance({
    this.fileHashes,
    this.resolvedRepoSource,
    this.resolvedStorageSource,
    this.resolvedStorageSourceManifest,
  });

  SourceProvenance.fromJson(core.Map _json)
      : this(
          fileHashes: _json.containsKey('fileHashes')
              ? (_json['fileHashes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    FileHashes.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          resolvedRepoSource: _json.containsKey('resolvedRepoSource')
              ? RepoSource.fromJson(_json['resolvedRepoSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resolvedStorageSource: _json.containsKey('resolvedStorageSource')
              ? StorageSource.fromJson(_json['resolvedStorageSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resolvedStorageSourceManifest:
              _json.containsKey('resolvedStorageSourceManifest')
                  ? StorageSourceManifest.fromJson(
                      _json['resolvedStorageSourceManifest']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileHashes != null) 'fileHashes': fileHashes!,
        if (resolvedRepoSource != null)
          'resolvedRepoSource': resolvedRepoSource!,
        if (resolvedStorageSource != null)
          'resolvedStorageSource': resolvedStorageSource!,
        if (resolvedStorageSourceManifest != null)
          'resolvedStorageSourceManifest': resolvedStorageSourceManifest!,
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

/// Location of the source in an archive file in Google Cloud Storage.
class StorageSource {
  /// Google Cloud Storage bucket containing the source (see
  /// [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  core.String? bucket;

  /// Google Cloud Storage generation for the object.
  ///
  /// If the generation is omitted, the latest generation will be used.
  core.String? generation;

  /// Google Cloud Storage object containing the source.
  ///
  /// This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`)
  /// containing source to build.
  core.String? object;

  StorageSource({
    this.bucket,
    this.generation,
    this.object,
  });

  StorageSource.fromJson(core.Map _json)
      : this(
          bucket: _json.containsKey('bucket')
              ? _json['bucket'] as core.String
              : null,
          generation: _json.containsKey('generation')
              ? _json['generation'] as core.String
              : null,
          object: _json.containsKey('object')
              ? _json['object'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (generation != null) 'generation': generation!,
        if (object != null) 'object': object!,
      };
}

/// Location of the source manifest in Google Cloud Storage.
///
/// This feature is in Preview; see description
/// [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
class StorageSourceManifest {
  /// Google Cloud Storage bucket containing the source manifest (see
  /// [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  core.String? bucket;

  /// Google Cloud Storage generation for the object.
  ///
  /// If the generation is omitted, the latest generation will be used.
  core.String? generation;

  /// Google Cloud Storage object containing the source manifest.
  ///
  /// This object must be a JSON file.
  core.String? object;

  StorageSourceManifest({
    this.bucket,
    this.generation,
    this.object,
  });

  StorageSourceManifest.fromJson(core.Map _json)
      : this(
          bucket: _json.containsKey('bucket')
              ? _json['bucket'] as core.String
              : null,
          generation: _json.containsKey('generation')
              ? _json['generation'] as core.String
              : null,
          object: _json.containsKey('object')
              ? _json['object'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (generation != null) 'generation': generation!,
        if (object != null) 'object': object!,
      };
}

/// Start and end times for a build execution phase.
class TimeSpan {
  /// End of time span.
  core.String? endTime;

  /// Start of time span.
  core.String? startTime;

  TimeSpan({
    this.endTime,
    this.startTime,
  });

  TimeSpan.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Metadata for `UpdateGitHubEnterpriseConfig` operation.
class UpdateGitHubEnterpriseConfigOperationMetadata {
  /// Time the operation was completed.
  core.String? completeTime;

  /// Time the operation was created.
  core.String? createTime;

  /// The resource name of the GitHubEnterprise to be updated.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`.
  core.String? githubEnterpriseConfig;

  UpdateGitHubEnterpriseConfigOperationMetadata({
    this.completeTime,
    this.createTime,
    this.githubEnterpriseConfig,
  });

  UpdateGitHubEnterpriseConfigOperationMetadata.fromJson(core.Map _json)
      : this(
          completeTime: _json.containsKey('completeTime')
              ? _json['completeTime'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          githubEnterpriseConfig: _json.containsKey('githubEnterpriseConfig')
              ? _json['githubEnterpriseConfig'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completeTime != null) 'completeTime': completeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (githubEnterpriseConfig != null)
          'githubEnterpriseConfig': githubEnterpriseConfig!,
      };
}

/// Metadata for the `UpdateWorkerPool` operation.
class UpdateWorkerPoolOperationMetadata {
  /// Time the operation was completed.
  core.String? completeTime;

  /// Time the operation was created.
  core.String? createTime;

  /// The resource name of the `WorkerPool` being updated.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/workerPools/{worker_pool}`.
  core.String? workerPool;

  UpdateWorkerPoolOperationMetadata({
    this.completeTime,
    this.createTime,
    this.workerPool,
  });

  UpdateWorkerPoolOperationMetadata.fromJson(core.Map _json)
      : this(
          completeTime: _json.containsKey('completeTime')
              ? _json['completeTime'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          workerPool: _json.containsKey('workerPool')
              ? _json['workerPool'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completeTime != null) 'completeTime': completeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (workerPool != null) 'workerPool': workerPool!,
      };
}

/// Volume describes a Docker container volume which is mounted into build steps
/// in order to persist files across build step execution.
class Volume {
  /// Name of the volume to mount.
  ///
  /// Volume names must be unique per build step and must be valid names for
  /// Docker volumes. Each named volume must be used by at least two build
  /// steps.
  core.String? name;

  /// Path at which to mount the volume.
  ///
  /// Paths must be absolute and cannot conflict with other volume paths on the
  /// same build step or with certain reserved volume paths.
  core.String? path;

  Volume({
    this.name,
    this.path,
  });

  Volume.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (path != null) 'path': path!,
      };
}

/// A non-fatal problem encountered during the execution of the build.
class Warning {
  /// The priority for this warning.
  /// Possible string values are:
  /// - "PRIORITY_UNSPECIFIED" : Should not be used.
  /// - "INFO" : e.g. deprecation warnings and alternative feature highlights.
  /// - "WARNING" : e.g. automated detection of possible issues with the build.
  /// - "ALERT" : e.g. alerts that a feature used in the build is pending
  /// removal
  core.String? priority;

  /// Explanation of the warning generated.
  core.String? text;

  Warning({
    this.priority,
    this.text,
  });

  Warning.fromJson(core.Map _json)
      : this(
          priority: _json.containsKey('priority')
              ? _json['priority'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priority != null) 'priority': priority!,
        if (text != null) 'text': text!,
      };
}

/// WebhookConfig describes the configuration of a trigger that creates a build
/// whenever a webhook is sent to a trigger's webhook URL.
class WebhookConfig {
  /// Resource name for the secret required as a URL parameter.
  ///
  /// Required.
  core.String? secret;

  /// Potential issues with the underlying Pub/Sub subscription configuration.
  ///
  /// Only populated on get requests.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The webhook auth configuration not been checked.
  /// - "OK" : The auth configuration is properly setup.
  /// - "SECRET_DELETED" : The secret provided in auth_method has been deleted.
  core.String? state;

  WebhookConfig({
    this.secret,
    this.state,
  });

  WebhookConfig.fromJson(core.Map _json)
      : this(
          secret: _json.containsKey('secret')
              ? _json['secret'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secret != null) 'secret': secret!,
        if (state != null) 'state': state!,
      };
}

/// Defines the configuration to be used for creating workers in the pool.
class WorkerConfig {
  /// Size of the disk attached to the worker, in GB.
  ///
  /// See
  /// [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema).
  /// Specify a value of up to 1000. If `0` is specified, Cloud Build will use a
  /// standard disk size.
  core.String? diskSizeGb;

  /// Machine type of a worker, such as `e2-medium`.
  ///
  /// See
  /// [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema).
  /// If left blank, Cloud Build will use a sensible default.
  core.String? machineType;

  WorkerConfig({
    this.diskSizeGb,
    this.machineType,
  });

  WorkerConfig.fromJson(core.Map _json)
      : this(
          diskSizeGb: _json.containsKey('diskSizeGb')
              ? _json['diskSizeGb'] as core.String
              : null,
          machineType: _json.containsKey('machineType')
              ? _json['machineType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (machineType != null) 'machineType': machineType!,
      };
}

/// Configuration for a `WorkerPool`.
///
/// Cloud Build owns and maintains a pool of workers for general use and have no
/// access to a project's private network. By default, builds submitted to Cloud
/// Build will use a worker from this pool. If your build needs access to
/// resources on a private network, create and use a `WorkerPool` to run your
/// builds. Private `WorkerPool`s give your builds access to any single VPC
/// network that you administer, including any on-prem resources connected to
/// that VPC network. For an overview of private pools, see
/// [Private pools overview](https://cloud.google.com/build/docs/private-pools/private-pools-overview).
class WorkerPool {
  /// User specified annotations.
  ///
  /// See https://google.aip.dev/128#annotations for more details such as format
  /// and size limitations.
  core.Map<core.String, core.String>? annotations;

  /// Time at which the request to create the `WorkerPool` was received.
  ///
  /// Output only.
  core.String? createTime;

  /// Time at which the request to delete the `WorkerPool` was received.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A user-specified, human-readable name for the `WorkerPool`.
  ///
  /// If provided, this value must be 1-63 characters.
  core.String? displayName;

  /// Checksum computed by the server.
  ///
  /// May be sent on update and delete requests to ensure that the client has an
  /// up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// The resource name of the `WorkerPool`, with format
  /// `projects/{project}/locations/{location}/workerPools/{worker_pool}`.
  ///
  /// The value of `{worker_pool}` is provided by `worker_pool_id` in
  /// `CreateWorkerPool` request and the value of `{location}` is determined by
  /// the endpoint accessed.
  ///
  /// Output only.
  core.String? name;

  /// Private Pool using a v1 configuration.
  PrivatePoolV1Config? privatePoolV1Config;

  /// `WorkerPool` state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State of the `WorkerPool` is unknown.
  /// - "CREATING" : `WorkerPool` is being created.
  /// - "RUNNING" : `WorkerPool` is running.
  /// - "DELETING" : `WorkerPool` is being deleted: cancelling builds and
  /// draining workers.
  /// - "DELETED" : `WorkerPool` is deleted.
  core.String? state;

  /// A unique identifier for the `WorkerPool`.
  ///
  /// Output only.
  core.String? uid;

  /// Time at which the request to update the `WorkerPool` was received.
  ///
  /// Output only.
  core.String? updateTime;

  WorkerPool({
    this.annotations,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.name,
    this.privatePoolV1Config,
    this.state,
    this.uid,
    this.updateTime,
  });

  WorkerPool.fromJson(core.Map _json)
      : this(
          annotations: _json.containsKey('annotations')
              ? (_json['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          privatePoolV1Config: _json.containsKey('privatePoolV1Config')
              ? PrivatePoolV1Config.fromJson(_json['privatePoolV1Config']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (privatePoolV1Config != null)
          'privatePoolV1Config': privatePoolV1Config!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
