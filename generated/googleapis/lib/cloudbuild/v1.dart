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
/// - [GithubDotComWebhookResource]
/// - [LocationsResource]
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsBuildsResource]
///   - [ProjectsGithubEnterpriseConfigsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBitbucketServerConfigsResource]
/// - [ProjectsLocationsBitbucketServerConfigsConnectedRepositoriesResource]
///       - [ProjectsLocationsBitbucketServerConfigsReposResource]
///     - [ProjectsLocationsBuildsResource]
///     - [ProjectsLocationsGitLabConfigsResource]
///       - [ProjectsLocationsGitLabConfigsConnectedRepositoriesResource]
///       - [ProjectsLocationsGitLabConfigsReposResource]
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

// ignore: deprecated_member_use_from_same_package
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

  GithubDotComWebhookResource get githubDotComWebhook =>
      GithubDotComWebhookResource(_requester);
  LocationsResource get locations => LocationsResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  CloudBuildApi(http.Client client,
      {core.String rootUrl = 'https://cloudbuild.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class GithubDotComWebhookResource {
  final commons.ApiRequester _requester;

  GithubDotComWebhookResource(commons.ApiRequester client)
      : _requester = client;

  /// ReceiveGitHubDotComWebhook is called when the API receives a github.com
  /// webhook.
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
  async.Future<Empty> receive(
    HttpBody request, {
    core.String? webhookKey,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (webhookKey != null) 'webhookKey': [webhookKey],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/githubDotComWebhook:receive';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsResource(commons.ApiRequester client) : _requester = client;

  /// ReceiveRegionalWebhook is called when the API receives a regional GitHub
  /// webhook.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location where the webhook should be sent.
  /// Value must have pattern `^locations/\[^/\]+$`.
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
  async.Future<Empty> regionalWebhook(
    HttpBody request,
    core.String location, {
    core.String? webhookKey,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (webhookKey != null) 'webhookKey': [webhookKey],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + '/regionalWebhook';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/builds/' +
        commons.escapeVariable('$id') +
        ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Build.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/builds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/builds/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Build.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `projects/{project}/locations/{location}`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/builds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBuildsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/builds/' +
        commons.escapeVariable('$id') +
        ':retry';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// which will become the final component of the GithubEnterpriseConfig's
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (gheConfigId != null) 'gheConfigId': [gheConfigId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/githubEnterpriseConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (configId != null) 'configId': [configId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (configId != null) 'configId': [configId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GitHubEnterpriseConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/githubEnterpriseConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGithubEnterpriseConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBitbucketServerConfigsResource get bitbucketServerConfigs =>
      ProjectsLocationsBitbucketServerConfigsResource(_requester);
  ProjectsLocationsBuildsResource get builds =>
      ProjectsLocationsBuildsResource(_requester);
  ProjectsLocationsGitLabConfigsResource get gitLabConfigs =>
      ProjectsLocationsGitLabConfigsResource(_requester);
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

class ProjectsLocationsBitbucketServerConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBitbucketServerConfigsConnectedRepositoriesResource
      get connectedRepositories =>
          ProjectsLocationsBitbucketServerConfigsConnectedRepositoriesResource(
              _requester);
  ProjectsLocationsBitbucketServerConfigsReposResource get repos =>
      ProjectsLocationsBitbucketServerConfigsReposResource(_requester);

  ProjectsLocationsBitbucketServerConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new `BitbucketServerConfig`.
  ///
  /// This API is experimental.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [bitbucketServerConfigId] - Optional. The ID to use for the
  /// BitbucketServerConfig, which will become the final component of the
  /// BitbucketServerConfig's resource name. bitbucket_server_config_id must
  /// meet the following requirements: + They must contain only alphanumeric
  /// characters and dashes. + They can be 1-64 characters long. + They must
  /// begin and end with an alphanumeric character.
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
    BitbucketServerConfig request,
    core.String parent, {
    core.String? bitbucketServerConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (bitbucketServerConfigId != null)
        'bitbucketServerConfigId': [bitbucketServerConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/bitbucketServerConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a `BitbucketServerConfig`.
  ///
  /// This API is experimental.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The config resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bitbucketServerConfigs/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a `BitbucketServerConfig`.
  ///
  /// This API is experimental.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The config resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bitbucketServerConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BitbucketServerConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BitbucketServerConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BitbucketServerConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all `BitbucketServerConfigs` for a given project.
  ///
  /// This API is experimental.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of configs to return. The service may
  /// return fewer than this value. If unspecified, at most 50 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListBitbucketServerConfigsRequest` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListBitbucketServerConfigsRequest` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBitbucketServerConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBitbucketServerConfigsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/bitbucketServerConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBitbucketServerConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing `BitbucketServerConfig`.
  ///
  /// This API is experimental.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name for the config.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bitbucketServerConfigs/\[^/\]+$`.
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
    BitbucketServerConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Remove a Bitbucket Server repository from a given BitbucketServerConfig's
  /// connected repositories.
  ///
  /// This API is experimental.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [config] - Required. The name of the `BitbucketServerConfig` to remove a
  /// connected repository. Format:
  /// `projects/{project}/locations/{location}/bitbucketServerConfigs/{config}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bitbucketServerConfigs/\[^/\]+$`.
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
  async.Future<Empty> removeBitbucketServerConnectedRepository(
    RemoveBitbucketServerConnectedRepositoryRequest request,
    core.String config, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$config') +
        ':removeBitbucketServerConnectedRepository';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBitbucketServerConfigsConnectedRepositoriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBitbucketServerConfigsConnectedRepositoriesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Batch connecting Bitbucket Server repositories to Cloud Build.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the `BitbucketServerConfig` that added connected
  /// repository. Format:
  /// `projects/{project}/locations/{location}/bitbucketServerConfigs/{config}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bitbucketServerConfigs/\[^/\]+$`.
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
  async.Future<Operation> batchCreate(
    BatchCreateBitbucketServerConnectedRepositoriesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/connectedRepositories:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBitbucketServerConfigsReposResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBitbucketServerConfigsReposResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List all repositories for a given `BitbucketServerConfig`.
  ///
  /// This API is experimental.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bitbucketServerConfigs/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of configs to return. The service may
  /// return fewer than this value. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListBitbucketServerRepositoriesRequest` call. Provide this to retrieve
  /// the subsequent page. When paginating, all other parameters provided to
  /// `ListBitbucketServerConfigsRequest` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBitbucketServerRepositoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBitbucketServerRepositoriesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/repos';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBitbucketServerRepositoriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Build.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/builds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (id != null) 'id': [id],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Build.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists previously requested builds.
  ///
  /// Previously requested builds may still be in-progress, or may have finished
  /// successfully or unsuccessfully.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent of the collection of `Builds`. Format:
  /// `projects/{project}/locations/{location}`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/builds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBuildsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':retry';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGitLabConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGitLabConfigsConnectedRepositoriesResource
      get connectedRepositories =>
          ProjectsLocationsGitLabConfigsConnectedRepositoriesResource(
              _requester);
  ProjectsLocationsGitLabConfigsReposResource get repos =>
      ProjectsLocationsGitLabConfigsReposResource(_requester);

  ProjectsLocationsGitLabConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new `GitLabConfig`.
  ///
  /// This API is experimental
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [gitlabConfigId] - Optional. The ID to use for the GitLabConfig, which
  /// will become the final component of the GitLabConfig’s resource name.
  /// gitlab_config_id must meet the following requirements: + They must contain
  /// only alphanumeric characters and dashes. + They can be 1-64 characters
  /// long. + They must begin and end with an alphanumeric character
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
    GitLabConfig request,
    core.String parent, {
    core.String? gitlabConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (gitlabConfigId != null) 'gitlabConfigId': [gitlabConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/gitLabConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a `GitLabConfig`.
  ///
  /// This API is experimental
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The config resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gitLabConfigs/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a `GitLabConfig`.
  ///
  /// This API is experimental
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The config resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gitLabConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GitLabConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GitLabConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GitLabConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all `GitLabConfigs` for a given project.
  ///
  /// This API is experimental
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent resource
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of configs to return. The service may
  /// return fewer than this value. If unspecified, at most 50 configs will be
  /// returned. The maximum value is 1000;, values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// ‘ListGitlabConfigsRequest’ call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// ‘ListGitlabConfigsRequest’ must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGitLabConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGitLabConfigsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/gitLabConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGitLabConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing `GitLabConfig`.
  ///
  /// This API is experimental
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name for the config.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gitLabConfigs/\[^/\]+$`.
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
    GitLabConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Remove a GitLab repository from a given GitLabConfig's connected
  /// repositories.
  ///
  /// This API is experimental.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [config] - Required. The name of the `GitLabConfig` to remove a connected
  /// repository. Format:
  /// `projects/{project}/locations/{location}/gitLabConfigs/{config}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gitLabConfigs/\[^/\]+$`.
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
  async.Future<Empty> removeGitLabConnectedRepository(
    RemoveGitLabConnectedRepositoryRequest request,
    core.String config, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$config') +
        ':removeGitLabConnectedRepository';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGitLabConfigsConnectedRepositoriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGitLabConfigsConnectedRepositoriesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Batch connecting GitLab repositories to Cloud Build.
  ///
  /// This API is experimental.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the `GitLabConfig` that adds connected
  /// repositories. Format:
  /// `projects/{project}/locations/{location}/gitLabConfigs/{config}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gitLabConfigs/\[^/\]+$`.
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
  async.Future<Operation> batchCreate(
    BatchCreateGitLabConnectedRepositoriesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/connectedRepositories:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGitLabConfigsReposResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGitLabConfigsReposResource(commons.ApiRequester client)
      : _requester = client;

  /// List all repositories for a given `GitLabConfig`.
  ///
  /// This API is experimental
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gitLabConfigs/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of repositories to return. The service may
  /// return fewer than this value.
  ///
  /// [pageToken] - A page token, received from a previous
  /// ListGitLabRepositoriesRequest\` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// \`ListGitLabRepositoriesRequest\` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGitLabRepositoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGitLabRepositoriesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/repos';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGitLabRepositoriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// which will become the final component of the GithubEnterpriseConfig's
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (gheConfigId != null) 'gheConfigId': [gheConfigId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/githubEnterpriseConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (configId != null) 'configId': [configId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (configId != null) 'configId': [configId],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GitHubEnterpriseConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/githubEnterpriseConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGithubEnterpriseConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/triggers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BuildTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (triggerId != null) 'triggerId': [triggerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (triggerId != null) 'triggerId': [triggerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BuildTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/triggers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBuildTriggersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (triggerId != null) 'triggerId': [triggerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resourceName');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return BuildTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Runs a `BuildTrigger` at a particular source revision.
  ///
  /// To run a regional or global trigger, use the POST request that includes
  /// the location endpoint in the path. The POST request that does not include
  /// the location endpoint in the path can only be used when running global
  /// triggers.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (secret != null) 'secret': [secret],
      if (trigger != null) 'trigger': [trigger],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':webhook';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReceiveTriggerWebhookResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if (workerPoolId != null) 'workerPoolId': [workerPoolId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workerPools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `WorkerPool`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `WorkerPool` to delete. Format:
  /// `projects/{project}/locations/{location}/workerPools/{workerPool}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the `WorkerPool` is not found, the
  /// request will succeed but no action will be taken on the server.
  ///
  /// [etag] - Optional. If provided, it must match the server's etag on the
  /// workerpool for the request to be processed.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkerPool.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workerPools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkerPoolsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/triggers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BuildTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BuildTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/triggers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBuildTriggersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return BuildTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Runs a `BuildTrigger` at a particular source revision.
  ///
  /// To run a regional or global trigger, use the POST request that includes
  /// the location endpoint in the path. The POST request that does not include
  /// the location endpoint in the path can only be used when running global
  /// triggers.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId') +
        ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if (secret != null) 'secret': [secret],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/triggers/' +
        commons.escapeVariable('$trigger') +
        ':webhook';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReceiveTriggerWebhookResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (webhookKey != null) 'webhookKey': [webhookKey],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/webhook';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

  ApprovalConfig.fromJson(core.Map json_)
      : this(
          approvalRequired: json_.containsKey('approvalRequired')
              ? json_['approvalRequired'] as core.bool
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

  ApprovalResult.fromJson(core.Map json_)
      : this(
          approvalTime: json_.containsKey('approvalTime')
              ? json_['approvalTime'] as core.String
              : null,
          approverAccount: json_.containsKey('approverAccount')
              ? json_['approverAccount'] as core.String
              : null,
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          decision: json_.containsKey('decision')
              ? json_['decision'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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

  ApproveBuildRequest.fromJson(core.Map json_)
      : this(
          approvalResult: json_.containsKey('approvalResult')
              ? ApprovalResult.fromJson(json_['approvalResult']
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

  ArtifactObjects.fromJson(core.Map json_)
      : this(
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          paths: json_.containsKey('paths')
              ? (json_['paths'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timing: json_.containsKey('timing')
              ? TimeSpan.fromJson(
                  json_['timing'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (paths != null) 'paths': paths!,
        if (timing != null) 'timing': timing!,
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

  /// A list of Maven artifacts to be uploaded to Artifact Registry upon
  /// successful completion of all build steps.
  ///
  /// Artifacts in the workspace matching specified paths globs will be uploaded
  /// to the specified Artifact Registry repository using the builder service
  /// account's credentials. If any artifacts fail to be pushed, the build is
  /// marked FAILURE.
  core.List<MavenArtifact>? mavenArtifacts;

  /// A list of objects to be uploaded to Cloud Storage upon successful
  /// completion of all build steps.
  ///
  /// Files in the workspace matching specified paths globs will be uploaded to
  /// the specified Cloud Storage location using the builder service account's
  /// credentials. The location and generation of the uploaded objects will be
  /// stored in the Build resource's results field. If any objects fail to be
  /// pushed, the build is marked FAILURE.
  ArtifactObjects? objects;

  /// A list of Python packages to be uploaded to Artifact Registry upon
  /// successful completion of all build steps.
  ///
  /// The build service account credentials will be used to perform the upload.
  /// If any objects fail to be pushed, the build is marked FAILURE.
  core.List<PythonPackage>? pythonPackages;

  Artifacts({
    this.images,
    this.mavenArtifacts,
    this.objects,
    this.pythonPackages,
  });

  Artifacts.fromJson(core.Map json_)
      : this(
          images: json_.containsKey('images')
              ? (json_['images'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mavenArtifacts: json_.containsKey('mavenArtifacts')
              ? (json_['mavenArtifacts'] as core.List)
                  .map((value) => MavenArtifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          objects: json_.containsKey('objects')
              ? ArtifactObjects.fromJson(
                  json_['objects'] as core.Map<core.String, core.dynamic>)
              : null,
          pythonPackages: json_.containsKey('pythonPackages')
              ? (json_['pythonPackages'] as core.List)
                  .map((value) => PythonPackage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (images != null) 'images': images!,
        if (mavenArtifacts != null) 'mavenArtifacts': mavenArtifacts!,
        if (objects != null) 'objects': objects!,
        if (pythonPackages != null) 'pythonPackages': pythonPackages!,
      };
}

/// RPC request object accepted by
/// BatchCreateBitbucketServerConnectedRepositories RPC method.
class BatchCreateBitbucketServerConnectedRepositoriesRequest {
  /// Requests to connect Bitbucket Server repositories.
  ///
  /// Required.
  core.List<CreateBitbucketServerConnectedRepositoryRequest>? requests;

  BatchCreateBitbucketServerConnectedRepositoriesRequest({
    this.requests,
  });

  BatchCreateBitbucketServerConnectedRepositoriesRequest.fromJson(
      core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) =>
                      CreateBitbucketServerConnectedRepositoryRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// RPC request object accepted by BatchCreateGitLabConnectedRepositories RPC
/// method.
class BatchCreateGitLabConnectedRepositoriesRequest {
  /// Requests to connect GitLab repositories.
  ///
  /// Required.
  core.List<CreateGitLabConnectedRepositoryRequest>? requests;

  BatchCreateGitLabConnectedRepositoriesRequest({
    this.requests,
  });

  BatchCreateGitLabConnectedRepositoriesRequest.fromJson(core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) =>
                      CreateGitLabConnectedRepositoryRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// BitbucketServerConfig represents the configuration for a Bitbucket Server.
class BitbucketServerConfig {
  /// API Key that will be attached to webhook.
  ///
  /// Once this field has been set, it cannot be changed. If you need to change
  /// it, please create another BitbucketServerConfig.
  ///
  /// Required. Immutable.
  core.String? apiKey;

  /// Connected Bitbucket Server repositories for this config.
  ///
  /// Output only.
  core.List<BitbucketServerRepositoryId>? connectedRepositories;

  /// Time when the config was created.
  core.String? createTime;

  /// The URI of the Bitbucket Server host.
  ///
  /// Once this field has been set, it cannot be changed. If you need to change
  /// it, please create another BitbucketServerConfig.
  ///
  /// Required. Immutable.
  core.String? hostUri;

  /// The resource name for the config.
  core.String? name;

  /// The network to be used when reaching out to the Bitbucket Server instance.
  ///
  /// The VPC network must be enabled for private service connection. This
  /// should be set if the Bitbucket Server instance is hosted on-premises and
  /// not reachable by public internet. If this field is left empty, no network
  /// peering will occur and calls to the Bitbucket Server instance will be made
  /// over the public internet. Must be in the format
  /// `projects/{project}/global/networks/{network}`, where {project} is a
  /// project number or id and {network} is the name of a VPC network in the
  /// project.
  ///
  /// Optional.
  core.String? peeredNetwork;

  /// Secret Manager secrets needed by the config.
  ///
  /// Required.
  BitbucketServerSecrets? secrets;

  /// SSL certificate to use for requests to Bitbucket Server.
  ///
  /// The format should be PEM format but the extension can be one of .pem,
  /// .cer, or .crt.
  ///
  /// Optional.
  core.String? sslCa;

  /// Username of the account Cloud Build will use on Bitbucket Server.
  core.String? username;

  /// UUID included in webhook requests.
  ///
  /// The UUID is used to look up the corresponding config.
  ///
  /// Output only.
  core.String? webhookKey;

  BitbucketServerConfig({
    this.apiKey,
    this.connectedRepositories,
    this.createTime,
    this.hostUri,
    this.name,
    this.peeredNetwork,
    this.secrets,
    this.sslCa,
    this.username,
    this.webhookKey,
  });

  BitbucketServerConfig.fromJson(core.Map json_)
      : this(
          apiKey: json_.containsKey('apiKey')
              ? json_['apiKey'] as core.String
              : null,
          connectedRepositories: json_.containsKey('connectedRepositories')
              ? (json_['connectedRepositories'] as core.List)
                  .map((value) => BitbucketServerRepositoryId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          hostUri: json_.containsKey('hostUri')
              ? json_['hostUri'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          peeredNetwork: json_.containsKey('peeredNetwork')
              ? json_['peeredNetwork'] as core.String
              : null,
          secrets: json_.containsKey('secrets')
              ? BitbucketServerSecrets.fromJson(
                  json_['secrets'] as core.Map<core.String, core.dynamic>)
              : null,
          sslCa:
              json_.containsKey('sslCa') ? json_['sslCa'] as core.String : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
          webhookKey: json_.containsKey('webhookKey')
              ? json_['webhookKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiKey != null) 'apiKey': apiKey!,
        if (connectedRepositories != null)
          'connectedRepositories': connectedRepositories!,
        if (createTime != null) 'createTime': createTime!,
        if (hostUri != null) 'hostUri': hostUri!,
        if (name != null) 'name': name!,
        if (peeredNetwork != null) 'peeredNetwork': peeredNetwork!,
        if (secrets != null) 'secrets': secrets!,
        if (sslCa != null) 'sslCa': sslCa!,
        if (username != null) 'username': username!,
        if (webhookKey != null) 'webhookKey': webhookKey!,
      };
}

/// / BitbucketServerConnectedRepository represents a connected Bitbucket Server
/// / repository.
class BitbucketServerConnectedRepository {
  /// The name of the `BitbucketServerConfig` that added connected repository.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/bitbucketServerConfigs/{config}`
  core.String? parent;

  /// The Bitbucket Server repositories to connect.
  BitbucketServerRepositoryId? repo;

  /// The status of the repo connection request.
  ///
  /// Output only.
  Status? status;

  BitbucketServerConnectedRepository({
    this.parent,
    this.repo,
    this.status,
  });

  BitbucketServerConnectedRepository.fromJson(core.Map json_)
      : this(
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          repo: json_.containsKey('repo')
              ? BitbucketServerRepositoryId.fromJson(
                  json_['repo'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? Status.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (repo != null) 'repo': repo!,
        if (status != null) 'status': status!,
      };
}

/// BitbucketServerRepository represents a repository hosted on a Bitbucket
/// Server.
class BitbucketServerRepository {
  /// Link to the browse repo page on the Bitbucket Server instance.
  core.String? browseUri;

  /// Description of the repository.
  core.String? description;

  /// Display name of the repository.
  core.String? displayName;

  /// The resource name of the repository.
  core.String? name;

  /// Identifier for a repository hosted on a Bitbucket Server.
  BitbucketServerRepositoryId? repoId;

  BitbucketServerRepository({
    this.browseUri,
    this.description,
    this.displayName,
    this.name,
    this.repoId,
  });

  BitbucketServerRepository.fromJson(core.Map json_)
      : this(
          browseUri: json_.containsKey('browseUri')
              ? json_['browseUri'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          repoId: json_.containsKey('repoId')
              ? BitbucketServerRepositoryId.fromJson(
                  json_['repoId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (browseUri != null) 'browseUri': browseUri!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (repoId != null) 'repoId': repoId!,
      };
}

/// BitbucketServerRepositoryId identifies a specific repository hosted on a
/// Bitbucket Server.
class BitbucketServerRepositoryId {
  /// Identifier for the project storing the repository.
  ///
  /// Required.
  core.String? projectKey;

  /// Identifier for the repository.
  ///
  /// Required.
  core.String? repoSlug;

  /// The ID of the webhook that was created for receiving events from this
  /// repo.
  ///
  /// We only create and manage a single webhook for each repo.
  ///
  /// Output only.
  core.int? webhookId;

  BitbucketServerRepositoryId({
    this.projectKey,
    this.repoSlug,
    this.webhookId,
  });

  BitbucketServerRepositoryId.fromJson(core.Map json_)
      : this(
          projectKey: json_.containsKey('projectKey')
              ? json_['projectKey'] as core.String
              : null,
          repoSlug: json_.containsKey('repoSlug')
              ? json_['repoSlug'] as core.String
              : null,
          webhookId: json_.containsKey('webhookId')
              ? json_['webhookId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectKey != null) 'projectKey': projectKey!,
        if (repoSlug != null) 'repoSlug': repoSlug!,
        if (webhookId != null) 'webhookId': webhookId!,
      };
}

/// BitbucketServerSecrets represents the secrets in Secret Manager for a
/// Bitbucket Server.
class BitbucketServerSecrets {
  /// The resource name for the admin access token's secret version.
  ///
  /// Required.
  core.String? adminAccessTokenVersionName;

  /// The resource name for the read access token's secret version.
  ///
  /// Required.
  core.String? readAccessTokenVersionName;

  /// The resource name for the webhook secret's secret version.
  ///
  /// Once this field has been set, it cannot be changed. If you need to change
  /// it, please create another BitbucketServerConfig.
  ///
  /// Required. Immutable.
  core.String? webhookSecretVersionName;

  BitbucketServerSecrets({
    this.adminAccessTokenVersionName,
    this.readAccessTokenVersionName,
    this.webhookSecretVersionName,
  });

  BitbucketServerSecrets.fromJson(core.Map json_)
      : this(
          adminAccessTokenVersionName:
              json_.containsKey('adminAccessTokenVersionName')
                  ? json_['adminAccessTokenVersionName'] as core.String
                  : null,
          readAccessTokenVersionName:
              json_.containsKey('readAccessTokenVersionName')
                  ? json_['readAccessTokenVersionName'] as core.String
                  : null,
          webhookSecretVersionName:
              json_.containsKey('webhookSecretVersionName')
                  ? json_['webhookSecretVersionName'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminAccessTokenVersionName != null)
          'adminAccessTokenVersionName': adminAccessTokenVersionName!,
        if (readAccessTokenVersionName != null)
          'readAccessTokenVersionName': readAccessTokenVersionName!,
        if (webhookSecretVersionName != null)
          'webhookSecretVersionName': webhookSecretVersionName!,
      };
}

/// BitbucketServerTriggerConfig describes the configuration of a trigger that
/// creates a build whenever a Bitbucket Server event is received.
class BitbucketServerTriggerConfig {
  /// The BitbucketServerConfig specified in the
  /// bitbucket_server_config_resource field.
  ///
  /// Output only.
  BitbucketServerConfig? bitbucketServerConfig;

  /// The Bitbucket server config resource that this trigger config maps to.
  ///
  /// Required.
  core.String? bitbucketServerConfigResource;

  /// Key of the project that the repo is in.
  ///
  /// For example: The key for
  /// https://mybitbucket.server/projects/TEST/repos/test-repo is "TEST".
  ///
  /// Required.
  core.String? projectKey;

  /// Filter to match changes in pull requests.
  PullRequestFilter? pullRequest;

  /// Filter to match changes in refs like branches, tags.
  PushFilter? push;

  /// Slug of the repository.
  ///
  /// A repository slug is a URL-friendly version of a repository name,
  /// automatically generated by Bitbucket for use in the URL. For example, if
  /// the repository name is 'test repo', in the URL it would become 'test-repo'
  /// as in https://mybitbucket.server/projects/TEST/repos/test-repo.
  ///
  /// Required.
  core.String? repoSlug;

  BitbucketServerTriggerConfig({
    this.bitbucketServerConfig,
    this.bitbucketServerConfigResource,
    this.projectKey,
    this.pullRequest,
    this.push,
    this.repoSlug,
  });

  BitbucketServerTriggerConfig.fromJson(core.Map json_)
      : this(
          bitbucketServerConfig: json_.containsKey('bitbucketServerConfig')
              ? BitbucketServerConfig.fromJson(json_['bitbucketServerConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bitbucketServerConfigResource:
              json_.containsKey('bitbucketServerConfigResource')
                  ? json_['bitbucketServerConfigResource'] as core.String
                  : null,
          projectKey: json_.containsKey('projectKey')
              ? json_['projectKey'] as core.String
              : null,
          pullRequest: json_.containsKey('pullRequest')
              ? PullRequestFilter.fromJson(
                  json_['pullRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          push: json_.containsKey('push')
              ? PushFilter.fromJson(
                  json_['push'] as core.Map<core.String, core.dynamic>)
              : null,
          repoSlug: json_.containsKey('repoSlug')
              ? json_['repoSlug'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitbucketServerConfig != null)
          'bitbucketServerConfig': bitbucketServerConfig!,
        if (bitbucketServerConfigResource != null)
          'bitbucketServerConfigResource': bitbucketServerConfigResource!,
        if (projectKey != null) 'projectKey': projectKey!,
        if (pullRequest != null) 'pullRequest': pullRequest!,
        if (push != null) 'push': push!,
        if (repoSlug != null) 'repoSlug': repoSlug!,
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
  /// push all artifacts including docker images and non docker artifacts. *
  /// FETCHSOURCE: time to fetch source. * SETUPBUILD: time to set up build. If
  /// the build does not specify source or images, these keys will not be
  /// included.
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

  Build.fromJson(core.Map json_)
      : this(
          approval: json_.containsKey('approval')
              ? BuildApproval.fromJson(
                  json_['approval'] as core.Map<core.String, core.dynamic>)
              : null,
          artifacts: json_.containsKey('artifacts')
              ? Artifacts.fromJson(
                  json_['artifacts'] as core.Map<core.String, core.dynamic>)
              : null,
          availableSecrets: json_.containsKey('availableSecrets')
              ? Secrets.fromJson(json_['availableSecrets']
                  as core.Map<core.String, core.dynamic>)
              : null,
          buildTriggerId: json_.containsKey('buildTriggerId')
              ? json_['buildTriggerId'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          failureInfo: json_.containsKey('failureInfo')
              ? FailureInfo.fromJson(
                  json_['failureInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          finishTime: json_.containsKey('finishTime')
              ? json_['finishTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          images: json_.containsKey('images')
              ? (json_['images'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logUrl: json_.containsKey('logUrl')
              ? json_['logUrl'] as core.String
              : null,
          logsBucket: json_.containsKey('logsBucket')
              ? json_['logsBucket'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          options: json_.containsKey('options')
              ? BuildOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          queueTtl: json_.containsKey('queueTtl')
              ? json_['queueTtl'] as core.String
              : null,
          results: json_.containsKey('results')
              ? Results.fromJson(
                  json_['results'] as core.Map<core.String, core.dynamic>)
              : null,
          secrets: json_.containsKey('secrets')
              ? (json_['secrets'] as core.List)
                  .map((value) => Secret.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          source: json_.containsKey('source')
              ? Source.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceProvenance: json_.containsKey('sourceProvenance')
              ? SourceProvenance.fromJson(json_['sourceProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          statusDetail: json_.containsKey('statusDetail')
              ? json_['statusDetail'] as core.String
              : null,
          steps: json_.containsKey('steps')
              ? (json_['steps'] as core.List)
                  .map((value) => BuildStep.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          substitutions: json_.containsKey('substitutions')
              ? (json_['substitutions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
          timing: json_.containsKey('timing')
              ? (json_['timing'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    TimeSpan.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
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

  BuildApproval.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? ApprovalConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          result: json_.containsKey('result')
              ? ApprovalResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (result != null) 'result': result!,
        if (state != null) 'state': state!,
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
  /// - "LEGACY" : Build logs are stored in Cloud Logging and Cloud Storage.
  /// - "GCS_ONLY" : Build logs are stored in Cloud Storage.
  /// - "STACKDRIVER_ONLY" : This option is the same as CLOUD_LOGGING_ONLY.
  /// - "CLOUD_LOGGING_ONLY" : Build logs are stored in Cloud Logging. Selecting
  /// this option will not allow
  /// [logs streaming](https://cloud.google.com/sdk/gcloud/reference/builds/log).
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
  /// - "NOT_VERIFIED" : Not a verifiable build (the default).
  /// - "VERIFIED" : Build must be verified.
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

  BuildOptions.fromJson(core.Map json_)
      : this(
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.String
              : null,
          dynamicSubstitutions: json_.containsKey('dynamicSubstitutions')
              ? json_['dynamicSubstitutions'] as core.bool
              : null,
          env: json_.containsKey('env')
              ? (json_['env'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logStreamingOption: json_.containsKey('logStreamingOption')
              ? json_['logStreamingOption'] as core.String
              : null,
          logging: json_.containsKey('logging')
              ? json_['logging'] as core.String
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          pool: json_.containsKey('pool')
              ? PoolOption.fromJson(
                  json_['pool'] as core.Map<core.String, core.dynamic>)
              : null,
          requestedVerifyOption: json_.containsKey('requestedVerifyOption')
              ? json_['requestedVerifyOption'] as core.String
              : null,
          secretEnv: json_.containsKey('secretEnv')
              ? (json_['secretEnv'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sourceProvenanceHash: json_.containsKey('sourceProvenanceHash')
              ? (json_['sourceProvenanceHash'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          substitutionOption: json_.containsKey('substitutionOption')
              ? json_['substitutionOption'] as core.String
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          workerPool: json_.containsKey('workerPool')
              ? json_['workerPool'] as core.String
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
  /// Allow this build step to fail without failing the entire build if and only
  /// if the exit code is one of the specified codes.
  ///
  /// If allow_failure is also specified, this field will take precedence.
  core.List<core.int>? allowExitCodes;

  /// Allow this build step to fail without failing the entire build.
  ///
  /// If false, the entire build will fail if this step fails. Otherwise, the
  /// build will succeed, but this step will still have a failure status. Error
  /// information will be reported in the failure_detail field.
  core.bool? allowFailure;

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

  /// Return code from running the step.
  ///
  /// Output only.
  core.int? exitCode;

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
    this.allowExitCodes,
    this.allowFailure,
    this.args,
    this.dir,
    this.entrypoint,
    this.env,
    this.exitCode,
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

  BuildStep.fromJson(core.Map json_)
      : this(
          allowExitCodes: json_.containsKey('allowExitCodes')
              ? (json_['allowExitCodes'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          allowFailure: json_.containsKey('allowFailure')
              ? json_['allowFailure'] as core.bool
              : null,
          args: json_.containsKey('args')
              ? (json_['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dir: json_.containsKey('dir') ? json_['dir'] as core.String : null,
          entrypoint: json_.containsKey('entrypoint')
              ? json_['entrypoint'] as core.String
              : null,
          env: json_.containsKey('env')
              ? (json_['env'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exitCode: json_.containsKey('exitCode')
              ? json_['exitCode'] as core.int
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pullTiming: json_.containsKey('pullTiming')
              ? TimeSpan.fromJson(
                  json_['pullTiming'] as core.Map<core.String, core.dynamic>)
              : null,
          script: json_.containsKey('script')
              ? json_['script'] as core.String
              : null,
          secretEnv: json_.containsKey('secretEnv')
              ? (json_['secretEnv'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
          timing: json_.containsKey('timing')
              ? TimeSpan.fromJson(
                  json_['timing'] as core.Map<core.String, core.dynamic>)
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          waitFor: json_.containsKey('waitFor')
              ? (json_['waitFor'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowExitCodes != null) 'allowExitCodes': allowExitCodes!,
        if (allowFailure != null) 'allowFailure': allowFailure!,
        if (args != null) 'args': args!,
        if (dir != null) 'dir': dir!,
        if (entrypoint != null) 'entrypoint': entrypoint!,
        if (env != null) 'env': env!,
        if (exitCode != null) 'exitCode': exitCode!,
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

  /// BitbucketServerTriggerConfig describes the configuration of a trigger that
  /// creates a build whenever a Bitbucket Server event is received.
  BitbucketServerTriggerConfig? bitbucketServerTriggerConfig;

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

  /// EventType allows the user to explicitly set the type of event to which
  /// this BuildTrigger should respond.
  ///
  /// This field will be validated against the rest of the configuration if it
  /// is set.
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED" : EVENT_TYPE_UNSPECIFIED event_types are
  /// ignored.
  /// - "REPO" : REPO corresponds to the supported VCS integrations.
  /// - "WEBHOOK" : WEBHOOK corresponds to webhook triggers.
  /// - "PUBSUB" : PUBSUB corresponds to pubsub triggers.
  /// - "MANUAL" : MANUAL corresponds to manual-only invoked triggers.
  core.String? eventType;

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

  /// GitLabEnterpriseEventsConfig describes the configuration of a trigger that
  /// creates a build whenever a GitLab Enterprise event is received.
  GitLabEventsConfig? gitlabEnterpriseEventsConfig;

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

  /// If set to INCLUDE_BUILD_LOGS_WITH_STATUS, log url will be shown on GitHub
  /// page when build status is final.
  ///
  /// Setting this field to INCLUDE_BUILD_LOGS_WITH_STATUS for non GitHub
  /// triggers results in INVALID_ARGUMENT error.
  /// Possible string values are:
  /// - "INCLUDE_BUILD_LOGS_UNSPECIFIED" : Build logs will not be shown on
  /// GitHub.
  /// - "INCLUDE_BUILD_LOGS_WITH_STATUS" : Build logs will be shown on GitHub.
  core.String? includeBuildLogs;

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

  /// The configuration of a trigger that creates a build whenever an event from
  /// Repo API is received.
  RepositoryEventConfig? repositoryEventConfig;

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
    this.bitbucketServerTriggerConfig,
    this.build,
    this.createTime,
    this.description,
    this.disabled,
    this.eventType,
    this.filename,
    this.filter,
    this.gitFileSource,
    this.github,
    this.gitlabEnterpriseEventsConfig,
    this.id,
    this.ignoredFiles,
    this.includeBuildLogs,
    this.includedFiles,
    this.name,
    this.pubsubConfig,
    this.repositoryEventConfig,
    this.resourceName,
    this.serviceAccount,
    this.sourceToBuild,
    this.substitutions,
    this.tags,
    this.triggerTemplate,
    this.webhookConfig,
  });

  BuildTrigger.fromJson(core.Map json_)
      : this(
          approvalConfig: json_.containsKey('approvalConfig')
              ? ApprovalConfig.fromJson(json_['approvalConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          autodetect: json_.containsKey('autodetect')
              ? json_['autodetect'] as core.bool
              : null,
          bitbucketServerTriggerConfig:
              json_.containsKey('bitbucketServerTriggerConfig')
                  ? BitbucketServerTriggerConfig.fromJson(
                      json_['bitbucketServerTriggerConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          build: json_.containsKey('build')
              ? Build.fromJson(
                  json_['build'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          eventType: json_.containsKey('eventType')
              ? json_['eventType'] as core.String
              : null,
          filename: json_.containsKey('filename')
              ? json_['filename'] as core.String
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          gitFileSource: json_.containsKey('gitFileSource')
              ? GitFileSource.fromJson(
                  json_['gitFileSource'] as core.Map<core.String, core.dynamic>)
              : null,
          github: json_.containsKey('github')
              ? GitHubEventsConfig.fromJson(
                  json_['github'] as core.Map<core.String, core.dynamic>)
              : null,
          gitlabEnterpriseEventsConfig:
              json_.containsKey('gitlabEnterpriseEventsConfig')
                  ? GitLabEventsConfig.fromJson(
                      json_['gitlabEnterpriseEventsConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          ignoredFiles: json_.containsKey('ignoredFiles')
              ? (json_['ignoredFiles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includeBuildLogs: json_.containsKey('includeBuildLogs')
              ? json_['includeBuildLogs'] as core.String
              : null,
          includedFiles: json_.containsKey('includedFiles')
              ? (json_['includedFiles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pubsubConfig: json_.containsKey('pubsubConfig')
              ? PubsubConfig.fromJson(
                  json_['pubsubConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          repositoryEventConfig: json_.containsKey('repositoryEventConfig')
              ? RepositoryEventConfig.fromJson(json_['repositoryEventConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          sourceToBuild: json_.containsKey('sourceToBuild')
              ? GitRepoSource.fromJson(
                  json_['sourceToBuild'] as core.Map<core.String, core.dynamic>)
              : null,
          substitutions: json_.containsKey('substitutions')
              ? (json_['substitutions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          triggerTemplate: json_.containsKey('triggerTemplate')
              ? RepoSource.fromJson(json_['triggerTemplate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          webhookConfig: json_.containsKey('webhookConfig')
              ? WebhookConfig.fromJson(
                  json_['webhookConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approvalConfig != null) 'approvalConfig': approvalConfig!,
        if (autodetect != null) 'autodetect': autodetect!,
        if (bitbucketServerTriggerConfig != null)
          'bitbucketServerTriggerConfig': bitbucketServerTriggerConfig!,
        if (build != null) 'build': build!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (disabled != null) 'disabled': disabled!,
        if (eventType != null) 'eventType': eventType!,
        if (filename != null) 'filename': filename!,
        if (filter != null) 'filter': filter!,
        if (gitFileSource != null) 'gitFileSource': gitFileSource!,
        if (github != null) 'github': github!,
        if (gitlabEnterpriseEventsConfig != null)
          'gitlabEnterpriseEventsConfig': gitlabEnterpriseEventsConfig!,
        if (id != null) 'id': id!,
        if (ignoredFiles != null) 'ignoredFiles': ignoredFiles!,
        if (includeBuildLogs != null) 'includeBuildLogs': includeBuildLogs!,
        if (includedFiles != null) 'includedFiles': includedFiles!,
        if (name != null) 'name': name!,
        if (pubsubConfig != null) 'pubsubConfig': pubsubConfig!,
        if (repositoryEventConfig != null)
          'repositoryEventConfig': repositoryEventConfig!,
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

  BuiltImage.fromJson(core.Map json_)
      : this(
          digest: json_.containsKey('digest')
              ? json_['digest'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pushTiming: json_.containsKey('pushTiming')
              ? TimeSpan.fromJson(
                  json_['pushTiming'] as core.Map<core.String, core.dynamic>)
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

  CancelBuildRequest.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
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

/// Request to connect a repository from a connected Bitbucket Server host.
class CreateBitbucketServerConnectedRepositoryRequest {
  /// The Bitbucket Server repository to connect.
  ///
  /// Required.
  BitbucketServerConnectedRepository? bitbucketServerConnectedRepository;

  /// The name of the `BitbucketServerConfig` that added connected repository.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/bitbucketServerConfigs/{config}`
  ///
  /// Required.
  core.String? parent;

  CreateBitbucketServerConnectedRepositoryRequest({
    this.bitbucketServerConnectedRepository,
    this.parent,
  });

  CreateBitbucketServerConnectedRepositoryRequest.fromJson(core.Map json_)
      : this(
          bitbucketServerConnectedRepository:
              json_.containsKey('bitbucketServerConnectedRepository')
                  ? BitbucketServerConnectedRepository.fromJson(
                      json_['bitbucketServerConnectedRepository']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitbucketServerConnectedRepository != null)
          'bitbucketServerConnectedRepository':
              bitbucketServerConnectedRepository!,
        if (parent != null) 'parent': parent!,
      };
}

/// Request to connect a repository from a connected GitLab host.
class CreateGitLabConnectedRepositoryRequest {
  /// The GitLab repository to connect.
  ///
  /// Required.
  GitLabConnectedRepository? gitlabConnectedRepository;

  /// The name of the `GitLabConfig` that adds connected repository.
  ///
  /// Format: `projects/{project}/locations/{location}/gitLabConfigs/{config}`
  ///
  /// Required.
  core.String? parent;

  CreateGitLabConnectedRepositoryRequest({
    this.gitlabConnectedRepository,
    this.parent,
  });

  CreateGitLabConnectedRepositoryRequest.fromJson(core.Map json_)
      : this(
          gitlabConnectedRepository:
              json_.containsKey('gitlabConnectedRepository')
                  ? GitLabConnectedRepository.fromJson(
                      json_['gitlabConnectedRepository']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gitlabConnectedRepository != null)
          'gitlabConnectedRepository': gitlabConnectedRepository!,
        if (parent != null) 'parent': parent!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
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

  FailureInfo.fromJson(core.Map json_)
      : this(
          detail: json_.containsKey('detail')
              ? json_['detail'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  FileHashes.fromJson(core.Map json_)
      : this(
          fileHash: json_.containsKey('fileHash')
              ? (json_['fileHash'] as core.List)
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
  /// The full resource name of the bitbucket server config.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  core.String? bitbucketServerConfig;

  /// The full resource name of the github enterprise config.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`.
  /// `projects/{project}/githubEnterpriseConfigs/{id}`.
  core.String? githubEnterpriseConfig;

  /// The path of the file, with the repo root as the root of the path.
  core.String? path;

  /// See RepoType above.
  /// Possible string values are:
  /// - "UNKNOWN" : The default, unknown repo type.
  /// - "CLOUD_SOURCE_REPOSITORIES" : A Google Cloud Source Repositories-hosted
  /// repo.
  /// - "GITHUB" : A GitHub-hosted repo not necessarily on "github.com" (i.e.
  /// GitHub Enterprise).
  /// - "BITBUCKET_SERVER" : A Bitbucket Server-hosted repo.
  core.String? repoType;

  /// The branch, tag, arbitrary ref, or SHA version of the repo to use when
  /// resolving the filename (optional).
  ///
  /// This field respects the same syntax/resolution as described here:
  /// https://git-scm.com/docs/gitrevisions If unspecified, the revision from
  /// which the trigger invocation originated is assumed to be the revision from
  /// which to read the specified path.
  core.String? revision;

  /// The URI of the repo.
  ///
  /// Either uri or repository can be specified. If unspecified, the repo from
  /// which the trigger invocation originated is assumed to be the repo from
  /// which to read the specified path.
  core.String? uri;

  GitFileSource({
    this.bitbucketServerConfig,
    this.githubEnterpriseConfig,
    this.path,
    this.repoType,
    this.revision,
    this.uri,
  });

  GitFileSource.fromJson(core.Map json_)
      : this(
          bitbucketServerConfig: json_.containsKey('bitbucketServerConfig')
              ? json_['bitbucketServerConfig'] as core.String
              : null,
          githubEnterpriseConfig: json_.containsKey('githubEnterpriseConfig')
              ? json_['githubEnterpriseConfig'] as core.String
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          repoType: json_.containsKey('repoType')
              ? json_['repoType'] as core.String
              : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitbucketServerConfig != null)
          'bitbucketServerConfig': bitbucketServerConfig!,
        if (githubEnterpriseConfig != null)
          'githubEnterpriseConfig': githubEnterpriseConfig!,
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

  GitHubEnterpriseConfig.fromJson(core.Map json_)
      : this(
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          hostUrl: json_.containsKey('hostUrl')
              ? json_['hostUrl'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          peeredNetwork: json_.containsKey('peeredNetwork')
              ? json_['peeredNetwork'] as core.String
              : null,
          secrets: json_.containsKey('secrets')
              ? GitHubEnterpriseSecrets.fromJson(
                  json_['secrets'] as core.Map<core.String, core.dynamic>)
              : null,
          sslCa:
              json_.containsKey('sslCa') ? json_['sslCa'] as core.String : null,
          webhookKey: json_.containsKey('webhookKey')
              ? json_['webhookKey'] as core.String
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

  GitHubEnterpriseSecrets.fromJson(core.Map json_)
      : this(
          oauthClientIdName: json_.containsKey('oauthClientIdName')
              ? json_['oauthClientIdName'] as core.String
              : null,
          oauthClientIdVersionName:
              json_.containsKey('oauthClientIdVersionName')
                  ? json_['oauthClientIdVersionName'] as core.String
                  : null,
          oauthSecretName: json_.containsKey('oauthSecretName')
              ? json_['oauthSecretName'] as core.String
              : null,
          oauthSecretVersionName: json_.containsKey('oauthSecretVersionName')
              ? json_['oauthSecretVersionName'] as core.String
              : null,
          privateKeyName: json_.containsKey('privateKeyName')
              ? json_['privateKeyName'] as core.String
              : null,
          privateKeyVersionName: json_.containsKey('privateKeyVersionName')
              ? json_['privateKeyVersionName'] as core.String
              : null,
          webhookSecretName: json_.containsKey('webhookSecretName')
              ? json_['webhookSecretName'] as core.String
              : null,
          webhookSecretVersionName:
              json_.containsKey('webhookSecretVersionName')
                  ? json_['webhookSecretVersionName'] as core.String
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

  GitHubEventsConfig.fromJson(core.Map json_)
      : this(
          enterpriseConfigResourceName:
              json_.containsKey('enterpriseConfigResourceName')
                  ? json_['enterpriseConfigResourceName'] as core.String
                  : null,
          installationId: json_.containsKey('installationId')
              ? json_['installationId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          owner:
              json_.containsKey('owner') ? json_['owner'] as core.String : null,
          pullRequest: json_.containsKey('pullRequest')
              ? PullRequestFilter.fromJson(
                  json_['pullRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          push: json_.containsKey('push')
              ? PushFilter.fromJson(
                  json_['push'] as core.Map<core.String, core.dynamic>)
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

/// GitLabConfig represents the configuration for a GitLab integration.
class GitLabConfig {
  /// Connected GitLab.com or GitLabEnterprise repositories for this config.
  core.List<GitLabRepositoryId>? connectedRepositories;

  /// Time when the config was created.
  ///
  /// Output only.
  core.String? createTime;

  /// GitLabEnterprise config.
  ///
  /// Optional.
  GitLabEnterpriseConfig? enterpriseConfig;

  /// The resource name for the config.
  core.String? name;

  /// Secret Manager secrets needed by the config.
  ///
  /// Required.
  GitLabSecrets? secrets;

  /// Username of the GitLab.com or GitLab Enterprise account Cloud Build will
  /// use.
  core.String? username;

  /// UUID included in webhook requests.
  ///
  /// The UUID is used to look up the corresponding config.
  ///
  /// Output only.
  core.String? webhookKey;

  GitLabConfig({
    this.connectedRepositories,
    this.createTime,
    this.enterpriseConfig,
    this.name,
    this.secrets,
    this.username,
    this.webhookKey,
  });

  GitLabConfig.fromJson(core.Map json_)
      : this(
          connectedRepositories: json_.containsKey('connectedRepositories')
              ? (json_['connectedRepositories'] as core.List)
                  .map((value) => GitLabRepositoryId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          enterpriseConfig: json_.containsKey('enterpriseConfig')
              ? GitLabEnterpriseConfig.fromJson(json_['enterpriseConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          secrets: json_.containsKey('secrets')
              ? GitLabSecrets.fromJson(
                  json_['secrets'] as core.Map<core.String, core.dynamic>)
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
          webhookKey: json_.containsKey('webhookKey')
              ? json_['webhookKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectedRepositories != null)
          'connectedRepositories': connectedRepositories!,
        if (createTime != null) 'createTime': createTime!,
        if (enterpriseConfig != null) 'enterpriseConfig': enterpriseConfig!,
        if (name != null) 'name': name!,
        if (secrets != null) 'secrets': secrets!,
        if (username != null) 'username': username!,
        if (webhookKey != null) 'webhookKey': webhookKey!,
      };
}

/// GitLabConnectedRepository represents a GitLab connected repository request
/// response.
class GitLabConnectedRepository {
  /// The name of the `GitLabConfig` that added connected repository.
  ///
  /// Format: `projects/{project}/locations/{location}/gitLabConfigs/{config}`
  core.String? parent;

  /// The GitLab repositories to connect.
  GitLabRepositoryId? repo;

  /// The status of the repo connection request.
  ///
  /// Output only.
  Status? status;

  GitLabConnectedRepository({
    this.parent,
    this.repo,
    this.status,
  });

  GitLabConnectedRepository.fromJson(core.Map json_)
      : this(
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          repo: json_.containsKey('repo')
              ? GitLabRepositoryId.fromJson(
                  json_['repo'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? Status.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (repo != null) 'repo': repo!,
        if (status != null) 'status': status!,
      };
}

/// GitLabEnterpriseConfig represents the configuration for a GitLabEnterprise
/// integration.
class GitLabEnterpriseConfig {
  /// The URI of the GitlabEnterprise host.
  ///
  /// Immutable.
  core.String? hostUri;

  /// The Service Directory configuration to be used when reaching out to the
  /// GitLab Enterprise instance.
  ServiceDirectoryConfig? serviceDirectoryConfig;

  /// The SSL certificate to use in requests to GitLab Enterprise instances.
  core.String? sslCa;

  GitLabEnterpriseConfig({
    this.hostUri,
    this.serviceDirectoryConfig,
    this.sslCa,
  });

  GitLabEnterpriseConfig.fromJson(core.Map json_)
      : this(
          hostUri: json_.containsKey('hostUri')
              ? json_['hostUri'] as core.String
              : null,
          serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
              ? ServiceDirectoryConfig.fromJson(json_['serviceDirectoryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sslCa:
              json_.containsKey('sslCa') ? json_['sslCa'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostUri != null) 'hostUri': hostUri!,
        if (serviceDirectoryConfig != null)
          'serviceDirectoryConfig': serviceDirectoryConfig!,
        if (sslCa != null) 'sslCa': sslCa!,
      };
}

/// GitLabEventsConfig describes the configuration of a trigger that creates a
/// build whenever a GitLab event is received.
class GitLabEventsConfig {
  /// The GitLabConfig specified in the gitlab_config_resource field.
  ///
  /// Output only.
  GitLabConfig? gitlabConfig;

  /// The GitLab config resource that this trigger config maps to.
  core.String? gitlabConfigResource;

  /// Namespace of the GitLab project.
  core.String? projectNamespace;

  /// Filter to match changes in pull requests.
  PullRequestFilter? pullRequest;

  /// Filter to match changes in refs like branches, tags.
  PushFilter? push;

  GitLabEventsConfig({
    this.gitlabConfig,
    this.gitlabConfigResource,
    this.projectNamespace,
    this.pullRequest,
    this.push,
  });

  GitLabEventsConfig.fromJson(core.Map json_)
      : this(
          gitlabConfig: json_.containsKey('gitlabConfig')
              ? GitLabConfig.fromJson(
                  json_['gitlabConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          gitlabConfigResource: json_.containsKey('gitlabConfigResource')
              ? json_['gitlabConfigResource'] as core.String
              : null,
          projectNamespace: json_.containsKey('projectNamespace')
              ? json_['projectNamespace'] as core.String
              : null,
          pullRequest: json_.containsKey('pullRequest')
              ? PullRequestFilter.fromJson(
                  json_['pullRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          push: json_.containsKey('push')
              ? PushFilter.fromJson(
                  json_['push'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gitlabConfig != null) 'gitlabConfig': gitlabConfig!,
        if (gitlabConfigResource != null)
          'gitlabConfigResource': gitlabConfigResource!,
        if (projectNamespace != null) 'projectNamespace': projectNamespace!,
        if (pullRequest != null) 'pullRequest': pullRequest!,
        if (push != null) 'push': push!,
      };
}

/// Proto Representing a GitLabRepository
class GitLabRepository {
  /// Link to the browse repo page on the GitLab instance
  core.String? browseUri;

  /// Description of the repository
  core.String? description;

  /// Display name of the repository
  core.String? displayName;

  /// The resource name of the repository
  core.String? name;

  /// Identifier for a repository
  GitLabRepositoryId? repositoryId;

  GitLabRepository({
    this.browseUri,
    this.description,
    this.displayName,
    this.name,
    this.repositoryId,
  });

  GitLabRepository.fromJson(core.Map json_)
      : this(
          browseUri: json_.containsKey('browseUri')
              ? json_['browseUri'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          repositoryId: json_.containsKey('repositoryId')
              ? GitLabRepositoryId.fromJson(
                  json_['repositoryId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (browseUri != null) 'browseUri': browseUri!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (repositoryId != null) 'repositoryId': repositoryId!,
      };
}

/// GitLabRepositoryId identifies a specific repository hosted on GitLab.com or
/// GitLabEnterprise
class GitLabRepositoryId {
  /// Identifier for the repository.
  ///
  /// example: "namespace/project-slug", namespace is usually the username or
  /// group ID
  ///
  /// Required.
  core.String? id;

  /// The ID of the webhook that was created for receiving events from this
  /// repo.
  ///
  /// We only create and manage a single webhook for each repo.
  ///
  /// Output only.
  core.int? webhookId;

  GitLabRepositoryId({
    this.id,
    this.webhookId,
  });

  GitLabRepositoryId.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          webhookId: json_.containsKey('webhookId')
              ? json_['webhookId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (webhookId != null) 'webhookId': webhookId!,
      };
}

/// GitLabSecrets represents the secrets in Secret Manager for a GitLab
/// integration.
class GitLabSecrets {
  /// The resource name for the api access token’s secret version
  ///
  /// Required.
  core.String? apiAccessTokenVersion;

  /// API Key that will be attached to webhook requests from GitLab to Cloud
  /// Build.
  ///
  /// Required. Immutable.
  core.String? apiKeyVersion;

  /// The resource name for the read access token’s secret version
  ///
  /// Required.
  core.String? readAccessTokenVersion;

  /// The resource name for the webhook secret’s secret version.
  ///
  /// Once this field has been set, it cannot be changed. If you need to change
  /// it, please create another GitLabConfig.
  ///
  /// Required. Immutable.
  core.String? webhookSecretVersion;

  GitLabSecrets({
    this.apiAccessTokenVersion,
    this.apiKeyVersion,
    this.readAccessTokenVersion,
    this.webhookSecretVersion,
  });

  GitLabSecrets.fromJson(core.Map json_)
      : this(
          apiAccessTokenVersion: json_.containsKey('apiAccessTokenVersion')
              ? json_['apiAccessTokenVersion'] as core.String
              : null,
          apiKeyVersion: json_.containsKey('apiKeyVersion')
              ? json_['apiKeyVersion'] as core.String
              : null,
          readAccessTokenVersion: json_.containsKey('readAccessTokenVersion')
              ? json_['readAccessTokenVersion'] as core.String
              : null,
          webhookSecretVersion: json_.containsKey('webhookSecretVersion')
              ? json_['webhookSecretVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiAccessTokenVersion != null)
          'apiAccessTokenVersion': apiAccessTokenVersion!,
        if (apiKeyVersion != null) 'apiKeyVersion': apiKeyVersion!,
        if (readAccessTokenVersion != null)
          'readAccessTokenVersion': readAccessTokenVersion!,
        if (webhookSecretVersion != null)
          'webhookSecretVersion': webhookSecretVersion!,
      };
}

/// GitRepoSource describes a repo and ref of a code repository.
class GitRepoSource {
  /// The full resource name of the bitbucket server config.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  core.String? bitbucketServerConfig;

  /// The full resource name of the github enterprise config.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`.
  /// `projects/{project}/githubEnterpriseConfigs/{id}`.
  core.String? githubEnterpriseConfig;

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
  /// - "BITBUCKET_SERVER" : A Bitbucket Server-hosted repo.
  core.String? repoType;

  /// The URI of the repo.
  ///
  /// Either uri or repository can be specified and is required.
  core.String? uri;

  GitRepoSource({
    this.bitbucketServerConfig,
    this.githubEnterpriseConfig,
    this.ref,
    this.repoType,
    this.uri,
  });

  GitRepoSource.fromJson(core.Map json_)
      : this(
          bitbucketServerConfig: json_.containsKey('bitbucketServerConfig')
              ? json_['bitbucketServerConfig'] as core.String
              : null,
          githubEnterpriseConfig: json_.containsKey('githubEnterpriseConfig')
              ? json_['githubEnterpriseConfig'] as core.String
              : null,
          ref: json_.containsKey('ref') ? json_['ref'] as core.String : null,
          repoType: json_.containsKey('repoType')
              ? json_['repoType'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitbucketServerConfig != null)
          'bitbucketServerConfig': bitbucketServerConfig!,
        if (githubEnterpriseConfig != null)
          'githubEnterpriseConfig': githubEnterpriseConfig!,
        if (ref != null) 'ref': ref!,
        if (repoType != null) 'repoType': repoType!,
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

  set valueAsBytes(core.List<core.int> bytes_) {
    value =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  Hash({
    this.type,
    this.value,
  });

  Hash.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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

  InlineSecret.fromJson(core.Map json_)
      : this(
          envMap: json_.containsKey('envMap')
              ? (json_['envMap'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (envMap != null) 'envMap': envMap!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
      };
}

/// RPC response object returned by ListBitbucketServerConfigs RPC method.
class ListBitbucketServerConfigsResponse {
  /// A list of BitbucketServerConfigs
  core.List<BitbucketServerConfig>? bitbucketServerConfigs;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListBitbucketServerConfigsResponse({
    this.bitbucketServerConfigs,
    this.nextPageToken,
  });

  ListBitbucketServerConfigsResponse.fromJson(core.Map json_)
      : this(
          bitbucketServerConfigs: json_.containsKey('bitbucketServerConfigs')
              ? (json_['bitbucketServerConfigs'] as core.List)
                  .map((value) => BitbucketServerConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitbucketServerConfigs != null)
          'bitbucketServerConfigs': bitbucketServerConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// RPC response object returned by the ListBitbucketServerRepositories RPC
/// method.
class ListBitbucketServerRepositoriesResponse {
  /// List of Bitbucket Server repositories.
  core.List<BitbucketServerRepository>? bitbucketServerRepositories;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListBitbucketServerRepositoriesResponse({
    this.bitbucketServerRepositories,
    this.nextPageToken,
  });

  ListBitbucketServerRepositoriesResponse.fromJson(core.Map json_)
      : this(
          bitbucketServerRepositories:
              json_.containsKey('bitbucketServerRepositories')
                  ? (json_['bitbucketServerRepositories'] as core.List)
                      .map((value) => BitbucketServerRepository.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitbucketServerRepositories != null)
          'bitbucketServerRepositories': bitbucketServerRepositories!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  ListBuildTriggersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          triggers: json_.containsKey('triggers')
              ? (json_['triggers'] as core.List)
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

  ListBuildsResponse.fromJson(core.Map json_)
      : this(
          builds: json_.containsKey('builds')
              ? (json_['builds'] as core.List)
                  .map((value) => Build.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builds != null) 'builds': builds!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// RPC response object returned by ListGitLabConfigs RPC method.
class ListGitLabConfigsResponse {
  /// A list of GitLabConfigs
  core.List<GitLabConfig>? gitlabConfigs;

  /// A token that can be sent as `page_token` to retrieve the next page If this
  /// field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListGitLabConfigsResponse({
    this.gitlabConfigs,
    this.nextPageToken,
  });

  ListGitLabConfigsResponse.fromJson(core.Map json_)
      : this(
          gitlabConfigs: json_.containsKey('gitlabConfigs')
              ? (json_['gitlabConfigs'] as core.List)
                  .map((value) => GitLabConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gitlabConfigs != null) 'gitlabConfigs': gitlabConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// RPC response object returned by the ListGitLabRepositories RPC method.
class ListGitLabRepositoriesResponse {
  /// List of GitLab repositories
  core.List<GitLabRepository>? gitlabRepositories;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListGitLabRepositoriesResponse({
    this.gitlabRepositories,
    this.nextPageToken,
  });

  ListGitLabRepositoriesResponse.fromJson(core.Map json_)
      : this(
          gitlabRepositories: json_.containsKey('gitlabRepositories')
              ? (json_['gitlabRepositories'] as core.List)
                  .map((value) => GitLabRepository.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gitlabRepositories != null)
          'gitlabRepositories': gitlabRepositories!,
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

  ListGithubEnterpriseConfigsResponse.fromJson(core.Map json_)
      : this(
          configs: json_.containsKey('configs')
              ? (json_['configs'] as core.List)
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

  ListWorkerPoolsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          workerPools: json_.containsKey('workerPools')
              ? (json_['workerPools'] as core.List)
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

/// A Maven artifact to upload to Artifact Registry upon successful completion
/// of all build steps.
class MavenArtifact {
  /// Maven `artifactId` value used when uploading the artifact to Artifact
  /// Registry.
  core.String? artifactId;

  /// Maven `groupId` value used when uploading the artifact to Artifact
  /// Registry.
  core.String? groupId;

  /// Path to an artifact in the build's workspace to be uploaded to Artifact
  /// Registry.
  ///
  /// This can be either an absolute path, e.g.
  /// /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative path from
  /// /workspace, e.g. my-app/target/my-app-1.0.SNAPSHOT.jar.
  core.String? path;

  /// Artifact Registry repository, in the form
  /// "https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY" Artifact in the
  /// workspace specified by path will be uploaded to Artifact Registry with
  /// this location as a prefix.
  core.String? repository;

  /// Maven `version` value used when uploading the artifact to Artifact
  /// Registry.
  core.String? version;

  MavenArtifact({
    this.artifactId,
    this.groupId,
    this.path,
    this.repository,
    this.version,
  });

  MavenArtifact.fromJson(core.Map json_)
      : this(
          artifactId: json_.containsKey('artifactId')
              ? json_['artifactId'] as core.String
              : null,
          groupId: json_.containsKey('groupId')
              ? json_['groupId'] as core.String
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          repository: json_.containsKey('repository')
              ? json_['repository'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactId != null) 'artifactId': artifactId!,
        if (groupId != null) 'groupId': groupId!,
        if (path != null) 'path': path!,
        if (repository != null) 'repository': repository!,
        if (version != null) 'version': version!,
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

  NetworkConfig.fromJson(core.Map json_)
      : this(
          egressOption: json_.containsKey('egressOption')
              ? json_['egressOption'] as core.String
              : null,
          peeredNetwork: json_.containsKey('peeredNetwork')
              ? json_['peeredNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (egressOption != null) 'egressOption': egressOption!,
        if (peeredNetwork != null) 'peeredNetwork': peeredNetwork!,
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

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
              ? json_['response'] as core.Map<core.String, core.dynamic>
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

  PoolOption.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

  PrivatePoolV1Config.fromJson(core.Map json_)
      : this(
          networkConfig: json_.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          workerConfig: json_.containsKey('workerConfig')
              ? WorkerConfig.fromJson(
                  json_['workerConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (workerConfig != null) 'workerConfig': workerConfig!,
      };
}

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

  PubsubConfig.fromJson(core.Map json_)
      : this(
          serviceAccountEmail: json_.containsKey('serviceAccountEmail')
              ? json_['serviceAccountEmail'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          subscription: json_.containsKey('subscription')
              ? json_['subscription'] as core.String
              : null,
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
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

  PullRequestFilter.fromJson(core.Map json_)
      : this(
          branch: json_.containsKey('branch')
              ? json_['branch'] as core.String
              : null,
          commentControl: json_.containsKey('commentControl')
              ? json_['commentControl'] as core.String
              : null,
          invertRegex: json_.containsKey('invertRegex')
              ? json_['invertRegex'] as core.bool
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

  PushFilter.fromJson(core.Map json_)
      : this(
          branch: json_.containsKey('branch')
              ? json_['branch'] as core.String
              : null,
          invertRegex: json_.containsKey('invertRegex')
              ? json_['invertRegex'] as core.bool
              : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (branch != null) 'branch': branch!,
        if (invertRegex != null) 'invertRegex': invertRegex!,
        if (tag != null) 'tag': tag!,
      };
}

/// Python package to upload to Artifact Registry upon successful completion of
/// all build steps.
///
/// A package can encapsulate multiple objects to be uploaded to a single
/// repository.
class PythonPackage {
  /// Path globs used to match files in the build's workspace.
  ///
  /// For Python/ Twine, this is usually `dist / * `, and sometimes additionally
  /// an `.asc` file.
  core.List<core.String>? paths;

  /// Artifact Registry repository, in the form
  /// "https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY" Files in the
  /// workspace matching any path pattern will be uploaded to Artifact Registry
  /// with this location as a prefix.
  core.String? repository;

  PythonPackage({
    this.paths,
    this.repository,
  });

  PythonPackage.fromJson(core.Map json_)
      : this(
          paths: json_.containsKey('paths')
              ? (json_['paths'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          repository: json_.containsKey('repository')
              ? json_['repository'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (paths != null) 'paths': paths!,
        if (repository != null) 'repository': repository!,
      };
}

/// ReceiveTriggerWebhookResponse \[Experimental\] is the response object for
/// the ReceiveTriggerWebhook method.
typedef ReceiveTriggerWebhookResponse = $Empty;

/// RPC request object accepted by RemoveBitbucketServerConnectedRepository RPC
/// method.
class RemoveBitbucketServerConnectedRepositoryRequest {
  /// The connected repository to remove.
  BitbucketServerRepositoryId? connectedRepository;

  RemoveBitbucketServerConnectedRepositoryRequest({
    this.connectedRepository,
  });

  RemoveBitbucketServerConnectedRepositoryRequest.fromJson(core.Map json_)
      : this(
          connectedRepository: json_.containsKey('connectedRepository')
              ? BitbucketServerRepositoryId.fromJson(
                  json_['connectedRepository']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectedRepository != null)
          'connectedRepository': connectedRepository!,
      };
}

/// RPC request object accepted by RemoveGitLabConnectedRepository RPC method.
class RemoveGitLabConnectedRepositoryRequest {
  /// The connected repository to remove.
  GitLabRepositoryId? connectedRepository;

  RemoveGitLabConnectedRepositoryRequest({
    this.connectedRepository,
  });

  RemoveGitLabConnectedRepositoryRequest.fromJson(core.Map json_)
      : this(
          connectedRepository: json_.containsKey('connectedRepository')
              ? GitLabRepositoryId.fromJson(json_['connectedRepository']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectedRepository != null)
          'connectedRepository': connectedRepository!,
      };
}

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

  RepoSource.fromJson(core.Map json_)
      : this(
          branchName: json_.containsKey('branchName')
              ? json_['branchName'] as core.String
              : null,
          commitSha: json_.containsKey('commitSha')
              ? json_['commitSha'] as core.String
              : null,
          dir: json_.containsKey('dir') ? json_['dir'] as core.String : null,
          invertRegex: json_.containsKey('invertRegex')
              ? json_['invertRegex'] as core.bool
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          repoName: json_.containsKey('repoName')
              ? json_['repoName'] as core.String
              : null,
          substitutions: json_.containsKey('substitutions')
              ? (json_['substitutions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          tagName: json_.containsKey('tagName')
              ? json_['tagName'] as core.String
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

/// The configuration of a trigger that creates a build whenever an event from
/// Repo API is received.
class RepositoryEventConfig {
  /// Filter to match changes in pull requests.
  PullRequestFilter? pullRequest;

  /// Filter to match changes in refs like branches, tags.
  PushFilter? push;

  /// The resource name of the Repo API resource.
  core.String? repository;

  /// The type of the SCM vendor the repository points to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REPOSITORY_TYPE_UNSPECIFIED" : If unspecified, RepositoryType defaults
  /// to GITHUB.
  /// - "GITHUB" : The SCM repo is GITHUB.
  /// - "GITHUB_ENTERPRISE" : The SCM repo is GITHUB Enterprise.
  /// - "GITLAB_ENTERPRISE" : The SCM repo is GITLAB Enterprise.
  core.String? repositoryType;

  RepositoryEventConfig({
    this.pullRequest,
    this.push,
    this.repository,
    this.repositoryType,
  });

  RepositoryEventConfig.fromJson(core.Map json_)
      : this(
          pullRequest: json_.containsKey('pullRequest')
              ? PullRequestFilter.fromJson(
                  json_['pullRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          push: json_.containsKey('push')
              ? PushFilter.fromJson(
                  json_['push'] as core.Map<core.String, core.dynamic>)
              : null,
          repository: json_.containsKey('repository')
              ? json_['repository'] as core.String
              : null,
          repositoryType: json_.containsKey('repositoryType')
              ? json_['repositoryType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pullRequest != null) 'pullRequest': pullRequest!,
        if (push != null) 'push': push!,
        if (repository != null) 'repository': repository!,
        if (repositoryType != null) 'repositoryType': repositoryType!,
      };
}

/// Artifacts created by the build pipeline.
class Results {
  /// Path to the artifact manifest for non-container artifacts uploaded to
  /// Cloud Storage.
  ///
  /// Only populated when artifacts are uploaded to Cloud Storage.
  core.String? artifactManifest;

  /// Time to push all non-container artifacts to Cloud Storage.
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

  /// Maven artifacts uploaded to Artifact Registry at the end of the build.
  core.List<UploadedMavenArtifact>? mavenArtifacts;

  /// Number of non-container artifacts uploaded to Cloud Storage.
  ///
  /// Only populated when artifacts are uploaded to Cloud Storage.
  core.String? numArtifacts;

  /// Python artifacts uploaded to Artifact Registry at the end of the build.
  core.List<UploadedPythonPackage>? pythonPackages;

  Results({
    this.artifactManifest,
    this.artifactTiming,
    this.buildStepImages,
    this.buildStepOutputs,
    this.images,
    this.mavenArtifacts,
    this.numArtifacts,
    this.pythonPackages,
  });

  Results.fromJson(core.Map json_)
      : this(
          artifactManifest: json_.containsKey('artifactManifest')
              ? json_['artifactManifest'] as core.String
              : null,
          artifactTiming: json_.containsKey('artifactTiming')
              ? TimeSpan.fromJson(json_['artifactTiming']
                  as core.Map<core.String, core.dynamic>)
              : null,
          buildStepImages: json_.containsKey('buildStepImages')
              ? (json_['buildStepImages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          buildStepOutputs: json_.containsKey('buildStepOutputs')
              ? (json_['buildStepOutputs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          images: json_.containsKey('images')
              ? (json_['images'] as core.List)
                  .map((value) => BuiltImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mavenArtifacts: json_.containsKey('mavenArtifacts')
              ? (json_['mavenArtifacts'] as core.List)
                  .map((value) => UploadedMavenArtifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          numArtifacts: json_.containsKey('numArtifacts')
              ? json_['numArtifacts'] as core.String
              : null,
          pythonPackages: json_.containsKey('pythonPackages')
              ? (json_['pythonPackages'] as core.List)
                  .map((value) => UploadedPythonPackage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactManifest != null) 'artifactManifest': artifactManifest!,
        if (artifactTiming != null) 'artifactTiming': artifactTiming!,
        if (buildStepImages != null) 'buildStepImages': buildStepImages!,
        if (buildStepOutputs != null) 'buildStepOutputs': buildStepOutputs!,
        if (images != null) 'images': images!,
        if (mavenArtifacts != null) 'mavenArtifacts': mavenArtifacts!,
        if (numArtifacts != null) 'numArtifacts': numArtifacts!,
        if (pythonPackages != null) 'pythonPackages': pythonPackages!,
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

  RetryBuildRequest.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
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
  ///
  /// Branch and tag names cannot consist of regular expressions.
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

  RunBuildTriggerRequest.fromJson(core.Map json_)
      : this(
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          source: json_.containsKey('source')
              ? RepoSource.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          triggerId: json_.containsKey('triggerId')
              ? json_['triggerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
        if (source != null) 'source': source!,
        if (triggerId != null) 'triggerId': triggerId!,
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

  Secret.fromJson(core.Map json_)
      : this(
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          secretEnv: json_.containsKey('secretEnv')
              ? (json_['secretEnv'] as core.Map<core.String, core.dynamic>).map(
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

  SecretManagerSecret.fromJson(core.Map json_)
      : this(
          env: json_.containsKey('env') ? json_['env'] as core.String : null,
          versionName: json_.containsKey('versionName')
              ? json_['versionName'] as core.String
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

  Secrets.fromJson(core.Map json_)
      : this(
          inline: json_.containsKey('inline')
              ? (json_['inline'] as core.List)
                  .map((value) => InlineSecret.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          secretManager: json_.containsKey('secretManager')
              ? (json_['secretManager'] as core.List)
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

/// ServiceDirectoryConfig represents Service Directory configuration for a SCM
/// host connection.
class ServiceDirectoryConfig {
  /// The Service Directory service name.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  core.String? service;

  ServiceDirectoryConfig({
    this.service,
  });

  ServiceDirectoryConfig.fromJson(core.Map json_)
      : this(
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (service != null) 'service': service!,
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

  Source.fromJson(core.Map json_)
      : this(
          repoSource: json_.containsKey('repoSource')
              ? RepoSource.fromJson(
                  json_['repoSource'] as core.Map<core.String, core.dynamic>)
              : null,
          storageSource: json_.containsKey('storageSource')
              ? StorageSource.fromJson(
                  json_['storageSource'] as core.Map<core.String, core.dynamic>)
              : null,
          storageSourceManifest: json_.containsKey('storageSourceManifest')
              ? StorageSourceManifest.fromJson(json_['storageSourceManifest']
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

  SourceProvenance.fromJson(core.Map json_)
      : this(
          fileHashes: json_.containsKey('fileHashes')
              ? (json_['fileHashes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    FileHashes.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          resolvedRepoSource: json_.containsKey('resolvedRepoSource')
              ? RepoSource.fromJson(json_['resolvedRepoSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resolvedStorageSource: json_.containsKey('resolvedStorageSource')
              ? StorageSource.fromJson(json_['resolvedStorageSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resolvedStorageSourceManifest:
              json_.containsKey('resolvedStorageSourceManifest')
                  ? StorageSourceManifest.fromJson(
                      json_['resolvedStorageSourceManifest']
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

  StorageSource.fromJson(core.Map json_)
      : this(
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          object: json_.containsKey('object')
              ? json_['object'] as core.String
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

  StorageSourceManifest.fromJson(core.Map json_)
      : this(
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          object: json_.containsKey('object')
              ? json_['object'] as core.String
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

  TimeSpan.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A Maven artifact uploaded using the MavenArtifact directive.
class UploadedMavenArtifact {
  /// Hash types and values of the Maven Artifact.
  FileHashes? fileHashes;

  /// Stores timing information for pushing the specified artifact.
  ///
  /// Output only.
  TimeSpan? pushTiming;

  /// URI of the uploaded artifact.
  core.String? uri;

  UploadedMavenArtifact({
    this.fileHashes,
    this.pushTiming,
    this.uri,
  });

  UploadedMavenArtifact.fromJson(core.Map json_)
      : this(
          fileHashes: json_.containsKey('fileHashes')
              ? FileHashes.fromJson(
                  json_['fileHashes'] as core.Map<core.String, core.dynamic>)
              : null,
          pushTiming: json_.containsKey('pushTiming')
              ? TimeSpan.fromJson(
                  json_['pushTiming'] as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileHashes != null) 'fileHashes': fileHashes!,
        if (pushTiming != null) 'pushTiming': pushTiming!,
        if (uri != null) 'uri': uri!,
      };
}

/// Artifact uploaded using the PythonPackage directive.
class UploadedPythonPackage {
  /// Hash types and values of the Python Artifact.
  FileHashes? fileHashes;

  /// Stores timing information for pushing the specified artifact.
  ///
  /// Output only.
  TimeSpan? pushTiming;

  /// URI of the uploaded artifact.
  core.String? uri;

  UploadedPythonPackage({
    this.fileHashes,
    this.pushTiming,
    this.uri,
  });

  UploadedPythonPackage.fromJson(core.Map json_)
      : this(
          fileHashes: json_.containsKey('fileHashes')
              ? FileHashes.fromJson(
                  json_['fileHashes'] as core.Map<core.String, core.dynamic>)
              : null,
          pushTiming: json_.containsKey('pushTiming')
              ? TimeSpan.fromJson(
                  json_['pushTiming'] as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileHashes != null) 'fileHashes': fileHashes!,
        if (pushTiming != null) 'pushTiming': pushTiming!,
        if (uri != null) 'uri': uri!,
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

  Volume.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
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

  Warning.fromJson(core.Map json_)
      : this(
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
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

  WebhookConfig.fromJson(core.Map json_)
      : this(
          secret: json_.containsKey('secret')
              ? json_['secret'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
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

  WorkerConfig.fromJson(core.Map json_)
      : this(
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.String
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
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

  /// Legacy Private Pool configuration.
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
  /// - "UPDATING" : `WorkerPool` is being updated; new builds cannot be run.
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

  WorkerPool.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          privatePoolV1Config: json_.containsKey('privatePoolV1Config')
              ? PrivatePoolV1Config.fromJson(json_['privatePoolV1Config']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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
