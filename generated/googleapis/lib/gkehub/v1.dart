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

/// GKE Hub API - v1
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

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class GKEHubApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
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
  /// [parent] - Required. The parent (project and location) where the Feature
  /// will be created. Specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [featureId] - The ID of the feature to create.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes after the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
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
    final _body = convert.json.encode(request);
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
  /// [name] - Required. The Feature resource name in the format `projects / *
  /// /locations / * /features / * `.
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
  /// [name] - Required. The Feature resource name in the format `projects / *
  /// /locations / * /features / * `
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
  /// [parent] - Required. The parent (project and location) where the Features
  /// will be listed. Specified in the format `projects / * /locations / * `.
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
  /// [name] - Required. The Feature resource name in the format `projects / *
  /// /locations / * /features / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes after the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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

/// Spec for App Dev Experience Feature.
typedef AppDevExperienceFeatureSpec = $Empty;

/// State for App Dev Exp Feature.
class AppDevExperienceFeatureState {
  /// Status of subcomponent that detects configured Service Mesh resources.
  Status? networkingInstallSucceeded;

  AppDevExperienceFeatureState({
    this.networkingInstallSucceeded,
  });

  AppDevExperienceFeatureState.fromJson(core.Map _json)
      : this(
          networkingInstallSucceeded:
              _json.containsKey('networkingInstallSucceeded')
                  ? Status.fromJson(_json['networkingInstallSucceeded']
                      as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkingInstallSucceeded != null)
          'networkingInstallSucceeded': networkingInstallSucceeded!,
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
  /// `issuer` must start with `https://` and be a valid URL with length \<2000
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

  Authority({
    this.identityProvider,
    this.issuer,
    this.oidcJwks,
    this.workloadIdentityPool,
  });

  Authority.fromJson(core.Map _json)
      : this(
          identityProvider: _json.containsKey('identityProvider')
              ? _json['identityProvider'] as core.String
              : null,
          issuer: _json.containsKey('issuer')
              ? _json['issuer'] as core.String
              : null,
          oidcJwks: _json.containsKey('oidcJwks')
              ? _json['oidcJwks'] as core.String
              : null,
          workloadIdentityPool: _json.containsKey('workloadIdentityPool')
              ? _json['workloadIdentityPool'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identityProvider != null) 'identityProvider': identityProvider!,
        if (issuer != null) 'issuer': issuer!,
        if (oidcJwks != null) 'oidcJwks': oidcJwks!,
        if (workloadIdentityPool != null)
          'workloadIdentityPool': workloadIdentityPool!,
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

  /// Specifies the principals requesting access for a Cloud Platform resource.
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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpec {
  /// Appdevexperience specific spec.
  AppDevExperienceFeatureSpec? appdevexperience;

  /// Multicluster Ingress-specific spec.
  MultiClusterIngressFeatureSpec? multiclusteringress;

  CommonFeatureSpec({
    this.appdevexperience,
    this.multiclusteringress,
  });

  CommonFeatureSpec.fromJson(core.Map _json)
      : this(
          appdevexperience: _json.containsKey('appdevexperience')
              ? AppDevExperienceFeatureSpec.fromJson(_json['appdevexperience']
                  as core.Map<core.String, core.dynamic>)
              : null,
          multiclusteringress: _json.containsKey('multiclusteringress')
              ? MultiClusterIngressFeatureSpec.fromJson(
                  _json['multiclusteringress']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appdevexperience != null) 'appdevexperience': appdevexperience!,
        if (multiclusteringress != null)
          'multiclusteringress': multiclusteringress!,
      };
}

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureState {
  /// Appdevexperience specific state.
  AppDevExperienceFeatureState? appdevexperience;

  /// The "running state" of the Feature in this Hub.
  ///
  /// Output only.
  FeatureState? state;

  CommonFeatureState({
    this.appdevexperience,
    this.state,
  });

  CommonFeatureState.fromJson(core.Map _json)
      : this(
          appdevexperience: _json.containsKey('appdevexperience')
              ? AppDevExperienceFeatureState.fromJson(_json['appdevexperience']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state: _json.containsKey('state')
              ? FeatureState.fromJson(
                  _json['state'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appdevexperience != null) 'appdevexperience': appdevexperience!,
        if (state != null) 'state': state!,
      };
}

/// Configuration for Config Sync
class ConfigManagementConfigSync {
  /// Enables the installation of ConfigSync.
  ///
  /// If set to true, ConfigSync resources will be created and the other
  /// ConfigSync fields will be applied if exist. If set to false, all other
  /// ConfigSync fields will be ignored, ConfigSync resources will be deleted.
  /// If omitted, ConfigSync resources will be managed depends on the presence
  /// of git field.
  core.bool? enabled;

  /// Git repo configuration for the cluster.
  ConfigManagementGitConfig? git;

  /// Set to true to enable the Config Sync admission webhook to prevent drifts.
  ///
  /// If set to `false`, disables the Config Sync admission webhook and does not
  /// prevent drifts.
  core.bool? preventDrift;

  /// Specifies whether the Config Sync Repo is in “hierarchical” or
  /// “unstructured” mode.
  core.String? sourceFormat;

  ConfigManagementConfigSync({
    this.enabled,
    this.git,
    this.preventDrift,
    this.sourceFormat,
  });

  ConfigManagementConfigSync.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          git: _json.containsKey('git')
              ? ConfigManagementGitConfig.fromJson(
                  _json['git'] as core.Map<core.String, core.dynamic>)
              : null,
          preventDrift: _json.containsKey('preventDrift')
              ? _json['preventDrift'] as core.bool
              : null,
          sourceFormat: _json.containsKey('sourceFormat')
              ? _json['sourceFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (git != null) 'git': git!,
        if (preventDrift != null) 'preventDrift': preventDrift!,
        if (sourceFormat != null) 'sourceFormat': sourceFormat!,
      };
}

/// The state of ConfigSync's deployment on a cluster
class ConfigManagementConfigSyncDeploymentState {
  /// Deployment state of admission-webhook
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  core.String? admissionWebhook;

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

  ConfigManagementConfigSyncDeploymentState({
    this.admissionWebhook,
    this.gitSync,
    this.importer,
    this.monitor,
    this.reconcilerManager,
    this.rootReconciler,
    this.syncer,
  });

  ConfigManagementConfigSyncDeploymentState.fromJson(core.Map _json)
      : this(
          admissionWebhook: _json.containsKey('admissionWebhook')
              ? _json['admissionWebhook'] as core.String
              : null,
          gitSync: _json.containsKey('gitSync')
              ? _json['gitSync'] as core.String
              : null,
          importer: _json.containsKey('importer')
              ? _json['importer'] as core.String
              : null,
          monitor: _json.containsKey('monitor')
              ? _json['monitor'] as core.String
              : null,
          reconcilerManager: _json.containsKey('reconcilerManager')
              ? _json['reconcilerManager'] as core.String
              : null,
          rootReconciler: _json.containsKey('rootReconciler')
              ? _json['rootReconciler'] as core.String
              : null,
          syncer: _json.containsKey('syncer')
              ? _json['syncer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (admissionWebhook != null) 'admissionWebhook': admissionWebhook!,
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

  ConfigManagementConfigSyncState({
    this.deploymentState,
    this.syncState,
    this.version,
  });

  ConfigManagementConfigSyncState.fromJson(core.Map _json)
      : this(
          deploymentState: _json.containsKey('deploymentState')
              ? ConfigManagementConfigSyncDeploymentState.fromJson(
                  _json['deploymentState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          syncState: _json.containsKey('syncState')
              ? ConfigManagementSyncState.fromJson(
                  _json['syncState'] as core.Map<core.String, core.dynamic>)
              : null,
          version: _json.containsKey('version')
              ? ConfigManagementConfigSyncVersion.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentState != null) 'deploymentState': deploymentState!,
        if (syncState != null) 'syncState': syncState!,
        if (version != null) 'version': version!,
      };
}

/// Specific versioning information pertaining to ConfigSync's Pods
class ConfigManagementConfigSyncVersion {
  /// Version of the deployed admission_webhook pod
  core.String? admissionWebhook;

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

  ConfigManagementConfigSyncVersion({
    this.admissionWebhook,
    this.gitSync,
    this.importer,
    this.monitor,
    this.reconcilerManager,
    this.rootReconciler,
    this.syncer,
  });

  ConfigManagementConfigSyncVersion.fromJson(core.Map _json)
      : this(
          admissionWebhook: _json.containsKey('admissionWebhook')
              ? _json['admissionWebhook'] as core.String
              : null,
          gitSync: _json.containsKey('gitSync')
              ? _json['gitSync'] as core.String
              : null,
          importer: _json.containsKey('importer')
              ? _json['importer'] as core.String
              : null,
          monitor: _json.containsKey('monitor')
              ? _json['monitor'] as core.String
              : null,
          reconcilerManager: _json.containsKey('reconcilerManager')
              ? _json['reconcilerManager'] as core.String
              : null,
          rootReconciler: _json.containsKey('rootReconciler')
              ? _json['rootReconciler'] as core.String
              : null,
          syncer: _json.containsKey('syncer')
              ? _json['syncer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (admissionWebhook != null) 'admissionWebhook': admissionWebhook!,
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

  ConfigManagementErrorResource({
    this.resourceGvk,
    this.resourceName,
    this.resourceNamespace,
    this.sourcePath,
  });

  ConfigManagementErrorResource.fromJson(core.Map _json)
      : this(
          resourceGvk: _json.containsKey('resourceGvk')
              ? ConfigManagementGroupVersionKind.fromJson(
                  _json['resourceGvk'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
          resourceNamespace: _json.containsKey('resourceNamespace')
              ? _json['resourceNamespace'] as core.String
              : null,
          sourcePath: _json.containsKey('sourcePath')
              ? _json['sourcePath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceGvk != null) 'resourceGvk': resourceGvk!,
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

  ConfigManagementGatekeeperDeploymentState({
    this.gatekeeperAudit,
    this.gatekeeperControllerManagerState,
  });

  ConfigManagementGatekeeperDeploymentState.fromJson(core.Map _json)
      : this(
          gatekeeperAudit: _json.containsKey('gatekeeperAudit')
              ? _json['gatekeeperAudit'] as core.String
              : null,
          gatekeeperControllerManagerState:
              _json.containsKey('gatekeeperControllerManagerState')
                  ? _json['gatekeeperControllerManagerState'] as core.String
                  : null,
        );

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
  ///
  /// Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none.
  /// The validation of this is case-sensitive. Required.
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

  ConfigManagementGitConfig({
    this.gcpServiceAccountEmail,
    this.httpsProxy,
    this.policyDir,
    this.secretType,
    this.syncBranch,
    this.syncRepo,
    this.syncRev,
    this.syncWaitSecs,
  });

  ConfigManagementGitConfig.fromJson(core.Map _json)
      : this(
          gcpServiceAccountEmail: _json.containsKey('gcpServiceAccountEmail')
              ? _json['gcpServiceAccountEmail'] as core.String
              : null,
          httpsProxy: _json.containsKey('httpsProxy')
              ? _json['httpsProxy'] as core.String
              : null,
          policyDir: _json.containsKey('policyDir')
              ? _json['policyDir'] as core.String
              : null,
          secretType: _json.containsKey('secretType')
              ? _json['secretType'] as core.String
              : null,
          syncBranch: _json.containsKey('syncBranch')
              ? _json['syncBranch'] as core.String
              : null,
          syncRepo: _json.containsKey('syncRepo')
              ? _json['syncRepo'] as core.String
              : null,
          syncRev: _json.containsKey('syncRev')
              ? _json['syncRev'] as core.String
              : null,
          syncWaitSecs: _json.containsKey('syncWaitSecs')
              ? _json['syncWaitSecs'] as core.String
              : null,
        );

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

  ConfigManagementGroupVersionKind({
    this.group,
    this.kind,
    this.version,
  });

  ConfigManagementGroupVersionKind.fromJson(core.Map _json)
      : this(
          group:
              _json.containsKey('group') ? _json['group'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

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

  ConfigManagementHierarchyControllerConfig({
    this.enableHierarchicalResourceQuota,
    this.enablePodTreeLabels,
    this.enabled,
  });

  ConfigManagementHierarchyControllerConfig.fromJson(core.Map _json)
      : this(
          enableHierarchicalResourceQuota:
              _json.containsKey('enableHierarchicalResourceQuota')
                  ? _json['enableHierarchicalResourceQuota'] as core.bool
                  : null,
          enablePodTreeLabels: _json.containsKey('enablePodTreeLabels')
              ? _json['enablePodTreeLabels'] as core.bool
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

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

  ConfigManagementHierarchyControllerDeploymentState({
    this.extension,
    this.hnc,
  });

  ConfigManagementHierarchyControllerDeploymentState.fromJson(core.Map _json)
      : this(
          extension: _json.containsKey('extension')
              ? _json['extension'] as core.String
              : null,
          hnc: _json.containsKey('hnc') ? _json['hnc'] as core.String : null,
        );

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

  ConfigManagementHierarchyControllerState({
    this.state,
    this.version,
  });

  ConfigManagementHierarchyControllerState.fromJson(core.Map _json)
      : this(
          state: _json.containsKey('state')
              ? ConfigManagementHierarchyControllerDeploymentState.fromJson(
                  _json['state'] as core.Map<core.String, core.dynamic>)
              : null,
          version: _json.containsKey('version')
              ? ConfigManagementHierarchyControllerVersion.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (version != null) 'version': version!,
      };
}

/// Version for Hierarchy Controller
class ConfigManagementHierarchyControllerVersion {
  /// Version for Hierarchy Controller extension
  core.String? extension;

  /// Version for open source HNC
  core.String? hnc;

  ConfigManagementHierarchyControllerVersion({
    this.extension,
    this.hnc,
  });

  ConfigManagementHierarchyControllerVersion.fromJson(core.Map _json)
      : this(
          extension: _json.containsKey('extension')
              ? _json['extension'] as core.String
              : null,
          hnc: _json.containsKey('hnc') ? _json['hnc'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extension != null) 'extension': extension!,
        if (hnc != null) 'hnc': hnc!,
      };
}

/// Errors pertaining to the installation of ACM
class ConfigManagementInstallError {
  /// A string representing the user facing error message
  core.String? errorMessage;

  ConfigManagementInstallError({
    this.errorMessage,
  });

  ConfigManagementInstallError.fromJson(core.Map _json)
      : this(
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
        );

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

  ConfigManagementMembershipSpec({
    this.configSync,
    this.hierarchyController,
    this.policyController,
    this.version,
  });

  ConfigManagementMembershipSpec.fromJson(core.Map _json)
      : this(
          configSync: _json.containsKey('configSync')
              ? ConfigManagementConfigSync.fromJson(
                  _json['configSync'] as core.Map<core.String, core.dynamic>)
              : null,
          hierarchyController: _json.containsKey('hierarchyController')
              ? ConfigManagementHierarchyControllerConfig.fromJson(
                  _json['hierarchyController']
                      as core.Map<core.String, core.dynamic>)
              : null,
          policyController: _json.containsKey('policyController')
              ? ConfigManagementPolicyController.fromJson(
                  _json['policyController']
                      as core.Map<core.String, core.dynamic>)
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configSync != null) 'configSync': configSync!,
        if (hierarchyController != null)
          'hierarchyController': hierarchyController!,
        if (policyController != null) 'policyController': policyController!,
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

  ConfigManagementMembershipState({
    this.clusterName,
    this.configSyncState,
    this.hierarchyControllerState,
    this.membershipSpec,
    this.operatorState,
    this.policyControllerState,
  });

  ConfigManagementMembershipState.fromJson(core.Map _json)
      : this(
          clusterName: _json.containsKey('clusterName')
              ? _json['clusterName'] as core.String
              : null,
          configSyncState: _json.containsKey('configSyncState')
              ? ConfigManagementConfigSyncState.fromJson(
                  _json['configSyncState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          hierarchyControllerState:
              _json.containsKey('hierarchyControllerState')
                  ? ConfigManagementHierarchyControllerState.fromJson(
                      _json['hierarchyControllerState']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          membershipSpec: _json.containsKey('membershipSpec')
              ? ConfigManagementMembershipSpec.fromJson(_json['membershipSpec']
                  as core.Map<core.String, core.dynamic>)
              : null,
          operatorState: _json.containsKey('operatorState')
              ? ConfigManagementOperatorState.fromJson(
                  _json['operatorState'] as core.Map<core.String, core.dynamic>)
              : null,
          policyControllerState: _json.containsKey('policyControllerState')
              ? ConfigManagementPolicyControllerState.fromJson(
                  _json['policyControllerState']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterName != null) 'clusterName': clusterName!,
        if (configSyncState != null) 'configSyncState': configSyncState!,
        if (hierarchyControllerState != null)
          'hierarchyControllerState': hierarchyControllerState!,
        if (membershipSpec != null) 'membershipSpec': membershipSpec!,
        if (operatorState != null) 'operatorState': operatorState!,
        if (policyControllerState != null)
          'policyControllerState': policyControllerState!,
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

  ConfigManagementOperatorState({
    this.deploymentState,
    this.errors,
    this.version,
  });

  ConfigManagementOperatorState.fromJson(core.Map _json)
      : this(
          deploymentState: _json.containsKey('deploymentState')
              ? _json['deploymentState'] as core.String
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => ConfigManagementInstallError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentState != null) 'deploymentState': deploymentState!,
        if (errors != null) 'errors': errors!,
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

  ConfigManagementPolicyController({
    this.auditIntervalSeconds,
    this.enabled,
    this.exemptableNamespaces,
    this.logDeniesEnabled,
    this.referentialRulesEnabled,
    this.templateLibraryInstalled,
  });

  ConfigManagementPolicyController.fromJson(core.Map _json)
      : this(
          auditIntervalSeconds: _json.containsKey('auditIntervalSeconds')
              ? _json['auditIntervalSeconds'] as core.String
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          exemptableNamespaces: _json.containsKey('exemptableNamespaces')
              ? (_json['exemptableNamespaces'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logDeniesEnabled: _json.containsKey('logDeniesEnabled')
              ? _json['logDeniesEnabled'] as core.bool
              : null,
          referentialRulesEnabled: _json.containsKey('referentialRulesEnabled')
              ? _json['referentialRulesEnabled'] as core.bool
              : null,
          templateLibraryInstalled:
              _json.containsKey('templateLibraryInstalled')
                  ? _json['templateLibraryInstalled'] as core.bool
                  : null,
        );

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

  ConfigManagementPolicyControllerState({
    this.deploymentState,
    this.version,
  });

  ConfigManagementPolicyControllerState.fromJson(core.Map _json)
      : this(
          deploymentState: _json.containsKey('deploymentState')
              ? ConfigManagementGatekeeperDeploymentState.fromJson(
                  _json['deploymentState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          version: _json.containsKey('version')
              ? ConfigManagementPolicyControllerVersion.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentState != null) 'deploymentState': deploymentState!,
        if (version != null) 'version': version!,
      };
}

/// The build version of Gatekeeper Policy Controller is using.
class ConfigManagementPolicyControllerVersion {
  /// The gatekeeper image tag that is composed of ACM version, git tag, build
  /// number.
  core.String? version;

  ConfigManagementPolicyControllerVersion({
    this.version,
  });

  ConfigManagementPolicyControllerVersion.fromJson(core.Map _json)
      : this(
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

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

  ConfigManagementSyncError({
    this.code,
    this.errorMessage,
    this.errorResources,
  });

  ConfigManagementSyncError.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          errorResources: _json.containsKey('errorResources')
              ? (_json['errorResources'] as core.List)
                  .map((value) => ConfigManagementErrorResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (errorResources != null) 'errorResources': errorResources!,
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

  ConfigManagementSyncState({
    this.code,
    this.errors,
    this.importToken,
    this.lastSync,
    this.lastSyncTime,
    this.sourceToken,
    this.syncToken,
  });

  ConfigManagementSyncState.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => ConfigManagementSyncError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          importToken: _json.containsKey('importToken')
              ? _json['importToken'] as core.String
              : null,
          lastSync: _json.containsKey('lastSync')
              ? _json['lastSync'] as core.String
              : null,
          lastSyncTime: _json.containsKey('lastSyncTime')
              ? _json['lastSyncTime'] as core.String
              : null,
          sourceToken: _json.containsKey('sourceToken')
              ? _json['sourceToken'] as core.String
              : null,
          syncToken: _json.containsKey('syncToken')
              ? _json['syncToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (errors != null) 'errors': errors!,
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

  ConnectAgentResource({
    this.manifest,
    this.type,
  });

  ConnectAgentResource.fromJson(core.Map _json)
      : this(
          manifest: _json.containsKey('manifest')
              ? _json['manifest'] as core.String
              : null,
          type: _json.containsKey('type')
              ? TypeMeta.fromJson(
                  _json['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (manifest != null) 'manifest': manifest!,
        if (type != null) 'type': type!,
      };
}

/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeCluster {
  /// Self-link of the GCP resource for the Edge Cluster.
  ///
  /// For example:
  /// //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  ///
  /// Immutable.
  core.String? resourceLink;

  EdgeCluster({
    this.resourceLink,
  });

  EdgeCluster.fromJson(core.Map _json)
      : this(
          resourceLink: _json.containsKey('resourceLink')
              ? _json['resourceLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceLink != null) 'resourceLink': resourceLink!,
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
  /// is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where
  /// {p} is the project, {l} is a valid location and {m} is a valid Membership
  /// in this project at that location. {p} WILL match the Feature's project.
  /// {p} will always be returned as the project number, but the project ID is
  /// also accepted during input. If the same Membership is specified in the map
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
  /// `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project
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

  Feature({
    this.createTime,
    this.deleteTime,
    this.labels,
    this.membershipSpecs,
    this.membershipStates,
    this.name,
    this.resourceState,
    this.spec,
    this.state,
    this.updateTime,
  });

  Feature.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          membershipSpecs: _json.containsKey('membershipSpecs')
              ? (_json['membershipSpecs']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    MembershipFeatureSpec.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          membershipStates: _json.containsKey('membershipStates')
              ? (_json['membershipStates']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    MembershipFeatureState.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          resourceState: _json.containsKey('resourceState')
              ? FeatureResourceState.fromJson(
                  _json['resourceState'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: _json.containsKey('spec')
              ? CommonFeatureSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          state: _json.containsKey('state')
              ? CommonFeatureState.fromJson(
                  _json['state'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (labels != null) 'labels': labels!,
        if (membershipSpecs != null) 'membershipSpecs': membershipSpecs!,
        if (membershipStates != null) 'membershipStates': membershipStates!,
        if (name != null) 'name': name!,
        if (resourceState != null) 'resourceState': resourceState!,
        if (spec != null) 'spec': spec!,
        if (state != null) 'state': state!,
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

  FeatureResourceState({
    this.state,
  });

  FeatureResourceState.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

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

  FeatureState({
    this.code,
    this.description,
    this.updateTime,
  });

  FeatureState.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

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

  GenerateConnectManifestResponse({
    this.manifest,
  });

  GenerateConnectManifestResponse.fromJson(core.Map _json)
      : this(
          manifest: _json.containsKey('manifest')
              ? (_json['manifest'] as core.List)
                  .map((value) => ConnectAgentResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (manifest != null) 'manifest': manifest!,
      };
}

/// GkeCluster contains information specific to GKE clusters.
class GkeCluster {
  /// If cluster_missing is set then it denotes that the GKE cluster no longer
  /// exists in the GKE Control Plane.
  ///
  /// Output only.
  core.bool? clusterMissing;

  /// Self-link of the GCP resource for the GKE cluster.
  ///
  /// For example:
  /// //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  /// Zonal clusters are also supported.
  ///
  /// Immutable.
  core.String? resourceLink;

  GkeCluster({
    this.clusterMissing,
    this.resourceLink,
  });

  GkeCluster.fromJson(core.Map _json)
      : this(
          clusterMissing: _json.containsKey('clusterMissing')
              ? _json['clusterMissing'] as core.bool
              : null,
          resourceLink: _json.containsKey('resourceLink')
              ? _json['resourceLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterMissing != null) 'clusterMissing': clusterMissing!,
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
typedef GoogleRpcStatus = $Status;

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

  KubernetesMetadata({
    this.kubernetesApiServerVersion,
    this.memoryMb,
    this.nodeCount,
    this.nodeProviderId,
    this.updateTime,
    this.vcpuCount,
  });

  KubernetesMetadata.fromJson(core.Map _json)
      : this(
          kubernetesApiServerVersion:
              _json.containsKey('kubernetesApiServerVersion')
                  ? _json['kubernetesApiServerVersion'] as core.String
                  : null,
          memoryMb: _json.containsKey('memoryMb')
              ? _json['memoryMb'] as core.int
              : null,
          nodeCount: _json.containsKey('nodeCount')
              ? _json['nodeCount'] as core.int
              : null,
          nodeProviderId: _json.containsKey('nodeProviderId')
              ? _json['nodeProviderId'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          vcpuCount: _json.containsKey('vcpuCount')
              ? _json['vcpuCount'] as core.int
              : null,
        );

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

/// KubernetesResource contains the YAML manifests and configuration for
/// Membership Kubernetes resources in the cluster.
///
/// After CreateMembership or UpdateMembership, these resources should be
/// re-applied in the cluster.
class KubernetesResource {
  /// The Kubernetes resources for installing the GKE Connect agent This field
  /// is only populated in the Membership returned from a successful
  /// long-running operation from CreateMembership or UpdateMembership.
  ///
  /// It is not populated during normal GetMembership or ListMemberships
  /// requests. To get the resource manifest after the initial registration, the
  /// caller should make a UpdateMembership call with an empty field mask.
  ///
  /// Output only.
  core.List<ResourceManifest>? connectResources;

  /// Input only.
  ///
  /// The YAML representation of the Membership CR. This field is ignored for
  /// GKE clusters where Hub can read the CR directly. Callers should provide
  /// the CR that is currently present in the cluster during CreateMembership or
  /// UpdateMembership, or leave this field empty if none exists. The CR
  /// manifest is used to validate the cluster has not been registered with
  /// another Membership.
  core.String? membershipCrManifest;

  /// Additional Kubernetes resources that need to be applied to the cluster
  /// after Membership creation, and after every update.
  ///
  /// This field is only populated in the Membership returned from a successful
  /// long-running operation from CreateMembership or UpdateMembership. It is
  /// not populated during normal GetMembership or ListMemberships requests. To
  /// get the resource manifest after the initial registration, the caller
  /// should make a UpdateMembership call with an empty field mask.
  ///
  /// Output only.
  core.List<ResourceManifest>? membershipResources;

  /// Options for Kubernetes resource generation.
  ///
  /// Optional.
  ResourceOptions? resourceOptions;

  KubernetesResource({
    this.connectResources,
    this.membershipCrManifest,
    this.membershipResources,
    this.resourceOptions,
  });

  KubernetesResource.fromJson(core.Map _json)
      : this(
          connectResources: _json.containsKey('connectResources')
              ? (_json['connectResources'] as core.List)
                  .map((value) => ResourceManifest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          membershipCrManifest: _json.containsKey('membershipCrManifest')
              ? _json['membershipCrManifest'] as core.String
              : null,
          membershipResources: _json.containsKey('membershipResources')
              ? (_json['membershipResources'] as core.List)
                  .map((value) => ResourceManifest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceOptions: _json.containsKey('resourceOptions')
              ? ResourceOptions.fromJson(_json['resourceOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectResources != null) 'connectResources': connectResources!,
        if (membershipCrManifest != null)
          'membershipCrManifest': membershipCrManifest!,
        if (membershipResources != null)
          'membershipResources': membershipResources!,
        if (resourceOptions != null) 'resourceOptions': resourceOptions!,
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

  ListFeaturesResponse({
    this.nextPageToken,
    this.resources,
  });

  ListFeaturesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => Feature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
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

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
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

  ListMembershipsResponse({
    this.nextPageToken,
    this.resources,
    this.unreachable,
  });

  ListMembershipsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => Membership.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

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

  Membership({
    this.authority,
    this.createTime,
    this.deleteTime,
    this.description,
    this.endpoint,
    this.externalId,
    this.labels,
    this.lastConnectionTime,
    this.name,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Membership.fromJson(core.Map _json)
      : this(
          authority: _json.containsKey('authority')
              ? Authority.fromJson(
                  _json['authority'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          endpoint: _json.containsKey('endpoint')
              ? MembershipEndpoint.fromJson(
                  _json['endpoint'] as core.Map<core.String, core.dynamic>)
              : null,
          externalId: _json.containsKey('externalId')
              ? _json['externalId'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lastConnectionTime: _json.containsKey('lastConnectionTime')
              ? _json['lastConnectionTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state: _json.containsKey('state')
              ? MembershipState.fromJson(
                  _json['state'] as core.Map<core.String, core.dynamic>)
              : null,
          uniqueId: _json.containsKey('uniqueId')
              ? _json['uniqueId'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authority != null) 'authority': authority!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (description != null) 'description': description!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (externalId != null) 'externalId': externalId!,
        if (labels != null) 'labels': labels!,
        if (lastConnectionTime != null)
          'lastConnectionTime': lastConnectionTime!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (uniqueId != null) 'uniqueId': uniqueId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// MembershipEndpoint contains information needed to contact a Kubernetes API,
/// endpoint and any additional Kubernetes metadata.
class MembershipEndpoint {
  /// Specific information for a Google Edge cluster.
  ///
  /// Optional.
  EdgeCluster? edgeCluster;

  /// Specific information for a GKE-on-GCP cluster.
  ///
  /// Optional.
  GkeCluster? gkeCluster;

  /// Useful Kubernetes-specific metadata.
  ///
  /// Output only.
  KubernetesMetadata? kubernetesMetadata;

  /// The in-cluster Kubernetes Resources that should be applied for a correctly
  /// registered cluster, in the steady state.
  ///
  /// These resources: * Ensure that the cluster is exclusively registered to
  /// one and only one Hub Membership. * Propagate Workload Pool Information
  /// available in the Membership Authority field. * Ensure proper initial
  /// configuration of default Hub Features.
  ///
  /// Optional.
  KubernetesResource? kubernetesResource;

  /// Specific information for a GKE Multi-Cloud cluster.
  ///
  /// Optional.
  MultiCloudCluster? multiCloudCluster;

  /// Specific information for a GKE On-Prem cluster.
  ///
  /// An onprem user-cluster who has no resourceLink is not allowed to use this
  /// field, it should have a nil "type" instead.
  ///
  /// Optional.
  OnPremCluster? onPremCluster;

  MembershipEndpoint({
    this.edgeCluster,
    this.gkeCluster,
    this.kubernetesMetadata,
    this.kubernetesResource,
    this.multiCloudCluster,
    this.onPremCluster,
  });

  MembershipEndpoint.fromJson(core.Map _json)
      : this(
          edgeCluster: _json.containsKey('edgeCluster')
              ? EdgeCluster.fromJson(
                  _json['edgeCluster'] as core.Map<core.String, core.dynamic>)
              : null,
          gkeCluster: _json.containsKey('gkeCluster')
              ? GkeCluster.fromJson(
                  _json['gkeCluster'] as core.Map<core.String, core.dynamic>)
              : null,
          kubernetesMetadata: _json.containsKey('kubernetesMetadata')
              ? KubernetesMetadata.fromJson(_json['kubernetesMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kubernetesResource: _json.containsKey('kubernetesResource')
              ? KubernetesResource.fromJson(_json['kubernetesResource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          multiCloudCluster: _json.containsKey('multiCloudCluster')
              ? MultiCloudCluster.fromJson(_json['multiCloudCluster']
                  as core.Map<core.String, core.dynamic>)
              : null,
          onPremCluster: _json.containsKey('onPremCluster')
              ? OnPremCluster.fromJson(
                  _json['onPremCluster'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (edgeCluster != null) 'edgeCluster': edgeCluster!,
        if (gkeCluster != null) 'gkeCluster': gkeCluster!,
        if (kubernetesMetadata != null)
          'kubernetesMetadata': kubernetesMetadata!,
        if (kubernetesResource != null)
          'kubernetesResource': kubernetesResource!,
        if (multiCloudCluster != null) 'multiCloudCluster': multiCloudCluster!,
        if (onPremCluster != null) 'onPremCluster': onPremCluster!,
      };
}

/// MembershipFeatureSpec contains configuration information for a single
/// Membership.
class MembershipFeatureSpec {
  /// Config Management-specific spec.
  ConfigManagementMembershipSpec? configmanagement;

  MembershipFeatureSpec({
    this.configmanagement,
  });

  MembershipFeatureSpec.fromJson(core.Map _json)
      : this(
          configmanagement: _json.containsKey('configmanagement')
              ? ConfigManagementMembershipSpec.fromJson(
                  _json['configmanagement']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configmanagement != null) 'configmanagement': configmanagement!,
      };
}

/// MembershipFeatureState contains Feature status information for a single
/// Membership.
class MembershipFeatureState {
  /// Appdevexperience specific state.
  AppDevExperienceFeatureState? appdevexperience;

  /// Config Management-specific state.
  ConfigManagementMembershipState? configmanagement;

  /// The high-level state of this Feature for a single membership.
  FeatureState? state;

  MembershipFeatureState({
    this.appdevexperience,
    this.configmanagement,
    this.state,
  });

  MembershipFeatureState.fromJson(core.Map _json)
      : this(
          appdevexperience: _json.containsKey('appdevexperience')
              ? AppDevExperienceFeatureState.fromJson(_json['appdevexperience']
                  as core.Map<core.String, core.dynamic>)
              : null,
          configmanagement: _json.containsKey('configmanagement')
              ? ConfigManagementMembershipState.fromJson(
                  _json['configmanagement']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state: _json.containsKey('state')
              ? FeatureState.fromJson(
                  _json['state'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appdevexperience != null) 'appdevexperience': appdevexperience!,
        if (configmanagement != null) 'configmanagement': configmanagement!,
        if (state != null) 'state': state!,
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

  MembershipState({
    this.code,
  });

  MembershipState.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
      };
}

/// MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
class MultiCloudCluster {
  /// If cluster_missing is set then it denotes that
  /// API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud
  /// cluster no longer exists.
  ///
  /// Output only.
  core.bool? clusterMissing;

  /// Self-link of the GCP resource for the GKE Multi-Cloud cluster.
  ///
  /// For example:
  /// //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster
  /// //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster
  ///
  /// Immutable.
  core.String? resourceLink;

  MultiCloudCluster({
    this.clusterMissing,
    this.resourceLink,
  });

  MultiCloudCluster.fromJson(core.Map _json)
      : this(
          clusterMissing: _json.containsKey('clusterMissing')
              ? _json['clusterMissing'] as core.bool
              : null,
          resourceLink: _json.containsKey('resourceLink')
              ? _json['resourceLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterMissing != null) 'clusterMissing': clusterMissing!,
        if (resourceLink != null) 'resourceLink': resourceLink!,
      };
}

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress
/// feature.
class MultiClusterIngressFeatureSpec {
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD.
  ///
  /// Example: `projects/foo-proj/locations/global/memberships/bar`
  core.String? configMembership;

  MultiClusterIngressFeatureSpec({
    this.configMembership,
  });

  MultiClusterIngressFeatureSpec.fromJson(core.Map _json)
      : this(
          configMembership: _json.containsKey('configMembership')
              ? _json['configMembership'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configMembership != null) 'configMembership': configMembership!,
      };
}

/// OnPremCluster contains information specific to GKE On-Prem clusters.
class OnPremCluster {
  /// Whether the cluster is an admin cluster.
  ///
  /// Immutable.
  core.bool? adminCluster;

  /// If cluster_missing is set then it denotes that
  /// API(gkeonprem.googleapis.com) resource for this GKE On-Prem cluster no
  /// longer exists.
  ///
  /// Output only.
  core.bool? clusterMissing;

  /// Self-link of the GCP resource for the GKE On-Prem cluster.
  ///
  /// For example:
  /// //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster
  /// //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
  ///
  /// Immutable.
  core.String? resourceLink;

  OnPremCluster({
    this.adminCluster,
    this.clusterMissing,
    this.resourceLink,
  });

  OnPremCluster.fromJson(core.Map _json)
      : this(
          adminCluster: _json.containsKey('adminCluster')
              ? _json['adminCluster'] as core.bool
              : null,
          clusterMissing: _json.containsKey('clusterMissing')
              ? _json['clusterMissing'] as core.bool
              : null,
          resourceLink: _json.containsKey('resourceLink')
              ? _json['resourceLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminCluster != null) 'adminCluster': adminCluster!,
        if (clusterMissing != null) 'clusterMissing': clusterMissing!,
        if (resourceLink != null) 'resourceLink': resourceLink!,
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
              ? GoogleRpcStatus.fromJson(
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

/// ResourceManifest represents a single Kubernetes resource to be applied to
/// the cluster.
class ResourceManifest {
  /// Whether the resource provided in the manifest is `cluster_scoped`.
  ///
  /// If unset, the manifest is assumed to be namespace scoped. This field is
  /// used for REST mapping when applying the resource in a cluster.
  core.bool? clusterScoped;

  /// YAML manifest of the resource.
  core.String? manifest;

  ResourceManifest({
    this.clusterScoped,
    this.manifest,
  });

  ResourceManifest.fromJson(core.Map _json)
      : this(
          clusterScoped: _json.containsKey('clusterScoped')
              ? _json['clusterScoped'] as core.bool
              : null,
          manifest: _json.containsKey('manifest')
              ? _json['manifest'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterScoped != null) 'clusterScoped': clusterScoped!,
        if (manifest != null) 'manifest': manifest!,
      };
}

/// ResourceOptions represent options for Kubernetes resource generation.
class ResourceOptions {
  /// The Connect agent version to use for connect_resources.
  ///
  /// Defaults to the latest GKE Connect version. The version must be a
  /// currently supported version, obsolete versions will be rejected.
  ///
  /// Optional.
  core.String? connectVersion;

  /// Major version of the Kubernetes cluster.
  ///
  /// This is only used to determine which version to use for the
  /// CustomResourceDefinition resources, `apiextensions/v1beta1`
  /// or`apiextensions/v1`.
  ///
  /// Optional.
  core.String? k8sVersion;

  /// Use `apiextensions/v1beta1` instead of `apiextensions/v1` for
  /// CustomResourceDefinition resources.
  ///
  /// This option should be set for clusters with Kubernetes apiserver versions
  /// \<1.16.
  ///
  /// Optional.
  core.bool? v1beta1Crd;

  ResourceOptions({
    this.connectVersion,
    this.k8sVersion,
    this.v1beta1Crd,
  });

  ResourceOptions.fromJson(core.Map _json)
      : this(
          connectVersion: _json.containsKey('connectVersion')
              ? _json['connectVersion'] as core.String
              : null,
          k8sVersion: _json.containsKey('k8sVersion')
              ? _json['k8sVersion'] as core.String
              : null,
          v1beta1Crd: _json.containsKey('v1beta1Crd')
              ? _json['v1beta1Crd'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectVersion != null) 'connectVersion': connectVersion!,
        if (k8sVersion != null) 'k8sVersion': k8sVersion!,
        if (v1beta1Crd != null) 'v1beta1Crd': v1beta1Crd!,
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

/// Status specifies state for the subcomponent.
class Status {
  /// Code specifies AppDevExperienceFeature's subcomponent ready state.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Not set.
  /// - "OK" : AppDevExperienceFeature's specified subcomponent is ready.
  /// - "FAILED" : AppDevExperienceFeature's specified subcomponent ready state
  /// is false. This means AppDevExperienceFeature has encountered an issue that
  /// blocks all, or a portion, of its normal operation. See the `description`
  /// for more details.
  /// - "UNKNOWN" : AppDevExperienceFeature's specified subcomponent has a
  /// pending or unknown state.
  core.String? code;

  /// Description is populated if Code is Failed, explaining why it has failed.
  core.String? description;

  Status({
    this.code,
    this.description,
  });

  Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// TypeMeta is the type information needed for content unmarshalling of
/// Kubernetes resources in the manifest.
class TypeMeta {
  /// APIVersion of the resource (e.g. v1).
  core.String? apiVersion;

  /// Kind of the resource (e.g. Deployment).
  core.String? kind;

  TypeMeta({
    this.apiVersion,
    this.kind,
  });

  TypeMeta.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (kind != null) 'kind': kind!,
      };
}
