// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Dataform API - v1
///
/// Service to develop, version control, and operationalize SQL pipelines in
/// BigQuery.
///
/// For more information, see <https://cloud.google.com/dataform/docs>
///
/// Create an instance of [DataformApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFoldersResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRepositoriesResource]
///       - [ProjectsLocationsRepositoriesCompilationResultsResource]
///       - [ProjectsLocationsRepositoriesReleaseConfigsResource]
///       - [ProjectsLocationsRepositoriesWorkflowConfigsResource]
///       - [ProjectsLocationsRepositoriesWorkflowInvocationsResource]
///       - [ProjectsLocationsRepositoriesWorkspacesResource]
///     - [ProjectsLocationsTeamFoldersResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Service to develop, version control, and operationalize SQL pipelines in
/// BigQuery.
class DataformApi {
  /// View and manage your data in Google BigQuery and see the email address for
  /// your Google Account
  static const bigqueryScope = 'https://www.googleapis.com/auth/bigquery';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DataformApi(
    http.Client client, {
    core.String rootUrl = 'https://dataform.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFoldersResource get folders =>
      ProjectsLocationsFoldersResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRepositoriesResource get repositories =>
      ProjectsLocationsRepositoriesResource(_requester);
  ProjectsLocationsTeamFoldersResource get teamFolders =>
      ProjectsLocationsTeamFoldersResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get default config for a given project and location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The config name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Config> getConfig(
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
    return Config.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Do not use this field. It is unsupported
  /// and is ignored unless explicitly documented otherwise. This is primarily
  /// for internal usage.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update default config for a given project and location.
  ///
  /// **Note:** *This method does not fully implement
  /// [AIP/134](https://google.aip.dev/134). The wildcard entry (\*) is treated
  /// as a bad request, and when the `field_mask` is omitted, the request is
  /// treated as a full update on all modifiable fields.*
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The config name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/config$`.
  ///
  /// [updateMask] - Optional. Specifies the fields to be updated in the config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Config> updateConfig(
    Config request,
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
    return Config.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsFoldersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFoldersResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/folders/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/folders/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/folders/\[^/\]+$`.
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
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

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
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

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRepositoriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesCompilationResultsResource
  get compilationResults =>
      ProjectsLocationsRepositoriesCompilationResultsResource(_requester);
  ProjectsLocationsRepositoriesReleaseConfigsResource get releaseConfigs =>
      ProjectsLocationsRepositoriesReleaseConfigsResource(_requester);
  ProjectsLocationsRepositoriesWorkflowConfigsResource get workflowConfigs =>
      ProjectsLocationsRepositoriesWorkflowConfigsResource(_requester);
  ProjectsLocationsRepositoriesWorkflowInvocationsResource
  get workflowInvocations =>
      ProjectsLocationsRepositoriesWorkflowInvocationsResource(_requester);
  ProjectsLocationsRepositoriesWorkspacesResource get workspaces =>
      ProjectsLocationsRepositoriesWorkspacesResource(_requester);

  ProjectsLocationsRepositoriesResource(commons.ApiRequester client)
    : _requester = client;

  /// Applies a Git commit to a Repository.
  ///
  /// The Repository must not have a value for `git_remote_settings.url`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The repository's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommitRepositoryChangesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommitRepositoryChangesResponse> commit(
    CommitRepositoryChangesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':commit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CommitRepositoryChangesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Computes a Repository's Git access token status.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The repository's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ComputeRepositoryAccessTokenStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ComputeRepositoryAccessTokenStatusResponse>
  computeAccessTokenStatus(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':computeAccessTokenStatus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ComputeRepositoryAccessTokenStatusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new Repository in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location in which to create the repository. Must
  /// be in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [repositoryId] - Required. The ID to use for the repository, which will
  /// become the final component of the repository's resource name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Repository].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Repository> create(
    Repository request,
    core.String parent, {
    core.String? repositoryId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (repositoryId != null) 'repositoryId': [repositoryId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/repositories';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Repository.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single Repository.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The repository's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, child resources of this repository
  /// (compilation results and workflow invocations) will also be deleted.
  /// Otherwise, the request will only succeed if the repository has no child
  /// resources. **Note:** *This flag doesn't support deletion of workspaces,
  /// release configs or workflow configs. If any of such resources exists in
  /// the repository, the request will fail.*.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
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

  /// Fetches a Repository's history of commits.
  ///
  /// The Repository must not have a value for `git_remote_settings.url`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The repository's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of commits to return. The server may
  /// return fewer items than requested. If unspecified, the server will pick an
  /// appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `FetchRepositoryHistory` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `FetchRepositoryHistory`, with the exception of `page_size`, must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchRepositoryHistoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchRepositoryHistoryResponse> fetchHistory(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchHistory';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchRepositoryHistoryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches a Repository's remote branches.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The repository's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchRemoteBranchesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchRemoteBranchesResponse> fetchRemoteBranches(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchRemoteBranches';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchRemoteBranchesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches a single Repository.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The repository's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Repository].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Repository> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Repository.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Repositories in a given project and location.
  ///
  /// **Note:** *This method can return repositories not shown in the
  /// [Dataform UI](https://console.cloud.google.com/bigquery/dataform)*.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location in which to list repositories. Must be
  /// in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter for the returned list.
  ///
  /// [orderBy] - Optional. This field only supports ordering by `name`. If
  /// unspecified, the server will choose the ordering. If specified, the
  /// default order is ascending for the `name` field.
  ///
  /// [pageSize] - Optional. Maximum number of repositories to return. The
  /// server may return fewer items than requested. If unspecified, the server
  /// will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `ListRepositories` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListRepositories`, with
  /// the exception of `page_size`, must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRepositoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRepositoriesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/repositories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRepositoriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a single Repository.
  ///
  /// **Note:** *This method does not fully implement
  /// [AIP/134](https://google.aip.dev/134). The wildcard entry (\*) is treated
  /// as a bad request, and when the `field_mask` is omitted, the request is
  /// treated as a full update on all modifiable fields.*
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The repository's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Specifies the fields to be updated in the
  /// repository. If left unset, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Repository].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Repository> patch(
    Repository request,
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
    return Repository.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the contents of a given Repository directory.
  ///
  /// The Repository must not have a value for `git_remote_settings.url`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The repository's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [commitSha] - Optional. The Commit SHA for the commit to query from. If
  /// unset, the directory will be queried from HEAD.
  ///
  /// [pageSize] - Optional. Maximum number of paths to return. The server may
  /// return fewer items than requested. If unspecified, the server will pick an
  /// appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `QueryRepositoryDirectoryContents` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `QueryRepositoryDirectoryContents`, with the exception of `page_size`,
  /// must match the call that provided the page token.
  ///
  /// [path] - Optional. The directory's full path including directory name,
  /// relative to root. If left unset, the root is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryRepositoryDirectoryContentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryRepositoryDirectoryContentsResponse> queryDirectoryContents(
    core.String name, {
    core.String? commitSha,
    core.int? pageSize,
    core.String? pageToken,
    core.String? path,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (commitSha != null) 'commitSha': [commitSha],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (path != null) 'path': [path],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':queryDirectoryContents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return QueryRepositoryDirectoryContentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the contents of a file (inside a Repository).
  ///
  /// The Repository must not have a value for `git_remote_settings.url`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The repository's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [commitSha] - Optional. The commit SHA for the commit to read from. If
  /// unset, the file will be read from HEAD.
  ///
  /// [path] - Required. Full file path to read including filename, from
  /// repository root.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReadRepositoryFileResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReadRepositoryFileResponse> readFile(
    core.String name, {
    core.String? commitSha,
    core.String? path,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (commitSha != null) 'commitSha': [commitSha],
      if (path != null) 'path': [path],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':readFile';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReadRepositoryFileResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRepositoriesCompilationResultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesCompilationResultsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new CompilationResult in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to create the compilation
  /// result. Must be in the format `projects / * /locations / * /repositories /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CompilationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CompilationResult> create(
    CompilationResult request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/compilationResults';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CompilationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches a single CompilationResult.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The compilation result's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/compilationResults/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CompilationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CompilationResult> get(
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
    return CompilationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists CompilationResults in a given Repository.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to list compilation results.
  /// Must be in the format `projects / * /locations / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter for the returned list.
  ///
  /// [orderBy] - Optional. This field only supports ordering by `name` and
  /// `create_time`. If unspecified, the server will choose the ordering. If
  /// specified, the default order is ascending for the `name` field.
  ///
  /// [pageSize] - Optional. Maximum number of compilation results to return.
  /// The server may return fewer items than requested. If unspecified, the
  /// server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `ListCompilationResults` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListCompilationResults`, with the exception of `page_size`, must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCompilationResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCompilationResultsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/compilationResults';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCompilationResultsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns CompilationResultActions in a given CompilationResult.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The compilation result's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/compilationResults/\[^/\]+$`.
  ///
  /// [filter] - Optional. Optional filter for the returned list. Filtering is
  /// only currently supported on the `file_path` field.
  ///
  /// [pageSize] - Optional. Maximum number of compilation results to return.
  /// The server may return fewer items than requested. If unspecified, the
  /// server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `QueryCompilationResultActions` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `QueryCompilationResultActions`, with the exception of `page_size`, must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryCompilationResultActionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryCompilationResultActionsResponse> query(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return QueryCompilationResultActionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRepositoriesReleaseConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesReleaseConfigsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new ReleaseConfig in a given Repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to create the release config.
  /// Must be in the format `projects / * /locations / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [releaseConfigId] - Required. The ID to use for the release config, which
  /// will become the final component of the release config's resource name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReleaseConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReleaseConfig> create(
    ReleaseConfig request,
    core.String parent, {
    core.String? releaseConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (releaseConfigId != null) 'releaseConfigId': [releaseConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/releaseConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReleaseConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single ReleaseConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The release config's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/releaseConfigs/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Fetches a single ReleaseConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The release config's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/releaseConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReleaseConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReleaseConfig> get(
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
    return ReleaseConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists ReleaseConfigs in a given Repository.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to list release configs. Must
  /// be in the format `projects / * /locations / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of release configs to return. The
  /// server may return fewer items than requested. If unspecified, the server
  /// will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `ListReleaseConfigs` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListReleaseConfigs`,
  /// with the exception of `page_size`, must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleaseConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleaseConfigsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/releaseConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReleaseConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a single ReleaseConfig.
  ///
  /// **Note:** *This method does not fully implement
  /// [AIP/134](https://google.aip.dev/134). The wildcard entry (\*) is treated
  /// as a bad request, and when the `field_mask` is omitted, the request is
  /// treated as a full update on all modifiable fields.*
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The release config's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/releaseConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Specifies the fields to be updated in the release
  /// config. If left unset, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReleaseConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReleaseConfig> patch(
    ReleaseConfig request,
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
    return ReleaseConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRepositoriesWorkflowConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesWorkflowConfigsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new WorkflowConfig in a given Repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to create the workflow
  /// config. Must be in the format `projects / * /locations / * /repositories /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [workflowConfigId] - Required. The ID to use for the workflow config,
  /// which will become the final component of the workflow config's resource
  /// name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowConfig> create(
    WorkflowConfig request,
    core.String parent, {
    core.String? workflowConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (workflowConfigId != null) 'workflowConfigId': [workflowConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workflowConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WorkflowConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single WorkflowConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workflow config's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workflowConfigs/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Fetches a single WorkflowConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workflow config's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workflowConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowConfig> get(
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
    return WorkflowConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists WorkflowConfigs in a given Repository.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to list workflow configs.
  /// Must be in the format `projects / * /locations / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of workflow configs to return. The
  /// server may return fewer items than requested. If unspecified, the server
  /// will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `ListWorkflowConfigs` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListWorkflowConfigs`,
  /// with the exception of `page_size`, must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkflowConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkflowConfigsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workflowConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkflowConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a single WorkflowConfig.
  ///
  /// **Note:** *This method does not fully implement
  /// [AIP/134](https://google.aip.dev/134). The wildcard entry (\*) is treated
  /// as a bad request, and when the `field_mask` is omitted, the request is
  /// treated as a full update on all modifiable fields.*
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The workflow config's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workflowConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Specifies the fields to be updated in the
  /// workflow config. If left unset, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowConfig> patch(
    WorkflowConfig request,
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
    return WorkflowConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRepositoriesWorkflowInvocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesWorkflowInvocationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Requests cancellation of a running WorkflowInvocation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workflow invocation resource's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workflowInvocations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CancelWorkflowInvocationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CancelWorkflowInvocationResponse> cancel(
    CancelWorkflowInvocationRequest request,
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
    return CancelWorkflowInvocationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new WorkflowInvocation in a given Repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to create the workflow
  /// invocation. Must be in the format `projects / * /locations / *
  /// /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowInvocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowInvocation> create(
    WorkflowInvocation request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/workflowInvocations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WorkflowInvocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single WorkflowInvocation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workflow invocation resource's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workflowInvocations/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Fetches a single WorkflowInvocation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workflow invocation resource's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workflowInvocations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowInvocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowInvocation> get(
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
    return WorkflowInvocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists WorkflowInvocations in a given Repository.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the WorkflowInvocation type.
  /// Must be in the format `projects / * /locations / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter for the returned list.
  ///
  /// [orderBy] - Optional. This field only supports ordering by `name`. If
  /// unspecified, the server will choose the ordering. If specified, the
  /// default order is ascending for the `name` field.
  ///
  /// [pageSize] - Optional. Maximum number of workflow invocations to return.
  /// The server may return fewer items than requested. If unspecified, the
  /// server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `ListWorkflowInvocations` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListWorkflowInvocations`, with the exception of `page_size`, must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkflowInvocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkflowInvocationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/workflowInvocations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkflowInvocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns WorkflowInvocationActions in a given WorkflowInvocation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workflow invocation's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workflowInvocations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of workflow invocations to return.
  /// The server may return fewer items than requested. If unspecified, the
  /// server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `QueryWorkflowInvocationActions` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `QueryWorkflowInvocationActions`, with the exception of `page_size`, must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryWorkflowInvocationActionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryWorkflowInvocationActionsResponse> query(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return QueryWorkflowInvocationActionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRepositoriesWorkspacesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesWorkspacesResource(commons.ApiRequester client)
    : _requester = client;

  /// Applies a Git commit for uncommitted files in a Workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommitWorkspaceChangesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommitWorkspaceChangesResponse> commit(
    CommitWorkspaceChangesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':commit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CommitWorkspaceChangesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new Workspace in a given Repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to create the workspace. Must
  /// be in the format `projects / * /locations / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [workspaceId] - Required. The ID to use for the workspace, which will
  /// become the final component of the workspace's resource name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Workspace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workspace> create(
    Workspace request,
    core.String parent, {
    core.String? workspaceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (workspaceId != null) 'workspaceId': [workspaceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workspaces';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Workspace.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Workspace.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace resource's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Fetches Git diff for an uncommitted file in a Workspace.
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [path] - Required. The file's full path including filename, relative to
  /// the workspace root.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchFileDiffResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchFileDiffResponse> fetchFileDiff(
    core.String workspace, {
    core.String? path,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (path != null) 'path': [path],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$workspace') + ':fetchFileDiff';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchFileDiffResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches Git statuses for the files in a Workspace.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchFileGitStatusesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchFileGitStatusesResponse> fetchFileGitStatuses(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchFileGitStatuses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchFileGitStatusesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches Git ahead/behind against a remote branch.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [remoteBranch] - Optional. The name of the branch in the Git remote
  /// against which this workspace should be compared. If left unset, the
  /// repository's default branch name will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchGitAheadBehindResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchGitAheadBehindResponse> fetchGitAheadBehind(
    core.String name, {
    core.String? remoteBranch,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (remoteBranch != null) 'remoteBranch': [remoteBranch],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchGitAheadBehind';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchGitAheadBehindResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches a single Workspace.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Workspace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workspace> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Workspace.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Installs dependency NPM packages (inside a Workspace).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InstallNpmPackagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InstallNpmPackagesResponse> installNpmPackages(
    InstallNpmPackagesRequest request,
    core.String workspace, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$workspace') + ':installNpmPackages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return InstallNpmPackagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Workspaces in a given Repository.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to list workspaces. Must be
  /// in the format `projects / * /locations / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter for the returned list.
  ///
  /// [orderBy] - Optional. This field only supports ordering by `name`. If
  /// unspecified, the server will choose the ordering. If specified, the
  /// default order is ascending for the `name` field.
  ///
  /// [pageSize] - Optional. Maximum number of workspaces to return. The server
  /// may return fewer items than requested. If unspecified, the server will
  /// pick an appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `ListWorkspaces` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListWorkspaces`, with the
  /// exception of `page_size`, must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkspacesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkspacesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workspaces';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkspacesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a directory inside a Workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MakeDirectoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MakeDirectoryResponse> makeDirectory(
    MakeDirectoryRequest request,
    core.String workspace, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$workspace') + ':makeDirectory';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MakeDirectoryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Moves a directory (inside a Workspace), and all of its contents, to a new
  /// location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MoveDirectoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MoveDirectoryResponse> moveDirectory(
    MoveDirectoryRequest request,
    core.String workspace, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$workspace') + ':moveDirectory';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MoveDirectoryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Moves a file (inside a Workspace) to a new location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MoveFileResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MoveFileResponse> moveFile(
    MoveFileRequest request,
    core.String workspace, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$workspace') + ':moveFile';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MoveFileResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Pulls Git commits from the Repository's remote into a Workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullGitCommitsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullGitCommitsResponse> pull(
    PullGitCommitsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':pull';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PullGitCommitsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Pushes Git commits from a Workspace to the Repository's remote.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PushGitCommitsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PushGitCommitsResponse> push(
    PushGitCommitsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':push';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PushGitCommitsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the contents of a given Workspace directory.
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of paths to return. The server may
  /// return fewer items than requested. If unspecified, the server will pick an
  /// appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `QueryDirectoryContents` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `QueryDirectoryContents`, with the exception of `page_size`, must match
  /// the call that provided the page token.
  ///
  /// [path] - Optional. The directory's full path including directory name,
  /// relative to the workspace root. If left unset, the workspace root is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryDirectoryContentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryDirectoryContentsResponse> queryDirectoryContents(
    core.String workspace, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? path,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (path != null) 'path': [path],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$workspace') + ':queryDirectoryContents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return QueryDirectoryContentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the contents of a file (inside a Workspace).
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [path] - Required. The file's full path including filename, relative to
  /// the workspace root.
  ///
  /// [revision] - Optional. The Git revision of the file to return. If left
  /// empty, the current contents of `path` will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReadFileResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReadFileResponse> readFile(
    core.String workspace, {
    core.String? path,
    core.String? revision,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (path != null) 'path': [path],
      if (revision != null) 'revision': [revision],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$workspace') + ':readFile';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReadFileResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a directory (inside a Workspace) and all of its contents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveDirectoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveDirectoryResponse> removeDirectory(
    RemoveDirectoryRequest request,
    core.String workspace, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$workspace') + ':removeDirectory';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoveDirectoryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a file (inside a Workspace).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveFileResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveFileResponse> removeFile(
    RemoveFileRequest request,
    core.String workspace, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$workspace') + ':removeFile';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoveFileResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Performs a Git reset for uncommitted files in a Workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResetWorkspaceChangesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResetWorkspaceChangesResponse> reset(
    ResetWorkspaceChangesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ResetWorkspaceChangesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Finds the contents of a given Workspace directory by filter.
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [filter] - Optional. Optional filter for the returned list in filtering
  /// format. Filtering is only currently supported on the `path` field. See
  /// https://google.aip.dev/160 for details.
  ///
  /// [pageSize] - Optional. Maximum number of search results to return. The
  /// server may return fewer items than requested. If unspecified, the server
  /// will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// `SearchFilesRequest` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `SearchFilesRequest`,
  /// with the exception of `page_size`, must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchFilesResponse> searchFiles(
    core.String workspace, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$workspace') + ':searchFiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchFilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Writes to a file (inside a Workspace).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [workspace] - Required. The workspace's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WriteFileResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WriteFileResponse> writeFile(
    WriteFileRequest request,
    core.String workspace, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$workspace') + ':writeFile';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WriteFileResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsTeamFoldersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTeamFoldersResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/teamFolders/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/teamFolders/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/teamFolders/\[^/\]+$`.
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Error table information, used to write error data into a BigQuery table.
class ActionErrorTable {
  /// Error table partition expiration in days.
  ///
  /// Only positive values are allowed.
  core.int? retentionDays;

  /// Error Table target.
  Target? target;

  ActionErrorTable({this.retentionDays, this.target});

  ActionErrorTable.fromJson(core.Map json_)
    : this(
        retentionDays: json_['retentionDays'] as core.int?,
        target:
            json_.containsKey('target')
                ? Target.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (retentionDays != null) 'retentionDays': retentionDays!,
    if (target != null) 'target': target!,
  };
}

/// Load definition for incremental load modes
typedef ActionIncrementalLoadMode = $IncrementalLoadMode;

/// Simplified load configuration for actions
class ActionLoadConfig {
  /// Append into destination table
  ActionSimpleLoadMode? append;

  /// Insert records where the value exceeds the previous maximum value for a
  /// column in the destination table
  ActionIncrementalLoadMode? maximum;

  /// Replace destination table
  ActionSimpleLoadMode? replace;

  /// Insert records where the value of a column is not already present in the
  /// destination table
  ActionIncrementalLoadMode? unique;

  ActionLoadConfig({this.append, this.maximum, this.replace, this.unique});

  ActionLoadConfig.fromJson(core.Map json_)
    : this(
        append:
            json_.containsKey('append')
                ? ActionSimpleLoadMode.fromJson(
                  json_['append'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maximum:
            json_.containsKey('maximum')
                ? ActionIncrementalLoadMode.fromJson(
                  json_['maximum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        replace:
            json_.containsKey('replace')
                ? ActionSimpleLoadMode.fromJson(
                  json_['replace'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        unique:
            json_.containsKey('unique')
                ? ActionIncrementalLoadMode.fromJson(
                  json_['unique'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (append != null) 'append': append!,
    if (maximum != null) 'maximum': maximum!,
    if (replace != null) 'replace': replace!,
    if (unique != null) 'unique': unique!,
  };
}

/// Simple load definition
typedef ActionSimpleLoadMode = $Empty;

/// Definition of a SQL Data Preparation
class ActionSqlDefinition {
  /// Error table configuration,
  ActionErrorTable? errorTable;

  /// Load configuration.
  ActionLoadConfig? loadConfig;

  /// The SQL query representing the data preparation steps.
  ///
  /// Formatted as a Pipe SQL query statement.
  core.String? query;

  ActionSqlDefinition({this.errorTable, this.loadConfig, this.query});

  ActionSqlDefinition.fromJson(core.Map json_)
    : this(
        errorTable:
            json_.containsKey('errorTable')
                ? ActionErrorTable.fromJson(
                  json_['errorTable'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        loadConfig:
            json_.containsKey('loadConfig')
                ? ActionLoadConfig.fromJson(
                  json_['loadConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        query: json_['query'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorTable != null) 'errorTable': errorTable!,
    if (loadConfig != null) 'loadConfig': loadConfig!,
    if (query != null) 'query': query!,
  };
}

/// Represents an assertion upon a SQL query which is required return zero rows.
class Assertion {
  /// A list of actions that this action depends on.
  core.List<Target>? dependencyTargets;

  /// Whether this action is disabled (i.e. should not be run).
  core.bool? disabled;

  /// The parent action of this assertion.
  ///
  /// Only set if this assertion was automatically generated.
  Target? parentAction;

  /// Descriptor for the assertion's automatically-generated view and its
  /// columns.
  RelationDescriptor? relationDescriptor;

  /// The SELECT query which must return zero rows in order for this assertion
  /// to succeed.
  core.String? selectQuery;

  /// Arbitrary, user-defined tags on this action.
  core.List<core.String>? tags;

  Assertion({
    this.dependencyTargets,
    this.disabled,
    this.parentAction,
    this.relationDescriptor,
    this.selectQuery,
    this.tags,
  });

  Assertion.fromJson(core.Map json_)
    : this(
        dependencyTargets:
            (json_['dependencyTargets'] as core.List?)
                ?.map(
                  (value) => Target.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        disabled: json_['disabled'] as core.bool?,
        parentAction:
            json_.containsKey('parentAction')
                ? Target.fromJson(
                  json_['parentAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        relationDescriptor:
            json_.containsKey('relationDescriptor')
                ? RelationDescriptor.fromJson(
                  json_['relationDescriptor']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        selectQuery: json_['selectQuery'] as core.String?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dependencyTargets != null) 'dependencyTargets': dependencyTargets!,
    if (disabled != null) 'disabled': disabled!,
    if (parentAction != null) 'parentAction': parentAction!,
    if (relationDescriptor != null) 'relationDescriptor': relationDescriptor!,
    if (selectQuery != null) 'selectQuery': selectQuery!,
    if (tags != null) 'tags': tags!,
  };
}

/// Represents a workflow action that will run against BigQuery.
class BigQueryAction {
  /// The ID of the BigQuery job that executed the SQL in sql_script.
  ///
  /// Only set once the job has started to run.
  ///
  /// Output only.
  core.String? jobId;

  /// The generated BigQuery SQL script that will be executed.
  ///
  /// Output only.
  core.String? sqlScript;

  BigQueryAction({this.jobId, this.sqlScript});

  BigQueryAction.fromJson(core.Map json_)
    : this(
        jobId: json_['jobId'] as core.String?,
        sqlScript: json_['sqlScript'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jobId != null) 'jobId': jobId!,
    if (sqlScript != null) 'sqlScript': sqlScript!,
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

  Binding({this.condition, this.members, this.role});

  Binding.fromJson(core.Map json_)
    : this(
        condition:
            json_.containsKey('condition')
                ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        members:
            (json_['members'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (members != null) 'members': members!,
    if (role != null) 'role': role!,
  };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// `CancelWorkflowInvocation` request message.
typedef CancelWorkflowInvocationRequest = $Empty;

/// `CancelWorkflowInvocation` response message.
typedef CancelWorkflowInvocationResponse = $Empty;

/// Configures various aspects of Dataform code compilation.
class CodeCompilationConfig {
  /// The default schema (BigQuery dataset ID) for assertions.
  ///
  /// Optional.
  core.String? assertionSchema;

  /// The prefix to prepend to built-in assertion names.
  ///
  /// Optional.
  core.String? builtinAssertionNamePrefix;

  /// The suffix that should be appended to all database (Google Cloud project
  /// ID) names.
  ///
  /// Optional.
  core.String? databaseSuffix;

  /// The default database (Google Cloud project ID).
  ///
  /// Optional.
  core.String? defaultDatabase;

  /// The default BigQuery location to use.
  ///
  /// Defaults to "US". See the BigQuery docs for a full list of locations:
  /// https://cloud.google.com/bigquery/docs/locations.
  ///
  /// Optional.
  core.String? defaultLocation;

  /// The default notebook runtime options.
  ///
  /// Optional.
  NotebookRuntimeOptions? defaultNotebookRuntimeOptions;

  /// The default schema (BigQuery dataset ID).
  ///
  /// Optional.
  core.String? defaultSchema;

  /// The suffix that should be appended to all schema (BigQuery dataset ID)
  /// names.
  ///
  /// Optional.
  core.String? schemaSuffix;

  /// The prefix that should be prepended to all table names.
  ///
  /// Optional.
  core.String? tablePrefix;

  /// User-defined variables that are made available to project code during
  /// compilation.
  ///
  /// Optional.
  core.Map<core.String, core.String>? vars;

  CodeCompilationConfig({
    this.assertionSchema,
    this.builtinAssertionNamePrefix,
    this.databaseSuffix,
    this.defaultDatabase,
    this.defaultLocation,
    this.defaultNotebookRuntimeOptions,
    this.defaultSchema,
    this.schemaSuffix,
    this.tablePrefix,
    this.vars,
  });

  CodeCompilationConfig.fromJson(core.Map json_)
    : this(
        assertionSchema: json_['assertionSchema'] as core.String?,
        builtinAssertionNamePrefix:
            json_['builtinAssertionNamePrefix'] as core.String?,
        databaseSuffix: json_['databaseSuffix'] as core.String?,
        defaultDatabase: json_['defaultDatabase'] as core.String?,
        defaultLocation: json_['defaultLocation'] as core.String?,
        defaultNotebookRuntimeOptions:
            json_.containsKey('defaultNotebookRuntimeOptions')
                ? NotebookRuntimeOptions.fromJson(
                  json_['defaultNotebookRuntimeOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        defaultSchema: json_['defaultSchema'] as core.String?,
        schemaSuffix: json_['schemaSuffix'] as core.String?,
        tablePrefix: json_['tablePrefix'] as core.String?,
        vars: (json_['vars'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assertionSchema != null) 'assertionSchema': assertionSchema!,
    if (builtinAssertionNamePrefix != null)
      'builtinAssertionNamePrefix': builtinAssertionNamePrefix!,
    if (databaseSuffix != null) 'databaseSuffix': databaseSuffix!,
    if (defaultDatabase != null) 'defaultDatabase': defaultDatabase!,
    if (defaultLocation != null) 'defaultLocation': defaultLocation!,
    if (defaultNotebookRuntimeOptions != null)
      'defaultNotebookRuntimeOptions': defaultNotebookRuntimeOptions!,
    if (defaultSchema != null) 'defaultSchema': defaultSchema!,
    if (schemaSuffix != null) 'schemaSuffix': schemaSuffix!,
    if (tablePrefix != null) 'tablePrefix': tablePrefix!,
    if (vars != null) 'vars': vars!,
  };
}

/// Describes a column.
class ColumnDescriptor {
  /// A list of BigQuery policy tags that will be applied to the column.
  core.List<core.String>? bigqueryPolicyTags;

  /// A textual description of the column.
  core.String? description;

  /// The identifier for the column.
  ///
  /// Each entry in `path` represents one level of nesting.
  core.List<core.String>? path;

  ColumnDescriptor({this.bigqueryPolicyTags, this.description, this.path});

  ColumnDescriptor.fromJson(core.Map json_)
    : this(
        bigqueryPolicyTags:
            (json_['bigqueryPolicyTags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        description: json_['description'] as core.String?,
        path:
            (json_['path'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigqueryPolicyTags != null) 'bigqueryPolicyTags': bigqueryPolicyTags!,
    if (description != null) 'description': description!,
    if (path != null) 'path': path!,
  };
}

/// Represents the author of a Git commit.
class CommitAuthor {
  /// The commit author's email address.
  ///
  /// Required.
  core.String? emailAddress;

  /// The commit author's name.
  ///
  /// Required.
  core.String? name;

  CommitAuthor({this.emailAddress, this.name});

  CommitAuthor.fromJson(core.Map json_)
    : this(
        emailAddress: json_['emailAddress'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (emailAddress != null) 'emailAddress': emailAddress!,
    if (name != null) 'name': name!,
  };
}

/// Represents a single commit log.
class CommitLogEntry {
  /// The commit author for this commit log entry.
  CommitAuthor? author;

  /// The commit message for this commit log entry.
  core.String? commitMessage;

  /// The commit SHA for this commit log entry.
  core.String? commitSha;

  /// Commit timestamp.
  core.String? commitTime;

  CommitLogEntry({
    this.author,
    this.commitMessage,
    this.commitSha,
    this.commitTime,
  });

  CommitLogEntry.fromJson(core.Map json_)
    : this(
        author:
            json_.containsKey('author')
                ? CommitAuthor.fromJson(
                  json_['author'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        commitMessage: json_['commitMessage'] as core.String?,
        commitSha: json_['commitSha'] as core.String?,
        commitTime: json_['commitTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (author != null) 'author': author!,
    if (commitMessage != null) 'commitMessage': commitMessage!,
    if (commitSha != null) 'commitSha': commitSha!,
    if (commitTime != null) 'commitTime': commitTime!,
  };
}

/// Represents a Dataform Git commit.
class CommitMetadata {
  /// The commit's author.
  ///
  /// Required.
  CommitAuthor? author;

  /// The commit's message.
  ///
  /// Optional.
  core.String? commitMessage;

  CommitMetadata({this.author, this.commitMessage});

  CommitMetadata.fromJson(core.Map json_)
    : this(
        author:
            json_.containsKey('author')
                ? CommitAuthor.fromJson(
                  json_['author'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        commitMessage: json_['commitMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (author != null) 'author': author!,
    if (commitMessage != null) 'commitMessage': commitMessage!,
  };
}

/// `CommitRepositoryChanges` request message.
class CommitRepositoryChangesRequest {
  /// The changes to commit to the repository.
  ///
  /// Required.
  CommitMetadata? commitMetadata;

  /// A map to the path of the file to the operation.
  ///
  /// The path is the full file path including filename, from repository root.
  ///
  /// Optional.
  core.Map<core.String, FileOperation>? fileOperations;

  /// The commit SHA which must be the repository's current HEAD before applying
  /// this commit; otherwise this request will fail.
  ///
  /// If unset, no validation on the current HEAD commit SHA is performed.
  ///
  /// Optional.
  core.String? requiredHeadCommitSha;

  CommitRepositoryChangesRequest({
    this.commitMetadata,
    this.fileOperations,
    this.requiredHeadCommitSha,
  });

  CommitRepositoryChangesRequest.fromJson(core.Map json_)
    : this(
        commitMetadata:
            json_.containsKey('commitMetadata')
                ? CommitMetadata.fromJson(
                  json_['commitMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fileOperations: (json_['fileOperations']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                FileOperation.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        requiredHeadCommitSha: json_['requiredHeadCommitSha'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitMetadata != null) 'commitMetadata': commitMetadata!,
    if (fileOperations != null) 'fileOperations': fileOperations!,
    if (requiredHeadCommitSha != null)
      'requiredHeadCommitSha': requiredHeadCommitSha!,
  };
}

/// `CommitRepositoryChanges` response message.
class CommitRepositoryChangesResponse {
  /// The commit SHA of the current commit.
  core.String? commitSha;

  CommitRepositoryChangesResponse({this.commitSha});

  CommitRepositoryChangesResponse.fromJson(core.Map json_)
    : this(commitSha: json_['commitSha'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitSha != null) 'commitSha': commitSha!,
  };
}

/// `CommitWorkspaceChanges` request message.
class CommitWorkspaceChangesRequest {
  /// The commit's author.
  ///
  /// Required.
  CommitAuthor? author;

  /// The commit's message.
  ///
  /// Optional.
  core.String? commitMessage;

  /// Full file paths to commit including filename, rooted at workspace root.
  ///
  /// If left empty, all files will be committed.
  ///
  /// Optional.
  core.List<core.String>? paths;

  CommitWorkspaceChangesRequest({this.author, this.commitMessage, this.paths});

  CommitWorkspaceChangesRequest.fromJson(core.Map json_)
    : this(
        author:
            json_.containsKey('author')
                ? CommitAuthor.fromJson(
                  json_['author'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        commitMessage: json_['commitMessage'] as core.String?,
        paths:
            (json_['paths'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (author != null) 'author': author!,
    if (commitMessage != null) 'commitMessage': commitMessage!,
    if (paths != null) 'paths': paths!,
  };
}

/// `CommitWorkspaceChanges` response message.
typedef CommitWorkspaceChangesResponse = $Empty;

/// An error encountered when attempting to compile a Dataform project.
class CompilationError {
  /// The identifier of the action where this error occurred, if available.
  ///
  /// Output only.
  Target? actionTarget;

  /// The error's top level message.
  ///
  /// Output only.
  core.String? message;

  /// The path of the file where this error occurred, if available, relative to
  /// the project root.
  ///
  /// Output only.
  core.String? path;

  /// The error's full stack trace.
  ///
  /// Output only.
  core.String? stack;

  CompilationError({this.actionTarget, this.message, this.path, this.stack});

  CompilationError.fromJson(core.Map json_)
    : this(
        actionTarget:
            json_.containsKey('actionTarget')
                ? Target.fromJson(
                  json_['actionTarget'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        message: json_['message'] as core.String?,
        path: json_['path'] as core.String?,
        stack: json_['stack'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionTarget != null) 'actionTarget': actionTarget!,
    if (message != null) 'message': message!,
    if (path != null) 'path': path!,
    if (stack != null) 'stack': stack!,
  };
}

/// Represents the result of compiling a Dataform project.
class CompilationResult {
  /// If set, fields of `code_compilation_config` override the default
  /// compilation settings that are specified in dataform.json.
  ///
  /// Immutable.
  CodeCompilationConfig? codeCompilationConfig;

  /// Errors encountered during project compilation.
  ///
  /// Output only.
  core.List<CompilationError>? compilationErrors;

  /// The timestamp of when the compilation result was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Only set if the repository has a KMS Key.
  ///
  /// Output only.
  DataEncryptionState? dataEncryptionState;

  /// The version of `@dataform/core` that was used for compilation.
  ///
  /// Output only.
  core.String? dataformCoreVersion;

  /// Git commit/tag/branch name at which the repository should be compiled.
  ///
  /// Must exist in the remote repository. Examples: - a commit SHA: `12ade345`
  /// - a tag: `tag1` - a branch name: `branch1`
  ///
  /// Immutable.
  core.String? gitCommitish;

  /// All the metadata information that is used internally to serve the
  /// resource.
  ///
  /// For example: timestamps, flags, status fields, etc. The format of this
  /// field is a JSON string.
  ///
  /// Output only.
  core.String? internalMetadata;

  /// The compilation result's name.
  ///
  /// Output only.
  core.String? name;

  /// Metadata indicating whether this resource is user-scoped.
  ///
  /// `CompilationResult` resource is `user_scoped` only if it is sourced from a
  /// workspace.
  ///
  /// Output only.
  PrivateResourceMetadata? privateResourceMetadata;

  /// The name of the release config to compile.
  ///
  /// Must be in the format `projects / * /locations / * /repositories / *
  /// /releaseConfigs / * `.
  ///
  /// Immutable.
  core.String? releaseConfig;

  /// The fully resolved Git commit SHA of the code that was compiled.
  ///
  /// Not set for compilation results whose source is a workspace.
  ///
  /// Output only.
  core.String? resolvedGitCommitSha;

  /// The name of the workspace to compile.
  ///
  /// Must be in the format `projects / * /locations / * /repositories / *
  /// /workspaces / * `.
  ///
  /// Immutable.
  core.String? workspace;

  CompilationResult({
    this.codeCompilationConfig,
    this.compilationErrors,
    this.createTime,
    this.dataEncryptionState,
    this.dataformCoreVersion,
    this.gitCommitish,
    this.internalMetadata,
    this.name,
    this.privateResourceMetadata,
    this.releaseConfig,
    this.resolvedGitCommitSha,
    this.workspace,
  });

  CompilationResult.fromJson(core.Map json_)
    : this(
        codeCompilationConfig:
            json_.containsKey('codeCompilationConfig')
                ? CodeCompilationConfig.fromJson(
                  json_['codeCompilationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        compilationErrors:
            (json_['compilationErrors'] as core.List?)
                ?.map(
                  (value) => CompilationError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        dataEncryptionState:
            json_.containsKey('dataEncryptionState')
                ? DataEncryptionState.fromJson(
                  json_['dataEncryptionState']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataformCoreVersion: json_['dataformCoreVersion'] as core.String?,
        gitCommitish: json_['gitCommitish'] as core.String?,
        internalMetadata: json_['internalMetadata'] as core.String?,
        name: json_['name'] as core.String?,
        privateResourceMetadata:
            json_.containsKey('privateResourceMetadata')
                ? PrivateResourceMetadata.fromJson(
                  json_['privateResourceMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        releaseConfig: json_['releaseConfig'] as core.String?,
        resolvedGitCommitSha: json_['resolvedGitCommitSha'] as core.String?,
        workspace: json_['workspace'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (codeCompilationConfig != null)
      'codeCompilationConfig': codeCompilationConfig!,
    if (compilationErrors != null) 'compilationErrors': compilationErrors!,
    if (createTime != null) 'createTime': createTime!,
    if (dataEncryptionState != null)
      'dataEncryptionState': dataEncryptionState!,
    if (dataformCoreVersion != null)
      'dataformCoreVersion': dataformCoreVersion!,
    if (gitCommitish != null) 'gitCommitish': gitCommitish!,
    if (internalMetadata != null) 'internalMetadata': internalMetadata!,
    if (name != null) 'name': name!,
    if (privateResourceMetadata != null)
      'privateResourceMetadata': privateResourceMetadata!,
    if (releaseConfig != null) 'releaseConfig': releaseConfig!,
    if (resolvedGitCommitSha != null)
      'resolvedGitCommitSha': resolvedGitCommitSha!,
    if (workspace != null) 'workspace': workspace!,
  };
}

/// Represents a single Dataform action in a compilation result.
class CompilationResultAction {
  /// The assertion executed by this action.
  Assertion? assertion;

  /// The action's identifier if the project had been compiled without any
  /// overrides configured.
  ///
  /// Unique within the compilation result.
  Target? canonicalTarget;

  /// The data preparation executed by this action.
  DataPreparation? dataPreparation;

  /// The declaration declared by this action.
  Declaration? declaration;

  /// The full path including filename in which this action is located, relative
  /// to the workspace root.
  core.String? filePath;

  /// All the metadata information that is used internally to serve the
  /// resource.
  ///
  /// For example: timestamps, flags, status fields, etc. The format of this
  /// field is a JSON string.
  ///
  /// Output only.
  core.String? internalMetadata;

  /// The notebook executed by this action.
  Notebook? notebook;

  /// The database operations executed by this action.
  Operations? operations;

  /// The database relation created/updated by this action.
  Relation? relation;

  /// This action's identifier.
  ///
  /// Unique within the compilation result.
  Target? target;

  CompilationResultAction({
    this.assertion,
    this.canonicalTarget,
    this.dataPreparation,
    this.declaration,
    this.filePath,
    this.internalMetadata,
    this.notebook,
    this.operations,
    this.relation,
    this.target,
  });

  CompilationResultAction.fromJson(core.Map json_)
    : this(
        assertion:
            json_.containsKey('assertion')
                ? Assertion.fromJson(
                  json_['assertion'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        canonicalTarget:
            json_.containsKey('canonicalTarget')
                ? Target.fromJson(
                  json_['canonicalTarget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataPreparation:
            json_.containsKey('dataPreparation')
                ? DataPreparation.fromJson(
                  json_['dataPreparation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        declaration:
            json_.containsKey('declaration')
                ? Declaration.fromJson(
                  json_['declaration'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        filePath: json_['filePath'] as core.String?,
        internalMetadata: json_['internalMetadata'] as core.String?,
        notebook:
            json_.containsKey('notebook')
                ? Notebook.fromJson(
                  json_['notebook'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        operations:
            json_.containsKey('operations')
                ? Operations.fromJson(
                  json_['operations'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        relation:
            json_.containsKey('relation')
                ? Relation.fromJson(
                  json_['relation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        target:
            json_.containsKey('target')
                ? Target.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assertion != null) 'assertion': assertion!,
    if (canonicalTarget != null) 'canonicalTarget': canonicalTarget!,
    if (dataPreparation != null) 'dataPreparation': dataPreparation!,
    if (declaration != null) 'declaration': declaration!,
    if (filePath != null) 'filePath': filePath!,
    if (internalMetadata != null) 'internalMetadata': internalMetadata!,
    if (notebook != null) 'notebook': notebook!,
    if (operations != null) 'operations': operations!,
    if (relation != null) 'relation': relation!,
    if (target != null) 'target': target!,
  };
}

/// `ComputeRepositoryAccessTokenStatus` response message.
class ComputeRepositoryAccessTokenStatusResponse {
  /// Indicates the status of the Git access token.
  /// Possible string values are:
  /// - "TOKEN_STATUS_UNSPECIFIED" : Default value. This value is unused.
  /// - "NOT_FOUND" : The token could not be found in Secret Manager (or the
  /// Dataform Service Account did not have permission to access it).
  /// - "INVALID" : The token could not be used to authenticate against the Git
  /// remote.
  /// - "VALID" : The token was used successfully to authenticate against the
  /// Git remote.
  core.String? tokenStatus;

  ComputeRepositoryAccessTokenStatusResponse({this.tokenStatus});

  ComputeRepositoryAccessTokenStatusResponse.fromJson(core.Map json_)
    : this(tokenStatus: json_['tokenStatus'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (tokenStatus != null) 'tokenStatus': tokenStatus!,
  };
}

/// Config for all repositories in a given project and location.
class Config {
  /// The default KMS key that is used if no encryption key is provided when a
  /// repository is created.
  ///
  /// Optional.
  core.String? defaultKmsKeyName;

  /// All the metadata information that is used internally to serve the
  /// resource.
  ///
  /// For example: timestamps, flags, status fields, etc. The format of this
  /// field is a JSON string.
  ///
  /// Output only.
  core.String? internalMetadata;

  /// Identifier.
  ///
  /// The config name.
  core.String? name;

  Config({this.defaultKmsKeyName, this.internalMetadata, this.name});

  Config.fromJson(core.Map json_)
    : this(
        defaultKmsKeyName: json_['defaultKmsKeyName'] as core.String?,
        internalMetadata: json_['internalMetadata'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultKmsKeyName != null) 'defaultKmsKeyName': defaultKmsKeyName!,
    if (internalMetadata != null) 'internalMetadata': internalMetadata!,
    if (name != null) 'name': name!,
  };
}

/// Describes encryption state of a resource.
class DataEncryptionState {
  /// The KMS key version name with which data of a resource is encrypted.
  ///
  /// Required.
  core.String? kmsKeyVersionName;

  DataEncryptionState({this.kmsKeyVersionName});

  DataEncryptionState.fromJson(core.Map json_)
    : this(kmsKeyVersionName: json_['kmsKeyVersionName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
  };
}

/// Defines a compiled Data Preparation entity
class DataPreparation {
  /// SQL definition for a Data Preparation.
  ///
  /// Contains a SQL query and additional context information.
  SqlDefinition? contentsSql;

  /// The data preparation definition, stored as a YAML string.
  core.String? contentsYaml;

  /// A list of actions that this action depends on.
  core.List<Target>? dependencyTargets;

  /// Whether this action is disabled (i.e. should not be run).
  core.bool? disabled;

  /// Arbitrary, user-defined tags on this action.
  core.List<core.String>? tags;

  DataPreparation({
    this.contentsSql,
    this.contentsYaml,
    this.dependencyTargets,
    this.disabled,
    this.tags,
  });

  DataPreparation.fromJson(core.Map json_)
    : this(
        contentsSql:
            json_.containsKey('contentsSql')
                ? SqlDefinition.fromJson(
                  json_['contentsSql'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        contentsYaml: json_['contentsYaml'] as core.String?,
        dependencyTargets:
            (json_['dependencyTargets'] as core.List?)
                ?.map(
                  (value) => Target.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        disabled: json_['disabled'] as core.bool?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentsSql != null) 'contentsSql': contentsSql!,
    if (contentsYaml != null) 'contentsYaml': contentsYaml!,
    if (dependencyTargets != null) 'dependencyTargets': dependencyTargets!,
    if (disabled != null) 'disabled': disabled!,
    if (tags != null) 'tags': tags!,
  };
}

/// Represents a workflow action that will run a Data Preparation.
class DataPreparationAction {
  /// SQL definition for a Data Preparation.
  ///
  /// Contains a SQL query and additional context information.
  ActionSqlDefinition? contentsSql;

  /// YAML representing the contents of the data preparation.
  ///
  /// Can be used to show the customer what the input was to their workflow.
  ///
  /// Output only.
  core.String? contentsYaml;

  /// The generated BigQuery SQL script that will be executed.
  ///
  /// For reference only.
  ///
  /// Output only.
  core.String? generatedSql;

  /// The ID of the BigQuery job that executed the SQL in sql_script.
  ///
  /// Only set once the job has started to run.
  ///
  /// Output only.
  core.String? jobId;

  DataPreparationAction({
    this.contentsSql,
    this.contentsYaml,
    this.generatedSql,
    this.jobId,
  });

  DataPreparationAction.fromJson(core.Map json_)
    : this(
        contentsSql:
            json_.containsKey('contentsSql')
                ? ActionSqlDefinition.fromJson(
                  json_['contentsSql'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        contentsYaml: json_['contentsYaml'] as core.String?,
        generatedSql: json_['generatedSql'] as core.String?,
        jobId: json_['jobId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentsSql != null) 'contentsSql': contentsSql!,
    if (contentsYaml != null) 'contentsYaml': contentsYaml!,
    if (generatedSql != null) 'generatedSql': generatedSql!,
    if (jobId != null) 'jobId': jobId!,
  };
}

/// Represents a relation which is not managed by Dataform but which may be
/// referenced by Dataform actions.
class Declaration {
  /// Descriptor for the relation and its columns.
  ///
  /// Used as documentation only, i.e. values here will result in no changes to
  /// the relation's metadata.
  RelationDescriptor? relationDescriptor;

  Declaration({this.relationDescriptor});

  Declaration.fromJson(core.Map json_)
    : this(
        relationDescriptor:
            json_.containsKey('relationDescriptor')
                ? RelationDescriptor.fromJson(
                  json_['relationDescriptor']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (relationDescriptor != null) 'relationDescriptor': relationDescriptor!,
  };
}

/// Represents the delete file operation.
typedef DeleteFile = $Empty;

/// Represents a single entry in a directory.
class DirectoryEntry {
  /// A child directory in the directory.
  core.String? directory;

  /// A file in the directory.
  core.String? file;

  DirectoryEntry({this.directory, this.file});

  DirectoryEntry.fromJson(core.Map json_)
    : this(
        directory: json_['directory'] as core.String?,
        file: json_['file'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (directory != null) 'directory': directory!,
    if (file != null) 'file': file!,
  };
}

/// Client-facing representation of a directory entry in search results.
typedef DirectorySearchResult = $SearchResult;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Error table information, used to write error data into a BigQuery table.
class ErrorTable {
  /// Error table partition expiration in days.
  ///
  /// Only positive values are allowed.
  core.int? retentionDays;

  /// Error Table target.
  Target? target;

  ErrorTable({this.retentionDays, this.target});

  ErrorTable.fromJson(core.Map json_)
    : this(
        retentionDays: json_['retentionDays'] as core.int?,
        target:
            json_.containsKey('target')
                ? Target.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (retentionDays != null) 'retentionDays': retentionDays!,
    if (target != null) 'target': target!,
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

/// `FetchFileDiff` response message.
class FetchFileDiffResponse {
  /// The raw formatted Git diff for the file.
  core.String? formattedDiff;

  FetchFileDiffResponse({this.formattedDiff});

  FetchFileDiffResponse.fromJson(core.Map json_)
    : this(formattedDiff: json_['formattedDiff'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (formattedDiff != null) 'formattedDiff': formattedDiff!,
  };
}

/// `FetchFileGitStatuses` response message.
class FetchFileGitStatusesResponse {
  /// A list of all files which have uncommitted Git changes.
  ///
  /// There will only be a single entry for any given file.
  core.List<UncommittedFileChange>? uncommittedFileChanges;

  FetchFileGitStatusesResponse({this.uncommittedFileChanges});

  FetchFileGitStatusesResponse.fromJson(core.Map json_)
    : this(
        uncommittedFileChanges:
            (json_['uncommittedFileChanges'] as core.List?)
                ?.map(
                  (value) => UncommittedFileChange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (uncommittedFileChanges != null)
      'uncommittedFileChanges': uncommittedFileChanges!,
  };
}

/// `FetchGitAheadBehind` response message.
class FetchGitAheadBehindResponse {
  /// The number of commits in the remote branch that are not in the workspace.
  core.int? commitsAhead;

  /// The number of commits in the workspace that are not in the remote branch.
  core.int? commitsBehind;

  FetchGitAheadBehindResponse({this.commitsAhead, this.commitsBehind});

  FetchGitAheadBehindResponse.fromJson(core.Map json_)
    : this(
        commitsAhead: json_['commitsAhead'] as core.int?,
        commitsBehind: json_['commitsBehind'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitsAhead != null) 'commitsAhead': commitsAhead!,
    if (commitsBehind != null) 'commitsBehind': commitsBehind!,
  };
}

/// `FetchRemoteBranches` response message.
class FetchRemoteBranchesResponse {
  /// The remote repository's branch names.
  core.List<core.String>? branches;

  FetchRemoteBranchesResponse({this.branches});

  FetchRemoteBranchesResponse.fromJson(core.Map json_)
    : this(
        branches:
            (json_['branches'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (branches != null) 'branches': branches!,
  };
}

/// `FetchRepositoryHistory` response message.
class FetchRepositoryHistoryResponse {
  /// A list of commit logs, ordered by 'git log' default order.
  core.List<CommitLogEntry>? commits;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  FetchRepositoryHistoryResponse({this.commits, this.nextPageToken});

  FetchRepositoryHistoryResponse.fromJson(core.Map json_)
    : this(
        commits:
            (json_['commits'] as core.List?)
                ?.map(
                  (value) => CommitLogEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commits != null) 'commits': commits!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Represents a single file operation to the repository.
class FileOperation {
  /// Represents the delete operation.
  DeleteFile? deleteFile;

  /// Represents the write operation.
  WriteFile? writeFile;

  FileOperation({this.deleteFile, this.writeFile});

  FileOperation.fromJson(core.Map json_)
    : this(
        deleteFile:
            json_.containsKey('deleteFile')
                ? DeleteFile.fromJson(
                  json_['deleteFile'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        writeFile:
            json_.containsKey('writeFile')
                ? WriteFile.fromJson(
                  json_['writeFile'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deleteFile != null) 'deleteFile': deleteFile!,
    if (writeFile != null) 'writeFile': writeFile!,
  };
}

/// Client-facing representation of a file entry in search results.
typedef FileSearchResult = $SearchResult;

/// Controls Git remote configuration for a repository.
class GitRemoteSettings {
  /// The name of the Secret Manager secret version to use as an authentication
  /// token for Git operations.
  ///
  /// Must be in the format `projects / * /secrets / * /versions / * `.
  ///
  /// Optional.
  core.String? authenticationTokenSecretVersion;

  /// The Git remote's default branch name.
  ///
  /// Required.
  core.String? defaultBranch;

  /// Authentication fields for remote uris using SSH protocol.
  ///
  /// Optional.
  SshAuthenticationConfig? sshAuthenticationConfig;

  /// Deprecated: The field does not contain any token status information.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TOKEN_STATUS_UNSPECIFIED" : Default value. This value is unused.
  /// - "NOT_FOUND" : The token could not be found in Secret Manager (or the
  /// Dataform Service Account did not have permission to access it).
  /// - "INVALID" : The token could not be used to authenticate against the Git
  /// remote.
  /// - "VALID" : The token was used successfully to authenticate against the
  /// Git remote.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? tokenStatus;

  /// The Git remote's URL.
  ///
  /// Required.
  core.String? url;

  GitRemoteSettings({
    this.authenticationTokenSecretVersion,
    this.defaultBranch,
    this.sshAuthenticationConfig,
    this.tokenStatus,
    this.url,
  });

  GitRemoteSettings.fromJson(core.Map json_)
    : this(
        authenticationTokenSecretVersion:
            json_['authenticationTokenSecretVersion'] as core.String?,
        defaultBranch: json_['defaultBranch'] as core.String?,
        sshAuthenticationConfig:
            json_.containsKey('sshAuthenticationConfig')
                ? SshAuthenticationConfig.fromJson(
                  json_['sshAuthenticationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tokenStatus: json_['tokenStatus'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authenticationTokenSecretVersion != null)
      'authenticationTokenSecretVersion': authenticationTokenSecretVersion!,
    if (defaultBranch != null) 'defaultBranch': defaultBranch!,
    if (sshAuthenticationConfig != null)
      'sshAuthenticationConfig': sshAuthenticationConfig!,
    if (tokenStatus != null) 'tokenStatus': tokenStatus!,
    if (url != null) 'url': url!,
  };
}

/// Load definition for incremental load modes
typedef IncrementalLoadMode = $IncrementalLoadMode;

/// Contains settings for relations of type `INCREMENTAL_TABLE`.
class IncrementalTableConfig {
  /// SQL statements to be executed after inserting new rows into the relation.
  core.List<core.String>? incrementalPostOperations;

  /// SQL statements to be executed before inserting new rows into the relation.
  core.List<core.String>? incrementalPreOperations;

  /// The SELECT query which returns rows which should be inserted into the
  /// relation if it already exists and is not being refreshed.
  core.String? incrementalSelectQuery;

  /// Whether this table should be protected from being refreshed.
  core.bool? refreshDisabled;

  /// A set of columns or SQL expressions used to define row uniqueness.
  ///
  /// If any duplicates are discovered (as defined by `unique_key_parts`), only
  /// the newly selected rows (as defined by `incremental_select_query`) will be
  /// included in the relation.
  core.List<core.String>? uniqueKeyParts;

  /// A SQL expression conditional used to limit the set of existing rows
  /// considered for a merge operation (see `unique_key_parts` for more
  /// information).
  core.String? updatePartitionFilter;

  IncrementalTableConfig({
    this.incrementalPostOperations,
    this.incrementalPreOperations,
    this.incrementalSelectQuery,
    this.refreshDisabled,
    this.uniqueKeyParts,
    this.updatePartitionFilter,
  });

  IncrementalTableConfig.fromJson(core.Map json_)
    : this(
        incrementalPostOperations:
            (json_['incrementalPostOperations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        incrementalPreOperations:
            (json_['incrementalPreOperations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        incrementalSelectQuery: json_['incrementalSelectQuery'] as core.String?,
        refreshDisabled: json_['refreshDisabled'] as core.bool?,
        uniqueKeyParts:
            (json_['uniqueKeyParts'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updatePartitionFilter: json_['updatePartitionFilter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (incrementalPostOperations != null)
      'incrementalPostOperations': incrementalPostOperations!,
    if (incrementalPreOperations != null)
      'incrementalPreOperations': incrementalPreOperations!,
    if (incrementalSelectQuery != null)
      'incrementalSelectQuery': incrementalSelectQuery!,
    if (refreshDisabled != null) 'refreshDisabled': refreshDisabled!,
    if (uniqueKeyParts != null) 'uniqueKeyParts': uniqueKeyParts!,
    if (updatePartitionFilter != null)
      'updatePartitionFilter': updatePartitionFilter!,
  };
}

/// `InstallNpmPackages` request message.
typedef InstallNpmPackagesRequest = $Empty;

/// `InstallNpmPackages` response message.
typedef InstallNpmPackagesResponse = $Empty;

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef Interval = $Interval;

/// Includes various configuration options for a workflow invocation.
///
/// If both `included_targets` and `included_tags` are unset, all actions will
/// be included.
class InvocationConfig {
  /// When set to true, any incremental tables will be fully refreshed.
  ///
  /// Optional.
  core.bool? fullyRefreshIncrementalTablesEnabled;

  /// The set of tags to include.
  ///
  /// Optional.
  core.List<core.String>? includedTags;

  /// The set of action identifiers to include.
  ///
  /// Optional.
  core.List<Target>? includedTargets;

  /// Specifies the priority for query execution in BigQuery.
  ///
  /// More information can be found at
  /// https://cloud.google.com/bigquery/docs/running-queries#queries.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "QUERY_PRIORITY_UNSPECIFIED" : Default value. This value is unused.
  /// - "INTERACTIVE" : Query will be executed in BigQuery with interactive
  /// priority. More information can be found at
  /// https://cloud.google.com/bigquery/docs/running-queries#queries.
  /// - "BATCH" : Query will be executed in BigQuery with batch priority. More
  /// information can be found at
  /// https://cloud.google.com/bigquery/docs/running-queries#batchqueries.
  core.String? queryPriority;

  /// The service account to run workflow invocations under.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// When set to true, transitive dependencies of included actions will be
  /// executed.
  ///
  /// Optional.
  core.bool? transitiveDependenciesIncluded;

  /// When set to true, transitive dependents of included actions will be
  /// executed.
  ///
  /// Optional.
  core.bool? transitiveDependentsIncluded;

  InvocationConfig({
    this.fullyRefreshIncrementalTablesEnabled,
    this.includedTags,
    this.includedTargets,
    this.queryPriority,
    this.serviceAccount,
    this.transitiveDependenciesIncluded,
    this.transitiveDependentsIncluded,
  });

  InvocationConfig.fromJson(core.Map json_)
    : this(
        fullyRefreshIncrementalTablesEnabled:
            json_['fullyRefreshIncrementalTablesEnabled'] as core.bool?,
        includedTags:
            (json_['includedTags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includedTargets:
            (json_['includedTargets'] as core.List?)
                ?.map(
                  (value) => Target.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        queryPriority: json_['queryPriority'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        transitiveDependenciesIncluded:
            json_['transitiveDependenciesIncluded'] as core.bool?,
        transitiveDependentsIncluded:
            json_['transitiveDependentsIncluded'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fullyRefreshIncrementalTablesEnabled != null)
      'fullyRefreshIncrementalTablesEnabled':
          fullyRefreshIncrementalTablesEnabled!,
    if (includedTags != null) 'includedTags': includedTags!,
    if (includedTargets != null) 'includedTargets': includedTargets!,
    if (queryPriority != null) 'queryPriority': queryPriority!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (transitiveDependenciesIncluded != null)
      'transitiveDependenciesIncluded': transitiveDependenciesIncluded!,
    if (transitiveDependentsIncluded != null)
      'transitiveDependentsIncluded': transitiveDependentsIncluded!,
  };
}

/// `ListCompilationResults` response message.
class ListCompilationResultsResponse {
  /// List of compilation results.
  core.List<CompilationResult>? compilationResults;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations which could not be reached.
  core.List<core.String>? unreachable;

  ListCompilationResultsResponse({
    this.compilationResults,
    this.nextPageToken,
    this.unreachable,
  });

  ListCompilationResultsResponse.fromJson(core.Map json_)
    : this(
        compilationResults:
            (json_['compilationResults'] as core.List?)
                ?.map(
                  (value) => CompilationResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (compilationResults != null) 'compilationResults': compilationResults!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// `ListReleaseConfigs` response message.
class ListReleaseConfigsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of release configs.
  core.List<ReleaseConfig>? releaseConfigs;

  /// Locations which could not be reached.
  core.List<core.String>? unreachable;

  ListReleaseConfigsResponse({
    this.nextPageToken,
    this.releaseConfigs,
    this.unreachable,
  });

  ListReleaseConfigsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        releaseConfigs:
            (json_['releaseConfigs'] as core.List?)
                ?.map(
                  (value) => ReleaseConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (releaseConfigs != null) 'releaseConfigs': releaseConfigs!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// `ListRepositories` response message.
class ListRepositoriesResponse {
  /// A token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of repositories.
  core.List<Repository>? repositories;

  /// Locations which could not be reached.
  core.List<core.String>? unreachable;

  ListRepositoriesResponse({
    this.nextPageToken,
    this.repositories,
    this.unreachable,
  });

  ListRepositoriesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        repositories:
            (json_['repositories'] as core.List?)
                ?.map(
                  (value) => Repository.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (repositories != null) 'repositories': repositories!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// `ListWorkflowConfigs` response message.
class ListWorkflowConfigsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations which could not be reached.
  core.List<core.String>? unreachable;

  /// List of workflow configs.
  core.List<WorkflowConfig>? workflowConfigs;

  ListWorkflowConfigsResponse({
    this.nextPageToken,
    this.unreachable,
    this.workflowConfigs,
  });

  ListWorkflowConfigsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        workflowConfigs:
            (json_['workflowConfigs'] as core.List?)
                ?.map(
                  (value) => WorkflowConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
    if (workflowConfigs != null) 'workflowConfigs': workflowConfigs!,
  };
}

/// `ListWorkflowInvocations` response message.
class ListWorkflowInvocationsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations which could not be reached.
  core.List<core.String>? unreachable;

  /// List of workflow invocations.
  core.List<WorkflowInvocation>? workflowInvocations;

  ListWorkflowInvocationsResponse({
    this.nextPageToken,
    this.unreachable,
    this.workflowInvocations,
  });

  ListWorkflowInvocationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        workflowInvocations:
            (json_['workflowInvocations'] as core.List?)
                ?.map(
                  (value) => WorkflowInvocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
    if (workflowInvocations != null)
      'workflowInvocations': workflowInvocations!,
  };
}

/// `ListWorkspaces` response message.
class ListWorkspacesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations which could not be reached.
  core.List<core.String>? unreachable;

  /// List of workspaces.
  core.List<Workspace>? workspaces;

  ListWorkspacesResponse({
    this.nextPageToken,
    this.unreachable,
    this.workspaces,
  });

  ListWorkspacesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        workspaces:
            (json_['workspaces'] as core.List?)
                ?.map(
                  (value) => Workspace.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
    if (workspaces != null) 'workspaces': workspaces!,
  };
}

/// Simplified load configuration for actions
class LoadConfig {
  /// Append into destination table
  SimpleLoadMode? append;

  /// Insert records where the value exceeds the previous maximum value for a
  /// column in the destination table
  IncrementalLoadMode? maximum;

  /// Replace destination table
  SimpleLoadMode? replace;

  /// Insert records where the value of a column is not already present in the
  /// destination table
  IncrementalLoadMode? unique;

  LoadConfig({this.append, this.maximum, this.replace, this.unique});

  LoadConfig.fromJson(core.Map json_)
    : this(
        append:
            json_.containsKey('append')
                ? SimpleLoadMode.fromJson(
                  json_['append'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maximum:
            json_.containsKey('maximum')
                ? IncrementalLoadMode.fromJson(
                  json_['maximum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        replace:
            json_.containsKey('replace')
                ? SimpleLoadMode.fromJson(
                  json_['replace'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        unique:
            json_.containsKey('unique')
                ? IncrementalLoadMode.fromJson(
                  json_['unique'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (append != null) 'append': append!,
    if (maximum != null) 'maximum': maximum!,
    if (replace != null) 'replace': replace!,
    if (unique != null) 'unique': unique!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// `MakeDirectory` request message.
typedef MakeDirectoryRequest = $DirectoryRequest;

/// `MakeDirectory` response message.
typedef MakeDirectoryResponse = $Empty;

/// `MoveDirectory` request message.
class MoveDirectoryRequest {
  /// The new path for the directory including directory name, rooted at
  /// workspace root.
  ///
  /// Required.
  core.String? newPath;

  /// The directory's full path including directory name, relative to the
  /// workspace root.
  ///
  /// Required.
  core.String? path;

  MoveDirectoryRequest({this.newPath, this.path});

  MoveDirectoryRequest.fromJson(core.Map json_)
    : this(
        newPath: json_['newPath'] as core.String?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (newPath != null) 'newPath': newPath!,
    if (path != null) 'path': path!,
  };
}

/// `MoveDirectory` response message.
typedef MoveDirectoryResponse = $Empty;

/// `MoveFile` request message.
class MoveFileRequest {
  /// The file's new path including filename, relative to the workspace root.
  ///
  /// Required.
  core.String? newPath;

  /// The file's full path including filename, relative to the workspace root.
  ///
  /// Required.
  core.String? path;

  MoveFileRequest({this.newPath, this.path});

  MoveFileRequest.fromJson(core.Map json_)
    : this(
        newPath: json_['newPath'] as core.String?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (newPath != null) 'newPath': newPath!,
    if (path != null) 'path': path!,
  };
}

/// `MoveFile` response message.
typedef MoveFileResponse = $Empty;

/// Represents a notebook.
class Notebook {
  /// The contents of the notebook.
  core.String? contents;

  /// A list of actions that this action depends on.
  core.List<Target>? dependencyTargets;

  /// Whether this action is disabled (i.e. should not be run).
  core.bool? disabled;

  /// Arbitrary, user-defined tags on this action.
  core.List<core.String>? tags;

  Notebook({this.contents, this.dependencyTargets, this.disabled, this.tags});

  Notebook.fromJson(core.Map json_)
    : this(
        contents: json_['contents'] as core.String?,
        dependencyTargets:
            (json_['dependencyTargets'] as core.List?)
                ?.map(
                  (value) => Target.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        disabled: json_['disabled'] as core.bool?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contents != null) 'contents': contents!,
    if (dependencyTargets != null) 'dependencyTargets': dependencyTargets!,
    if (disabled != null) 'disabled': disabled!,
    if (tags != null) 'tags': tags!,
  };
}

/// Represents a workflow action that will run against a Notebook runtime.
class NotebookAction {
  /// The code contents of a Notebook to be run.
  ///
  /// Output only.
  core.String? contents;

  /// The ID of the Vertex job that executed the notebook in contents and also
  /// the ID used for the outputs created in Google Cloud Storage buckets.
  ///
  /// Only set once the job has started to run.
  ///
  /// Output only.
  core.String? jobId;

  NotebookAction({this.contents, this.jobId});

  NotebookAction.fromJson(core.Map json_)
    : this(
        contents: json_['contents'] as core.String?,
        jobId: json_['jobId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contents != null) 'contents': contents!,
    if (jobId != null) 'jobId': jobId!,
  };
}

/// Configures various aspects of Dataform notebook runtime.
class NotebookRuntimeOptions {
  /// The resource name of the
  /// [Colab runtime template](https://cloud.google.com/colab/docs/runtimes),
  /// from which a runtime is created for notebook executions.
  ///
  /// If not specified, a runtime is created with Colab's default
  /// specifications.
  ///
  /// Optional.
  core.String? aiPlatformNotebookRuntimeTemplate;

  /// The Google Cloud Storage location to upload the result to.
  ///
  /// Format: `gs://bucket-name`.
  ///
  /// Optional.
  core.String? gcsOutputBucket;

  NotebookRuntimeOptions({
    this.aiPlatformNotebookRuntimeTemplate,
    this.gcsOutputBucket,
  });

  NotebookRuntimeOptions.fromJson(core.Map json_)
    : this(
        aiPlatformNotebookRuntimeTemplate:
            json_['aiPlatformNotebookRuntimeTemplate'] as core.String?,
        gcsOutputBucket: json_['gcsOutputBucket'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aiPlatformNotebookRuntimeTemplate != null)
      'aiPlatformNotebookRuntimeTemplate': aiPlatformNotebookRuntimeTemplate!,
    if (gcsOutputBucket != null) 'gcsOutputBucket': gcsOutputBucket!,
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

  /// The normal, successful response of the operation.
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

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
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

/// Represents a list of arbitrary database operations.
class Operations {
  /// A list of actions that this action depends on.
  core.List<Target>? dependencyTargets;

  /// Whether this action is disabled (i.e. should not be run).
  core.bool? disabled;

  /// Whether these operations produce an output relation.
  core.bool? hasOutput;

  /// A list of arbitrary SQL statements that will be executed without
  /// alteration.
  core.List<core.String>? queries;

  /// Descriptor for any output relation and its columns.
  ///
  /// Only set if `has_output` is true.
  RelationDescriptor? relationDescriptor;

  /// Arbitrary, user-defined tags on this action.
  core.List<core.String>? tags;

  Operations({
    this.dependencyTargets,
    this.disabled,
    this.hasOutput,
    this.queries,
    this.relationDescriptor,
    this.tags,
  });

  Operations.fromJson(core.Map json_)
    : this(
        dependencyTargets:
            (json_['dependencyTargets'] as core.List?)
                ?.map(
                  (value) => Target.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        disabled: json_['disabled'] as core.bool?,
        hasOutput: json_['hasOutput'] as core.bool?,
        queries:
            (json_['queries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        relationDescriptor:
            json_.containsKey('relationDescriptor')
                ? RelationDescriptor.fromJson(
                  json_['relationDescriptor']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dependencyTargets != null) 'dependencyTargets': dependencyTargets!,
    if (disabled != null) 'disabled': disabled!,
    if (hasOutput != null) 'hasOutput': hasOutput!,
    if (queries != null) 'queries': queries!,
    if (relationDescriptor != null) 'relationDescriptor': relationDescriptor!,
    if (tags != null) 'tags': tags!,
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
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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

  Policy({this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
    : this(
        bindings:
            (json_['bindings'] as core.List?)
                ?.map(
                  (value) => Binding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bindings != null) 'bindings': bindings!,
    if (etag != null) 'etag': etag!,
    if (version != null) 'version': version!,
  };
}

/// Metadata used to identify if a resource is user scoped.
class PrivateResourceMetadata {
  /// If true, this resource is user-scoped, meaning it is either a workspace or
  /// sourced from a workspace.
  ///
  /// Output only.
  core.bool? userScoped;

  PrivateResourceMetadata({this.userScoped});

  PrivateResourceMetadata.fromJson(core.Map json_)
    : this(userScoped: json_['userScoped'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (userScoped != null) 'userScoped': userScoped!,
  };
}

/// `PullGitCommits` request message.
class PullGitCommitsRequest {
  /// The author of any merge commit which may be created as a result of merging
  /// fetched Git commits into this workspace.
  ///
  /// Required.
  CommitAuthor? author;

  /// The name of the branch in the Git remote from which to pull commits.
  ///
  /// If left unset, the repository's default branch name will be used.
  ///
  /// Optional.
  core.String? remoteBranch;

  PullGitCommitsRequest({this.author, this.remoteBranch});

  PullGitCommitsRequest.fromJson(core.Map json_)
    : this(
        author:
            json_.containsKey('author')
                ? CommitAuthor.fromJson(
                  json_['author'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        remoteBranch: json_['remoteBranch'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (author != null) 'author': author!,
    if (remoteBranch != null) 'remoteBranch': remoteBranch!,
  };
}

/// `PullGitCommits` response message.
typedef PullGitCommitsResponse = $Empty;

/// `PushGitCommits` request message.
class PushGitCommitsRequest {
  /// The name of the branch in the Git remote to which commits should be
  /// pushed.
  ///
  /// If left unset, the repository's default branch name will be used.
  ///
  /// Optional.
  core.String? remoteBranch;

  PushGitCommitsRequest({this.remoteBranch});

  PushGitCommitsRequest.fromJson(core.Map json_)
    : this(remoteBranch: json_['remoteBranch'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (remoteBranch != null) 'remoteBranch': remoteBranch!,
  };
}

/// `PushGitCommits` response message.
typedef PushGitCommitsResponse = $Empty;

/// `QueryCompilationResultActions` response message.
class QueryCompilationResultActionsResponse {
  /// List of compilation result actions.
  core.List<CompilationResultAction>? compilationResultActions;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  QueryCompilationResultActionsResponse({
    this.compilationResultActions,
    this.nextPageToken,
  });

  QueryCompilationResultActionsResponse.fromJson(core.Map json_)
    : this(
        compilationResultActions:
            (json_['compilationResultActions'] as core.List?)
                ?.map(
                  (value) => CompilationResultAction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (compilationResultActions != null)
      'compilationResultActions': compilationResultActions!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// `QueryDirectoryContents` response message.
class QueryDirectoryContentsResponse {
  /// List of entries in the directory.
  core.List<DirectoryEntry>? directoryEntries;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  QueryDirectoryContentsResponse({this.directoryEntries, this.nextPageToken});

  QueryDirectoryContentsResponse.fromJson(core.Map json_)
    : this(
        directoryEntries:
            (json_['directoryEntries'] as core.List?)
                ?.map(
                  (value) => DirectoryEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (directoryEntries != null) 'directoryEntries': directoryEntries!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// `QueryRepositoryDirectoryContents` response message.
class QueryRepositoryDirectoryContentsResponse {
  /// List of entries in the directory.
  core.List<DirectoryEntry>? directoryEntries;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  QueryRepositoryDirectoryContentsResponse({
    this.directoryEntries,
    this.nextPageToken,
  });

  QueryRepositoryDirectoryContentsResponse.fromJson(core.Map json_)
    : this(
        directoryEntries:
            (json_['directoryEntries'] as core.List?)
                ?.map(
                  (value) => DirectoryEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (directoryEntries != null) 'directoryEntries': directoryEntries!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// `QueryWorkflowInvocationActions` response message.
class QueryWorkflowInvocationActionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of workflow invocation actions.
  core.List<WorkflowInvocationAction>? workflowInvocationActions;

  QueryWorkflowInvocationActionsResponse({
    this.nextPageToken,
    this.workflowInvocationActions,
  });

  QueryWorkflowInvocationActionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        workflowInvocationActions:
            (json_['workflowInvocationActions'] as core.List?)
                ?.map(
                  (value) => WorkflowInvocationAction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (workflowInvocationActions != null)
      'workflowInvocationActions': workflowInvocationActions!,
  };
}

/// `ReadFile` response message.
class ReadFileResponse {
  /// The file's contents.
  core.String? fileContents;
  core.List<core.int> get fileContentsAsBytes =>
      convert.base64.decode(fileContents!);

  set fileContentsAsBytes(core.List<core.int> bytes_) {
    fileContents = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  ReadFileResponse({this.fileContents});

  ReadFileResponse.fromJson(core.Map json_)
    : this(fileContents: json_['fileContents'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (fileContents != null) 'fileContents': fileContents!,
  };
}

/// `ReadRepositoryFile` response message.
typedef ReadRepositoryFileResponse = $Shared16;

/// Represents a database relation.
class Relation {
  /// Additional options that will be provided as key/value pairs into the
  /// options clause of a create table/view statement.
  ///
  /// See
  /// https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language
  /// for more information on which options are supported.
  core.Map<core.String, core.String>? additionalOptions;

  /// A list of columns or SQL expressions used to cluster the table.
  core.List<core.String>? clusterExpressions;

  /// The connection specifying the credentials to be used to read and write to
  /// external storage, such as Cloud Storage.
  ///
  /// The connection can have the form \`{project}.{location}.{connection_id}\`
  /// or \`projects/{project}/locations/{location}/connections/{connection_id}",
  /// or be set to DEFAULT.
  ///
  /// Optional.
  core.String? connection;

  /// A list of actions that this action depends on.
  core.List<Target>? dependencyTargets;

  /// Whether this action is disabled (i.e. should not be run).
  core.bool? disabled;

  /// The file format for the BigQuery table.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Default value.
  /// - "PARQUET" : Apache Parquet format.
  core.String? fileFormat;

  /// Configures `INCREMENTAL_TABLE` settings for this relation.
  ///
  /// Only set if `relation_type` is `INCREMENTAL_TABLE`.
  IncrementalTableConfig? incrementalTableConfig;

  /// Sets the partition expiration in days.
  core.int? partitionExpirationDays;

  /// The SQL expression used to partition the relation.
  core.String? partitionExpression;

  /// SQL statements to be executed after creating the relation.
  core.List<core.String>? postOperations;

  /// SQL statements to be executed before creating the relation.
  core.List<core.String>? preOperations;

  /// Descriptor for the relation and its columns.
  RelationDescriptor? relationDescriptor;

  /// The type of this relation.
  /// Possible string values are:
  /// - "RELATION_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "TABLE" : The relation is a table.
  /// - "VIEW" : The relation is a view.
  /// - "INCREMENTAL_TABLE" : The relation is an incrementalized table.
  /// - "MATERIALIZED_VIEW" : The relation is a materialized view.
  core.String? relationType;

  /// Specifies whether queries on this table must include a predicate filter
  /// that filters on the partitioning column.
  core.bool? requirePartitionFilter;

  /// The SELECT query which returns rows which this relation should contain.
  core.String? selectQuery;

  /// The fully qualified location prefix of the external folder where table
  /// data is stored.
  ///
  /// The URI should be in the format `gs://bucket/path_to_table/`.
  ///
  /// Optional.
  core.String? storageUri;

  /// The table format for the BigQuery table.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TABLE_FORMAT_UNSPECIFIED" : Default value.
  /// - "ICEBERG" : Apache Iceberg format.
  core.String? tableFormat;

  /// Arbitrary, user-defined tags on this action.
  core.List<core.String>? tags;

  Relation({
    this.additionalOptions,
    this.clusterExpressions,
    this.connection,
    this.dependencyTargets,
    this.disabled,
    this.fileFormat,
    this.incrementalTableConfig,
    this.partitionExpirationDays,
    this.partitionExpression,
    this.postOperations,
    this.preOperations,
    this.relationDescriptor,
    this.relationType,
    this.requirePartitionFilter,
    this.selectQuery,
    this.storageUri,
    this.tableFormat,
    this.tags,
  });

  Relation.fromJson(core.Map json_)
    : this(
        additionalOptions: (json_['additionalOptions']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        clusterExpressions:
            (json_['clusterExpressions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        connection: json_['connection'] as core.String?,
        dependencyTargets:
            (json_['dependencyTargets'] as core.List?)
                ?.map(
                  (value) => Target.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        disabled: json_['disabled'] as core.bool?,
        fileFormat: json_['fileFormat'] as core.String?,
        incrementalTableConfig:
            json_.containsKey('incrementalTableConfig')
                ? IncrementalTableConfig.fromJson(
                  json_['incrementalTableConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        partitionExpirationDays: json_['partitionExpirationDays'] as core.int?,
        partitionExpression: json_['partitionExpression'] as core.String?,
        postOperations:
            (json_['postOperations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        preOperations:
            (json_['preOperations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        relationDescriptor:
            json_.containsKey('relationDescriptor')
                ? RelationDescriptor.fromJson(
                  json_['relationDescriptor']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        relationType: json_['relationType'] as core.String?,
        requirePartitionFilter: json_['requirePartitionFilter'] as core.bool?,
        selectQuery: json_['selectQuery'] as core.String?,
        storageUri: json_['storageUri'] as core.String?,
        tableFormat: json_['tableFormat'] as core.String?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalOptions != null) 'additionalOptions': additionalOptions!,
    if (clusterExpressions != null) 'clusterExpressions': clusterExpressions!,
    if (connection != null) 'connection': connection!,
    if (dependencyTargets != null) 'dependencyTargets': dependencyTargets!,
    if (disabled != null) 'disabled': disabled!,
    if (fileFormat != null) 'fileFormat': fileFormat!,
    if (incrementalTableConfig != null)
      'incrementalTableConfig': incrementalTableConfig!,
    if (partitionExpirationDays != null)
      'partitionExpirationDays': partitionExpirationDays!,
    if (partitionExpression != null)
      'partitionExpression': partitionExpression!,
    if (postOperations != null) 'postOperations': postOperations!,
    if (preOperations != null) 'preOperations': preOperations!,
    if (relationDescriptor != null) 'relationDescriptor': relationDescriptor!,
    if (relationType != null) 'relationType': relationType!,
    if (requirePartitionFilter != null)
      'requirePartitionFilter': requirePartitionFilter!,
    if (selectQuery != null) 'selectQuery': selectQuery!,
    if (storageUri != null) 'storageUri': storageUri!,
    if (tableFormat != null) 'tableFormat': tableFormat!,
    if (tags != null) 'tags': tags!,
  };
}

/// Describes a relation and its columns.
class RelationDescriptor {
  /// A set of BigQuery labels that should be applied to the relation.
  core.Map<core.String, core.String>? bigqueryLabels;

  /// A list of descriptions of columns within the relation.
  core.List<ColumnDescriptor>? columns;

  /// A text description of the relation.
  core.String? description;

  RelationDescriptor({this.bigqueryLabels, this.columns, this.description});

  RelationDescriptor.fromJson(core.Map json_)
    : this(
        bigqueryLabels: (json_['bigqueryLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        columns:
            (json_['columns'] as core.List?)
                ?.map(
                  (value) => ColumnDescriptor.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        description: json_['description'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigqueryLabels != null) 'bigqueryLabels': bigqueryLabels!,
    if (columns != null) 'columns': columns!,
    if (description != null) 'description': description!,
  };
}

/// Represents a Dataform release configuration.
class ReleaseConfig {
  /// If set, fields of `code_compilation_config` override the default
  /// compilation settings that are specified in dataform.json.
  ///
  /// Optional.
  CodeCompilationConfig? codeCompilationConfig;

  /// Optional schedule (in cron format) for automatic creation of compilation
  /// results.
  ///
  /// Optional.
  core.String? cronSchedule;

  /// Disables automatic creation of compilation results.
  ///
  /// Optional.
  core.bool? disabled;

  /// Git commit/tag/branch name at which the repository should be compiled.
  ///
  /// Must exist in the remote repository. Examples: - a commit SHA: `12ade345`
  /// - a tag: `tag1` - a branch name: `branch1`
  ///
  /// Required.
  core.String? gitCommitish;

  /// All the metadata information that is used internally to serve the
  /// resource.
  ///
  /// For example: timestamps, flags, status fields, etc. The format of this
  /// field is a JSON string.
  ///
  /// Output only.
  core.String? internalMetadata;

  /// Identifier.
  ///
  /// The release config's name.
  core.String? name;

  /// Records of the 10 most recent scheduled release attempts, ordered in
  /// descending order of `release_time`.
  ///
  /// Updated whenever automatic creation of a compilation result is triggered
  /// by cron_schedule.
  ///
  /// Output only.
  core.List<ScheduledReleaseRecord>? recentScheduledReleaseRecords;

  /// The name of the currently released compilation result for this release
  /// config.
  ///
  /// This value is updated when a compilation result is automatically created
  /// from this release config (using cron_schedule), or when this resource is
  /// updated by API call (perhaps to roll back to an earlier release). The
  /// compilation result must have been created using this release config. Must
  /// be in the format `projects / * /locations / * /repositories / *
  /// /compilationResults / * `.
  ///
  /// Optional.
  core.String? releaseCompilationResult;

  /// Specifies the time zone to be used when interpreting cron_schedule.
  ///
  /// Must be a time zone name from the time zone database
  /// (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left
  /// unspecified, the default is UTC.
  ///
  /// Optional.
  core.String? timeZone;

  ReleaseConfig({
    this.codeCompilationConfig,
    this.cronSchedule,
    this.disabled,
    this.gitCommitish,
    this.internalMetadata,
    this.name,
    this.recentScheduledReleaseRecords,
    this.releaseCompilationResult,
    this.timeZone,
  });

  ReleaseConfig.fromJson(core.Map json_)
    : this(
        codeCompilationConfig:
            json_.containsKey('codeCompilationConfig')
                ? CodeCompilationConfig.fromJson(
                  json_['codeCompilationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cronSchedule: json_['cronSchedule'] as core.String?,
        disabled: json_['disabled'] as core.bool?,
        gitCommitish: json_['gitCommitish'] as core.String?,
        internalMetadata: json_['internalMetadata'] as core.String?,
        name: json_['name'] as core.String?,
        recentScheduledReleaseRecords:
            (json_['recentScheduledReleaseRecords'] as core.List?)
                ?.map(
                  (value) => ScheduledReleaseRecord.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        releaseCompilationResult:
            json_['releaseCompilationResult'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (codeCompilationConfig != null)
      'codeCompilationConfig': codeCompilationConfig!,
    if (cronSchedule != null) 'cronSchedule': cronSchedule!,
    if (disabled != null) 'disabled': disabled!,
    if (gitCommitish != null) 'gitCommitish': gitCommitish!,
    if (internalMetadata != null) 'internalMetadata': internalMetadata!,
    if (name != null) 'name': name!,
    if (recentScheduledReleaseRecords != null)
      'recentScheduledReleaseRecords': recentScheduledReleaseRecords!,
    if (releaseCompilationResult != null)
      'releaseCompilationResult': releaseCompilationResult!,
    if (timeZone != null) 'timeZone': timeZone!,
  };
}

/// `RemoveDirectory` request message.
typedef RemoveDirectoryRequest = $DirectoryRequest;

/// `RemoveDirectory` response message.
typedef RemoveDirectoryResponse = $Empty;

/// `RemoveFile` request message.
class RemoveFileRequest {
  /// The file's full path including filename, relative to the workspace root.
  ///
  /// Required.
  core.String? path;

  RemoveFileRequest({this.path});

  RemoveFileRequest.fromJson(core.Map json_)
    : this(path: json_['path'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (path != null) 'path': path!,
  };
}

/// `RemoveFile` response message.
typedef RemoveFileResponse = $Empty;

/// Represents a Dataform Git repository.
class Repository {
  /// The timestamp of when the repository was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A data encryption state of a Git repository if this Repository is
  /// protected by a KMS key.
  ///
  /// Output only.
  DataEncryptionState? dataEncryptionState;

  /// The repository's user-friendly name.
  ///
  /// Optional.
  core.String? displayName;

  /// If set, configures this repository to be linked to a Git remote.
  ///
  /// Optional.
  GitRemoteSettings? gitRemoteSettings;

  /// All the metadata information that is used internally to serve the
  /// resource.
  ///
  /// For example: timestamps, flags, status fields, etc. The format of this
  /// field is a JSON string.
  ///
  /// Output only.
  core.String? internalMetadata;

  /// The reference to a KMS encryption key.
  ///
  /// If provided, it will be used to encrypt user data in the repository and
  /// all child resources. It is not possible to add or update the encryption
  /// key after the repository is created. Example:
  /// `projects/{kms_project}/locations/{location}/keyRings/{key_location}/cryptoKeys/{key}`
  ///
  /// Optional.
  core.String? kmsKeyName;

  /// Repository user labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The repository's name.
  core.String? name;

  /// The name of the Secret Manager secret version to be used to interpolate
  /// variables into the .npmrc file for package installation operations.
  ///
  /// Must be in the format `projects / * /secrets / * /versions / * `. The file
  /// itself must be in a JSON format.
  ///
  /// Optional.
  core.String? npmrcEnvironmentVariablesSecretVersion;

  /// The service account to run workflow invocations under.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// Input only.
  ///
  /// If set to true, the authenticated user will be granted the
  /// roles/dataform.admin role on the created repository.
  ///
  /// Optional.
  core.bool? setAuthenticatedUserAdmin;

  /// If set, fields of `workspace_compilation_overrides` override the default
  /// compilation settings that are specified in dataform.json when creating
  /// workspace-scoped compilation results.
  ///
  /// See documentation for `WorkspaceCompilationOverrides` for more
  /// information.
  ///
  /// Optional.
  WorkspaceCompilationOverrides? workspaceCompilationOverrides;

  Repository({
    this.createTime,
    this.dataEncryptionState,
    this.displayName,
    this.gitRemoteSettings,
    this.internalMetadata,
    this.kmsKeyName,
    this.labels,
    this.name,
    this.npmrcEnvironmentVariablesSecretVersion,
    this.serviceAccount,
    this.setAuthenticatedUserAdmin,
    this.workspaceCompilationOverrides,
  });

  Repository.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        dataEncryptionState:
            json_.containsKey('dataEncryptionState')
                ? DataEncryptionState.fromJson(
                  json_['dataEncryptionState']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
        gitRemoteSettings:
            json_.containsKey('gitRemoteSettings')
                ? GitRemoteSettings.fromJson(
                  json_['gitRemoteSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        internalMetadata: json_['internalMetadata'] as core.String?,
        kmsKeyName: json_['kmsKeyName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        npmrcEnvironmentVariablesSecretVersion:
            json_['npmrcEnvironmentVariablesSecretVersion'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        setAuthenticatedUserAdmin:
            json_['setAuthenticatedUserAdmin'] as core.bool?,
        workspaceCompilationOverrides:
            json_.containsKey('workspaceCompilationOverrides')
                ? WorkspaceCompilationOverrides.fromJson(
                  json_['workspaceCompilationOverrides']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (dataEncryptionState != null)
      'dataEncryptionState': dataEncryptionState!,
    if (displayName != null) 'displayName': displayName!,
    if (gitRemoteSettings != null) 'gitRemoteSettings': gitRemoteSettings!,
    if (internalMetadata != null) 'internalMetadata': internalMetadata!,
    if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (npmrcEnvironmentVariablesSecretVersion != null)
      'npmrcEnvironmentVariablesSecretVersion':
          npmrcEnvironmentVariablesSecretVersion!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (setAuthenticatedUserAdmin != null)
      'setAuthenticatedUserAdmin': setAuthenticatedUserAdmin!,
    if (workspaceCompilationOverrides != null)
      'workspaceCompilationOverrides': workspaceCompilationOverrides!,
  };
}

/// `ResetWorkspaceChanges` request message.
class ResetWorkspaceChangesRequest {
  /// If set to true, untracked files will be deleted.
  ///
  /// Optional.
  core.bool? clean;

  /// Full file paths to reset back to their committed state including filename,
  /// rooted at workspace root.
  ///
  /// If left empty, all files will be reset.
  ///
  /// Optional.
  core.List<core.String>? paths;

  ResetWorkspaceChangesRequest({this.clean, this.paths});

  ResetWorkspaceChangesRequest.fromJson(core.Map json_)
    : this(
        clean: json_['clean'] as core.bool?,
        paths:
            (json_['paths'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clean != null) 'clean': clean!,
    if (paths != null) 'paths': paths!,
  };
}

/// `ResetWorkspaceChanges` response message.
typedef ResetWorkspaceChangesResponse = $Empty;

/// A record of an attempt to create a workflow invocation for this workflow
/// config.
class ScheduledExecutionRecord {
  /// The error status encountered upon this attempt to create the workflow
  /// invocation, if the attempt was unsuccessful.
  Status? errorStatus;

  /// The timestamp of this execution attempt.
  ///
  /// Output only.
  core.String? executionTime;

  /// The name of the created workflow invocation, if one was successfully
  /// created.
  ///
  /// Must be in the format `projects / * /locations / * /repositories / *
  /// /workflowInvocations / * `.
  core.String? workflowInvocation;

  ScheduledExecutionRecord({
    this.errorStatus,
    this.executionTime,
    this.workflowInvocation,
  });

  ScheduledExecutionRecord.fromJson(core.Map json_)
    : this(
        errorStatus:
            json_.containsKey('errorStatus')
                ? Status.fromJson(
                  json_['errorStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        executionTime: json_['executionTime'] as core.String?,
        workflowInvocation: json_['workflowInvocation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorStatus != null) 'errorStatus': errorStatus!,
    if (executionTime != null) 'executionTime': executionTime!,
    if (workflowInvocation != null) 'workflowInvocation': workflowInvocation!,
  };
}

/// A record of an attempt to create a compilation result for this release
/// config.
class ScheduledReleaseRecord {
  /// The name of the created compilation result, if one was successfully
  /// created.
  ///
  /// Must be in the format `projects / * /locations / * /repositories / *
  /// /compilationResults / * `.
  core.String? compilationResult;

  /// The error status encountered upon this attempt to create the compilation
  /// result, if the attempt was unsuccessful.
  Status? errorStatus;

  /// The timestamp of this release attempt.
  ///
  /// Output only.
  core.String? releaseTime;

  ScheduledReleaseRecord({
    this.compilationResult,
    this.errorStatus,
    this.releaseTime,
  });

  ScheduledReleaseRecord.fromJson(core.Map json_)
    : this(
        compilationResult: json_['compilationResult'] as core.String?,
        errorStatus:
            json_.containsKey('errorStatus')
                ? Status.fromJson(
                  json_['errorStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        releaseTime: json_['releaseTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (compilationResult != null) 'compilationResult': compilationResult!,
    if (errorStatus != null) 'errorStatus': errorStatus!,
    if (releaseTime != null) 'releaseTime': releaseTime!,
  };
}

/// Client-facing representation of a file search response.
class SearchFilesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// List of matched results.
  core.List<SearchResult>? searchResults;

  SearchFilesResponse({this.nextPageToken, this.searchResults});

  SearchFilesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        searchResults:
            (json_['searchResults'] as core.List?)
                ?.map(
                  (value) => SearchResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (searchResults != null) 'searchResults': searchResults!,
  };
}

/// Client-facing representation of a search result entry.
class SearchResult {
  /// Details when search result is a directory.
  DirectorySearchResult? directory;

  /// Details when search result is a file.
  FileSearchResult? file;

  SearchResult({this.directory, this.file});

  SearchResult.fromJson(core.Map json_)
    : this(
        directory:
            json_.containsKey('directory')
                ? DirectorySearchResult.fromJson(
                  json_['directory'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        file:
            json_.containsKey('file')
                ? FileSearchResult.fromJson(
                  json_['file'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (directory != null) 'directory': directory!,
    if (file != null) 'file': file!,
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

  SetIamPolicyRequest({this.policy});

  SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policy != null) 'policy': policy!,
  };
}

/// Simple load definition
typedef SimpleLoadMode = $Empty;

/// Definition of a SQL Data Preparation
class SqlDefinition {
  /// Error table configuration,
  ErrorTable? errorTable;

  /// Load configuration.
  LoadConfig? load;

  /// The SQL query representing the data preparation steps.
  ///
  /// Formatted as a Pipe SQL query statement.
  core.String? query;

  SqlDefinition({this.errorTable, this.load, this.query});

  SqlDefinition.fromJson(core.Map json_)
    : this(
        errorTable:
            json_.containsKey('errorTable')
                ? ErrorTable.fromJson(
                  json_['errorTable'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        load:
            json_.containsKey('load')
                ? LoadConfig.fromJson(
                  json_['load'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        query: json_['query'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorTable != null) 'errorTable': errorTable!,
    if (load != null) 'load': load!,
    if (query != null) 'query': query!,
  };
}

/// Configures fields for performing SSH authentication.
class SshAuthenticationConfig {
  /// Content of a public SSH key to verify an identity of a remote Git host.
  ///
  /// Required.
  core.String? hostPublicKey;

  /// The name of the Secret Manager secret version to use as a ssh private key
  /// for Git operations.
  ///
  /// Must be in the format `projects / * /secrets / * /versions / * `.
  ///
  /// Required.
  core.String? userPrivateKeySecretVersion;

  SshAuthenticationConfig({
    this.hostPublicKey,
    this.userPrivateKeySecretVersion,
  });

  SshAuthenticationConfig.fromJson(core.Map json_)
    : this(
        hostPublicKey: json_['hostPublicKey'] as core.String?,
        userPrivateKeySecretVersion:
            json_['userPrivateKeySecretVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hostPublicKey != null) 'hostPublicKey': hostPublicKey!,
    if (userPrivateKeySecretVersion != null)
      'userPrivateKeySecretVersion': userPrivateKeySecretVersion!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Represents an action identifier.
///
/// If the action writes output, the output will be written to the referenced
/// database object.
class Target {
  /// The action's database (Google Cloud project ID) .
  ///
  /// Optional.
  core.String? database;

  /// The action's name, within `database` and `schema`.
  ///
  /// Optional.
  core.String? name;

  /// The action's schema (BigQuery dataset ID), within `database`.
  ///
  /// Optional.
  core.String? schema;

  Target({this.database, this.name, this.schema});

  Target.fromJson(core.Map json_)
    : this(
        database: json_['database'] as core.String?,
        name: json_['name'] as core.String?,
        schema: json_['schema'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (database != null) 'database': database!,
    if (name != null) 'name': name!,
    if (schema != null) 'schema': schema!,
  };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Represents the Git state of a file with uncommitted changes.
class UncommittedFileChange {
  /// The file's full path including filename, relative to the workspace root.
  core.String? path;

  /// Indicates the status of the file.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ADDED" : The file has been newly added.
  /// - "DELETED" : The file has been deleted.
  /// - "MODIFIED" : The file has been modified.
  /// - "HAS_CONFLICTS" : The file contains merge conflicts.
  core.String? state;

  UncommittedFileChange({this.path, this.state});

  UncommittedFileChange.fromJson(core.Map json_)
    : this(
        path: json_['path'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (path != null) 'path': path!,
    if (state != null) 'state': state!,
  };
}

/// Represents a Dataform workflow configuration.
class WorkflowConfig {
  /// The timestamp of when the WorkflowConfig was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Optional schedule (in cron format) for automatic execution of this
  /// workflow config.
  ///
  /// Optional.
  core.String? cronSchedule;

  /// Disables automatic creation of workflow invocations.
  ///
  /// Optional.
  core.bool? disabled;

  /// All the metadata information that is used internally to serve the
  /// resource.
  ///
  /// For example: timestamps, flags, status fields, etc. The format of this
  /// field is a JSON string.
  ///
  /// Output only.
  core.String? internalMetadata;

  /// If left unset, a default InvocationConfig will be used.
  ///
  /// Optional.
  InvocationConfig? invocationConfig;

  /// Identifier.
  ///
  /// The workflow config's name.
  core.String? name;

  /// Records of the 10 most recent scheduled execution attempts, ordered in
  /// descending order of `execution_time`.
  ///
  /// Updated whenever automatic creation of a workflow invocation is triggered
  /// by cron_schedule.
  ///
  /// Output only.
  core.List<ScheduledExecutionRecord>? recentScheduledExecutionRecords;

  /// The name of the release config whose release_compilation_result should be
  /// executed.
  ///
  /// Must be in the format `projects / * /locations / * /repositories / *
  /// /releaseConfigs / * `.
  ///
  /// Required.
  core.String? releaseConfig;

  /// Specifies the time zone to be used when interpreting cron_schedule.
  ///
  /// Must be a time zone name from the time zone database
  /// (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left
  /// unspecified, the default is UTC.
  ///
  /// Optional.
  core.String? timeZone;

  /// The timestamp of when the WorkflowConfig was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  WorkflowConfig({
    this.createTime,
    this.cronSchedule,
    this.disabled,
    this.internalMetadata,
    this.invocationConfig,
    this.name,
    this.recentScheduledExecutionRecords,
    this.releaseConfig,
    this.timeZone,
    this.updateTime,
  });

  WorkflowConfig.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        cronSchedule: json_['cronSchedule'] as core.String?,
        disabled: json_['disabled'] as core.bool?,
        internalMetadata: json_['internalMetadata'] as core.String?,
        invocationConfig:
            json_.containsKey('invocationConfig')
                ? InvocationConfig.fromJson(
                  json_['invocationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        recentScheduledExecutionRecords:
            (json_['recentScheduledExecutionRecords'] as core.List?)
                ?.map(
                  (value) => ScheduledExecutionRecord.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        releaseConfig: json_['releaseConfig'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (cronSchedule != null) 'cronSchedule': cronSchedule!,
    if (disabled != null) 'disabled': disabled!,
    if (internalMetadata != null) 'internalMetadata': internalMetadata!,
    if (invocationConfig != null) 'invocationConfig': invocationConfig!,
    if (name != null) 'name': name!,
    if (recentScheduledExecutionRecords != null)
      'recentScheduledExecutionRecords': recentScheduledExecutionRecords!,
    if (releaseConfig != null) 'releaseConfig': releaseConfig!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Represents a single invocation of a compilation result.
class WorkflowInvocation {
  /// The name of the compilation result to use for this invocation.
  ///
  /// Must be in the format `projects / * /locations / * /repositories / *
  /// /compilationResults / * `.
  ///
  /// Immutable.
  core.String? compilationResult;

  /// Only set if the repository has a KMS Key.
  ///
  /// Output only.
  DataEncryptionState? dataEncryptionState;

  /// All the metadata information that is used internally to serve the
  /// resource.
  ///
  /// For example: timestamps, flags, status fields, etc. The format of this
  /// field is a JSON string.
  ///
  /// Output only.
  core.String? internalMetadata;

  /// If left unset, a default InvocationConfig will be used.
  ///
  /// Immutable.
  InvocationConfig? invocationConfig;

  /// This workflow invocation's timing details.
  ///
  /// Output only.
  Interval? invocationTiming;

  /// The workflow invocation's name.
  ///
  /// Output only.
  core.String? name;

  /// Metadata indicating whether this resource is user-scoped.
  ///
  /// `WorkflowInvocation` resource is `user_scoped` only if it is sourced from
  /// a compilation result and the compilation result is user-scoped.
  ///
  /// Output only.
  PrivateResourceMetadata? privateResourceMetadata;

  /// The resolved compilation result that was used to create this invocation.
  ///
  /// Will be in the format `projects / * /locations / * /repositories / *
  /// /compilationResults / * `.
  ///
  /// Output only.
  core.String? resolvedCompilationResult;

  /// This workflow invocation's current state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "RUNNING" : The workflow invocation is currently running.
  /// - "SUCCEEDED" : The workflow invocation succeeded. A terminal state.
  /// - "CANCELLED" : The workflow invocation was cancelled. A terminal state.
  /// - "FAILED" : The workflow invocation failed. A terminal state.
  /// - "CANCELING" : The workflow invocation is being cancelled, but some
  /// actions are still running.
  core.String? state;

  /// The name of the workflow config to invoke.
  ///
  /// Must be in the format `projects / * /locations / * /repositories / *
  /// /workflowConfigs / * `.
  ///
  /// Immutable.
  core.String? workflowConfig;

  WorkflowInvocation({
    this.compilationResult,
    this.dataEncryptionState,
    this.internalMetadata,
    this.invocationConfig,
    this.invocationTiming,
    this.name,
    this.privateResourceMetadata,
    this.resolvedCompilationResult,
    this.state,
    this.workflowConfig,
  });

  WorkflowInvocation.fromJson(core.Map json_)
    : this(
        compilationResult: json_['compilationResult'] as core.String?,
        dataEncryptionState:
            json_.containsKey('dataEncryptionState')
                ? DataEncryptionState.fromJson(
                  json_['dataEncryptionState']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        internalMetadata: json_['internalMetadata'] as core.String?,
        invocationConfig:
            json_.containsKey('invocationConfig')
                ? InvocationConfig.fromJson(
                  json_['invocationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        invocationTiming:
            json_.containsKey('invocationTiming')
                ? Interval.fromJson(
                  json_['invocationTiming']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        privateResourceMetadata:
            json_.containsKey('privateResourceMetadata')
                ? PrivateResourceMetadata.fromJson(
                  json_['privateResourceMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resolvedCompilationResult:
            json_['resolvedCompilationResult'] as core.String?,
        state: json_['state'] as core.String?,
        workflowConfig: json_['workflowConfig'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (compilationResult != null) 'compilationResult': compilationResult!,
    if (dataEncryptionState != null)
      'dataEncryptionState': dataEncryptionState!,
    if (internalMetadata != null) 'internalMetadata': internalMetadata!,
    if (invocationConfig != null) 'invocationConfig': invocationConfig!,
    if (invocationTiming != null) 'invocationTiming': invocationTiming!,
    if (name != null) 'name': name!,
    if (privateResourceMetadata != null)
      'privateResourceMetadata': privateResourceMetadata!,
    if (resolvedCompilationResult != null)
      'resolvedCompilationResult': resolvedCompilationResult!,
    if (state != null) 'state': state!,
    if (workflowConfig != null) 'workflowConfig': workflowConfig!,
  };
}

/// Represents a single action in a workflow invocation.
class WorkflowInvocationAction {
  /// The workflow action's bigquery action details.
  ///
  /// Output only.
  BigQueryAction? bigqueryAction;

  /// The action's identifier if the project had been compiled without any
  /// overrides configured.
  ///
  /// Unique within the compilation result.
  ///
  /// Output only.
  Target? canonicalTarget;

  /// The workflow action's data preparation action details.
  ///
  /// Output only.
  DataPreparationAction? dataPreparationAction;

  /// If and only if action's state is FAILED a failure reason is set.
  ///
  /// Output only.
  core.String? failureReason;

  /// All the metadata information that is used internally to serve the
  /// resource.
  ///
  /// For example: timestamps, flags, status fields, etc. The format of this
  /// field is a JSON string.
  ///
  /// Output only.
  core.String? internalMetadata;

  /// This action's timing details.
  ///
  /// `start_time` will be set if the action is in \[RUNNING, SUCCEEDED,
  /// CANCELLED, FAILED\] state. `end_time` will be set if the action is in
  /// \[SUCCEEDED, CANCELLED, FAILED\] state.
  ///
  /// Output only.
  Interval? invocationTiming;

  /// The workflow action's notebook action details.
  ///
  /// Output only.
  NotebookAction? notebookAction;

  /// This action's current state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PENDING" : The action has not yet been considered for invocation.
  /// - "RUNNING" : The action is currently running.
  /// - "SKIPPED" : Execution of the action was skipped because upstream
  /// dependencies did not all complete successfully. A terminal state.
  /// - "DISABLED" : Execution of the action was disabled as per the
  /// configuration of the corresponding compilation result action. A terminal
  /// state.
  /// - "SUCCEEDED" : The action succeeded. A terminal state.
  /// - "CANCELLED" : The action was cancelled. A terminal state.
  /// - "FAILED" : The action failed. A terminal state.
  core.String? state;

  /// This action's identifier.
  ///
  /// Unique within the workflow invocation.
  ///
  /// Output only.
  Target? target;

  WorkflowInvocationAction({
    this.bigqueryAction,
    this.canonicalTarget,
    this.dataPreparationAction,
    this.failureReason,
    this.internalMetadata,
    this.invocationTiming,
    this.notebookAction,
    this.state,
    this.target,
  });

  WorkflowInvocationAction.fromJson(core.Map json_)
    : this(
        bigqueryAction:
            json_.containsKey('bigqueryAction')
                ? BigQueryAction.fromJson(
                  json_['bigqueryAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        canonicalTarget:
            json_.containsKey('canonicalTarget')
                ? Target.fromJson(
                  json_['canonicalTarget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataPreparationAction:
            json_.containsKey('dataPreparationAction')
                ? DataPreparationAction.fromJson(
                  json_['dataPreparationAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        failureReason: json_['failureReason'] as core.String?,
        internalMetadata: json_['internalMetadata'] as core.String?,
        invocationTiming:
            json_.containsKey('invocationTiming')
                ? Interval.fromJson(
                  json_['invocationTiming']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        notebookAction:
            json_.containsKey('notebookAction')
                ? NotebookAction.fromJson(
                  json_['notebookAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        target:
            json_.containsKey('target')
                ? Target.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigqueryAction != null) 'bigqueryAction': bigqueryAction!,
    if (canonicalTarget != null) 'canonicalTarget': canonicalTarget!,
    if (dataPreparationAction != null)
      'dataPreparationAction': dataPreparationAction!,
    if (failureReason != null) 'failureReason': failureReason!,
    if (internalMetadata != null) 'internalMetadata': internalMetadata!,
    if (invocationTiming != null) 'invocationTiming': invocationTiming!,
    if (notebookAction != null) 'notebookAction': notebookAction!,
    if (state != null) 'state': state!,
    if (target != null) 'target': target!,
  };
}

/// Represents a Dataform Git workspace.
class Workspace {
  /// The timestamp of when the workspace was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A data encryption state of a Git repository if this Workspace is protected
  /// by a KMS key.
  ///
  /// Output only.
  DataEncryptionState? dataEncryptionState;

  /// All the metadata information that is used internally to serve the
  /// resource.
  ///
  /// For example: timestamps, flags, status fields, etc. The format of this
  /// field is a JSON string.
  ///
  /// Output only.
  core.String? internalMetadata;

  /// Identifier.
  ///
  /// The workspace's name.
  core.String? name;

  /// Metadata indicating whether this resource is user-scoped.
  ///
  /// For `Workspace` resources, the `user_scoped` field is always `true`.
  ///
  /// Output only.
  PrivateResourceMetadata? privateResourceMetadata;

  Workspace({
    this.createTime,
    this.dataEncryptionState,
    this.internalMetadata,
    this.name,
    this.privateResourceMetadata,
  });

  Workspace.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        dataEncryptionState:
            json_.containsKey('dataEncryptionState')
                ? DataEncryptionState.fromJson(
                  json_['dataEncryptionState']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        internalMetadata: json_['internalMetadata'] as core.String?,
        name: json_['name'] as core.String?,
        privateResourceMetadata:
            json_.containsKey('privateResourceMetadata')
                ? PrivateResourceMetadata.fromJson(
                  json_['privateResourceMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (dataEncryptionState != null)
      'dataEncryptionState': dataEncryptionState!,
    if (internalMetadata != null) 'internalMetadata': internalMetadata!,
    if (name != null) 'name': name!,
    if (privateResourceMetadata != null)
      'privateResourceMetadata': privateResourceMetadata!,
  };
}

/// Configures workspace compilation overrides for a repository.
class WorkspaceCompilationOverrides {
  /// The default database (Google Cloud project ID).
  ///
  /// Optional.
  core.String? defaultDatabase;

  /// The suffix that should be appended to all schema (BigQuery dataset ID)
  /// names.
  ///
  /// Optional.
  core.String? schemaSuffix;

  /// The prefix that should be prepended to all table names.
  ///
  /// Optional.
  core.String? tablePrefix;

  WorkspaceCompilationOverrides({
    this.defaultDatabase,
    this.schemaSuffix,
    this.tablePrefix,
  });

  WorkspaceCompilationOverrides.fromJson(core.Map json_)
    : this(
        defaultDatabase: json_['defaultDatabase'] as core.String?,
        schemaSuffix: json_['schemaSuffix'] as core.String?,
        tablePrefix: json_['tablePrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultDatabase != null) 'defaultDatabase': defaultDatabase!,
    if (schemaSuffix != null) 'schemaSuffix': schemaSuffix!,
    if (tablePrefix != null) 'tablePrefix': tablePrefix!,
  };
}

/// Represents the write file operation (for files added or modified).
typedef WriteFile = $Shared16;

/// `WriteFile` request message.
class WriteFileRequest {
  /// The file's contents.
  ///
  /// Required.
  core.String? contents;
  core.List<core.int> get contentsAsBytes => convert.base64.decode(contents!);

  set contentsAsBytes(core.List<core.int> bytes_) {
    contents = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The file.
  ///
  /// Required.
  core.String? path;

  WriteFileRequest({this.contents, this.path});

  WriteFileRequest.fromJson(core.Map json_)
    : this(
        contents: json_['contents'] as core.String?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contents != null) 'contents': contents!,
    if (path != null) 'path': path!,
  };
}

/// `WriteFile` response message.
typedef WriteFileResponse = $Empty;
