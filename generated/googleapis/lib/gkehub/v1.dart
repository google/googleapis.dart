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

/// GKE Hub - v1
///
/// For more information, see
/// <https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster>
///
/// Create an instance of [GKEHubApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFeaturesResource]
///     - [ProjectsLocationsMembershipsResource]
///     - [ProjectsLocationsOperationsResource]
library gkehub.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class GKEHubApi {
  /// See, edit, configure, and delete your Google Cloud Platform data
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  GKEHubApi(http.Client client,
      {core.String rootUrl = 'https://gkehub.googleapis.com/',
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

  ProjectsLocationsFeaturesResource get features =>
      ProjectsLocationsFeaturesResource(_requester);
  ProjectsLocationsMembershipsResource get memberships =>
      ProjectsLocationsMembershipsResource(_requester);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsFeaturesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFeaturesResource(commons.ApiRequester client)
      : _requester = client;

  /// Adds a new Feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the Feature will be
  /// created. Specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [featureId] - The ID of the feature to create.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    Feature request,
    core.String parent, {
    core.String? featureId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (featureId != null) 'featureId': [featureId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/features';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Removes a Feature.
  ///
  /// Request parameters:
  ///
  /// [name] - The Feature resource name in the format `projects / * /locations
  /// / * /features / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [force] - If set to true, the delete will ignore any outstanding resources
  /// for this Feature (that is, `FeatureState.has_resources` is set to true).
  /// These resources will NOT be cleaned up or modified in any way.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
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

  /// Gets details of a single Feature.
  ///
  /// Request parameters:
  ///
  /// [name] - The Feature resource name in the format `projects / * /locations
  /// / * /features / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Feature].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Feature> get(
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
    return Feature.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Features in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the Features will be
  /// listed. Specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Lists Features that match the filter expression, following the
  /// syntax outlined in https://google.aip.dev/160. Examples: - Feature with
  /// the name "servicemesh" in project "foo-proj": name =
  /// "projects/foo-proj/locations/global/features/servicemesh" - Features that
  /// have a label called `foo`: labels.foo:* - Features that have a label
  /// called `foo` whose value is `bar`: labels.foo = bar
  ///
  /// [orderBy] - One or more fields to compare and use to sort the output. See
  /// https://google.aip.dev/132#ordering.
  ///
  /// [pageSize] - When requesting a 'page' of resources, `page_size` specifies
  /// number of resources to return. If unspecified or set to 0, all resources
  /// will be returned.
  ///
  /// [pageToken] - Token returned by previous call to `ListFeatures` which
  /// specifies the position in the list from where to continue listing the
  /// resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFeaturesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFeaturesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/features';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFeaturesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The Feature resource name in the format `projects / * /locations
  /// / * /features / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Mask of fields to update.
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
    Feature request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/features/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/features/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

class ProjectsLocationsMembershipsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMembershipsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Membership.
  ///
  /// **This is currently only supported for GKE clusters on Google Cloud**. To
  /// register other clusters, follow the instructions at
  /// https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the
  /// Memberships will be created. Specified in the format `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [membershipId] - Required. Client chosen ID for the membership.
  /// `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most
  /// 63 characters in length 2. It must consist of lower case alphanumeric
  /// characters or `-` 3. It must start and end with an alphanumeric character
  /// Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with
  /// a maximum length of 63 characters.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    Membership request,
    core.String parent, {
    core.String? membershipId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (membershipId != null) 'membershipId': [membershipId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Removes a Membership.
  ///
  /// **This is currently only supported for GKE clusters on Google Cloud**. To
  /// unregister other clusters, follow the instructions at
  /// https://cloud.google.com/anthos/multicluster-management/connect/unregistering-a-cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Membership resource name in the format `projects /
  /// * /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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

  /// Generates the manifest for deployment of the GKE connect agent.
  ///
  /// **This method is used internally by Google-provided libraries.** Most
  /// clients should not need to call this method directly.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Membership resource name the Agent will associate
  /// with, in the format `projects / * /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [imagePullSecretContent] - Optional. The image pull secret content for the
  /// registry, if not public.
  ///
  /// [isUpgrade] - Optional. If true, generate the resources for upgrade only.
  /// Some resources generated only for installation (e.g. secrets) will be
  /// excluded.
  ///
  /// [namespace] - Optional. Namespace for GKE Connect agent resources.
  /// Defaults to `gke-connect`. The Connect Agent is authorized automatically
  /// when run in the default namespace. Otherwise, explicit authorization must
  /// be granted with an additional IAM binding.
  ///
  /// [proxy] - Optional. URI of a proxy if connectivity from the agent to
  /// gkeconnect.googleapis.com requires the use of a proxy. Format must be in
  /// the form `http(s)://{proxy_address}`, depending on the HTTP/HTTPS protocol
  /// supported by the proxy. This will direct the connect agent's outbound
  /// traffic through a HTTP(S) proxy.
  ///
  /// [registry] - Optional. The registry to fetch the connect agent image from.
  /// Defaults to gcr.io/gkeconnect.
  ///
  /// [version] - Optional. The Connect agent version to use. Defaults to the
  /// most current version.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateConnectManifestResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateConnectManifestResponse> generateConnectManifest(
    core.String name, {
    core.String? imagePullSecretContent,
    core.bool? isUpgrade,
    core.String? namespace,
    core.String? proxy,
    core.String? registry,
    core.String? version,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (imagePullSecretContent != null)
        'imagePullSecretContent': [imagePullSecretContent],
      if (isUpgrade != null) 'isUpgrade': ['${isUpgrade}'],
      if (namespace != null) 'namespace': [namespace],
      if (proxy != null) 'proxy': [proxy],
      if (registry != null) 'registry': [registry],
      if (version != null) 'version': [version],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$name') + ':generateConnectManifest';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GenerateConnectManifestResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a Membership.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Membership resource name in the format `projects /
  /// * /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Membership].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Membership> get(
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
    return Membership.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Memberships in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the
  /// Memberships will be listed. Specified in the format `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Lists Memberships that match the filter expression,
  /// following the syntax outlined in https://google.aip.dev/160. Examples: -
  /// Name is `bar` in project `foo-proj` and location `global`: name =
  /// "projects/foo-proj/locations/global/membership/bar" - Memberships that
  /// have a label called `foo`: labels.foo:* - Memberships that have a label
  /// called `foo` whose value is `bar`: labels.foo = bar - Memberships in the
  /// CREATING state: state = CREATING
  ///
  /// [orderBy] - Optional. One or more fields to compare and use to sort the
  /// output. See https://google.aip.dev/132#ordering.
  ///
  /// [pageSize] - Optional. When requesting a 'page' of resources, `page_size`
  /// specifies number of resources to return. If unspecified or set to 0, all
  /// resources will be returned.
  ///
  /// [pageToken] - Optional. Token returned by previous call to
  /// `ListMemberships` which specifies the position in the list from where to
  /// continue listing the resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMembershipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMembershipsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListMembershipsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Membership.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Membership resource name in the format `projects /
  /// * /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Mask of fields to update.
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
    Membership request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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
    final _body = convert.json.encode(request.toJson());
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
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

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey('auditLogConfigs')) {
      auditLogConfigs = (_json['auditLogConfigs'] as core.List)
          .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null)
          'auditLogConfigs':
              auditLogConfigs!.map((value) => value.toJson()).toList(),
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  ///
  /// Follows the same format of Binding.members.
  core.List<core.String>? exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String? logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey('exemptedMembers')) {
      exemptedMembers = (_json['exemptedMembers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (exemptedMembers != null) 'exemptedMembers': exemptedMembers!,
        if (logType != null) 'logType': logType!,
      };
}

/// Authority encodes how Google will recognize identities from this Membership.
///
/// See the workload identity documentation for more details:
/// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
class Authority {
  /// An identity provider that reflects the `issuer` in the workload identity
  /// pool.
  ///
  /// Output only.
  core.String? identityProvider;

  /// A JSON Web Token (JWT) issuer URI.
  ///
  /// `issuer` must start with `https://` and be a valid URL with length <2000
  /// characters. If set, then Google will allow valid OIDC tokens from this
  /// issuer to authenticate within the workload_identity_pool. OIDC discovery
  /// will be performed on this URI to validate tokens from the issuer. Clearing
  /// `issuer` disables Workload Identity. `issuer` cannot be directly modified;
  /// it must be cleared (and Workload Identity disabled) before using a new
  /// issuer (and re-enabling Workload Identity).
  ///
  /// Optional.
  core.String? issuer;

  /// OIDC verification keys for this Membership in JWKS format (RFC 7517).
  ///
  /// When this field is set, OIDC discovery will NOT be performed on `issuer`,
  /// and instead OIDC tokens will be validated using this field.
  ///
  /// Optional.
  core.String? oidcJwks;
  core.List<core.int> get oidcJwksAsBytes => convert.base64.decode(oidcJwks!);

  set oidcJwksAsBytes(core.List<core.int> _bytes) {
    oidcJwks =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The name of the workload identity pool in which `issuer` will be
  /// recognized.
  ///
  /// There is a single Workload Identity Pool per Hub that is shared between
  /// all Memberships that belong to that Hub. For a Hub hosted in {PROJECT_ID},
  /// the workload pool format is `{PROJECT_ID}.hub.id.goog`, although this is
  /// subject to change in newer versions of this API.
  ///
  /// Output only.
  core.String? workloadIdentityPool;

  Authority();

  Authority.fromJson(core.Map _json) {
    if (_json.containsKey('identityProvider')) {
      identityProvider = _json['identityProvider'] as core.String;
    }
    if (_json.containsKey('issuer')) {
      issuer = _json['issuer'] as core.String;
    }
    if (_json.containsKey('oidcJwks')) {
      oidcJwks = _json['oidcJwks'] as core.String;
    }
    if (_json.containsKey('workloadIdentityPool')) {
      workloadIdentityPool = _json['workloadIdentityPool'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (identityProvider != null) 'identityProvider': identityProvider!,
        if (issuer != null) 'issuer': issuer!,
        if (oidcJwks != null) 'oidcJwks': oidcJwks!,
        if (workloadIdentityPool != null)
          'workloadIdentityPool': workloadIdentityPool!,
      };
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
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

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!.toJson(),
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpec {
  /// Multicluster Ingress-specific spec.
  MultiClusterIngressFeatureSpec? multiclusteringress;

  CommonFeatureSpec();

  CommonFeatureSpec.fromJson(core.Map _json) {
    if (_json.containsKey('multiclusteringress')) {
      multiclusteringress = MultiClusterIngressFeatureSpec.fromJson(
          _json['multiclusteringress'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (multiclusteringress != null)
          'multiclusteringress': multiclusteringress!.toJson(),
      };
}

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureState {
  /// The "running state" of the Feature in this Hub.
  ///
  /// Output only.
  FeatureState? state;

  CommonFeatureState();

  CommonFeatureState.fromJson(core.Map _json) {
    if (_json.containsKey('state')) {
      state = FeatureState.fromJson(
          _json['state'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!.toJson(),
      };
}

/// Configuration for Config Sync
class ConfigManagementConfigSync {
  /// Git repo configuration for the cluster.
  ConfigManagementGitConfig? git;

  /// Specifies whether the Config Sync Repo is in “hierarchical” or
  /// “unstructured” mode.
  core.String? sourceFormat;

  ConfigManagementConfigSync();

  ConfigManagementConfigSync.fromJson(core.Map _json) {
    if (_json.containsKey('git')) {
      git = ConfigManagementGitConfig.fromJson(
          _json['git'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sourceFormat')) {
      sourceFormat = _json['sourceFormat'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (git != null) 'git': git!.toJson(),
        if (sourceFormat != null) 'sourceFormat': sourceFormat!,
      };
}

/// The state of ConfigSync's deployment on a cluster
class ConfigManagementConfigSyncDeploymentState {
  /// Deployment state of the git-sync pod
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? gitSync;

  /// Deployment state of the importer pod
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? importer;

  /// Deployment state of the monitor pod
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? monitor;

  /// Deployment state of reconciler-manager pod
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? reconcilerManager;

  /// Deployment state of root-reconciler
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? rootReconciler;

  /// Deployment state of the syncer pod
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? syncer;

  ConfigManagementConfigSyncDeploymentState();

  ConfigManagementConfigSyncDeploymentState.fromJson(core.Map _json) {
    if (_json.containsKey('gitSync')) {
      gitSync = _json['gitSync'] as core.String;
    }
    if (_json.containsKey('importer')) {
      importer = _json['importer'] as core.String;
    }
    if (_json.containsKey('monitor')) {
      monitor = _json['monitor'] as core.String;
    }
    if (_json.containsKey('reconcilerManager')) {
      reconcilerManager = _json['reconcilerManager'] as core.String;
    }
    if (_json.containsKey('rootReconciler')) {
      rootReconciler = _json['rootReconciler'] as core.String;
    }
    if (_json.containsKey('syncer')) {
      syncer = _json['syncer'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (gitSync != null) 'gitSync': gitSync!,
        if (importer != null) 'importer': importer!,
        if (monitor != null) 'monitor': monitor!,
        if (reconcilerManager != null) 'reconcilerManager': reconcilerManager!,
        if (rootReconciler != null) 'rootReconciler': rootReconciler!,
        if (syncer != null) 'syncer': syncer!,
      };
}

/// State information for ConfigSync
class ConfigManagementConfigSyncState {
  /// Information about the deployment of ConfigSync, including the version of
  /// the various Pods deployed
  ConfigManagementConfigSyncDeploymentState? deploymentState;

  /// The state of ConfigSync's process to sync configs to a cluster
  ConfigManagementSyncState? syncState;

  /// The version of ConfigSync deployed
  ConfigManagementConfigSyncVersion? version;

  ConfigManagementConfigSyncState();

  ConfigManagementConfigSyncState.fromJson(core.Map _json) {
    if (_json.containsKey('deploymentState')) {
      deploymentState = ConfigManagementConfigSyncDeploymentState.fromJson(
          _json['deploymentState'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('syncState')) {
      syncState = ConfigManagementSyncState.fromJson(
          _json['syncState'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('version')) {
      version = ConfigManagementConfigSyncVersion.fromJson(
          _json['version'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentState != null)
          'deploymentState': deploymentState!.toJson(),
        if (syncState != null) 'syncState': syncState!.toJson(),
        if (version != null) 'version': version!.toJson(),
      };
}

/// Specific versioning information pertaining to ConfigSync's Pods
class ConfigManagementConfigSyncVersion {
  /// Version of the deployed git-sync pod
  core.String? gitSync;

  /// Version of the deployed importer pod
  core.String? importer;

  /// Version of the deployed monitor pod
  core.String? monitor;

  /// Version of the deployed reconciler-manager pod
  core.String? reconcilerManager;

  /// Version of the deployed reconciler container in root-reconciler pod
  core.String? rootReconciler;

  /// Version of the deployed syncer pod
  core.String? syncer;

  ConfigManagementConfigSyncVersion();

  ConfigManagementConfigSyncVersion.fromJson(core.Map _json) {
    if (_json.containsKey('gitSync')) {
      gitSync = _json['gitSync'] as core.String;
    }
    if (_json.containsKey('importer')) {
      importer = _json['importer'] as core.String;
    }
    if (_json.containsKey('monitor')) {
      monitor = _json['monitor'] as core.String;
    }
    if (_json.containsKey('reconcilerManager')) {
      reconcilerManager = _json['reconcilerManager'] as core.String;
    }
    if (_json.containsKey('rootReconciler')) {
      rootReconciler = _json['rootReconciler'] as core.String;
    }
    if (_json.containsKey('syncer')) {
      syncer = _json['syncer'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (gitSync != null) 'gitSync': gitSync!,
        if (importer != null) 'importer': importer!,
        if (monitor != null) 'monitor': monitor!,
        if (reconcilerManager != null) 'reconcilerManager': reconcilerManager!,
        if (rootReconciler != null) 'rootReconciler': rootReconciler!,
        if (syncer != null) 'syncer': syncer!,
      };
}

/// Model for a config file in the git repo with an associated Sync error
class ConfigManagementErrorResource {
  /// Group/version/kind of the resource that is causing an error
  ConfigManagementGroupVersionKind? resourceGvk;

  /// Metadata name of the resource that is causing an error
  core.String? resourceName;

  /// Namespace of the resource that is causing an error
  core.String? resourceNamespace;

  /// Path in the git repo of the erroneous config
  core.String? sourcePath;

  ConfigManagementErrorResource();

  ConfigManagementErrorResource.fromJson(core.Map _json) {
    if (_json.containsKey('resourceGvk')) {
      resourceGvk = ConfigManagementGroupVersionKind.fromJson(
          _json['resourceGvk'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('resourceName')) {
      resourceName = _json['resourceName'] as core.String;
    }
    if (_json.containsKey('resourceNamespace')) {
      resourceNamespace = _json['resourceNamespace'] as core.String;
    }
    if (_json.containsKey('sourcePath')) {
      sourcePath = _json['sourcePath'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceGvk != null) 'resourceGvk': resourceGvk!.toJson(),
        if (resourceName != null) 'resourceName': resourceName!,
        if (resourceNamespace != null) 'resourceNamespace': resourceNamespace!,
        if (sourcePath != null) 'sourcePath': sourcePath!,
      };
}

/// State of Policy Controller installation.
class ConfigManagementGatekeeperDeploymentState {
  /// Status of gatekeeper-audit deployment.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? gatekeeperAudit;

  /// Status of gatekeeper-controller-manager pod.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? gatekeeperControllerManagerState;

  ConfigManagementGatekeeperDeploymentState();

  ConfigManagementGatekeeperDeploymentState.fromJson(core.Map _json) {
    if (_json.containsKey('gatekeeperAudit')) {
      gatekeeperAudit = _json['gatekeeperAudit'] as core.String;
    }
    if (_json.containsKey('gatekeeperControllerManagerState')) {
      gatekeeperControllerManagerState =
          _json['gatekeeperControllerManagerState'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (gatekeeperAudit != null) 'gatekeeperAudit': gatekeeperAudit!,
        if (gatekeeperControllerManagerState != null)
          'gatekeeperControllerManagerState': gatekeeperControllerManagerState!,
      };
}

/// Git repo configuration for a single cluster.
class ConfigManagementGitConfig {
  /// The GCP Service Account Email used for auth when secret_type is
  /// gcpServiceAccount.
  core.String? gcpServiceAccountEmail;

  /// URL for the HTTPS proxy to be used when communicating with the Git repo.
  core.String? httpsProxy;

  /// The path within the Git repository that represents the top level of the
  /// repo to sync.
  ///
  /// Default: the root directory of the repository.
  core.String? policyDir;

  /// Type of secret configured for access to the Git repo.
  core.String? secretType;

  /// The branch of the repository to sync from.
  ///
  /// Default: master.
  core.String? syncBranch;

  /// The URL of the Git repository to use as the source of truth.
  core.String? syncRepo;

  /// Git revision (tag or hash) to check out.
  ///
  /// Default HEAD.
  core.String? syncRev;

  /// Period in seconds between consecutive syncs.
  ///
  /// Default: 15.
  core.String? syncWaitSecs;

  ConfigManagementGitConfig();

  ConfigManagementGitConfig.fromJson(core.Map _json) {
    if (_json.containsKey('gcpServiceAccountEmail')) {
      gcpServiceAccountEmail = _json['gcpServiceAccountEmail'] as core.String;
    }
    if (_json.containsKey('httpsProxy')) {
      httpsProxy = _json['httpsProxy'] as core.String;
    }
    if (_json.containsKey('policyDir')) {
      policyDir = _json['policyDir'] as core.String;
    }
    if (_json.containsKey('secretType')) {
      secretType = _json['secretType'] as core.String;
    }
    if (_json.containsKey('syncBranch')) {
      syncBranch = _json['syncBranch'] as core.String;
    }
    if (_json.containsKey('syncRepo')) {
      syncRepo = _json['syncRepo'] as core.String;
    }
    if (_json.containsKey('syncRev')) {
      syncRev = _json['syncRev'] as core.String;
    }
    if (_json.containsKey('syncWaitSecs')) {
      syncWaitSecs = _json['syncWaitSecs'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcpServiceAccountEmail != null)
          'gcpServiceAccountEmail': gcpServiceAccountEmail!,
        if (httpsProxy != null) 'httpsProxy': httpsProxy!,
        if (policyDir != null) 'policyDir': policyDir!,
        if (secretType != null) 'secretType': secretType!,
        if (syncBranch != null) 'syncBranch': syncBranch!,
        if (syncRepo != null) 'syncRepo': syncRepo!,
        if (syncRev != null) 'syncRev': syncRev!,
        if (syncWaitSecs != null) 'syncWaitSecs': syncWaitSecs!,
      };
}

/// A Kubernetes object's GVK
class ConfigManagementGroupVersionKind {
  /// Kubernetes Group
  core.String? group;

  /// Kubernetes Kind
  core.String? kind;

  /// Kubernetes Version
  core.String? version;

  ConfigManagementGroupVersionKind();

  ConfigManagementGroupVersionKind.fromJson(core.Map _json) {
    if (_json.containsKey('group')) {
      group = _json['group'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (group != null) 'group': group!,
        if (kind != null) 'kind': kind!,
        if (version != null) 'version': version!,
      };
}

/// Configuration for Hierarchy Controller
class ConfigManagementHierarchyControllerConfig {
  /// Whether hierarchical resource quota is enabled in this cluster.
  core.bool? enableHierarchicalResourceQuota;

  /// Whether pod tree labels are enabled in this cluster.
  core.bool? enablePodTreeLabels;

  /// Whether Hierarchy Controller is enabled in this cluster.
  core.bool? enabled;

  ConfigManagementHierarchyControllerConfig();

  ConfigManagementHierarchyControllerConfig.fromJson(core.Map _json) {
    if (_json.containsKey('enableHierarchicalResourceQuota')) {
      enableHierarchicalResourceQuota =
          _json['enableHierarchicalResourceQuota'] as core.bool;
    }
    if (_json.containsKey('enablePodTreeLabels')) {
      enablePodTreeLabels = _json['enablePodTreeLabels'] as core.bool;
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableHierarchicalResourceQuota != null)
          'enableHierarchicalResourceQuota': enableHierarchicalResourceQuota!,
        if (enablePodTreeLabels != null)
          'enablePodTreeLabels': enablePodTreeLabels!,
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Deployment state for Hierarchy Controller
class ConfigManagementHierarchyControllerDeploymentState {
  /// The deployment state for Hierarchy Controller extension (e.g. v0.7.0-hc.1)
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? extension;

  /// The deployment state for open source HNC (e.g. v0.7.0-hc.0)
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? hnc;

  ConfigManagementHierarchyControllerDeploymentState();

  ConfigManagementHierarchyControllerDeploymentState.fromJson(core.Map _json) {
    if (_json.containsKey('extension')) {
      extension = _json['extension'] as core.String;
    }
    if (_json.containsKey('hnc')) {
      hnc = _json['hnc'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (extension != null) 'extension': extension!,
        if (hnc != null) 'hnc': hnc!,
      };
}

/// State for Hierarchy Controller
class ConfigManagementHierarchyControllerState {
  /// The deployment state for Hierarchy Controller
  ConfigManagementHierarchyControllerDeploymentState? state;

  /// The version for Hierarchy Controller
  ConfigManagementHierarchyControllerVersion? version;

  ConfigManagementHierarchyControllerState();

  ConfigManagementHierarchyControllerState.fromJson(core.Map _json) {
    if (_json.containsKey('state')) {
      state = ConfigManagementHierarchyControllerDeploymentState.fromJson(
          _json['state'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('version')) {
      version = ConfigManagementHierarchyControllerVersion.fromJson(
          _json['version'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!.toJson(),
        if (version != null) 'version': version!.toJson(),
      };
}

/// Version for Hierarchy Controller
class ConfigManagementHierarchyControllerVersion {
  /// Version for Hierarchy Controller extension
  core.String? extension;

  /// Version for open source HNC
  core.String? hnc;

  ConfigManagementHierarchyControllerVersion();

  ConfigManagementHierarchyControllerVersion.fromJson(core.Map _json) {
    if (_json.containsKey('extension')) {
      extension = _json['extension'] as core.String;
    }
    if (_json.containsKey('hnc')) {
      hnc = _json['hnc'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (extension != null) 'extension': extension!,
        if (hnc != null) 'hnc': hnc!,
      };
}

/// Errors pertaining to the installation of ACM
class ConfigManagementInstallError {
  /// A string representing the user facing error message
  core.String? errorMessage;

  ConfigManagementInstallError();

  ConfigManagementInstallError.fromJson(core.Map _json) {
    if (_json.containsKey('errorMessage')) {
      errorMessage = _json['errorMessage'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
      };
}

/// **Anthos Config Management**: Configuration for a single cluster.
///
/// Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpec {
  /// Config Sync configuration for the cluster.
  ConfigManagementConfigSync? configSync;

  /// Hierarchy Controller configuration for the cluster.
  ConfigManagementHierarchyControllerConfig? hierarchyController;

  /// Policy Controller configuration for the cluster.
  ConfigManagementPolicyController? policyController;

  /// Version of ACM installed.
  core.String? version;

  ConfigManagementMembershipSpec();

  ConfigManagementMembershipSpec.fromJson(core.Map _json) {
    if (_json.containsKey('configSync')) {
      configSync = ConfigManagementConfigSync.fromJson(
          _json['configSync'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('hierarchyController')) {
      hierarchyController = ConfigManagementHierarchyControllerConfig.fromJson(
          _json['hierarchyController'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('policyController')) {
      policyController = ConfigManagementPolicyController.fromJson(
          _json['policyController'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (configSync != null) 'configSync': configSync!.toJson(),
        if (hierarchyController != null)
          'hierarchyController': hierarchyController!.toJson(),
        if (policyController != null)
          'policyController': policyController!.toJson(),
        if (version != null) 'version': version!,
      };
}

/// **Anthos Config Management**: State for a single cluster.
class ConfigManagementMembershipState {
  /// The user-defined name for the cluster used by ClusterSelectors to group
  /// clusters together.
  ///
  /// This should match Membership's membership_name, unless the user installed
  /// ACM on the cluster manually prior to enabling the ACM hub feature. Unique
  /// within a Anthos Config Management installation.
  core.String? clusterName;

  /// Current sync status
  ConfigManagementConfigSyncState? configSyncState;

  /// Hierarchy Controller status
  ConfigManagementHierarchyControllerState? hierarchyControllerState;

  /// Membership configuration in the cluster.
  ///
  /// This represents the actual state in the cluster, while the MembershipSpec
  /// in the FeatureSpec represents the intended state
  ConfigManagementMembershipSpec? membershipSpec;

  /// Current install status of ACM's Operator
  ConfigManagementOperatorState? operatorState;

  /// PolicyController status
  ConfigManagementPolicyControllerState? policyControllerState;

  ConfigManagementMembershipState();

  ConfigManagementMembershipState.fromJson(core.Map _json) {
    if (_json.containsKey('clusterName')) {
      clusterName = _json['clusterName'] as core.String;
    }
    if (_json.containsKey('configSyncState')) {
      configSyncState = ConfigManagementConfigSyncState.fromJson(
          _json['configSyncState'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('hierarchyControllerState')) {
      hierarchyControllerState =
          ConfigManagementHierarchyControllerState.fromJson(
              _json['hierarchyControllerState']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('membershipSpec')) {
      membershipSpec = ConfigManagementMembershipSpec.fromJson(
          _json['membershipSpec'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('operatorState')) {
      operatorState = ConfigManagementOperatorState.fromJson(
          _json['operatorState'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('policyControllerState')) {
      policyControllerState = ConfigManagementPolicyControllerState.fromJson(
          _json['policyControllerState']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterName != null) 'clusterName': clusterName!,
        if (configSyncState != null)
          'configSyncState': configSyncState!.toJson(),
        if (hierarchyControllerState != null)
          'hierarchyControllerState': hierarchyControllerState!.toJson(),
        if (membershipSpec != null) 'membershipSpec': membershipSpec!.toJson(),
        if (operatorState != null) 'operatorState': operatorState!.toJson(),
        if (policyControllerState != null)
          'policyControllerState': policyControllerState!.toJson(),
      };
}

/// State information for an ACM's Operator
class ConfigManagementOperatorState {
  /// The state of the Operator's deployment
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? deploymentState;

  /// Install errors.
  core.List<ConfigManagementInstallError>? errors;

  /// The semenatic version number of the operator
  core.String? version;

  ConfigManagementOperatorState();

  ConfigManagementOperatorState.fromJson(core.Map _json) {
    if (_json.containsKey('deploymentState')) {
      deploymentState = _json['deploymentState'] as core.String;
    }
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<ConfigManagementInstallError>((value) =>
              ConfigManagementInstallError.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentState != null) 'deploymentState': deploymentState!,
        if (errors != null)
          'errors': errors!.map((value) => value.toJson()).toList(),
        if (version != null) 'version': version!,
      };
}

/// Configuration for Policy Controller
class ConfigManagementPolicyController {
  /// Sets the interval for Policy Controller Audit Scans (in seconds).
  ///
  /// When set to 0, this disables audit functionality altogether.
  core.String? auditIntervalSeconds;

  /// Enables the installation of Policy Controller.
  ///
  /// If false, the rest of PolicyController fields take no effect.
  core.bool? enabled;

  /// The set of namespaces that are excluded from Policy Controller checks.
  ///
  /// Namespaces do not need to currently exist on the cluster.
  core.List<core.String>? exemptableNamespaces;

  /// Logs all denies and dry run failures.
  core.bool? logDeniesEnabled;

  /// Enables the ability to use Constraint Templates that reference to objects
  /// other than the object currently being evaluated.
  core.bool? referentialRulesEnabled;

  /// Installs the default template library along with Policy Controller.
  core.bool? templateLibraryInstalled;

  ConfigManagementPolicyController();

  ConfigManagementPolicyController.fromJson(core.Map _json) {
    if (_json.containsKey('auditIntervalSeconds')) {
      auditIntervalSeconds = _json['auditIntervalSeconds'] as core.String;
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('exemptableNamespaces')) {
      exemptableNamespaces = (_json['exemptableNamespaces'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('logDeniesEnabled')) {
      logDeniesEnabled = _json['logDeniesEnabled'] as core.bool;
    }
    if (_json.containsKey('referentialRulesEnabled')) {
      referentialRulesEnabled = _json['referentialRulesEnabled'] as core.bool;
    }
    if (_json.containsKey('templateLibraryInstalled')) {
      templateLibraryInstalled = _json['templateLibraryInstalled'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditIntervalSeconds != null)
          'auditIntervalSeconds': auditIntervalSeconds!,
        if (enabled != null) 'enabled': enabled!,
        if (exemptableNamespaces != null)
          'exemptableNamespaces': exemptableNamespaces!,
        if (logDeniesEnabled != null) 'logDeniesEnabled': logDeniesEnabled!,
        if (referentialRulesEnabled != null)
          'referentialRulesEnabled': referentialRulesEnabled!,
        if (templateLibraryInstalled != null)
          'templateLibraryInstalled': templateLibraryInstalled!,
      };
}

/// State for PolicyControllerState.
class ConfigManagementPolicyControllerState {
  /// The state about the policy controller installation.
  ConfigManagementGatekeeperDeploymentState? deploymentState;

  /// The version of Gatekeeper Policy Controller deployed.
  ConfigManagementPolicyControllerVersion? version;

  ConfigManagementPolicyControllerState();

  ConfigManagementPolicyControllerState.fromJson(core.Map _json) {
    if (_json.containsKey('deploymentState')) {
      deploymentState = ConfigManagementGatekeeperDeploymentState.fromJson(
          _json['deploymentState'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('version')) {
      version = ConfigManagementPolicyControllerVersion.fromJson(
          _json['version'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentState != null)
          'deploymentState': deploymentState!.toJson(),
        if (version != null) 'version': version!.toJson(),
      };
}

/// The build version of Gatekeeper Policy Controller is using.
class ConfigManagementPolicyControllerVersion {
  /// The gatekeeper image tag that is composed of ACM version, git tag, build
  /// number.
  core.String? version;

  ConfigManagementPolicyControllerVersion();

  ConfigManagementPolicyControllerVersion.fromJson(core.Map _json) {
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (version != null) 'version': version!,
      };
}

/// An ACM created error representing a problem syncing configurations
class ConfigManagementSyncError {
  /// An ACM defined error code
  core.String? code;

  /// A description of the error
  core.String? errorMessage;

  /// A list of config(s) associated with the error, if any
  core.List<ConfigManagementErrorResource>? errorResources;

  ConfigManagementSyncError();

  ConfigManagementSyncError.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
    if (_json.containsKey('errorMessage')) {
      errorMessage = _json['errorMessage'] as core.String;
    }
    if (_json.containsKey('errorResources')) {
      errorResources = (_json['errorResources'] as core.List)
          .map<ConfigManagementErrorResource>((value) =>
              ConfigManagementErrorResource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (errorResources != null)
          'errorResources':
              errorResources!.map((value) => value.toJson()).toList(),
      };
}

/// State indicating an ACM's progress syncing configurations to a cluster
class ConfigManagementSyncState {
  /// Sync status code
  /// Possible string values are:
  /// - "SYNC_CODE_UNSPECIFIED" : ACM cannot determine a sync code
  /// - "SYNCED" : ACM successfully synced the git Repo with the cluster
  /// - "PENDING" : ACM is in the progress of syncing a new change
  /// - "ERROR" : Indicates an error configuring ACM, and user action is
  /// required
  /// - "NOT_CONFIGURED" : ACM has been installed (operator manifest deployed),
  /// but not configured.
  /// - "NOT_INSTALLED" : ACM has not been installed (no operator pod found)
  /// - "UNAUTHORIZED" : Error authorizing with the cluster
  /// - "UNREACHABLE" : Cluster could not be reached
  core.String? code;

  /// A list of errors resulting from problematic configs.
  ///
  /// This list will be truncated after 100 errors, although it is unlikely for
  /// that many errors to simultaneously exist.
  core.List<ConfigManagementSyncError>? errors;

  /// Token indicating the state of the importer.
  core.String? importToken;

  /// Deprecated: use last_sync_time instead.
  ///
  /// Timestamp of when ACM last successfully synced the repo The time format is
  /// specified in https://golang.org/pkg/time/#Time.String
  core.String? lastSync;

  /// Timestamp type of when ACM last successfully synced the repo
  core.String? lastSyncTime;

  /// Token indicating the state of the repo.
  core.String? sourceToken;

  /// Token indicating the state of the syncer.
  core.String? syncToken;

  ConfigManagementSyncState();

  ConfigManagementSyncState.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<ConfigManagementSyncError>((value) =>
              ConfigManagementSyncError.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('importToken')) {
      importToken = _json['importToken'] as core.String;
    }
    if (_json.containsKey('lastSync')) {
      lastSync = _json['lastSync'] as core.String;
    }
    if (_json.containsKey('lastSyncTime')) {
      lastSyncTime = _json['lastSyncTime'] as core.String;
    }
    if (_json.containsKey('sourceToken')) {
      sourceToken = _json['sourceToken'] as core.String;
    }
    if (_json.containsKey('syncToken')) {
      syncToken = _json['syncToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (errors != null)
          'errors': errors!.map((value) => value.toJson()).toList(),
        if (importToken != null) 'importToken': importToken!,
        if (lastSync != null) 'lastSync': lastSync!,
        if (lastSyncTime != null) 'lastSyncTime': lastSyncTime!,
        if (sourceToken != null) 'sourceToken': sourceToken!,
        if (syncToken != null) 'syncToken': syncToken!,
      };
}

/// ConnectAgentResource represents a Kubernetes resource manifest for Connect
/// Agent deployment.
class ConnectAgentResource {
  /// YAML manifest of the resource.
  core.String? manifest;

  /// Kubernetes type of the resource.
  TypeMeta? type;

  ConnectAgentResource();

  ConnectAgentResource.fromJson(core.Map _json) {
    if (_json.containsKey('manifest')) {
      manifest = _json['manifest'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = TypeMeta.fromJson(
          _json['type'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (manifest != null) 'manifest': manifest!,
        if (type != null) 'type': type!.toJson(),
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
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
class Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String? expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String? location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String? title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}

/// Feature represents the settings and status of any Hub Feature.
class Feature {
  /// When the Feature resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the Feature resource was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// GCP labels for this Feature.
  core.Map<core.String, core.String>? labels;

  /// Membership-specific configuration for this Feature.
  ///
  /// If this Feature does not support any per-Membership configuration, this
  /// field may be unused. The keys indicate which Membership the configuration
  /// is for, in the form: projects/{p}/locations/{l}/memberships/{m} Where {p}
  /// is the project, {l} is a valid location and {m} is a valid Membership in
  /// this project at that location. {p} WILL match the Feature's project. {p}
  /// will always be returned as the project number, but the project ID is also
  /// accepted during input. If the same Membership is specified in the map
  /// twice (using the project ID form, and the project number form), exactly
  /// ONE of the entries will be saved, with no guarantees as to which. For this
  /// reason, it is recommended the same format be used for all entries when
  /// mutating a Feature.
  ///
  /// Optional.
  core.Map<core.String, MembershipFeatureSpec>? membershipSpecs;

  /// Membership-specific Feature status.
  ///
  /// If this Feature does report any per-Membership status, this field may be
  /// unused. The keys indicate which Membership the state is for, in the form:
  /// projects/{p}/locations/{l}/memberships/{m} Where {p} is the project
  /// number, {l} is a valid location and {m} is a valid Membership in this
  /// project at that location. {p} MUST match the Feature's project number.
  ///
  /// Output only.
  core.Map<core.String, MembershipFeatureState>? membershipStates;

  /// The full, unique name of this Feature resource in the format `projects / *
  /// /locations / * /features / * `.
  ///
  /// Output only.
  core.String? name;

  /// State of the Feature resource itself.
  ///
  /// Output only.
  FeatureResourceState? resourceState;

  /// Hub-wide Feature configuration.
  ///
  /// If this Feature does not support any Hub-wide configuration, this field
  /// may be unused.
  ///
  /// Optional.
  CommonFeatureSpec? spec;

  /// The Hub-wide Feature state.
  ///
  /// Output only.
  CommonFeatureState? state;

  /// When the Feature resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Feature();

  Feature.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('deleteTime')) {
      deleteTime = _json['deleteTime'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('membershipSpecs')) {
      membershipSpecs =
          (_json['membershipSpecs'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          MembershipFeatureSpec.fromJson(
              item as core.Map<core.String, core.dynamic>),
        ),
      );
    }
    if (_json.containsKey('membershipStates')) {
      membershipStates =
          (_json['membershipStates'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          MembershipFeatureState.fromJson(
              item as core.Map<core.String, core.dynamic>),
        ),
      );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('resourceState')) {
      resourceState = FeatureResourceState.fromJson(
          _json['resourceState'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('spec')) {
      spec = CommonFeatureSpec.fromJson(
          _json['spec'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('state')) {
      state = CommonFeatureState.fromJson(
          _json['state'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (labels != null) 'labels': labels!,
        if (membershipSpecs != null)
          'membershipSpecs': membershipSpecs!
              .map((key, item) => core.MapEntry(key, item.toJson())),
        if (membershipStates != null)
          'membershipStates': membershipStates!
              .map((key, item) => core.MapEntry(key, item.toJson())),
        if (name != null) 'name': name!,
        if (resourceState != null) 'resourceState': resourceState!.toJson(),
        if (spec != null) 'spec': spec!.toJson(),
        if (state != null) 'state': state!.toJson(),
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// FeatureResourceState describes the state of a Feature *resource* in the
/// GkeHub API.
///
/// See `FeatureState` for the "running state" of the Feature in the Hub and
/// across Memberships.
class FeatureResourceState {
  /// The current state of the Feature resource in the Hub API.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is unknown or not set.
  /// - "ENABLING" : The Feature is being enabled, and the Feature resource is
  /// being created. Once complete, the corresponding Feature will be enabled in
  /// this Hub.
  /// - "ACTIVE" : The Feature is enabled in this Hub, and the Feature resource
  /// is fully available.
  /// - "DISABLING" : The Feature is being disabled in this Hub, and the Feature
  /// resource is being deleted.
  /// - "UPDATING" : The Feature resource is being updated.
  /// - "SERVICE_UPDATING" : The Feature resource is being updated by the Hub
  /// Service.
  core.String? state;

  FeatureResourceState();

  FeatureResourceState.fromJson(core.Map _json) {
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// FeatureState describes the high-level state of a Feature.
///
/// It may be used to describe a Feature's state at the environ-level, or
/// per-membershop, depending on the context.
class FeatureState {
  /// The high-level, machine-readable status of this Feature.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Unknown or not set.
  /// - "OK" : The Feature is operating normally.
  /// - "WARNING" : The Feature has encountered an issue, and is operating in a
  /// degraded state. The Feature may need intervention to return to normal
  /// operation. See the description and any associated Feature-specific details
  /// for more information.
  /// - "ERROR" : The Feature is not operating or is in a severely degraded
  /// state. The Feature may need intervention to return to normal operation.
  /// See the description and any associated Feature-specific details for more
  /// information.
  core.String? code;

  /// A human-readable description of the current status.
  core.String? description;

  /// The time this status and any related Feature-specific details were
  /// updated.
  core.String? updateTime;

  FeatureState();

  FeatureState.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// GenerateConnectManifestResponse contains manifest information for
/// installing/upgrading a Connect agent.
class GenerateConnectManifestResponse {
  /// The ordered list of Kubernetes resources that need to be applied to the
  /// cluster for GKE Connect agent installation/upgrade.
  core.List<ConnectAgentResource>? manifest;

  GenerateConnectManifestResponse();

  GenerateConnectManifestResponse.fromJson(core.Map _json) {
    if (_json.containsKey('manifest')) {
      manifest = (_json['manifest'] as core.List)
          .map<ConnectAgentResource>((value) => ConnectAgentResource.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (manifest != null)
          'manifest': manifest!.map((value) => value.toJson()).toList(),
      };
}

/// GkeCluster contains information specific to GKE clusters.
class GkeCluster {
  /// Self-link of the GCP resource for the GKE cluster.
  ///
  /// For example:
  /// //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  /// Zonal clusters are also supported.
  ///
  /// Immutable.
  core.String? resourceLink;

  GkeCluster();

  GkeCluster.fromJson(core.Map _json) {
    if (_json.containsKey('resourceLink')) {
      resourceLink = _json['resourceLink'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceLink != null) 'resourceLink': resourceLink!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class GoogleRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  GoogleRpcStatus();

  GoogleRpcStatus.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map<core.String, core.dynamic>).map(
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// KubernetesMetadata provides informational metadata for Memberships
/// representing Kubernetes clusters.
class KubernetesMetadata {
  /// Kubernetes API server version string as reported by `/version`.
  ///
  /// Output only.
  core.String? kubernetesApiServerVersion;

  /// The total memory capacity as reported by the sum of all Kubernetes nodes
  /// resources, defined in MB.
  ///
  /// Output only.
  core.int? memoryMb;

  /// Node count as reported by Kubernetes nodes resources.
  ///
  /// Output only.
  core.int? nodeCount;

  /// Node providerID as reported by the first node in the list of nodes on the
  /// Kubernetes endpoint.
  ///
  /// On Kubernetes platforms that support zero-node clusters (like GKE-on-GCP),
  /// the node_count will be zero and the node_provider_id will be empty.
  ///
  /// Output only.
  core.String? nodeProviderId;

  /// The time at which these details were last updated.
  ///
  /// This update_time is different from the Membership-level update_time since
  /// EndpointDetails are updated internally for API consumers.
  ///
  /// Output only.
  core.String? updateTime;

  /// vCPU count as reported by Kubernetes nodes resources.
  ///
  /// Output only.
  core.int? vcpuCount;

  KubernetesMetadata();

  KubernetesMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('kubernetesApiServerVersion')) {
      kubernetesApiServerVersion =
          _json['kubernetesApiServerVersion'] as core.String;
    }
    if (_json.containsKey('memoryMb')) {
      memoryMb = _json['memoryMb'] as core.int;
    }
    if (_json.containsKey('nodeCount')) {
      nodeCount = _json['nodeCount'] as core.int;
    }
    if (_json.containsKey('nodeProviderId')) {
      nodeProviderId = _json['nodeProviderId'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('vcpuCount')) {
      vcpuCount = _json['vcpuCount'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kubernetesApiServerVersion != null)
          'kubernetesApiServerVersion': kubernetesApiServerVersion!,
        if (memoryMb != null) 'memoryMb': memoryMb!,
        if (nodeCount != null) 'nodeCount': nodeCount!,
        if (nodeProviderId != null) 'nodeProviderId': nodeProviderId!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vcpuCount != null) 'vcpuCount': vcpuCount!,
      };
}

/// Response message for the `GkeHub.ListFeatures` method.
class ListFeaturesResponse {
  /// A token to request the next page of resources from the `ListFeatures`
  /// method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// The list of matching Features
  core.List<Feature>? resources;

  ListFeaturesResponse();

  ListFeaturesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List)
          .map<Feature>((value) =>
              Feature.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null)
          'resources': resources!.map((value) => value.toJson()).toList(),
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List)
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null)
          'locations': locations!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for the `GkeHub.ListMemberships` method.
class ListMembershipsResponse {
  /// A token to request the next page of resources from the `ListMemberships`
  /// method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// The list of matching Memberships.
  core.List<Membership>? resources;

  /// List of locations that could not be reached while fetching this list.
  core.List<core.String>? unreachable;

  ListMembershipsResponse();

  ListMembershipsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List)
          .map<Membership>((value) =>
              Membership.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null)
          'resources': resources!.map((value) => value.toJson()).toList(),
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null)
          'operations': operations!.map((value) => value.toJson()).toList(),
      };
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String? name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata = (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

/// Membership contains information about a member cluster.
class Membership {
  /// How to identify workloads from this Membership.
  ///
  /// See the documentation on Workload Identity for more details:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  ///
  /// Optional.
  Authority? authority;

  /// When the Membership was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the Membership was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Description of this membership, limited to 63 characters.
  ///
  /// Must match the regex: `a-zA-Z0-9*` This field is present for legacy
  /// purposes.
  ///
  /// Output only.
  core.String? description;

  /// Endpoint information to reach this member.
  ///
  /// Optional.
  MembershipEndpoint? endpoint;

  /// An externally-generated and managed ID for this Membership.
  ///
  /// This ID may be modified after creation, but this is not recommended. The
  /// ID must match the regex: `a-zA-Z0-9*` If this Membership represents a
  /// Kubernetes cluster, this value should be set to the UID of the
  /// `kube-system` namespace object.
  ///
  /// Optional.
  core.String? externalId;

  /// GCP labels for this membership.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// For clusters using Connect, the timestamp of the most recent connection
  /// established with Google Cloud.
  ///
  /// This time is updated every several minutes, not continuously. For clusters
  /// that do not use GKE Connect, or that have never connected successfully,
  /// this field will be unset.
  ///
  /// Output only.
  core.String? lastConnectionTime;

  /// The full, unique name of this Membership resource in the format `projects
  /// / * /locations / * /memberships/{membership_id}`, set during creation.
  ///
  /// `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most
  /// 63 characters in length 2. It must consist of lower case alphanumeric
  /// characters or `-` 3. It must start and end with an alphanumeric character
  /// Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with
  /// a maximum length of 63 characters.
  ///
  /// Output only.
  core.String? name;

  /// State of the Membership resource.
  ///
  /// Output only.
  MembershipState? state;

  /// Google-generated UUID for this resource.
  ///
  /// This is unique across all Membership resources. If a Membership resource
  /// is deleted and another resource with the same name is created, it gets a
  /// different unique_id.
  ///
  /// Output only.
  core.String? uniqueId;

  /// When the Membership was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Membership();

  Membership.fromJson(core.Map _json) {
    if (_json.containsKey('authority')) {
      authority = Authority.fromJson(
          _json['authority'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('deleteTime')) {
      deleteTime = _json['deleteTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('endpoint')) {
      endpoint = MembershipEndpoint.fromJson(
          _json['endpoint'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('externalId')) {
      externalId = _json['externalId'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('lastConnectionTime')) {
      lastConnectionTime = _json['lastConnectionTime'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = MembershipState.fromJson(
          _json['state'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('uniqueId')) {
      uniqueId = _json['uniqueId'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (authority != null) 'authority': authority!.toJson(),
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (description != null) 'description': description!,
        if (endpoint != null) 'endpoint': endpoint!.toJson(),
        if (externalId != null) 'externalId': externalId!,
        if (labels != null) 'labels': labels!,
        if (lastConnectionTime != null)
          'lastConnectionTime': lastConnectionTime!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!.toJson(),
        if (uniqueId != null) 'uniqueId': uniqueId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// MembershipEndpoint contains information needed to contact a Kubernetes API,
/// endpoint and any additional Kubernetes metadata.
class MembershipEndpoint {
  /// GKE-specific information.
  ///
  /// Only present if this Membership is a GKE cluster.
  ///
  /// Optional.
  GkeCluster? gkeCluster;

  /// Useful Kubernetes-specific metadata.
  ///
  /// Output only.
  KubernetesMetadata? kubernetesMetadata;

  MembershipEndpoint();

  MembershipEndpoint.fromJson(core.Map _json) {
    if (_json.containsKey('gkeCluster')) {
      gkeCluster = GkeCluster.fromJson(
          _json['gkeCluster'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('kubernetesMetadata')) {
      kubernetesMetadata = KubernetesMetadata.fromJson(
          _json['kubernetesMetadata'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (gkeCluster != null) 'gkeCluster': gkeCluster!.toJson(),
        if (kubernetesMetadata != null)
          'kubernetesMetadata': kubernetesMetadata!.toJson(),
      };
}

/// MembershipFeatureSpec contains configuration information for a single
/// Membership.
class MembershipFeatureSpec {
  /// Config Management-specific spec.
  ConfigManagementMembershipSpec? configmanagement;

  MembershipFeatureSpec();

  MembershipFeatureSpec.fromJson(core.Map _json) {
    if (_json.containsKey('configmanagement')) {
      configmanagement = ConfigManagementMembershipSpec.fromJson(
          _json['configmanagement'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (configmanagement != null)
          'configmanagement': configmanagement!.toJson(),
      };
}

/// MembershipFeatureState contains Feature status information for a single
/// Membership.
class MembershipFeatureState {
  /// Config Management-specific state.
  ConfigManagementMembershipState? configmanagement;

  /// The high-level state of this Feature for a single membership.
  FeatureState? state;

  MembershipFeatureState();

  MembershipFeatureState.fromJson(core.Map _json) {
    if (_json.containsKey('configmanagement')) {
      configmanagement = ConfigManagementMembershipState.fromJson(
          _json['configmanagement'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('state')) {
      state = FeatureState.fromJson(
          _json['state'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (configmanagement != null)
          'configmanagement': configmanagement!.toJson(),
        if (state != null) 'state': state!.toJson(),
      };
}

/// MembershipState describes the state of a Membership resource.
class MembershipState {
  /// The current state of the Membership resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : The code is not set.
  /// - "CREATING" : The cluster is being registered.
  /// - "READY" : The cluster is registered.
  /// - "DELETING" : The cluster is being unregistered.
  /// - "UPDATING" : The Membership is being updated.
  /// - "SERVICE_UPDATING" : The Membership is being updated by the Hub Service.
  core.String? code;

  MembershipState();

  MembershipState.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
      };
}

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress
/// feature.
class MultiClusterIngressFeatureSpec {
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD.
  ///
  /// Example: `projects/foo-proj/locations/global/memberships/bar`
  core.String? configMembership;

  MultiClusterIngressFeatureSpec();

  MultiClusterIngressFeatureSpec.fromJson(core.Map _json) {
    if (_json.containsKey('configMembership')) {
      configMembership = _json['configMembership'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (configMembership != null) 'configMembership': configMembership!,
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
  GoogleRpcStatus? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? metadata;

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
  core.Map<core.String, core.Object>? response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = GoogleRpcStatus.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata = (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response = (_json['response'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!.toJson(),
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// Represents the metadata of the long-running operation.
class OperationMetadata {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? cancelRequested;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Human-readable status of the operation, if any.
  ///
  /// Output only.
  core.String? statusDetail;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'] as core.String;
    }
    if (_json.containsKey('cancelRequested')) {
      cancelRequested = _json['cancelRequested'] as core.bool;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('statusDetail')) {
      statusDetail = _json['statusDetail'] as core.String;
    }
    if (_json.containsKey('target')) {
      target = _json['target'] as core.String;
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (cancelRequested != null) 'cancelRequested': cancelRequested!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (statusDetail != null) 'statusDetail': statusDetail!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members` to a single `role`. Members can be user accounts, service
/// accounts, Google groups, and domains (such as G Suite). A `role` is a named
/// list of permissions; each `role` can be an IAM predefined role or a
/// user-created custom role. For some types of Google Cloud resources, a
/// `binding` can also specify a `condition`, which is a logical expression that
/// allows access to a resource only if the expression evaluates to `true`. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
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

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('auditConfigs')) {
      auditConfigs = (_json['auditConfigs'] as core.List)
          .map<AuditConfig>((value) => AuditConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) =>
              Binding.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null)
          'auditConfigs': auditConfigs!.map((value) => value.toJson()).toList(),
        if (bindings != null)
          'bindings': bindings!.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!.toJson(),
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// TypeMeta is the type information needed for content unmarshalling of
/// Kubernetes resources in the manifest.
class TypeMeta {
  /// APIVersion of the resource (e.g. v1).
  core.String? apiVersion;

  /// Kind of the resource (e.g. Deployment).
  core.String? kind;

  TypeMeta();

  TypeMeta.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (kind != null) 'kind': kind!,
      };
}
