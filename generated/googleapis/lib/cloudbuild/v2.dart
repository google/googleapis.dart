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

/// Cloud Build API - v2
///
/// Creates and manages builds on Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/cloud-build/docs/>
///
/// Create an instance of [CloudBuildApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsConnectionsResource]
///       - [ProjectsLocationsConnectionsRepositoriesResource]
///     - [ProjectsLocationsOperationsResource]
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

/// Creates and manages builds on Google Cloud Platform.
class CloudBuildApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudBuildApi(http.Client client,
      {core.String rootUrl = 'https://cloudbuild.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsResource get connections =>
      ProjectsLocationsConnectionsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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
  async.Future<Location> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsRepositoriesResource get repositories =>
      ProjectsLocationsConnectionsRepositoriesResource(_requester);

  ProjectsLocationsConnectionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project and location where the connection will be
  /// created. Format: `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectionId] - Required. The ID to use for the Connection, which will
  /// become the final component of the Connection's resource name. Names must
  /// be unique per-project per-location. Allows alphanumeric characters and any
  /// of -._~%!$&'()*+,;=@.
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
    Connection request,
    core.String parent, {
    core.String? connectionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectionId != null) 'connectionId': [connectionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Connection to delete. Format: `projects
  /// / * /locations / * /connections / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [etag] - The current etag of the connection. If an etag is provided and
  /// does not match the current etag of the connection, deletion will be
  /// blocked and an ABORTED error will be returned.
  ///
  /// [validateOnly] - If set, validate the request, but do not actually post
  /// it.
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
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// FetchLinkableRepositories get repositories from SCM that are accessible
  /// and could be added to the connection.
  ///
  /// Request parameters:
  ///
  /// [connection] - Required. The name of the Connection. Format: `projects / *
  /// /locations / * /connections / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [pageSize] - Number of results to return in the list. Default to 20.
  ///
  /// [pageToken] - Page start.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchLinkableRepositoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchLinkableRepositoriesResponse> fetchLinkableRepositories(
    core.String connection, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' +
        core.Uri.encodeFull('$connection') +
        ':fetchLinkableRepositories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchLinkableRepositoriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Connection to retrieve. Format:
  /// `projects / * /locations / * /connections / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connection> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Connection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Connections in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// Connections. Format: `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Number of results to return in the list.
  ///
  /// [pageToken] - Page start.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectionsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a single connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the connection, in the format
  /// `projects/{project}/locations/{location}/connections/{connection_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the connection is not found a new
  /// connection will be created. In this situation `update_mask` is ignored.
  /// The creation will succeed only if the input connection has all the
  /// necessary information (e.g a github_config with both user_oauth_token and
  /// installation_id properties).
  ///
  /// [etag] - The current etag of the connection. If an etag is provided and
  /// does not match the current etag of the connection, update will be blocked
  /// and an ABORTED error will be returned.
  ///
  /// [updateMask] - The list of fields to be updated.
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
    Connection request,
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// ProcessWebhook is called by the external SCM for notifying of events.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project and location where the webhook will be
  /// received. Format: `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [webhookKey] - Arbitrary additional key to find the maching repository for
  /// a webhook event if needed.
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
  async.Future<Empty> processWebhook(
    HttpBody request,
    core.String parent, {
    core.String? webhookKey,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (webhookKey != null) 'webhookKey': [webhookKey],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/connections:processWebhook';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

class ProjectsLocationsConnectionsRepositoriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsRepositoriesResource(commons.ApiRequester client)
      : _requester = client;

  /// Fetches read token of a given repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [repository] - Required. The resource name of the repository in the format
  /// `projects / * /locations / * /connections / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchReadTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchReadTokenResponse> accessReadToken(
    FetchReadTokenRequest request,
    core.String repository, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$repository') + ':accessReadToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchReadTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches read/write token of a given repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [repository] - Required. The resource name of the repository in the format
  /// `projects / * /locations / * /connections / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchReadWriteTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchReadWriteTokenResponse> accessReadWriteToken(
    FetchReadWriteTokenRequest request,
    core.String repository, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$repository') + ':accessReadWriteToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchReadWriteTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates multiple repositories inside a connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The connection to contain all the repositories being
  /// created. Format: projects / * /locations / * /connections / * The parent
  /// field in the CreateRepositoryRequest messages must either be empty or
  /// match this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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
    BatchCreateRepositoriesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/repositories:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The connection to contain the repository. If the
  /// request is part of a BatchCreateRepositoriesRequest, this field should be
  /// empty or match the parent specified there.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [repositoryId] - Required. The ID to use for the repository, which will
  /// become the final component of the repository's resource name. This ID
  /// should be unique in the connection. Allows alphanumeric characters and any
  /// of -._~%!$&'()*+,;=@.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/repositories';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single repository.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Repository to delete. Format: `projects
  /// / * /locations / * /connections / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [etag] - The current etag of the repository. If an etag is provided and
  /// does not match the current etag of the repository, deletion will be
  /// blocked and an ABORTED error will be returned.
  ///
  /// [validateOnly] - If set, validate the request, but do not actually post
  /// it.
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
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetch the list of branches or tags for a given repository.
  ///
  /// Request parameters:
  ///
  /// [repository] - Required. The resource name of the repository in the format
  /// `projects / * /locations / * /connections / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Number of results to return in the list. Default to
  /// 20.
  ///
  /// [pageToken] - Optional. Page start.
  ///
  /// [refType] - Type of refs to fetch
  /// Possible string values are:
  /// - "REF_TYPE_UNSPECIFIED" : No type specified.
  /// - "TAG" : To fetch tags.
  /// - "BRANCH" : To fetch branches.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchGitRefsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchGitRefsResponse> fetchGitRefs(
    core.String repository, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? refType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (refType != null) 'refType': [refType],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$repository') + ':fetchGitRefs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchGitRefsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single repository.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Repository to retrieve. Format:
  /// `projects / * /locations / * /connections / * /repositories / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/repositories/\[^/\]+$`.
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
  async.Future<Repository> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Repository.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Repositories in a given connection.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// Repositories. Format: `projects / * /locations / * /connections / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. Expressions must follow API improvement proposal
  /// \[AIP-160\](https://google.aip.dev/160). e.g.
  /// `remote_uri:"https://github.com*"`.
  ///
  /// [pageSize] - Number of results to return in the list.
  ///
  /// [pageToken] - Page start.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/repositories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRepositoriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
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

/// Message for creating repositoritories in batch.
class BatchCreateRepositoriesRequest {
  /// The request messages specifying the repositories to create.
  ///
  /// Required.
  core.List<CreateRepositoryRequest>? requests;

  BatchCreateRepositoriesRequest({
    this.requests,
  });

  BatchCreateRepositoriesRequest.fromJson(core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => CreateRepositoryRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
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

/// Configuration for connections to Bitbucket Cloud.
class BitbucketCloudConfig {
  /// An access token with the `webhook`, `repository`, `repository:admin` and
  /// `pullrequest` scope access.
  ///
  /// It can be either a workspace, project or repository access token. It's
  /// recommended to use a system account to generate these credentials.
  ///
  /// Required.
  UserCredential? authorizerCredential;

  /// An access token with the `repository` access.
  ///
  /// It can be either a workspace, project or repository access token. It's
  /// recommended to use a system account to generate the credentials.
  ///
  /// Required.
  UserCredential? readAuthorizerCredential;

  /// SecretManager resource containing the webhook secret used to verify
  /// webhook events, formatted as `projects / * /secrets / * /versions / * `.
  ///
  /// Required.
  core.String? webhookSecretSecretVersion;

  /// The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
  ///
  /// Required.
  core.String? workspace;

  BitbucketCloudConfig({
    this.authorizerCredential,
    this.readAuthorizerCredential,
    this.webhookSecretSecretVersion,
    this.workspace,
  });

  BitbucketCloudConfig.fromJson(core.Map json_)
      : this(
          authorizerCredential: json_.containsKey('authorizerCredential')
              ? UserCredential.fromJson(json_['authorizerCredential']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readAuthorizerCredential:
              json_.containsKey('readAuthorizerCredential')
                  ? UserCredential.fromJson(json_['readAuthorizerCredential']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          webhookSecretSecretVersion:
              json_.containsKey('webhookSecretSecretVersion')
                  ? json_['webhookSecretSecretVersion'] as core.String
                  : null,
          workspace: json_.containsKey('workspace')
              ? json_['workspace'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizerCredential != null)
          'authorizerCredential': authorizerCredential!,
        if (readAuthorizerCredential != null)
          'readAuthorizerCredential': readAuthorizerCredential!,
        if (webhookSecretSecretVersion != null)
          'webhookSecretSecretVersion': webhookSecretSecretVersion!,
        if (workspace != null) 'workspace': workspace!,
      };
}

/// Configuration for connections to Bitbucket Data Center.
class BitbucketDataCenterConfig {
  /// A http access token with the `REPO_ADMIN` scope access.
  ///
  /// Required.
  UserCredential? authorizerCredential;

  /// The URI of the Bitbucket Data Center instance or cluster this connection
  /// is for.
  ///
  /// Required.
  core.String? hostUri;

  /// A http access token with the `REPO_READ` access.
  ///
  /// Required.
  UserCredential? readAuthorizerCredential;

  /// Version of the Bitbucket Data Center running on the `host_uri`.
  ///
  /// Output only.
  core.String? serverVersion;

  /// Configuration for using Service Directory to privately connect to a
  /// Bitbucket Data Center.
  ///
  /// This should only be set if the Bitbucket Data Center is hosted on-premises
  /// and not reachable by public internet. If this field is left empty, calls
  /// to the Bitbucket Data Center will be made over the public internet.
  ///
  /// Optional.
  GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig? serviceDirectoryConfig;

  /// SSL certificate to use for requests to the Bitbucket Data Center.
  ///
  /// Optional.
  core.String? sslCa;

  /// SecretManager resource containing the webhook secret used to verify
  /// webhook events, formatted as `projects / * /secrets / * /versions / * `.
  ///
  /// Required. Immutable.
  core.String? webhookSecretSecretVersion;

  BitbucketDataCenterConfig({
    this.authorizerCredential,
    this.hostUri,
    this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCa,
    this.webhookSecretSecretVersion,
  });

  BitbucketDataCenterConfig.fromJson(core.Map json_)
      : this(
          authorizerCredential: json_.containsKey('authorizerCredential')
              ? UserCredential.fromJson(json_['authorizerCredential']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hostUri: json_.containsKey('hostUri')
              ? json_['hostUri'] as core.String
              : null,
          readAuthorizerCredential:
              json_.containsKey('readAuthorizerCredential')
                  ? UserCredential.fromJson(json_['readAuthorizerCredential']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          serverVersion: json_.containsKey('serverVersion')
              ? json_['serverVersion'] as core.String
              : null,
          serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
              ? GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig.fromJson(
                  json_['serviceDirectoryConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sslCa:
              json_.containsKey('sslCa') ? json_['sslCa'] as core.String : null,
          webhookSecretSecretVersion:
              json_.containsKey('webhookSecretSecretVersion')
                  ? json_['webhookSecretSecretVersion'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizerCredential != null)
          'authorizerCredential': authorizerCredential!,
        if (hostUri != null) 'hostUri': hostUri!,
        if (readAuthorizerCredential != null)
          'readAuthorizerCredential': readAuthorizerCredential!,
        if (serverVersion != null) 'serverVersion': serverVersion!,
        if (serviceDirectoryConfig != null)
          'serviceDirectoryConfig': serviceDirectoryConfig!,
        if (sslCa != null) 'sslCa': sslCa!,
        if (webhookSecretSecretVersion != null)
          'webhookSecretSecretVersion': webhookSecretSecretVersion!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A connection to a SCM like GitHub, GitHub Enterprise, Bitbucket Data Center,
/// Bitbucket Cloud or GitLab.
class Connection {
  /// Allows clients to store small amounts of arbitrary data.
  core.Map<core.String, core.String>? annotations;

  /// Configuration for connections to Bitbucket Cloud.
  BitbucketCloudConfig? bitbucketCloudConfig;

  /// Configuration for connections to Bitbucket Data Center.
  BitbucketDataCenterConfig? bitbucketDataCenterConfig;

  /// Server assigned timestamp for when the connection was created.
  ///
  /// Output only.
  core.String? createTime;

  /// If disabled is set to true, functionality is disabled for this connection.
  ///
  /// Repository based API methods and webhooks processing for repositories in
  /// this connection will be disabled.
  core.bool? disabled;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  core.String? etag;

  /// Configuration for connections to github.com.
  GitHubConfig? githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig? githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com or an instance of GitLab
  /// Enterprise.
  GoogleDevtoolsCloudbuildV2GitLabConfig? gitlabConfig;

  /// Installation state of the Connection.
  ///
  /// Output only.
  InstallationState? installationState;

  /// The resource name of the connection, in the format
  /// `projects/{project}/locations/{location}/connections/{connection_id}`.
  ///
  /// Immutable.
  core.String? name;

  /// Set to true when the connection is being set up or updated in the
  /// background.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Server assigned timestamp for when the connection was updated.
  ///
  /// Output only.
  core.String? updateTime;

  Connection({
    this.annotations,
    this.bitbucketCloudConfig,
    this.bitbucketDataCenterConfig,
    this.createTime,
    this.disabled,
    this.etag,
    this.githubConfig,
    this.githubEnterpriseConfig,
    this.gitlabConfig,
    this.installationState,
    this.name,
    this.reconciling,
    this.updateTime,
  });

  Connection.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          bitbucketCloudConfig: json_.containsKey('bitbucketCloudConfig')
              ? BitbucketCloudConfig.fromJson(json_['bitbucketCloudConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bitbucketDataCenterConfig:
              json_.containsKey('bitbucketDataCenterConfig')
                  ? BitbucketDataCenterConfig.fromJson(
                      json_['bitbucketDataCenterConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          githubConfig: json_.containsKey('githubConfig')
              ? GitHubConfig.fromJson(
                  json_['githubConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          githubEnterpriseConfig: json_.containsKey('githubEnterpriseConfig')
              ? GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig.fromJson(
                  json_['githubEnterpriseConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gitlabConfig: json_.containsKey('gitlabConfig')
              ? GoogleDevtoolsCloudbuildV2GitLabConfig.fromJson(
                  json_['gitlabConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          installationState: json_.containsKey('installationState')
              ? InstallationState.fromJson(json_['installationState']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (bitbucketCloudConfig != null)
          'bitbucketCloudConfig': bitbucketCloudConfig!,
        if (bitbucketDataCenterConfig != null)
          'bitbucketDataCenterConfig': bitbucketDataCenterConfig!,
        if (createTime != null) 'createTime': createTime!,
        if (disabled != null) 'disabled': disabled!,
        if (etag != null) 'etag': etag!,
        if (githubConfig != null) 'githubConfig': githubConfig!,
        if (githubEnterpriseConfig != null)
          'githubEnterpriseConfig': githubEnterpriseConfig!,
        if (gitlabConfig != null) 'gitlabConfig': gitlabConfig!,
        if (installationState != null) 'installationState': installationState!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Message for creating a Repository.
class CreateRepositoryRequest {
  /// The connection to contain the repository.
  ///
  /// If the request is part of a BatchCreateRepositoriesRequest, this field
  /// should be empty or match the parent specified there.
  ///
  /// Required.
  core.String? parent;

  /// The repository to create.
  ///
  /// Required.
  Repository? repository;

  /// The ID to use for the repository, which will become the final component of
  /// the repository's resource name.
  ///
  /// This ID should be unique in the connection. Allows alphanumeric characters
  /// and any of -._~%!$&'()*+,;=@.
  ///
  /// Required.
  core.String? repositoryId;

  CreateRepositoryRequest({
    this.parent,
    this.repository,
    this.repositoryId,
  });

  CreateRepositoryRequest.fromJson(core.Map json_)
      : this(
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          repository: json_.containsKey('repository')
              ? Repository.fromJson(
                  json_['repository'] as core.Map<core.String, core.dynamic>)
              : null,
          repositoryId: json_.containsKey('repositoryId')
              ? json_['repositoryId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (repository != null) 'repository': repository!,
        if (repositoryId != null) 'repositoryId': repositoryId!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

/// Response for fetching git refs
class FetchGitRefsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Name of the refs fetched.
  core.List<core.String>? refNames;

  FetchGitRefsResponse({
    this.nextPageToken,
    this.refNames,
  });

  FetchGitRefsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          refNames: json_.containsKey('refNames')
              ? (json_['refNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (refNames != null) 'refNames': refNames!,
      };
}

/// Response message for FetchLinkableRepositories.
class FetchLinkableRepositoriesResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// repositories ready to be created.
  core.List<Repository>? repositories;

  FetchLinkableRepositoriesResponse({
    this.nextPageToken,
    this.repositories,
  });

  FetchLinkableRepositoriesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          repositories: json_.containsKey('repositories')
              ? (json_['repositories'] as core.List)
                  .map((value) => Repository.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (repositories != null) 'repositories': repositories!,
      };
}

/// Message for fetching SCM read token.
typedef FetchReadTokenRequest = $Empty;

/// Message for responding to get read token.
typedef FetchReadTokenResponse = $TokenResponse;

/// Message for fetching SCM read/write token.
typedef FetchReadWriteTokenRequest = $Empty;

/// Message for responding to get read/write token.
typedef FetchReadWriteTokenResponse = $TokenResponse;

/// Configuration for connections to github.com.
class GitHubConfig {
  /// GitHub App installation id.
  core.String? appInstallationId;

  /// OAuth credential of the account that authorized the Cloud Build GitHub
  /// App.
  ///
  /// It is recommended to use a robot account instead of a human user account.
  /// The OAuth token must be tied to the Cloud Build GitHub App.
  OAuthCredential? authorizerCredential;

  GitHubConfig({
    this.appInstallationId,
    this.authorizerCredential,
  });

  GitHubConfig.fromJson(core.Map json_)
      : this(
          appInstallationId: json_.containsKey('appInstallationId')
              ? json_['appInstallationId'] as core.String
              : null,
          authorizerCredential: json_.containsKey('authorizerCredential')
              ? OAuthCredential.fromJson(json_['authorizerCredential']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appInstallationId != null) 'appInstallationId': appInstallationId!,
        if (authorizerCredential != null)
          'authorizerCredential': authorizerCredential!,
      };
}

/// Configuration for connections to an instance of GitHub Enterprise.
class GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig {
  /// API Key used for authentication of webhook events.
  ///
  /// Required.
  core.String? apiKey;

  /// Id of the GitHub App created from the manifest.
  core.String? appId;

  /// ID of the installation of the GitHub App.
  core.String? appInstallationId;

  /// The URL-friendly name of the GitHub App.
  core.String? appSlug;

  /// The URI of the GitHub Enterprise host this connection is for.
  ///
  /// Required.
  core.String? hostUri;

  /// SecretManager resource containing the private key of the GitHub App,
  /// formatted as `projects / * /secrets / * /versions / * `.
  core.String? privateKeySecretVersion;

  /// GitHub Enterprise version installed at the host_uri.
  ///
  /// Output only.
  core.String? serverVersion;

  /// Configuration for using Service Directory to privately connect to a GitHub
  /// Enterprise server.
  ///
  /// This should only be set if the GitHub Enterprise server is hosted
  /// on-premises and not reachable by public internet. If this field is left
  /// empty, calls to the GitHub Enterprise server will be made over the public
  /// internet.
  GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig? serviceDirectoryConfig;

  /// SSL certificate to use for requests to GitHub Enterprise.
  core.String? sslCa;

  /// SecretManager resource containing the webhook secret of the GitHub App,
  /// formatted as `projects / * /secrets / * /versions / * `.
  core.String? webhookSecretSecretVersion;

  GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig({
    this.apiKey,
    this.appId,
    this.appInstallationId,
    this.appSlug,
    this.hostUri,
    this.privateKeySecretVersion,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCa,
    this.webhookSecretSecretVersion,
  });

  GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig.fromJson(core.Map json_)
      : this(
          apiKey: json_.containsKey('apiKey')
              ? json_['apiKey'] as core.String
              : null,
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          appInstallationId: json_.containsKey('appInstallationId')
              ? json_['appInstallationId'] as core.String
              : null,
          appSlug: json_.containsKey('appSlug')
              ? json_['appSlug'] as core.String
              : null,
          hostUri: json_.containsKey('hostUri')
              ? json_['hostUri'] as core.String
              : null,
          privateKeySecretVersion: json_.containsKey('privateKeySecretVersion')
              ? json_['privateKeySecretVersion'] as core.String
              : null,
          serverVersion: json_.containsKey('serverVersion')
              ? json_['serverVersion'] as core.String
              : null,
          serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
              ? GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig.fromJson(
                  json_['serviceDirectoryConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sslCa:
              json_.containsKey('sslCa') ? json_['sslCa'] as core.String : null,
          webhookSecretSecretVersion:
              json_.containsKey('webhookSecretSecretVersion')
                  ? json_['webhookSecretSecretVersion'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiKey != null) 'apiKey': apiKey!,
        if (appId != null) 'appId': appId!,
        if (appInstallationId != null) 'appInstallationId': appInstallationId!,
        if (appSlug != null) 'appSlug': appSlug!,
        if (hostUri != null) 'hostUri': hostUri!,
        if (privateKeySecretVersion != null)
          'privateKeySecretVersion': privateKeySecretVersion!,
        if (serverVersion != null) 'serverVersion': serverVersion!,
        if (serviceDirectoryConfig != null)
          'serviceDirectoryConfig': serviceDirectoryConfig!,
        if (sslCa != null) 'sslCa': sslCa!,
        if (webhookSecretSecretVersion != null)
          'webhookSecretSecretVersion': webhookSecretSecretVersion!,
      };
}

/// Configuration for connections to gitlab.com or an instance of GitLab
/// Enterprise.
class GoogleDevtoolsCloudbuildV2GitLabConfig {
  /// A GitLab personal access token with the `api` scope access.
  ///
  /// Required.
  UserCredential? authorizerCredential;

  /// The URI of the GitLab Enterprise host this connection is for.
  ///
  /// If not specified, the default value is https://gitlab.com.
  core.String? hostUri;

  /// A GitLab personal access token with the minimum `read_api` scope access.
  ///
  /// Required.
  UserCredential? readAuthorizerCredential;

  /// Version of the GitLab Enterprise server running on the `host_uri`.
  ///
  /// Output only.
  core.String? serverVersion;

  /// Configuration for using Service Directory to privately connect to a GitLab
  /// Enterprise server.
  ///
  /// This should only be set if the GitLab Enterprise server is hosted
  /// on-premises and not reachable by public internet. If this field is left
  /// empty, calls to the GitLab Enterprise server will be made over the public
  /// internet.
  GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig? serviceDirectoryConfig;

  /// SSL certificate to use for requests to GitLab Enterprise.
  core.String? sslCa;

  /// SecretManager resource containing the webhook secret of a GitLab
  /// Enterprise project, formatted as `projects / * /secrets / * /versions / *
  /// `.
  ///
  /// Required. Immutable.
  core.String? webhookSecretSecretVersion;

  GoogleDevtoolsCloudbuildV2GitLabConfig({
    this.authorizerCredential,
    this.hostUri,
    this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCa,
    this.webhookSecretSecretVersion,
  });

  GoogleDevtoolsCloudbuildV2GitLabConfig.fromJson(core.Map json_)
      : this(
          authorizerCredential: json_.containsKey('authorizerCredential')
              ? UserCredential.fromJson(json_['authorizerCredential']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hostUri: json_.containsKey('hostUri')
              ? json_['hostUri'] as core.String
              : null,
          readAuthorizerCredential:
              json_.containsKey('readAuthorizerCredential')
                  ? UserCredential.fromJson(json_['readAuthorizerCredential']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          serverVersion: json_.containsKey('serverVersion')
              ? json_['serverVersion'] as core.String
              : null,
          serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
              ? GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig.fromJson(
                  json_['serviceDirectoryConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sslCa:
              json_.containsKey('sslCa') ? json_['sslCa'] as core.String : null,
          webhookSecretSecretVersion:
              json_.containsKey('webhookSecretSecretVersion')
                  ? json_['webhookSecretSecretVersion'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizerCredential != null)
          'authorizerCredential': authorizerCredential!,
        if (hostUri != null) 'hostUri': hostUri!,
        if (readAuthorizerCredential != null)
          'readAuthorizerCredential': readAuthorizerCredential!,
        if (serverVersion != null) 'serverVersion': serverVersion!,
        if (serviceDirectoryConfig != null)
          'serviceDirectoryConfig': serviceDirectoryConfig!,
        if (sslCa != null) 'sslCa': sslCa!,
        if (webhookSecretSecretVersion != null)
          'webhookSecretSecretVersion': webhookSecretSecretVersion!,
      };
}

/// ServiceDirectoryConfig represents Service Directory configuration for a
/// connection.
class GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig {
  /// The Service Directory service name.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  ///
  /// Required.
  core.String? service;

  GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig({
    this.service,
  });

  GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig.fromJson(core.Map json_)
      : this(
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (service != null) 'service': service!,
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

/// Describes stage and necessary actions to be taken by the user to complete
/// the installation.
///
/// Used for GitHub and GitHub Enterprise based connections.
class InstallationState {
  /// Link to follow for next action.
  ///
  /// Empty string if the installation is already complete.
  ///
  /// Output only.
  core.String? actionUri;

  /// Message of what the user should do next to continue the installation.
  ///
  /// Empty string if the installation is already complete.
  ///
  /// Output only.
  core.String? message;

  /// Current step of the installation process.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STAGE_UNSPECIFIED" : No stage specified.
  /// - "PENDING_CREATE_APP" : Only for GitHub Enterprise. An App creation has
  /// been requested. The user needs to confirm the creation in their GitHub
  /// enterprise host.
  /// - "PENDING_USER_OAUTH" : User needs to authorize the GitHub (or
  /// Enterprise) App via OAuth.
  /// - "PENDING_INSTALL_APP" : User needs to follow the link to install the
  /// GitHub (or Enterprise) App.
  /// - "COMPLETE" : Installation process has been completed.
  core.String? stage;

  InstallationState({
    this.actionUri,
    this.message,
    this.stage,
  });

  InstallationState.fromJson(core.Map json_)
      : this(
          actionUri: json_.containsKey('actionUri')
              ? json_['actionUri'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          stage:
              json_.containsKey('stage') ? json_['stage'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionUri != null) 'actionUri': actionUri!,
        if (message != null) 'message': message!,
        if (stage != null) 'stage': stage!,
      };
}

/// Message for response to listing Connections.
class ListConnectionsResponse {
  /// The list of Connections.
  core.List<Connection>? connections;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListConnectionsResponse({
    this.connections,
    this.nextPageToken,
  });

  ListConnectionsResponse.fromJson(core.Map json_)
      : this(
          connections: json_.containsKey('connections')
              ? (json_['connections'] as core.List)
                  .map((value) => Connection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connections != null) 'connections': connections!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Message for response to listing Repositories.
class ListRepositoriesResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of Repositories.
  core.List<Repository>? repositories;

  ListRepositoriesResponse({
    this.nextPageToken,
    this.repositories,
  });

  ListRepositoriesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          repositories: json_.containsKey('repositories')
              ? (json_['repositories'] as core.List)
                  .map((value) => Repository.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (repositories != null) 'repositories': repositories!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Represents an OAuth token of the account that authorized the Connection, and
/// associated metadata.
class OAuthCredential {
  /// A SecretManager resource containing the OAuth token that authorizes the
  /// Cloud Build connection.
  ///
  /// Format: `projects / * /secrets / * /versions / * `.
  core.String? oauthTokenSecretVersion;

  /// The username associated to this token.
  ///
  /// Output only.
  core.String? username;

  OAuthCredential({
    this.oauthTokenSecretVersion,
    this.username,
  });

  OAuthCredential.fromJson(core.Map json_)
      : this(
          oauthTokenSecretVersion: json_.containsKey('oauthTokenSecretVersion')
              ? json_['oauthTokenSecretVersion'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (oauthTokenSecretVersion != null)
          'oauthTokenSecretVersion': oauthTokenSecretVersion!,
        if (username != null) 'username': username!,
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

/// A repository associated to a parent connection.
class Repository {
  /// Allows clients to store small amounts of arbitrary data.
  core.Map<core.String, core.String>? annotations;

  /// Server assigned timestamp for when the connection was created.
  ///
  /// Output only.
  core.String? createTime;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  core.String? etag;

  /// Resource name of the repository, in the format `projects / * /locations /
  /// * /connections / * /repositories / * `.
  ///
  /// Immutable.
  core.String? name;

  /// Git Clone HTTPS URI.
  ///
  /// Required.
  core.String? remoteUri;

  /// Server assigned timestamp for when the connection was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// External ID of the webhook created for the repository.
  ///
  /// Output only.
  core.String? webhookId;

  Repository({
    this.annotations,
    this.createTime,
    this.etag,
    this.name,
    this.remoteUri,
    this.updateTime,
    this.webhookId,
  });

  Repository.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          remoteUri: json_.containsKey('remoteUri')
              ? json_['remoteUri'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          webhookId: json_.containsKey('webhookId')
              ? json_['webhookId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (remoteUri != null) 'remoteUri': remoteUri!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (webhookId != null) 'webhookId': webhookId!,
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Represents a personal access token that authorized the Connection, and
/// associated metadata.
class UserCredential {
  /// A SecretManager resource containing the user token that authorizes the
  /// Cloud Build connection.
  ///
  /// Format: `projects / * /secrets / * /versions / * `.
  ///
  /// Required.
  core.String? userTokenSecretVersion;

  /// The username associated to this token.
  ///
  /// Output only.
  core.String? username;

  UserCredential({
    this.userTokenSecretVersion,
    this.username,
  });

  UserCredential.fromJson(core.Map json_)
      : this(
          userTokenSecretVersion: json_.containsKey('userTokenSecretVersion')
              ? json_['userTokenSecretVersion'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userTokenSecretVersion != null)
          'userTokenSecretVersion': userTokenSecretVersion!,
        if (username != null) 'username': username!,
      };
}
